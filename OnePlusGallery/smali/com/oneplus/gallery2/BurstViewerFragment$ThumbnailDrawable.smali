.class final Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BurstViewerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/BurstViewerFragment;
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
    .line 921
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 914
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;->m_Paint:Landroid/graphics/Paint;

    .line 915
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;->m_SourceRect:Landroid/graphics/Rect;

    .line 922
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;->m_Paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 923
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 928
    iget-boolean v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;->m_UseLowQuality:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;->m_Thumbnail:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;->m_Thumbnail:Landroid/graphics/Bitmap;

    .line 929
    .local v0, "thumb":Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v0, :cond_0

    .line 931
    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;->m_SourceRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 932
    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;->m_SourceRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 934
    :cond_0
    return-void

    .line 928
    .end local v0    # "thumb":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;->m_LowQualityThumbnail:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;->m_LowQualityThumbnail:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;->m_Thumbnail:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getLowQualityThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 938
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;->m_LowQualityThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 944
    const/4 v0, -0x3

    return v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 949
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;->m_Thumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 954
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 958
    return-void
.end method

.method public setLowQuality()V
    .locals 2

    .prologue
    .line 962
    iget-boolean v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;->m_UseLowQuality:Z

    if-nez v0, :cond_0

    .line 964
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;->m_UseLowQuality:Z

    .line 965
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;->m_Thumbnail:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;->m_LowQualityThumbnail:Landroid/graphics/Bitmap;

    if-eq v0, v1, :cond_0

    .line 966
    invoke-virtual {p0}, Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;->invalidateSelf()V

    .line 968
    :cond_0
    return-void
.end method

.method public setLowQualityThumbnail(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    .line 972
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;->m_LowQualityThumbnail:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_0

    .line 974
    iput-object p1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;->m_LowQualityThumbnail:Landroid/graphics/Bitmap;

    .line 975
    iget-boolean v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;->m_UseLowQuality:Z

    if-eqz v0, :cond_0

    .line 976
    invoke-virtual {p0}, Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;->invalidateSelf()V

    .line 978
    :cond_0
    return-void
.end method

.method public setNormalQuality()V
    .locals 2

    .prologue
    .line 982
    iget-boolean v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;->m_UseLowQuality:Z

    if-eqz v0, :cond_0

    .line 984
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;->m_UseLowQuality:Z

    .line 985
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;->m_Thumbnail:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;->m_LowQualityThumbnail:Landroid/graphics/Bitmap;

    if-eq v0, v1, :cond_0

    .line 986
    invoke-virtual {p0}, Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;->invalidateSelf()V

    .line 988
    :cond_0
    return-void
.end method

.method public setThumbnail(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    .line 992
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;->m_Thumbnail:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_0

    .line 994
    iput-object p1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;->m_Thumbnail:Landroid/graphics/Bitmap;

    .line 995
    iget-boolean v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;->m_UseLowQuality:Z

    if-nez v0, :cond_0

    .line 996
    invoke-virtual {p0}, Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;->invalidateSelf()V

    .line 998
    :cond_0
    return-void
.end method
