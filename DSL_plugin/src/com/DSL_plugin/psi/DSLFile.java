package com.DSL_plugin.psi;

import com.intellij.extapi.psi.PsiFileBase;
import com.intellij.openapi.fileTypes.FileType;
import com.intellij.psi.FileViewProvider;
import com.DSL_plugin.*;
import org.jetbrains.annotations.NotNull;

import javax.swing.*;

public class DSLFile extends PsiFileBase {
    public DSLFile(@NotNull FileViewProvider viewProvider) {
        super(viewProvider, BCNNMLanguage.INSTANCE);
    }

    @NotNull
    @Override
    public FileType getFileType() {
        return ConfigFileType.INSTANCE;
    }

    @Override
    public String toString() {
        return "BCNNM DSL File";
    }

    @Override
    public Icon getIcon(int flags) {
        return super.getIcon(flags);
    }
}