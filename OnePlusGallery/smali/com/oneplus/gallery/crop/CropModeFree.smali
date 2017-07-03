.class public Lcom/oneplus/gallery/crop/CropModeFree;
.super Lcom/oneplus/gallery/crop/CropMode;
.source "CropModeFree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/crop/CropModeFree$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/oneplus/gallery/crop/CropMode;-><init>()V

    .line 59
    return-void
.end method


# virtual methods
.method public getCropModeType()Lcom/oneplus/gallery/crop/CropModeType;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/oneplus/gallery/crop/CropModeType;->FREE:Lcom/oneplus/gallery/crop/CropModeType;

    return-object v0
.end method

.method public getCropRect(Landroid/graphics/Point;Landroid/graphics/Rect;Lcom/oneplus/gallery/crop/MovingPointType;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "movingPoint"    # Landroid/graphics/Point;
    .param p2, "currentRect"    # Landroid/graphics/Rect;
    .param p3, "pointType"    # Lcom/oneplus/gallery/crop/MovingPointType;
    .param p4, "imageBound"    # Landroid/graphics/Rect;

    .prologue
    .line 11
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 13
    .local v0, "minSize":I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 14
    .local v1, "rect":Landroid/graphics/Rect;
    sget-object v2, Lcom/oneplus/gallery/crop/CropModeFree$1;->$SwitchMap$com$oneplus$gallery$crop$MovingPointType:[I

    invoke-virtual {p3}, Lcom/oneplus/gallery/crop/MovingPointType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 63
    :cond_0
    :goto_0
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, p4, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_1

    .line 64
    iget v2, p4, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 66
    :cond_1
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, p4, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_2

    .line 67
    iget v2, p4, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 69
    :cond_2
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, p4, Landroid/graphics/Rect;->right:I

    if-le v2, v3, :cond_3

    .line 70
    iget v2, p4, Landroid/graphics/Rect;->right:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 72
    :cond_3
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v3, p4, Landroid/graphics/Rect;->bottom:I

    if-le v2, v3, :cond_4

    .line 73
    iget v2, p4, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 77
    :cond_4
    return-object v1

    .line 17
    :pswitch_0
    iget v2, p1, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 18
    iget v2, p1, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 21
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ge v2, v0, :cond_5

    .line 22
    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 23
    :cond_5
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ge v2, v0, :cond_0

    .line 24
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 28
    :pswitch_1
    iget v2, p1, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 29
    iget v2, p1, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 32
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ge v2, v0, :cond_6

    .line 33
    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 34
    :cond_6
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ge v2, v0, :cond_0

    .line 35
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 39
    :pswitch_2
    iget v2, p1, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 40
    iget v2, p1, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 43
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ge v2, v0, :cond_7

    .line 44
    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 45
    :cond_7
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ge v2, v0, :cond_0

    .line 46
    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    .line 50
    :pswitch_3
    iget v2, p1, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 51
    iget v2, p1, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 54
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ge v2, v0, :cond_8

    .line 55
    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 56
    :cond_8
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ge v2, v0, :cond_0

    .line 57
    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    .line 14
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
