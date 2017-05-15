.class public Lcom/oneplus/settings/opfinger/SvgHelper;
.super Ljava/lang/Object;
.source "SvgHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SVG"


# instance fields
.field private final mPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;",
            ">;"
        }
    .end annotation
.end field

.field private final mSourcePaint:Landroid/graphics/Paint;

.field private mSvg:Lcom/caverock/androidsvg/SVG;


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "sourcePaint"    # Landroid/graphics/Paint;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/SvgHelper;->mPaths:Ljava/util/List;

    .line 24
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/SvgHelper;->mSourcePaint:Landroid/graphics/Paint;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/opfinger/SvgHelper;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/opfinger/SvgHelper;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgHelper;->mSourcePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/opfinger/SvgHelper;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/opfinger/SvgHelper;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgHelper;->mPaths:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getPathsForViewport(II)Ljava/util/List;
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;",
            ">;"
        }
    .end annotation

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 63
    iget-object v3, p0, Lcom/oneplus/settings/opfinger/SvgHelper;->mPaths:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 65
    new-instance v0, Lcom/oneplus/settings/opfinger/SvgHelper$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/settings/opfinger/SvgHelper$1;-><init>(Lcom/oneplus/settings/opfinger/SvgHelper;II)V

    .line 90
    .local v0, "canvas":Landroid/graphics/Canvas;
    iget-object v3, p0, Lcom/oneplus/settings/opfinger/SvgHelper;->mSvg:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG;->getDocumentViewBox()Landroid/graphics/RectF;

    move-result-object v2

    .line 91
    .local v2, "viewBox":Landroid/graphics/RectF;
    int-to-float v3, p1

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v3, v4

    int-to-float v4, p2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 94
    .local v1, "scale":F
    int-to-float v3, p1

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float/2addr v4, v1

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    int-to-float v4, p2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float/2addr v5, v1

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 96
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 98
    iget-object v3, p0, Lcom/oneplus/settings/opfinger/SvgHelper;->mSvg:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v3, v0}, Lcom/caverock/androidsvg/SVG;->renderToCanvas(Landroid/graphics/Canvas;)V

    .line 100
    iget-object v3, p0, Lcom/oneplus/settings/opfinger/SvgHelper;->mPaths:Ljava/util/List;

    return-object v3
.end method

.method public load(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "svgResource"    # I

    .prologue
    .line 28
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/SvgHelper;->mSvg:Lcom/caverock/androidsvg/SVG;

    if-eqz v1, :cond_0

    .line 36
    :goto_0
    return-void

    .line 31
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lcom/caverock/androidsvg/SVG;->getFromResource(Landroid/content/Context;I)Lcom/caverock/androidsvg/SVG;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/opfinger/SvgHelper;->mSvg:Lcom/caverock/androidsvg/SVG;

    .line 32
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/SvgHelper;->mSvg:Lcom/caverock/androidsvg/SVG;

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio;->UNSCALED:Lcom/caverock/androidsvg/PreserveAspectRatio;

    invoke-virtual {v1, v2}, Lcom/caverock/androidsvg/SVG;->setDocumentPreserveAspectRatio(Lcom/caverock/androidsvg/PreserveAspectRatio;)V
    :try_end_0
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Lcom/caverock/androidsvg/SVGParseException;
    const-string v1, "SVG"

    const-string v2, "Could not load specified SVG resource"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
