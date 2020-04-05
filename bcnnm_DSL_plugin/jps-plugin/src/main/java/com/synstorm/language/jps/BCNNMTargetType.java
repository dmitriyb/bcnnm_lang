package com.synstorm.language.jps;

import java.util.ArrayList;
import java.util.List;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.jps.builders.BuildTargetLoader;
import org.jetbrains.jps.builders.ModuleBasedBuildTargetType;
import org.jetbrains.jps.model.JpsDummyElement;
import org.jetbrains.jps.model.JpsModel;
import org.jetbrains.jps.model.module.JpsTypedModule;

import com.synstorm.language.jps.model.JpsBCNNMModuleType;

public class BCNNMTargetType extends ModuleBasedBuildTargetType<BCNNMTarget> {

    public static final BCNNMTargetType PRODUCTION = new BCNNMTargetType("BCNNM-production", false);
    public static final BCNNMTargetType TESTS = new BCNNMTargetType("BCNNM-tests", true);

    private final boolean isTests;

    private BCNNMTargetType(@NotNull final String BCNNM, boolean isTests) {
        super(BCNNM);
        this.isTests = isTests;
    }


    @NotNull
    @Override
    public List<BCNNMTarget> computeAllTargets(@NotNull final JpsModel jpsModel) {
        List<BCNNMTarget> targets = new ArrayList<>();
        for (JpsTypedModule<JpsDummyElement> module : jpsModel.getProject().getModules(JpsBCNNMModuleType.INSTANCE)) {
            targets.add(new BCNNMTarget(module, this));
        }
        return targets;
    }

    @NotNull
    @Override
    public BuildTargetLoader<BCNNMTarget> createLoader(@NotNull final JpsModel jpsModel) {
        return new BuildTargetLoader<BCNNMTarget>() {
            @Nullable
            @Override
            public BCNNMTarget createTarget(@NotNull String targetId) {
                for (JpsTypedModule<JpsDummyElement> module : jpsModel.getProject().getModules(JpsBCNNMModuleType.INSTANCE)) {
                    if (module.getName().equals(targetId)) {
                        return new BCNNMTarget(module, BCNNMTargetType.this);
                    }
                }
                return null;
            }
        };
    }

    public boolean isTests()
    {
        return isTests;
    }
}