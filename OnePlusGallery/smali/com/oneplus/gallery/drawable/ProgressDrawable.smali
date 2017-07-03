.class public Lcom/oneplus/gallery/drawable/ProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/drawable/ProgressDrawable$1;,
        Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;
    }
.end annotation


# instance fields
.field private m_BackgroundColor:I

.field private m_ControlType:Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;

.field private m_MaxProgress:I

.field private m_Paint:Landroid/graphics/Paint;

.field private m_PrimaryColor:I

.field private m_Progress:I

.field private m_TrackHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 20
    sget-object v0, Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;->NORMAL:Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;

    iput-object v0, p0, Lcom/oneplus/gallery/drawable/ProgressDrawable;->m_ControlType:Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/gallery/drawable/ProgressDrawable;->m_TrackHeight:I

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/gallery/drawable/ProgressDrawable;->m_PrimaryColor:I

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/gallery/drawable/ProgressDrawable;->m_BackgroundColor:I

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/drawable/ProgressDrawable;->m_Paint:Landroid/graphics/Paint;

    .line 44
    iget-object v0, p0, Lcom/oneplus/gallery/drawable/ProgressDrawable;->m_Paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 45
    iget-object v0, p0, Lcom/oneplus/gallery/drawable/ProgressDrawable;->m_Paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 46
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/oneplus/gallery/drawable/ProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 54
    .local v7, "bounds":Landroid/graphics/Rect;
    iget v0, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/oneplus/gallery/drawable/ProgressDrawable;->m_TrackHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int v12, v0, v1

    .line 55
    .local v12, "top":I
    iget v0, p0, Lcom/oneplus/gallery/drawable/ProgressDrawable;->m_TrackHeight:I

    add-int v6, v12, v0

    .line 58
    .local v6, "bottom":I
    iget-object v0, p0, Lcom/oneplus/gallery/drawable/ProgressDrawable;->m_Paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oneplus/gallery/drawable/ProgressDrawable;->m_BackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    iget v0, v7, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    int-to-float v2, v12

    iget v0, v7, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    int-to-float v4, v6

    iget-object v5, p0, Lcom/oneplus/gallery/drawable/ProgressDrawable;->m_Paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 62
    iget-object v0, p0, Lcom/oneplus/gallery/drawable/ProgressDrawable;->m_Paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oneplus/gallery/drawable/ProgressDrawable;->m_PrimaryColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    iget v0, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int v8, v0, v1

    .line 64
    .local v8, "center":I
    iget v0, p0, Lcom/oneplus/gallery/drawable/ProgressDrawable;->m_MaxProgress:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v9, v0, v1

    .line 65
    .local v9, "centerProgress":F
    sget-object v0, Lcom/oneplus/gallery/drawable/ProgressDrawable$1;->$SwitchMap$com$oneplus$gallery$drawable$ProgressDrawable$ProgressType:[I

    iget-object v1, p0, Lcom/oneplus/gallery/drawable/ProgressDrawable;->m_ControlType:Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;

    invoke-virtual {v1}, Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 69
    :pswitch_0
    iget v0, p0, Lcom/oneplus/gallery/drawable/ProgressDrawable;->m_Progress:I

    int-to-float v0, v0

    cmpg-float v0, v0, v9

    if-gez v0, :cond_1

    .line 71
    iget v0, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/oneplus/gallery/drawable/ProgressDrawable;->m_Progress:I

    int-to-float v2, v2

    div-float/2addr v2, v9

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int v10, v0, v1

    .line 72
    .local v10, "left":I
    int-to-float v1, v10

    int-to-float v2, v12

    int-to-float v3, v8

    int-to-float v4, v6

    iget-object v5, p0, Lcom/oneplus/gallery/drawable/ProgressDrawable;->m_Paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 74
    .end local v10    # "left":I
    :cond_1
    iget v0, p0, Lcom/oneplus/gallery/drawable/ProgressDrawable;->m_Progress:I

    int-to-float v0, v0

    cmpl-float v0, v0, v9

    if-lez v0, :cond_0

    .line 76
    iget v0, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/oneplus/gallery/drawable/ProgressDrawable;->m_MaxProgress:I

    iget v3, p0, Lcom/oneplus/gallery/drawable/ProgressDrawable;->m_Progress:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v9

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sub-int v11, v0, v1

    .line 77
    .local v11, "right":I
    int-to-float v1, v8

    int-to-float v2, v12

    int-to-float v3, v11

    int-to-float v4, v6

    iget-object v5, p0, Lcom/oneplus/gallery/drawable/ProgressDrawable;->m_Paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 84
    .end local v11    # "right":I
    :pswitch_1
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/oneplus/gallery/drawable/ProgressDrawable;->m_Progress:I

    int-to-float v1, v1

    iget v2, p0, Lcom/oneplus/gallery/drawable/ProgressDrawable;->m_MaxProgress:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 85
    .restart local v11    # "right":I
    iget v0, v7, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    int-to-float v2, v12

    int-to-float v3, v11

    int-to-float v4, v6

    iget-object v5, p0, Lcom/oneplus/gallery/drawable/ProgressDrawable;->m_Paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 91
    .end local v11    # "right":I
    :pswitch_2
    iget v0, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/oneplus/gallery/drawable/ProgressDrawable;->m_MaxProgress:I

    iget v3, p0, Lcom/oneplus/gallery/drawable/ProgressDrawable;->m_Progress:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/oneplus/gallery/drawable/ProgressDrawable;->m_MaxProgress:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sub-int v10, v0, v1

    .line 92
    .restart local v10    # "left":I
    int-to-float v1, v10

    int-to-float v2, v12

    iget v0, v7, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    int-to-float v4, v6

    iget-object v5, p0, Lcom/oneplus/gallery/drawable/ProgressDrawable;->m_Paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 103
    const/16 v0, 0xff

    return v0
.end method

.method public notifyProgressChanged(II)V
    .locals 0
    .param p1, "progress"    # I
    .param p2, "maxProgress"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/oneplus/gallery/drawable/ProgressDrawable;->m_Progress:I

    .line 115
    iput p2, p0, Lcom/oneplus/gallery/drawable/ProgressDrawable;->m_MaxProgress:I

    .line 116
    invoke-virtual {p0}, Lcom/oneplus/gallery/drawable/ProgressDrawable;->invalidateSelf()V

    .line 117
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 124
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 131
    return-void
.end method

.method public setProgressType(Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;)V
    .locals 1
    .param p1, "type"    # Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/oneplus/gallery/drawable/ProgressDrawable;->m_ControlType:Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;

    if-eq v0, p1, :cond_0

    .line 142
    iput-object p1, p0, Lcom/oneplus/gallery/drawable/ProgressDrawable;->m_ControlType:Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;

    .line 143
    invoke-virtual {p0}, Lcom/oneplus/gallery/drawable/ProgressDrawable;->invalidateSelf()V

    .line 145
    :cond_0
    return-void
.end method
