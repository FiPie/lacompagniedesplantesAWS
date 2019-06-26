package com.aws.codestar.projecttemplates.repositories;

import com.aws.codestar.projecttemplates.models.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

    User findByEmail(String email);

    void deleteById(Long id);

    //later on stages - useful queries
    @Query(value = "SELECT * FROM users JOIN users_roles ON users.id=users_roles.user_id WHERE users_roles.roles='ROLE_USER'", nativeQuery = true)
    List<User> getUserList();

    @Query(value = "SELECT * FROM users JOIN users_roles ON users.id=users_roles.user_id WHERE users_roles.roles='ROLE_ADMIN'", nativeQuery = true)
    List<User> getAdminList();

    @Override
    List<User> findAll();



}