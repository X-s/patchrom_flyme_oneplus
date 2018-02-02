.class public Lcom/oneplus/drawable/HollowDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "HollowDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/drawable/HollowDrawable$1;
    }
.end annotation


# instance fields
.field private final m_Callback:Landroid/graphics/drawable/Drawable$Callback;

.field private final m_Drawable:Landroid/graphics/drawable/Drawable;

.field private final m_HollowBounds:[Landroid/graphics/RectF;

.field private m_HollowPaint:Landroid/graphics/Paint;


# direct methods
.method public varargs constructor <init>(Landroid/graphics/drawable/Drawable;[Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "hollowBounds"    # [Landroid/graphics/Rect;

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 25
    new-instance v1, Lcom/oneplus/drawable/HollowDrawable$1;

    invoke-direct {v1, p0}, Lcom/oneplus/drawable/HollowDrawable$1;-><init>(Lcom/oneplus/drawable/HollowDrawable;)V

    iput-object v1, p0, Lcom/oneplus/drawable/HollowDrawable;->m_Callback:Landroid/graphics/drawable/Drawable$Callback;

    .line 54
    iput-object p1, p0, Lcom/oneplus/drawable/HollowDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    .line 55
    iget-object v1, p0, Lcom/oneplus/drawable/HollowDrawable;->m_Callback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 56
    array-length v1, p2

    new-array v1, v1, [Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/oneplus/drawable/HollowDrawable;->m_HollowBounds:[Landroid/graphics/RectF;

    .line 57
    array-length v1, p2

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 58
    iget-object v1, p0, Lcom/oneplus/drawable/HollowDrawable;->m_HollowBounds:[Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    aget-object v3, p2, v0

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    aput-object v2, v1, v0

    .line 57
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method

.method public varargs constructor <init>(Landroid/graphics/drawable/Drawable;[Landroid/graphics/RectF;)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "hollowBounds"    # [Landroid/graphics/RectF;

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 25
    new-instance v1, Lcom/oneplus/drawable/HollowDrawable$1;

    invoke-direct {v1, p0}, Lcom/oneplus/drawable/HollowDrawable$1;-><init>(Lcom/oneplus/drawable/HollowDrawable;)V

    iput-object v1, p0, Lcom/oneplus/drawable/HollowDrawable;->m_Callback:Landroid/graphics/drawable/Drawable$Callback;

    .line 69
    iput-object p1, p0, Lcom/oneplus/drawable/HollowDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    .line 70
    iget-object v1, p0, Lcom/oneplus/drawable/HollowDrawable;->m_Callback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 71
    array-length v1, p2

    new-array v1, v1, [Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/oneplus/drawable/HollowDrawable;->m_HollowBounds:[Landroid/graphics/RectF;

    .line 72
    array-length v1, p2

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 73
    iget-object v1, p0, Lcom/oneplus/drawable/HollowDrawable;->m_HollowBounds:[Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    aget-object v3, p2, v0

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    aput-object v2, v1, v0

    .line 72
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 81
    iget-object v0, p0, Lcom/oneplus/drawable/HollowDrawable;->m_HollowBounds:[Landroid/graphics/RectF;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/oneplus/drawable/HollowDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 84
    return-void

    .line 88
    :cond_0
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 91
    iget-object v0, p0, Lcom/oneplus/drawable/HollowDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 94
    invoke-virtual {p0}, Lcom/oneplus/drawable/HollowDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 95
    .local v6, "bounds":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/oneplus/drawable/HollowDrawable;->m_HollowPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 97
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/drawable/HollowDrawable;->m_HollowPaint:Landroid/graphics/Paint;

    .line 98
    iget-object v0, p0, Lcom/oneplus/drawable/HollowDrawable;->m_HollowPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 99
    iget-object v0, p0, Lcom/oneplus/drawable/HollowDrawable;->m_HollowPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 100
    iget-object v0, p0, Lcom/oneplus/drawable/HollowDrawable;->m_HollowPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/oneplus/drawable/HollowDrawable;->m_HollowBounds:[Landroid/graphics/RectF;

    array-length v0, v0

    add-int/lit8 v8, v0, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_2

    .line 104
    iget-object v0, p0, Lcom/oneplus/drawable/HollowDrawable;->m_HollowBounds:[Landroid/graphics/RectF;

    aget-object v7, v0, v8

    .line 106
    .local v7, "hollowBounds":Landroid/graphics/RectF;
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, v7, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v0

    .line 107
    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v2, v7, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v0

    .line 108
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v3, v7, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v0

    .line 109
    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v4, v7, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v0

    .line 110
    iget-object v5, p0, Lcom/oneplus/drawable/HollowDrawable;->m_HollowPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 105
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 102
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 115
    .end local v7    # "hollowBounds":Landroid/graphics/RectF;
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 78
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/oneplus/drawable/HollowDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/oneplus/drawable/HollowDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/oneplus/drawable/HollowDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/oneplus/drawable/HollowDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 147
    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/oneplus/drawable/HollowDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 161
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 171
    iget-object v0, p0, Lcom/oneplus/drawable/HollowDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 169
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/oneplus/drawable/HollowDrawable;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 177
    return-void
.end method
