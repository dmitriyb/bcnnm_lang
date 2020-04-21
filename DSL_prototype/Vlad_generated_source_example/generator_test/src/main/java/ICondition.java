public interface ICondition {
    ConditionType getConditionType();
    boolean recalculate();
}