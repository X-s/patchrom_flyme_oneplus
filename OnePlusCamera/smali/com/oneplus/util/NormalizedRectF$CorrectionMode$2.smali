.class final Lcom/oneplus/util/NormalizedRectF$CorrectionMode$2;
.super Lcom/oneplus/util/NormalizedRectF$CorrectionMode;
.source "NormalizedRectF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/util/NormalizedRectF$CorrectionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/oneplus/util/NormalizedRectF$CorrectionMode;-><init>()V

    return-void
.end method


# virtual methods
.method public correct(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 12
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "correctionBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 55
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 56
    :cond_0
    return-object p1

    .line 59
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 60
    .local v0, "centerX":F
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 61
    .local v1, "centerY":F
    const/4 v2, 0x0

    .line 62
    .local v2, "diffX":F
    iget v9, p1, Landroid/graphics/RectF;->left:F

    iget v10, p2, Landroid/graphics/RectF;->left:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2

    .line 63
    iget v9, p2, Landroid/graphics/RectF;->left:F

    iget v10, p1, Landroid/graphics/RectF;->left:F

    sub-float v2, v9, v10

    .line 64
    :cond_2
    iget v9, p1, Landroid/graphics/RectF;->right:F

    iget v10, p2, Landroid/graphics/RectF;->right:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_3

    .line 65
    iget v9, p1, Landroid/graphics/RectF;->right:F

    iget v10, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v9, v10

    invoke-static {v2, v9}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 66
    :cond_3
    const/4 v3, 0x0

    .line 67
    .local v3, "diffY":F
    iget v9, p1, Landroid/graphics/RectF;->top:F

    iget v10, p2, Landroid/graphics/RectF;->top:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_4

    .line 68
    iget v9, p2, Landroid/graphics/RectF;->top:F

    iget v10, p1, Landroid/graphics/RectF;->top:F

    sub-float v3, v9, v10

    .line 69
    :cond_4
    iget v9, p1, Landroid/graphics/RectF;->bottom:F

    iget v10, p2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_5

    .line 70
    iget v9, p1, Landroid/graphics/RectF;->bottom:F

    iget v10, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v9, v10

    invoke-static {v3, v9}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 71
    :cond_5
    const/4 v9, 0x0

    cmpl-float v9, v2, v9

    if-gtz v9, :cond_6

    const/4 v9, 0x0

    cmpl-float v9, v3, v9

    if-lez v9, :cond_8

    .line 73
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v10, v2

    sub-float/2addr v9, v10

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v10

    div-float/2addr v9, v10

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v11, v3

    sub-float/2addr v10, v11

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v11

    div-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 74
    .local v6, "scaleDown":F
    const/4 v9, 0x0

    cmpg-float v9, v6, v9

    if-lez v9, :cond_7

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, v6, v9

    if-lez v9, :cond_9

    .line 75
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/RectF;->setEmpty()V

    .line 87
    .end local v6    # "scaleDown":F
    :cond_8
    :goto_0
    return-object p1

    .line 78
    .restart local v6    # "scaleDown":F
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v9

    mul-float v8, v9, v6

    .line 79
    .local v8, "width":F
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v9

    mul-float v4, v9, v6

    .line 80
    .local v4, "height":F
    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v8, v9

    sub-float v5, v0, v9

    .line 81
    .local v5, "left":F
    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v4, v9

    sub-float v7, v1, v9

    .line 82
    .local v7, "top":F
    add-float v9, v5, v8

    add-float v10, v7, v4

    invoke-virtual {p1, v5, v7, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0
.end method
