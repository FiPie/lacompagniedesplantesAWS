package com.aws.codestar.projecttemplates.dto;

import org.springframework.web.multipart.MultipartFile;

public class FormDataWithFileDto {

    private Long id;
    private String name;
    private String email;
    private MultipartFile file;
    private String originalName;
    private String type;

    public Long getId() { return id; }

    public void setId(Long id) { this.id = id; }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public MultipartFile getFile() {
        return file;
    }

    public void setFile(MultipartFile file) {
        this.file = file;
    }

    public String getOriginalName() { return originalName; }

    public void setOriginalName(String originalName) { this.originalName = originalName; }

    public String getType() { return type; }

    public void setType(String type) { this.type = type; }
}
