package V.E.A.F.textGen;

/*Generated by MPS */

import jetbrains.mps.text.rt.TextGenDescriptorBase;
import jetbrains.mps.text.rt.TextGenContext;
import jetbrains.mps.text.impl.TextGenSupport;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import org.jetbrains.mps.openapi.language.SProperty;

public class Transition_TextGen extends TextGenDescriptorBase {
  @Override
  public void generateText(final TextGenContext ctx) {
    final TextGenSupport tgs = new TextGenSupport(ctx);
    tgs.indent();
    tgs.append("if(");
    tgs.appendNode(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.condition$JX2r));
    tgs.append(") {");
    tgs.newLine();
    ctx.getBuffer().area().increaseIndent();
    tgs.indent();
    tgs.append(SPropertyOperations.getString(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.nextState$x6ht), PROPS.name$MnvL));
    tgs.append("();");
    tgs.newLine();
    ctx.getBuffer().area().decreaseIndent();
    tgs.indent();
    tgs.append("}");
    tgs.newLine();
  }

  private static final class LINKS {
    /*package*/ static final SContainmentLink condition$JX2r = MetaAdapterFactory.getContainmentLink(0xf152af7d92d2462fL, 0xacb4a6902db66b9dL, 0x5afc605aa5c83e8fL, 0x31e1baf5f2d0ce04L, "condition");
    /*package*/ static final SReferenceLink nextState$x6ht = MetaAdapterFactory.getReferenceLink(0xf152af7d92d2462fL, 0xacb4a6902db66b9dL, 0x5afc605aa5c83e8fL, 0x5afc605aa5c8407eL, "nextState");
  }

  private static final class PROPS {
    /*package*/ static final SProperty name$MnvL = MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name");
  }
}