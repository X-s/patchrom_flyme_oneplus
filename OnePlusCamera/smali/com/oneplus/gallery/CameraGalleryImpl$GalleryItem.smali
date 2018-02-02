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


# static fields
.field private static final synthetic -com-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$oneplus$camera$ui$CameraGallery$GalleryState:[I

.field public final burstIndicatorContainer:Landroid/view/View;

.field public final burstTextView:Landroid/widget/TextView;

.field public final container:Landroid/view/View;

.field public final controlsContainer:Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;

.field public imageDecodeState:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

.field public final indicatorContainer:Landroid/view/View;

.field public final indicatorView:Landroid/widget/ImageView;

.field private m_CheckScaleFactor:Z

.field private m_DiffY:F

.field private m_DisableGesture:Z

.field private m_IsScaled:Z

.field private m_IsScrolled:Ljava/lang/Boolean;

.field private m_ScaleFactor:F

.field public media:Lcom/oneplus/gallery2/media/Media;

.field public mediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

.field public final playButton:Landroid/widget/ImageView;

.field public final processingBar:Landroid/widget/ProgressBar;

.field public final scaleImageView:Lcom/oneplus/widget/ScaleImageView;

.field public final textView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

.field public final thumbnailDrawable:Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

.field public final watermarkProcessingContainer:Landroid/view/View;

.field public final watermarkProcessingContainerHeight:I


# direct methods
.method static synthetic -get0(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)F
    .locals 1

    iget v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_DiffY:F

    return v0
.end method

.method static synthetic -get1(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_DisableGesture:Z

    return v0
.end method

.method static synthetic -get2(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_IsScrolled:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -get3(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)F
    .locals 1

    iget v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_ScaleFactor:F

    return v0
.end method

.method private static synthetic -getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->-com-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->-com-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->values()[Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BACKGROUND:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_FAST:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->EMPTY_PAGE:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->VIEW_DETAILS:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->-com-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_CheckScaleFactor:Z

    return p1
.end method

.method static synthetic -set1(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;F)F
    .locals 0

    iput p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_DiffY:F

    return p1
.end method

.method static synthetic -set2(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_DisableGesture:Z

    return p1
.end method

.method static synthetic -set3(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_IsScaled:Z

    return p1
.end method

.method static synthetic -set4(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_IsScrolled:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic -set5(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;F)F
    .locals 0

    iput p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_ScaleFactor:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->onGestureEnd()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->onPlayButtonClick()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Lcom/oneplus/gallery2/media/Media;Z)V
    .locals 0
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "visible"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->updateMediaIndicator(Lcom/oneplus/gallery2/media/Media;Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->updateWatermarkProcessingCirclePosition()V

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery2/media/Media;)V
    .locals 5
    .param p1, "this$0"    # Lcom/oneplus/gallery/CameraGalleryImpl;
    .param p2, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 1078
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1056
    sget-object v2, Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;->NONE:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    iput-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->imageDecodeState:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    .line 1065
    new-instance v2, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    invoke-direct {v2}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;-><init>()V

    iput-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->thumbnailDrawable:Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    .line 1081
    invoke-virtual {p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 1082
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    const v2, 0x7f030013

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->container:Landroid/view/View;

    .line 1083
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->container:Landroid/view/View;

    const v3, 0x7f0a0070

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;

    iput-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->controlsContainer:Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;

    .line 1084
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->controlsContainer:Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;

    const v3, 0x7f0a0072

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->indicatorView:Landroid/widget/ImageView;

    .line 1085
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->controlsContainer:Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;

    const v3, 0x7f0a0071

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->indicatorContainer:Landroid/view/View;

    .line 1086
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->controlsContainer:Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;

    const v3, 0x7f0a0073

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->textView:Landroid/widget/TextView;

    .line 1087
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->container:Landroid/view/View;

    const v3, 0x7f0a006a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->processingBar:Landroid/widget/ProgressBar;

    .line 1088
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->container:Landroid/view/View;

    const v3, 0x7f0a006e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->burstIndicatorContainer:Landroid/view/View;

    .line 1089
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->container:Landroid/view/View;

    const v3, 0x7f0a006f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->burstTextView:Landroid/widget/TextView;

    .line 1092
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->container:Landroid/view/View;

    const v3, 0x7f0a006b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->watermarkProcessingContainer:Landroid/view/View;

    .line 1093
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->watermarkProcessingContainer:Landroid/view/View;

    const v3, 0x7f0a006c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 1094
    .local v1, "watermarkProcessingCircle":Landroid/widget/ProgressBar;
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    const/4 v4, -0x1

    invoke-virtual {v2, v4, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1095
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090199

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->watermarkProcessingContainerHeight:I

    .line 1098
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->container:Landroid/view/View;

    const v3, 0x7f0a0069

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oneplus/widget/ScaleImageView;

    iput-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    .line 1099
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    new-instance v3, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    invoke-virtual {v2, v3}, Lcom/oneplus/widget/ScaleImageView;->setOnGestureCallback(Lcom/oneplus/widget/ScaleImageView$GestureCallback;)V

    .line 1330
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    new-instance v3, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$2;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$2;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    invoke-virtual {v2, v3}, Lcom/oneplus/widget/ScaleImageView;->addOnStateChangedCallback(Lcom/oneplus/widget/ScaleImageView$StateCallback;)V

    .line 1347
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->controlsContainer:Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;

    const v3, 0x7f0a0074

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->playButton:Landroid/widget/ImageView;

    .line 1348
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->playButton:Landroid/widget/ImageView;

    new-instance v3, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$3;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$3;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1358
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->burstIndicatorContainer:Landroid/view/View;

    new-instance v3, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$4;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$4;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1368
    invoke-virtual {p0, p2}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->updateMedia(Lcom/oneplus/gallery2/media/Media;)V

    .line 1078
    return-void
.end method

.method private onGestureEnd()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1376
    iget-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_DisableGesture:Z

    if-eqz v0, :cond_0

    .line 1377
    return-void

    .line 1380
    :cond_0
    iput-boolean v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_DisableGesture:Z

    .line 1383
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_IsScrolled:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_IsScrolled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1385
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v0}, Lcom/oneplus/widget/ScaleImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v1, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->-set0(Lcom/oneplus/gallery/CameraGalleryImpl;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 1386
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    new-instance v1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$5;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$5;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 1408
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_IsScaled:Z

    if-eqz v0, :cond_4

    .line 1412
    iget-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_CheckScaleFactor:Z

    if-eqz v0, :cond_2

    .line 1414
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->-getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I

    move-result-object v1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    sget-object v2, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1424
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    if-eqz v0, :cond_3

    .line 1425
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    invoke-direct {p0, v0, v3}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->updateMediaIndicator(Lcom/oneplus/gallery2/media/Media;Z)V

    .line 1426
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap66(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    .line 1430
    :cond_4
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0, p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap45(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    .line 1373
    return-void

    .line 1418
    :pswitch_0
    iget v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_ScaleFactor:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    goto :goto_0

    .line 1414
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onPlayButtonClick()V
    .locals 3

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    instance-of v0, v0, Lcom/oneplus/gallery2/media/VideoMedia;

    if-eqz v0, :cond_0

    .line 1450
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-static {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap4(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/widget/ScaleImageView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1451
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    invoke-static {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap53(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery2/media/Media;)V

    .line 1446
    :cond_0
    :goto_0
    return-void

    .line 1453
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap59(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/widget/ScaleImageView;Z)V

    goto :goto_0
.end method

.method private updateMediaIndicator(Lcom/oneplus/gallery2/media/Media;Z)V
    .locals 13
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "visible"    # Z

    .prologue
    .line 1513
    iget-object v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v8, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap3(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery2/media/Media;)Z

    move-result v2

    .line 1514
    .local v2, "isBurst":Z
    if-eqz p2, :cond_0

    .line 1516
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->-getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I

    move-result-object v9

    iget-object v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    sget-object v10, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v8, v10}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v8}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v8

    aget v8, v9, v8

    packed-switch v8, :pswitch_data_0

    .line 1529
    const/4 p2, 0x0

    .line 1533
    .end local p2    # "visible":Z
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz p2, :cond_9

    if-eqz p1, :cond_9

    .line 1535
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v8

    sget-object v9, Lcom/oneplus/gallery2/media/MediaType;->VIDEO:Lcom/oneplus/gallery2/media/MediaType;

    if-ne v8, v9, :cond_6

    .line 1590
    :goto_1
    iget-object v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->indicatorContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_1

    .line 1592
    iget-object v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    sget-object v9, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v8, v9}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    if-ne v8, v9, :cond_a

    .line 1594
    iget-object v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->controlsContainer:Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;

    .line 1595
    iget-object v9, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v9}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get20(Lcom/oneplus/gallery/CameraGalleryImpl;)I

    move-result v9

    .line 1596
    iget-object v10, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v10}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get21(Lcom/oneplus/gallery/CameraGalleryImpl;)I

    move-result v10

    .line 1597
    iget-object v11, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v11}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get20(Lcom/oneplus/gallery/CameraGalleryImpl;)I

    move-result v11

    .line 1598
    iget-object v12, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v12}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get21(Lcom/oneplus/gallery/CameraGalleryImpl;)I

    move-result v12

    .line 1594
    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->setPadding(IIII)V

    .line 1606
    :cond_1
    :goto_2
    if-eqz v2, :cond_4

    .line 1609
    iget-object v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-virtual {v8}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1610
    .local v5, "resources":Landroid/content/res/Resources;
    const v8, 0x7f09003b

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1611
    .local v0, "actionBarHeight":I
    const v8, 0x7f090031

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1612
    .local v1, "distanceToActionBar":I
    iget-object v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-virtual {v8}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v8

    sget-object v9, Lcom/oneplus/camera/CameraActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v8, v9}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/base/ScreenSize;

    .line 1613
    .local v6, "screenSize":Lcom/oneplus/base/ScreenSize;
    iget-object v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v8}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap9(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/Rotation;

    move-result-object v7

    .line 1614
    .local v7, "uiRotation":Lcom/oneplus/base/Rotation;
    add-int v3, v0, v1

    .line 1615
    .local v3, "marginTop":I
    sget-object v8, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    if-eq v7, v8, :cond_2

    sget-object v8, Lcom/oneplus/base/Rotation;->INVERSE_PORTRAIT:Lcom/oneplus/base/Rotation;

    if-ne v7, v8, :cond_3

    .line 1616
    :cond_2
    invoke-virtual {v6}, Lcom/oneplus/base/ScreenSize;->getStatusBarSize()I

    move-result v8

    add-int/2addr v3, v8

    .line 1618
    :cond_3
    iget-object v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->burstIndicatorContainer:Landroid/view/View;

    int-to-float v9, v3

    invoke-virtual {v8, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 1511
    .end local v0    # "actionBarHeight":I
    .end local v1    # "distanceToActionBar":I
    .end local v3    # "marginTop":I
    .end local v5    # "resources":Landroid/content/res/Resources;
    .end local v6    # "screenSize":Lcom/oneplus/base/ScreenSize;
    .end local v7    # "uiRotation":Lcom/oneplus/base/Rotation;
    :cond_4
    return-void

    .line 1524
    .restart local p2    # "visible":Z
    :pswitch_1
    if-eqz v2, :cond_5

    iget-object v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v8}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get19(Lcom/oneplus/gallery/CameraGalleryImpl;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1525
    :cond_5
    const/4 p2, 0x0

    .local p2, "visible":Z
    goto/16 :goto_0

    .line 1556
    .end local p2    # "visible":Z
    :cond_6
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v8

    sget-object v9, Lcom/oneplus/gallery2/media/MediaType;->PHOTO:Lcom/oneplus/gallery2/media/MediaType;

    if-ne v8, v9, :cond_8

    move-object v4, p1

    .line 1558
    check-cast v4, Lcom/oneplus/gallery2/media/PhotoMedia;

    .line 1567
    .local v4, "photoMedia":Lcom/oneplus/gallery2/media/PhotoMedia;
    if-eqz v2, :cond_7

    .line 1569
    iget-object v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->burstTextView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-virtual {v9}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v9

    const v10, 0x7f0d0045

    invoke-virtual {v9, v10}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    check-cast v4, Lcom/oneplus/gallery2/media/GroupedMedia;

    .end local v4    # "photoMedia":Lcom/oneplus/gallery2/media/PhotoMedia;
    invoke-interface {v4}, Lcom/oneplus/gallery2/media/GroupedMedia;->getSubMediaCount()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1570
    iget-object v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->indicatorContainer:Landroid/view/View;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1571
    iget-object v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->burstIndicatorContainer:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 1575
    .restart local v4    # "photoMedia":Lcom/oneplus/gallery2/media/PhotoMedia;
    :cond_7
    iget-object v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->indicatorContainer:Landroid/view/View;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1576
    iget-object v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->burstIndicatorContainer:Landroid/view/View;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 1581
    .end local v4    # "photoMedia":Lcom/oneplus/gallery2/media/PhotoMedia;
    :cond_8
    iget-object v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->indicatorContainer:Landroid/view/View;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1582
    iget-object v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->burstIndicatorContainer:Landroid/view/View;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 1587
    :cond_9
    iget-object v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->indicatorContainer:Landroid/view/View;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1588
    iget-object v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->burstIndicatorContainer:Landroid/view/View;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 1602
    :cond_a
    iget-object v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->controlsContainer:Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->setPadding(IIII)V

    goto/16 :goto_2

    .line 1516
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private updateProcessingBarPosition()V
    .locals 0

    .prologue
    .line 1695
    return-void
.end method

.method private updateWatermarkProcessingCirclePosition()V
    .locals 4

    .prologue
    .line 1706
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->watermarkProcessingContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1707
    return-void

    .line 1708
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v1}, Lcom/oneplus/widget/ScaleImageView;->getImageBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1709
    .local v0, "imageBounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->watermarkProcessingContainer:Landroid/view/View;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 1710
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->watermarkProcessingContainer:Landroid/view/View;

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->watermarkProcessingContainerHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1704
    return-void
.end method


# virtual methods
.method public getThumbBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1436
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->thumbnailDrawable:Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    invoke-virtual {v0}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public isAnimation()Z
    .locals 2

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/Media;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "image/gif"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restore(Z)V
    .locals 4
    .param p1, "animate"    # Z

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1460
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->container:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 1461
    return-void

    .line 1462
    :cond_0
    if-eqz p1, :cond_1

    .line 1463
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->container:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1458
    :goto_0
    return-void

    .line 1466
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->container:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1467
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->container:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1468
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->container:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1475
    if-eqz p1, :cond_0

    .line 1476
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->mediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    invoke-virtual {v0, p1}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1473
    :goto_0
    return-void

    .line 1478
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->mediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->thumbnailDrawable:Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setProcessingBarVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 1482
    return-void
.end method

.method public setWatermarkProcessingCircleVisibility(Z)V
    .locals 5
    .param p1, "visible"    # Z

    .prologue
    .line 1499
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get3(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setWatermarkProcessingCircleVisibility() - Visible: "

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v3, ", media: "

    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1500
    if-eqz p1, :cond_0

    .line 1502
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->watermarkProcessingContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1503
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->updateWatermarkProcessingCirclePosition()V

    .line 1497
    :goto_0
    return-void

    .line 1506
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->watermarkProcessingContainer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1626
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    if-eqz v0, :cond_0

    .line 1627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v1}, Lcom/oneplus/widget/ScaleImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v1}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1628
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateMedia(Lcom/oneplus/gallery2/media/Media;)V
    .locals 10
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    const/4 v9, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v6, 0x0

    .line 1635
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    .line 1636
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->container:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setAlpha(F)V

    .line 1637
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->container:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 1638
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->peekSize()Landroid/util/Size;

    move-result-object v2

    .line 1639
    .local v2, "size":Landroid/util/Size;
    const/4 v3, 0x0

    .line 1640
    .local v3, "width":I
    const/4 v0, 0x0

    .line 1641
    .local v0, "height":I
    if-eqz v2, :cond_4

    .line 1643
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v3

    .line 1644
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v0

    .line 1648
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 1649
    .local v1, "isFakeSize":Z
    if-lez v3, :cond_1

    if-gtz v0, :cond_2

    .line 1652
    :cond_1
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v4

    sget-object v5, Lcom/oneplus/gallery2/media/MediaType;->VIDEO:Lcom/oneplus/gallery2/media/MediaType;

    if-ne v4, v5, :cond_5

    .line 1654
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get7(Lcom/oneplus/gallery/CameraGalleryImpl;)Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v3

    .line 1655
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get7(Lcom/oneplus/gallery/CameraGalleryImpl;)Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v0

    .line 1662
    :goto_1
    const/4 v1, 0x1

    .line 1664
    :cond_2
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->mediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    if-nez v4, :cond_6

    .line 1665
    new-instance v4, Lcom/oneplus/gallery2/drawable/MediaDrawable;

    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v3, v0}, Landroid/util/Size;-><init>(II)V

    invoke-direct {v4, p1, v5}, Lcom/oneplus/gallery2/drawable/MediaDrawable;-><init>(Lcom/oneplus/gallery2/media/Media;Landroid/util/Size;)V

    iput-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->mediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    .line 1668
    :goto_2
    if-nez v1, :cond_3

    .line 1669
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->mediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get0()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setColor(I)V

    .line 1670
    :cond_3
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    sget-object v5, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    invoke-virtual {v4, v5}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Lcom/oneplus/widget/ScaleImageView$BoundsType;)V

    .line 1671
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->mediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    invoke-virtual {v4, v5}, Lcom/oneplus/widget/ScaleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1672
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->controlsContainer:Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;

    invoke-virtual {v4, v3, v0}, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->setOriginalImageSize(II)V

    .line 1675
    invoke-direct {p0, p1, v9}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->updateMediaIndicator(Lcom/oneplus/gallery2/media/Media;Z)V

    .line 1678
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v4

    sget-object v5, Lcom/oneplus/gallery2/media/MediaType;->VIDEO:Lcom/oneplus/gallery2/media/MediaType;

    if-ne v4, v5, :cond_7

    .line 1680
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1681
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v4, v6}, Lcom/oneplus/widget/ScaleImageView;->setImageBoundsChangeEnabled(Z)V

    .line 1682
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v4, v7, v8}, Lcom/oneplus/widget/ScaleImageView;->setImageScaleRatio(FF)V

    .line 1691
    :goto_3
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get3(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "updateMediaInfo() - File path: "

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ", hash: "

    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v4, v5, v6, v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1632
    return-void

    .line 1646
    .end local v1    # "isFakeSize":Z
    :cond_4
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get25(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/base/Handle;

    invoke-static {v4}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1647
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get25(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v5}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get24(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/gallery2/media/Media$SizeCallback;

    move-result-object v5

    invoke-interface {p1, v5}, Lcom/oneplus/gallery2/media/Media;->getSize(Lcom/oneplus/gallery2/media/Media$SizeCallback;)Lcom/oneplus/base/Handle;

    move-result-object v5

    invoke-interface {v4, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1659
    .restart local v1    # "isFakeSize":Z
    :cond_5
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get6(Lcom/oneplus/gallery/CameraGalleryImpl;)Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v3

    .line 1660
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get6(Lcom/oneplus/gallery/CameraGalleryImpl;)Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v0

    goto/16 :goto_1

    .line 1667
    :cond_6
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->mediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v3, v0}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v4, p1, v5}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setMedia(Lcom/oneplus/gallery2/media/Media;Landroid/util/Size;)V

    goto/16 :goto_2

    .line 1686
    :cond_7
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->playButton:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1687
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v4, v9}, Lcom/oneplus/widget/ScaleImageView;->setImageBoundsChangeEnabled(Z)V

    .line 1688
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v4, v7, v7}, Lcom/oneplus/widget/ScaleImageView;->setImageScaleRatio(FF)V

    goto :goto_3
.end method
