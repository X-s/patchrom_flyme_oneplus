.class Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
.super Ljava/lang/Object;
.source "CameraGalleryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/CameraGalleryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GalleryItem"
.end annotation


# instance fields
.field public final container:Landroid/view/View;

.field public final controlsContainer:Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;

.field public imageDecodeState:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

.field public final indicatorView:Landroid/widget/ImageView;

.field private m_CheckScaleFactor:Z

.field private m_DiffY:F

.field private m_DisableGesture:Z

.field private m_IsScaled:Z

.field private m_IsScrolled:Ljava/lang/Boolean;

.field private m_ScaleFactor:F

.field public mediaInfo:Lcom/oneplus/camera/media/MediaInfo;

.field public final playButton:Landroid/widget/ImageView;

.field public final scaleImageView:Lcom/oneplus/widget/ScaleImageView;

.field public final textView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

.field public final thumbnailDrawable:Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/camera/media/MediaInfo;)V
    .locals 3
    .param p2, "info"    # Lcom/oneplus/camera/media/MediaInfo;

    .prologue
    .line 656
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 638
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;->NONE:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->imageDecodeState:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    .line 644
    new-instance v0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    invoke-direct {v0}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->thumbnailDrawable:Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    .line 658
    invoke-virtual {p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f030008

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->container:Landroid/view/View;

    .line 659
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->container:Landroid/view/View;

    const v1, 0x7f0b0027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->controlsContainer:Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;

    .line 660
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->controlsContainer:Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;

    const v1, 0x7f0b0028

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->indicatorView:Landroid/widget/ImageView;

    .line 661
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->controlsContainer:Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;

    const v1, 0x7f0b0029

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->textView:Landroid/widget/TextView;

    .line 664
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->container:Landroid/view/View;

    const v1, 0x7f0b0026

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/widget/ScaleImageView;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    .line 665
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    new-instance v1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/ScaleImageView;->setOnGestureCallback(Lcom/oneplus/widget/ScaleImageView$GestureCallback;)V

    .line 954
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    new-instance v1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$2;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$2;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/ScaleImageView;->setOnStateChangedCallback(Lcom/oneplus/widget/ScaleImageView$StateCallback;)V

    .line 968
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->controlsContainer:Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;

    const v1, 0x7f0b002a

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->playButton:Landroid/widget/ImageView;

    .line 969
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->playButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$3;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$3;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 979
    invoke-virtual {p0, p2}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->updateMediaInfo(Lcom/oneplus/camera/media/MediaInfo;)V

    .line 980
    return-void
.end method

.method static synthetic access$3400(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .prologue
    .line 633
    iget-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_DisableGesture:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .param p1, "x1"    # Z

    .prologue
    .line 633
    iput-boolean p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_DisableGesture:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .prologue
    .line 633
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_IsScrolled:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 633
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_IsScrolled:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)F
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .prologue
    .line 633
    iget v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_DiffY:F

    return v0
.end method

.method static synthetic access$3702(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;F)F
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .param p1, "x1"    # F

    .prologue
    .line 633
    iput p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_DiffY:F

    return p1
.end method

.method static synthetic access$4000(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .prologue
    .line 633
    iget-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_IsScaled:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .param p1, "x1"    # Z

    .prologue
    .line 633
    iput-boolean p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_IsScaled:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .prologue
    .line 633
    iget-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_CheckScaleFactor:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .param p1, "x1"    # Z

    .prologue
    .line 633
    iput-boolean p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_CheckScaleFactor:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)F
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .prologue
    .line 633
    iget v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_ScaleFactor:F

    return v0
.end method

.method static synthetic access$4202(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;F)F
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .param p1, "x1"    # F

    .prologue
    .line 633
    iput p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_ScaleFactor:F

    return p1
.end method

.method static synthetic access$4232(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;F)F
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .param p1, "x1"    # F

    .prologue
    .line 633
    iget v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_ScaleFactor:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_ScaleFactor:F

    return v0
.end method

.method static synthetic access$4400(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .param p1, "x1"    # Z

    .prologue
    .line 633
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->setVideoIndicatorVisibility(Z)V

    return-void
.end method

.method static synthetic access$6000(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .prologue
    .line 633
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->onPlayButtonClick()V

    return-void
.end method

.method private getVideoDurationText(J)Ljava/lang/String;
    .locals 9
    .param p1, "seconds"    # J

    .prologue
    const-wide/16 v4, 0xe10

    const-wide/16 v6, 0x3c

    .line 985
    div-long v0, p1, v4

    .line 986
    .local v0, "hours":J
    mul-long/2addr v4, v0

    sub-long/2addr p1, v4

    .line 987
    div-long v2, p1, v6

    .line 988
    .local v2, "minutes":J
    mul-long v4, v2, v6

    sub-long/2addr p1, v4

    .line 989
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%02d:%02d:%02d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private onPlayButtonClick()V
    .locals 3

    .prologue
    .line 995
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->mediaInfo:Lcom/oneplus/camera/media/MediaInfo;

    invoke-virtual {v0}, Lcom/oneplus/camera/media/MediaInfo;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 997
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->isCurrentItem(Lcom/oneplus/widget/ScaleImageView;)Z
    invoke-static {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$4900(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/widget/ScaleImageView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 998
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->mediaInfo:Lcom/oneplus/camera/media/MediaInfo;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->playVideoPage(Lcom/oneplus/camera/media/MediaInfo;)V
    invoke-static {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$6100(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/camera/media/MediaInfo;)V

    .line 1002
    :cond_0
    :goto_0
    return-void

    .line 1000
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    const/4 v2, 0x1

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->setFilmstripCurrentItem(Lcom/oneplus/widget/ScaleImageView;Z)V
    invoke-static {v0, v1, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$5100(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/widget/ScaleImageView;Z)V

    goto :goto_0
.end method

.method private setVideoIndicatorVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 1007
    if-eqz p1, :cond_0

    .line 1009
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->indicatorView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1010
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1017
    :goto_0
    return-void

    .line 1014
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->indicatorView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1015
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public updateMediaInfo(Lcom/oneplus/camera/media/MediaInfo;)V
    .locals 13
    .param p1, "info"    # Lcom/oneplus/camera/media/MediaInfo;

    .prologue
    const/4 v6, 0x1

    const/4 v12, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v10, -0x40800000    # -1.0f

    .line 1023
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->mediaInfo:Lcom/oneplus/camera/media/MediaInfo;

    .line 1024
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->container:Landroid/view/View;

    invoke-virtual {v4, v11}, Landroid/view/View;->setAlpha(F)V

    .line 1025
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->container:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 1026
    invoke-virtual {p1}, Lcom/oneplus/camera/media/MediaInfo;->getWidth()I

    move-result v3

    .line 1027
    .local v3, "width":I
    invoke-virtual {p1}, Lcom/oneplus/camera/media/MediaInfo;->getHeight()I

    move-result v2

    .line 1028
    .local v2, "height":I
    if-lez v3, :cond_0

    if-gtz v2, :cond_1

    .line 1031
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/camera/media/MediaInfo;->isVideo()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1033
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_FakeVideoSize:Landroid/util/Size;
    invoke-static {v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$2500(Lcom/oneplus/gallery/CameraGalleryImpl;)Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v3

    .line 1034
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_FakeVideoSize:Landroid/util/Size;
    invoke-static {v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$2500(Lcom/oneplus/gallery/CameraGalleryImpl;)Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v2

    .line 1042
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v4, v3, v2}, Lcom/oneplus/widget/ScaleImageView;->setImageSize(II)V

    .line 1043
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    sget-object v5, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    invoke-virtual {v4, v5}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Lcom/oneplus/widget/ScaleImageView$BoundsType;)V

    .line 1044
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->controlsContainer:Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;

    invoke-virtual {v4, v3, v2}, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->setOriginalImageSize(II)V

    .line 1047
    invoke-virtual {p1}, Lcom/oneplus/camera/media/MediaInfo;->isVideo()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1049
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->controlsContainer:Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;

    invoke-virtual {v4, v12}, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->setVisibility(I)V

    .line 1050
    invoke-direct {p0, v6}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->setVideoIndicatorVisibility(Z)V

    move-object v4, p1

    .line 1051
    check-cast v4, Lcom/oneplus/camera/media/VideoMediaInfo;

    invoke-virtual {v4}, Lcom/oneplus/camera/media/VideoMediaInfo;->getDuration()J

    move-result-wide v0

    .line 1052
    .local v0, "durationMillis":J
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->textView:Landroid/widget/TextView;

    const-wide/16 v6, 0x1f4

    add-long/2addr v6, v0

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-direct {p0, v6, v7}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->getVideoDurationText(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1053
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v4, v12}, Lcom/oneplus/widget/ScaleImageView;->setImageBoundsChangeEnabled(Z)V

    .line 1054
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v4, v10, v11}, Lcom/oneplus/widget/ScaleImageView;->setImageScaleRatio(FF)V

    .line 1063
    .end local v0    # "durationMillis":J
    :goto_1
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$6200(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "updateMediaInfo() - File path: "

    invoke-virtual {p1}, Lcom/oneplus/camera/media/MediaInfo;->getFilePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, ", hash: "

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v4, v5, v6, v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1064
    return-void

    .line 1038
    :cond_2
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_FakePhotoSize:Landroid/util/Size;
    invoke-static {v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$2600(Lcom/oneplus/gallery/CameraGalleryImpl;)Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v3

    .line 1039
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_FakePhotoSize:Landroid/util/Size;
    invoke-static {v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$2600(Lcom/oneplus/gallery/CameraGalleryImpl;)Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v2

    goto :goto_0

    .line 1058
    :cond_3
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->controlsContainer:Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->setVisibility(I)V

    .line 1059
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v4, v6}, Lcom/oneplus/widget/ScaleImageView;->setImageBoundsChangeEnabled(Z)V

    .line 1060
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v4, v10, v10}, Lcom/oneplus/widget/ScaleImageView;->setImageScaleRatio(FF)V

    goto :goto_1
.end method
