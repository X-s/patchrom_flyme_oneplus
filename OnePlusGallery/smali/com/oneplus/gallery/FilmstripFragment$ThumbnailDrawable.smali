.class final Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FilmstripFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/FilmstripFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ThumbnailDrawable"
.end annotation


# instance fields
.field private m_LowQualityThumbnail:Landroid/graphics/Bitmap;

.field private final m_Paint:Landroid/graphics/Paint;

.field private final m_SourceRect:Landroid/graphics/Rect;

.field private m_Thumbnail:Landroid/graphics/Bitmap;

.field private m_UseLowQuality:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 705
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 698
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;->m_Paint:Landroid/graphics/Paint;

    .line 699
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;->m_SourceRect:Landroid/graphics/Rect;

    .line 706
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;->m_Paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 707
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 712
    iget-boolean v1, p0, Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;->m_UseLowQuality:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;->m_Thumbnail:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;->m_Thumbnail:Landroid/graphics/Bitmap;

    .line 713
    .local v0, "thumb":Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v0, :cond_0

    .line 715
    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;->m_SourceRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 716
    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;->m_SourceRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 718
    :cond_0
    return-void

    .line 712
    .end local v0    # "thumb":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;->m_LowQualityThumbnail:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;->m_LowQualityThumbnail:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;->m_Thumbnail:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getLowQualityThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;->m_LowQualityThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 728
    const/4 v0, -0x3

    return v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;->m_Thumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 738
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 742
    return-void
.end method

.method public setLowQuality()V
    .locals 2

    .prologue
    .line 746
    iget-boolean v0, p0, Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;->m_UseLowQuality:Z

    if-nez v0, :cond_0

    .line 748
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;->m_UseLowQuality:Z

    .line 749
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;->m_Thumbnail:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;->m_LowQualityThumbnail:Landroid/graphics/Bitmap;

    if-eq v0, v1, :cond_0

    .line 750
    invoke-virtual {p0}, Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;->invalidateSelf()V

    .line 752
    :cond_0
    return-void
.end method

.method public setLowQualityThumbnail(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    .line 756
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;->m_LowQualityThumbnail:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_0

    .line 758
    iput-object p1, p0, Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;->m_LowQualityThumbnail:Landroid/graphics/Bitmap;

    .line 759
    iget-boolean v0, p0, Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;->m_UseLowQuality:Z

    if-eqz v0, :cond_0

    .line 760
    invoke-virtual {p0}, Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;->invalidateSelf()V

    .line 762
    :cond_0
    return-void
.end method

.method public setNormalQuality()V
    .locals 2

    .prologue
    .line 766
    iget-boolean v0, p0, Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;->m_UseLowQuality:Z

    if-eqz v0, :cond_0

    .line 768
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;->m_UseLowQuality:Z

    .line 769
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;->m_Thumbnail:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;->m_LowQualityThumbnail:Landroid/graphics/Bitmap;

    if-eq v0, v1, :cond_0

    .line 770
    invoke-virtual {p0}, Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;->invalidateSelf()V

    .line 772
    :cond_0
    return-void
.end method

.method public setThumbnail(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    .line 776
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;->m_Thumbnail:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_0

    .line 778
    iput-object p1, p0, Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;->m_Thumbnail:Landroid/graphics/Bitmap;

    .line 779
    iget-boolean v0, p0, Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;->m_UseLowQuality:Z

    if-nez v0, :cond_0

    .line 780
    invoke-virtual {p0}, Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;->invalidateSelf()V

    .line 782
    :cond_0
    return-void
.end method
