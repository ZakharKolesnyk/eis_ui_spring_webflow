package com.chisw.web.model;

import org.springframework.web.multipart.MultipartFile;

public class FileUploadHandler {

    private transient MultipartFile file;

    public void processFile() {
        //Do something with the MultipartFile here
    }

    public void setFile(MultipartFile file) {
        this.file = file;
    }
}