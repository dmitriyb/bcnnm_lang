package com.synstorm.language.psi;

import com.synstorm.language.BCNNMLanguage;

import com.intellij.psi.tree.IElementType;

import org.jetbrains.annotations.*;

public class BCNNMTokenType extends IElementType {
    public BCNNMTokenType(@NotNull @NonNls String debugName) {
        super(debugName, BCNNMLanguage.INSTANCE);
    }

    @Override
    public String toString() {
        return "BCNNMTokenType." + super.toString();
    }
}
