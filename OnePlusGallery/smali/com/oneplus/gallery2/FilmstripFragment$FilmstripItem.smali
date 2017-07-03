.class Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
.super Ljava/lang/Object;
.source "FilmstripFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/FilmstripFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilmstripItem"
.end annotation


# instance fields
.field private final m_BurstContainer:Landroid/view/View;

.field private final m_BurstText:Landroid/widget/TextView;

.field private final m_Container:Landroid/view/View;

.field private m_Duration:Ljava/lang/Long;

.field private m_ImageDecodeState:Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;

.field private m_InvalidTextView:Landroid/widget/TextView;

.field private m_Media:Lcom/oneplus/gallery2/media/Media;

.field private m_MediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

.field private m_MediaSize:Landroid/util/Size;

.field private m_MediaSizeObtainingHandle:Lcom/oneplus/base/Handle;

.field private final m_PlayButton:Landroid/widget/ImageView;

.field private m_Position:I

.field private final m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

.field private m_ThumbnailDrawable:Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailDrawable;

.field private m_ThunbmailQuality:Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailQuality;

.field final synthetic this$0:Lcom/oneplus/gallery2/FilmstripFragment;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/FilmstripFragment;Lcom/oneplus/gallery2/media/Media;)V
    .locals 3
    .param p2, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 448
    iput-object p1, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    sget-object v0, Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailQuality;->LOW:Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailQuality;

    iput-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_ThunbmailQuality:Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailQuality;

    .line 450
    invoke-virtual {p1}, Lcom/oneplus/gallery2/FilmstripFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f030017

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_Container:Landroid/view/View;

    .line 453
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_Container:Landroid/view/View;

    const v1, 0x7f060068

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/widget/ScaleImageView;

    iput-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    .line 454
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    new-instance v1, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem$1;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem$1;-><init>(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;Lcom/oneplus/gallery2/FilmstripFragment;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/ScaleImageView;->setOnGestureCallback(Lcom/oneplus/widget/ScaleImageView$GestureCallback;)V

    .line 492
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    new-instance v1, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem$2;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem$2;-><init>(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;Lcom/oneplus/gallery2/FilmstripFragment;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/ScaleImageView;->addOnStateChangedCallback(Lcom/oneplus/widget/ScaleImageView$StateCallback;)V

    .line 504
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v0, p0}, Lcom/oneplus/widget/ScaleImageView;->setTag(Ljava/lang/Object;)V

    .line 507
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_Container:Landroid/view/View;

    const v1, 0x7f060069

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_PlayButton:Landroid/widget/ImageView;

    .line 508
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_PlayButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem$3;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem$3;-><init>(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;Lcom/oneplus/gallery2/FilmstripFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 518
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_Container:Landroid/view/View;

    const v1, 0x7f06006a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_InvalidTextView:Landroid/widget/TextView;

    .line 519
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_InvalidTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSoundEffectsEnabled(Z)V

    .line 520
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_InvalidTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem$4;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem$4;-><init>(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;Lcom/oneplus/gallery2/FilmstripFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 530
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_Container:Landroid/view/View;

    const v1, 0x7f06006b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_BurstContainer:Landroid/view/View;

    .line 531
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_BurstContainer:Landroid/view/View;

    new-instance v1, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem$5;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem$5;-><init>(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;Lcom/oneplus/gallery2/FilmstripFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 551
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_Container:Landroid/view/View;

    const v1, 0x7f06006d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_BurstText:Landroid/widget/TextView;

    .line 554
    new-instance v0, Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailDrawable;

    invoke-direct {v0}, Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailDrawable;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_ThumbnailDrawable:Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailDrawable;

    .line 557
    new-instance v0, Lcom/oneplus/gallery2/drawable/MediaDrawable;

    invoke-direct {v0, p2}, Lcom/oneplus/gallery2/drawable/MediaDrawable;-><init>(Lcom/oneplus/gallery2/media/Media;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_MediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    .line 560
    invoke-virtual {p0, p2}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->updateMedia(Lcom/oneplus/gallery2/media/Media;)V

    .line 561
    return-void
.end method

.method static synthetic access$3200(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    .prologue
    .line 427
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->onPlayButtonClick()V

    return-void
.end method

.method static synthetic access$6100(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 427
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->updateViewWhenDecoded(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    .prologue
    .line 427
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->isStretchedImage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6300(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;)Lcom/oneplus/widget/ScaleImageView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    .prologue
    .line 427
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    return-object v0
.end method

.method private isStretchedImage()Z
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v0}, Lcom/oneplus/widget/ScaleImageView;->isStretchedImage()Z

    move-result v0

    return v0
.end method

.method private onPlayButtonClick()V
    .locals 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->getMedia()Lcom/oneplus/gallery2/media/Media;

    move-result-object v1

    # invokes: Lcom/oneplus/gallery2/FilmstripFragment;->playVideo(Lcom/oneplus/gallery2/media/Media;)V
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/FilmstripFragment;->access$3600(Lcom/oneplus/gallery2/FilmstripFragment;Lcom/oneplus/gallery2/media/Media;)V

    .line 629
    return-void
.end method

.method private updateViewWhenDecoded(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 829
    invoke-virtual {p0}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->getMedia()Lcom/oneplus/gallery2/media/Media;

    move-result-object v3

    instance-of v3, v3, Lcom/oneplus/gallery2/media/VideoMedia;

    if-eqz v3, :cond_1

    move v0, v1

    .line 830
    .local v0, "isVideo":Z
    :goto_0
    if-nez p1, :cond_2

    .line 832
    if-nez v0, :cond_0

    .line 834
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v1, v2}, Lcom/oneplus/widget/ScaleImageView;->setImageBoundsChangeEnabled(Z)V

    .line 835
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v1, v4}, Lcom/oneplus/widget/ScaleImageView;->setVisibility(I)V

    .line 836
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_InvalidTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 845
    :cond_0
    :goto_1
    return-void

    .end local v0    # "isVideo":Z
    :cond_1
    move v0, v2

    .line 829
    goto :goto_0

    .line 841
    .restart local v0    # "isVideo":Z
    :cond_2
    iget-object v3, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    if-nez v0, :cond_3

    :goto_2
    invoke-virtual {v3, v1}, Lcom/oneplus/widget/ScaleImageView;->setImageBoundsChangeEnabled(Z)V

    .line 842
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v1, v2}, Lcom/oneplus/widget/ScaleImageView;->setVisibility(I)V

    .line 843
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_InvalidTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move v1, v2

    .line 841
    goto :goto_2
.end method


# virtual methods
.method public clearCaches()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 566
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_ThumbnailDrawable:Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailDrawable;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailDrawable;->setLowQualityThumbnail(Landroid/graphics/Bitmap;)V

    .line 567
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_ThumbnailDrawable:Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailDrawable;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailDrawable;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 568
    return-void
.end method

.method public getContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_Container:Landroid/view/View;

    return-object v0
.end method

.method public getImageBoundsType()Lcom/oneplus/widget/ScaleImageView$BoundsType;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v0}, Lcom/oneplus/widget/ScaleImageView;->getImageBoundsType()Lcom/oneplus/widget/ScaleImageView$BoundsType;

    move-result-object v0

    return-object v0
.end method

.method public getImageDecodeState()Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_ImageDecodeState:Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;

    return-object v0
.end method

.method public getLowResThumb()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_ThumbnailDrawable:Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailDrawable;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailDrawable;->getLowQualityThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getMedia()Lcom/oneplus/gallery2/media/Media;
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_Media:Lcom/oneplus/gallery2/media/Media;

    return-object v0
.end method

.method public getMediumResThumb()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_ThumbnailDrawable:Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailDrawable;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailDrawable;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 608
    iget v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_Position:I

    return v0
.end method

.method public hideBurstContainer()V
    .locals 2

    .prologue
    .line 614
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_BurstContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_BurstContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 616
    :cond_0
    return-void
.end method

.method public setImageBounds(Lcom/oneplus/widget/ScaleImageView$BoundsType;)V
    .locals 1
    .param p1, "boundsType"    # Lcom/oneplus/widget/ScaleImageView$BoundsType;

    .prologue
    .line 634
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v0, p1}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Lcom/oneplus/widget/ScaleImageView$BoundsType;)V

    .line 635
    return-void
.end method

.method public setImageDecodeState(Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;)V
    .locals 0
    .param p1, "state"    # Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;

    .prologue
    .line 640
    iput-object p1, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_ImageDecodeState:Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;

    .line 641
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 646
    if-eqz p1, :cond_0

    .line 647
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_MediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    invoke-virtual {v0, p1}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 650
    :goto_0
    return-void

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_MediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_ThumbnailDrawable:Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailDrawable;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setLowResThumb(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    .line 655
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_ThumbnailDrawable:Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailDrawable;

    invoke-virtual {v0, p1}, Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailDrawable;->setLowQualityThumbnail(Landroid/graphics/Bitmap;)V

    .line 656
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_MediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_ThumbnailDrawable:Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailDrawable;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 657
    return-void
.end method

.method public setMediumResThumb(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    .line 662
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_ThumbnailDrawable:Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailDrawable;

    invoke-virtual {v0, p1}, Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailDrawable;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 663
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_MediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_ThumbnailDrawable:Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailDrawable;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 664
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 669
    iput p1, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_Position:I

    .line 670
    return-void
.end method

.method public setThumbnailQuality(Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailQuality;)V
    .locals 2
    .param p1, "quality"    # Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailQuality;

    .prologue
    .line 675
    sget-object v0, Lcom/oneplus/gallery2/FilmstripFragment$30;->$SwitchMap$com$oneplus$gallery2$FilmstripFragment$ThumbnailQuality:[I

    invoke-virtual {p1}, Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailQuality;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 684
    :goto_0
    return-void

    .line 678
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_ThumbnailDrawable:Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailDrawable;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailDrawable;->setLowQuality()V

    goto :goto_0

    .line 681
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_ThumbnailDrawable:Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailDrawable;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailDrawable;->setNormalQuality()V

    goto :goto_0

    .line 675
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateBurstContainerInfo()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 779
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_BurstContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_Media:Lcom/oneplus/gallery2/media/Media;

    if-nez v0, :cond_1

    .line 792
    :cond_0
    :goto_0
    return-void

    .line 782
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    # getter for: Lcom/oneplus/gallery2/FilmstripFragment;->m_IsToolbarVisible:Z
    invoke-static {v0}, Lcom/oneplus/gallery2/FilmstripFragment;->access$4100(Lcom/oneplus/gallery2/FilmstripFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_Media:Lcom/oneplus/gallery2/media/Media;

    invoke-static {v0}, Lcom/oneplus/gallery2/media/MediaUtils;->containsMultipleSubMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 784
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_BurstText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    const v3, 0x7f09004f

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_Media:Lcom/oneplus/gallery2/media/Media;

    check-cast v0, Lcom/oneplus/gallery2/media/GroupedMedia;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/GroupedMedia;->getSubMediaCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/gallery2/FilmstripFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 785
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_BurstContainer:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 786
    invoke-virtual {p0}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->updateBurstContainerMargin()V

    goto :goto_0

    .line 790
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_BurstContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateBurstContainerMargin()V
    .locals 7

    .prologue
    .line 797
    iget-object v4, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_BurstContainer:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_BurstContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    .line 824
    :cond_0
    :goto_0
    return-void

    .line 800
    :cond_1
    iget-object v4, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    invoke-virtual {v4}, Lcom/oneplus/gallery2/FilmstripFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v0

    .line 801
    .local v0, "galleryActivity":Lcom/oneplus/gallery2/GalleryActivity;
    if-eqz v0, :cond_0

    .line 804
    iget-object v4, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    invoke-virtual {v4}, Lcom/oneplus/gallery2/FilmstripFragment;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v4

    sget-object v5, Lcom/oneplus/gallery2/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v5}, Lcom/oneplus/gallery2/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 805
    .local v1, "isNavbarVisible":Z
    iget-object v4, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    # getter for: Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/oneplus/gallery2/FilmstripFragment;->access$4200(Lcom/oneplus/gallery2/FilmstripFragment;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "updateBurstContainerMargin() - Navigation bar visible: "

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 807
    sget-object v4, Lcom/oneplus/gallery2/GalleryActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v4}, Lcom/oneplus/gallery2/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/base/ScreenSize;

    .line 808
    .local v3, "screenSize":Lcom/oneplus/base/ScreenSize;
    if-eqz v1, :cond_3

    .line 810
    invoke-virtual {v3}, Lcom/oneplus/base/ScreenSize;->getNavigationBarSize()I

    move-result v2

    .line 811
    .local v2, "naviHeight":I
    invoke-virtual {v3}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Lcom/oneplus/base/ScreenSize;->getHeight()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 813
    iget-object v4, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_BurstContainer:Landroid/view/View;

    iget-object v5, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    # getter for: Lcom/oneplus/gallery2/FilmstripFragment;->m_ActionBarHeight:I
    invoke-static {v5}, Lcom/oneplus/gallery2/FilmstripFragment;->access$4300(Lcom/oneplus/gallery2/FilmstripFragment;)I

    move-result v5

    add-int/2addr v5, v2

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 817
    :cond_2
    iget-object v4, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_BurstContainer:Landroid/view/View;

    iget-object v5, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    # getter for: Lcom/oneplus/gallery2/FilmstripFragment;->m_ActionBarHeight:I
    invoke-static {v5}, Lcom/oneplus/gallery2/FilmstripFragment;->access$4300(Lcom/oneplus/gallery2/FilmstripFragment;)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 822
    .end local v2    # "naviHeight":I
    :cond_3
    iget-object v4, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_BurstContainer:Landroid/view/View;

    iget-object v5, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    # getter for: Lcom/oneplus/gallery2/FilmstripFragment;->m_ActionBarHeight:I
    invoke-static {v5}, Lcom/oneplus/gallery2/FilmstripFragment;->access$4300(Lcom/oneplus/gallery2/FilmstripFragment;)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method

.method public updateMedia(Lcom/oneplus/gallery2/media/Media;)V
    .locals 11
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    const/4 v9, 0x0

    const/high16 v8, -0x40800000    # -1.0f

    .line 690
    iget-object v6, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_Media:Lcom/oneplus/gallery2/media/Media;

    if-eq v6, p1, :cond_0

    .line 692
    iput-object p1, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_Media:Lcom/oneplus/gallery2/media/Media;

    .line 693
    iget-object v6, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_MediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    invoke-virtual {v6, p1}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setMedia(Lcom/oneplus/gallery2/media/Media;)V

    .line 694
    iget-object v6, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_MediaSizeObtainingHandle:Lcom/oneplus/base/Handle;

    invoke-static {v6}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v6

    iput-object v6, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_MediaSizeObtainingHandle:Lcom/oneplus/base/Handle;

    .line 698
    :cond_0
    if-nez p1, :cond_1

    .line 774
    :goto_0
    return-void

    .line 702
    :cond_1
    instance-of v3, p1, Lcom/oneplus/gallery2/media/VideoMedia;

    .line 703
    .local v3, "isVideo":Z
    const/4 v4, 0x0

    .line 704
    .local v4, "scaleImageViewVisibility":I
    const/16 v2, 0x8

    .line 705
    .local v2, "invalidTextViewVisibility":I
    const/4 v0, 0x1

    .line 708
    .local v0, "enableImageBoundsChange":Z
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->peekSize()Landroid/util/Size;

    move-result-object v6

    iput-object v6, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_MediaSize:Landroid/util/Size;

    .line 711
    iget-object v6, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_MediaSize:Landroid/util/Size;

    if-eqz v6, :cond_5

    .line 713
    iget-object v6, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_MediaSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v5

    .line 714
    .local v5, "width":I
    iget-object v6, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_MediaSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 715
    .local v1, "height":I
    if-lez v5, :cond_2

    if-gtz v1, :cond_3

    .line 718
    :cond_2
    if-eqz v3, :cond_4

    .line 720
    iget-object v6, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    # getter for: Lcom/oneplus/gallery2/FilmstripFragment;->m_FakeVideoSize:Landroid/util/Size;
    invoke-static {v6}, Lcom/oneplus/gallery2/FilmstripFragment;->access$3700(Lcom/oneplus/gallery2/FilmstripFragment;)Landroid/util/Size;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v5

    .line 721
    iget-object v6, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    # getter for: Lcom/oneplus/gallery2/FilmstripFragment;->m_FakeVideoSize:Landroid/util/Size;
    invoke-static {v6}, Lcom/oneplus/gallery2/FilmstripFragment;->access$3700(Lcom/oneplus/gallery2/FilmstripFragment;)Landroid/util/Size;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 748
    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    iget-object v7, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_MediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    invoke-virtual {v6, v7}, Lcom/oneplus/widget/ScaleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 751
    if-eqz v3, :cond_6

    .line 753
    iget-object v6, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_PlayButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 754
    iget-object v6, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    sget-object v7, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    invoke-virtual {v6, v7}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Lcom/oneplus/widget/ScaleImageView$BoundsType;)V

    .line 755
    iget-object v6, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v6, v9}, Lcom/oneplus/widget/ScaleImageView;->setImageBoundsChangeEnabled(Z)V

    .line 756
    iget-object v6, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v8, v7}, Lcom/oneplus/widget/ScaleImageView;->setImageScaleRatio(FF)V

    .line 757
    iget-object v6, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v6, v4}, Lcom/oneplus/widget/ScaleImageView;->setVisibility(I)V

    .line 758
    iget-object v6, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_InvalidTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 773
    :goto_2
    iget-object v6, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    # getter for: Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/oneplus/gallery2/FilmstripFragment;->access$4000(Lcom/oneplus/gallery2/FilmstripFragment;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "updateMedia() - File path: "

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v8

    const-string v9, ", hash: "

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v6, v7, v8, v9, v10}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 725
    :cond_4
    iget-object v6, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    # getter for: Lcom/oneplus/gallery2/FilmstripFragment;->m_FakePhotoSize:Landroid/util/Size;
    invoke-static {v6}, Lcom/oneplus/gallery2/FilmstripFragment;->access$3800(Lcom/oneplus/gallery2/FilmstripFragment;)Landroid/util/Size;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v5

    .line 726
    iget-object v6, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    # getter for: Lcom/oneplus/gallery2/FilmstripFragment;->m_FakePhotoSize:Landroid/util/Size;
    invoke-static {v6}, Lcom/oneplus/gallery2/FilmstripFragment;->access$3800(Lcom/oneplus/gallery2/FilmstripFragment;)Landroid/util/Size;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 727
    const/16 v4, 0x8

    .line 728
    const/4 v2, 0x0

    .line 729
    const/4 v0, 0x0

    goto :goto_1

    .line 736
    .end local v1    # "height":I
    .end local v5    # "width":I
    :cond_5
    const/4 v5, 0x0

    .line 737
    .restart local v5    # "width":I
    const/4 v1, 0x0

    .line 738
    .restart local v1    # "height":I
    const/16 v4, 0x8

    .line 739
    const/16 v2, 0x8

    .line 740
    const/4 v0, 0x0

    .line 743
    iget-object v6, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_MediaSizeObtainingHandle:Lcom/oneplus/base/Handle;

    invoke-static {v6}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 744
    iget-object v6, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    # getter for: Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaSizeCallback:Lcom/oneplus/gallery2/media/Media$SizeCallback;
    invoke-static {v6}, Lcom/oneplus/gallery2/FilmstripFragment;->access$3900(Lcom/oneplus/gallery2/FilmstripFragment;)Lcom/oneplus/gallery2/media/Media$SizeCallback;

    move-result-object v6

    invoke-interface {p1, v6}, Lcom/oneplus/gallery2/media/Media;->getSize(Lcom/oneplus/gallery2/media/Media$SizeCallback;)Lcom/oneplus/base/Handle;

    move-result-object v6

    iput-object v6, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_MediaSizeObtainingHandle:Lcom/oneplus/base/Handle;

    goto :goto_1

    .line 762
    :cond_6
    iget-object v6, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_PlayButton:Landroid/widget/ImageView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 763
    iget-object v6, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    sget-object v7, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    invoke-virtual {v6, v7}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Lcom/oneplus/widget/ScaleImageView$BoundsType;)V

    .line 764
    iget-object v6, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v6, v0}, Lcom/oneplus/widget/ScaleImageView;->setImageBoundsChangeEnabled(Z)V

    .line 765
    iget-object v6, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v6, v8, v8}, Lcom/oneplus/widget/ScaleImageView;->setImageScaleRatio(FF)V

    .line 766
    iget-object v6, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v6, v4}, Lcom/oneplus/widget/ScaleImageView;->setVisibility(I)V

    .line 767
    iget-object v6, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_InvalidTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 770
    invoke-virtual {p0}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->updateBurstContainerInfo()V

    goto :goto_2
.end method
