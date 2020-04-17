public abstract class IChemCondition extends ICondition
{
    public IChemCondition() {}

    public IChemCondition(ConditionType conditionType, int signalType, double signalValue)
    {
        super(conditionType);

        this.signalType = signalType;
        this.signalValue = signalValue;
    }

    public IChemCondition(ConditionType conditionType, int signalType)
    {
        super(conditionType);

        this.signalType = signalType;
        this.signalValue = 0;
    }

    abstract boolean recalculate();

    public int getSignalType() { return this.signalType; }

    public void setSignalValue(double signalValue) { this.signalValue = signalValue; }
    public double getSignalValue() { return this.signalValue; }

    private int signalType;
    private double signalValue;
}