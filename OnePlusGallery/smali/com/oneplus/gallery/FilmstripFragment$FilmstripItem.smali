.class Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;
.super Ljava/lang/Object;
.source "FilmstripFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/FilmstripFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilmstripItem"
.end annotation


# instance fields
.field private final m_Container:Landroid/view/View;

.field private m_ImageDecodeState:Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;

.field private m_InvalidTextView:Landroid/widget/TextView;

.field private m_Media:Lcom/oneplus/gallery/media/Media;

.field private final m_PlayButton:Landroid/widget/ImageView;

.field private m_Position:I

.field private final m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

.field private m_ThumbnailDrawable:Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;

.field private m_ThunbmailQuality:Lcom/oneplus/gallery/FilmstripFragment$ThumbnailQuality;

.field final synthetic this$0:Lcom/oneplus/gallery/FilmstripFragment;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/FilmstripFragment;Lcom/oneplus/gallery/media/Media;)V
    .locals 3
    .param p2, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 404
    iput-object p1, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    sget-object v0, Lcom/oneplus/gallery/FilmstripFragment$ThumbnailQuality;->LOW:Lcom/oneplus/gallery/FilmstripFragment$ThumbnailQuality;

    iput-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_ThunbmailQuality:Lcom/oneplus/gallery/FilmstripFragment$ThumbnailQuality;

    .line 406
    invoke-virtual {p1}, Lcom/oneplus/gallery/FilmstripFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f030017

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_Container:Landroid/view/View;

    .line 409
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_Container:Landroid/view/View;

    const v1, 0x7f060068

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/widget/ScaleImageView;

    iput-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    .line 410
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    new-instance v1, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem$1;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem$1;-><init>(Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;Lcom/oneplus/gallery/FilmstripFragment;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/ScaleImageView;->setOnGestureCallback(Lcom/oneplus/widget/ScaleImageView$GestureCallback;)V

    .line 448
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    new-instance v1, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem$2;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem$2;-><init>(Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;Lcom/oneplus/gallery/FilmstripFragment;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/ScaleImageView;->addOnStateChangedCallback(Lcom/oneplus/widget/ScaleImageView$StateCallback;)V

    .line 460
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v0, p0}, Lcom/oneplus/widget/ScaleImageView;->setTag(Ljava/lang/Object;)V

    .line 463
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_Container:Landroid/view/View;

    const v1, 0x7f060069

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_PlayButton:Landroid/widget/ImageView;

    .line 464
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_PlayButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem$3;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem$3;-><init>(Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;Lcom/oneplus/gallery/FilmstripFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 474
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_Container:Landroid/view/View;

    const v1, 0x7f06006a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_InvalidTextView:Landroid/widget/TextView;

    .line 475
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_InvalidTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSoundEffectsEnabled(Z)V

    .line 476
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_InvalidTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem$4;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem$4;-><init>(Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;Lcom/oneplus/gallery/FilmstripFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 486
    new-instance v0, Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;

    invoke-direct {v0}, Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_ThumbnailDrawable:Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;

    .line 489
    invoke-virtual {p0, p2}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->updateMedia(Lcom/oneplus/gallery/media/Media;)V

    .line 490
    return-void
.end method

.method static synthetic access$2700(Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;

    .prologue
    .line 389
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->onPlayButtonClick()V

    return-void
.end method

.method static synthetic access$5100(Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 389
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->updateViewWhenDecoded(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;

    .prologue
    .line 389
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->isStretchedImage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;)Lcom/oneplus/widget/ScaleImageView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;

    .prologue
    .line 389
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    return-object v0
.end method

.method private isStretchedImage()Z
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v0}, Lcom/oneplus/widget/ScaleImageView;->isStretchedImage()Z

    move-result v0

    return v0
.end method

.method private onPlayButtonClick()V
    .locals 2

    .prologue
    .line 550
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    invoke-virtual {p0}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->getMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v1

    # invokes: Lcom/oneplus/gallery/FilmstripFragment;->playVideo(Lcom/oneplus/gallery/media/Media;)V
    invoke-static {v0, v1}, Lcom/oneplus/gallery/FilmstripFragment;->access$2900(Lcom/oneplus/gallery/FilmstripFragment;Lcom/oneplus/gallery/media/Media;)V

    .line 551
    return-void
.end method

.method private updateViewWhenDecoded(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 673
    invoke-virtual {p0}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->getMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v3

    instance-of v3, v3, Lcom/oneplus/gallery/media/VideoMedia;

    if-eqz v3, :cond_1

    move v0, v1

    .line 674
    .local v0, "isVideo":Z
    :goto_0
    if-nez p1, :cond_2

    .line 676
    if-nez v0, :cond_0

    .line 678
    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v1, v2}, Lcom/oneplus/widget/ScaleImageView;->setImageBoundsChangeEnabled(Z)V

    .line 679
    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v1, v4}, Lcom/oneplus/widget/ScaleImageView;->setVisibility(I)V

    .line 680
    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_InvalidTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 689
    :cond_0
    :goto_1
    return-void

    .end local v0    # "isVideo":Z
    :cond_1
    move v0, v2

    .line 673
    goto :goto_0

    .line 685
    .restart local v0    # "isVideo":Z
    :cond_2
    iget-object v3, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    if-nez v0, :cond_3

    :goto_2
    invoke-virtual {v3, v1}, Lcom/oneplus/widget/ScaleImageView;->setImageBoundsChangeEnabled(Z)V

    .line 686
    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v1, v2}, Lcom/oneplus/widget/ScaleImageView;->setVisibility(I)V

    .line 687
    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_InvalidTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move v1, v2

    .line 685
    goto :goto_2
.end method


# virtual methods
.method public clearCaches()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 495
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_ThumbnailDrawable:Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;->setLowQualityThumbnail(Landroid/graphics/Bitmap;)V

    .line 496
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_ThumbnailDrawable:Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 497
    return-void
.end method

.method public getContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_Container:Landroid/view/View;

    return-object v0
.end method

.method public getImageBoundsType()Lcom/oneplus/widget/ScaleImageView$BoundsType;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v0}, Lcom/oneplus/widget/ScaleImageView;->getImageBoundsType()Lcom/oneplus/widget/ScaleImageView$BoundsType;

    move-result-object v0

    return-object v0
.end method

.method public getImageDecodeState()Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_ImageDecodeState:Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;

    return-object v0
.end method

.method public getLowResThumb()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_ThumbnailDrawable:Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;

    invoke-virtual {v0}, Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;->getLowQualityThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getMedia()Lcom/oneplus/gallery/media/Media;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_Media:Lcom/oneplus/gallery/media/Media;

    return-object v0
.end method

.method public getMediumResThumb()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_ThumbnailDrawable:Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;

    invoke-virtual {v0}, Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 537
    iget v0, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_Position:I

    return v0
.end method

.method public setImageBounds(Lcom/oneplus/widget/ScaleImageView$BoundsType;)V
    .locals 1
    .param p1, "boundsType"    # Lcom/oneplus/widget/ScaleImageView$BoundsType;

    .prologue
    .line 556
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v0, p1}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Lcom/oneplus/widget/ScaleImageView$BoundsType;)V

    .line 557
    return-void
