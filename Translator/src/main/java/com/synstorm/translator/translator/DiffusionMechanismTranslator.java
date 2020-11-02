package com.synstorm.translator.translator;

import com.synstorm.translator.core.Mechanism;
import com.synstorm.translator.utils.IndexedHashMap;

public class DiffusionMechanismTranslator extends MechanismTranslator {
    public DiffusionMechanismTranslator(Mechanism target) {
        super(target);
    }

    public String getEvaluateBlock()
    {
        return "";
    }

    public String getConstructorBlock()
    {
        Mechanism mech = this.getMechanism();
        IndexedHashMap moleculeMap  = (IndexedHashMap) mech.getParent().getMoleculeValues();
        String moleculeName = mech.getOutputArguments()[0];
        Integer signalIndex = moleculeMap.getIndex(moleculeName);

        String result = String.format("signal=%d;", signalIndex);

        return result;
    }

    public String getImportBlock()
    {
        return "import com.synstorm.MOC.Mechanisms.Diffusion;\n";
    }
}