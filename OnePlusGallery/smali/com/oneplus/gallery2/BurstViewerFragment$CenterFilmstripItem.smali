.class Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;
.super Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;
.source "BurstViewerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/BurstViewerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CenterFilmstripItem"
.end annotation


# instance fields
.field private final m_CheckBox:Landroid/widget/ImageView;

.field private m_MediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

.field private final m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

.field private m_ThumbnailDrawable:Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;

.field final synthetic this$0:Lcom/oneplus/gallery2/BurstViewerFragment;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/BurstViewerFragment;Lcom/oneplus/gallery2/media/Media;)V
    .locals 3
    .param p2, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 443
    iput-object p1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    .line 445
    const v1, 0x7f030015

    invoke-direct {p0, p1, v1}, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;-><init>(Lcom/oneplus/gallery2/BurstViewerFragment;I)V

    .line 446
    invoke-virtual {p0}, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->getContainer()Landroid/view/View;

    move-result-object v0

    .line 449
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f060063

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/widget/ScaleImageView;

    iput-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    .line 450
    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    new-instance v2, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem$1;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem$1;-><init>(Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;Lcom/oneplus/gallery2/BurstViewerFragment;)V

    invoke-virtual {v1, v2}, Lcom/oneplus/widget/ScaleImageView;->setOnGestureCallback(Lcom/oneplus/widget/ScaleImageView$GestureCallback;)V

    .line 493
    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    new-instance v2, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem$2;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem$2;-><init>(Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;Lcom/oneplus/gallery2/BurstViewerFragment;)V

    invoke-virtual {v1, v2}, Lcom/oneplus/widget/ScaleImageView;->addOnStateChangedCallback(Lcom/oneplus/widget/ScaleImageView$StateCallback;)V

    .line 505
    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v1, p0}, Lcom/oneplus/widget/ScaleImageView;->setTag(Ljava/lang/Object;)V

    .line 508
    const v1, 0x7f060064

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->m_CheckBox:Landroid/widget/ImageView;

    .line 511
    new-instance v1, Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;

    invoke-direct {v1}, Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;-><init>()V

    iput-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->m_ThumbnailDrawable:Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;

    .line 514
    new-instance v1, Lcom/oneplus/gallery2/drawable/MediaDrawable;

    invoke-direct {v1, p2}, Lcom/oneplus/gallery2/drawable/MediaDrawable;-><init>(Lcom/oneplus/gallery2/media/Media;)V

    iput-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->m_MediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    .line 517
    invoke-virtual {p0, p2}, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->updateMedia(Lcom/oneplus/gallery2/media/Media;)V

    .line 518
    return-void
.end method

.method static synthetic access$2900(Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;)Lcom/oneplus/widget/ScaleImageView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;

    .prologue
    .line 433
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;

    .prologue
    .line 433
    invoke-direct {p0}, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->isStretchedImage()Z

    move-result v0

    return v0
.end method

.method private isStretchedImage()Z
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v0}, Lcom/oneplus/widget/ScaleImageView;->isStretchedImage()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public clearCaches()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 523
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->m_ThumbnailDrawable:Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;->setLowQualityThumbnail(Landroid/graphics/Bitmap;)V

    .line 524
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->m_ThumbnailDrawable:Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 525
    return-void
.end method

.method public getImageBoundsType()Lcom/oneplus/widget/ScaleImageView$BoundsType;
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v0}, Lcom/oneplus/widget/ScaleImageView;->getImageBoundsType()Lcom/oneplus/widget/ScaleImageView$BoundsType;

    move-result-object v0

    return-object v0
.end method

