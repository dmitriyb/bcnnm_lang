package com.synstorm.translator.core.exceptions;

public class LangException extends Throwable {
    private String message;
    private String parentEntity;
    
    public LangException(final String message)
    {
        this.message = message;
    }

    @Override
    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getParentEntity() {
        return parentEntity;
    }

    public void setParentEntity(String parentEntity) {
        this.parentEntity = parentEntity;
    }
}
