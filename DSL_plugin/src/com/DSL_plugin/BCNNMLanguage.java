package com.DSL_plugin;

import com.intellij.lang.Language;

public class BCNNMLanguage extends Language {
    public static final BCNNMLanguage INSTANCE = new BCNNMLanguage();

    private BCNNMLanguage() {
        super("BCNNMLanguage");
    }
}