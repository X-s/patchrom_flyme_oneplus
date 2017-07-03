.class public Lcom/oneplus/gallery/drawable/SimpleBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SimpleBitmapDrawable.java"


# instance fields
.field private final m_Bitmap:Landroid/graphics/Bitmap;

.field private m_Paint:Landroid/graphics/Paint;

.field private final m_SrcRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/oneplus/gallery/drawable/SimpleBitmapDrawable;->m_Bitmap:Landroid/graphics/Bitmap;

    .line 29
    new-instance v3, Landroid/graphics/Rect;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    move v2, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    :goto_1
    invoke-direct {v3, v1, v1, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/oneplus/gallery/drawable/SimpleBitmapDrawable;->m_SrcRect:Landroid/graphics/Rect;

    .line 30
    return-void

    :cond_0
    move v2, v1

    .line 29
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oneplus/gallery/drawable/SimpleBitmapDrawable;->m_Bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 40
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/drawable/SimpleBitmapDrawable;->m_Bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/oneplus/gallery/drawable/SimpleBitmapDrawable;->m_SrcRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/oneplus/gallery/drawable/SimpleBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/gallery/drawable/SimpleBitmapDrawable;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/oneplus/gallery/drawable/SimpleBitmapDrawable;->m_Bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/drawable/SimpleBitmapDrawable;->m_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/oneplus/gallery/drawable/SimpleBitmapDrawable;->m_Bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/drawable/SimpleBitmapDrawable;->m_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 71
    const/16 v0, 0xff

    if-ne p1, v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/oneplus/gallery/drawable/SimpleBitmapDrawable;->m_Paint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/oneplus/gallery/drawable/SimpleBitmapDrawable;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/drawable/SimpleBitmapDrawable;->m_Paint:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/drawable/SimpleBitmapDrawable;->m_Paint:Landroid/graphics/Paint;

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/drawable/SimpleBitmapDrawable;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 89
    if-nez p1, :cond_1

    .line 91
    iget-object v0, p0, Lcom/oneplus/gallery/drawable/SimpleBitmapDrawable;->m_Paint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/oneplus/gallery/drawable/SimpleBitmapDrawable;->m_Paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/drawable/SimpleBitmapDrawable;->m_Paint:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 97
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/drawable/SimpleBitmapDrawable;->m_Paint:Landroid/graphics/Paint;

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/drawable/SimpleBitmapDrawable;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0
.end method
