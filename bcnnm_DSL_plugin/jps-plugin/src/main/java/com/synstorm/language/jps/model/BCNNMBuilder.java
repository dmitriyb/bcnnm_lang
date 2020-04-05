package com.synstorm.language.jps.model;

import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import com.intellij.execution.ExecutionException;
import com.intellij.execution.configurations.GeneralCommandLine;
import com.intellij.execution.process.BaseOSProcessHandler;
import com.intellij.execution.process.ProcessEvent;
import com.intellij.execution.process.ProcessListener;
import com.intellij.openapi.diagnostic.Logger;
import com.intellij.openapi.util.Key;
import com.intellij.openapi.util.io.FileUtil;
import com.synstorm.language.jps.BCNNMJspInterface;
import com.synstorm.language.jps.BCNNMSourceRootDescriptor;
import com.synstorm.language.jps.BCNNMTarget;
import com.synstorm.language.jps.BCNNMTargetType;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.jps.builders.BuildOutputConsumer;
import org.jetbrains.jps.builders.DirtyFilesHolder;
import org.jetbrains.jps.incremental.CompileContext;
import org.jetbrains.jps.incremental.ProjectBuildException;
import org.jetbrains.jps.incremental.TargetBuilder;
import org.jetbrains.jps.incremental.messages.BuildMessage;
import org.jetbrains.jps.incremental.messages.CompilerMessage;
import org.jetbrains.jps.incremental.messages.ProgressMessage;
import org.jetbrains.jps.incremental.resources.ResourcesBuilder;
import org.jetbrains.jps.incremental.resources.StandardResourceBuilderEnabler;
import org.jetbrains.jps.model.java.JpsJavaExtensionService;
import org.jetbrains.jps.model.module.JpsModule;

public class BCNNMBuilder extends TargetBuilder<BCNNMSourceRootDescriptor, BCNNMTarget> {

    public static final Logger LOG = Logger.getInstance(BCNNMBuilder.class);

    public BCNNMBuilder() {
        super(Arrays.asList(BCNNMTargetType.PRODUCTION, BCNNMTargetType.TESTS));
        ResourcesBuilder.registerEnabler(new StandardResourceBuilderEnabler() {
            @Override
            public boolean isResourceProcessingEnabled(@NotNull JpsModule module) {
                return !(module.getModuleType() instanceof JpsBCNNMModuleType);
            }
        });
    }

    @NotNull
    @Override
    public String getPresentableName() {
        return "BCNNM builder";
    }

    @Override
    public void build(@NotNull BCNNMTarget target,
                      @NotNull DirtyFilesHolder<BCNNMSourceRootDescriptor, BCNNMTarget> dirtyFilesHolder,
                      @NotNull BuildOutputConsumer buildOutputConsumer,
                      @NotNull CompileContext compileContext) throws ProjectBuildException, IOException {
        System.out.println(target.getOutputRoots(compileContext));
        File outputDirectory = getBuildOutputDirectory(target.getModule(), false, compileContext);
        compileContext.processMessage(new ProgressMessage("Compiling BCNNM sources"));
        compileConfiguration(target.getModule(), outputDirectory, compileContext);
        compileContext.checkCanceled();
        compileContext.processMessage(new ProgressMessage(""));
    }

    private void compileConfiguration(@NotNull final JpsModule module, @NotNull final File outputDirectory, @NotNull CompileContext compileContext) throws ProjectBuildException
    {

        final BCNNMJspInterface BCNNM = new BCNNMJspInterface(module, compileContext);
//        GeneralCommandLine commandLine = BCNNM.buildCommandLine(outputDirectory);
//        Process process = null;
//        try {
//            process = commandLine.createProcess();
//        } catch (ExecutionException e) {
//            e.printStackTrace();
//        }
//        BaseOSProcessHandler handler = new BaseOSProcessHandler(process, commandLine.getCommandLineString(), Charset.defaultCharset());
//
//        handler.startNotify();
//        handler.waitFor();
    }

    @NotNull
    private static File getBuildOutputDirectory(@NotNull JpsModule module,
                                                boolean forTests,
                                                @NotNull CompileContext context) throws ProjectBuildException {
        JpsJavaExtensionService instance = JpsJavaExtensionService.getInstance();
        File outputDirectory = instance.getOutputDirectory(module, forTests);
        if (outputDirectory == null) {
            String errorMessage = "No output dir for module " + module.getName();
            context.processMessage(new CompilerMessage("BCNNM compiler ", BuildMessage.Kind.ERROR, errorMessage));
            throw new ProjectBuildException(errorMessage);
        }
        if (!outputDirectory.exists()) {
            FileUtil.createDirectory(outputDirectory);
        }
        return outputDirectory;
    }
}