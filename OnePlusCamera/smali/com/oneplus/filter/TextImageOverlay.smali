.class public Lcom/oneplus/filter/TextImageOverlay;
.super Ljava/lang/Object;
.source "TextImageOverlay.java"

# interfaces
.implements Lcom/oneplus/filter/ImageOverlay;


# instance fields
.field private final m_Drawable:Lcom/oneplus/drawable/ShadowTextDrawable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Lcom/oneplus/filter/TextImageOverlay;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-direct {v0}, Lcom/oneplus/drawable/ShadowTextDrawable;-><init>()V

    iput-object v0, p0, Lcom/oneplus/filter/TextImageOverlay;->m_Drawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    .line 31
    iget-object v0, p0, Lcom/oneplus/filter/TextImageOverlay;->m_Drawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-virtual {v0, p1}, Lcom/oneplus/drawable/ShadowTextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 28
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;I)V
    .locals 2
    .param p1, "target"    # Landroid/graphics/Bitmap;
    .param p2, "flags"    # I

    .prologue
    .line 39
    if-nez p1, :cond_0

    .line 40
    return-void

    .line 41
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 42
    .local v0, "canvas":Landroid/graphics/Canvas;
    iget-object v1, p0, Lcom/oneplus/filter/TextImageOverlay;->m_Drawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-virtual {v1, v0}, Lcom/oneplus/drawable/ShadowTextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 37
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/oneplus/filter/TextImageOverlay;->m_Drawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-virtual {v0, p1}, Lcom/oneplus/drawable/ShadowTextDrawable;->setAlpha(I)V

    .line 48
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/oneplus/filter/TextImageOverlay;->m_Drawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oneplus/drawable/ShadowTextDrawable;->setBounds(IIII)V

    .line 56
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

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/oneplus/filter/TextImageOverlay;->setBounds(IIII)V

    .line 64
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oneplus/filter/TextImageOverlay;->m_Drawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-virtual {v0, p1}, Lcom/oneplus/drawable/ShadowTextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 76
    return-void
.end method
