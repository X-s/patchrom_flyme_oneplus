.class public Lcom/caverock/androidsvg/SVG;
.super Ljava/lang/Object;
.source "SVG.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caverock/androidsvg/SVG$Box;,
        Lcom/caverock/androidsvg/SVG$CSSClipRect;,
        Lcom/caverock/androidsvg/SVG$Circle;,
        Lcom/caverock/androidsvg/SVG$ClipPath;,
        Lcom/caverock/androidsvg/SVG$Colour;,
        Lcom/caverock/androidsvg/SVG$CurrentColor;,
        Lcom/caverock/androidsvg/SVG$Defs;,
        Lcom/caverock/androidsvg/SVG$Ellipse;,
        Lcom/caverock/androidsvg/SVG$GradientElement;,
        Lcom/caverock/androidsvg/SVG$GradientSpread;,
        Lcom/caverock/androidsvg/SVG$GraphicsElement;,
        Lcom/caverock/androidsvg/SVG$Group;,
        Lcom/caverock/androidsvg/SVG$HasTransform;,
        Lcom/caverock/androidsvg/SVG$Image;,
        Lcom/caverock/androidsvg/SVG$Length;,
        Lcom/caverock/androidsvg/SVG$Line;,
        Lcom/caverock/androidsvg/SVG$Marker;,
        Lcom/caverock/androidsvg/SVG$Mask;,
        Lcom/caverock/androidsvg/SVG$NotDirectlyRendered;,
        Lcom/caverock/androidsvg/SVG$PaintReference;,
        Lcom/caverock/androidsvg/SVG$Path;,
        Lcom/caverock/androidsvg/SVG$PathDefinition;,
        Lcom/caverock/androidsvg/SVG$PathInterface;,
        Lcom/caverock/androidsvg/SVG$Pattern;,
        Lcom/caverock/androidsvg/SVG$PolyLine;,
        Lcom/caverock/androidsvg/SVG$Polygon;,
        Lcom/caverock/androidsvg/SVG$Rect;,
        Lcom/caverock/androidsvg/SVG$SolidColor;,
        Lcom/caverock/androidsvg/SVG$Stop;,
        Lcom/caverock/androidsvg/SVG$Style;,
        Lcom/caverock/androidsvg/SVG$Svg;,
        Lcom/caverock/androidsvg/SVG$SvgConditional;,
        Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;,
        Lcom/caverock/androidsvg/SVG$SvgConditionalElement;,
        Lcom/caverock/androidsvg/SVG$SvgContainer;,
        Lcom/caverock/androidsvg/SVG$SvgElement;,
        Lcom/caverock/androidsvg/SVG$SvgElementBase;,
        Lcom/caverock/androidsvg/SVG$SvgLinearGradient;,
        Lcom/caverock/androidsvg/SVG$SvgObject;,
        Lcom/caverock/androidsvg/SVG$SvgPaint;,
        Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;,
        Lcom/caverock/androidsvg/SVG$SvgRadialGradient;,
        Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;,
        Lcom/caverock/androidsvg/SVG$Switch;,
        Lcom/caverock/androidsvg/SVG$Symbol;,
        Lcom/caverock/androidsvg/SVG$TRef;,
        Lcom/caverock/androidsvg/SVG$TSpan;,
        Lcom/caverock/androidsvg/SVG$Text;,
        Lcom/caverock/androidsvg/SVG$TextChild;,
        Lcom/caverock/androidsvg/SVG$TextContainer;,
        Lcom/caverock/androidsvg/SVG$TextPath;,
        Lcom/caverock/androidsvg/SVG$TextPositionedContainer;,
        Lcom/caverock/androidsvg/SVG$TextRoot;,
        Lcom/caverock/androidsvg/SVG$TextSequence;,
        Lcom/caverock/androidsvg/SVG$Unit;,
        Lcom/caverock/androidsvg/SVG$Use;,
        Lcom/caverock/androidsvg/SVG$View;
    }
.end annotation


# static fields
.field private static final DEFAULT_PICTURE_HEIGHT:I = 0x200

.field private static final DEFAULT_PICTURE_WIDTH:I = 0x200

.field private static final EMPTY_CHILD_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/SVG$SvgObject;",
            ">;"
        }
    .end annotation
.end field

.field protected static final SPECIFIED_ALL:J = -0x1L

.field protected static final SPECIFIED_CLIP:J = 0x100000L

.field protected static final SPECIFIED_CLIP_PATH:J = 0x10000000L

.field protected static final SPECIFIED_CLIP_RULE:J = 0x20000000L

.field protected static final SPECIFIED_COLOR:J = 0x1000L

