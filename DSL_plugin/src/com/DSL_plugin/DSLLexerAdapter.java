package com.DSL_plugin;

import com.intellij.lexer.FlexAdapter;

import java.io.Reader;

public class DSLLexerAdapter extends FlexAdapter {
    public DSLLexerAdapter() {
        super(new BCNNMLexer((Reader) null));
    }
}