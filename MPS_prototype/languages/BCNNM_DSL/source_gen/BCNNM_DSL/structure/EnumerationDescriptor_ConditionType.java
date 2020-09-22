package BCNNM_DSL.structure;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.EnumerationDescriptorBase;
import jetbrains.mps.smodel.adapter.ids.PrimitiveTypeId;
import jetbrains.mps.smodel.runtime.EnumerationDescriptor;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.annotations.NotNull;
import java.util.Collection;
import java.util.Arrays;

public class EnumerationDescriptor_ConditionType extends EnumerationDescriptorBase {

  public EnumerationDescriptor_ConditionType() {
    super(0x9edcd71856d444c5L, 0xae868ea31c5d7fbbL, 0x5719c93ddd807d0aL, "ConditionType", "r:05aa5abd-b9a0-4735-80a0-d81e014acc83(BCNNM_DSL.structure)/6276268823263870218", PrimitiveTypeId.STRING);
  }

  private final EnumerationDescriptor.MemberDescriptor VALUE_rule_0 = new EnumerationDescriptor.MemberDescriptor("rule", "Rule", "r:05aa5abd-b9a0-4735-80a0-d81e014acc83(BCNNM_DSL.structure)/6276268823263870219", "Rule");
  private final EnumerationDescriptor.MemberDescriptor VALUE_probability_0 = new EnumerationDescriptor.MemberDescriptor("probability", "Probability", "r:05aa5abd-b9a0-4735-80a0-d81e014acc83(BCNNM_DSL.structure)/6276268823263870220", "Probability");
  private final EnumerationDescriptor.MemberDescriptor VALUE_distribution_0 = new EnumerationDescriptor.MemberDescriptor("distribution", "Distribution", "r:05aa5abd-b9a0-4735-80a0-d81e014acc83(BCNNM_DSL.structure)/2453142626153004934", "Distribution");

  @Nullable
  @Override
  public EnumerationDescriptor.MemberDescriptor getDefault() {
    return VALUE_rule_0;
  }

  @NotNull
  @Override
  public Collection<EnumerationDescriptor.MemberDescriptor> getMembers() {
    return Arrays.asList(VALUE_rule_0, VALUE_probability_0, VALUE_distribution_0);
  }

  @Nullable
  @Override
  public EnumerationDescriptor.MemberDescriptor getMember(@Nullable String string) {
    if (string == null) {
      return null;
    }
    switch (string) {
      case "rule":
        return VALUE_rule_0;
      case "probability":
        return VALUE_probability_0;
      case "distribution":
        return VALUE_distribution_0;
    }
    return null;
  }
}
