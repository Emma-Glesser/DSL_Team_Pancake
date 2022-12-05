package V.E.A.F.textGen;

/*Generated by MPS */

import jetbrains.mps.text.rt.TextGenAspectBase;
import V.E.A.F.structure.LanguageConceptSwitch;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.text.rt.TextGenDescriptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.text.rt.TextGenModelOutline;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.language.SConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class TextGenAspectDescriptor extends TextGenAspectBase {
  private final LanguageConceptSwitch myIndex = new LanguageConceptSwitch();

  public TextGenAspectDescriptor() {
  }

  @Nullable
  @Override
  public TextGenDescriptor getDescriptor(@NotNull SAbstractConcept concept) {
    switch (myIndex.index(concept)) {
      case LanguageConceptSwitch.Action:
        return new Action_TextGen();
      case LanguageConceptSwitch.Component:
        return new Component_TextGen();
      case LanguageConceptSwitch.Event:
        return new Event_TextGen();
      case LanguageConceptSwitch.State:
        return new State_TextGen();
      case LanguageConceptSwitch.VEAF:
        return new VEAF_TextGen();
      case LanguageConceptSwitch.Variable:
        return new Variable_TextGen();
    }
    return null;
  }

  @Override
  public void breakdownToUnits(@NotNull TextGenModelOutline outline) {
    for (SNode root : outline.getModel().getRootNodes()) {
      if (root.getConcept().equals(CONCEPTS.VEAF$mX)) {
        String fname = getFileName_VEAF(root);
        String ext = getFileExtension_VEAF(root);
        outline.registerTextUnit((ext == null ? fname : (fname + '.' + ext)), root);
        continue;
      }
    }
  }
  private static String getFileName_VEAF(SNode node) {
    return "main";
  }
  private static String getFileExtension_VEAF(SNode node) {
    return "ino";
  }

  private static final class CONCEPTS {
    /*package*/ static final SConcept VEAF$mX = MetaAdapterFactory.getConcept(0xf152af7d92d2462fL, 0xacb4a6902db66b9dL, 0x27d147c85ff679c8L, "V.E.A.F.structure.VEAF");
  }
}
