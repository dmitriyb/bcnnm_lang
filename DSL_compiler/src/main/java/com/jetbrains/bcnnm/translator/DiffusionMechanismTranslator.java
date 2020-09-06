package com.jetbrains.bcnnm.translator;

import com.jetbrains.bcnnm.core.Mechanism;
import com.jetbrains.bcnnm.utils.IndexedHashMap;

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
}