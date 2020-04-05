package com.synstorm.language.jps.model;

import org.jetbrains.jps.model.JpsDummyElement;
import org.jetbrains.jps.model.ex.JpsElementTypeWithDummyProperties;
import org.jetbrains.jps.model.module.JpsModuleType;

public class JpsBCNNMModuleType extends JpsElementTypeWithDummyProperties implements JpsModuleType<JpsDummyElement> {
    public static final JpsBCNNMModuleType INSTANCE = new JpsBCNNMModuleType();

    private JpsBCNNMModuleType() {
    }
}