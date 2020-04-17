abstract class ICondition
{
    public ICondition() {}

    public ICondition(ConditionType type)
    {
        this.type = type;
    }

    public ConditionType getConditionType()
    {
        return this.type;
    }

    private ConditionType type;
}