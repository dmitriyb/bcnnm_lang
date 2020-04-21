import lombok.Getter;
import lombok.Setter;

/**
 * Created by human-research on 2019-08-06.
 */
public abstract class ChemicalCondition implements IChemCondition {
    //region Fields

    private final int signalType;
    private final ConditionType conditionType;
    private double signalValue;
    //endregion


    //region Constructors
    public ChemicalCondition(final int signalType, final ConditionType conditionType) {
        this.signalType = signalType;
        this.signalValue = 0.0;
        this.conditionType = conditionType;
    }

    @Override
    public int getSignalType() {
        return signalType;
    }

    public ConditionType getConditionType() {
        return conditionType;
    }

    public double getSignalValue() {
        return signalValue;
    }

    public void setSignalValue(double signalValue) {
        this.signalValue = signalValue;
    }

    //endregion
}