.class public Lcom/oneplus/drawable/ShadowTextDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ShadowTextDrawable.java"


# instance fields
.field private final m_Renderer:Lcom/oneplus/widget/ShadowTextRenderer;

.field private final m_TextBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 16
    new-instance v0, Lcom/oneplus/widget/ShadowTextRenderer;

    invoke-direct {v0}, Lcom/oneplus/widget/ShadowTextRenderer;-><init>()V

    iput-object v0, p0, Lcom/oneplus/drawable/ShadowTextDrawable;->m_Renderer:Lcom/oneplus/widget/ShadowTextRenderer;

    .line 17
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/drawable/ShadowTextDrawable;->m_TextBounds:Landroid/graphics/Rect;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 16
    new-instance v0, Lcom/oneplus/widget/ShadowTextRenderer;

    invoke-direct {v0}, Lcom/oneplus/widget/ShadowTextRenderer;-><init>()V

    iput-object v0, p0, Lcom/oneplus/drawable/ShadowTextDrawable;->m_Renderer:Lcom/oneplus/widget/ShadowTextRenderer;

    .line 17
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/drawable/ShadowTextDrawable;->m_TextBounds:Landroid/graphics/Rect;

    .line 33
    iget-object v0, p0, Lcom/oneplus/drawable/ShadowTextDrawable;->m_Renderer:Lcom/oneplus/widget/ShadowTextRenderer;

    invoke-virtual {v0, p1}, Lcom/oneplus/widget/ShadowTextRenderer;->setText(Ljava/lang/CharSequence;)V

    .line 31
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/oneplus/drawable/ShadowTextDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 43
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/oneplus/drawable/ShadowTextDrawable;->m_Renderer:Lcom/oneplus/widget/ShadowTextRenderer;

    iget-object v4, p0, Lcom/oneplus/drawable/ShadowTextDrawable;->m_TextBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lcom/oneplus/widget/ShadowTextRenderer;->getBounds(Landroid/graphics/Rect;)V

    .line 46
    iget-object v3, p0, Lcom/oneplus/drawable/ShadowTextDrawable;->m_TextBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    return-void

    .line 50
    :cond_0
    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/drawable/ShadowTextDrawable;->m_TextBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int v1, v3, v4

    .line 51
    .local v1, "left":I
    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/drawable/ShadowTextDrawable;->m_TextBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int v2, v3, v4

    .line 52
    .local v2, "top":I
    iget-object v3, p0, Lcom/oneplus/drawable/ShadowTextDrawable;->m_Renderer:Lcom/oneplus/widget/ShadowTextRenderer;

    int-to-float v4, v1

    int-to-float v5, v2

    invoke-virtual {v3, p1, v4, v5}, Lcom/oneplus/widget/ShadowTextRenderer;->draw(Landroid/graphics/Canvas;FF)V

    .line 39
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/oneplus/drawable/ShadowTextDrawable;->m_Renderer:Lcom/oneplus/widget/ShadowTextRenderer;

    iget-object v1, p0, Lcom/oneplus/drawable/ShadowTextDrawable;->m_TextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/ShadowTextRenderer;->getBounds(Landroid/graphics/Rect;)V

    .line 61
    iget-object v0, p0, Lcom/oneplus/drawable/ShadowTextDrawable;->m_TextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/oneplus/drawable/ShadowTextDrawable;->m_Renderer:Lcom/oneplus/widget/ShadowTextRenderer;

    iget-object v1, p0, Lcom/oneplus/drawable/ShadowTextDrawable;->m_TextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/ShadowTextRenderer;->getBounds(Landroid/graphics/Rect;)V

    .line 70
    iget-object v0, p0, Lcom/oneplus/drawable/ShadowTextDrawable;->m_TextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public getTextBounds(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "textBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/oneplus/drawable/ShadowTextDrawable;->m_Renderer:Lcom/oneplus/widget/ShadowTextRenderer;

    iget-object v1, p0, Lcom/oneplus/drawable/ShadowTextDrawable;->m_TextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/ShadowTextRenderer;->getBounds(Landroid/graphics/Rect;)V

    .line 89
    iget-object v0, p0, Lcom/oneplus/drawable/ShadowTextDrawable;->m_TextBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 86
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lcom/oneplus/drawable/ShadowTextDrawable;->m_Renderer:Lcom/oneplus/widget/ShadowTextRenderer;

    invoke-virtual {v0, p1}, Lcom/oneplus/widget/ShadowTextRenderer;->setAlpha(I)V

    .line 95
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "filter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/oneplus/drawable/ShadowTextDrawable;->m_Renderer:Lcom/oneplus/widget/ShadowTextRenderer;

    invoke-virtual {v0, p1}, Lcom/oneplus/widget/ShadowTextRenderer;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 103
    return-void
.end method

.method public setShadow(FFFI)V
    .locals 1
    .param p1, "radius"    # F
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "color"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lcom/oneplus/drawable/ShadowTextDrawable;->m_Renderer:Lcom/oneplus/widget/ShadowTextRenderer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oneplus/widget/ShadowTextRenderer;->setShadow(FFFI)V

    .line 116
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/oneplus/drawable/ShadowTextDrawable;->m_Renderer:Lcom/oneplus/widget/ShadowTextRenderer;

    invoke-virtual {v0, p1}, Lcom/oneplus/widget/ShadowTextRenderer;->setText(Ljava/lang/CharSequence;)V

    .line 126
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lcom/oneplus/drawable/ShadowTextDrawable;->m_Renderer:Lcom/oneplus/widget/ShadowTextRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/widget/ShadowTextRenderer;->setTextAppearance(Landroid/content/Context;I)V

    .line 137
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lcom/oneplus/drawable/ShadowTextDrawable;->m_Renderer:Lcom/oneplus/widget/ShadowTextRenderer;

    invoke-virtual {v0, p1}, Lcom/oneplus/widget/ShadowTextRenderer;->setColor(I)V

    .line 147
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 159
    iget-object v0, p0, Lcom/oneplus/drawable/ShadowTextDrawable;->m_Renderer:Lcom/oneplus/widget/ShadowTextRenderer;

    invoke-virtual {v0, p1}, Lcom/oneplus/widget/ShadowTextRenderer;->setTextSize(F)V

    .line 157
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/oneplus/drawable/ShadowTextDrawable;->m_Renderer:Lcom/oneplus/widget/ShadowTextRenderer;

    invoke-virtual {v0, p1}, Lcom/oneplus/widget/ShadowTextRenderer;->setTypeface(Landroid/graphics/Typeface;)V

    .line 167
    return-void
.end method
