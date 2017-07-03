.class public final Lcom/oneplus/util/SizeUtils;
.super Ljava/lang/Object;
.source "SizeUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static getRatioCenterCroppedSize(IIII)Landroid/util/Size;
    .locals 6
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "innerWidth"    # I
    .param p3, "innerHeight"    # I

    .prologue
    .line 27
    int-to-float v1, p0

    int-to-float v2, p1

    int-to-float v3, p2

    int-to-float v4, p3

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/oneplus/util/SizeUtils;->getRatioCenterCroppedSize(FFFFZ)Landroid/util/SizeF;

    move-result-object v0

    .line 28
    .local v0, "size":Landroid/util/SizeF;
    new-instance v1, Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/SizeF;->getWidth()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0}, Landroid/util/SizeF;->getHeight()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    return-object v1
.end method

.method public static getRatioCenterCroppedSize(FFFFZ)Landroid/util/SizeF;
    .locals 6
    .param p0, "width"    # F
    .param p1, "height"    # F
    .param p2, "innerWidth"    # F
    .param p3, "innerHeight"    # F
    .param p4, "downOnly"    # Z

    .prologue
    const/4 v4, 0x0

    .line 43
    cmpg-float v3, p2, v4

    if-lez v3, :cond_0

    cmpg-float v3, p3, v4

    if-lez v3, :cond_0

    cmpg-float v3, p0, v4

    if-lez v3, :cond_0

    cmpg-float v3, p1, v4

    if-gtz v3, :cond_1

    .line 44
    :cond_0
    new-instance v3, Landroid/util/SizeF;

    invoke-direct {v3, v4, v4}, Landroid/util/SizeF;-><init>(FF)V

    .line 54
    :goto_0
    return-object v3

    .line 47
    :cond_1
    div-float v1, p2, p0

    .line 48
    .local v1, "ratioX":F
    div-float v2, p3, p1

    .line 49
    .local v2, "ratioY":F
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 50
    .local v0, "ratio":F
    if-eqz p4, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v3

    if-lez v3, :cond_2

    .line 51
    new-instance v3, Landroid/util/SizeF;

    invoke-direct {v3, p0, p1}, Landroid/util/SizeF;-><init>(FF)V

    goto :goto_0

    .line 54
    :cond_2
    new-instance v3, Landroid/util/SizeF;

    mul-float v4, p0, v0

    mul-float v5, p1, v0

    invoke-direct {v3, v4, v5}, Landroid/util/SizeF;-><init>(FF)V

    goto :goto_0
.end method

.method public static getRatioStretchedSize(IIIIZ)Landroid/util/Size;
    .locals 5
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "containerWidth"    # I
    .param p3, "containerHeight"    # I
    .param p4, "downOnly"    # Z

    .prologue
    .line 70
    int-to-float v1, p0

    int-to-float v2, p1

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-static {v1, v2, v3, v4, p4}, Lcom/oneplus/util/SizeUtils;->getRatioStretchedSize(FFFFZ)Landroid/util/SizeF;

    move-result-object v0

    .line 71
    .local v0, "size":Landroid/util/SizeF;
    new-instance v1, Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/SizeF;->getWidth()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0}, Landroid/util/SizeF;->getHeight()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    return-object v1
.end method

.method public static getRatioStretchedSize(FFFFZ)Landroid/util/SizeF;
    .locals 6
    .param p0, "width"    # F
    .param p1, "height"    # F
    .param p2, "containerWidth"    # F
    .param p3, "containerHeight"    # F
    .param p4, "downOnly"    # Z

    .prologue
    const/4 v4, 0x0

    .line 87
    cmpg-float v3, p2, v4

    if-lez v3, :cond_0

    cmpg-float v3, p3, v4

    if-lez v3, :cond_0

    cmpg-float v3, p0, v4

    if-lez v3, :cond_0

    cmpg-float v3, p1, v4

    if-gtz v3, :cond_1

    .line 88
    :cond_0
    new-instance v3, Landroid/util/SizeF;

    invoke-direct {v3, v4, v4}, Landroid/util/SizeF;-><init>(FF)V

    .line 98
    :goto_0
    return-object v3

    .line 91
    :cond_1
    div-float v1, p2, p0

    .line 92
    .local v1, "ratioX":F
    div-float v2, p3, p1

    .line 93
    .local v2, "ratioY":F
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 94
    .local v0, "ratio":F
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v3

    if-lez v3, :cond_2

    if-eqz p4, :cond_2

    .line 95
    new-instance v3, Landroid/util/SizeF;

    invoke-direct {v3, p0, p1}, Landroid/util/SizeF;-><init>(FF)V

    goto :goto_0

    .line 98
    :cond_2
    new-instance v3, Landroid/util/SizeF;

    mul-float v4, p0, v0

    mul-float v5, p1, v0

    invoke-direct {v3, v4, v5}, Landroid/util/SizeF;-><init>(FF)V

    goto :goto_0
.end method
