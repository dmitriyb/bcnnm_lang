package com.DSL_plugin.psi;

import com.intellij.psi.tree.IElementType;
import com.DSL_plugin.BCNNMLanguage;
import org.jetbrains.annotations.*;

public class DSLElementType extends IElementType {
    public DSLElementType(@NotNull @NonNls String debugName) {
        super(debugName, BCNNMLanguage.INSTANCE);
    }
}