.field protected static final SPECIFIED_DIRECTION:J = 0x1000000000L

.field protected static final SPECIFIED_DISPLAY:J = 0x1000000L

.field protected static final SPECIFIED_FILL:J = 0x1L

.field protected static final SPECIFIED_FILL_OPACITY:J = 0x4L

.field protected static final SPECIFIED_FILL_RULE:J = 0x2L

.field protected static final SPECIFIED_FONT_FAMILY:J = 0x2000L

.field protected static final SPECIFIED_FONT_SIZE:J = 0x4000L

.field protected static final SPECIFIED_FONT_STYLE:J = 0x10000L

.field protected static final SPECIFIED_FONT_WEIGHT:J = 0x8000L

.field protected static final SPECIFIED_MARKER_END:J = 0x800000L

.field protected static final SPECIFIED_MARKER_MID:J = 0x400000L

.field protected static final SPECIFIED_MARKER_START:J = 0x200000L

.field protected static final SPECIFIED_MASK:J = 0x40000000L

.field protected static final SPECIFIED_NON_INHERITING:J = 0xfdd180800L

.field protected static final SPECIFIED_OPACITY:J = 0x800L

.field protected static final SPECIFIED_OVERFLOW:J = 0x80000L

.field protected static final SPECIFIED_SOLID_COLOR:J = 0x80000000L

.field protected static final SPECIFIED_SOLID_OPACITY:J = 0x100000000L

.field protected static final SPECIFIED_STOP_COLOR:J = 0x4000000L

.field protected static final SPECIFIED_STOP_OPACITY:J = 0x8000000L

.field protected static final SPECIFIED_STROKE:J = 0x8L

.field protected static final SPECIFIED_STROKE_DASHARRAY:J = 0x200L

.field protected static final SPECIFIED_STROKE_DASHOFFSET:J = 0x400L

.field protected static final SPECIFIED_STROKE_LINECAP:J = 0x40L

.field protected static final SPECIFIED_STROKE_LINEJOIN:J = 0x80L

.field protected static final SPECIFIED_STROKE_MITERLIMIT:J = 0x100L

.field protected static final SPECIFIED_STROKE_OPACITY:J = 0x10L

.field protected static final SPECIFIED_STROKE_WIDTH:J = 0x20L

.field protected static final SPECIFIED_TEXT_ANCHOR:J = 0x40000L

.field protected static final SPECIFIED_TEXT_DECORATION:J = 0x20000L

.field protected static final SPECIFIED_VECTOR_EFFECT:J = 0x800000000L

.field protected static final SPECIFIED_VIEWPORT_FILL:J = 0x200000000L

.field protected static final SPECIFIED_VIEWPORT_FILL_OPACITY:J = 0x400000000L

.field protected static final SPECIFIED_VISIBILITY:J = 0x2000000L

.field private static final SQRT2:D = 1.414213562373095

.field protected static final SUPPORTED_SVG_VERSION:Ljava/lang/String; = "1.2"

.field private static final TAG:Ljava/lang/String; = "AndroidSVG"

.field private static final VERSION:Ljava/lang/String; = "1.2.0"


# instance fields
.field private cssRules:Lcom/caverock/androidsvg/CSSParser$Ruleset;

.field private desc:Ljava/lang/String;

.field private fileResolver:Lcom/caverock/androidsvg/SVGExternalFileResolver;

.field private renderDPI:F

.field private rootElement:Lcom/caverock/androidsvg/SVG$Svg;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 87
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG;->EMPTY_CHILD_LIST:Ljava/util/List;

    .line 929
    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object v1, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG;->title:Ljava/lang/String;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG;->desc:Ljava/lang/String;

    .line 97
    iput-object v1, p0, Lcom/caverock/androidsvg/SVG;->fileResolver:Lcom/caverock/androidsvg/SVGExternalFileResolver;

    .line 100
    const/high16 v0, 0x42c00000    # 96.0f

    iput v0, p0, Lcom/caverock/androidsvg/SVG;->renderDPI:F

    .line 103
    new-instance v0, Lcom/caverock/androidsvg/CSSParser$Ruleset;

    invoke-direct {v0}, Lcom/caverock/androidsvg/CSSParser$Ruleset;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG;->cssRules:Lcom/caverock/androidsvg/CSSParser$Ruleset;

    .line 130
    return-void
.end method

.method static synthetic access$0()Ljava/util/List;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/caverock/androidsvg/SVG;->EMPTY_CHILD_LIST:Ljava/util/List;

    return-object v0
.end method

