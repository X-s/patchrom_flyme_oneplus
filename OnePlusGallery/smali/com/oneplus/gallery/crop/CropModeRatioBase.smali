.class public abstract Lcom/oneplus/gallery/crop/CropModeRatioBase;
.super Lcom/oneplus/gallery/crop/CropMode;
.source "CropModeRatioBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/crop/CropModeRatioBase$1;
    }
.end annotation


# instance fields
.field private cropRatioXoverY:F

.field private cropRatioYoverX:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/oneplus/gallery/crop/CropMode;-><init>()V

    .line 13
    invoke-virtual {p0}, Lcom/oneplus/gallery/crop/CropModeRatioBase;->getCropRatioY()F

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/gallery/crop/CropModeRatioBase;->getCropRatioX()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/oneplus/gallery/crop/CropModeRatioBase;->cropRatioYoverX:F

    .line 14
    invoke-virtual {p0}, Lcom/oneplus/gallery/crop/CropModeRatioBase;->getCropRatioX()F

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/gallery/crop/CropModeRatioBase;->getCropRatioY()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/oneplus/gallery/crop/CropModeRatioBase;->cropRatioXoverY:F

    return-void
.end method

.method private getTargetWidthHeight(Landroid/graphics/Rect;IIIIII)[I
    .locals 5
    .param p1, "currentRect"    # Landroid/graphics/Rect;
    .param p2, "xShift"    # I
    .param p3, "yShift"    # I
    .param p4, "maxWidth"    # I
    .param p5, "maxHeight"    # I
    .param p6, "minWidth"    # I
    .param p7, "minHeight"    # I

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/oneplus/gallery/crop/CropModeRatioBase;->getCropRatioX()F

    move-result v3

    invoke-virtual {p0}, Lcom/oneplus/gallery/crop/CropModeRatioBase;->getCropRatioY()F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_3

    .line 122
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int v2, v3, p2

    .line 125
    .local v2, "targetWidth":I
    if-le v2, p4, :cond_2

    .line 126
    move v2, p4

    .line 130
    :cond_0
    :goto_0
    int-to-float v3, v2

    iget v4, p0, Lcom/oneplus/gallery/crop/CropModeRatioBase;->cropRatioYoverX:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 132
    .local v0, "targetHeight":I
    if-le v0, p5, :cond_1

    .line 134
    move v0, p5

    .line 135
    int-to-float v3, p5

    iget v4, p0, Lcom/oneplus/gallery/crop/CropModeRatioBase;->cropRatioXoverY:F

    mul-float/2addr v3, v4

    float-to-int v2, v3

    .line 158
    :cond_1
    :goto_1
    const/4 v3, 0x2

    new-array v1, v3, [I

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v3, 0x1

    aput v0, v1, v3

    .line 159
    .local v1, "targetSize":[I
    return-object v1

    .line 127
    .end local v0    # "targetHeight":I
    .end local v1    # "targetSize":[I
    :cond_2
    if-ge v2, p6, :cond_0

    .line 128
    move v2, p6

    goto :goto_0

    .line 140
    .end local v2    # "targetWidth":I
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int v0, v3, p3

    .line 143
    .restart local v0    # "targetHeight":I
    if-le v0, p5, :cond_5

    .line 144
    move v0, p5

    .line 148
    :cond_4
    :goto_2
    int-to-float v3, v0

    iget v4, p0, Lcom/oneplus/gallery/crop/CropModeRatioBase;->cropRatioXoverY:F

    mul-float/2addr v3, v4

    float-to-int v2, v3

    .line 150
    .restart local v2    # "targetWidth":I
    if-le v2, p4, :cond_1

    .line 152
    move v2, p4

    .line 153
    int-to-float v3, p4

    iget v4, p0, Lcom/oneplus/gallery/crop/CropModeRatioBase;->cropRatioYoverX:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    goto :goto_1

    .line 145
    .end local v2    # "targetWidth":I
    :cond_5
    if-ge v0, p7, :cond_4

    .line 146
    move v0, p7

    goto :goto_2
.end method


# virtual methods
.method public abstract getCropRatioX()F
.end method

.method public abstract getCropRatioY()F
.end method

.method public getCropRect(Landroid/graphics/Point;Landroid/graphics/Rect;Lcom/oneplus/gallery/crop/MovingPointType;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 10
    .param p1, "movingPoint"    # Landroid/graphics/Point;
    .param p2, "currentRect"    # Landroid/graphics/Rect;
    .param p3, "pointType"    # Lcom/oneplus/gallery/crop/MovingPointType;
    .param p4, "imageBound"    # Landroid/graphics/Rect;

    .prologue
    .line 19
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 29
    .local v8, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/oneplus/gallery/crop/CropModeRatioBase;->getCropRatioX()F

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/gallery/crop/CropModeRatioBase;->getCropRatioY()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 31
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    float-to-int v6, v0

    .line 32
    .local v6, "minWidth":I
    int-to-float v0, v6

    iget v1, p0, Lcom/oneplus/gallery/crop/CropModeRatioBase;->cropRatioYoverX:F

    mul-float/2addr v0, v1

    float-to-int v7, v0

    .line 34
    .local v7, "minHeight":I
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-le v7, v0, :cond_0

    .line 36
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    float-to-int v7, v0

    .line 37
    int-to-float v0, v7

    iget v1, p0, Lcom/oneplus/gallery/crop/CropModeRatioBase;->cropRatioXoverY:F

    mul-float/2addr v0, v1

    float-to-int v6, v0

    .line 52
    :cond_0
    :goto_0
    sget-object v0, Lcom/oneplus/gallery/crop/CropModeRatioBase$1;->$SwitchMap$com$oneplus$gallery$crop$MovingPointType:[I

    invoke-virtual {p3}, Lcom/oneplus/gallery/crop/MovingPointType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 111
    :goto_1
    return-object v8

    .line 42
    .end local v6    # "minWidth":I
    .end local v7    # "minHeight":I
    :cond_1
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    float-to-int v7, v0

    .line 43
    .restart local v7    # "minHeight":I
    int-to-float v0, v7

    iget v1, p0, Lcom/oneplus/gallery/crop/CropModeRatioBase;->cropRatioXoverY:F

    mul-float/2addr v0, v1

    float-to-int v6, v0

    .line 45
    .restart local v6    # "minWidth":I
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-le v6, v0, :cond_0

    .line 47
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    float-to-int v6, v0

    .line 48
    int-to-float v0, v6

    iget v1, p0, Lcom/oneplus/gallery/crop/CropModeRatioBase;->cropRatioYoverX:F

    mul-float/2addr v0, v1

    float-to-int v7, v0

    goto :goto_0

    .line 56
    :pswitch_0
    iget v0, v8, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Point;->x:I

    sub-int v2, v0, v1

    .line 57
    .local v2, "xShift":I
    iget v0, v8, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    sub-int v3, v0, v1

    .line 59
    .local v3, "yShift":I
    iget v0, v8, Landroid/graphics/Rect;->right:I

    iget v1, p4, Landroid/graphics/Rect;->left:I

    sub-int v4, v0, v1

    .line 60
    .local v4, "maxWidth":I
    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    iget v1, p4, Landroid/graphics/Rect;->top:I

    sub-int v5, v0, v1

    .local v5, "maxHeight":I
    move-object v0, p0

    move-object v1, p2

    .line 62
    invoke-direct/range {v0 .. v7}, Lcom/oneplus/gallery/crop/CropModeRatioBase;->getTargetWidthHeight(Landroid/graphics/Rect;IIIIII)[I

    move-result-object v9

    .line 64
    .local v9, "targetSize":[I
    iget v0, v8, Landroid/graphics/Rect;->right:I

    const/4 v1, 0x0

    aget v1, v9, v1

    sub-int/2addr v0, v1

    iput v0, v8, Landroid/graphics/Rect;->left:I

    .line 65
    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    const/4 v1, 0x1

    aget v1, v9, v1

    sub-int/2addr v0, v1

    iput v0, v8, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 69
    .end local v2    # "xShift":I
    .end local v3    # "yShift":I
    .end local v4    # "maxWidth":I
    .end local v5    # "maxHeight":I
    .end local v9    # "targetSize":[I
    :pswitch_1
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, v8, Landroid/graphics/Rect;->right:I

    sub-int v2, v0, v1

    .line 70
    .restart local v2    # "xShift":I
    iget v0, v8, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    sub-int v3, v0, v1

    .line 72
    .restart local v3    # "yShift":I
    iget v0, p4, Landroid/graphics/Rect;->right:I

    iget v1, v8, Landroid/graphics/Rect;->left:I

    sub-int v4, v0, v1

    .line 73
    .restart local v4    # "maxWidth":I
    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    iget v1, p4, Landroid/graphics/Rect;->top:I

    sub-int v5, v0, v1

    .restart local v5    # "maxHeight":I
    move-object v0, p0

    move-object v1, p2

    .line 75
    invoke-direct/range {v0 .. v7}, Lcom/oneplus/gallery/crop/CropModeRatioBase;->getTargetWidthHeight(Landroid/graphics/Rect;IIIIII)[I

    move-result-object v9

    .line 77
    .restart local v9    # "targetSize":[I
    iget v0, v8, Landroid/graphics/Rect;->left:I

    const/4 v1, 0x0

    aget v1, v9, v1

    add-int/2addr v0, v1

    iput v0, v8, Landroid/graphics/Rect;->right:I

    .line 78
    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    const/4 v1, 0x1

    aget v1, v9, v1

    sub-int/2addr v0, v1

    iput v0, v8, Landroid/graphics/Rect;->top:I

    goto/16 :goto_1

    .line 83
    .end local v2    # "xShift":I
    .end local v3    # "yShift":I
    .end local v4    # "maxWidth":I
    .end local v5    # "maxHeight":I
    .end local v9    # "targetSize":[I
    :pswitch_2
    iget v0, v8, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Point;->x:I

    sub-int v2, v0, v1

    .line 84
    .restart local v2    # "xShift":I
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v0, v1

    .line 86
    .restart local v3    # "yShift":I
    iget v0, v8, Landroid/graphics/Rect;->right:I

    iget v1, p4, Landroid/graphics/Rect;->left:I

    sub-int v4, v0, v1

    .line 87
    .restart local v4    # "maxWidth":I
    iget v0, p4, Landroid/graphics/Rect;->bottom:I

    iget v1, v8, Landroid/graphics/Rect;->top:I

    sub-int v5, v0, v1

    .restart local v5    # "maxHeight":I
    move-object v0, p0

    move-object v1, p2

    .line 89
    invoke-direct/range {v0 .. v7}, Lcom/oneplus/gallery/crop/CropModeRatioBase;->getTargetWidthHeight(Landroid/graphics/Rect;IIIIII)[I

    move-result-object v9

    .line 91
    .restart local v9    # "targetSize":[I
    iget v0, v8, Landroid/graphics/Rect;->right:I

    const/4 v1, 0x0

    aget v1, v9, v1

    sub-int/2addr v0, v1

    iput v0, v8, Landroid/graphics/Rect;->left:I

    .line 92
    iget v0, v8, Landroid/graphics/Rect;->top:I

    const/4 v1, 0x1

    aget v1, v9, v1

    add-int/2addr v0, v1

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1

    .line 97
    .end local v2    # "xShift":I
    .end local v3    # "yShift":I
    .end local v4    # "maxWidth":I
    .end local v5    # "maxHeight":I
    .end local v9    # "targetSize":[I
    :pswitch_3
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, v8, Landroid/graphics/Rect;->right:I

    sub-int v2, v0, v1

    .line 98
    .restart local v2    # "xShift":I
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v0, v1

    .line 100
    .restart local v3    # "yShift":I
    iget v0, p4, Landroid/graphics/Rect;->right:I

    iget v1, v8, Landroid/graphics/Rect;->left:I

    sub-int v4, v0, v1

    .line 101
    .restart local v4    # "maxWidth":I
    iget v0, p4, Landroid/graphics/Rect;->bottom:I

    iget v1, v8, Landroid/graphics/Rect;->top:I

    sub-int v5, v0, v1

    .restart local v5    # "maxHeight":I
    move-object v0, p0

    move-object v1, p2

    .line 103
    invoke-direct/range {v0 .. v7}, Lcom/oneplus/gallery/crop/CropModeRatioBase;->getTargetWidthHeight(Landroid/graphics/Rect;IIIIII)[I

    move-result-object v9

    .line 105
    .restart local v9    # "targetSize":[I
    iget v0, v8, Landroid/graphics/Rect;->left:I

    const/4 v1, 0x0

    aget v1, v9, v1

    add-int/2addr v0, v1

    iput v0, v8, Landroid/graphics/Rect;->right:I

    .line 106
    iget v0, v8, Landroid/graphics/Rect;->top:I

    const/4 v1, 0x1

    aget v1, v9, v1

    add-int/2addr v0, v1

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getRatioXoverY()F
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/oneplus/gallery/crop/CropModeRatioBase;->cropRatioXoverY:F

    return v0
.end method

.method public getRatioYoverX()F
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/oneplus/gallery/crop/CropModeRatioBase;->cropRatioYoverX:F

    return v0
.end method
