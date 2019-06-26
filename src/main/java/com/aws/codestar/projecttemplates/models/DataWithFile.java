package com.aws.codestar.projecttemplates.models;

import javax.persistence.*;
import java.util.Objects;
import java.util.StringJoiner;

@Entity
public class DataWithFile {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column
    private String name;
    @Column
    private Long size;
    @Column
    private String originalName;
    @Column
    private String email;
    @Column
    private String type;

    @Lob
    @Column(name = "file", columnDefinition="LONGBLOB")
    private byte[] file;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Long getSize() {
        return size;
    }

    public void setSize(Long size) {
        this.size = size;
    }

    public String getOriginalName() {
        return originalName;
    }

    public void setOriginalName(String originalName) {
        this.originalName = originalName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public byte[] getFile() {
        return file;
    }

    public void setFile(byte[] file) {
        this.file = file;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return new StringJoiner( ", ", DataWithFile.class.getSimpleName() + "[", "]" )
                .add( "id=" + id )
                .add( "name='" + name + "'" )
                .add( "size=" + size )
                .add( "originalName='" + originalName + "'" )
                .add( "email='" + email + "'" )
                .add( "type='" + type + "'" )
                .toString();
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        DataWithFile that = (DataWithFile) o;
        return Objects.equals( id, that.id );
    }

    @Override
    public int hashCode() {
        return Objects.hash( id );
    }
}