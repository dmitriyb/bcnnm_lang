package com.jetbrains.bcnnm.translator;

import com.jetbrains.bcnnm.core.Mechanism;
import com.jetbrains.bcnnm.utils.IndexedHashMap;

public class SignalTransferTranslator extends MechanismTranslator {
    public SignalTransferTranslator(Mechanism target) {
        super(target);

        this.evaluateTemplate = LangUtils.readTemplate("/transfer_evaluate_template.txt");
    }

    public String getConstructorBlock()
    {
        return "";
    }

    public String getEvaluateBlock()
    {
        Mechanism mech = this.getMechanism();
        IndexedHashMap moleculeValues = (IndexedHashMap) mech.getParent().getMoleculeValues();
        Integer signalId = moleculeValues.getIndex(mech.getOutputArguments()[0]);
        String coefficient = mech.getProperties().get("amount").split("\\*")[1];

        return this.evaluateTemplate.replaceAll("\\{SIGNAL_ID\\}", signalId.toString())
                                    .replaceAll("\\{COEFFICIENT\\}", coefficient);
    }

    private String evaluateTemplate = "";
}
