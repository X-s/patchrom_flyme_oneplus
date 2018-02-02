.class public Lcom/oneplus/filter/DrawableImageOverlay;
.super Ljava/lang/Object;
.source "DrawableImageOverlay.java"

# interfaces
.implements Lcom/oneplus/filter/ImageOverlay;


# instance fields
.field private m_Drawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/filter/DrawableImageOverlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/oneplus/filter/DrawableImageOverlay;->m_Drawable:Landroid/graphics/drawable/Drawable;

    .line 27
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;I)V
    .locals 2
    .param p1, "target"    # Landroid/graphics/Bitmap;
    .param p2, "flags"    # I

    .prologue
    .line 37
    iget-object v1, p0, Lcom/oneplus/filter/DrawableImageOverlay;->m_Drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 38
    :cond_0
    return-void

    .line 39
    :cond_1
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 40
    .local v0, "canvas":Landroid/graphics/Canvas;
    iget-object v1, p0, Lcom/oneplus/filter/DrawableImageOverlay;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 35
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oneplus/filter/DrawableImageOverlay;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 46
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lcom/oneplus/filter/DrawableImageOverlay;->m_Drawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 57
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/oneplus/filter/DrawableImageOverlay;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 54
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 66
    if-nez p1, :cond_0

    .line 67
    return-void

    .line 68
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/oneplus/filter/DrawableImageOverlay;->setBounds(IIII)V

    .line 64
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/oneplus/filter/DrawableImageOverlay;->m_Drawable:Landroid/graphics/drawable/Drawable;

    .line 76
    return-void
.end method
