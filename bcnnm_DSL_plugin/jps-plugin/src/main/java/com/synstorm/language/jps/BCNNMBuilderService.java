package com.synstorm.language.jps;

import com.synstorm.language.jps.model.BCNNMBuilder;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.jps.builders.BuildTargetType;
import org.jetbrains.jps.incremental.BuilderService;
import org.jetbrains.jps.incremental.TargetBuilder;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public class BCNNMBuilderService extends BuilderService {
    @NotNull
    @Override
    public List<? extends TargetBuilder<?, ?>> createBuilders() {
        return Collections.singletonList(new BCNNMBuilder());
    }

    @NotNull
    @Override
    public List<? extends BuildTargetType<?>> getTargetTypes() {
        return Arrays.asList(BCNNMTargetType.PRODUCTION, BCNNMTargetType.TESTS);
    }
}