.method public getLowResThumb()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->m_ThumbnailDrawable:Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;->getLowQualityThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getMediumResThumb()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->m_ThumbnailDrawable:Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public setImageBounds(Lcom/oneplus/widget/ScaleImageView$BoundsType;)V
    .locals 1
    .param p1, "boundsType"    # Lcom/oneplus/widget/ScaleImageView$BoundsType;

    .prologue
    .line 567
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v0, p1}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Lcom/oneplus/widget/ScaleImageView$BoundsType;)V

    .line 568
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 574
    if-eqz p1, :cond_0

    .line 575
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->m_MediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    invoke-virtual {v0, p1}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 578
    :goto_0
    return-void

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->m_MediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->m_ThumbnailDrawable:Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setLowResThumb(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    .line 584
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->m_ThumbnailDrawable:Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;

    invoke-virtual {v0, p1}, Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;->setLowQualityThumbnail(Landroid/graphics/Bitmap;)V

    .line 585
    if-eqz p1, :cond_0

    .line 586
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->m_ThumbnailDrawable:Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/ScaleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 587
    :cond_0
    return-void
.end method

.method public setMediumResThumb(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    .line 592
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->m_ThumbnailDrawable:Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;

    invoke-virtual {v0, p1}, Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 593
    if-eqz p1, :cond_0

    .line 594
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->m_ThumbnailDrawable:Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/ScaleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 595
    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 2
    .param p1, "isSelected"    # Z

    .prologue
    .line 555
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->m_CheckBox:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 562
    :goto_0
    return-void

    .line 558
    :cond_0
    if-eqz p1, :cond_1

    .line 559
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->m_CheckBox:Landroid/widget/ImageView;

    const v1, 0x7f02004f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 561
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->m_CheckBox:Landroid/widget/ImageView;

    const v1, 0x7f020051

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setThumbnailQuality(Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailQuality;)V
    .locals 2
    .param p1, "quality"    # Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailQuality;

    .prologue
    .line 600
    sget-object v0, Lcom/oneplus/gallery2/BurstViewerFragment$25;->$SwitchMap$com$oneplus$gallery2$BurstViewerFragment$ThumbnailQuality:[I

    invoke-virtual {p1}, Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailQuality;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 609
    :goto_0
    return-void

    .line 603
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->m_ThumbnailDrawable:Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;->setLowQuality()V

    goto :goto_0

    .line 606
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->m_ThumbnailDrawable:Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;->setNormalQuality()V

    goto :goto_0

    .line 600
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateCheckBoxMarginAndVisibility()V
    .locals 6

    .prologue
    .line 614
    iget-object v4, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->m_CheckBox:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    if-nez v4, :cond_1

    .line 651
    :cond_0
    :goto_0
    return-void

    .line 617
    :cond_1
    iget-object v4, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    invoke-virtual {v4}, Lcom/oneplus/gallery2/BurstViewerFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v0

    .line 618
    .local v0, "galleryActivity":Lcom/oneplus/gallery2/GalleryActivity;
    if-eqz v0, :cond_0

    .line 622
    iget-object v4, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    # getter for: Lcom/oneplus/gallery2/BurstViewerFragment;->m_IsToolbarVisible:Z
    invoke-static {v4}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$1500(Lcom/oneplus/gallery2/BurstViewerFragment;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v4}, Lcom/oneplus/widget/ScaleImageView;->getImageBoundsType()Lcom/oneplus/widget/ScaleImageView$BoundsType;

    move-result-object v4

    sget-object v5, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    if-ne v4, v5, :cond_2

    .line 623
    iget-object v4, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->m_CheckBox:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 631
    iget-object v4, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    invoke-virtual {v4}, Lcom/oneplus/gallery2/BurstViewerFragment;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v4

    sget-object v5, Lcom/oneplus/gallery2/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v5}, Lcom/oneplus/gallery2/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 632
    .local v1, "isNavbarVisible":Z
    sget-object v4, Lcom/oneplus/gallery2/GalleryActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v4}, Lcom/oneplus/gallery2/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/base/ScreenSize;

    .line 633
    .local v3, "screenSize":Lcom/oneplus/base/ScreenSize;
    if-eqz v1, :cond_4

    .line 635
    invoke-virtual {v3}, Lcom/oneplus/base/ScreenSize;->getNavigationBarSize()I

    move-result v2

    .line 636
    .local v2, "naviHeight":I
    invoke-virtual {v3}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Lcom/oneplus/base/ScreenSize;->getHeight()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 638
    iget-object v4, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->m_CheckBox:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    # getter for: Lcom/oneplus/gallery2/BurstViewerFragment;->m_FooterbarHeight:I
    invoke-static {v5}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$3300(Lcom/oneplus/gallery2/BurstViewerFragment;)I

    move-result v5

    add-int/2addr v5, v2

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 639
    iget-object v4, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->m_CheckBox:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTranslationX(F)V

    goto :goto_0

    .line 626
    .end local v1    # "isNavbarVisible":Z
    .end local v2    # "naviHeight":I
    .end local v3    # "screenSize":Lcom/oneplus/base/ScreenSize;
    :cond_2
    iget-object v4, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->m_CheckBox:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 643
    .restart local v1    # "isNavbarVisible":Z
    .restart local v2    # "naviHeight":I
    .restart local v3    # "screenSize":Lcom/oneplus/base/ScreenSize;
    :cond_3
    iget-object v4, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->m_CheckBox:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    # getter for: Lcom/oneplus/gallery2/BurstViewerFragment;->m_FooterbarHeight:I
    invoke-static {v5}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$3300(Lcom/oneplus/gallery2/BurstViewerFragment;)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 644
    iget-object v4, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->m_CheckBox:Landroid/widget/ImageView;

    neg-int v5, v2

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTranslationX(F)V

    goto :goto_0

    .line 649
    .end local v2    # "naviHeight":I
    :cond_4
    iget-object v4, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->m_CheckBox:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    # getter for: Lcom/oneplus/gallery2/BurstViewerFragment;->m_FooterbarHeight:I
    invoke-static {v5}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$3300(Lcom/oneplus/gallery2/BurstViewerFragment;)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTranslationY(F)V

    goto/16 :goto_0
.end method

.method public updateMedia(Lcom/oneplus/gallery2/media/Media;)V
    .locals 11
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    const/high16 v8, -0x40800000    # -1.0f

    .line 658
    iget-object v6, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->m_MediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    invoke-virtual {v6, p1}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setMedia(Lcom/oneplus/gallery2/media/Media;)V

    .line 661
    if-nez p1, :cond_0

    .line 713
    :goto_0
    return-void

    .line 665
    :cond_0
    const/4 v4, 0x0

    .line 666
    .local v4, "scaleImageViewVisibility":I
    const/4 v0, 0x1

    .line 669
    .local v0, "enableImageBoundsChange":Z
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->peekSize()Landroid/util/Size;

    move-result-object v3

    .line 672
    .local v3, "mediaSize":Landroid/util/Size;
    if-eqz v3, :cond_3

    .line 674
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v5

    .line 675
    .local v5, "width":I
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v2

    .line 676
    .local v2, "height":I
    if-lez v5, :cond_1

    if-gtz v2, :cond_2

    .line 678
    :cond_1
    const/16 v4, 0x8

    .line 679
    const/4 v0, 0x0

    .line 699
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    iget-object v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->m_MediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    invoke-virtual {v6, v7}, Lcom/oneplus/widget/ScaleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 700
    iget-object v6, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    sget-object v7, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    invoke-virtual {v6, v7}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Lcom/oneplus/widget/ScaleImageView$BoundsType;)V

    .line 701
    iget-object v6, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v6, v0}, Lcom/oneplus/widget/ScaleImageView;->setImageBoundsChangeEnabled(Z)V

    .line 702
    iget-object v6, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v6, v8, v8}, Lcom/oneplus/widget/ScaleImageView;->setImageScaleRatio(FF)V

    .line 703
    iget-object v6, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v6, v4}, Lcom/oneplus/widget/ScaleImageView;->setVisibility(I)V

    .line 706
    iget-object v6, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    # getter for: Lcom/oneplus/gallery2/BurstViewerFragment;->m_SelectedMediaList:Ljava/util/List;
    invoke-static {v6}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$3600(Lcom/oneplus/gallery2/BurstViewerFragment;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 707
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->setSelected(Z)V

    .line 711
    :goto_2
    invoke-virtual {p0}, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->updateCheckBoxMarginAndVisibility()V

    .line 712
    iget-object v6, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    # getter for: Lcom/oneplus/gallery2/BurstViewerFragment;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$3700(Lcom/oneplus/gallery2/BurstViewerFragment;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "updateMedia() - center,File path: "

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v8

    const-string v9, ", hash: "

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v6, v7, v8, v9, v10}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 685
    .end local v2    # "height":I
    .end local v5    # "width":I
    :cond_3
    const/4 v5, 0x0

    .line 686
    .restart local v5    # "width":I
    const/4 v2, 0x0

    .line 687
    .restart local v2    # "height":I
    const/16 v4, 0x8

    .line 688
    const/4 v0, 0x0

    .line 691
    iget-object v6, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    # getter for: Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaSizeCallbackHandles:Ljava/util/Map;
    invoke-static {v6}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$3400(Lcom/oneplus/gallery2/BurstViewerFragment;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 693
    iget-object v6, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    # getter for: Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaSizeCallback:Lcom/oneplus/gallery2/media/Media$SizeCallback;
    invoke-static {v6}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$3500(Lcom/oneplus/gallery2/BurstViewerFragment;)Lcom/oneplus/gallery2/media/Media$SizeCallback;

    move-result-object v6

    invoke-interface {p1, v6}, Lcom/oneplus/gallery2/media/Media;->getSize(Lcom/oneplus/gallery2/media/Media$SizeCallback;)Lcom/oneplus/base/Handle;

    move-result-object v1

    .line 694
    .local v1, "handle":Lcom/oneplus/base/Handle;
    iget-object v6, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    # getter for: Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaSizeCallbackHandles:Ljava/util/Map;
    invoke-static {v6}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$3400(Lcom/oneplus/gallery2/BurstViewerFragment;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 709
    .end local v1    # "handle":Lcom/oneplus/base/Handle;
    :cond_4
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->setSelected(Z)V

    goto :goto_2
.end method

.method public updateViewWhenDecoded(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 719
    if-nez p1, :cond_0

    .line 721
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v0, v2}, Lcom/oneplus/widget/ScaleImageView;->setImageBoundsChangeEnabled(Z)V

    .line 722
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/ScaleImageView;->setVisibility(I)V

    .line 729
    :goto_0
    return-void

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/ScaleImageView;->setImageBoundsChangeEnabled(Z)V

    .line 727
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v0, v2}, Lcom/oneplus/widget/ScaleImageView;->setVisibility(I)V

    goto :goto_0
.end method
