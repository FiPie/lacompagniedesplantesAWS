package com.aws.codestar.projecttemplates.repositories;

import com.aws.codestar.projecttemplates.models.DataWithFile;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public interface DataWithFileRepository extends JpaRepository<DataWithFile, Long> {

    void deleteDataWithFileById(Long id);

    @Query(value = "SELECT * FROM data_with_file", nativeQuery = true)
    List<DataWithFile>getFileList();

    DataWithFile getById(Long id);


}
