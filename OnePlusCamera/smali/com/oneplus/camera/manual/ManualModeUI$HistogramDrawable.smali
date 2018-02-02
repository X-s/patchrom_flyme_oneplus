.class public Lcom/oneplus/camera/manual/ManualModeUI$HistogramDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ManualModeUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/manual/ManualModeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HistogramDrawable"
.end annotation


# instance fields
.field histogram:Lcom/oneplus/camera/manual/ManualModeUI$Histogram;

.field private ratioX:F

.field private ratioY:F

.field private topY:I


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/manual/ManualModeUI$Histogram;)V
    .locals 2
    .param p1, "histogram"    # Lcom/oneplus/camera/manual/ManualModeUI$Histogram;

    .prologue
    .line 2852
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2854
    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI$HistogramDrawable;->histogram:Lcom/oneplus/camera/manual/ManualModeUI$Histogram;

    .line 2855
    if-eqz p1, :cond_0

    .line 2856
    iget v0, p1, Lcom/oneplus/camera/manual/ManualModeUI$Histogram;->totalPixelCount:I

    int-to-float v0, v0

    const v1, 0x3d4ccccd    # 0.05f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$HistogramDrawable;->topY:I

    .line 2852
    :cond_0
    return-void
.end method

.method private drawHistogram(Landroid/graphics/Canvas;[II)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "data"    # [I
    .param p3, "color"    # I

    .prologue
    const/4 v8, 0x0

    .line 2920
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 2921
    .local v2, "paint":Landroid/graphics/Paint;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2922
    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2923
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2925
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 2926
    .local v3, "path":Landroid/graphics/Path;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3, v8, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2928
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v6, 0x100

    if-ge v1, v6, :cond_2

    .line 2930
    aget v0, p2, v1

    .line 2931
    .local v0, "histogramValue":I
    iget v6, p0, Lcom/oneplus/camera/manual/ManualModeUI$HistogramDrawable;->topY:I

    if-le v0, v6, :cond_0

    .line 2932
    iget v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$HistogramDrawable;->topY:I

    .line 2933
    :cond_0
    int-to-float v6, v1

    iget v7, p0, Lcom/oneplus/camera/manual/ManualModeUI$HistogramDrawable;->ratioX:F

    mul-float v4, v6, v7

    .line 2934
    .local v4, "x":F
    int-to-float v6, v0

    iget v7, p0, Lcom/oneplus/camera/manual/ManualModeUI$HistogramDrawable;->ratioY:F

    mul-float v5, v6, v7

    .line 2935
    .local v5, "y":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v5

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2937
    const/16 v6, 0xff

    if-ne v1, v6, :cond_1

    .line 2938
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2928
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2941
    .end local v0    # "histogramValue":I
    .end local v4    # "x":F
    .end local v5    # "y":F
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3, v8, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2944
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2918
    return-void
.end method

.method private getMaxValue([I)I
    .locals 3
    .param p1, "values"    # [I

    .prologue
    .line 2910
    const/4 v1, 0x0

    .line 2911
    .local v1, "max":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 2912
    aget v2, p1, v0

    if-le v2, v1, :cond_0

    .line 2913
    aget v1, p1, v0

    .line 2911
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2915
    :cond_1
    return v1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v7, 0xff

    .line 2862
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeUI$HistogramDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2866
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/oneplus/camera/manual/ManualModeUI$HistogramDrawable;->histogram:Lcom/oneplus/camera/manual/ManualModeUI$Histogram;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/oneplus/camera/manual/ManualModeUI$HistogramDrawable;->histogram:Lcom/oneplus/camera/manual/ManualModeUI$Histogram;

    iget-object v5, v5, Lcom/oneplus/camera/manual/ManualModeUI$Histogram;->Y:[I

    invoke-direct {p0, v5}, Lcom/oneplus/camera/manual/ManualModeUI$HistogramDrawable;->getMaxValue([I)I

    move-result v3

    .line 2871
    .local v3, "maxY":I
    :goto_0
    int-to-float v2, v3

    .line 2872
    .local v2, "maxValue":F
    iget v5, p0, Lcom/oneplus/camera/manual/ManualModeUI$HistogramDrawable;->topY:I

    int-to-float v5, v5

    cmpl-float v5, v2, v5

    if-lez v5, :cond_0

    .line 2873
    iget v5, p0, Lcom/oneplus/camera/manual/ManualModeUI$HistogramDrawable;->topY:I

    int-to-float v2, v5

    .line 2875
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v5, v6

    iput v5, p0, Lcom/oneplus/camera/manual/ManualModeUI$HistogramDrawable;->ratioX:F

    .line 2876
    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v2

    :goto_1
    iput v5, p0, Lcom/oneplus/camera/manual/ManualModeUI$HistogramDrawable;->ratioY:F

    .line 2882
    const/16 v5, 0x7f

    invoke-static {v5, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 2883
    .local v1, "color":I
    iget-object v5, p0, Lcom/oneplus/camera/manual/ManualModeUI$HistogramDrawable;->histogram:Lcom/oneplus/camera/manual/ManualModeUI$Histogram;

    if-eqz v5, :cond_1

    .line 2884
    iget-object v5, p0, Lcom/oneplus/camera/manual/ManualModeUI$HistogramDrawable;->histogram:Lcom/oneplus/camera/manual/ManualModeUI$Histogram;

    iget-object v5, v5, Lcom/oneplus/camera/manual/ManualModeUI$Histogram;->Y:[I

    invoke-direct {p0, p1, v5, v1}, Lcom/oneplus/camera/manual/ManualModeUI$HistogramDrawable;->drawHistogram(Landroid/graphics/Canvas;[II)V

    .line 2886
    :cond_1
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 2887
    .local v4, "paint":Landroid/graphics/Paint;
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2888
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2889
    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2890
    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2860
    return-void

    .line 2866
    .end local v1    # "color":I
    .end local v2    # "maxValue":F
    .end local v3    # "maxY":I
    .end local v4    # "paint":Landroid/graphics/Paint;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 2876
    .restart local v2    # "maxValue":F
    .restart local v3    # "maxY":I
    :cond_3
    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_1
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 2950
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 2954
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 2957
    return-void
.end method
