package com.DSL_plugin;

import com.intellij.openapi.fileTypes.LanguageFileType;
import org.jetbrains.annotations.*;

import javax.swing.*;

public class ConfigFileType extends LanguageFileType {
    public static final ConfigFileType INSTANCE = new ConfigFileType();

    private ConfigFileType() {
        super(BCNNMLanguage.INSTANCE);
    }

    @NotNull
    @Override
    public String getName() {
        return "BCNNM";
    }

    @NotNull
    @Override
    public String getDescription() {
        return "BCNNM language file";
    }

    @NotNull
    @Override
    public String getDefaultExtension() {
        return ".bdsl";
    }

    @Nullable
    @Override
    public Icon getIcon() {
        return DSLIcons.FILE;
    }
}
