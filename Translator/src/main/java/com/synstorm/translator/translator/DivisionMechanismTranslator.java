package com.synstorm.translator.translator;

import com.synstorm.translator.core.Mechanism;

public class DivisionMechanismTranslator extends MechanismTranslator {
    public DivisionMechanismTranslator(Mechanism target) {
        super(target);
    }

    public String getConstructorBlock() { return ""; }
    public String getEvaluateBlock()
    {
        return "";
    }

    public String getImportBlock()
    {
        String res = "import com.synstorm.DES.IEventResponse;\n" +
                "import com.synstorm.MOC.LogicObjects.Connection;\n" +
                "import com.synstorm.MOC.LogicObjects.PhysicalObject;\n" +
                "import com.synstorm.MOC.MechanismResponses.DivisionResponse;\n" +
                "import com.synstorm.MOC.MechanismResponses.DynamicResponse;\n" +
                "import com.synstorm.MOC.MechanismResponses.IApplicableResponse;\n" +
                "import com.synstorm.MOC.Mechanisms.Division;\n" +
                "import org.jetbrains.annotations.NotNull;\n";

        return res;
    }
}
