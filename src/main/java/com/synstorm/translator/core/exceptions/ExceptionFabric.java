package com.synstorm.translator.core.exceptions;

public class ExceptionFabric {
    public static LangException createLanguageException(Exception e)
    {
        return new LangException(e.getMessage());
    }
}
