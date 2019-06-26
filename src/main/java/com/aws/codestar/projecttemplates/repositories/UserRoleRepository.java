package com.aws.codestar.projecttemplates.repositories;

import com.aws.codestar.projecttemplates.models.UserRole;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserRoleRepository extends JpaRepository<UserRole, Long> {

    List<UserRole> findAllByUser_Id(Long id);

}