.end method

.method public setImageDecodeState(Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;)V
    .locals 0
    .param p1, "state"    # Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;

    .prologue
    .line 562
    iput-object p1, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_ImageDecodeState:Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;

    .line 563
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 568
    if-eqz p1, :cond_0

    .line 569
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v0, p1}, Lcom/oneplus/widget/ScaleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 572
    :goto_0
    return-void

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_ThumbnailDrawable:Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/ScaleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setLowResThumb(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    .line 577
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_ThumbnailDrawable:Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;

    invoke-virtual {v0, p1}, Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;->setLowQualityThumbnail(Landroid/graphics/Bitmap;)V

    .line 578
    if-eqz p1, :cond_0

    .line 579
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_ThumbnailDrawable:Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/ScaleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 580
    :cond_0
    return-void
.end method

.method public setMedia(Lcom/oneplus/gallery/media/Media;)V
    .locals 0
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 585
    iput-object p1, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_Media:Lcom/oneplus/gallery/media/Media;

    .line 586
    return-void
.end method

.method public setMediumResThumb(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    .line 591
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_ThumbnailDrawable:Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;

    invoke-virtual {v0, p1}, Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 592
    if-eqz p1, :cond_0

    .line 593
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_ThumbnailDrawable:Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/ScaleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 594
    :cond_0
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 599
    iput p1, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_Position:I

    .line 600
    return-void
.end method

.method public setThumbnailQuality(Lcom/oneplus/gallery/FilmstripFragment$ThumbnailQuality;)V
    .locals 2
    .param p1, "quality"    # Lcom/oneplus/gallery/FilmstripFragment$ThumbnailQuality;

    .prologue
    .line 605
    sget-object v0, Lcom/oneplus/gallery/FilmstripFragment$29;->$SwitchMap$com$oneplus$gallery$FilmstripFragment$ThumbnailQuality:[I

    invoke-virtual {p1}, Lcom/oneplus/gallery/FilmstripFragment$ThumbnailQuality;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 614
    :goto_0
    return-void

    .line 608
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_ThumbnailDrawable:Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;

    invoke-virtual {v0}, Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;->setLowQuality()V

    goto :goto_0

    .line 611
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_ThumbnailDrawable:Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;

    invoke-virtual {v0}, Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;->setNormalQuality()V

    goto :goto_0

    .line 605
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateMedia(Lcom/oneplus/gallery/media/Media;)V
    .locals 11
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    const/4 v9, 0x0

    const/high16 v8, -0x40800000    # -1.0f

    .line 620
    iput-object p1, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_Media:Lcom/oneplus/gallery/media/Media;

    .line 621
    instance-of v3, p1, Lcom/oneplus/gallery/media/VideoMedia;

    .line 622
    .local v3, "isVideo":Z
    const/4 v4, 0x0

    .line 623
    .local v4, "scaleImageViewVisibility":I
    const/16 v2, 0x8

    .line 624
    .local v2, "invalidTextViewVisibility":I
    const/4 v0, 0x1

    .line 627
    .local v0, "enableImageBoundsChange":Z
    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getWidth()I

    move-result v5

    .line 628
    .local v5, "width":I
    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getHeight()I

    move-result v1

    .line 629
    .local v1, "height":I
    if-lez v5, :cond_0

    if-gtz v1, :cond_1

    .line 632
    :cond_0
    if-eqz v3, :cond_2

    .line 634
    iget-object v6, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    # getter for: Lcom/oneplus/gallery/FilmstripFragment;->m_FakeVideoSize:Landroid/util/Size;
    invoke-static {v6}, Lcom/oneplus/gallery/FilmstripFragment;->access$3000(Lcom/oneplus/gallery/FilmstripFragment;)Landroid/util/Size;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v5

    .line 635
    iget-object v6, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    # getter for: Lcom/oneplus/gallery/FilmstripFragment;->m_FakeVideoSize:Landroid/util/Size;
    invoke-static {v6}, Lcom/oneplus/gallery/FilmstripFragment;->access$3000(Lcom/oneplus/gallery/FilmstripFragment;)Landroid/util/Size;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 648
    :cond_1
    :goto_0
    if-eqz v3, :cond_3

    .line 650
    iget-object v6, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_PlayButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 651
    iget-object v6, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    sget-object v7, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    invoke-virtual {v6, v7}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Lcom/oneplus/widget/ScaleImageView$BoundsType;)V

    .line 652
    iget-object v6, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v6, v9}, Lcom/oneplus/widget/ScaleImageView;->setImageBoundsChangeEnabled(Z)V

    .line 653
    iget-object v6, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v8, v7}, Lcom/oneplus/widget/ScaleImageView;->setImageScaleRatio(FF)V

    .line 654
    iget-object v6, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v6, v4}, Lcom/oneplus/widget/ScaleImageView;->setVisibility(I)V

    .line 655
    iget-object v6, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_InvalidTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 667
    :goto_1
    iget-object v6, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    # getter for: Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/oneplus/gallery/FilmstripFragment;->access$3200(Lcom/oneplus/gallery/FilmstripFragment;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "updateMedia() - File path: "

    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v8

    const-string v9, ", hash: "

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v6, v7, v8, v9, v10}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 668
    return-void

    .line 639
    :cond_2
    iget-object v6, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    # getter for: Lcom/oneplus/gallery/FilmstripFragment;->m_FakePhotoSize:Landroid/util/Size;
    invoke-static {v6}, Lcom/oneplus/gallery/FilmstripFragment;->access$3100(Lcom/oneplus/gallery/FilmstripFragment;)Landroid/util/Size;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v5

    .line 640
    iget-object v6, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    # getter for: Lcom/oneplus/gallery/FilmstripFragment;->m_FakePhotoSize:Landroid/util/Size;
    invoke-static {v6}, Lcom/oneplus/gallery/FilmstripFragment;->access$3100(Lcom/oneplus/gallery/FilmstripFragment;)Landroid/util/Size;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 641
    const/16 v4, 0x8

    .line 642
    const/4 v2, 0x0

    .line 643
    const/4 v0, 0x0

    goto :goto_0

    .line 659
    :cond_3
    iget-object v6, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_PlayButton:Landroid/widget/ImageView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 660
    iget-object v6, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    sget-object v7, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    invoke-virtual {v6, v7}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Lcom/oneplus/widget/ScaleImageView$BoundsType;)V

    .line 661
    iget-object v6, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v6, v0}, Lcom/oneplus/widget/ScaleImageView;->setImageBoundsChangeEnabled(Z)V

    .line 662
    iget-object v6, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v6, v8, v8}, Lcom/oneplus/widget/ScaleImageView;->setImageScaleRatio(FF)V

    .line 663
    iget-object v6, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v6, v4}, Lcom/oneplus/widget/ScaleImageView;->setVisibility(I)V

    .line 664
    iget-object v6, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_InvalidTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
