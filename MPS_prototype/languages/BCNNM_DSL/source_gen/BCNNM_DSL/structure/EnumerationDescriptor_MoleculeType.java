package BCNNM_DSL.structure;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.EnumerationDescriptorBase;
import jetbrains.mps.smodel.adapter.ids.PrimitiveTypeId;
import jetbrains.mps.smodel.runtime.EnumerationDescriptor;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.annotations.NotNull;
import java.util.Collection;
import java.util.Arrays;

public class EnumerationDescriptor_MoleculeType extends EnumerationDescriptorBase {

  public EnumerationDescriptor_MoleculeType() {
    super(0x9edcd71856d444c5L, 0xae868ea31c5d7fbbL, 0x46aac9d4f447b0c9L, "MoleculeType", "r:05aa5abd-b9a0-4735-80a0-d81e014acc83(BCNNM_DSL.structure)/5092104245164355785", PrimitiveTypeId.STRING);
  }

  private final EnumerationDescriptor.MemberDescriptor VALUE_cyclin_0 = new EnumerationDescriptor.MemberDescriptor("cyclin", "cyclin", "r:05aa5abd-b9a0-4735-80a0-d81e014acc83(BCNNM_DSL.structure)/5092104245164355786", "cyclin");
  private final EnumerationDescriptor.MemberDescriptor VALUE_phosphatase_0 = new EnumerationDescriptor.MemberDescriptor("phosphatase", "phosphatase", "r:05aa5abd-b9a0-4735-80a0-d81e014acc83(BCNNM_DSL.structure)/5092104245164355787", "phosphatase");
  private final EnumerationDescriptor.MemberDescriptor VALUE_kinase_0 = new EnumerationDescriptor.MemberDescriptor("kinase", "kinase", "r:05aa5abd-b9a0-4735-80a0-d81e014acc83(BCNNM_DSL.structure)/5092104245164355790", "kinase");
  private final EnumerationDescriptor.MemberDescriptor VALUE_protease_0 = new EnumerationDescriptor.MemberDescriptor("protease", "protease", "r:05aa5abd-b9a0-4735-80a0-d81e014acc83(BCNNM_DSL.structure)/5092104245164355794", "protease");

  @Nullable
  @Override
  public EnumerationDescriptor.MemberDescriptor getDefault() {
    return VALUE_cyclin_0;
  }

  @NotNull
  @Override
  public Collection<EnumerationDescriptor.MemberDescriptor> getMembers() {
    return Arrays.asList(VALUE_cyclin_0, VALUE_phosphatase_0, VALUE_kinase_0, VALUE_protease_0);
  }

  @Nullable
  @Override
  public EnumerationDescriptor.MemberDescriptor getMember(@Nullable String string) {
    if (string == null) {
      return null;
    }
    switch (string) {
      case "cyclin":
        return VALUE_cyclin_0;
      case "phosphatase":
        return VALUE_phosphatase_0;
      case "kinase":
        return VALUE_kinase_0;
      case "protease":
        return VALUE_protease_0;
    }
    return null;
  }
}