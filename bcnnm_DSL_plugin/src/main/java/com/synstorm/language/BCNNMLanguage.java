package com.synstorm.language;

import com.intellij.lang.Language;

public class BCNNMLanguage extends Language {
    public static final BCNNMLanguage INSTANCE = new BCNNMLanguage();

    private BCNNMLanguage() {
        super("BCNNM");
    }
}