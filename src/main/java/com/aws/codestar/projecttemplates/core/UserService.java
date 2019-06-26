package com.aws.codestar.projecttemplates.core;

import com.aws.codestar.projecttemplates.dto.UserFormDto;
import com.aws.codestar.projecttemplates.models.User;
import com.aws.codestar.projecttemplates.models.UserRole;
import com.aws.codestar.projecttemplates.repositories.UserRepository;
import com.aws.codestar.projecttemplates.repositories.UserRoleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.sql.SQLIntegrityConstraintViolationException;

@Service
@Transactional
public class UserService {

    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;
    private final UserRoleRepository userRoleRepository;

    public UserService(UserRepository userRepository, PasswordEncoder passwordEncoder, UserRoleRepository userRoleRepository) {
        this.userRepository = userRepository;
        this.passwordEncoder = passwordEncoder;
        this.userRoleRepository = userRoleRepository;
    }


    @Transactional
    public boolean update(UserFormDto form) {

        User user = userRepository.getOne( form.getId() );

        user.setId( form.getId() );
        user.setEmail( form.getEmail() );
        user.setFirstName( form.getFirstName() );
        user.setLastName( form.getLastName() );
        String encodedPassword = passwordEncoder.encode( form.getPassword() );
        user.setPassword( encodedPassword );
        try {
            user = userRepository.save( user );
        } catch (Exception e) {
            e.printStackTrace();
        }

        return true;
    }

    public UserFormDto findByIdAndFill(Long id) {
        UserFormDto userFormDto = new UserFormDto();
        User user = userRepository.getOne( id );
        if (user != null) {
            userFormDto.setId( user.getId() );
            userFormDto.setEmail( user.getEmail() );
            userFormDto.setFirstName( user.getFirstName() );
            userFormDto.setLastName( user.getLastName() );
            userFormDto.setPassword( user.getPassword() );
            userFormDto.setConfirmedPassword( user.getPassword() );
            userFormDto.setEnabled( user.isEnabled() );
        }

        return userFormDto;
    }

    //CRUD extentions

    /*@Transactional
    public boolean delete(Long id) {
        User user = new User();
        user.setId( id );
        if (userRepository.findById( user.getId() ).isPresent()) {
            userRepository.deleteById( user.getId() );
        }

        return true;
    }

    @Transactional
    public boolean createAdmin(UserFormDto form) {
        User user = new User();
        if (!form.getPassword().equals( form.getConfirmedPassword() )) {
            return false;
        } else {
            user.setEmail( form.getEmail() );
            user.setFirstName( form.getFirstName() );
            user.setLastName( form.getLastName() );
            user.setEnabled( true );
            String encodedPassword = passwordEncoder.encode( form.getPassword() );
            user.setPassword( encodedPassword );
            user = userRepository.save( user );

            UserRole userRole = new UserRole();
            userRole.setUser( user );
            userRole.setRole( "ROLE_ADMIN" );
            userRole = userRoleRepository.save( userRole );

            return true;
        }
    }

    @Transactional
    public boolean changeUserPassword(UserFormDto form) {
        User user = new User();
        if (!form.getPassword().equals( form.getConfirmedPassword() )) {
            return false;
        } else {
            user.setId( form.getId() );
            user.setEmail( form.getEmail() );
            user.setFirstName( form.getFirstName() );
            user.setLastName( form.getLastName() );
            user.setEnabled( form.isEnabled() );
            String encodedPassword = passwordEncoder.encode( form.getPassword() );
            user.setPassword( encodedPassword );
            user = userRepository.save( user );

            return true;
        }
    }*/

}
