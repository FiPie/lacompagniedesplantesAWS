package com.aws.codestar.projecttemplates.controllers;

import com.aws.codestar.projecttemplates.core.DataWithFileService;
import com.aws.codestar.projecttemplates.core.UserService;
import com.aws.codestar.projecttemplates.dto.FormDataWithFileDto;
import com.aws.codestar.projecttemplates.dto.UserFormDto;
import com.aws.codestar.projecttemplates.models.DataWithFile;
import com.aws.codestar.projecttemplates.models.User;
import com.aws.codestar.projecttemplates.repositories.DataWithFileRepository;
import com.aws.codestar.projecttemplates.repositories.UserRepository;
import com.aws.codestar.projecttemplates.repositories.UserRoleRepository;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.Principal;
import java.util.List;
import java.util.Objects;

@Controller
@RequestMapping("/")
public class UploadController {

    private final DataWithFileService dataWithFileService;
    private final DataWithFileRepository dataWithFileRepository;
    private final UserRepository userRepository;
    private final UserService userService;
    private final HttpSession session;

    public UploadController(DataWithFileService dataWithFileService, DataWithFileRepository dataWithFileRepository, UserRepository userRepository, UserService userService, HttpSession session) {
        this.dataWithFileService = dataWithFileService;
        this.dataWithFileRepository = dataWithFileRepository;
        this.userRepository = userRepository;
        this.userService = userService;
        this.session = session;
    }


    @RequestMapping(value = "fileUpload", method = RequestMethod.GET)
    public String displayForm(Model model) {
        model.addAttribute( "fileUploadForm", new FormDataWithFileDto() );
        return "fileUploadForm";
    }

    /*@RequestMapping(value = "uploadMultiFile", method = RequestMethod.POST)
    public String submit(@RequestParam("files") final MultipartFile[] files, final ModelMap modelMap) {
        modelMap.addAttribute( "files", files );
        return "fileUploadView";
    }*/


    @RequestMapping(value = "uploadFileModelAttributeBind", method = RequestMethod.POST)
    public String submit(@ModelAttribute("formDataWithFile") @Valid FormDataWithFileDto form, BindingResult result, Model model) throws IOException {
        model.addAttribute( "fileForm", form );

        if (result.hasErrors()) {
            return "/fileUpload";
        }
        boolean success = dataWithFileService.saveFile( form );
        if (success) {
            return "fileUploadView";
        } else {
            result.reject( "file", null, "An error occured whiled trying to save the uploaded file" );
            return "/fileUpload";
        }

    }

    @GetMapping("filesInDataBase")
    public String listOfFilesInDBView(Model model) {
        List<DataWithFile> files = dataWithFileRepository.getFileList();
        model.addAttribute( "files", files );

        return "uploadedFilesView";
    }

    @RequestMapping(value = "admin/{id:[1-9]*[0-9]+}/imageAutoResponse", method = RequestMethod.GET)
    public ResponseEntity<byte[]> getImageAsResponseEntity(@PathVariable Long id) throws IOException {
        ResponseEntity<byte[]> responseEntity;
        final HttpHeaders headers = new HttpHeaders();
        InputStream in = new ByteArrayInputStream( dataWithFileRepository.getById( id ).getFile() );
        byte[] media = IOUtils.toByteArray( in );
        String mimeType = dataWithFileRepository.getById( id ).getType();
        headers.setCacheControl( CacheControl.noCache().getHeaderValue() );
        headers.setContentType( MediaType.parseMediaType( mimeType ) );
        responseEntity = new ResponseEntity<>( media, headers, HttpStatus.OK );
        return responseEntity;
    }


    @GetMapping("admin/{id:[1-9]*[0-9]+}/confirmDeleteFile")
    public String confirmDeleteFile(@PathVariable Long id, Model model) {
        DataWithFile file = dataWithFileRepository.findById( id ).orElse( null );
        if (file != null) {
            model.addAttribute( "fileToRemove", file );
            return "confirmDeleteFromDB";
        }
        return "redirect:/filesInDataBase";
    }

    @GetMapping("admin/{id:[1-9]*[0-9]+}/deleteFile")
    public String deleteFileFromDB(@PathVariable Long id, Model model) {
        DataWithFile file = dataWithFileRepository.findById( id ).orElse( null );
        if (file != null) {
            boolean success = dataWithFileService.deleteFile( id );
            if (success) {
                String messageSuccess = "<i class=\"far fa-check-circle\" style=\"color: green \"></i>" + " You have successfuly deleted: " + file.getOriginalName();
                model.addAttribute( "deletionMessageSuccess", messageSuccess );
                List<DataWithFile> files = dataWithFileRepository.getFileList();
                model.addAttribute( "files", files );
                return "uploadedFilesView";
            }
            String messageFail = "<i class=\"far fa-times-circle\" style=\"color: red \"></i>" + " You could not delete: " + file.getOriginalName() + "for some reason, please check with your admin";
            model.addAttribute( "deletionMessageFail", messageFail );
            List<DataWithFile> files = dataWithFileRepository.getFileList();
            model.addAttribute( "files", files );
        }
        return "uploadedFilesView";
    }


    @GetMapping("admin/adminSettings")
    public String adminSettings(Model model, Principal principal) {
        User admin = userRepository.getOne( (Long) session.getAttribute( "userId" ) );
        model.addAttribute( "admin", admin );
        return "userDashboard";
    }

    @GetMapping("admin/{id:[1-9]*[0-9]+}/edit")
    public String adminEdit(@PathVariable Long id, Model model) {
        User admin = userRepository.getOne( id );
        model.addAttribute( "admin", admin );
        model.addAttribute( "editAdmin", userService.findByIdAndFill( id ) );

        return "userEdit";
    }


    @PostMapping("admin/edit")
    public String adminEdit(@ModelAttribute("editAdmin") @Valid UserFormDto form, BindingResult result, Model model, Principal principal) {


        if (result.hasErrors()) {
            return "/admin/adminSettings";
        } else if (!Objects.equals( form.getPassword(), form.getConfirmedPassword() )) {
            String messageFail = "<i class=\"far fa-times-circle\" style=\"color: red \"></i>" + " Two different passwords. Try again.";
            model.addAttribute( "deletionMessageFail", messageFail );
            User admin = userRepository.getOne( form.getId() );
            model.addAttribute( "admin", admin );
            return "userDashboard";
        }
        boolean success = userService.update( form );
        if (success) {
            String messageSuccess = "<i class=\"far fa-check-circle\" style=\"color: green \"></i>" + " You have successfuly edited your profile";
            model.addAttribute( "deletionMessageSuccess", messageSuccess );
            User admin = userRepository.getOne( form.getId() );
            model.addAttribute( "admin", admin );
            return "userDashboard";
        } else {
            result.reject( "email", null, "An error occured whiled trying to edit and update admin data" );
            return "/admin/edit";
        }
    }
}