.method private getDocumentDimensions(F)Lcom/caverock/androidsvg/SVG$Box;
    .locals 8
    .param p1, "dpi"    # F

    .prologue
    const/4 v7, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    .line 795
    iget-object v4, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v2, v4, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 796
    .local v2, "w":Lcom/caverock/androidsvg/SVG$Length;
    iget-object v4, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v0, v4, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 798
    .local v0, "h":Lcom/caverock/androidsvg/SVG$Length;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v2, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v5, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    if-eq v4, v5, :cond_0

    iget-object v4, v2, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v5, Lcom/caverock/androidsvg/SVG$Unit;->em:Lcom/caverock/androidsvg/SVG$Unit;

    if-eq v4, v5, :cond_0

    iget-object v4, v2, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v5, Lcom/caverock/androidsvg/SVG$Unit;->ex:Lcom/caverock/androidsvg/SVG$Unit;

    if-ne v4, v5, :cond_1

    .line 799
    :cond_0
    new-instance v4, Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {v4, v6, v6, v6, v6}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    .line 818
    :goto_0
    return-object v4

    .line 801
    :cond_1
    invoke-virtual {v2, p1}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(F)F

    move-result v3

    .line 804
    .local v3, "wOut":F
    if-eqz v0, :cond_4

    .line 805
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v5, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    if-eq v4, v5, :cond_2

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v5, Lcom/caverock/androidsvg/SVG$Unit;->em:Lcom/caverock/androidsvg/SVG$Unit;

    if-eq v4, v5, :cond_2

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v5, Lcom/caverock/androidsvg/SVG$Unit;->ex:Lcom/caverock/androidsvg/SVG$Unit;

    if-ne v4, v5, :cond_3

    .line 806
    :cond_2
    new-instance v4, Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {v4, v6, v6, v6, v6}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    goto :goto_0

    .line 808
    :cond_3
    invoke-virtual {v0, p1}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(F)F

    move-result v1

    .line 818
    .local v1, "hOut":F
    :goto_1
    new-instance v4, Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {v4, v7, v7, v3, v1}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    goto :goto_0

    .line 812
    .end local v1    # "hOut":F
    :cond_4
    iget-object v4, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v4, :cond_5

    .line 813
    iget-object v4, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v4, v4, Lcom/caverock/androidsvg/SVG$Box;->height:F

    mul-float/2addr v4, v3

    iget-object v5, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v5, v5, Lcom/caverock/androidsvg/SVG$Box;->width:F

    div-float v1, v4, v5

    .line 814
    .restart local v1    # "hOut":F
    goto :goto_1

    .line 815
    .end local v1    # "hOut":F
    :cond_5
    move v1, v3

    .restart local v1    # "hOut":F
    goto :goto_1
.end method

