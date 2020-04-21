public class GeneratedChemicalCondition extends ChemicalCondition {
    public GeneratedChemicalCondition(final int signalType, final ConditionType conditionType) {
        super(signalType, conditionType);
    }

    public boolean recalculate() {
        double signal = getSignalValue();

        return signal >= 0.5 && signal <= 0.9;
    }
}
