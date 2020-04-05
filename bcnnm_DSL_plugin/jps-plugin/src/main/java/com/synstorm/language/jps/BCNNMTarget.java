package com.synstorm.language.jps;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import com.intellij.util.containers.ContainerUtil;
import com.synstorm.language.jps.model.JpsBCNNMModuleType;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.jps.builders.BuildRootIndex;
import org.jetbrains.jps.builders.BuildTarget;
import org.jetbrains.jps.builders.BuildTargetRegistry;
import org.jetbrains.jps.builders.ModuleBasedTarget;
import org.jetbrains.jps.builders.TargetOutputIndex;
import org.jetbrains.jps.builders.storage.BuildDataPaths;
import org.jetbrains.jps.incremental.CompileContext;
import org.jetbrains.jps.indices.IgnoredFileIndex;
import org.jetbrains.jps.indices.ModuleExcludeIndex;
import org.jetbrains.jps.model.JpsModel;
import org.jetbrains.jps.model.java.JavaSourceRootProperties;
import org.jetbrains.jps.model.java.JavaSourceRootType;
import org.jetbrains.jps.model.java.JpsJavaClasspathKind;
import org.jetbrains.jps.model.java.JpsJavaExtensionService;
import org.jetbrains.jps.model.module.JpsModule;
import org.jetbrains.jps.model.module.JpsTypedModuleSourceRoot;

public class BCNNMTarget extends ModuleBasedTarget<BCNNMSourceRootDescriptor> {

    public BCNNMTarget(@NotNull final JpsModule jpsModule, @NotNull final BCNNMTargetType BCNNMTargetType) {
        super(BCNNMTargetType, jpsModule);
    }

    @Override
    public boolean isTests() {
        return getBCNNMTargetType().isTests();
    }

    @Override
    public String getId() {
        return myModule.getName();
    }

    @Override
    public Collection<BuildTarget<?>> computeDependencies(BuildTargetRegistry buildTargetRegistry, TargetOutputIndex targetOutputIndex) {
        List<BuildTarget<?>> dependencies = new ArrayList<>();
        Set<JpsModule> modules = JpsJavaExtensionService.dependencies(myModule).includedIn(JpsJavaClasspathKind.compile(isTests())).getModules();
        for (JpsModule module : modules) {
            if (module.getModuleType().equals(JpsBCNNMModuleType.INSTANCE)) {
                dependencies.add(new BCNNMTarget(module, getBCNNMTargetType()));
            }
        }
        if (isTests()) {
            dependencies.add(new BCNNMTarget(myModule, BCNNMTargetType.PRODUCTION));
        }
        return dependencies;
    }

    @NotNull
    private BCNNMTargetType getBCNNMTargetType() {
        return (BCNNMTargetType) getTargetType();
    }

    @NotNull
    @Override
    public List<BCNNMSourceRootDescriptor> computeRootDescriptors(JpsModel jpsModel, ModuleExcludeIndex moduleExcludeIndex, IgnoredFileIndex ignoredFileIndex, BuildDataPaths buildDataPaths) {
        List<BCNNMSourceRootDescriptor> result = new ArrayList<>();
        JavaSourceRootType type = isTests() ? JavaSourceRootType.TEST_SOURCE : JavaSourceRootType.SOURCE;
        for (JpsTypedModuleSourceRoot<JavaSourceRootProperties> root : myModule.getSourceRoots(type)) {
            result.add(new BCNNMSourceRootDescriptor(root.getFile(), this));
        }
        return result;
    }

    @Nullable
    @Override
    public BCNNMSourceRootDescriptor findRootDescriptor(@NotNull final String rootId, @NotNull final BuildRootIndex rootIndex) {
        return ContainerUtil.getFirstItem(rootIndex.getRootDescriptors(new File(rootId), Collections.singletonList(getBCNNMTargetType()), null));
    }

    @NotNull
    @Override
    public String getPresentableName() {
        return "BCNNM";
    }

    @NotNull
    @Override
    public Collection<File> getOutputRoots(CompileContext compileContext) {
        return ContainerUtil.createMaybeSingletonList(JpsJavaExtensionService.getInstance().getOutputDirectory(myModule, isTests()));
    }
}