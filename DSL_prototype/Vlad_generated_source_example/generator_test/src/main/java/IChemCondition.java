public interface IChemCondition extends ICondition {
    int getSignalType();
    void setSignalValue(double concentration);
}