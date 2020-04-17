class GeneratedChemicalCondition extends IChemCondition
{
    public boolean recalculate()
    {
        double val = this.getSignalValue();

        return val >= 0.2 && val <= 0.65;
    }
}
