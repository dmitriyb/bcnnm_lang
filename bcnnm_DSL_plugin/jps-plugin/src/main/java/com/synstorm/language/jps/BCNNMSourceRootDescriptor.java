package com.synstorm.language.jps;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.jps.builders.BuildRootDescriptor;
import org.jetbrains.jps.builders.BuildTarget;

import java.io.File;

public class BCNNMSourceRootDescriptor extends BuildRootDescriptor {

    private final File root;
    private final BCNNMTarget target;

    public BCNNMSourceRootDescriptor(@NotNull final File root, @NotNull final BCNNMTarget target) {
        this.root = root;
        this.target = target;
    }

    @Override
    public String getRootId() {
        return root.getAbsolutePath();
    }

    @Override
    public File getRootFile() {
        return root;
    }

    @Override
    public BuildTarget<?> getTarget() {
        return target;
    }
}