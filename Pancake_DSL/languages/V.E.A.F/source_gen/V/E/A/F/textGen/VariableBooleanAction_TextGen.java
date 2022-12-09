package V.E.A.F.textGen;

/*Generated by MPS */

import jetbrains.mps.text.rt.TextGenDescriptorBase;
import jetbrains.mps.text.rt.TextGenContext;
import jetbrains.mps.text.impl.TextGenSupport;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SProperty;

public class VariableBooleanAction_TextGen extends TextGenDescriptorBase {
  @Override
  public void generateText(final TextGenContext ctx) {
    final TextGenSupport tgs = new TextGenSupport(ctx);
    tgs.indent();
    tgs.append(SPropertyOperations.getString(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.variable$j10B), PROPS.name$MnvL));
    tgs.append(" = ");
    tgs.append(String.valueOf(SPropertyOperations.getBoolean(ctx.getPrimaryInput(), PROPS.value$8Dhq)));
    tgs.append(";");
    tgs.newLine();
  }

  private static final class LINKS {
    /*package*/ static final SReferenceLink variable$j10B = MetaAdapterFactory.getReferenceLink(0xf152af7d92d2462fL, 0xacb4a6902db66b9dL, 0x7ae59a00bc6230bcL, 0x7ae59a00bc62363bL, "variable");
  }

  private static final class PROPS {
    /*package*/ static final SProperty name$MnvL = MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name");
    /*package*/ static final SProperty value$8Dhq = MetaAdapterFactory.getProperty(0xf152af7d92d2462fL, 0xacb4a6902db66b9dL, 0x7ae59a00bc6230bcL, 0x7ae59a00bc62351bL, "value");
  }
}
