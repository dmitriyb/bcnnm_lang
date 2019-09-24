package com.DSL_plugin;

import com.intellij.codeInsight.completion.*;
import com.intellij.codeInsight.lookup.LookupElementBuilder;
import com.intellij.patterns.PlatformPatterns;
import com.intellij.util.ProcessingContext;
import com.DSL_plugin.psi.DSLTypes;
import org.jetbrains.annotations.NotNull;

public class BCNNMCompletionContributor extends CompletionContributor {
    public BCNNMCompletionContributor() {
        extend(CompletionType.BASIC,
                PlatformPatterns.psiElement(DSLTypes.NAMED_VALUE).withLanguage(BCNNMLanguage.INSTANCE),
                new CompletionProvider<CompletionParameters>() {
                    public void addCompletions(@NotNull CompletionParameters parameters,
                                               ProcessingContext context,
                                               @NotNull CompletionResultSet resultSet) {
                        resultSet.addElement(LookupElementBuilder.create("Hello"));
                    }
                }
        );
    }
}
