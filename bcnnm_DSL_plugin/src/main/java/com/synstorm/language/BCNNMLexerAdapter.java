package com.synstorm.language;

import com.intellij.lexer.FlexAdapter;

import java.io.Reader;

public class BCNNMLexerAdapter extends FlexAdapter {
    public BCNNMLexerAdapter() {
        super(new BCNNMLexer((Reader) null));
    }
}
