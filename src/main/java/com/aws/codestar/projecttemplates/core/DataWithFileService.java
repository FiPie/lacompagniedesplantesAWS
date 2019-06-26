package com.aws.codestar.projecttemplates.core;


import com.aws.codestar.projecttemplates.dto.FormDataWithFileDto;
import com.aws.codestar.projecttemplates.models.DataWithFile;
import com.aws.codestar.projecttemplates.repositories.DataWithFileRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.io.IOException;

@Service
@Transactional
public class DataWithFileService {

    private final DataWithFileRepository dataWithFileRepository;

    public DataWithFileService(DataWithFileRepository dataWithFileRepository) {
        this.dataWithFileRepository = dataWithFileRepository;
    }

    @Transactional
    public boolean saveFile(FormDataWithFileDto form) throws IOException {
        DataWithFile file = new DataWithFile();
        file.setEmail( form.getEmail() );
        file.setName( form.getName() );
        file.setFile( form.getFile().getBytes() );
        file.setSize( form.getFile().getSize() );
        file.setOriginalName( form.getFile().getOriginalFilename() );
        file.setType( form.getFile().getContentType() );
        file = dataWithFileRepository.save( file );

        return true;
    }

    @Transactional
    public boolean deleteFile(Long id) {
        DataWithFile file = new DataWithFile();
        file.setId( id );
        if (dataWithFileRepository.findById( file.getId() ).isPresent()) {
            dataWithFileRepository.deleteById( file.getId() );
        }

        return true;
    }

}