.method private getElementById(Lcom/caverock/androidsvg/SVG$SvgContainer;Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgElementBase;
    .locals 6
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgContainer;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 2031
    move-object v2, p1

    check-cast v2, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 2032
    .local v2, "elem":Lcom/caverock/androidsvg/SVG$SvgElementBase;
    iget-object v4, v2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->id:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2048
    .end local v2    # "elem":Lcom/caverock/androidsvg/SVG$SvgElementBase;
    :goto_0
    return-object v2

    .line 2034
    .restart local v2    # "elem":Lcom/caverock/androidsvg/SVG$SvgElementBase;
    :cond_0
    invoke-interface {p1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2048
    const/4 v2, 0x0

    goto :goto_0

    .line 2034
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 2036
    .local v0, "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    instance-of v5, v0, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    if-eqz v5, :cond_1

    move-object v1, v0

    .line 2038
    check-cast v1, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 2039
    .local v1, "childElem":Lcom/caverock/androidsvg/SVG$SvgElementBase;
    iget-object v5, v1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->id:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v2, v1

    .line 2040
    goto :goto_0

    .line 2041
    :cond_3
    instance-of v5, v0, Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v5, :cond_1

    .line 2043
    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgContainer;

    .end local v0    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, v0, p2}, Lcom/caverock/androidsvg/SVG;->getElementById(Lcom/caverock/androidsvg/SVG$SvgContainer;Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgElementBase;

    move-result-object v3

    .line 2044
    .local v3, "found":Lcom/caverock/androidsvg/SVG$SvgElementBase;
    if-eqz v3, :cond_1

    move-object v2, v3

    .line 2045
    goto :goto_0
.end method

.method private getElementsByTagName(Lcom/caverock/androidsvg/SVG$SvgContainer;Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgContainer;
    .param p2, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$SvgContainer;",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/SVG$SvgObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2063
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2065
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/SVG$SvgObject;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, p2, :cond_0

    move-object v2, p1

    .line 2066
    check-cast v2, Lcom/caverock/androidsvg/SVG$SvgObject;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2067
    :cond_0
    invoke-interface {p1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2074
    return-object v1

    .line 2067
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 2069
    .local v0, "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, p2, :cond_3

    .line 2070
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2071
    :cond_3
    instance-of v3, v0, Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v3, :cond_1

    .line 2072
    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgContainer;

    .end local v0    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, v0, p2}, Lcom/caverock/androidsvg/SVG;->getElementsByTagName(Lcom/caverock/androidsvg/SVG$SvgContainer;Ljava/lang/Class;)Ljava/util/List;

    goto :goto_0
.end method

.method public static getFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/caverock/androidsvg/SVG;
    .locals 3
    .param p0, "assetManager"    # Landroid/content/res/AssetManager;
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    new-instance v1, Lcom/caverock/androidsvg/SVGParser;

    invoke-direct {v1}, Lcom/caverock/androidsvg/SVGParser;-><init>()V

    .line 188
    .local v1, "parser":Lcom/caverock/androidsvg/SVGParser;
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 189
    .local v0, "is":Ljava/io/InputStream;
    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVGParser;->parse(Ljava/io/InputStream;)Lcom/caverock/androidsvg/SVG;

    move-result-object v2

    .line 190
    .local v2, "svg":Lcom/caverock/androidsvg/SVG;
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 191
    return-object v2
.end method

.method public static getFromInputStream(Ljava/io/InputStream;)Lcom/caverock/androidsvg/SVG;
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .prologue
    .line 142
    new-instance v0, Lcom/caverock/androidsvg/SVGParser;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVGParser;-><init>()V

    .line 143
    .local v0, "parser":Lcom/caverock/androidsvg/SVGParser;
    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVGParser;->parse(Ljava/io/InputStream;)Lcom/caverock/androidsvg/SVG;

    move-result-object v1

    return-object v1
.end method

.method public static getFromResource(Landroid/content/Context;I)Lcom/caverock/androidsvg/SVG;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .prologue
    .line 171
    new-instance v0, Lcom/caverock/androidsvg/SVGParser;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVGParser;-><init>()V

    .line 172
    .local v0, "parser":Lcom/caverock/androidsvg/SVGParser;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVGParser;->parse(Ljava/io/InputStream;)Lcom/caverock/androidsvg/SVG;

    move-result-object v1

    return-object v1
.end method

.method public static getFromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG;
    .locals 3
    .param p0, "svg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .prologue
    .line 156
    new-instance v0, Lcom/caverock/androidsvg/SVGParser;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVGParser;-><init>()V

    .line 157
    .local v0, "parser":Lcom/caverock/androidsvg/SVGParser;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVGParser;->parse(Ljava/io/InputStream;)Lcom/caverock/androidsvg/SVG;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected addCSSRules(Lcom/caverock/androidsvg/CSSParser$Ruleset;)V
    .locals 1
    .param p1, "ruleset"    # Lcom/caverock/androidsvg/CSSParser$Ruleset;

    .prologue
    .line 828
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->cssRules:Lcom/caverock/androidsvg/CSSParser$Ruleset;

    invoke-virtual {v0, p1}, Lcom/caverock/androidsvg/CSSParser$Ruleset;->addAll(Lcom/caverock/androidsvg/CSSParser$Ruleset;)V

    .line 829
    return-void
.end method

.method protected getCSSRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/CSSParser$Rule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 834
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->cssRules:Lcom/caverock/androidsvg/CSSParser$Ruleset;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/CSSParser$Ruleset;->getRules()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentAspectRatio()F
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    .line 740
    iget-object v3, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    if-nez v3, :cond_0

    .line 741
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "SVG document is empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 743
    :cond_0
    iget-object v3, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v1, v3, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 744
    .local v1, "w":Lcom/caverock/androidsvg/SVG$Length;
    iget-object v3, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v0, v3, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 747
    .local v0, "h":Lcom/caverock/androidsvg/SVG$Length;
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    iget-object v3, v1, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v4, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    if-eq v3, v4, :cond_3

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v4, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    if-eq v3, v4, :cond_3

    .line 749
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 760
    :cond_1
    :goto_0
    return v2

    .line 751
    :cond_2
    iget v2, p0, Lcom/caverock/androidsvg/SVG;->renderDPI:F

    invoke-virtual {v1, v2}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(F)F

    move-result v2

    iget v3, p0, Lcom/caverock/androidsvg/SVG;->renderDPI:F

    invoke-virtual {v0, v3}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(F)F

    move-result v3

    div-float/2addr v2, v3

    goto :goto_0

    .line 755
    :cond_3
    iget-object v3, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v3, v3, Lcom/caverock/androidsvg/SVG$Box;->width:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v3, v3, Lcom/caverock/androidsvg/SVG$Box;->height:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_1

    .line 756
    iget-object v2, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v2, v2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget-object v3, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v3, v3, Lcom/caverock/androidsvg/SVG$Box;->height:F

    div-float/2addr v2, v3

    goto :goto_0
.end method

.method public getDocumentDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    if-nez v0, :cond_0

    .line 478
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SVG document is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getDocumentHeight()F
    .locals 2

    .prologue
    .line 599
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    if-nez v0, :cond_0

    .line 600
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SVG document is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 602
    :cond_0
    iget v0, p0, Lcom/caverock/androidsvg/SVG;->renderDPI:F

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG;->getDocumentDimensions(F)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v0

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    return v0
.end method

.method public getDocumentPreserveAspectRatio()Lcom/caverock/androidsvg/PreserveAspectRatio;
    .locals 2

    .prologue
    .line 715
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    if-nez v0, :cond_0

    .line 716
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SVG document is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Svg;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-nez v0, :cond_1

    .line 719
    const/4 v0, 0x0

    .line 721
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Svg;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    goto :goto_0
.end method

.method public getDocumentSVGVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    if-nez v0, :cond_0

    .line 493
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SVG document is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Svg;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getDocumentTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    if-nez v0, :cond_0

    .line 463
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SVG document is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getDocumentViewBox()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 678
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    if-nez v0, :cond_0

    .line 679
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SVG document is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v0, :cond_1

    .line 682
    const/4 v0, 0x0

    .line 684
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Box;->toRectF()Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_0
.end method

.method public getDocumentWidth()F
    .locals 2

    .prologue
    .line 541
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    if-nez v0, :cond_0

    .line 542
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SVG document is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :cond_0
    iget v0, p0, Lcom/caverock/androidsvg/SVG;->renderDPI:F

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG;->getDocumentDimensions(F)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v0

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    return v0
.end method

.method protected getElementById(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 2021
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Svg;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2022
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    .line 2025
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVG;->getElementById(Lcom/caverock/androidsvg/SVG$SvgContainer;Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgElementBase;

    move-result-object v0

    goto :goto_0
.end method

.method protected getElementsByTagName(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/SVG$SvgObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2056
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVG;->getElementsByTagName(Lcom/caverock/androidsvg/SVG$SvgContainer;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getFileResolver()Lcom/caverock/androidsvg/SVGExternalFileResolver;
    .locals 1

    .prologue
    .line 1878
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->fileResolver:Lcom/caverock/androidsvg/SVGExternalFileResolver;

    return-object v0
.end method

.method public getRenderDPI()F
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/caverock/androidsvg/SVG;->renderDPI:F

    return v0
.end method

.method protected getRootElement()Lcom/caverock/androidsvg/SVG$Svg;
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 450
    const-string v0, "1.2.0"

    return-object v0
.end method

.method public getViewList()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 509
    iget-object v4, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    if-nez v4, :cond_0

    .line 510
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "SVG document is empty"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 512
    :cond_0
    const-class v4, Lcom/caverock/androidsvg/SVG$View;

    invoke-virtual {p0, v4}, Lcom/caverock/androidsvg/SVG;->getElementsByTagName(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 514
    .local v2, "viewElems":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/SVG$SvgObject;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 515
    .local v3, "viewIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 523
    return-object v3

    .line 515
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgObject;

    .local v0, "elem":Lcom/caverock/androidsvg/SVG$SvgObject;
    move-object v1, v0

    .line 517
    check-cast v1, Lcom/caverock/androidsvg/SVG$View;

    .line 518
    .local v1, "view":Lcom/caverock/androidsvg/SVG$View;
    iget-object v5, v1, Lcom/caverock/androidsvg/SVG$View;->id:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 519
    iget-object v5, v1, Lcom/caverock/androidsvg/SVG$View;->id:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 521
    :cond_2
    const-string v5, "AndroidSVG"

    const-string v6, "getViewList(): found a <view> without an id attribute"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected hasCSSRules()Z
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->cssRules:Lcom/caverock/androidsvg/CSSParser$Ruleset;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/CSSParser$Ruleset;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public registerExternalFileResolver(Lcom/caverock/androidsvg/SVGExternalFileResolver;)V
    .locals 0
    .param p1, "fileResolver"    # Lcom/caverock/androidsvg/SVGExternalFileResolver;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG;->fileResolver:Lcom/caverock/androidsvg/SVGExternalFileResolver;

    .line 207
    return-void
.end method

.method public renderToCanvas(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 351
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/caverock/androidsvg/SVG;->renderToCanvas(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 352
    return-void
.end method

.method public renderToCanvas(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "viewPort"    # Landroid/graphics/RectF;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 365
    if-eqz p2, :cond_0

    .line 366
    iget v2, p2, Landroid/graphics/RectF;->left:F

    iget v3, p2, Landroid/graphics/RectF;->top:F

    iget v4, p2, Landroid/graphics/RectF;->right:F

    iget v5, p2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v2, v3, v4, v5}, Lcom/caverock/androidsvg/SVG$Box;->fromLimits(FFFF)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v1

    .line 371
    .local v1, "svgViewPort":Lcom/caverock/androidsvg/SVG$Box;
    :goto_0
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    iget v2, p0, Lcom/caverock/androidsvg/SVG;->renderDPI:F

    invoke-direct {v0, p1, v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;-><init>(Landroid/graphics/Canvas;Lcom/caverock/androidsvg/SVG$Box;F)V

    .line 373
    .local v0, "renderer":Lcom/caverock/androidsvg/SVGAndroidRenderer;
    const/4 v2, 0x1

    invoke-virtual {v0, p0, v6, v6, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderDocument(Lcom/caverock/androidsvg/SVG;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;Z)V

    .line 374
    return-void

    .line 368
    .end local v0    # "renderer":Lcom/caverock/androidsvg/SVGAndroidRenderer;
    .end local v1    # "svgViewPort":Lcom/caverock/androidsvg/SVG$Box;
    :cond_0
    new-instance v1, Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v1, v4, v4, v2, v3}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    .restart local v1    # "svgViewPort":Lcom/caverock/androidsvg/SVG$Box;
    goto :goto_0
.end method

.method public renderToPicture()Landroid/graphics/Picture;
    .locals 8

    .prologue
    const/16 v6, 0x200

    .line 250
    iget-object v5, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v4, v5, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 251
    .local v4, "width":Lcom/caverock/androidsvg/SVG$Length;
    if-eqz v4, :cond_2

    .line 253
    iget v5, p0, Lcom/caverock/androidsvg/SVG;->renderDPI:F

    invoke-virtual {v4, v5}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(F)F

    move-result v3

    .line 255
    .local v3, "w":F
    iget-object v5, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v2, v5, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 257
    .local v2, "rootViewBox":Lcom/caverock/androidsvg/SVG$Box;
    if-eqz v2, :cond_0

    .line 258
    iget v5, v2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    mul-float/2addr v5, v3

    iget v6, v2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    div-float v0, v5, v6

    .line 267
    .local v0, "h":F
    :goto_0
    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    invoke-virtual {p0, v5, v6}, Lcom/caverock/androidsvg/SVG;->renderToPicture(II)Landroid/graphics/Picture;

    move-result-object v5

    .line 271
    .end local v0    # "h":F
    .end local v2    # "rootViewBox":Lcom/caverock/androidsvg/SVG$Box;
    .end local v3    # "w":F
    :goto_1
    return-object v5

    .line 260
    .restart local v2    # "rootViewBox":Lcom/caverock/androidsvg/SVG$Box;
    .restart local v3    # "w":F
    :cond_0
    iget-object v5, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v1, v5, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 261
    .local v1, "height":Lcom/caverock/androidsvg/SVG$Length;
    if-eqz v1, :cond_1

    .line 262
    iget v5, p0, Lcom/caverock/androidsvg/SVG;->renderDPI:F

    invoke-virtual {v1, v5}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(F)F

    move-result v0

    .line 263
    .restart local v0    # "h":F
    goto :goto_0

    .line 264
    .end local v0    # "h":F
    :cond_1
    move v0, v3

    .restart local v0    # "h":F
    goto :goto_0

    .line 271
    .end local v0    # "h":F
    .end local v1    # "height":Lcom/caverock/androidsvg/SVG$Length;
    .end local v2    # "rootViewBox":Lcom/caverock/androidsvg/SVG$Box;
    .end local v3    # "w":F
    :cond_2
    invoke-virtual {p0, v6, v6}, Lcom/caverock/androidsvg/SVG;->renderToPicture(II)Landroid/graphics/Picture;

    move-result-object v5

    goto :goto_1
.end method

.method public renderToPicture(II)Landroid/graphics/Picture;
    .locals 8
    .param p1, "widthInPixels"    # I
    .param p2, "heightInPixels"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 285
    new-instance v1, Landroid/graphics/Picture;

    invoke-direct {v1}, Landroid/graphics/Picture;-><init>()V

    .line 286
    .local v1, "picture":Landroid/graphics/Picture;
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v0

    .line 287
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v3, Lcom/caverock/androidsvg/SVG$Box;

    int-to-float v4, p1

    int-to-float v5, p2

    invoke-direct {v3, v6, v6, v4, v5}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    .line 289
    .local v3, "viewPort":Lcom/caverock/androidsvg/SVG$Box;
    new-instance v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    iget v4, p0, Lcom/caverock/androidsvg/SVG;->renderDPI:F

    invoke-direct {v2, v0, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;-><init>(Landroid/graphics/Canvas;Lcom/caverock/androidsvg/SVG$Box;F)V

    .line 291
    .local v2, "renderer":Lcom/caverock/androidsvg/SVGAndroidRenderer;
    const/4 v4, 0x0

    invoke-virtual {v2, p0, v7, v7, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderDocument(Lcom/caverock/androidsvg/SVG;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;Z)V

    .line 293
    invoke-virtual {v1}, Landroid/graphics/Picture;->endRecording()V

    .line 294
    return-object v1
.end method

.method public renderViewToCanvas(Ljava/lang/String;Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "viewId"    # Ljava/lang/String;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 392
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/caverock/androidsvg/SVG;->renderViewToCanvas(Ljava/lang/String;Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 393
    return-void
.end method

.method public renderViewToCanvas(Ljava/lang/String;Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 8
    .param p1, "viewId"    # Ljava/lang/String;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "viewPort"    # Landroid/graphics/RectF;

    .prologue
    const/4 v6, 0x0

    .line 412
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVG;->getElementById(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    .line 413
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    if-nez v0, :cond_1

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    instance-of v4, v0, Lcom/caverock/androidsvg/SVG$View;

    if-eqz v4, :cond_0

    move-object v3, v0

    .line 418
    check-cast v3, Lcom/caverock/androidsvg/SVG$View;

    .line 420
    .local v3, "view":Lcom/caverock/androidsvg/SVG$View;
    iget-object v4, v3, Lcom/caverock/androidsvg/SVG$View;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v4, :cond_2

    .line 421
    const-string v4, "AndroidSVG"

    const-string v5, "View element is missing a viewBox attribute."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 427
    :cond_2
    if-eqz p3, :cond_3

    .line 428
    iget v4, p3, Landroid/graphics/RectF;->left:F

    iget v5, p3, Landroid/graphics/RectF;->top:F

    iget v6, p3, Landroid/graphics/RectF;->right:F

    iget v7, p3, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4, v5, v6, v7}, Lcom/caverock/androidsvg/SVG$Box;->fromLimits(FFFF)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v2

    .line 433
    .local v2, "svgViewPort":Lcom/caverock/androidsvg/SVG$Box;
    :goto_1
    new-instance v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    iget v4, p0, Lcom/caverock/androidsvg/SVG;->renderDPI:F

    invoke-direct {v1, p2, v2, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;-><init>(Landroid/graphics/Canvas;Lcom/caverock/androidsvg/SVG$Box;F)V

    .line 435
    .local v1, "renderer":Lcom/caverock/androidsvg/SVGAndroidRenderer;
    iget-object v4, v3, Lcom/caverock/androidsvg/SVG$View;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iget-object v5, v3, Lcom/caverock/androidsvg/SVG$View;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    const/4 v6, 0x1

    invoke-virtual {v1, p0, v4, v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderDocument(Lcom/caverock/androidsvg/SVG;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;Z)V

    goto :goto_0

    .line 430
    .end local v1    # "renderer":Lcom/caverock/androidsvg/SVGAndroidRenderer;
    .end local v2    # "svgViewPort":Lcom/caverock/androidsvg/SVG$Box;
    :cond_3
    new-instance v2, Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v2, v6, v6, v4, v5}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    .restart local v2    # "svgViewPort":Lcom/caverock/androidsvg/SVG$Box;
    goto :goto_1
.end method

.method public renderViewToPicture(Ljava/lang/String;II)Landroid/graphics/Picture;
    .locals 9
    .param p1, "viewId"    # Ljava/lang/String;
    .param p2, "widthInPixels"    # I
    .param p3, "heightInPixels"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 313
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVG;->getElementById(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v1

    .line 314
    .local v1, "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    if-nez v1, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-object v2

    .line 316
    :cond_1
    instance-of v6, v1, Lcom/caverock/androidsvg/SVG$View;

    if-eqz v6, :cond_0

    move-object v4, v1

    .line 319
    check-cast v4, Lcom/caverock/androidsvg/SVG$View;

    .line 321
    .local v4, "view":Lcom/caverock/androidsvg/SVG$View;
    iget-object v6, v4, Lcom/caverock/androidsvg/SVG$View;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v6, :cond_2

    .line 322
    const-string v6, "AndroidSVG"

    const-string v7, "View element is missing a viewBox attribute."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 326
    :cond_2
    new-instance v2, Landroid/graphics/Picture;

    invoke-direct {v2}, Landroid/graphics/Picture;-><init>()V

    .line 327
    .local v2, "picture":Landroid/graphics/Picture;
    invoke-virtual {v2, p2, p3}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v0

    .line 328
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Lcom/caverock/androidsvg/SVG$Box;

    int-to-float v6, p2

    int-to-float v7, p3

    invoke-direct {v5, v8, v8, v6, v7}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    .line 330
    .local v5, "viewPort":Lcom/caverock/androidsvg/SVG$Box;
    new-instance v3, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    iget v6, p0, Lcom/caverock/androidsvg/SVG;->renderDPI:F

    invoke-direct {v3, v0, v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;-><init>(Landroid/graphics/Canvas;Lcom/caverock/androidsvg/SVG$Box;F)V

    .line 332
    .local v3, "renderer":Lcom/caverock/androidsvg/SVGAndroidRenderer;
    iget-object v6, v4, Lcom/caverock/androidsvg/SVG$View;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iget-object v7, v4, Lcom/caverock/androidsvg/SVG$View;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    const/4 v8, 0x0

    invoke-virtual {v3, p0, v6, v7, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderDocument(Lcom/caverock/androidsvg/SVG;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;Z)V

    .line 334
    invoke-virtual {v2}, Landroid/graphics/Picture;->endRecording()V

    goto :goto_0
.end method

.method protected resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;
    .locals 3
    .param p1, "iri"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 782
    if-nez p1, :cond_1

    .line 789
    :cond_0
    :goto_0
    return-object v0

    .line 785
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 787
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVG;->getElementById(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    goto :goto_0
.end method

.method protected setDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 1872
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG;->desc:Ljava/lang/String;

    .line 1873
    return-void
.end method

.method public setDocumentHeight(F)V
    .locals 2
    .param p1, "pixels"    # F

    .prologue
    .line 615
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    if-nez v0, :cond_0

    .line 616
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SVG document is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    new-instance v1, Lcom/caverock/androidsvg/SVG$Length;

    invoke-direct {v1, p1}, Lcom/caverock/androidsvg/SVG$Length;-><init>(F)V

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 619
    return-void
.end method

.method public setDocumentHeight(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .prologue
    .line 632
    iget-object v1, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    if-nez v1, :cond_0

    .line 633
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "SVG document is empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 636
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    invoke-static {p1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, v1, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    return-void

    .line 637
    :catch_0
    move-exception v0

    .line 638
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setDocumentPreserveAspectRatio(Lcom/caverock/androidsvg/PreserveAspectRatio;)V
    .locals 2
    .param p1, "preserveAspectRatio"    # Lcom/caverock/androidsvg/PreserveAspectRatio;

    .prologue
    .line 699
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    if-nez v0, :cond_0

    .line 700
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SVG document is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iput-object p1, v0, Lcom/caverock/androidsvg/SVG$Svg;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 703
    return-void
.end method

.method public setDocumentViewBox(FFFF)V
    .locals 2
    .param p1, "minX"    # F
    .param p2, "minY"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    .line 663
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    if-nez v0, :cond_0

    .line 664
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SVG document is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    new-instance v1, Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 667
    return-void
.end method

.method public setDocumentWidth(F)V
    .locals 2
    .param p1, "pixels"    # F

    .prologue
    .line 557
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    if-nez v0, :cond_0

    .line 558
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SVG document is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    new-instance v1, Lcom/caverock/androidsvg/SVG$Length;

    invoke-direct {v1, p1}, Lcom/caverock/androidsvg/SVG$Length;-><init>(F)V

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 561
    return-void
.end method

.method public setDocumentWidth(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .prologue
    .line 574
    iget-object v1, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    if-nez v1, :cond_0

    .line 575
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "SVG document is empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 578
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    invoke-static {p1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, v1, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    return-void

    .line 579
    :catch_0
    move-exception v0

    .line 580
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setRenderDPI(F)V
    .locals 0
    .param p1, "dpi"    # F

    .prologue
    .line 221
    iput p1, p0, Lcom/caverock/androidsvg/SVG;->renderDPI:F

    .line 222
    return-void
.end method

.method protected setRootElement(Lcom/caverock/androidsvg/SVG$Svg;)V
    .locals 0
    .param p1, "rootElement"    # Lcom/caverock/androidsvg/SVG$Svg;

    .prologue
    .line 776
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    .line 777
    return-void
.end method

.method protected setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 1866
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG;->title:Ljava/lang/String;

    .line 1867
    return-void
.end method
