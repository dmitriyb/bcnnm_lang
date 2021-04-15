package com.synstorm.translator.translator;

import com.synstorm.translator.core.Mechanism;
import com.synstorm.translator.utils.IndexedHashMap;

public class SignalTransferTranslator extends MechanismTranslator {
    public SignalTransferTranslator(Mechanism target) {
        super(target);
        this.evaluateTemplate = LangUtils.readTemplate("/transfer_evaluate_template.txt");
    }

    public String getFunctionsBlock() {
        String res = "";
        return res;
    }

    public String getConstructorBlock()
    {
        return "";
    }

    public String getEvaluateBlock() {
        final Mechanism mech = this.getMechanism();
        final IndexedHashMap moleculeValues = (IndexedHashMap) mech.getParent().getMoleculeValues();
        final Integer signalId = moleculeValues.getIndex(mech.getOutputArguments()[0]);
        final String coefficient = mech.getProperties().get("amount").split("\\*")[1];

        return this.evaluateTemplate.replaceAll("\\{SIGNAL_ID\\}", signalId.toString())
                                    .replaceAll("\\{COEFFICIENT\\}", coefficient);
    }

    private String evaluateTemplate = "";
}
