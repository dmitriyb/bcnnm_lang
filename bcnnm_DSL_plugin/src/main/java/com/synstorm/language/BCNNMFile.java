package com.synstorm.language;

import com.synstorm.language.*;

import com.intellij.extapi.psi.PsiFileBase;
import com.intellij.openapi.fileTypes.FileType;
import com.intellij.psi.FileViewProvider;
import org.jetbrains.annotations.NotNull;

public class BCNNMFile extends PsiFileBase {
    public BCNNMFile(@NotNull FileViewProvider viewProvider) {
        super(viewProvider, BCNNMLanguage.INSTANCE);
    }

    @NotNull
    @Override
    public FileType getFileType() {
        return BCNNMFileType.INSTANCE;
    }

    @Override
    public String toString() {
        return "BCNNM File";
    }
}