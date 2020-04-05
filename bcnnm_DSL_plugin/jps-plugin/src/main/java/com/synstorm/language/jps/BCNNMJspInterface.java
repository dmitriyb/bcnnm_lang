package com.synstorm.language.jps;

import java.io.File;
import com.intellij.execution.configurations.GeneralCommandLine;
import com.intellij.openapi.diagnostic.Logger;
import com.intellij.openapi.util.SystemInfo;

import com.synstorm.language.jps.model.JpsBCNNMSdkType;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.jps.incremental.CompileContext;
import org.jetbrains.jps.incremental.ProjectBuildException;
import org.jetbrains.jps.incremental.messages.BuildMessage;
import org.jetbrains.jps.incremental.messages.CompilerMessage;
import org.jetbrains.jps.model.JpsDummyElement;
import org.jetbrains.jps.model.library.sdk.JpsSdk;
import org.jetbrains.jps.model.module.JpsModule;

public class BCNNMJspInterface {

    public static final Logger LOG = Logger.getInstance(BCNNMJspInterface.class);

    @NotNull
    private final File rootDir;

    public BCNNMJspInterface(@NotNull JpsModule module, @NotNull CompileContext context) throws ProjectBuildException {
        final String moduleRoot = module.getContentRootsList().getUrls().get(0).substring("file://".length());
        this.rootDir = new File(moduleRoot);
        JpsSdk<JpsDummyElement> sdk = module.getSdk(JpsBCNNMSdkType.INSTANCE);
        if (sdk == null)
        {
            String errorMessage = "No SDK for module " + module.getName();
            context.processMessage(new CompilerMessage("BCNNMBuilder", BuildMessage.Kind.ERROR, errorMessage));
            throw new ProjectBuildException(errorMessage);
        }

    }
}