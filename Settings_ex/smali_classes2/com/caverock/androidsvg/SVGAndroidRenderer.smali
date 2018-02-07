.class public Lcom/caverock/androidsvg/SVGAndroidRenderer;
.super Ljava/lang/Object;
.source "SVGAndroidRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$caverock$androidsvg$PreserveAspectRatio$Alignment:[I = null

.field private static synthetic $SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$FillRule:[I = null

.field private static synthetic $SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$LineCaps:[I = null

.field private static synthetic $SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$LineJoin:[I = null

.field private static final BEZIER_ARC_FACTOR:F = 0.5522848f

.field private static final DEFAULT_FONT_FAMILY:Ljava/lang/String; = "sans-serif"

.field private static final LUMINANCE_FACTOR_SHIFT:I = 0xf

.field private static final LUMINANCE_TO_ALPHA_BLUE:I = 0x93a

.field private static final LUMINANCE_TO_ALPHA_GREEN:I = 0x5b92

.field private static final LUMINANCE_TO_ALPHA_RED:I = 0x1b33

.field private static final TAG:Ljava/lang/String; = "SVGAndroidRenderer"


# instance fields
.field private bitmapStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private canvas:Landroid/graphics/Canvas;

.field private canvasStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/graphics/Canvas;",
            ">;"
        }
    .end annotation
.end field

.field private canvasViewPort:Lcom/caverock/androidsvg/SVG$Box;

.field private directRenderingMode:Z

.field private document:Lcom/caverock/androidsvg/SVG;

.field private dpi:F

.field private matrixStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private parentStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/caverock/androidsvg/SVG$SvgContainer;",
            ">;"
        }
    .end annotation
.end field

.field private state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

.field private stateStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$com$caverock$androidsvg$PreserveAspectRatio$Alignment()[I
    .locals 3

    .prologue
    .line 85
    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$PreserveAspectRatio$Alignment:[I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->values()[Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->None:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_0
    :try_start_1
    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMaxYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_1
    :try_start_2
    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMaxYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_2
    :try_start_3
    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMaxYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_3
    :try_start_4
    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMidYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_4
    :try_start_5
    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMidYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_5
    :try_start_6
    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMidYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_6
    :try_start_7
    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMinYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_7
    :try_start_8
    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMinYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_8
    :try_start_9
    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMinYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_9
    sput-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$PreserveAspectRatio$Alignment:[I

    return-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_9

    :catch_1
    move-exception v1

    goto :goto_8

    :catch_2
    move-exception v1

    goto :goto_7

    :catch_3
    move-exception v1

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_2

    :catch_8
    move-exception v1

    goto :goto_1

    :catch_9
    move-exception v1

    goto :goto_0
.end method

.method static synthetic $SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$FillRule()[I
    .locals 3

    .prologue
    .line 85
    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$FillRule:[I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style$FillRule;->values()[Lcom/caverock/androidsvg/SVG$Style$FillRule;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$FillRule;->EvenOdd:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Style$FillRule;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$FillRule;->NonZero:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Style$FillRule;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$FillRule:[I

    return-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic $SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$LineCaps()[I
    .locals 3

    .prologue
    .line 85
    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$LineCaps:[I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->values()[Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->Butt:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->Round:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->Square:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$LineCaps:[I

    return-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static synthetic $SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$LineJoin()[I
    .locals 3

    .prologue
    .line 85
    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$LineJoin:[I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->values()[Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->Bevel:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->Miter:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->Round:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$LineJoin:[I

    return-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method protected constructor <init>(Landroid/graphics/Canvas;Lcom/caverock/androidsvg/SVG$Box;F)V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    .line 209
    iput p3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->dpi:F

    .line 210
    iput-object p2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvasViewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 211
    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 502
    invoke-static {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Z
    .locals 1

    .prologue
    .line 1877
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    return-object v0
.end method

.method static synthetic access$3(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Landroid/graphics/Canvas;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method static synthetic access$4(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 496
    invoke-static {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$5(FFFFFZZFFLcom/caverock/androidsvg/SVG$PathInterface;)V
    .locals 0

    .prologue
    .line 2461
    invoke-static/range {p0 .. p9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->arcTo(FFFFFZZFFLcom/caverock/androidsvg/SVG$PathInterface;)V

    return-void
.end method

.method static synthetic access$6(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 490
    invoke-static {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private addObjectToClip(Lcom/caverock/androidsvg/SVG$GraphicsElement;Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 2

    .prologue
    .line 3578
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 3580
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3582
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3585
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    if-nez v0, :cond_2

    .line 3589
    :goto_0
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Rect;

    if-nez v0, :cond_3

    .line 3591
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Circle;

    if-nez v0, :cond_4

    .line 3593
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Ellipse;

    if-nez v0, :cond_5

    .line 3595
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$PolyLine;

    if-nez v0, :cond_6

    .line 3598
    return-void

    .line 3581
    :cond_0
    return-void

    .line 3583
    :cond_1
    return-void

    .line 3586
    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 3590
    check-cast v0, Lcom/caverock/androidsvg/SVG$Rect;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Rect;)Landroid/graphics/Path;

    move-result-object v0

    .line 3600
    :goto_1
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 3602
    invoke-virtual {v0}, Landroid/graphics/Path;->getFillType()Landroid/graphics/Path$FillType;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 3603
    invoke-virtual {p2, v0, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 3604
    return-void

    :cond_4
    move-object v0, p1

    .line 3592
    check-cast v0, Lcom/caverock/androidsvg/SVG$Circle;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Circle;)Landroid/graphics/Path;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v0, p1

    .line 3594
    check-cast v0, Lcom/caverock/androidsvg/SVG$Ellipse;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Ellipse;)Landroid/graphics/Path;

    move-result-object v0

    goto :goto_1

    :cond_6
    move-object v0, p1

    .line 3596
    check-cast v0, Lcom/caverock/androidsvg/SVG$PolyLine;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$PolyLine;)Landroid/graphics/Path;

    move-result-object v0

    goto :goto_1
.end method

.method private addObjectToClip(Lcom/caverock/androidsvg/SVG$Path;Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 2

    .prologue
    .line 3553
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 3555
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3557
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3560
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    if-nez v0, :cond_2

    .line 3563
    :goto_0
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    invoke-direct {v0, p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVG$PathDefinition;)V

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->getPath()Landroid/graphics/Path;

    move-result-object v0

    .line 3565
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Path;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v1, :cond_3

    .line 3568
    :goto_1
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 3571
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getClipRuleFromState()Landroid/graphics/Path$FillType;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 3572
    invoke-virtual {p2, v0, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 3573
    return-void

    .line 3556
    :cond_0
    return-void

    .line 3558
    :cond_1
    return-void

    .line 3561
    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    goto :goto_0

    .line 3566
    :cond_3
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculatePathBounds(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Path;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    goto :goto_1
.end method

.method private addObjectToClip(Lcom/caverock/androidsvg/SVG$SvgObject;ZLandroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3487
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3491
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clipStatePush()V

    .line 3493
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Use;

    if-nez v0, :cond_1

    .line 3499
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Path;

    if-nez v0, :cond_3

    .line 3501
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Text;

    if-nez v0, :cond_4

    .line 3503
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;

    if-nez v0, :cond_5

    const-string/jumbo v0, "Invalid %s element found in clipPath definition"

    const/4 v1, 0x1

    .line 3506
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3510
    :goto_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clipStatePop()V

    .line 3511
    return-void

    .line 3488
    :cond_0
    return-void

    .line 3494
    :cond_1
    if-nez p2, :cond_2

    const-string/jumbo v0, "<use> elements inside a <clipPath> cannot reference another <use>"

    .line 3497
    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3495
    :cond_2
    check-cast p1, Lcom/caverock/androidsvg/SVG$Use;

    invoke-direct {p0, p1, p3, p4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/caverock/androidsvg/SVG$Use;Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 3500
    :cond_3
    check-cast p1, Lcom/caverock/androidsvg/SVG$Path;

    invoke-direct {p0, p1, p3, p4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/caverock/androidsvg/SVG$Path;Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 3502
    :cond_4
    check-cast p1, Lcom/caverock/androidsvg/SVG$Text;

    invoke-direct {p0, p1, p3, p4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/caverock/androidsvg/SVG$Text;Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 3504
    :cond_5
    check-cast p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;

    invoke-direct {p0, p1, p3, p4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/caverock/androidsvg/SVG$GraphicsElement;Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method private addObjectToClip(Lcom/caverock/androidsvg/SVG$Text;Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 3634
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 3636
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3639
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->transform:Landroid/graphics/Matrix;

    if-nez v0, :cond_5

    .line 3643
    :goto_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->x:Ljava/util/List;

    if-nez v0, :cond_6

    :cond_0
    move v1, v2

    .line 3644
    :goto_1
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->y:Ljava/util/List;

    if-nez v0, :cond_7

    :cond_1
    move v3, v2

    .line 3645
    :goto_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->dx:Ljava/util/List;

    if-nez v0, :cond_8

    :cond_2
    move v4, v2

    .line 3646
    :goto_3
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->dy:Ljava/util/List;

    if-nez v0, :cond_9

    .line 3649
    :cond_3
    :goto_4
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    sget-object v5, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-ne v0, v5, :cond_a

    .line 3658
    :goto_5
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v0, :cond_c

    .line 3663
    :goto_6
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 3665
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 3666
    new-instance v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;

    add-float/2addr v1, v4

    add-float/2addr v2, v3

    invoke-direct {v5, p0, v1, v2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFLandroid/graphics/Path;)V

    invoke-direct {p0, p1, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 3668
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getClipRuleFromState()Landroid/graphics/Path$FillType;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 3669
    invoke-virtual {p2, v0, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 3670
    return-void

    .line 3637
    :cond_4
    return-void

    .line 3640
    :cond_5
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->transform:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    goto :goto_0

    .line 3643
    :cond_6
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->x:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    move v1, v0

    goto :goto_1

    .line 3644
    :cond_7
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->y:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    move v3, v0

    goto :goto_2

    .line 3645
    :cond_8
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->dx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->dx:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    move v4, v0

    goto :goto_3

    .line 3646
    :cond_9
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->dy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->dy:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    goto/16 :goto_4

    .line 3650
    :cond_a
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateTextWidth(Lcom/caverock/androidsvg/SVG$TextContainer;)F

    move-result v0

    .line 3651
    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    sget-object v6, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-eq v5, v6, :cond_b

    .line 3654
    sub-float/2addr v1, v0

    goto/16 :goto_5

    :cond_b
    const/high16 v5, 0x40000000    # 2.0f

    .line 3652
    div-float/2addr v0, v5

    sub-float/2addr v1, v0

    goto/16 :goto_5

    .line 3659
    :cond_c
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;

    invoke-direct {v0, p0, v1, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FF)V

    .line 3660
    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 3661
    new-instance v5, Lcom/caverock/androidsvg/SVG$Box;

    iget-object v6, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget-object v8, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-direct {v5, v6, v7, v8, v0}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v5, p1, Lcom/caverock/androidsvg/SVG$Text;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    goto/16 :goto_6
.end method

.method private addObjectToClip(Lcom/caverock/androidsvg/SVG$Use;Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3609
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 3611
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3613
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3616
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Use;->transform:Landroid/graphics/Matrix;

    if-nez v0, :cond_2

    .line 3620
    :goto_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Use;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->href:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    .line 3621
    if-eqz v0, :cond_3

    .line 3626
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 3628
    invoke-direct {p0, v0, v3, p2, p3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/caverock/androidsvg/SVG$SvgObject;ZLandroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 3629
    return-void

    .line 3612
    :cond_0
    return-void

    .line 3614
    :cond_1
    return-void

    .line 3617
    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Use;->transform:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "Use reference \'%s\' not found"

    const/4 v1, 0x1

    .line 3622
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Use;->href:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3623
    return-void
.end method

.method private static arcTo(FFFFFZZFFLcom/caverock/androidsvg/SVG$PathInterface;)V
    .locals 28

    .prologue
    .line 2463
    cmpl-float v4, p0, p7

    if-nez v4, :cond_0

    cmpl-float v4, p1, p8

    if-nez v4, :cond_0

    .line 2467
    return-void

    :cond_0
    const/4 v4, 0x0

    .line 2471
    cmpl-float v4, p2, v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    cmpl-float v4, p3, v4

    if-nez v4, :cond_2

    .line 2472
    :cond_1
    move-object/from16 v0, p9

    move/from16 v1, p7

    move/from16 v2, p8

    invoke-interface {v0, v1, v2}, Lcom/caverock/androidsvg/SVG$PathInterface;->lineTo(FF)V

    .line 2473
    return-void

    .line 2477
    :cond_2
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 2478
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 2481
    move/from16 v0, p4

    float-to-double v4, v0

    const-wide v6, 0x4076800000000000L    # 360.0

    rem-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 2482
    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    .line 2483
    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    .line 2490
    sub-float v4, p0, p7

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    .line 2491
    sub-float v6, p1, p8

    float-to-double v6, v6

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v10

    .line 2494
    mul-double v10, v12, v4

    mul-double v16, v14, v6

    add-double v16, v16, v10

    .line 2495
    neg-double v10, v14

    mul-double/2addr v4, v10

    mul-double/2addr v6, v12

    add-double v18, v4, v6

    .line 2497
    mul-float v4, v9, v9

    float-to-double v6, v4

    .line 2498
    mul-float v4, v8, v8

    float-to-double v4, v4

    .line 2499
    mul-double v20, v16, v16

    .line 2500
    mul-double v22, v18, v18

    .line 2505
    div-double v10, v20, v6

    div-double v24, v22, v4

    add-double v10, v10, v24

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    .line 2506
    cmpl-double v24, v10, v24

    if-lez v24, :cond_6

    .line 2507
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v9, v4

    .line 2508
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v8, v4

    .line 2509
    mul-float v4, v9, v9

    float-to-double v6, v4

    .line 2510
    mul-float v4, v8, v8

    float-to-double v4, v4

    move v10, v8

    move v11, v9

    move-wide v8, v6

    move-wide v6, v4

    .line 2514
    :goto_0
    move/from16 v0, p5

    move/from16 v1, p6

    if-eq v0, v1, :cond_7

    const/4 v4, 0x1

    :goto_1
    int-to-double v0, v4

    move-wide/from16 v24, v0

    .line 2515
    mul-double v4, v8, v6

    mul-double v26, v8, v22

    sub-double v4, v4, v26

    mul-double v26, v6, v20

    sub-double v4, v4, v26

    mul-double v8, v8, v22

    mul-double v6, v6, v20

    add-double/2addr v6, v8

    div-double/2addr v4, v6

    const-wide/16 v6, 0x0

    .line 2516
    cmpg-double v6, v4, v6

    if-gez v6, :cond_3

    const-wide/16 v4, 0x0

    .line 2517
    :cond_3
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double v4, v4, v24

    .line 2518
    float-to-double v6, v11

    mul-double v6, v6, v18

    float-to-double v8, v10

    div-double/2addr v6, v8

    mul-double/2addr v6, v4

    .line 2519
    float-to-double v8, v10

    mul-double v8, v8, v16

    float-to-double v0, v11

    move-wide/from16 v20, v0

    div-double v8, v8, v20

    neg-double v8, v8

    mul-double/2addr v4, v8

    .line 2522
    add-float v8, p0, p7

    float-to-double v8, v8

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v8, v8, v20

    .line 2523
    add-float v20, p1, p8

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v20, v20, v22

    .line 2524
    mul-double v22, v12, v6

    mul-double v24, v14, v4

    sub-double v22, v22, v24

    add-double v8, v8, v22

    .line 2525
    mul-double/2addr v14, v6

    mul-double/2addr v12, v4

    add-double/2addr v12, v14

    add-double v12, v12, v20

    .line 2528
    sub-double v14, v16, v6

    float-to-double v0, v11

    move-wide/from16 v20, v0

    div-double v14, v14, v20

    .line 2529
    sub-double v20, v18, v4

    float-to-double v0, v10

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    .line 2530
    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v16, v0

    sub-double v6, v16, v6

    float-to-double v0, v11

    move-wide/from16 v16, v0

    div-double v6, v6, v16

    .line 2531
    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v16, v0

    sub-double v4, v16, v4

    float-to-double v0, v10

    move-wide/from16 v16, v0

    div-double v16, v4, v16

    .line 2535
    mul-double v4, v14, v14

    mul-double v18, v20, v20

    add-double v4, v4, v18

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    const-wide/16 v4, 0x0

    .line 2537
    cmpg-double v4, v20, v4

    if-gez v4, :cond_8

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 2538
    :goto_2
    div-double v18, v14, v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->acos(D)D

    move-result-wide v18

    mul-double v4, v4, v18

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v18

    .line 2541
    mul-double v4, v14, v14

    mul-double v22, v20, v20

    add-double v4, v4, v22

    mul-double v22, v6, v6

    mul-double v24, v16, v16

    add-double v22, v22, v24

    mul-double v4, v4, v22

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v22

    .line 2542
    mul-double v4, v14, v6

    mul-double v24, v20, v16

    add-double v24, v24, v4

    .line 2543
    mul-double v4, v14, v16

    mul-double v6, v6, v20

    sub-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_9

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 2544
    :goto_3
    div-double v6, v24, v22

    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    .line 2545
    if-eqz p6, :cond_a

    .line 2547
    :cond_4
    if-nez p6, :cond_b

    :cond_5
    :goto_4
    const-wide v6, 0x4076800000000000L    # 360.0

    .line 2550
    rem-double/2addr v4, v6

    const-wide v6, 0x4076800000000000L    # 360.0

    .line 2551
    rem-double v6, v18, v6

    .line 2557
    invoke-static {v6, v7, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->arcToBeziers(DD)[F

    move-result-object v14

    .line 2560
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 2561
    invoke-virtual {v4, v11, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 2562
    move/from16 v0, p4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 2563
    double-to-float v5, v8

    double-to-float v6, v12

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2564
    invoke-virtual {v4, v14}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2570
    array-length v4, v14

    add-int/lit8 v4, v4, -0x2

    aput p7, v14, v4

    .line 2571
    array-length v4, v14

    add-int/lit8 v4, v4, -0x1

    aput p8, v14, v4

    const/4 v4, 0x0

    move v11, v4

    .line 2574
    :goto_5
    array-length v4, v14

    if-ge v11, v4, :cond_c

    .line 2576
    aget v5, v14, v11

    add-int/lit8 v4, v11, 0x1

    aget v6, v14, v4

    add-int/lit8 v4, v11, 0x2

    aget v7, v14, v4

    add-int/lit8 v4, v11, 0x3

    aget v8, v14, v4

    add-int/lit8 v4, v11, 0x4

    aget v9, v14, v4

    add-int/lit8 v4, v11, 0x5

    aget v10, v14, v4

    move-object/from16 v4, p9

    invoke-interface/range {v4 .. v10}, Lcom/caverock/androidsvg/SVG$PathInterface;->cubicTo(FFFFFF)V

    .line 2574
    add-int/lit8 v4, v11, 0x6

    move v11, v4

    goto :goto_5

    :cond_6
    move v10, v8

    move v11, v9

    move-wide v8, v6

    move-wide v6, v4

    .line 2506
    goto/16 :goto_0

    :cond_7
    const/4 v4, -0x1

    .line 2514
    goto/16 :goto_1

    :cond_8
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 2537
    goto/16 :goto_2

    :cond_9
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 2543
    goto :goto_3

    :cond_a
    const-wide/16 v6, 0x0

    .line 2545
    cmpl-double v6, v4, v6

    if-lez v6, :cond_4

    const-wide v6, 0x4076800000000000L    # 360.0

    .line 2546
    sub-double/2addr v4, v6

    goto :goto_4

    :cond_b
    const-wide/16 v6, 0x0

    .line 2547
    cmpg-double v6, v4, v6

    if-gez v6, :cond_5

    const-wide v6, 0x4076800000000000L    # 360.0

    .line 2548
    add-double/2addr v4, v6

    goto :goto_4

    .line 2578
    :cond_c
    return-void
.end method

.method private static arcToBeziers(DD)[F
    .locals 20

    .prologue
    .line 2597
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x4056800000000000L    # 90.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v4, v2

    .line 2599
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 2600
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 2601
    int-to-double v8, v4

    div-double/2addr v2, v8

    double-to-float v5, v2

    .line 2604
    float-to-double v2, v5

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide v8, 0x3ff5555555555555L    # 1.3333333333333333

    mul-double/2addr v2, v8

    float-to-double v8, v5

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v10

    div-double v8, v2, v8

    .line 2606
    mul-int/lit8 v2, v4, 0x6

    new-array v10, v2, [F

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2609
    :goto_0
    if-ge v2, v4, :cond_0

    .line 2611
    int-to-float v11, v2

    mul-float/2addr v11, v5

    float-to-double v12, v11

    add-double/2addr v12, v6

    .line 2613
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    .line 2614
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    .line 2616
    add-int/lit8 v11, v3, 0x1

    mul-double v18, v8, v16

    sub-double v18, v14, v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    aput v18, v10, v3

    .line 2617
    add-int/lit8 v3, v11, 0x1

    mul-double/2addr v14, v8

    add-double v14, v14, v16

    double-to-float v14, v14

    aput v14, v10, v11

    .line 2619
    float-to-double v14, v5

    add-double/2addr v12, v14

    .line 2620
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    .line 2621
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    .line 2622
    add-int/lit8 v11, v3, 0x1

    mul-double v16, v8, v12

    add-double v16, v16, v14

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    aput v16, v10, v3

    .line 2623
    add-int/lit8 v3, v11, 0x1

    mul-double v16, v8, v14

    sub-double v16, v12, v16

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    aput v16, v10, v11

    .line 2625
    add-int/lit8 v11, v3, 0x1

    double-to-float v14, v14

    aput v14, v10, v3

    .line 2626
    add-int/lit8 v3, v11, 0x1

    double-to-float v12, v12

    aput v12, v10, v11

    .line 2609
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2628
    :cond_0
    return-object v10
.end method

.method private calculateMarkerPositions(Lcom/caverock/androidsvg/SVG$Line;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$Line;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1158
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Line;->x1:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v1, :cond_0

    move v2, v0

    .line 1159
    :goto_0
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Line;->y1:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v1, :cond_1

    move v3, v0

    .line 1160
    :goto_1
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Line;->x2:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v1, :cond_2

    move v6, v0

    .line 1161
    :goto_2
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Line;->y2:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v1, :cond_3

    :goto_3
    move v7, v0

    .line 1163
    new-instance v8, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1164
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    sub-float v4, v6, v2

    sub-float v5, v7, v3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFFF)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1165
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    sub-float v4, v6, v2

    sub-float v5, v7, v3

    move-object v1, p0

    move v2, v6

    move v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFFF)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1166
    return-object v8

    .line 1158
    :cond_0
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Line;->x1:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    goto :goto_0

    .line 1159
    :cond_1
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Line;->y1:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    goto :goto_1

    .line 1160
    :cond_2
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Line;->x2:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    move v6, v1

    goto :goto_2

    .line 1161
    :cond_3
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Line;->y2:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    goto :goto_3
.end method

.method private calculateMarkerPositions(Lcom/caverock/androidsvg/SVG$PolyLine;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$PolyLine;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v10, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 1215
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    array-length v7, v0

    .line 1217
    if-lt v7, v6, :cond_0

    .line 1220
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1221
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aget v2, v1, v9

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aget v3, v1, v10

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFFF)V

    move v2, v4

    move-object v1, v0

    .line 1224
    :goto_0
    if-ge v6, v7, :cond_1

    .line 1225
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aget v2, v0, v6

    .line 1226
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    add-int/lit8 v3, v6, 0x1

    aget v3, v0, v3

    .line 1227
    invoke-virtual {v1, v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->add(FF)V

    .line 1228
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1229
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    iget v4, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    sub-float v4, v2, v4

    iget v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    sub-float v5, v3, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFFF)V

    .line 1224
    add-int/lit8 v1, v6, 0x2

    move v6, v1

    move v4, v3

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1218
    return-object v0

    .line 1234
    :cond_1
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Polygon;

    if-nez v0, :cond_3

    .line 1248
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1250
    :cond_2
    :goto_1
    return-object v8

    .line 1235
    :cond_3
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aget v0, v0, v9

    cmpl-float v0, v2, v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aget v0, v0, v10

    cmpl-float v0, v4, v0

    if-eqz v0, :cond_2

    .line 1236
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aget v2, v0, v9

    .line 1237
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aget v3, v0, v10

    .line 1238
    invoke-virtual {v1, v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->add(FF)V

    .line 1239
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1242
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    iget v4, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    sub-float v4, v2, v4

    iget v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    sub-float v5, v3, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFFF)V

    .line 1243
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->add(Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V

    .line 1244
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1245
    invoke-interface {v8, v9, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private calculatePathBounds(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$Box;
    .locals 5

    .prologue
    .line 998
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 999
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 1000
    new-instance v1, Lcom/caverock/androidsvg/SVG$Box;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    return-object v1
.end method

.method private calculateTextWidth(Lcom/caverock/androidsvg/SVG$TextContainer;)F
    .locals 2

    .prologue
    .line 1610
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;)V

    .line 1611
    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 1612
    iget v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;->x:F

    return v0
.end method

.method private calculateViewBoxTransform(Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;
    .locals 9

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 1899
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 1901
    if-nez p3, :cond_1

    .line 1902
    :cond_0
    return-object v3

    .line 1901
    :cond_1
    invoke-virtual {p3}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getAlignment()Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1904
    iget v0, p1, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget v1, p2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    div-float/2addr v0, v1

    .line 1905
    iget v1, p1, Lcom/caverock/androidsvg/SVG$Box;->height:F

    iget v2, p2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    div-float v4, v1, v2

    .line 1906
    iget v1, p2, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    neg-float v1, v1

    .line 1907
    iget v2, p2, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    neg-float v2, v2

    .line 1910
    sget-object v5, Lcom/caverock/androidsvg/PreserveAspectRatio;->STRETCH:Lcom/caverock/androidsvg/PreserveAspectRatio;

    invoke-virtual {p3, v5}, Lcom/caverock/androidsvg/PreserveAspectRatio;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1920
    invoke-virtual {p3}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getScale()Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    move-result-object v5

    sget-object v6, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->Slice:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    if-eq v5, v6, :cond_3

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1922
    :goto_0
    iget v4, p1, Lcom/caverock/androidsvg/SVG$Box;->width:F

    div-float/2addr v4, v0

    .line 1923
    iget v5, p1, Lcom/caverock/androidsvg/SVG$Box;->height:F

    div-float/2addr v5, v0

    .line 1925
    invoke-static {}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$PreserveAspectRatio$Alignment()[I

    move-result-object v6

    invoke-virtual {p3}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getAlignment()Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v7

    invoke-virtual {v7}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 1939
    :goto_1
    :pswitch_0
    invoke-static {}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$PreserveAspectRatio$Alignment()[I

    move-result-object v4

    .line 1942
    invoke-virtual {p3}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getAlignment()Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_1

    .line 1959
    :goto_2
    iget v4, p1, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget v5, p1, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1960
    invoke-virtual {v3, v0, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1961
    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1962
    return-object v3

    .line 1912
    :cond_2
    iget v5, p1, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget v6, p1, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1913
    invoke-virtual {v3, v0, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1914
    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1915
    return-object v3

    .line 1920
    :cond_3
    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0

    .line 1930
    :pswitch_1
    iget v6, p2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    sub-float v4, v6, v4

    div-float/2addr v4, v8

    sub-float/2addr v1, v4

    goto :goto_1

    .line 1935
    :pswitch_2
    iget v6, p2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    sub-float v4, v6, v4

    sub-float/2addr v1, v4

    goto :goto_1

    .line 1947
    :pswitch_3
    iget v4, p2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    sub-float/2addr v2, v4

    goto :goto_2

    .line 1952
    :pswitch_4
    iget v4, p2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    sub-float/2addr v4, v5

    sub-float/2addr v2, v4

    goto :goto_2

    .line 1925
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1942
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V
    .locals 1

    .prologue
    .line 3423
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)V

    .line 3424
    return-void
.end method

.method private checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3429
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 3433
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    .line 3434
    if-eqz v0, :cond_3

    .line 3439
    check-cast v0, Lcom/caverock/androidsvg/SVG$ClipPath;

    .line 3442
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$ClipPath;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3447
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$ClipPath;->clipPathUnitsAreUser:Ljava/lang/Boolean;

    if-nez v1, :cond_5

    :cond_0
    move v1, v3

    .line 3449
    :goto_0
    instance-of v4, p1, Lcom/caverock/androidsvg/SVG$Group;

    if-nez v4, :cond_6

    .line 3454
    :cond_1
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clipStatePush()V

    .line 3456
    if-eqz v1, :cond_7

    .line 3463
    :goto_1
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$ClipPath;->transform:Landroid/graphics/Matrix;

    if-nez v1, :cond_8

    .line 3470
    :goto_2
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v1

    iput-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 3472
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 3474
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 3475
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$ClipPath;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 3477
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    invoke-direct {p0, v0, v3, v1, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/caverock/androidsvg/SVG$SvgObject;ZLandroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_3

    .line 3430
    :cond_2
    return-void

    :cond_3
    const-string/jumbo v0, "ClipPath reference \'%s\' not found"

    .line 3435
    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3436
    return-void

    .line 3443
    :cond_4
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 3444
    return-void

    .line 3447
    :cond_5
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$ClipPath;->clipPathUnitsAreUser:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    .line 3449
    :cond_6
    if-nez v1, :cond_1

    const-string/jumbo v0, "<clipPath clipPathUnits=\"objectBoundingBox\"> is not supported when referenced from container elements (like %s)"

    .line 3450
    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3451
    return-void

    .line 3458
    :cond_7
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 3459
    iget v2, p2, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget v4, p2, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 3460
    iget v2, p2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget v4, p2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 3461
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_1

    .line 3465
    :cond_8
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$ClipPath;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_2

    .line 3479
    :cond_9
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 3481
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clipStatePop()V

    .line 3482
    return-void
.end method

.method private checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3039
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$PaintReference;

    if-nez v0, :cond_0

    .line 3042
    :goto_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$PaintReference;

    if-nez v0, :cond_1

    .line 3045
    :goto_1
    return-void

    .line 3040
    :cond_0
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    check-cast v0, Lcom/caverock/androidsvg/SVG$PaintReference;

    const/4 v2, 0x1

    invoke-direct {p0, v2, v1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->decodePaintReference(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$PaintReference;)V

    goto :goto_0

    .line 3043
    :cond_1
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    check-cast v0, Lcom/caverock/androidsvg/SVG$PaintReference;

    invoke-direct {p0, v3, v1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->decodePaintReference(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$PaintReference;)V

    goto :goto_1
.end method

.method private checkForImageDataURL(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string/jumbo v0, "data:"

    .line 1854
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1856
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    const/16 v0, 0x2c

    .line 1859
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    .line 1860
    if-ne v0, v1, :cond_3

    .line 1861
    :cond_0
    return-object v4

    .line 1855
    :cond_1
    return-object v4

    .line 1857
    :cond_2
    return-object v4

    :cond_3
    const/16 v1, 0xc

    .line 1860
    if-lt v0, v1, :cond_0

    const-string/jumbo v1, ";base64"

    .line 1862
    add-int/lit8 v2, v0, -0x7

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1864
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 1865
    array-length v1, v0

    invoke-static {v0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 1863
    :cond_4
    return-object v4
.end method

.method private checkGenericFont(Ljava/lang/String;Ljava/lang/Integer;Lcom/caverock/androidsvg/SVG$Style$FontStyle;)Landroid/graphics/Typeface;
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 2301
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Italic:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    if-eq p3, v0, :cond_0

    move v0, v1

    .line 2302
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x1f4

    if-gt v4, v5, :cond_1

    .line 2303
    if-nez v0, :cond_3

    :goto_1
    const-string/jumbo v0, "serif"

    .line 2305
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "sans-serif"

    .line 2307
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "monospace"

    .line 2309
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "cursive"

    .line 2311
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "fantasy"

    .line 2313
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    move-object v0, v3

    .line 2316
    :goto_2
    return-object v0

    :cond_0
    move v0, v2

    .line 2301
    goto :goto_0

    .line 2302
    :cond_1
    if-nez v0, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    goto :goto_1

    :cond_3
    const/4 v1, 0x2

    .line 2303
    goto :goto_1

    .line 2306
    :cond_4
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2

    .line 2308
    :cond_5
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2

    .line 2310
    :cond_6
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2

    .line 2312
    :cond_7
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2

    .line 2314
    :cond_8
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2
.end method

.method private checkXMLSpaceAttribute(Lcom/caverock/androidsvg/SVG$SvgObject;)V
    .locals 2

    .prologue
    .line 413
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    if-eqz v0, :cond_0

    .line 416
    check-cast p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 417
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->spacePreserve:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 419
    :goto_0
    return-void

    .line 414
    :cond_0
    return-void

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->spacePreserve:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->spacePreserve:Z

    goto :goto_0
.end method

.method private clamp255(F)I
    .locals 3

    .prologue
    const/16 v1, 0xff

    const/4 v2, 0x0

    const/high16 v0, 0x43800000    # 256.0f

    .line 2322
    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 2323
    if-ltz v0, :cond_0

    if-gt v0, v1, :cond_1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private clipStatePop()V
    .locals 1

    .prologue
    .line 3530
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 3532
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 3533
    return-void
.end method

.method private clipStatePush()V
    .locals 2

    .prologue
    .line 3520
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 3522
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3523
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 3524
    return-void
.end method

.method private static varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 506
    return-void
.end method

.method private decodePaintReference(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$PaintReference;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3053
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p3, Lcom/caverock/androidsvg/SVG$PaintReference;->href:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v1

    .line 3054
    if-eqz v1, :cond_0

    .line 3067
    instance-of v0, v1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    if-nez v0, :cond_4

    .line 3069
    :goto_0
    instance-of v0, v1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    if-nez v0, :cond_5

    .line 3071
    :goto_1
    instance-of v0, v1, Lcom/caverock/androidsvg/SVG$SolidColor;

    if-nez v0, :cond_6

    .line 3074
    :goto_2
    return-void

    :cond_0
    const-string/jumbo v1, "%s reference \'%s\' not found"

    const/4 v0, 0x2

    .line 3056
    new-array v2, v0, [Ljava/lang/Object;

    if-nez p1, :cond_1

    const-string/jumbo v0, "Stroke"

    :goto_3
    aput-object v0, v2, v4

    const/4 v0, 0x1

    iget-object v3, p3, Lcom/caverock/androidsvg/SVG$PaintReference;->href:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3057
    iget-object v0, p3, Lcom/caverock/androidsvg/SVG$PaintReference;->fallback:Lcom/caverock/androidsvg/SVG$SvgPaint;

    if-nez v0, :cond_2

    .line 3060
    if-nez p1, :cond_3

    .line 3063
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-boolean v4, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    .line 3065
    :goto_4
    return-void

    :cond_1
    const-string/jumbo v0, "Fill"

    goto :goto_3

    .line 3058
    :cond_2
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, p3, Lcom/caverock/androidsvg/SVG$PaintReference;->fallback:Lcom/caverock/androidsvg/SVG$SvgPaint;

    invoke-direct {p0, v0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V

    goto :goto_4

    .line 3061
    :cond_3
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-boolean v4, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    goto :goto_4

    :cond_4
    move-object v0, v1

    .line 3068
    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    invoke-direct {p0, p1, p2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makeLinearGradiant(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$SvgLinearGradient;)V

    goto :goto_0

    :cond_5
    move-object v0, v1

    .line 3070
    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    invoke-direct {p0, p1, p2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makeRadialGradiant(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$SvgRadialGradient;)V

    goto :goto_1

    .line 3072
    :cond_6
    check-cast v1, Lcom/caverock/androidsvg/SVG$SolidColor;

    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setSolidColor(ZLcom/caverock/androidsvg/SVG$SolidColor;)V

    goto :goto_2
.end method

.method private display()Z
    .locals 1

    .prologue
    .line 1871
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 1873
    const/4 v0, 0x1

    return v0

    .line 1872
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$PaintReference;

    if-nez v0, :cond_1

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 440
    return-void

    .line 430
    :cond_1
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    check-cast v0, Lcom/caverock/androidsvg/SVG$PaintReference;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$PaintReference;->href:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    .line 431
    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$Pattern;

    if-eqz v1, :cond_0

    .line 432
    check-cast v0, Lcom/caverock/androidsvg/SVG$Pattern;

    .line 433
    invoke-direct {p0, p1, p2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillWithPattern(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;Lcom/caverock/androidsvg/SVG$Pattern;)V

    .line 434
    return-void
.end method

.method private doStroke(Landroid/graphics/Path;)V
    .locals 6

    .prologue
    .line 448
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->vectorEffect:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->NonScalingStroke:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    if-eq v0, v1, :cond_1

    .line 482
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 456
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 457
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 459
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 462
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    .line 463
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 464
    if-nez v2, :cond_2

    .line 472
    :goto_1
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v1, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 475
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 477
    if-eqz v2, :cond_0

    .line 478
    invoke-virtual {v2, v3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 465
    :cond_2
    invoke-virtual {v2, v3}, Landroid/graphics/Shader;->getLocalMatrix(Landroid/graphics/Matrix;)Z

    .line 466
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 467
    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 468
    invoke-virtual {v2, v4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    goto :goto_1
.end method

.method private duplicateCanvas()V
    .locals 3

    .prologue
    .line 738
    :try_start_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 739
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->bitmapStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 741
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 742
    iput-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 747
    return-void

    .line 743
    :catch_0
    move-exception v0

    const-string/jumbo v1, "Not enough memory to create temporary bitmaps for mask processing"

    const/4 v2, 0x0

    .line 744
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 745
    throw v0
.end method

.method private enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1409
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1412
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextContainer;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v1

    .line 1415
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1417
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 1419
    instance-of v5, v0, Lcom/caverock/androidsvg/SVG$TextSequence;

    if-nez v5, :cond_1

    .line 1422
    invoke-direct {p0, v0, p2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->processTextChild(Lcom/caverock/androidsvg/SVG$SvgObject;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    :goto_1
    move v3, v2

    .line 1424
    goto :goto_0

    .line 1410
    :cond_0
    return-void

    .line 1420
    :cond_1
    check-cast v0, Lcom/caverock/androidsvg/SVG$TextSequence;

    iget-object v5, v0, Lcom/caverock/androidsvg/SVG$TextSequence;->text:Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-direct {p0, v5, v3, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->textXMLSpaceTransform(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;->processText(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    .line 1426
    :cond_3
    return-void
.end method

.method private static varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    const-string/jumbo v0, "SVGAndroidRenderer"

    .line 498
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    return-void
.end method

.method private extractRawText(Lcom/caverock/androidsvg/SVG$TextContainer;Ljava/lang/StringBuilder;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1696
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextContainer;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v1

    .line 1699
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1701
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 1703
    instance-of v5, v0, Lcom/caverock/androidsvg/SVG$TextContainer;

    if-nez v5, :cond_0

    .line 1705
    instance-of v5, v0, Lcom/caverock/androidsvg/SVG$TextSequence;

    if-nez v5, :cond_1

    :goto_1
    move v3, v2

    .line 1708
    goto :goto_0

    .line 1704
    :cond_0
    check-cast v0, Lcom/caverock/androidsvg/SVG$TextContainer;

    invoke-direct {p0, v0, p2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->extractRawText(Lcom/caverock/androidsvg/SVG$TextContainer;Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 1706
    :cond_1
    check-cast v0, Lcom/caverock/androidsvg/SVG$TextSequence;

    iget-object v5, v0, Lcom/caverock/androidsvg/SVG$TextSequence;->text:Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-direct {p0, v5, v3, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->textXMLSpaceTransform(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    .line 1710
    :cond_3
    return-void
.end method

.method private fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$GradientElement;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3302
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v1, p2}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v2

    .line 3303
    if-eqz v2, :cond_0

    .line 3308
    instance-of v1, v2, Lcom/caverock/androidsvg/SVG$GradientElement;

    if-eqz v1, :cond_1

    .line 3312
    if-eq v2, p1, :cond_2

    move-object v1, v2

    .line 3317
    check-cast v1, Lcom/caverock/androidsvg/SVG$GradientElement;

    .line 3319
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    if-eqz v3, :cond_3

    .line 3321
    :goto_0
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientTransform:Landroid/graphics/Matrix;

    if-eqz v3, :cond_4

    .line 3323
    :goto_1
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    if-eqz v3, :cond_5

    .line 3325
    :goto_2
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 3330
    :goto_3
    :try_start_0
    instance-of v3, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    if-nez v3, :cond_7

    .line 3333
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    move-object v3, v0

    check-cast v2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    invoke-direct {p0, v3, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$SvgRadialGradient;Lcom/caverock/androidsvg/SVG$SvgRadialGradient;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3338
    :goto_4
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$GradientElement;->href:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 3340
    :goto_5
    return-void

    :cond_0
    const-string/jumbo v1, "Gradient reference \'%s\' not found"

    .line 3305
    new-array v2, v4, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3306
    return-void

    :cond_1
    const-string/jumbo v1, "Gradient href attributes must point to other gradient elements"

    .line 3309
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3310
    return-void

    :cond_2
    const-string/jumbo v1, "Circular reference in gradient href attribute \'%s\'"

    .line 3313
    new-array v2, v4, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3314
    return-void

    .line 3320
    :cond_3
    iget-object v3, v1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    iput-object v3, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_0

    .line 3322
    :cond_4
    iget-object v3, v1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientTransform:Landroid/graphics/Matrix;

    iput-object v3, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientTransform:Landroid/graphics/Matrix;

    goto :goto_1

    .line 3324
    :cond_5
    iget-object v3, v1, Lcom/caverock/androidsvg/SVG$GradientElement;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    iput-object v3, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    goto :goto_2

    .line 3326
    :cond_6
    iget-object v3, v1, Lcom/caverock/androidsvg/SVG$GradientElement;->children:Ljava/util/List;

    iput-object v3, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->children:Ljava/util/List;

    goto :goto_3

    .line 3331
    :cond_7
    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    move-object v3, v0

    check-cast v2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    invoke-direct {p0, v3, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$SvgLinearGradient;Lcom/caverock/androidsvg/SVG$SvgLinearGradient;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 3335
    :catch_0
    move-exception v2

    goto :goto_4

    .line 3339
    :cond_8
    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$GradientElement;->href:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$GradientElement;Ljava/lang/String;)V

    goto :goto_5
.end method

.method private fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$SvgLinearGradient;Lcom/caverock/androidsvg/SVG$SvgLinearGradient;)V
    .locals 1

    .prologue
    .line 3345
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_0

    .line 3347
    :goto_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_1

    .line 3349
    :goto_1
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_2

    .line 3351
    :goto_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_3

    .line 3353
    :goto_3
    return-void

    .line 3346
    :cond_0
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_0

    .line 3348
    :cond_1
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 3350
    :cond_2
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_2

    .line 3352
    :cond_3
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_3
.end method

.method private fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$SvgRadialGradient;Lcom/caverock/androidsvg/SVG$SvgRadialGradient;)V
    .locals 1

    .prologue
    .line 3358
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_0

    .line 3360
    :goto_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_1

    .line 3362
    :goto_1
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_2

    .line 3364
    :goto_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fx:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_3

    .line 3366
    :goto_3
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fy:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_4

    .line 3368
    :goto_4
    return-void

    .line 3359
    :cond_0
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_0

    .line 3361
    :cond_1
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 3363
    :cond_2
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_2

    .line 3365
    :cond_3
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fx:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fx:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_3

    .line 3367
    :cond_4
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fy:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fy:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_4
.end method

.method private fillInChainedPatternFields(Lcom/caverock/androidsvg/SVG$Pattern;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4018
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Pattern;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v0, p2}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    .line 4019
    if-eqz v0, :cond_0

    .line 4024
    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$Pattern;

    if-eqz v1, :cond_1

    .line 4028
    if-eq v0, p1, :cond_2

    .line 4033
    check-cast v0, Lcom/caverock/androidsvg/SVG$Pattern;

    .line 4035
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 4037
    :goto_0
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 4039
    :goto_1
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    if-eqz v1, :cond_5

    .line 4041
    :goto_2
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v1, :cond_6

    .line 4043
    :goto_3
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v1, :cond_7

    .line 4045
    :goto_4
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v1, :cond_8

    .line 4047
    :goto_5
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v1, :cond_9

    .line 4050
    :goto_6
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Pattern;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 4052
    :goto_7
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Pattern;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v1, :cond_b

    .line 4054
    :goto_8
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Pattern;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-eqz v1, :cond_c

    .line 4058
    :goto_9
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Pattern;->href:Ljava/lang/String;

    if-nez v1, :cond_d

    .line 4060
    :goto_a
    return-void

    :cond_0
    const-string/jumbo v0, "Pattern reference \'%s\' not found"

    .line 4021
    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4022
    return-void

    :cond_1
    const-string/jumbo v0, "Pattern href attributes must point to other pattern elements"

    .line 4025
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4026
    return-void

    :cond_2
    const-string/jumbo v0, "Circular reference in pattern href attribute \'%s\'"

    .line 4029
    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4030
    return-void

    .line 4036
    :cond_3
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_0

    .line 4038
    :cond_4
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    .line 4040
    :cond_5
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    goto :goto_2

    .line 4042
    :cond_6
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_3

    .line 4044
    :cond_7
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_4

    .line 4046
    :cond_8
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_5

    .line 4048
    :cond_9
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_6

    .line 4051
    :cond_a
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Pattern;->children:Ljava/util/List;

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Pattern;->children:Ljava/util/List;

    goto :goto_7

    .line 4053
    :cond_b
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Pattern;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Pattern;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    goto :goto_8

    .line 4055
    :cond_c
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Pattern;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Pattern;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    goto :goto_9

    .line 4059
    :cond_d
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->href:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedPatternFields(Lcom/caverock/androidsvg/SVG$Pattern;Ljava/lang/String;)V

    goto :goto_a
.end method

.method private fillWithPattern(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;Lcom/caverock/androidsvg/SVG$Pattern;)V
    .locals 15

    .prologue
    .line 3888
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    if-nez v2, :cond_2

    :cond_0
    const/4 v2, 0x0

    .line 3892
    :goto_0
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$Pattern;->href:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 3895
    :goto_1
    if-nez v2, :cond_4

    .line 3905
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v2, :cond_9

    const/4 v2, 0x0

    .line 3906
    :goto_2
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v3, :cond_a

    const/4 v3, 0x0

    .line 3907
    :goto_3
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v4, :cond_b

    const/4 v4, 0x0

    .line 3908
    :goto_4
    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v5, :cond_c

    const/4 v5, 0x0

    .line 3909
    :goto_5
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v6, v6, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v7, v7, Lcom/caverock/androidsvg/SVG$Box;->width:F

    mul-float/2addr v2, v7

    add-float/2addr v2, v6

    .line 3910
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v6, v6, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v7, v7, Lcom/caverock/androidsvg/SVG$Box;->height:F

    mul-float/2addr v3, v7

    add-float/2addr v3, v6

    .line 3911
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v6, v6, Lcom/caverock/androidsvg/SVG$Box;->width:F

    mul-float/2addr v4, v6

    .line 3912
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v6, v6, Lcom/caverock/androidsvg/SVG$Box;->height:F

    mul-float/2addr v5, v6

    move v7, v5

    move v8, v4

    move v4, v3

    move v5, v2

    :goto_6
    const/4 v2, 0x0

    .line 3914
    cmpl-float v2, v8, v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    cmpl-float v2, v7, v2

    if-nez v2, :cond_d

    .line 3915
    :cond_1
    return-void

    .line 3888
    :cond_2
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 3893
    :cond_3
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$Pattern;->href:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedPatternFields(Lcom/caverock/androidsvg/SVG$Pattern;Ljava/lang/String;)V

    goto :goto_1

    .line 3897
    :cond_4
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v2, :cond_5

    const/4 v2, 0x0

    .line 3898
    :goto_7
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v3, :cond_6

    const/4 v3, 0x0

    .line 3899
    :goto_8
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v4, :cond_7

    const/4 v4, 0x0

    .line 3900
    :goto_9
    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v5, :cond_8

    const/4 v5, 0x0

    :goto_a
    move v7, v5

    move v8, v4

    move v4, v3

    move v5, v2

    .line 3901
    goto :goto_6

    .line 3897
    :cond_5
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    goto :goto_7

    .line 3898
    :cond_6
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v3, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    goto :goto_8

    .line 3899
    :cond_7
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    goto :goto_9

    .line 3900
    :cond_8
    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v5, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v5

    goto :goto_a

    .line 3905
    :cond_9
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, p0, v3}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v2

    goto/16 :goto_2

    .line 3906
    :cond_a
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, p0, v4}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v3

    goto/16 :goto_3

    .line 3907
    :cond_b
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, p0, v5}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v4

    goto/16 :goto_4

    .line 3908
    :cond_c
    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, p0, v6}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v5

    goto/16 :goto_5

    .line 3918
    :cond_d
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Pattern;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-nez v2, :cond_f

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/caverock/androidsvg/PreserveAspectRatio;

    move-object v3, v2

    .line 3921
    :goto_b
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 3923
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 3926
    new-instance v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {v2, p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;)V

    .line 3927
    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style;->getDefaultStyle()Lcom/caverock/androidsvg/SVG$Style;

    move-result-object v6

    invoke-direct {p0, v2, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    .line 3928
    iget-object v6, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, v6, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    .line 3929
    move-object/from16 v0, p3

    invoke-direct {p0, v0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v2

    iput-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 3932
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 3934
    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    if-nez v6, :cond_10

    .line 3959
    :cond_e
    :goto_c
    iget v6, v2, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    sub-float/2addr v6, v5

    div-float/2addr v6, v8

    float-to-double v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-float v6, v10

    mul-float/2addr v6, v8

    add-float/2addr v6, v5

    .line 3960
    iget v5, v2, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    sub-float/2addr v5, v4

    div-float/2addr v5, v7

    float-to-double v10, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-float v5, v10

    mul-float/2addr v5, v7

    add-float/2addr v4, v5

    .line 3962
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v9

    .line 3963
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v10

    .line 3964
    new-instance v11, Lcom/caverock/androidsvg/SVG$Box;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-direct {v11, v2, v5, v8, v7}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    .line 3965
    :goto_d
    cmpg-float v2, v4, v10

    if-gez v2, :cond_20

    const/4 v2, 0x1

    :goto_e
    if-nez v2, :cond_16

    .line 4007
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 4008
    return-void

    .line 3918
    :cond_f
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Pattern;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    move-object v3, v2

    goto :goto_b

    .line 3936
    :cond_10
    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    invoke-virtual {v6, v9}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 3940
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 3941
    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    invoke-virtual {v9, v6}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v9

    if-eqz v9, :cond_e

    const/16 v2, 0x8

    .line 3942
    new-array v9, v2, [F

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v10, v10, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    aput v10, v9, v2

    const/4 v2, 0x1

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v10, v10, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    aput v10, v9, v2

    const/4 v2, 0x2

    .line 3943
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v10

    aput v10, v9, v2

    const/4 v2, 0x3

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v10, v10, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    aput v10, v9, v2

    const/4 v2, 0x4

    .line 3944
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v10

    aput v10, v9, v2

    const/4 v2, 0x5

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v10

    aput v10, v9, v2

    const/4 v2, 0x6

    .line 3945
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v10, v10, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    aput v10, v9, v2

    const/4 v2, 0x7

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v10

    aput v10, v9, v2

    .line 3946
    invoke-virtual {v6, v9}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 3948
    new-instance v6, Landroid/graphics/RectF;

    const/4 v2, 0x0

    aget v2, v9, v2

    const/4 v10, 0x1

    aget v10, v9, v10

    const/4 v11, 0x0

    aget v11, v9, v11

    const/4 v12, 0x1

    aget v12, v9, v12

    invoke-direct {v6, v2, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v2, 0x2

    :goto_f
    const/4 v10, 0x6

    .line 3949
    if-gt v2, v10, :cond_15

    .line 3950
    aget v10, v9, v2

    iget v11, v6, Landroid/graphics/RectF;->left:F

    cmpg-float v10, v10, v11

    if-gez v10, :cond_11

    aget v10, v9, v2

    iput v10, v6, Landroid/graphics/RectF;->left:F

    .line 3951
    :cond_11
    aget v10, v9, v2

    iget v11, v6, Landroid/graphics/RectF;->right:F

    cmpl-float v10, v10, v11

    if-lez v10, :cond_12

    aget v10, v9, v2

    iput v10, v6, Landroid/graphics/RectF;->right:F

    .line 3952
    :cond_12
    add-int/lit8 v10, v2, 0x1

    aget v10, v9, v10

    iget v11, v6, Landroid/graphics/RectF;->top:F

    cmpg-float v10, v10, v11

    if-gez v10, :cond_13

    add-int/lit8 v10, v2, 0x1

    aget v10, v9, v10

    iput v10, v6, Landroid/graphics/RectF;->top:F

    .line 3953
    :cond_13
    add-int/lit8 v10, v2, 0x1

    aget v10, v9, v10

    iget v11, v6, Landroid/graphics/RectF;->bottom:F

    cmpl-float v10, v10, v11

    if-lez v10, :cond_14

    add-int/lit8 v10, v2, 0x1

    aget v10, v9, v10

    iput v10, v6, Landroid/graphics/RectF;->bottom:F

    .line 3949
    :cond_14
    add-int/lit8 v2, v2, 0x2

    goto :goto_f

    .line 3955
    :cond_15
    new-instance v2, Lcom/caverock/androidsvg/SVG$Box;

    iget v9, v6, Landroid/graphics/RectF;->left:F

    iget v10, v6, Landroid/graphics/RectF;->top:F

    iget v11, v6, Landroid/graphics/RectF;->right:F

    iget v12, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v11, v12

    iget v12, v6, Landroid/graphics/RectF;->bottom:F

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sub-float v6, v12, v6

    invoke-direct {v2, v9, v10, v11, v6}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    goto/16 :goto_c

    :cond_16
    move v5, v6

    .line 3967
    :goto_10
    cmpg-float v2, v5, v9

    if-gez v2, :cond_1f

    const/4 v2, 0x1

    :goto_11
    if-nez v2, :cond_17

    .line 3965
    add-float v2, v4, v7

    move v4, v2

    goto/16 :goto_d

    .line 3969
    :cond_17
    iput v5, v11, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    .line 3970
    iput v4, v11, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    .line 3972
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 3974
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 3978
    :goto_12
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Pattern;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v2, :cond_1a

    .line 3984
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    if-nez v2, :cond_1b

    :cond_18
    const/4 v2, 0x1

    .line 3986
    :goto_13
    iget-object v12, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v12, v5, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3987
    if-eqz v2, :cond_1c

    .line 3992
    :goto_14
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v12

    .line 3995
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Pattern;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_15
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 3996
    invoke-direct {p0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    goto :goto_15

    .line 3975
    :cond_19
    iget v2, v11, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget v12, v11, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    iget v13, v11, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget v14, v11, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-direct {p0, v2, v12, v13, v14}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    goto :goto_12

    .line 3980
    :cond_1a
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/caverock/androidsvg/SVG$Pattern;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {p0, v11, v12, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateViewBoxTransform(Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_14

    .line 3984
    :cond_1b
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_18

    const/4 v2, 0x0

    goto :goto_13

    .line 3988
    :cond_1c
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v12, v12, Lcom/caverock/androidsvg/SVG$Box;->width:F

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v13, v13, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-virtual {v2, v12, v13}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_14

    .line 3999
    :cond_1d
    if-nez v12, :cond_1e

    .line 4003
    :goto_16
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 3967
    add-float v2, v5, v8

    move v5, v2

    goto/16 :goto_10

    .line 4000
    :cond_1e
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_16

    .line 3967
    :cond_1f
    const/4 v2, 0x0

    goto/16 :goto_11

    .line 3965
    :cond_20
    const/4 v2, 0x0

    goto/16 :goto_e
.end method

.method private findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .locals 2

    .prologue
    .line 2987
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;)V

    .line 2988
    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style;->getDefaultStyle()Lcom/caverock/androidsvg/SVG$Style;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    .line 2989
    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v0

    return-object v0
.end method

.method private findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2995
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p1

    .line 2999
    :goto_0
    instance-of v0, v1, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    if-nez v0, :cond_0

    .line 3002
    :goto_1
    iget-object v0, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_1

    .line 3004
    iget-object v0, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgObject;

    move-object v1, v0

    .line 2998
    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 3000
    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    invoke-interface {v2, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 3008
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 3009
    invoke-direct {p0, p2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    goto :goto_2

    .line 3012
    :cond_2
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG;->getRootElement()Lcom/caverock/androidsvg/SVG$Svg;

    move-result-object v0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v0, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 3013
    iget-object v0, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v0, :cond_3

    .line 3018
    :goto_3
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvasViewPort:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v0, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 3021
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->directRendering:Z

    iput-boolean v0, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->directRendering:Z

    .line 3023
    return-object p2

    .line 3014
    :cond_3
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvasViewPort:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v0, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    goto :goto_3
.end method

.method private getAnchorPosition()Lcom/caverock/androidsvg/SVG$Style$TextAnchor;
    .locals 2

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->direction:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextDirection;->LTR:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    if-ne v0, v1, :cond_1

    .line 1351
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    return-object v0

    .line 1350
    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-eq v0, v1, :cond_0

    .line 1354
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    :goto_0
    return-object v0

    :cond_2
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->End:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    goto :goto_0
.end method

.method private getClipRuleFromState()Landroid/graphics/Path$FillType;
    .locals 2

    .prologue
    .line 3538
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->clipRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    if-eqz v0, :cond_0

    .line 3540
    invoke-static {}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$FillRule()[I

    move-result-object v0

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->clipRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Style$FillRule;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3546
    :pswitch_0
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    return-object v0

    .line 3539
    :cond_0
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    return-object v0

    .line 3543
    :pswitch_1
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    return-object v0

    .line 3540
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getFillTypeFromState()Landroid/graphics/Path$FillType;
    .locals 2

    .prologue
    .line 2329
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fillRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    if-eqz v0, :cond_0

    .line 2331
    invoke-static {}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$FillRule()[I

    move-result-object v0

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->fillRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Style$FillRule;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2337
    :pswitch_0
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    return-object v0

    .line 2330
    :cond_0
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    return-object v0

    .line 2334
    :pswitch_1
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    return-object v0

    .line 2331
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    const-string/jumbo v0, "SVGAndroidRenderer"

    .line 511
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    return-void
.end method

.method private isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z
    .locals 4

    .prologue
    .line 1968
    iget-wide v0, p1, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    and-long/2addr v0, p2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private makeLinearGradiant(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$SvgLinearGradient;)V
    .locals 15

    .prologue
    .line 3079
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->href:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 3082
    :goto_0
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->gradientUnitsAreUser:Ljava/lang/Boolean;

    if-nez v1, :cond_3

    :cond_0
    const/4 v1, 0x0

    .line 3083
    :goto_1
    if-nez p1, :cond_4

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    move-object v9, v2

    .line 3086
    :goto_2
    if-nez v1, :cond_5

    .line 3096
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v2, :cond_a

    const/4 v2, 0x0

    .line 3097
    :goto_3
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v3, :cond_b

    const/4 v3, 0x0

    .line 3098
    :goto_4
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v4, :cond_c

    const/high16 v4, 0x3f800000    # 1.0f

    .line 3099
    :goto_5
    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v5, :cond_d

    const/4 v5, 0x0

    .line 3103
    :goto_6
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 3106
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v6

    iput-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 3109
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 3110
    if-eqz v1, :cond_e

    .line 3115
    :goto_7
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->gradientTransform:Landroid/graphics/Matrix;

    if-nez v1, :cond_f

    .line 3121
    :goto_8
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    .line 3122
    if-eqz v12, :cond_10

    .line 3132
    new-array v6, v12, [I

    .line 3133
    new-array v7, v12, [F

    const/4 v1, 0x0

    const/high16 v8, -0x40800000    # -1.0f

    .line 3136
    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->children:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v10, v1

    :goto_9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 3138
    check-cast v1, Lcom/caverock/androidsvg/SVG$Stop;

    .line 3139
    if-nez v10, :cond_12

    .line 3140
    :cond_1
    iget-object v8, v1, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    aput v8, v7, v10

    .line 3141
    iget-object v8, v1, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    .line 3148
    :goto_a
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 3150
    iget-object v14, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v14, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 3151
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    check-cast v1, Lcom/caverock/androidsvg/SVG$Colour;

    .line 3152
    if-eqz v1, :cond_13

    .line 3154
    :goto_b
    iget-object v14, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v14, v14, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v14, v14, Lcom/caverock/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    invoke-direct {p0, v14}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clamp255(F)I

    move-result v14

    shl-int/lit8 v14, v14, 0x18

    iget v1, v1, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    or-int/2addr v1, v14

    aput v1, v6, v10

    .line 3155
    add-int/lit8 v1, v10, 0x1

    .line 3157
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    move v10, v1

    goto :goto_9

    .line 3080
    :cond_2
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->href:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$GradientElement;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3082
    :cond_3
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->gradientUnitsAreUser:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto/16 :goto_1

    .line 3083
    :cond_4
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    move-object v9, v2

    goto/16 :goto_2

    .line 3088
    :cond_5
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCurrentViewPortInUserUnits()Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v4

    .line 3089
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v2, :cond_6

    const/4 v2, 0x0

    .line 3090
    :goto_c
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v3, :cond_7

    const/4 v3, 0x0

    .line 3091
    :goto_d
    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v5, :cond_8

    iget v4, v4, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 3092
    :goto_e
    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v5, :cond_9

    const/4 v5, 0x0

    goto/16 :goto_6

    .line 3089
    :cond_6
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    goto :goto_c

    .line 3090
    :cond_7
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v3, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    goto :goto_d

    .line 3091
    :cond_8
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    goto :goto_e

    .line 3092
    :cond_9
    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v5, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v5

    goto/16 :goto_6

    .line 3096
    :cond_a
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, p0, v3}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v2

    goto/16 :goto_3

    .line 3097
    :cond_b
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, p0, v4}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v3

    goto/16 :goto_4

    .line 3098
    :cond_c
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, p0, v5}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v4

    goto/16 :goto_5

    .line 3099
    :cond_d
    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, p0, v6}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v5

    goto/16 :goto_6

    .line 3112
    :cond_e
    move-object/from16 v0, p2

    iget v1, v0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    move-object/from16 v0, p2

    iget v6, v0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v11, v1, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 3113
    move-object/from16 v0, p2

    iget v1, v0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    move-object/from16 v0, p2

    iget v6, v0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-virtual {v11, v1, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto/16 :goto_7

    .line 3117
    :cond_f
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->gradientTransform:Landroid/graphics/Matrix;

    invoke-virtual {v11, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    goto/16 :goto_8

    .line 3124
    :cond_10
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 3125
    if-nez p1, :cond_11

    .line 3128
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    .line 3129
    :goto_f
    return-void

    .line 3126
    :cond_11
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    goto :goto_f

    .line 3139
    :cond_12
    iget-object v14, v1, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    cmpl-float v14, v14, v8

    if-gez v14, :cond_1

    .line 3145
    aput v8, v7, v10

    goto/16 :goto_a

    .line 3153
    :cond_13
    sget-object v1, Lcom/caverock/androidsvg/SVG$Colour;->BLACK:Lcom/caverock/androidsvg/SVG$Colour;

    goto/16 :goto_b

    .line 3161
    :cond_14
    cmpl-float v1, v2, v4

    if-nez v1, :cond_15

    cmpl-float v1, v3, v5

    if-eqz v1, :cond_17

    :cond_15
    const/4 v1, 0x1

    if-eq v12, v1, :cond_17

    .line 3168
    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 3169
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    if-nez v1, :cond_18

    .line 3177
    :cond_16
    :goto_10
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 3180
    new-instance v1, Landroid/graphics/LinearGradient;

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 3181
    invoke-virtual {v1, v11}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 3182
    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 3183
    return-void

    .line 3162
    :cond_17
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 3163
    add-int/lit8 v1, v12, -0x1

    aget v1, v6, v1

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3164
    return-void

    .line 3171
    :cond_18
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    sget-object v10, Lcom/caverock/androidsvg/SVG$GradientSpread;->reflect:Lcom/caverock/androidsvg/SVG$GradientSpread;

    if-eq v1, v10, :cond_19

    .line 3173
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    sget-object v10, Lcom/caverock/androidsvg/SVG$GradientSpread;->repeat:Lcom/caverock/androidsvg/SVG$GradientSpread;

    if-ne v1, v10, :cond_16

    .line 3174
    sget-object v8, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    goto :goto_10

    .line 3172
    :cond_19
    sget-object v8, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    goto :goto_10
.end method

.method private makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Circle;)Landroid/graphics/Path;
    .locals 23

    .prologue
    .line 3801
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Circle;->cx:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v1, :cond_0

    const/4 v13, 0x0

    .line 3802
    :goto_0
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Circle;->cy:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v1, :cond_1

    const/4 v7, 0x0

    .line 3803
    :goto_1
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Circle;->r:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    .line 3805
    sub-float v17, v13, v1

    .line 3806
    sub-float v3, v7, v1

    .line 3807
    add-float v4, v13, v1

    .line 3808
    add-float v12, v7, v1

    .line 3810
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Circle;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v2, :cond_2

    :goto_2
    const v2, 0x3f0d6289

    .line 3814
    mul-float v21, v1, v2

    .line 3816
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 3817
    invoke-virtual {v1, v13, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3818
    add-float v2, v13, v21

    sub-float v5, v7, v21

    move v6, v4

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3819
    add-float v10, v7, v21

    add-float v11, v13, v21

    move-object v8, v1

    move v9, v4

    move v14, v12

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3820
    sub-float v15, v13, v21

    add-float v18, v7, v21

    move-object v14, v1

    move/from16 v16, v12

    move/from16 v19, v17

    move/from16 v20, v7

    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3821
    sub-float v18, v7, v21

    sub-float v19, v13, v21

    move-object/from16 v16, v1

    move/from16 v20, v3

    move/from16 v21, v13

    move/from16 v22, v3

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3822
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 3823
    return-object v1

    .line 3801
    :cond_0
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Circle;->cx:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v13

    goto :goto_0

    .line 3802
    :cond_1
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Circle;->cy:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v7

    goto :goto_1

    .line 3811
    :cond_2
    new-instance v2, Lcom/caverock/androidsvg/SVG$Box;

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, v1

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v6, v1

    move/from16 v0, v17

    invoke-direct {v2, v0, v3, v5, v6}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/caverock/androidsvg/SVG$Circle;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    goto :goto_2
.end method

.method private makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Ellipse;)Landroid/graphics/Path;
    .locals 23

    .prologue
    .line 3829
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Ellipse;->cx:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v1, :cond_0

    const/4 v13, 0x0

    .line 3830
    :goto_0
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Ellipse;->cy:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v1, :cond_1

    const/4 v7, 0x0

    .line 3831
    :goto_1
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Ellipse;->rx:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    .line 3832
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Ellipse;->ry:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    .line 3834
    sub-float v17, v13, v1

    .line 3835
    sub-float v3, v7, v2

    .line 3836
    add-float v4, v13, v1

    .line 3837
    add-float v12, v7, v2

    .line 3839
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/caverock/androidsvg/SVG$Ellipse;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v5, :cond_2

    :goto_2
    const v5, 0x3f0d6289

    .line 3843
    mul-float v21, v1, v5

    const v1, 0x3f0d6289

    .line 3844
    mul-float v22, v2, v1

    .line 3846
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 3847
    invoke-virtual {v1, v13, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3848
    add-float v2, v13, v21

    sub-float v5, v7, v22

    move v6, v4

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3849
    add-float v10, v7, v22

    add-float v11, v13, v21

    move-object v8, v1

    move v9, v4

    move v14, v12

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3850
    sub-float v15, v13, v21

    add-float v18, v7, v22

    move-object v14, v1

    move/from16 v16, v12

    move/from16 v19, v17

    move/from16 v20, v7

    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3851
    sub-float v18, v7, v22

    sub-float v19, v13, v21

    move-object/from16 v16, v1

    move/from16 v20, v3

    move/from16 v21, v13

    move/from16 v22, v3

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3852
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 3853
    return-object v1

    .line 3829
    :cond_0
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Ellipse;->cx:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v13

    goto :goto_0

    .line 3830
    :cond_1
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Ellipse;->cy:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v7

    goto :goto_1

    .line 3840
    :cond_2
    new-instance v5, Lcom/caverock/androidsvg/SVG$Box;

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v6, v1

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, v2

    move/from16 v0, v17

    invoke-direct {v5, v0, v3, v6, v8}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Ellipse;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    goto :goto_2
.end method

.method private makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Line;)Landroid/graphics/Path;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 3721
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Line;->x1:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Line;->x1:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    .line 3722
    :goto_0
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Line;->y1:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Line;->y1:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    .line 3723
    :goto_1
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Line;->x2:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Line;->x2:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v3, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    .line 3724
    :goto_2
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Line;->y2:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v4, :cond_0

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Line;->y2:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    .line 3726
    :cond_0
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Line;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v4, :cond_4

    .line 3730
    :goto_3
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 3731
    invoke-virtual {v4, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3732
    invoke-virtual {v4, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3733
    return-object v4

    :cond_1
    move v0, v1

    .line 3721
    goto :goto_0

    :cond_2
    move v2, v1

    .line 3722
    goto :goto_1

    :cond_3
    move v3, v1

    .line 3723
    goto :goto_2

    .line 3727
    :cond_4
    new-instance v4, Lcom/caverock/androidsvg/SVG$Box;

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v6

    sub-float v7, v3, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sub-float v8, v1, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v4, p1, Lcom/caverock/androidsvg/SVG$Line;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    goto :goto_3
.end method

.method private makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$PolyLine;)Landroid/graphics/Path;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 3859
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 3861
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aget v0, v0, v2

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v0, 0x2

    .line 3862
    :goto_0
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 3863
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aget v2, v2, v0

    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3862
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 3865
    :cond_0
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Polygon;

    if-nez v0, :cond_1

    .line 3868
    :goto_1
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v0, :cond_2

    .line 3872
    :goto_2
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getClipRuleFromState()Landroid/graphics/Path$FillType;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 3873
    return-object v1

    .line 3866
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    goto :goto_1

    .line 3869
    :cond_2
    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculatePathBounds(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    goto :goto_2
.end method

.method private makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Rect;)Landroid/graphics/Path;
    .locals 17

    .prologue
    .line 3741
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Rect;->rx:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v1, :cond_2

    .line 3744
    :cond_0
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Rect;->rx:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v1, :cond_3

    .line 3746
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Rect;->ry:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v1, :cond_4

    .line 3749
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Rect;->rx:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    .line 3750
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Rect;->ry:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    .line 3752
    :goto_0
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$Rect;->width:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 3753
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Rect;->height:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .line 3754
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Rect;->x:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v1, :cond_5

    const/4 v2, 0x0

    .line 3755
    :goto_1
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Rect;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v1, :cond_6

    const/4 v5, 0x0

    .line 3756
    :goto_2
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Rect;->width:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    .line 3757
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$Rect;->height:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    .line 3759
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Rect;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v4, :cond_7

    .line 3763
    :goto_3
    add-float v12, v2, v1

    .line 3764
    add-float v10, v5, v3

    .line 3766
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    const/4 v3, 0x0

    .line 3767
    cmpl-float v3, v13, v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    cmpl-float v3, v15, v3

    if-nez v3, :cond_8

    .line 3770
    :cond_1
    invoke-virtual {v1, v2, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3771
    invoke-virtual {v1, v12, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3772
    invoke-virtual {v1, v12, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3773
    invoke-virtual {v1, v2, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3774
    invoke-virtual {v1, v2, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3794
    :goto_4
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 3795
    return-object v1

    .line 3741
    :cond_2
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Rect;->ry:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v1, :cond_0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 3743
    goto :goto_0

    .line 3745
    :cond_3
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Rect;->ry:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    move v2, v1

    .line 3746
    goto/16 :goto_0

    .line 3747
    :cond_4
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Rect;->rx:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    move v2, v1

    .line 3748
    goto/16 :goto_0

    .line 3754
    :cond_5
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Rect;->x:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    goto :goto_1

    .line 3755
    :cond_6
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Rect;->y:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v5

    goto :goto_2

    .line 3760
    :cond_7
    new-instance v4, Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {v4, v2, v5, v1, v3}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Rect;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    goto :goto_3

    :cond_8
    const v3, 0x3f0d6289

    .line 3781
    mul-float v14, v13, v3

    const v3, 0x3f0d6289

    .line 3782
    mul-float v16, v15, v3

    .line 3784
    add-float v3, v5, v15

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3785
    add-float v3, v5, v15

    sub-float v3, v3, v16

    add-float v4, v2, v13

    sub-float/2addr v4, v14

    add-float v6, v2, v13

    move v7, v5

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3786
    sub-float v3, v12, v13

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3787
    sub-float v3, v12, v13

    add-float v4, v3, v14

    add-float v3, v5, v15

    sub-float v7, v3, v16

    add-float v9, v5, v15

    move-object v3, v1

    move v6, v12

    move v8, v12

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3788
    sub-float v3, v10, v15

    invoke-virtual {v1, v12, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3789
    sub-float v3, v10, v15

    add-float v8, v3, v16

    sub-float v3, v12, v13

    add-float v9, v3, v14

    sub-float v11, v12, v13

    move-object v6, v1

    move v7, v12

    move v12, v10

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3790
    add-float v3, v2, v13

    invoke-virtual {v1, v3, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3791
    add-float v3, v2, v13

    sub-float v9, v3, v14

    sub-float v3, v10, v15

    add-float v12, v3, v16

    sub-float v14, v10, v15

    move-object v8, v1

    move v11, v2

    move v13, v2

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3792
    add-float v3, v5, v15

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_4
.end method

.method private makeRadialGradiant(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$SvgRadialGradient;)V
    .locals 14

    .prologue
    .line 3188
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->href:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 3191
    :goto_0
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->gradientUnitsAreUser:Ljava/lang/Boolean;

    if-nez v1, :cond_3

    :cond_0
    const/4 v1, 0x0

    .line 3192
    :goto_1
    if-nez p1, :cond_4

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    move-object v8, v2

    .line 3195
    :goto_2
    if-nez v1, :cond_5

    .line 3204
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v2, :cond_9

    const/high16 v2, 0x3f000000    # 0.5f

    .line 3205
    :goto_3
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v3, :cond_a

    const/high16 v3, 0x3f000000    # 0.5f

    .line 3206
    :goto_4
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v4, :cond_b

    const/high16 v4, 0x3f000000    # 0.5f

    .line 3212
    :goto_5
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 3215
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v5

    iput-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 3218
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 3219
    if-eqz v1, :cond_c

    .line 3224
    :goto_6
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->gradientTransform:Landroid/graphics/Matrix;

    if-nez v1, :cond_d

    .line 3230
    :goto_7
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    .line 3231
    if-eqz v11, :cond_e

    .line 3241
    new-array v5, v11, [I

    .line 3242
    new-array v6, v11, [F

    const/4 v1, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    .line 3245
    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->children:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v9, v1

    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 3247
    check-cast v1, Lcom/caverock/androidsvg/SVG$Stop;

    .line 3248
    if-nez v9, :cond_10

    .line 3249
    :cond_1
    iget-object v7, v1, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    aput v7, v6, v9

    .line 3250
    iget-object v7, v1, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 3257
    :goto_9
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 3259
    iget-object v13, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v13, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 3260
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    check-cast v1, Lcom/caverock/androidsvg/SVG$Colour;

    .line 3261
    if-eqz v1, :cond_11

    .line 3263
    :goto_a
    iget-object v13, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v13, v13, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-direct {p0, v13}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clamp255(F)I

    move-result v13

    shl-int/lit8 v13, v13, 0x18

    iget v1, v1, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    or-int/2addr v1, v13

    aput v1, v5, v9

    .line 3264
    add-int/lit8 v1, v9, 0x1

    .line 3266
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    move v9, v1

    goto :goto_8

    .line 3189
    :cond_2
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->href:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$GradientElement;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3191
    :cond_3
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->gradientUnitsAreUser:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto/16 :goto_1

    .line 3192
    :cond_4
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    move-object v8, v2

    goto/16 :goto_2

    .line 3197
    :cond_5
    new-instance v4, Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v2, 0x42480000    # 50.0f

    sget-object v3, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v4, v2, v3}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    .line 3198
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v2, :cond_6

    invoke-virtual {v4, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    .line 3199
    :goto_b
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v3, :cond_7

    invoke-virtual {v4, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    .line 3200
    :goto_c
    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v5, :cond_8

    invoke-virtual {v4, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    goto/16 :goto_5

    .line 3198
    :cond_6
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    goto :goto_b

    .line 3199
    :cond_7
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v3, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    goto :goto_c

    .line 3200
    :cond_8
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    goto/16 :goto_5

    .line 3204
    :cond_9
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, p0, v3}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v2

    goto/16 :goto_3

    .line 3205
    :cond_a
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, p0, v4}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v3

    goto/16 :goto_4

    .line 3206
    :cond_b
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, p0, v5}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v4

    goto/16 :goto_5

    .line 3221
    :cond_c
    move-object/from16 v0, p2

    iget v1, v0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    move-object/from16 v0, p2

    iget v5, v0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v10, v1, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 3222
    move-object/from16 v0, p2

    iget v1, v0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    move-object/from16 v0, p2

    iget v5, v0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-virtual {v10, v1, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto/16 :goto_6

    .line 3226
    :cond_d
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->gradientTransform:Landroid/graphics/Matrix;

    invoke-virtual {v10, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    goto/16 :goto_7

    .line 3233
    :cond_e
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 3234
    if-nez p1, :cond_f

    .line 3237
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    .line 3238
    :goto_d
    return-void

    .line 3235
    :cond_f
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    goto :goto_d

    .line 3248
    :cond_10
    iget-object v13, v1, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    cmpl-float v13, v13, v7

    if-gez v13, :cond_1

    .line 3254
    aput v7, v6, v9

    goto/16 :goto_9

    .line 3262
    :cond_11
    sget-object v1, Lcom/caverock/androidsvg/SVG$Colour;->BLACK:Lcom/caverock/androidsvg/SVG$Colour;

    goto/16 :goto_a

    :cond_12
    const/4 v1, 0x0

    .line 3270
    cmpl-float v1, v4, v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    if-eq v11, v1, :cond_14

    .line 3277
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 3278
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    if-nez v1, :cond_15

    .line 3286
    :cond_13
    :goto_e
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 3289
    new-instance v1, Landroid/graphics/RadialGradient;

    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 3290
    invoke-virtual {v1, v10}, Landroid/graphics/RadialGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 3291
    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 3292
    return-void

    .line 3271
    :cond_14
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 3272
    add-int/lit8 v1, v11, -0x1

    aget v1, v5, v1

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3273
    return-void

    .line 3280
    :cond_15
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    sget-object v9, Lcom/caverock/androidsvg/SVG$GradientSpread;->reflect:Lcom/caverock/androidsvg/SVG$GradientSpread;

    if-eq v1, v9, :cond_16

    .line 3282
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    sget-object v9, Lcom/caverock/androidsvg/SVG$GradientSpread;->repeat:Lcom/caverock/androidsvg/SVG$GradientSpread;

    if-ne v1, v9, :cond_13

    .line 3283
    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    goto :goto_e

    .line 3281
    :cond_16
    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    goto :goto_e
.end method

.method private parentPop()V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 375
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 376
    return-void
.end method

.method private parentPush(Lcom/caverock/androidsvg/SVG$SvgContainer;)V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    return-void
.end method

.method private popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 702
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 720
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 721
    return-void

    .line 702
    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->directRendering:Z

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    .line 705
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->duplicateCanvas()V

    .line 706
    check-cast v0, Lcom/caverock/androidsvg/SVG$Mask;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMask(Lcom/caverock/androidsvg/SVG$Mask;Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 708
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->processMaskBitmaps()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 711
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvasStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Canvas;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    .line 712
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 714
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 715
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 716
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 717
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method private processMaskBitmaps()Landroid/graphics/Bitmap;
    .locals 18

    .prologue
    .line 753
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->bitmapStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 755
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->bitmapStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/graphics/Bitmap;

    .line 759
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 760
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    .line 761
    new-array v2, v4, [I

    .line 762
    new-array v0, v4, [I

    move-object/from16 v17, v0

    const/4 v6, 0x0

    .line 763
    :goto_0
    move/from16 v0, v16

    if-ge v6, v0, :cond_2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    move v7, v4

    .line 765
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x1

    move-object v7, v15

    move-object/from16 v8, v17

    move v10, v4

    move v12, v6

    move v13, v4

    .line 766
    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v3, 0x0

    .line 767
    :goto_1
    if-ge v3, v4, :cond_1

    .line 769
    aget v5, v2, v3

    .line 770
    and-int/lit16 v7, v5, 0xff

    .line 771
    shr-int/lit8 v8, v5, 0x8

    and-int/lit16 v8, v8, 0xff

    .line 772
    shr-int/lit8 v9, v5, 0x10

    and-int/lit16 v9, v9, 0xff

    .line 773
    shr-int/lit8 v5, v5, 0x18

    and-int/lit16 v5, v5, 0xff

    .line 774
    if-eqz v5, :cond_0

    .line 779
    mul-int/lit16 v9, v9, 0x1b33

    mul-int/lit16 v8, v8, 0x5b92

    add-int/2addr v8, v9

    mul-int/lit16 v7, v7, 0x93a

    add-int/2addr v7, v8

    mul-int/2addr v5, v7

    const v7, 0x7f8000

    div-int/2addr v5, v7

    .line 780
    aget v7, v17, v3

    .line 781
    shr-int/lit8 v8, v7, 0x18

    and-int/lit16 v8, v8, 0xff

    .line 782
    mul-int/2addr v5, v8

    div-int/lit16 v5, v5, 0xff

    const v8, 0xffffff

    .line 783
    and-int/2addr v7, v8

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v5, v7

    aput v5, v17, v3

    .line 767
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 776
    aput v5, v17, v3

    goto :goto_2

    :cond_1
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x1

    move-object v7, v15

    move-object/from16 v8, v17

    move v10, v4

    move v12, v6

    move v13, v4

    .line 785
    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 763
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 787
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 788
    return-object v15
.end method

.method private processTextChild(Lcom/caverock/androidsvg/SVG$SvgObject;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    .line 1432
    check-cast v0, Lcom/caverock/androidsvg/SVG$TextContainer;

    invoke-virtual {p2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;->doTextContainer(Lcom/caverock/androidsvg/SVG$TextContainer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1435
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$TextPath;

    if-nez v0, :cond_1

    .line 1445
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$TSpan;

    if-nez v0, :cond_2

    .line 1485
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$TRef;

    if-nez v0, :cond_e

    .line 1517
    :goto_0
    return-void

    .line 1433
    :cond_0
    return-void

    .line 1438
    :cond_1
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 1440
    check-cast p1, Lcom/caverock/androidsvg/SVG$TextPath;

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderTextPath(Lcom/caverock/androidsvg/SVG$TextPath;)V

    .line 1443
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "TSpan render"

    .line 1447
    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1450
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 1452
    check-cast p1, Lcom/caverock/androidsvg/SVG$TSpan;

    .line 1454
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1456
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1483
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    goto :goto_0

    .line 1460
    :cond_4
    instance-of v0, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    if-nez v0, :cond_6

    move v3, v4

    move v2, v4

    move v1, v4

    .line 1467
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG$TSpan;->getTextRoot()Lcom/caverock/androidsvg/SVG$TextRoot;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgElement;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1469
    instance-of v0, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    if-nez v0, :cond_d

    .line 1474
    :goto_3
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v0

    .line 1476
    invoke-direct {p0, p1, p2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 1478
    if-eqz v0, :cond_3

    .line 1479
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_1

    .line 1461
    :cond_6
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TSpan;->x:Ljava/util/List;

    if-nez v0, :cond_a

    :cond_7
    move-object v0, p2

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    iget v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->x:F

    move v1, v0

    .line 1462
    :goto_4
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TSpan;->y:Ljava/util/List;

    if-nez v0, :cond_b

    :cond_8
    move-object v0, p2

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    iget v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->y:F

    move v2, v0

    .line 1463
    :goto_5
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TSpan;->dx:Ljava/util/List;

    if-nez v0, :cond_c

    :cond_9
    move v3, v4

    .line 1464
    :goto_6
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TSpan;->dy:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TSpan;->dy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TSpan;->dy:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    goto :goto_2

    .line 1461
    :cond_a
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TSpan;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TSpan;->x:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    move v1, v0

    goto :goto_4

    .line 1462
    :cond_b
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TSpan;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TSpan;->y:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    move v2, v0

    goto :goto_5

    .line 1463
    :cond_c
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TSpan;->dx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TSpan;->dx:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    move v3, v0

    goto :goto_6

    :cond_d
    move-object v0, p2

    .line 1470
    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    add-float/2addr v1, v3

    iput v1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->x:F

    move-object v0, p2

    .line 1471
    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    add-float v1, v2, v4

    iput v1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->y:F

    goto/16 :goto_3

    .line 1488
    :cond_e
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    move-object v0, p1

    .line 1490
    check-cast v0, Lcom/caverock/androidsvg/SVG$TRef;

    .line 1492
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1494
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v1

    if-nez v1, :cond_10

    .line 1515
    :cond_f
    :goto_7
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    goto/16 :goto_0

    .line 1496
    :cond_10
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$TRef;->getTextRoot()Lcom/caverock/androidsvg/SVG$TextRoot;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/SVG$SvgElement;

    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1499
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$TRef;->href:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v1

    .line 1500
    if-nez v1, :cond_12

    :cond_11
    const-string/jumbo v1, "Tref reference \'%s\' not found"

    const/4 v2, 0x1

    .line 1510
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$TRef;->href:Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    .line 1500
    :cond_12
    instance-of v2, v1, Lcom/caverock/androidsvg/SVG$TextContainer;

    if-eqz v2, :cond_11

    .line 1502
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    .line 1503
    check-cast v0, Lcom/caverock/androidsvg/SVG$TextContainer;

    invoke-direct {p0, v0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->extractRawText(Lcom/caverock/androidsvg/SVG$TextContainer;Ljava/lang/StringBuilder;)V

    .line 1504
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_f

    .line 1505
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;->processText(Ljava/lang/String;)V

    goto :goto_7
.end method

.method private pushLayer()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 671
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->requiresCompositing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 675
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clamp255(F)I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {v0, v4, v1, v2}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 678
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 681
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 695
    :cond_0
    :goto_0
    return v5

    .line 672
    :cond_1
    return v3

    .line 681
    :cond_2
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->directRendering:Z

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    .line 684
    if-nez v0, :cond_4

    :cond_3
    const-string/jumbo v0, "Mask reference \'%s\' not found"

    .line 686
    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 687
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    .line 688
    return v5

    .line 684
    :cond_4
    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$Mask;

    if-eqz v0, :cond_3

    .line 691
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvasStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->duplicateCanvas()V

    goto :goto_0
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Circle;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v0, "Circle render"

    .line 1048
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1050
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Circle;->r:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_1

    .line 1051
    :cond_0
    return-void

    .line 1050
    :cond_1
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Circle;->r:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1053
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1055
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1057
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1060
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Circle;->transform:Landroid/graphics/Matrix;

    if-nez v0, :cond_4

    .line 1063
    :goto_0
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Circle;)Landroid/graphics/Path;

    move-result-object v0

    .line 1064
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1066
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1067
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1069
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v1

    .line 1071
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-nez v2, :cond_5

    .line 1073
    :goto_1
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-nez v2, :cond_6

    .line 1076
    :goto_2
    if-nez v1, :cond_7

    .line 1078
    :goto_3
    return-void

    .line 1056
    :cond_2
    return-void

    .line 1058
    :cond_3
    return-void

    .line 1061
    :cond_4
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Circle;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 1072
    :cond_5
    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    goto :goto_1

    .line 1074
    :cond_6
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    goto :goto_2

    .line 1077
    :cond_7
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_3
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Ellipse;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v0, "Ellipse render"

    .line 1086
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1088
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->rx:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_1

    .line 1089
    :cond_0
    return-void

    .line 1088
    :cond_1
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->ry:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->rx:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->ry:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1091
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1093
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1095
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1098
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->transform:Landroid/graphics/Matrix;

    if-nez v0, :cond_4

    .line 1101
    :goto_0
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Ellipse;)Landroid/graphics/Path;

    move-result-object v0

    .line 1102
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1104
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1105
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1107
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v1

    .line 1109
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-nez v2, :cond_5

    .line 1111
    :goto_1
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-nez v2, :cond_6

    .line 1114
    :goto_2
    if-nez v1, :cond_7

    .line 1116
    :goto_3
    return-void

    .line 1094
    :cond_2
    return-void

    .line 1096
    :cond_3
    return-void

    .line 1099
    :cond_4
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 1110
    :cond_5
    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    goto :goto_1

    .line 1112
    :cond_6
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    goto :goto_2

    .line 1115
    :cond_7
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_3
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Group;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v0, "Group render"

    .line 596
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 598
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 600
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Group;->transform:Landroid/graphics/Matrix;

    if-nez v0, :cond_1

    .line 607
    :goto_0
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 609
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v0

    .line 611
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V

    .line 613
    if-nez v0, :cond_2

    .line 616
    :goto_1
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 617
    return-void

    .line 601
    :cond_0
    return-void

    .line 604
    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Group;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 614
    :cond_2
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_1
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Image;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    const-string/jumbo v0, "Image render"

    .line 1779
    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1781
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Image;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_1

    .line 1783
    :cond_0
    return-void

    .line 1781
    :cond_1
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Image;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1782
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Image;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Image;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1785
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Image;->href:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1789
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Image;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-nez v0, :cond_3

    sget-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 1792
    :goto_0
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Image;->href:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForImageDataURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1793
    if-eqz v1, :cond_4

    move-object v4, v1

    .line 1801
    :goto_1
    if-eqz v4, :cond_6

    .line 1806
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1808
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1810
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1813
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Image;->transform:Landroid/graphics/Matrix;

    if-nez v1, :cond_9

    .line 1817
    :goto_2
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Image;->x:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v1, :cond_a

    move v1, v2

    .line 1818
    :goto_3
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Image;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v3, :cond_b

    move v3, v2

    .line 1819
    :goto_4
    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$Image;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v5, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v5

    .line 1820
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Image;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v6, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v6

    .line 1821
    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    new-instance v8, Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {v8, v1, v3, v5, v6}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v8, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 1823
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1827
    :goto_5
    new-instance v1, Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v1, v2, v2, v3, v5}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Image;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 1828
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$Image;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {p0, v3, v5, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateViewBoxTransform(Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1830
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1832
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1834
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v0

    .line 1836
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->viewportFill()V

    .line 1838
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1840
    if-nez v0, :cond_d

    .line 1842
    :goto_6
    return-void

    .line 1786
    :cond_2
    return-void

    .line 1789
    :cond_3
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Image;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    goto/16 :goto_0

    .line 1795
    :cond_4
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG;->getFileResolver()Lcom/caverock/androidsvg/SVGExternalFileResolver;

    move-result-object v1

    .line 1796
    if-eqz v1, :cond_5

    .line 1799
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Image;->href:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/caverock/androidsvg/SVGExternalFileResolver;->resolveImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v4, v1

    goto/16 :goto_1

    .line 1797
    :cond_5
    return-void

    :cond_6
    const-string/jumbo v0, "Could not locate image \'%s\'"

    const/4 v1, 0x1

    .line 1802
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Image;->href:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1803
    return-void

    .line 1809
    :cond_7
    return-void

    .line 1811
    :cond_8
    return-void

    .line 1814
    :cond_9
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Image;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto/16 :goto_2

    .line 1817
    :cond_a
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Image;->x:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    goto/16 :goto_3

    .line 1818
    :cond_b
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Image;->y:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v3, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    goto/16 :goto_4

    .line 1824
    :cond_c
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v1, v1, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v3, v3, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v5, v5, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v6, v6, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-direct {p0, v1, v3, v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    goto/16 :goto_5

    .line 1841
    :cond_d
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_6
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Line;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v0, "Line render"

    .line 1124
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1126
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1128
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1130
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1132
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v0, :cond_2

    .line 1135
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Line;->transform:Landroid/graphics/Matrix;

    if-nez v0, :cond_3

    .line 1138
    :goto_0
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Line;)Landroid/graphics/Path;

    move-result-object v0

    .line 1139
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1141
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1142
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1144
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v1

    .line 1146
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    .line 1148
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarkers(Lcom/caverock/androidsvg/SVG$GraphicsElement;)V

    .line 1150
    if-nez v1, :cond_4

    .line 1152
    :goto_1
    return-void

    .line 1129
    :cond_0
    return-void

    .line 1131
    :cond_1
    return-void

    .line 1133
    :cond_2
    return-void

    .line 1136
    :cond_3
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Line;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 1151
    :cond_4
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_1
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Path;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v0, "Path render"

    .line 956
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 958
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 960
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 962
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 964
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v0, :cond_3

    .line 967
    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    if-nez v0, :cond_4

    .line 970
    :goto_0
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    invoke-direct {v0, p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVG$PathDefinition;)V

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->getPath()Landroid/graphics/Path;

    move-result-object v0

    .line 972
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Path;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v1, :cond_5

    .line 975
    :goto_1
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 977
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 978
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 980
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v1

    .line 982
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-nez v2, :cond_6

    .line 986
    :goto_2
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-nez v2, :cond_7

    .line 989
    :goto_3
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarkers(Lcom/caverock/androidsvg/SVG$GraphicsElement;)V

    .line 991
    if-nez v1, :cond_8

    .line 993
    :goto_4
    return-void

    .line 961
    :cond_1
    return-void

    .line 963
    :cond_2
    return-void

    .line 964
    :cond_3
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-nez v0, :cond_0

    .line 965
    return-void

    .line 968
    :cond_4
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 973
    :cond_5
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculatePathBounds(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Path;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    goto :goto_1

    .line 983
    :cond_6
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getFillTypeFromState()Landroid/graphics/Path$FillType;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 984
    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    goto :goto_2

    .line 987
    :cond_7
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    goto :goto_3

    .line 992
    :cond_8
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_4
.end method

.method private render(Lcom/caverock/androidsvg/SVG$PolyLine;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v0, "PolyLine render"

    .line 1175
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1177
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1179
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1181
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1183
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v0, :cond_3

    .line 1186
    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->transform:Landroid/graphics/Matrix;

    if-nez v0, :cond_4

    .line 1189
    :goto_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    array-length v0, v0

    const/4 v1, 0x2

    .line 1190
    if-lt v0, v1, :cond_5

    .line 1193
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$PolyLine;)Landroid/graphics/Path;

    move-result-object v0

    .line 1194
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1196
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1197
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1199
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v1

    .line 1201
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-nez v2, :cond_6

    .line 1203
    :goto_1
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-nez v2, :cond_7

    .line 1206
    :goto_2
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarkers(Lcom/caverock/androidsvg/SVG$GraphicsElement;)V

    .line 1208
    if-nez v1, :cond_8

    .line 1210
    :goto_3
    return-void

    .line 1180
    :cond_1
    return-void

    .line 1182
    :cond_2
    return-void

    .line 1183
    :cond_3
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-nez v0, :cond_0

    .line 1184
    return-void

    .line 1187
    :cond_4
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 1191
    :cond_5
    return-void

    .line 1202
    :cond_6
    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    goto :goto_1

    .line 1204
    :cond_7
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    goto :goto_2

    .line 1209
    :cond_8
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_3
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Polygon;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v0, "Polygon render"

    .line 1259
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1261
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1263
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1265
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1267
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v0, :cond_3

    .line 1270
    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Polygon;->transform:Landroid/graphics/Matrix;

    if-nez v0, :cond_4

    .line 1273
    :goto_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Polygon;->points:[F

    array-length v0, v0

    const/4 v1, 0x2

    .line 1274
    if-lt v0, v1, :cond_5

    .line 1277
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$PolyLine;)Landroid/graphics/Path;

    move-result-object v0

    .line 1278
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1280
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1281
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1283
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v1

    .line 1285
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-nez v2, :cond_6

    .line 1287
    :goto_1
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-nez v2, :cond_7

    .line 1290
    :goto_2
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarkers(Lcom/caverock/androidsvg/SVG$GraphicsElement;)V

    .line 1292
    if-nez v1, :cond_8

    .line 1294
    :goto_3
    return-void

    .line 1264
    :cond_1
    return-void

    .line 1266
    :cond_2
    return-void

    .line 1267
    :cond_3
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-nez v0, :cond_0

    .line 1268
    return-void

    .line 1271
    :cond_4
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Polygon;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 1275
    :cond_5
    return-void

    .line 1286
    :cond_6
    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    goto :goto_1

    .line 1288
    :cond_7
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    goto :goto_2

    .line 1293
    :cond_8
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_3
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Rect;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v0, "Rect render"

    .line 1009
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1011
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Rect;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_1

    .line 1012
    :cond_0
    return-void

    .line 1011
    :cond_1
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Rect;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Rect;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Rect;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1014
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1016
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1018
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1021
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Rect;->transform:Landroid/graphics/Matrix;

    if-nez v0, :cond_4

    .line 1024
    :goto_0
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Rect;)Landroid/graphics/Path;

    move-result-object v0

    .line 1025
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1027
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1028
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1030
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v1

    .line 1032
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-nez v2, :cond_5

    .line 1034
    :goto_1
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-nez v2, :cond_6

    .line 1038
    :goto_2
    if-nez v1, :cond_7

    .line 1040
    :goto_3
    return-void

    .line 1017
    :cond_2
    return-void

    .line 1019
    :cond_3
    return-void

    .line 1022
    :cond_4
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Rect;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 1033
    :cond_5
    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    goto :goto_1

    .line 1035
    :cond_6
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    goto :goto_2

    .line 1039
    :cond_7
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_3
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Svg;)V
    .locals 2

    .prologue
    .line 521
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-direct {p0, p1, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Svg;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;)V

    .line 522
    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Svg;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;)V
    .locals 6

    .prologue
    .line 528
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$Svg;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Svg;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)V

    .line 529
    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Svg;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string/jumbo v0, "Svg render"

    .line 537
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 539
    if-nez p2, :cond_2

    .line 540
    :cond_0
    if-nez p3, :cond_4

    .line 544
    :goto_0
    if-eqz p5, :cond_5

    .line 547
    :goto_1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 549
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 555
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Svg;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v0, :cond_8

    move v0, v1

    .line 561
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCurrentViewPortInUserUnits()Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v3

    .line 562
    if-nez p2, :cond_a

    iget v2, v3, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 563
    :goto_3
    if-nez p3, :cond_b

    iget v3, v3, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 564
    :goto_4
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    new-instance v5, Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v5, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 566
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 570
    :goto_5
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)V

    .line 572
    if-nez p4, :cond_d

    .line 577
    :goto_6
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v0

    .line 580
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->viewportFill()V

    .line 582
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V

    .line 584
    if-nez v0, :cond_e

    .line 587
    :goto_7
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 588
    return-void

    .line 539
    :cond_2
    invoke-virtual {p2}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    :cond_3
    return-void

    .line 540
    :cond_4
    invoke-virtual {p3}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 545
    :cond_5
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Svg;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-nez v0, :cond_6

    sget-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/caverock/androidsvg/PreserveAspectRatio;

    :goto_8
    move-object p5, v0

    goto :goto_1

    :cond_6
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Svg;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    goto :goto_8

    .line 550
    :cond_7
    return-void

    .line 557
    :cond_8
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Svg;->x:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_9

    move v0, v1

    .line 558
    :goto_9
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Svg;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v2, :cond_1

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Svg;->y:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    goto :goto_2

    .line 557
    :cond_9
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Svg;->x:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    goto :goto_9

    .line 562
    :cond_a
    invoke-virtual {p2, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    goto :goto_3

    .line 563
    :cond_b
    invoke-virtual {p3, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    goto :goto_4

    .line 567
    :cond_c
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v1, v1, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v2, v2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v3, v3, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    goto :goto_5

    .line 573
    :cond_d
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {p0, v1, p4, p5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateViewBoxTransform(Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 574
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    goto :goto_6

    .line 585
    :cond_e
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_7
.end method

.method private render(Lcom/caverock/androidsvg/SVG$SvgObject;)V
    .locals 1

    .prologue
    .line 279
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$NotDirectlyRendered;

    if-nez v0, :cond_0

    .line 283
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 285
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkXMLSpaceAttribute(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 287
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Svg;

    if-nez v0, :cond_1

    .line 289
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Use;

    if-nez v0, :cond_2

    .line 291
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Switch;

    if-nez v0, :cond_3

    .line 293
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Group;

    if-nez v0, :cond_4

    .line 295
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Image;

    if-nez v0, :cond_5

    .line 297
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Path;

    if-nez v0, :cond_6

    .line 299
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Rect;

    if-nez v0, :cond_7

    .line 301
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Circle;

    if-nez v0, :cond_8

    .line 303
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Ellipse;

    if-nez v0, :cond_9

    .line 305
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Line;

    if-nez v0, :cond_a

    .line 307
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Polygon;

    if-nez v0, :cond_b

    .line 309
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$PolyLine;

    if-nez v0, :cond_c

    .line 311
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Text;

    if-nez v0, :cond_d

    .line 316
    :goto_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 317
    return-void

    .line 280
    :cond_0
    return-void

    .line 288
    :cond_1
    check-cast p1, Lcom/caverock/androidsvg/SVG$Svg;

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Svg;)V

    goto :goto_0

    .line 290
    :cond_2
    check-cast p1, Lcom/caverock/androidsvg/SVG$Use;

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Use;)V

    goto :goto_0

    .line 292
    :cond_3
    check-cast p1, Lcom/caverock/androidsvg/SVG$Switch;

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Switch;)V

    goto :goto_0

    .line 294
    :cond_4
    check-cast p1, Lcom/caverock/androidsvg/SVG$Group;

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Group;)V

    goto :goto_0

    .line 296
    :cond_5
    check-cast p1, Lcom/caverock/androidsvg/SVG$Image;

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Image;)V

    goto :goto_0

    .line 298
    :cond_6
    check-cast p1, Lcom/caverock/androidsvg/SVG$Path;

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Path;)V

    goto :goto_0

    .line 300
    :cond_7
    check-cast p1, Lcom/caverock/androidsvg/SVG$Rect;

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Rect;)V

    goto :goto_0

    .line 302
    :cond_8
    check-cast p1, Lcom/caverock/androidsvg/SVG$Circle;

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Circle;)V

    goto :goto_0

    .line 304
    :cond_9
    check-cast p1, Lcom/caverock/androidsvg/SVG$Ellipse;

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Ellipse;)V

    goto :goto_0

    .line 306
    :cond_a
    check-cast p1, Lcom/caverock/androidsvg/SVG$Line;

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Line;)V

    goto :goto_0

    .line 308
    :cond_b
    check-cast p1, Lcom/caverock/androidsvg/SVG$Polygon;

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Polygon;)V

    goto :goto_0

    .line 310
    :cond_c
    check-cast p1, Lcom/caverock/androidsvg/SVG$PolyLine;

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$PolyLine;)V

    goto :goto_0

    .line 312
    :cond_d
    check-cast p1, Lcom/caverock/androidsvg/SVG$Text;

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Text;)V

    goto :goto_0
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Switch;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v0, "Switch render"

    .line 800
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 802
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 804
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Switch;->transform:Landroid/graphics/Matrix;

    if-nez v0, :cond_1

    .line 811
    :goto_0
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 813
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v0

    .line 815
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderSwitchChild(Lcom/caverock/androidsvg/SVG$Switch;)V

    .line 817
    if-nez v0, :cond_2

    .line 820
    :goto_1
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 821
    return-void

    .line 805
    :cond_0
    return-void

    .line 808
    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Switch;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 818
    :cond_2
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_1
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Symbol;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const-string/jumbo v0, "Symbol render"

    .line 1739
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1741
    if-nez p2, :cond_1

    .line 1742
    :cond_0
    if-nez p3, :cond_3

    .line 1746
    :goto_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Symbol;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-nez v0, :cond_4

    sget-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 1748
    :goto_1
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1750
    if-nez p2, :cond_5

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v1, v1, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 1751
    :goto_2
    if-nez p3, :cond_6

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v2, v2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 1752
    :goto_3
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    new-instance v4, Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {v4, v5, v5, v1, v2}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v4, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 1754
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1758
    :goto_4
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Symbol;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v1, :cond_8

    .line 1763
    :goto_5
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v0

    .line 1765
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V

    .line 1767
    if-nez v0, :cond_9

    .line 1770
    :goto_6
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1771
    return-void

    .line 1741
    :cond_1
    invoke-virtual {p2}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1743
    :cond_2
    return-void

    .line 1742
    :cond_3
    invoke-virtual {p3}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 1746
    :cond_4
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Symbol;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    goto :goto_1

    .line 1750
    :cond_5
    invoke-virtual {p2, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    goto :goto_2

    .line 1751
    :cond_6
    invoke-virtual {p3, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    goto :goto_3

    .line 1755
    :cond_7
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v1, v1, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v2, v2, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v3, v3, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v4, v4, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    goto :goto_4

    .line 1759
    :cond_8
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Symbol;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {p0, v2, v3, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateViewBoxTransform(Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1760
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Symbol;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    goto :goto_5

    .line 1768
    :cond_9
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_6
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Text;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    const-string/jumbo v0, "Text render"

    .line 1302
    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1304
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1306
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1309
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->transform:Landroid/graphics/Matrix;

    if-nez v0, :cond_5

    .line 1313
    :goto_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->x:Ljava/util/List;

    if-nez v0, :cond_6

    :cond_0
    move v1, v2

    .line 1314
    :goto_1
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->y:Ljava/util/List;

    if-nez v0, :cond_7

    :cond_1
    move v3, v2

    .line 1315
    :goto_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->dx:Ljava/util/List;

    if-nez v0, :cond_8

    :cond_2
    move v4, v2

    .line 1316
    :goto_3
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->dy:Ljava/util/List;

    if-nez v0, :cond_9

    .line 1319
    :cond_3
    :goto_4
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getAnchorPosition()Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    move-result-object v0

    .line 1320
    sget-object v5, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-ne v0, v5, :cond_a

    .line 1329
    :goto_5
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v0, :cond_c

    .line 1334
    :goto_6
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1336
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1337
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1339
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v0

    .line 1341
    new-instance v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    add-float/2addr v1, v4

    add-float/2addr v2, v3

    invoke-direct {v5, p0, v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FF)V

    invoke-direct {p0, p1, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 1343
    if-nez v0, :cond_d

    .line 1345
    :goto_7
    return-void

    .line 1307
    :cond_4
    return-void

    .line 1310
    :cond_5
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Text;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 1313
    :cond_6
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->x:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    move v1, v0

    goto :goto_1

    .line 1314
    :cond_7
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->y:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    move v3, v0

    goto :goto_2

    .line 1315
    :cond_8
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->dx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->dx:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    move v4, v0

    goto :goto_3

    .line 1316
    :cond_9
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->dy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->dy:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    goto/16 :goto_4

    .line 1321
    :cond_a
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateTextWidth(Lcom/caverock/androidsvg/SVG$TextContainer;)F

    move-result v5

    .line 1322
    sget-object v6, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-eq v0, v6, :cond_b

    .line 1325
    sub-float/2addr v1, v5

    goto/16 :goto_5

    :cond_b
    const/high16 v0, 0x40000000    # 2.0f

    .line 1323
    div-float v0, v5, v0

    sub-float/2addr v1, v0

    goto/16 :goto_5

    .line 1330
    :cond_c
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;

    invoke-direct {v0, p0, v1, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FF)V

    .line 1331
    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 1332
    new-instance v5, Lcom/caverock/androidsvg/SVG$Box;

    iget-object v6, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget-object v8, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-direct {v5, v6, v7, v8, v0}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v5, p1, Lcom/caverock/androidsvg/SVG$Text;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    goto/16 :goto_6

    .line 1344
    :cond_d
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto/16 :goto_7
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Use;)V
    .locals 6

    .prologue
    const/high16 v5, 0x42c80000    # 100.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string/jumbo v0, "Use render"

    .line 885
    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 887
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_1

    .line 888
    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_3

    .line 891
    :goto_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 893
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 897
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Use;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->href:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    .line 898
    if-eqz v0, :cond_5

    .line 903
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->transform:Landroid/graphics/Matrix;

    if-nez v1, :cond_6

    .line 908
    :goto_1
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 909
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->x:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v1, :cond_7

    move v1, v2

    .line 910
    :goto_2
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Use;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v4, :cond_8

    .line 911
    :goto_3
    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 912
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 914
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 916
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v3

    .line 918
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentPush(Lcom/caverock/androidsvg/SVG$SvgContainer;)V

    .line 920
    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$Svg;

    if-nez v1, :cond_9

    .line 929
    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$Symbol;

    if-nez v1, :cond_c

    .line 939
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 942
    :goto_4
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentPop()V

    .line 944
    if-nez v3, :cond_f

    .line 947
    :goto_5
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 948
    return-void

    .line 887
    :cond_1
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 889
    :cond_2
    return-void

    .line 888
    :cond_3
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 894
    :cond_4
    return-void

    :cond_5
    const-string/jumbo v0, "Use reference \'%s\' not found"

    const/4 v1, 0x1

    .line 899
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Use;->href:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 900
    return-void

    .line 904
    :cond_6
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Use;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_1

    .line 909
    :cond_7
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->x:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    goto :goto_2

    .line 910
    :cond_8
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Use;->y:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    goto :goto_3

    .line 922
    :cond_9
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 923
    check-cast v0, Lcom/caverock/androidsvg/SVG$Svg;

    .line 924
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v1, :cond_a

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 925
    :goto_6
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v2, :cond_b

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 926
    :goto_7
    invoke-direct {p0, v0, v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Svg;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;)V

    .line 927
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    goto :goto_4

    .line 924
    :cond_a
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_6

    .line 925
    :cond_b
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_7

    .line 931
    :cond_c
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v1, :cond_d

    new-instance v1, Lcom/caverock/androidsvg/SVG$Length;

    sget-object v2, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v1, v5, v2}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    .line 932
    :goto_8
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v2, :cond_e

    new-instance v2, Lcom/caverock/androidsvg/SVG$Length;

    sget-object v4, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v2, v5, v4}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    .line 933
    :goto_9
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 934
    check-cast v0, Lcom/caverock/androidsvg/SVG$Symbol;

    invoke-direct {p0, v0, v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Symbol;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;)V

    .line 935
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    goto :goto_4

    .line 931
    :cond_d
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_8

    .line 932
    :cond_e
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_9

    .line 945
    :cond_f
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto/16 :goto_5
.end method

.method private renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V
    .locals 2

    .prologue
    .line 325
    if-nez p2, :cond_0

    .line 329
    :goto_0
    invoke-interface {p1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 330
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    goto :goto_1

    .line 326
    :cond_0
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentPush(Lcom/caverock/androidsvg/SVG$SvgContainer;)V

    goto :goto_0

    .line 333
    :cond_1
    if-nez p2, :cond_2

    .line 336
    :goto_2
    return-void

    .line 334
    :cond_2
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentPop()V

    goto :goto_2
.end method

.method private renderMarker(Lcom/caverock/androidsvg/SVG$Marker;Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V
    .locals 12

    .prologue
    const/4 v0, 0x0

    .line 2871
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 2874
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Marker;->orient:Ljava/lang/Float;

    if-nez v1, :cond_1

    .line 2886
    :cond_0
    :goto_0
    iget-boolean v1, p1, Lcom/caverock/androidsvg/SVG$Marker;->markerUnitsAreUser:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    iget v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->dpi:F

    invoke-virtual {v1, v2}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(F)F

    move-result v1

    .line 2890
    :goto_1
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v2

    iput-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 2892
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 2893
    iget v2, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    iget v3, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 2894
    invoke-virtual {v8, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 2895
    invoke-virtual {v8, v1, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 2897
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Marker;->refX:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_5

    const/4 v0, 0x0

    .line 2898
    :goto_2
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Marker;->refY:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v1, :cond_6

    const/4 v1, 0x0

    .line 2899
    :goto_3
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Marker;->markerWidth:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v2, :cond_7

    const/high16 v2, 0x40400000    # 3.0f

    .line 2900
    :goto_4
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Marker;->markerHeight:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v3, :cond_8

    const/high16 v3, 0x40400000    # 3.0f

    .line 2905
    :goto_5
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Marker;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 2908
    :goto_6
    iget v5, v4, Lcom/caverock/androidsvg/SVG$Box;->width:F

    div-float v7, v2, v5

    .line 2909
    iget v5, v4, Lcom/caverock/androidsvg/SVG$Box;->height:F

    div-float v6, v3, v5

    .line 2912
    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$Marker;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-nez v5, :cond_a

    sget-object v5, Lcom/caverock/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 2913
    :goto_7
    sget-object v9, Lcom/caverock/androidsvg/PreserveAspectRatio;->STRETCH:Lcom/caverock/androidsvg/PreserveAspectRatio;

    invoke-virtual {v5, v9}, Lcom/caverock/androidsvg/PreserveAspectRatio;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 2920
    :goto_8
    neg-float v0, v0

    mul-float/2addr v0, v7

    neg-float v1, v1

    mul-float/2addr v1, v6

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 2921
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v8}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 2923
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2966
    :goto_9
    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 2967
    invoke-virtual {v8, v7, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 2968
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v8}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 2970
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v0

    .line 2972
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V

    .line 2974
    if-nez v0, :cond_e

    .line 2977
    :goto_a
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 2978
    return-void

    .line 2876
    :cond_1
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Marker;->orient:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2882
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Marker;->orient:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto/16 :goto_0

    .line 2878
    :cond_2
    iget v1, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    iget v1, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 2879
    :cond_3
    iget v0, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    float-to-double v0, v0

    iget v2, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    goto/16 :goto_0

    :cond_4
    const/high16 v1, 0x3f800000    # 1.0f

    .line 2886
    goto/16 :goto_1

    .line 2897
    :cond_5
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Marker;->refX:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    goto/16 :goto_2

    .line 2898
    :cond_6
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Marker;->refY:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    goto/16 :goto_3

    .line 2899
    :cond_7
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Marker;->markerWidth:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    goto/16 :goto_4

    .line 2900
    :cond_8
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Marker;->markerHeight:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v3, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    goto/16 :goto_5

    .line 2905
    :cond_9
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Marker;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    goto/16 :goto_6

    .line 2912
    :cond_a
    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$Marker;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    goto/16 :goto_7

    .line 2915
    :cond_b
    invoke-virtual {v5}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getScale()Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    move-result-object v9

    sget-object v10, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->Slice:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    if-eq v9, v10, :cond_c

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    :goto_b
    move v7, v6

    .line 2916
    goto/16 :goto_8

    .line 2915
    :cond_c
    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    goto :goto_b

    .line 2926
    :cond_d
    iget v0, v4, Lcom/caverock/androidsvg/SVG$Box;->width:F

    mul-float v9, v0, v7

    .line 2927
    iget v0, v4, Lcom/caverock/androidsvg/SVG$Box;->height:F

    mul-float v4, v0, v6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2930
    invoke-static {}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$PreserveAspectRatio$Alignment()[I

    move-result-object v10

    invoke-virtual {v5}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getAlignment()Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v11

    invoke-virtual {v11}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 2944
    :goto_c
    :pswitch_0
    invoke-static {}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$PreserveAspectRatio$Alignment()[I

    move-result-object v9

    .line 2947
    invoke-virtual {v5}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getAlignment()Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v5

    aget v5, v9, v5

    packed-switch v5, :pswitch_data_1

    .line 2963
    :goto_d
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    goto/16 :goto_9

    .line 2935
    :pswitch_1
    sub-float v0, v2, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v0, v9

    const/4 v9, 0x0

    sub-float v0, v9, v0

    goto :goto_c

    .line 2940
    :pswitch_2
    sub-float v0, v2, v9

    const/4 v9, 0x0

    sub-float v0, v9, v0

    goto :goto_c

    .line 2952
    :pswitch_3
    sub-float v1, v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    const/4 v4, 0x0

    sub-float v1, v4, v1

    goto :goto_d

    .line 2957
    :pswitch_4
    sub-float v1, v3, v4

    const/4 v4, 0x0

    sub-float v1, v4, v1

    goto :goto_d

    .line 2975
    :cond_e
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto/16 :goto_a

    .line 2930
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2947
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private renderMarkers(Lcom/caverock/androidsvg/SVG$GraphicsElement;)V
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 2799
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2806
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    if-nez v0, :cond_3

    move-object v1, v2

    .line 2814
    :goto_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    if-nez v0, :cond_5

    move-object v3, v2

    .line 2822
    :goto_1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    if-nez v0, :cond_7

    move-object v4, v2

    .line 2831
    :goto_2
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Path;

    if-nez v0, :cond_9

    .line 2833
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Line;

    if-nez v0, :cond_a

    .line 2836
    check-cast p1, Lcom/caverock/androidsvg/SVG$PolyLine;

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateMarkerPositions(Lcom/caverock/androidsvg/SVG$PolyLine;)Ljava/util/List;

    move-result-object v0

    move-object v6, v0

    .line 2838
    :goto_3
    if-eqz v6, :cond_b

    .line 2841
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 2842
    if-eqz v7, :cond_c

    .line 2846
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v8, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v9, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iput-object v2, v9, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    iput-object v2, v8, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    iput-object v2, v0, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    .line 2848
    if-nez v1, :cond_d

    .line 2851
    :goto_4
    if-nez v3, :cond_e

    .line 2858
    :cond_1
    if-nez v4, :cond_f

    .line 2860
    :goto_5
    return-void

    .line 2799
    :cond_2
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2800
    return-void

    .line 2807
    :cond_3
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    .line 2808
    if-nez v0, :cond_4

    const-string/jumbo v0, "Marker reference \'%s\' not found"

    .line 2811
    new-array v1, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    aput-object v3, v1, v10

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v2

    goto :goto_0

    .line 2809
    :cond_4
    check-cast v0, Lcom/caverock/androidsvg/SVG$Marker;

    move-object v1, v0

    goto :goto_0

    .line 2815
    :cond_5
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    .line 2816
    if-nez v0, :cond_6

    const-string/jumbo v0, "Marker reference \'%s\' not found"

    .line 2819
    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    aput-object v4, v3, v10

    invoke-static {v0, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v3, v2

    goto/16 :goto_1

    .line 2817
    :cond_6
    check-cast v0, Lcom/caverock/androidsvg/SVG$Marker;

    move-object v3, v0

    goto/16 :goto_1

    .line 2823
    :cond_7
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    .line 2824
    if-nez v0, :cond_8

    const-string/jumbo v0, "Marker reference \'%s\' not found"

    .line 2827
    new-array v4, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    aput-object v6, v4, v10

    invoke-static {v0, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v2

    goto/16 :goto_2

    .line 2825
    :cond_8
    check-cast v0, Lcom/caverock/androidsvg/SVG$Marker;

    move-object v4, v0

    goto/16 :goto_2

    .line 2832
    :cond_9
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;

    check-cast p1, Lcom/caverock/androidsvg/SVG$Path;

    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    invoke-direct {v0, p0, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVG$PathDefinition;)V

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->getMarkers()Ljava/util/List;

    move-result-object v0

    move-object v6, v0

    goto/16 :goto_3

    .line 2834
    :cond_a
    check-cast p1, Lcom/caverock/androidsvg/SVG$Line;

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateMarkerPositions(Lcom/caverock/androidsvg/SVG$Line;)Ljava/util/List;

    move-result-object v0

    move-object v6, v0

    goto/16 :goto_3

    .line 2839
    :cond_b
    return-void

    .line 2843
    :cond_c
    return-void

    .line 2849
    :cond_d
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarker(Lcom/caverock/androidsvg/SVG$Marker;Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V

    goto/16 :goto_4

    :cond_e
    move v1, v5

    .line 2853
    :goto_6
    add-int/lit8 v0, v7, -0x1

    if-ge v1, v0, :cond_1

    .line 2854
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-direct {p0, v3, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarker(Lcom/caverock/androidsvg/SVG$Marker;Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V

    .line 2853
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 2859
    :cond_f
    add-int/lit8 v0, v7, -0x1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-direct {p0, v4, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarker(Lcom/caverock/androidsvg/SVG$Marker;Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V

    goto/16 :goto_5
.end method

.method private renderMask(Lcom/caverock/androidsvg/SVG$Mask;Lcom/caverock/androidsvg/SVG$SvgElement;)V
    .locals 12

    .prologue
    const v2, -0x42333333    # -0.1f

    const-wide v10, 0x3fb999999999999aL    # 0.1

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const-string/jumbo v0, "Mask render"

    .line 4073
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4075
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Mask;->maskUnitsAreUser:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    :cond_0
    move v0, v1

    .line 4078
    :goto_0
    if-nez v0, :cond_3

    .line 4088
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Mask;->x:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_8

    move v0, v2

    .line 4089
    :goto_1
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Mask;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v3, :cond_9

    .line 4090
    :goto_2
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Mask;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v3, :cond_a

    const v3, 0x3f99999a    # 1.2f

    .line 4091
    :goto_3
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Mask;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v4, :cond_b

    const v4, 0x3f99999a    # 1.2f

    .line 4092
    :goto_4
    iget-object v5, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v5, v5, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget-object v6, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v6, v6, Lcom/caverock/androidsvg/SVG$Box;->width:F

    mul-float/2addr v0, v6

    add-float/2addr v0, v5

    .line 4093
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    iget-object v5, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v5, v5, Lcom/caverock/androidsvg/SVG$Box;->height:F

    mul-float/2addr v2, v5

    add-float/2addr v0, v2

    .line 4094
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    mul-float/2addr v0, v3

    .line 4095
    iget-object v2, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v2, v2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    mul-float/2addr v2, v4

    :goto_5
    const/4 v3, 0x0

    .line 4097
    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, v2, v0

    if-nez v0, :cond_c

    .line 4098
    :cond_1
    return-void

    .line 4075
    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Mask;->maskUnitsAreUser:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 4080
    :cond_3
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Mask;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_4

    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 4081
    :goto_6
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v2, :cond_5

    iget-object v2, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v2, v2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 4082
    :goto_7
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Mask;->x:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v3, :cond_6

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v3, v3, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    float-to-double v4, v3

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v3, v3, Lcom/caverock/androidsvg/SVG$Box;->width:F

    float-to-double v6, v3

    mul-double/2addr v6, v10

    sub-double/2addr v4, v6

    double-to-float v3, v4

    .line 4083
    :goto_8
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Mask;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v3, :cond_7

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v3, v3, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    float-to-double v4, v3

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v3, v3, Lcom/caverock/androidsvg/SVG$Box;->height:F

    float-to-double v6, v3

    mul-double/2addr v6, v10

    sub-double/2addr v4, v6

    double-to-float v3, v4

    goto :goto_5

    .line 4080
    :cond_4
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Mask;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    goto :goto_6

    .line 4081
    :cond_5
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    goto :goto_7

    .line 4082
    :cond_6
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Mask;->x:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v3, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    goto :goto_8

    .line 4083
    :cond_7
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Mask;->y:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v3, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    goto :goto_5

    .line 4088
    :cond_8
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Mask;->x:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0, v8}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v0

    goto/16 :goto_1

    .line 4089
    :cond_9
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->y:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2, p0, v8}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v2

    goto/16 :goto_2

    .line 4090
    :cond_a
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Mask;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v3, p0, v8}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v3

    goto/16 :goto_3

    .line 4091
    :cond_b
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Mask;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, p0, v8}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v4

    goto/16 :goto_4

    .line 4101
    :cond_c
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 4103
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 4107
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    .line 4110
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Mask;->maskContentUnitsAreUser:Ljava/lang/Boolean;

    if-nez v0, :cond_e

    :cond_d
    const/4 v0, 0x1

    .line 4111
    :goto_9
    if-eqz v0, :cond_f

    .line 4117
    :goto_a
    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V

    .line 4120
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 4121
    return-void

    .line 4110
    :cond_e
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Mask;->maskContentUnitsAreUser:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    move v0, v1

    goto :goto_9

    .line 4112
    :cond_f
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v2, v2, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v3, v3, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4113
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v2, v2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v3, v3, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_a
.end method

.method private renderSwitchChild(Lcom/caverock/androidsvg/SVG$Switch;)V
    .locals 8

    .prologue
    .line 826
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 827
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG;->getFileResolver()Lcom/caverock/androidsvg/SVGExternalFileResolver;

    move-result-object v4

    .line 830
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG$Switch;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 833
    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$SvgConditional;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 836
    check-cast v1, Lcom/caverock/androidsvg/SVG$SvgConditional;

    .line 839
    invoke-interface {v1}, Lcom/caverock/androidsvg/SVG$SvgConditional;->getRequiredExtensions()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 843
    invoke-interface {v1}, Lcom/caverock/androidsvg/SVG$SvgConditional;->getSystemLanguage()Ljava/util/Set;

    move-result-object v2

    .line 844
    if-nez v2, :cond_4

    .line 848
    :goto_0
    invoke-interface {v1}, Lcom/caverock/androidsvg/SVG$SvgConditional;->getRequiredFeatures()Ljava/util/Set;

    move-result-object v2

    .line 849
    if-nez v2, :cond_5

    .line 853
    :goto_1
    invoke-interface {v1}, Lcom/caverock/androidsvg/SVG$SvgConditional;->getRequiredFormats()Ljava/util/Set;

    move-result-object v2

    .line 854
    if-nez v2, :cond_6

    .line 863
    :cond_1
    invoke-interface {v1}, Lcom/caverock/androidsvg/SVG$SvgConditional;->getRequiredFonts()Ljava/util/Set;

    move-result-object v1

    .line 864
    if-nez v1, :cond_7

    .line 874
    :cond_2
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 877
    :cond_3
    return-void

    .line 844
    :cond_4
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 849
    :cond_5
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 855
    :cond_6
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v4, :cond_0

    .line 857
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 858
    invoke-virtual {v4, v2}, Lcom/caverock/androidsvg/SVGExternalFileResolver;->isFormatSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 865
    :cond_7
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v4, :cond_0

    .line 867
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 868
    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v1, v6, v7}, Lcom/caverock/androidsvg/SVGExternalFileResolver;->resolveFont(Ljava/lang/String;ILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_3
.end method

.method private renderTextPath(Lcom/caverock/androidsvg/SVG$TextPath;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const-string/jumbo v0, "TextPath render"

    .line 1525
    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1527
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1529
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1531
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1534
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPath;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$TextPath;->href:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    .line 1535
    if-eqz v0, :cond_2

    .line 1541
    check-cast v0, Lcom/caverock/androidsvg/SVG$Path;

    .line 1542
    new-instance v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    invoke-direct {v2, p0, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVG$PathDefinition;)V

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->getPath()Landroid/graphics/Path;

    move-result-object v3

    .line 1544
    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    if-nez v2, :cond_3

    .line 1547
    :goto_0
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0, v3, v4}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 1549
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$TextPath;->startOffset:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v2, :cond_4

    move v0, v1

    .line 1552
    :goto_1
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getAnchorPosition()Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    move-result-object v2

    .line 1553
    sget-object v4, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-ne v2, v4, :cond_5

    move v2, v0

    .line 1562
    :goto_2
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG$TextPath;->getTextRoot()Lcom/caverock/androidsvg/SVG$TextRoot;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgElement;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1564
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v0

    .line 1566
    new-instance v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;

    invoke-direct {v4, p0, v3, v2, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Landroid/graphics/Path;FF)V

    invoke-direct {p0, p1, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 1568
    if-nez v0, :cond_7

    .line 1570
    :goto_3
    return-void

    .line 1530
    :cond_0
    return-void

    .line 1532
    :cond_1
    return-void

    :cond_2
    const-string/jumbo v0, "TextPath reference \'%s\' not found"

    const/4 v1, 0x1

    .line 1537
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$TextPath;->href:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1538
    return-void

    .line 1545
    :cond_3
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 1549
    :cond_4
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$TextPath;->startOffset:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    invoke-virtual {v2, p0, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v0

    goto :goto_1

    .line 1554
    :cond_5
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateTextWidth(Lcom/caverock/androidsvg/SVG$TextContainer;)F

    move-result v4

    .line 1555
    sget-object v5, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-eq v2, v5, :cond_6

    .line 1558
    sub-float/2addr v0, v4

    move v2, v0

    goto :goto_2

    :cond_6
    const/high16 v2, 0x40000000    # 2.0f

    .line 1556
    div-float v2, v4, v2

    sub-float/2addr v0, v2

    move v2, v0

    .line 1557
    goto :goto_2

    .line 1569
    :cond_7
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_3
.end method

.method private requiresCompositing()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 726
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 729
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    move v0, v1

    :goto_1
    if-nez v0, :cond_5

    .line 730
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 729
    :cond_1
    return v2

    .line 726
    :cond_2
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->directRendering:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "Masks are not supported when using getPicture()"

    .line 727
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 729
    goto :goto_1

    .line 730
    :cond_4
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->directRendering:Z

    if-eqz v0, :cond_1

    .line 729
    :cond_5
    return v1
.end method

.method private resetState()V
    .locals 2

    .prologue
    .line 173
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 174
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    .line 177
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style;->getDefaultStyle()Lcom/caverock/androidsvg/SVG$Style;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    .line 179
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvasViewPort:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 181
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->spacePreserve:Z

    .line 182
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->directRenderingMode:Z

    iput-boolean v1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->directRendering:Z

    .line 185
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvasStack:Ljava/util/Stack;

    .line 189
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->bitmapStack:Ljava/util/Stack;

    .line 193
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/util/Stack;

    .line 194
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/util/Stack;

    .line 195
    return-void
.end method

.method private setClipRect(FFFF)V
    .locals 3

    .prologue
    .line 2346
    add-float v1, p1, p3

    .line 2347
    add-float v0, p2, p4

    .line 2349
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    if-nez v2, :cond_0

    .line 2356
    :goto_0
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, p1, p2, v1, v0}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 2357
    return-void

    .line 2350
    :cond_0
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$CSSClipRect;->left:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    add-float/2addr p1, v2

    .line 2351
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$CSSClipRect;->top:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    add-float/2addr p2, v2

    .line 2352
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$CSSClipRect;->right:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    sub-float/2addr v1, v2

    .line 2353
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$CSSClipRect;->bottom:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    sub-float/2addr v0, v2

    goto :goto_0
.end method

.method private setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V
    .locals 2

    .prologue
    .line 2279
    if-nez p2, :cond_0

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 2281
    instance-of v0, p3, Lcom/caverock/androidsvg/SVG$Colour;

    if-nez v0, :cond_1

    .line 2283
    instance-of v0, p3, Lcom/caverock/androidsvg/SVG$CurrentColor;

    if-nez v0, :cond_2

    .line 2286
    return-void

    .line 2279
    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    goto :goto_0

    .line 2282
    :cond_1
    check-cast p3, Lcom/caverock/androidsvg/SVG$Colour;

    iget v0, p3, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    .line 2288
    :goto_1
    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clamp255(F)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 2289
    if-nez p2, :cond_3

    .line 2292
    iget-object v1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2293
    :goto_2
    return-void

    .line 2284
    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->color:Lcom/caverock/androidsvg/SVG$Colour;

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    goto :goto_1

    .line 2290
    :cond_3
    iget-object v1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2
.end method

.method private setSolidColor(ZLcom/caverock/androidsvg/SVG$SolidColor;)V
    .locals 8

    .prologue
    const-wide v6, 0x100000000L

    const-wide v4, 0x80000000L

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3374
    if-nez p1, :cond_1

    .line 3395
    iget-object v2, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, v2, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v2

    if-nez v2, :cond_5

    .line 3401
    :goto_0
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, v0, v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3407
    :goto_1
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    const-wide v2, 0x180000000L

    invoke-direct {p0, v0, v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-nez v0, :cond_8

    .line 3413
    :cond_0
    :goto_2
    return-void

    .line 3376
    :cond_1
    iget-object v2, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, v2, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3382
    :goto_3
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, v0, v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3388
    :goto_4
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    const-wide v2, 0x180000000L

    invoke-direct {p0, v0, v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3390
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    invoke-direct {p0, v0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V

    goto :goto_2

    .line 3378
    :cond_2
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v3, v2, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 3379
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    if-nez v3, :cond_3

    :goto_5
    iput-boolean v0, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_5

    .line 3384
    :cond_4
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->solidOpacity:Ljava/lang/Float;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    goto :goto_4

    .line 3397
    :cond_5
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v3, v2, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 3398
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    if-nez v3, :cond_6

    :goto_6
    iput-boolean v0, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_6

    .line 3403
    :cond_7
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->solidOpacity:Ljava/lang/Float;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    goto :goto_1

    .line 3409
    :cond_8
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    invoke-direct {p0, v0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V

    goto :goto_2
.end method

.method private statePop()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 357
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 358
    return-void
.end method

.method private statePush()V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 347
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 349
    return-void
.end method

.method private textXMLSpaceTransform(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1719
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->spacePreserve:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "\\n"

    const-string/jumbo v1, ""

    .line 1723
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\\t"

    const-string/jumbo v2, " "

    .line 1724
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1726
    if-nez p2, :cond_1

    .line 1728
    :goto_0
    if-nez p3, :cond_2

    :goto_1
    const-string/jumbo v1, "\\s{2,}"

    const-string/jumbo v2, " "

    .line 1730
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "[\\n\\t]"

    const-string/jumbo v1, " "

    .line 1720
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string/jumbo v1, "^\\s+"

    const-string/jumbo v2, ""

    .line 1727
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "\\s+$"

    const-string/jumbo v2, ""

    .line 1729
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v1, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 632
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v0, :cond_1

    .line 638
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 640
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 663
    :goto_0
    return-void

    .line 633
    :cond_0
    return-void

    .line 635
    :cond_1
    return-void

    :cond_2
    const/16 v0, 0x8

    .line 641
    new-array v3, v0, [F

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    aput v0, v3, v5

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    aput v0, v3, v6

    .line 642
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v0

    aput v0, v3, v1

    const/4 v0, 0x3

    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v4, v4, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    aput v4, v3, v0

    const/4 v0, 0x4

    .line 643
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v4

    aput v4, v3, v0

    const/4 v0, 0x5

    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v4

    aput v4, v3, v0

    .line 644
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    aput v0, v3, v7

    const/4 v0, 0x7

    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v4

    aput v4, v3, v0

    .line 646
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 647
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 649
    new-instance v2, Landroid/graphics/RectF;

    aget v0, v3, v5

    aget v4, v3, v6

    aget v5, v3, v5

    aget v6, v3, v6

    invoke-direct {v2, v0, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    move v0, v1

    .line 650
    :goto_1
    if-gt v0, v7, :cond_7

    .line 651
    aget v1, v3, v0

    iget v4, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_3

    aget v1, v3, v0

    iput v1, v2, Landroid/graphics/RectF;->left:F

    .line 652
    :cond_3
    aget v1, v3, v0

    iget v4, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_4

    aget v1, v3, v0

    iput v1, v2, Landroid/graphics/RectF;->right:F

    .line 653
    :cond_4
    add-int/lit8 v1, v0, 0x1

    aget v1, v3, v1

    iget v4, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_5

    add-int/lit8 v1, v0, 0x1

    aget v1, v3, v1

    iput v1, v2, Landroid/graphics/RectF;->top:F

    .line 654
    :cond_5
    add-int/lit8 v1, v0, 0x1

    aget v1, v3, v1

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_6

    add-int/lit8 v1, v0, 0x1

    aget v1, v3, v1

    iput v1, v2, Landroid/graphics/RectF;->bottom:F

    .line 650
    :cond_6
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 657
    :cond_7
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgElement;

    .line 658
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v1, :cond_8

    .line 661
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v1, v2, Landroid/graphics/RectF;->left:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v1, v3, v4, v2}, Lcom/caverock/androidsvg/SVG$Box;->fromLimits(FFFF)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG$Box;->union(Lcom/caverock/androidsvg/SVG$Box;)V

    goto/16 :goto_0

    .line 659
    :cond_8
    iget v1, v2, Landroid/graphics/RectF;->left:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v1, v3, v4, v2}, Lcom/caverock/androidsvg/SVG$Box;->fromLimits(FFFF)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v1

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    goto/16 :goto_0
.end method

.method private updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V
    .locals 11

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    const-wide/16 v8, 0x1000

    .line 1979
    invoke-direct {p0, p2, v8, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    const-wide/16 v8, 0x800

    .line 1984
    invoke-direct {p0, p2, v8, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    const-wide/16 v8, 0x1

    .line 1989
    invoke-direct {p0, p2, v8, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_2
    const-wide/16 v8, 0x4

    .line 1995
    invoke-direct {p0, p2, v8, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-nez v0, :cond_5

    :goto_3
    const-wide/16 v8, 0x1805

    .line 2001
    invoke-direct {p0, p2, v8, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-nez v0, :cond_6

    :goto_4
    const-wide/16 v8, 0x2

    .line 2006
    invoke-direct {p0, p2, v8, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_5
    const-wide/16 v8, 0x8

    .line 2012
    invoke-direct {p0, p2, v8, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-nez v0, :cond_8

    :goto_6
    const-wide/16 v8, 0x10

    .line 2018
    invoke-direct {p0, p2, v8, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-nez v0, :cond_a

    :goto_7
    const-wide/16 v8, 0x1818

    .line 2023
    invoke-direct {p0, p2, v8, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-nez v0, :cond_b

    :goto_8
    const-wide v8, 0x800000000L

    .line 2028
    invoke-direct {p0, p2, v8, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-nez v0, :cond_c

    :goto_9
    const-wide/16 v8, 0x20

    .line 2033
    invoke-direct {p0, p2, v8, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-nez v0, :cond_d

    :goto_a
    const-wide/16 v8, 0x40

    .line 2039
    invoke-direct {p0, p2, v8, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-nez v0, :cond_e

    :goto_b
    const-wide/16 v8, 0x80

    .line 2058
    invoke-direct {p0, p2, v8, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-nez v0, :cond_f

    :goto_c
    const-wide/16 v8, 0x100

    .line 2077
    invoke-direct {p0, p2, v8, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-nez v0, :cond_10

    :goto_d
    const-wide/16 v8, 0x200

    .line 2083
    invoke-direct {p0, p2, v8, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-nez v0, :cond_11

    :goto_e
    const-wide/16 v8, 0x400

    .line 2088
    invoke-direct {p0, p2, v8, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-nez v0, :cond_12

    :goto_f
    const-wide/16 v8, 0x600

    .line 2093
    invoke-direct {p0, p2, v8, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-nez v0, :cond_13

    :goto_10
    const-wide/16 v6, 0x4000

    .line 2126
    invoke-direct {p0, p2, v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-nez v0, :cond_19

    :goto_11
    const-wide/16 v6, 0x2000

    .line 2134
    invoke-direct {p0, p2, v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-nez v0, :cond_1a

    :goto_12
    const-wide/32 v6, 0x8000

    .line 2139
    invoke-direct {p0, p2, v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-nez v0, :cond_1b

    :goto_13
    const-wide/32 v6, 0x10000

    .line 2150
    invoke-direct {p0, p2, v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-nez v0, :cond_20

    :goto_14
    const-wide/32 v6, 0x1a000

    .line 2156
    invoke-direct {p0, p2, v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-nez v0, :cond_21

    :goto_15
    const-wide/32 v4, 0x20000

    .line 2181
    invoke-direct {p0, p2, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-nez v0, :cond_28

    :cond_0
    :goto_16
    const-wide v0, 0x1000000000L

    .line 2194
    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-nez v0, :cond_2d

    :goto_17
    const-wide/32 v0, 0x40000

    .line 2199
    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-nez v0, :cond_2e

    :goto_18
    const-wide/32 v0, 0x80000

    .line 2204
    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-nez v0, :cond_2f

    :goto_19
    const-wide/32 v0, 0x200000

    .line 2209
    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-nez v0, :cond_30

    :goto_1a
    const-wide/32 v0, 0x400000

    .line 2214
    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-nez v0, :cond_31

    :goto_1b
    const-wide/32 v0, 0x800000

    .line 2219
    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-nez v0, :cond_32

    :goto_1c
    const-wide/32 v0, 0x1000000

    .line 2224
    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-nez v0, :cond_33

    :goto_1d
    const-wide/32 v0, 0x2000000

    .line 2229
    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-nez v0, :cond_34

    :goto_1e
    const-wide/32 v0, 0x100000

    .line 2234
    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-nez v0, :cond_35

    :goto_1f
    const-wide/32 v0, 0x10000000

    .line 2239
    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-nez v0, :cond_36

    :goto_20
    const-wide/32 v0, 0x20000000

    .line 2244
    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-nez v0, :cond_37

    :goto_21
    const-wide/32 v0, 0x40000000

    .line 2249
    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-nez v0, :cond_38

    :goto_22
    const-wide/32 v0, 0x4000000

    .line 2254
    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-nez v0, :cond_39

    :goto_23
    const-wide/32 v0, 0x8000000

    .line 2259
    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-nez v0, :cond_3a

    :goto_24
    const-wide v0, 0x200000000L

    .line 2264
    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-nez v0, :cond_3b

    :goto_25
    const-wide v0, 0x400000000L

    .line 2269
    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 2274
    :goto_26
    return-void

    .line 1981
    :cond_1
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->color:Lcom/caverock/androidsvg/SVG$Colour;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->color:Lcom/caverock/androidsvg/SVG$Colour;

    goto/16 :goto_0

    .line 1986
    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    goto/16 :goto_1

    .line 1991
    :cond_3
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 1992
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    if-nez v0, :cond_4

    move v0, v1

    :goto_27
    iput-boolean v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    goto/16 :goto_2

    :cond_4
    move v0, v2

    goto :goto_27

    .line 1997
    :cond_5
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    goto/16 :goto_3

    .line 2003
    :cond_6
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    invoke-direct {p0, p1, v2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V

    goto/16 :goto_4

    .line 2008
    :cond_7
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->fillRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->fillRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    goto/16 :goto_5

    .line 2014
    :cond_8
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 2015
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    if-nez v0, :cond_9

    move v0, v1

    :goto_28
    iput-boolean v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    goto/16 :goto_6

    :cond_9
    move v0, v2

    goto :goto_28

    .line 2020
    :cond_a
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    goto/16 :goto_7

    .line 2025
    :cond_b
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    invoke-direct {p0, p1, v1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V

    goto/16 :goto_8

    .line 2030
    :cond_c
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->vectorEffect:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->vectorEffect:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    goto/16 :goto_9

    .line 2035
    :cond_d
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    .line 2036
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    iget-object v3, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v3, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/16 :goto_a

    .line 2041
    :cond_e
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeLineCap:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeLineCap:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    .line 2042
    invoke-static {}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$LineCaps()[I

    move-result-object v0

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeLineCap:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_b

    .line 2045
    :pswitch_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto/16 :goto_b

    .line 2048
    :pswitch_1
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto/16 :goto_b

    .line 2051
    :pswitch_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto/16 :goto_b

    .line 2060
    :cond_f
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeLineJoin:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeLineJoin:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    .line 2061
    invoke-static {}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$LineJoin()[I

    move-result-object v0

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeLineJoin:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_c

    .line 2064
    :pswitch_3
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto/16 :goto_c

    .line 2067
    :pswitch_4
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto/16 :goto_c

    .line 2070
    :pswitch_5
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto/16 :goto_c

    .line 2079
    :cond_10
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeMiterLimit:Ljava/lang/Float;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeMiterLimit:Ljava/lang/Float;

    .line 2080
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeMiterLimit:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    goto/16 :goto_d

    .line 2085
    :cond_11
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    goto/16 :goto_e

    .line 2090
    :cond_12
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeDashOffset:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashOffset:Lcom/caverock/androidsvg/SVG$Length;

    goto/16 :goto_f

    .line 2096
    :cond_13
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_14

    .line 2103
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    array-length v3, v0

    .line 2106
    rem-int/lit8 v0, v3, 0x2

    if-eqz v0, :cond_15

    mul-int/lit8 v0, v3, 0x2

    .line 2107
    :goto_29
    new-array v8, v0, [F

    move v5, v1

    move v6, v7

    .line 2108
    :goto_2a
    if-ge v5, v0, :cond_16

    .line 2109
    iget-object v9, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    rem-int v10, v5, v3

    aget-object v9, v9, v10

    invoke-virtual {v9, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v9

    aput v9, v8, v5

    .line 2110
    aget v9, v8, v5

    add-float/2addr v6, v9

    .line 2108
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    .line 2098
    :cond_14
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto/16 :goto_10

    :cond_15
    move v0, v3

    .line 2106
    goto :goto_29

    .line 2112
    :cond_16
    cmpl-float v0, v6, v7

    if-nez v0, :cond_17

    .line 2113
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto/16 :goto_10

    .line 2115
    :cond_17
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashOffset:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    .line 2116
    cmpg-float v3, v0, v7

    if-gez v3, :cond_18

    .line 2119
    rem-float/2addr v0, v6

    add-float/2addr v0, v6

    .line 2121
    :cond_18
    iget-object v3, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/DashPathEffect;

    invoke-direct {v5, v8, v0}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto/16 :goto_10

    .line 2128
    :cond_19
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCurrentFontSize()F

    move-result v0

    .line 2129
    iget-object v3, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v5, p2, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v5, v3, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    .line 2130
    iget-object v3, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    iget-object v5, p2, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v5, p0, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2131
    iget-object v3, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    iget-object v5, p2, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v5, p0, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_11

    .line 2136
    :cond_1a
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    goto/16 :goto_12

    .line 2142
    :cond_1b
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1e

    .line 2144
    :cond_1c
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v2, :cond_1f

    .line 2147
    :cond_1d
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    goto/16 :goto_13

    .line 2142
    :cond_1e
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0x64

    if-le v0, v3, :cond_1c

    .line 2143
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    goto/16 :goto_13

    .line 2144
    :cond_1f
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0x384

    if-ge v0, v3, :cond_1d

    .line 2145
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    goto/16 :goto_13

    .line 2152
    :cond_20
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    goto/16 :goto_14

    .line 2161
    :cond_21
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    if-nez v0, :cond_24

    :cond_22
    move-object v0, v4

    .line 2173
    :cond_23
    if-eqz v0, :cond_27

    .line 2177
    :goto_2b
    iget-object v3, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2178
    iget-object v3, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_15

    .line 2161
    :cond_24
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    if-eqz v0, :cond_22

    .line 2162
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG;->getFileResolver()Lcom/caverock/androidsvg/SVGExternalFileResolver;

    move-result-object v5

    .line 2164
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v0, v4

    :goto_2c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2165
    iget-object v3, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    iget-object v4, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    invoke-direct {p0, v0, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkGenericFont(Ljava/lang/String;Ljava/lang/Integer;Lcom/caverock/androidsvg/SVG$Style$FontStyle;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 2166
    if-eqz v3, :cond_26

    :cond_25
    move-object v0, v3

    .line 2169
    :goto_2d
    if-nez v0, :cond_23

    goto :goto_2c

    .line 2166
    :cond_26
    if-eqz v5, :cond_25

    .line 2167
    iget-object v3, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v0, v3, v4}, Lcom/caverock/androidsvg/SVGExternalFileResolver;->resolveFont(Ljava/lang/String;ILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2d

    :cond_27
    const-string/jumbo v0, "sans-serif"

    .line 2175
    iget-object v3, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    iget-object v4, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    invoke-direct {p0, v0, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkGenericFont(Ljava/lang/String;Ljava/lang/Integer;Lcom/caverock/androidsvg/SVG$Style$FontStyle;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2b

    .line 2183
    :cond_28
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    .line 2184
    iget-object v3, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    sget-object v4, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->LineThrough:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    if-eq v0, v4, :cond_29

    move v0, v1

    :goto_2e
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    .line 2185
    iget-object v3, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    sget-object v4, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Underline:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    if-eq v0, v4, :cond_2a

    move v0, v1

    :goto_2f
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 2188
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_0

    .line 2189
    iget-object v3, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    sget-object v4, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->LineThrough:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    if-eq v0, v4, :cond_2b

    move v0, v1

    :goto_30
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    .line 2190
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    sget-object v4, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Underline:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    if-eq v3, v4, :cond_2c

    :goto_31
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    goto/16 :goto_16

    :cond_29
    move v0, v2

    .line 2184
    goto :goto_2e

    :cond_2a
    move v0, v2

    .line 2185
    goto :goto_2f

    :cond_2b
    move v0, v2

    .line 2189
    goto :goto_30

    :cond_2c
    move v1, v2

    .line 2190
    goto :goto_31

    .line 2196
    :cond_2d
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->direction:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->direction:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    goto/16 :goto_17

    .line 2201
    :cond_2e
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    goto/16 :goto_18

    .line 2206
    :cond_2f
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    goto/16 :goto_19

    .line 2211
    :cond_30
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    goto/16 :goto_1a

    .line 2216
    :cond_31
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    goto/16 :goto_1b

    .line 2221
    :cond_32
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    goto/16 :goto_1c

    .line 2226
    :cond_33
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    goto/16 :goto_1d

    .line 2231
    :cond_34
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    goto/16 :goto_1e

    .line 2236
    :cond_35
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    goto/16 :goto_1f

    .line 2241
    :cond_36
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    goto/16 :goto_20

    .line 2246
    :cond_37
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->clipRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->clipRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    goto/16 :goto_21

    .line 2251
    :cond_38
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    goto/16 :goto_22

    .line 2256
    :cond_39
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    goto/16 :goto_23

    .line 2261
    :cond_3a
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    goto/16 :goto_24

    .line 2266
    :cond_3b
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    goto/16 :goto_25

    .line 2271
    :cond_3c
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    goto/16 :goto_26

    .line 2042
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2061
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 384
    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_1

    .line 385
    :goto_0
    iget-object v1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG$Style;->resetNonInheritingProperties(Z)V

    .line 388
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    if-nez v0, :cond_2

    .line 392
    :goto_1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG;->hasCSSRules()Z

    move-result v0

    if-nez v0, :cond_3

    .line 403
    :cond_0
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->style:Lcom/caverock/androidsvg/SVG$Style;

    if-nez v0, :cond_5

    .line 405
    :goto_2
    return-void

    :cond_1
    const/4 v0, 0x1

    .line 384
    goto :goto_0

    .line 389
    :cond_2
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    goto :goto_1

    .line 394
    :cond_3
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG;->getCSSRules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/CSSParser$Rule;

    .line 396
    iget-object v2, v0, Lcom/caverock/androidsvg/CSSParser$Rule;->selector:Lcom/caverock/androidsvg/CSSParser$Selector;

    invoke-static {v2, p2}, Lcom/caverock/androidsvg/CSSParser;->ruleMatch(Lcom/caverock/androidsvg/CSSParser$Selector;Lcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 397
    iget-object v0, v0, Lcom/caverock/androidsvg/CSSParser$Rule;->style:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    goto :goto_3

    .line 404
    :cond_5
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->style:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    goto :goto_2
.end method

.method private viewportFill()V
    .locals 2

    .prologue
    .line 2366
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$Colour;

    if-nez v0, :cond_0

    .line 2368
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$CurrentColor;

    if-nez v0, :cond_1

    .line 2371
    return-void

    .line 2367
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    check-cast v0, Lcom/caverock/androidsvg/SVG$Colour;

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    .line 2373
    :goto_0
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    if-nez v1, :cond_2

    .line 2376
    :goto_1
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 2377
    return-void

    .line 2369
    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->color:Lcom/caverock/androidsvg/SVG$Colour;

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    goto :goto_0

    .line 2374
    :cond_2
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clamp255(F)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    goto :goto_1
.end method

.method private visible()Z
    .locals 1

    .prologue
    .line 1879
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 1881
    const/4 v0, 0x1

    return v0

    .line 1880
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    const-string/jumbo v0, "SVGAndroidRenderer"

    .line 492
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    return-void
.end method


# virtual methods
.method protected getCurrentFontSize()F
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    return v0
.end method

.method protected getCurrentFontXHeight()F
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method protected getCurrentViewPortInUserUnits()Lcom/caverock/androidsvg/SVG$Box;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    return-object v0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    return-object v0
.end method

.method protected getDPI()F
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->dpi:F

    return v0
.end method

.method protected renderDocument(Lcom/caverock/androidsvg/SVG;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;Z)V
    .locals 6

    .prologue
    .line 251
    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    .line 252
    iput-boolean p4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->directRenderingMode:Z

    .line 254
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG;->getRootElement()Lcom/caverock/androidsvg/SVG$Svg;

    move-result-object v1

    .line 256
    if-eqz v1, :cond_0

    .line 262
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->resetState()V

    .line 264
    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkXMLSpaceAttribute(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 267
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v3, v1, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 268
    if-nez p2, :cond_1

    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 269
    :goto_0
    if-nez p3, :cond_2

    iget-object v5, v1, Lcom/caverock/androidsvg/SVG$Svg;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    :goto_1
    move-object v0, p0

    .line 267
    invoke-direct/range {v0 .. v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Svg;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)V

    .line 270
    return-void

    :cond_0
    const-string/jumbo v0, "Nothing to render. Document is empty."

    const/4 v1, 0x0

    .line 257
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    return-void

    :cond_1
    move-object v4, p2

    .line 268
    goto :goto_0

    :cond_2
    move-object v5, p3

    .line 269
    goto :goto_1
.end method
