package com.synstorm.language;

import com.intellij.openapi.fileTypes.LanguageFileType;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import javax.swing.*;

public class BCNNMFileType extends LanguageFileType {
    public static final BCNNMFileType INSTANCE = new BCNNMFileType();

    private BCNNMFileType() {
        super(BCNNMLanguage.INSTANCE);
    }

    @NotNull
    @Override
    public String getName() {
        return "BCNNM file";
    }

    @NotNull
    @Override
    public String getDescription() {
        return "BCNNM configuration file";
    }

    @NotNull
    @Override
    public String getDefaultExtension() {
        return "bcnnm";
    }

    @Nullable
    @Override
    public Icon getIcon() {
        return BCNNMIcons.FILE;
    }
}