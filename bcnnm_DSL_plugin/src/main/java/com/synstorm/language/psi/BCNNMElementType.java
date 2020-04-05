package com.synstorm.language.psi;

import com.synstorm.language.BCNNMLanguage;

import com.intellij.psi.tree.IElementType;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;

public class BCNNMElementType extends IElementType {
    public BCNNMElementType( @NotNull @NonNls String debugName) {
        super(debugName, BCNNMLanguage.INSTANCE);
    }
}