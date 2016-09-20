.class public final Lcom/oneplus/util/SizeUtils;
.super Ljava/lang/Object;
.source "SizeUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRatioStretchedSize(IIIIZ)Landroid/util/Size;
    .locals 6
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "containerWidth"    # I
    .param p3, "containerHeight"    # I
    .param p4, "downOnly"    # Z

    .prologue
    const/4 v4, 0x0

    .line 27
    if-lez p2, :cond_0

    if-lez p3, :cond_0

    if-lez p0, :cond_0

    if-gtz p1, :cond_1

    .line 28
    :cond_0
    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v4, v4}, Landroid/util/Size;-><init>(II)V

    .line 38
    :goto_0
    return-object v3

    .line 31
    :cond_1
    int-to-float v3, p2

    int-to-float v4, p0

    div-float v1, v3, v4

    .line 32
    .local v1, "ratioX":F
    int-to-float v3, p3

    int-to-float v4, p1

    div-float v2, v3, v4

    .line 33
    .local v2, "ratioY":F
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 34
    .local v0, "ratio":F
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v3

    if-lez v3, :cond_2

    if-eqz p4, :cond_2

    .line 35
    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, p0, p1}, Landroid/util/Size;-><init>(II)V

    goto :goto_0

    .line 38
    :cond_2
    new-instance v3, Landroid/util/Size;

    int-to-float v4, p0

    mul-float/2addr v4, v0

    float-to-int v4, v4

    int-to-float v5, p1

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    goto :goto_0
.end method
