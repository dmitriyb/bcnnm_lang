package com.DSL_plugin.psi;

import com.intellij.psi.tree.IElementType;
import com.DSL_plugin.BCNNMLanguage;
import org.jetbrains.annotations.*;

public class DSLTokenType extends IElementType {
    public DSLTokenType(@NotNull @NonNls String debugName) {
        super(debugName, BCNNMLanguage.INSTANCE);
    }

    @Override
    public String toString() {
        return "DSLTokenType." + super.toString();
    }
}