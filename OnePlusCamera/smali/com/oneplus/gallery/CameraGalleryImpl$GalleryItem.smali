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

.field private static final synthetic -com-oneplus-gallery-CameraGalleryImpl$ViewVisibilityStateSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$oneplus$camera$ui$CameraGallery$GalleryState:[I

.field final synthetic $SWITCH_TABLE$com$oneplus$gallery$CameraGalleryImpl$ViewVisibilityState:[I

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

    const/4 v2, 0x7

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

.method private static synthetic -getcom-oneplus-gallery-CameraGalleryImpl$ViewVisibilityStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->-com-oneplus-gallery-CameraGalleryImpl$ViewVisibilityStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->-com-oneplus-gallery-CameraGalleryImpl$ViewVisibilityStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->values()[Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    invoke-virtual {v1}, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->IN_ANIMATING:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    invoke-virtual {v1}, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->OUT_ANIMATING:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    invoke-virtual {v1}, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->VISIBLE:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    invoke-virtual {v1}, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->-com-oneplus-gallery-CameraGalleryImpl$ViewVisibilityStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
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

.method static synthetic -wrap3(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Lcom/oneplus/gallery2/media/Media;ZIIII)V
    .locals 0
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "visible"    # Z
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->updateMediaIndicator(Lcom/oneplus/gallery2/media/Media;ZIIII)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->updateProcessingBarPosition()V

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery2/media/Media;)V
    .locals 3
    .param p1, "this$0"    # Lcom/oneplus/gallery/CameraGalleryImpl;
    .param p2, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 1056
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1036
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;->NONE:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->imageDecodeState:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    .line 1045
    new-instance v0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    invoke-direct {v0}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->thumbnailDrawable:Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    .line 1059
    invoke-virtual {p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f030010

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->container:Landroid/view/View;

    .line 1060
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->container:Landroid/view/View;

    const v1, 0x7f090060

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->controlsContainer:Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;

    .line 1061
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->controlsContainer:Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;

    const v1, 0x7f090062

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->indicatorView:Landroid/widget/ImageView;

    .line 1062
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->controlsContainer:Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;

    const v1, 0x7f090061

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->indicatorContainer:Landroid/view/View;

    .line 1063
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->controlsContainer:Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;

    const v1, 0x7f090063

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->textView:Landroid/widget/TextView;

    .line 1064
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->container:Landroid/view/View;

    const v1, 0x7f09005c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->processingBar:Landroid/widget/ProgressBar;

    .line 1065
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->container:Landroid/view/View;

    const v1, 0x7f09005d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->burstIndicatorContainer:Landroid/view/View;

    .line 1066
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->container:Landroid/view/View;

    const v1, 0x7f09005f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->burstTextView:Landroid/widget/TextView;

    .line 1069
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->container:Landroid/view/View;

    const v1, 0x7f09005b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/widget/ScaleImageView;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    .line 1070
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    new-instance v1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$1;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/ScaleImageView;->setOnGestureCallback(Lcom/oneplus/widget/ScaleImageView$GestureCallback;)V

    .line 1301
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    new-instance v1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$2;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$2;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/ScaleImageView;->addOnStateChangedCallback(Lcom/oneplus/widget/ScaleImageView$StateCallback;)V

    .line 1319
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->controlsContainer:Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;

    const v1, 0x7f090064

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->playButton:Landroid/widget/ImageView;

    .line 1320
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->playButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$3;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$3;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1330
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->burstIndicatorContainer:Landroid/view/View;

    new-instance v1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$4;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$4;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1340
    invoke-virtual {p0, p2}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->updateMedia(Lcom/oneplus/gallery2/media/Media;)V

    .line 1056
    return-void
.end method

.method private onGestureEnd()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1348
    iget-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_DisableGesture:Z

    if-eqz v0, :cond_0

    .line 1349
    return-void

    .line 1352
    :cond_0
    iput-boolean v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_DisableGesture:Z

    .line 1355
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_IsScrolled:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_IsScrolled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1357
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v0}, Lcom/oneplus/widget/ScaleImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v1, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->-set0(Lcom/oneplus/gallery/CameraGalleryImpl;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 1358
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    new-instance v1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$5;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$5;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 1380
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_IsScaled:Z

    if-eqz v0, :cond_4

    .line 1384
    iget-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_CheckScaleFactor:Z

    if-eqz v0, :cond_2

    .line 1386
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

    .line 1396
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    if-eqz v0, :cond_3

    .line 1397
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    invoke-direct {p0, v0, v3}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->updateMediaIndicator(Lcom/oneplus/gallery2/media/Media;Z)V

    .line 1398
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap65(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    .line 1402
    :cond_4
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0, p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap46(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    .line 1345
    return-void

    .line 1390
    :pswitch_0
    iget v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->m_ScaleFactor:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    goto :goto_0

    .line 1386
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
    .line 1420
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    instance-of v0, v0, Lcom/oneplus/gallery2/media/VideoMedia;

    if-eqz v0, :cond_0

    .line 1422
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-static {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap4(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/widget/ScaleImageView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1423
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    invoke-static {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap51(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery2/media/Media;)V

    .line 1418
    :cond_0
    :goto_0
    return-void

    .line 1425
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap58(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/widget/ScaleImageView;Z)V

    goto :goto_0
.end method

.method private updateMediaIndicator(Lcom/oneplus/gallery2/media/Media;Z)V
    .locals 8
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "visible"    # Z

    .prologue
    .line 1472
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v0}, Lcom/oneplus/widget/ScaleImageView;->getImageBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 1473
    .local v7, "rect":Landroid/graphics/Rect;
    iget v3, v7, Landroid/graphics/Rect;->left:I

    iget v4, v7, Landroid/graphics/Rect;->top:I

    iget v5, v7, Landroid/graphics/Rect;->right:I

    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->updateMediaIndicator(Lcom/oneplus/gallery2/media/Media;ZIIII)V

    .line 1470
    return-void
.end method

.method private updateMediaIndicator(Lcom/oneplus/gallery2/media/Media;ZIIII)V
    .locals 16
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "visible"    # Z
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I

    .prologue
    .line 1480
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap3(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery2/media/Media;)Z

    move-result v5

    .line 1481
    .local v5, "isBurst":Z
    if-eqz p2, :cond_0

    .line 1483
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->-getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    sget-object v13, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v11, v13}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v11}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v11

    aget v11, v12, v11

    packed-switch v11, :pswitch_data_0

    .line 1496
    const/16 p2, 0x0

    .line 1500
    .end local p2    # "visible":Z
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz p2, :cond_e

    if-eqz p1, :cond_e

    .line 1503
    invoke-interface/range {p1 .. p1}, Lcom/oneplus/gallery2/media/Media;->getType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v11

    sget-object v12, Lcom/oneplus/gallery2/media/MediaType;->VIDEO:Lcom/oneplus/gallery2/media/MediaType;

    if-ne v11, v12, :cond_a

    move-object/from16 v10, p1

    .line 1505
    check-cast v10, Lcom/oneplus/gallery2/media/VideoMedia;

    .line 1506
    .local v10, "videoMedia":Lcom/oneplus/gallery2/media/VideoMedia;
    invoke-interface {v10}, Lcom/oneplus/gallery2/media/VideoMedia;->isSlowMotion()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1507
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->indicatorView:Landroid/widget/ImageView;

    const v12, 0x7f020050

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1513
    :goto_1
    invoke-interface {v10}, Lcom/oneplus/gallery2/media/VideoMedia;->peekDuration()Ljava/lang/Long;

    move-result-object v3

    .line 1514
    .local v3, "durationMillis":Ljava/lang/Long;
    if-eqz v3, :cond_9

    .line 1515
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->textView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {v12, v14, v15}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap16(Lcom/oneplus/gallery/CameraGalleryImpl;J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1519
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->indicatorContainer:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1520
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->burstIndicatorContainer:Landroid/view/View;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1555
    .end local v3    # "durationMillis":Ljava/lang/Long;
    .end local v10    # "videoMedia":Lcom/oneplus/gallery2/media/VideoMedia;
    :goto_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->indicatorContainer:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_2

    .line 1557
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    sget-object v12, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v11, v12}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    if-ne v11, v12, :cond_f

    .line 1559
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->controlsContainer:Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;

    .line 1560
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v12}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get22(Lcom/oneplus/gallery/CameraGalleryImpl;)I

    move-result v12

    .line 1561
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v13}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get23(Lcom/oneplus/gallery/CameraGalleryImpl;)I

    move-result v13

    .line 1562
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v14}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get22(Lcom/oneplus/gallery/CameraGalleryImpl;)I

    move-result v14

    .line 1563
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v15}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get23(Lcom/oneplus/gallery/CameraGalleryImpl;)I

    move-result v15

    .line 1559
    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->setPadding(IIII)V

    .line 1571
    :cond_2
    :goto_4
    if-eqz v5, :cond_5

    .line 1573
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->burstIndicatorContainer:Landroid/view/View;

    if-lez p3, :cond_10

    .end local p3    # "left":I
    :goto_5
    move/from16 v0, p3

    int-to-float v12, v0

    invoke-virtual {v11, v12}, Landroid/view/View;->setTranslationX(F)V

    .line 1574
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-virtual {v11}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v11

    sget-object v12, Lcom/oneplus/camera/CameraActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v11, v12}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/base/ScreenSize;

    .line 1575
    .local v7, "screenSize":Lcom/oneplus/base/ScreenSize;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v11}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap9(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/Rotation;

    move-result-object v8

    .line 1577
    .local v8, "uiRotation":Lcom/oneplus/base/Rotation;
    sget-object v11, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    if-eq v8, v11, :cond_3

    sget-object v11, Lcom/oneplus/base/Rotation;->INVERSE_PORTRAIT:Lcom/oneplus/base/Rotation;

    if-ne v8, v11, :cond_11

    .line 1578
    :cond_3
    invoke-virtual {v7}, Lcom/oneplus/base/ScreenSize;->getHeight()I

    move-result v4

    .line 1581
    .local v4, "height":I
    :goto_6
    move/from16 v0, p6

    if-ge v0, v4, :cond_12

    sub-int v2, v4, p6

    .line 1582
    .local v2, "distanceToBottom":I
    :goto_7
    const/4 v9, 0x0

    .line 1583
    .local v9, "undoBarHeight":I
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->-getcom-oneplus-gallery-CameraGalleryImpl$ViewVisibilityStateSwitchesValues()[I

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v13}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get45(Lcom/oneplus/gallery/CameraGalleryImpl;)Landroid/view/View;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap13(Lcom/oneplus/gallery/CameraGalleryImpl;Landroid/view/View;)Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    move-result-object v12

    invoke-virtual {v12}, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_1

    .line 1592
    :goto_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v11}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get14(Lcom/oneplus/gallery/CameraGalleryImpl;)I

    move-result v11

    add-int/2addr v11, v9

    if-ge v2, v11, :cond_4

    .line 1593
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v11}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get14(Lcom/oneplus/gallery/CameraGalleryImpl;)I

    move-result v11

    add-int v2, v11, v9

    .line 1594
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->burstIndicatorContainer:Landroid/view/View;

    neg-int v12, v2

    int-to-float v12, v12

    invoke-virtual {v11, v12}, Landroid/view/View;->setTranslationY(F)V

    .line 1478
    .end local v2    # "distanceToBottom":I
    .end local v4    # "height":I
    .end local v7    # "screenSize":Lcom/oneplus/base/ScreenSize;
    .end local v8    # "uiRotation":Lcom/oneplus/base/Rotation;
    .end local v9    # "undoBarHeight":I
    :cond_5
    return-void

    .line 1491
    .restart local p2    # "visible":Z
    .restart local p3    # "left":I
    :pswitch_1
    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v11}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get21(Lcom/oneplus/gallery/CameraGalleryImpl;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 1492
    :cond_6
    const/16 p2, 0x0

    .local p2, "visible":Z
    goto/16 :goto_0

    .line 1508
    .end local p2    # "visible":Z
    .restart local v10    # "videoMedia":Lcom/oneplus/gallery2/media/VideoMedia;
    :cond_7
    invoke-interface {v10}, Lcom/oneplus/gallery2/media/VideoMedia;->isTimeLapse()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1509
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->indicatorView:Landroid/widget/ImageView;

    const v12, 0x7f020051

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 1511
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->indicatorView:Landroid/widget/ImageView;

    const v12, 0x7f020052

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 1516
    .restart local v3    # "durationMillis":Ljava/lang/Long;
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v11}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get47(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/oneplus/base/Handle;

    invoke-static {v11}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 1517
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v11}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get47(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/util/Map;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v12}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get6(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;

    move-result-object v12

    invoke-interface {v10, v12}, Lcom/oneplus/gallery2/media/VideoMedia;->getDuration(Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;)Lcom/oneplus/base/Handle;

    move-result-object v12

    invoke-interface {v11, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1522
    .end local v3    # "durationMillis":Ljava/lang/Long;
    .end local v10    # "videoMedia":Lcom/oneplus/gallery2/media/VideoMedia;
    :cond_a
    invoke-interface/range {p1 .. p1}, Lcom/oneplus/gallery2/media/Media;->getType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v11

    sget-object v12, Lcom/oneplus/gallery2/media/MediaType;->PHOTO:Lcom/oneplus/gallery2/media/MediaType;

    if-ne v11, v12, :cond_d

    move-object/from16 v6, p1

    .line 1524
    check-cast v6, Lcom/oneplus/gallery2/media/PhotoMedia;

    .line 1525
    .local v6, "photoMedia":Lcom/oneplus/gallery2/media/PhotoMedia;
    invoke-interface {v6}, Lcom/oneplus/gallery2/media/PhotoMedia;->isPanorama()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1527
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->indicatorView:Landroid/widget/ImageView;

    const v12, 0x7f02004f

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1528
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->textView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-virtual {v12}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v12

    const v13, 0x7f0b0024

    invoke-virtual {v12, v13}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1529
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->indicatorContainer:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1530
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->burstIndicatorContainer:Landroid/view/View;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 1532
    :cond_b
    if-eqz v5, :cond_c

    .line 1534
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->burstTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-virtual {v12}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v12

    const v13, 0x7f0b0021

    invoke-virtual {v12, v13}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    check-cast v6, Lcom/oneplus/gallery2/media/GroupedMedia;

    .end local v6    # "photoMedia":Lcom/oneplus/gallery2/media/PhotoMedia;
    invoke-interface {v6}, Lcom/oneplus/gallery2/media/GroupedMedia;->getSubMediaCount()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1535
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->indicatorContainer:Landroid/view/View;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1536
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->burstIndicatorContainer:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 1540
    .restart local v6    # "photoMedia":Lcom/oneplus/gallery2/media/PhotoMedia;
    :cond_c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->indicatorContainer:Landroid/view/View;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1541
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->burstIndicatorContainer:Landroid/view/View;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 1546
    .end local v6    # "photoMedia":Lcom/oneplus/gallery2/media/PhotoMedia;
    :cond_d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->indicatorContainer:Landroid/view/View;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1547
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->burstIndicatorContainer:Landroid/view/View;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 1552
    :cond_e
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->indicatorContainer:Landroid/view/View;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1553
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->burstIndicatorContainer:Landroid/view/View;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 1567
    :cond_f
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->controlsContainer:Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->setPadding(IIII)V

    goto/16 :goto_4

    .line 1573
    :cond_10
    const/16 p3, 0x0

    goto/16 :goto_5

    .line 1580
    .end local p3    # "left":I
    .restart local v7    # "screenSize":Lcom/oneplus/base/ScreenSize;
    .restart local v8    # "uiRotation":Lcom/oneplus/base/Rotation;
    :cond_11
    invoke-virtual {v7}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v4

    .restart local v4    # "height":I
    goto/16 :goto_6

    .line 1581
    :cond_12
    const/4 v2, 0x0

    .restart local v2    # "distanceToBottom":I
    goto/16 :goto_7

    .line 1587
    .restart local v9    # "undoBarHeight":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-virtual {v11}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v11

    invoke-virtual {v11}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f080031

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    goto/16 :goto_8

    .line 1483
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1583
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private updateProcessingBarPosition()V
    .locals 0

    .prologue
    .line 1671
    return-void
.end method


# virtual methods
.method public getThumbBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->thumbnailDrawable:Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    invoke-virtual {v0}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public isAnimation()Z
    .locals 2

    .prologue
    .line 1414
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

    .line 1432
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->container:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 1433
    return-void

    .line 1434
    :cond_0
    if-eqz p1, :cond_1

    .line 1435
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

    .line 1430
    :goto_0
    return-void

    .line 1438
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->container:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1439
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->container:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1440
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->container:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1447
    if-eqz p1, :cond_0

    .line 1448
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->mediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    invoke-virtual {v0, p1}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1445
    :goto_0
    return-void

    .line 1450
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
    .line 1454
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1602
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    if-eqz v0, :cond_0

    .line 1603
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

    .line 1604
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

    .line 1611
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    .line 1612
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->container:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setAlpha(F)V

    .line 1613
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->container:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 1614
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->peekSize()Landroid/util/Size;

    move-result-object v2

    .line 1615
    .local v2, "size":Landroid/util/Size;
    const/4 v3, 0x0

    .line 1616
    .local v3, "width":I
    const/4 v0, 0x0

    .line 1617
    .local v0, "height":I
    if-eqz v2, :cond_4

    .line 1619
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v3

    .line 1620
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v0

    .line 1624
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 1625
    .local v1, "isFakeSize":Z
    if-lez v3, :cond_1

    if-gtz v0, :cond_2

    .line 1628
    :cond_1
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v4

    sget-object v5, Lcom/oneplus/gallery2/media/MediaType;->VIDEO:Lcom/oneplus/gallery2/media/MediaType;

    if-ne v4, v5, :cond_5

    .line 1630
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get8(Lcom/oneplus/gallery/CameraGalleryImpl;)Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v3

    .line 1631
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get8(Lcom/oneplus/gallery/CameraGalleryImpl;)Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v0

    .line 1638
    :goto_1
    const/4 v1, 0x1

    .line 1640
    :cond_2
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->mediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    if-nez v4, :cond_6

    .line 1641
    new-instance v4, Lcom/oneplus/gallery2/drawable/MediaDrawable;

    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v3, v0}, Landroid/util/Size;-><init>(II)V

    invoke-direct {v4, p1, v5}, Lcom/oneplus/gallery2/drawable/MediaDrawable;-><init>(Lcom/oneplus/gallery2/media/Media;Landroid/util/Size;)V

    iput-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->mediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    .line 1644
    :goto_2
    if-nez v1, :cond_3

    .line 1645
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->mediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get0()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setColor(I)V

    .line 1646
    :cond_3
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    sget-object v5, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    invoke-virtual {v4, v5}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Lcom/oneplus/widget/ScaleImageView$BoundsType;)V

    .line 1647
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->mediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    invoke-virtual {v4, v5}, Lcom/oneplus/widget/ScaleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1648
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->controlsContainer:Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;

    invoke-virtual {v4, v3, v0}, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->setOriginalImageSize(II)V

    .line 1651
    invoke-direct {p0, p1, v9}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->updateMediaIndicator(Lcom/oneplus/gallery2/media/Media;Z)V

    .line 1654
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v4

    sget-object v5, Lcom/oneplus/gallery2/media/MediaType;->VIDEO:Lcom/oneplus/gallery2/media/MediaType;

    if-ne v4, v5, :cond_7

    .line 1656
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1657
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v4, v6}, Lcom/oneplus/widget/ScaleImageView;->setImageBoundsChangeEnabled(Z)V

    .line 1658
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v4, v7, v8}, Lcom/oneplus/widget/ScaleImageView;->setImageScaleRatio(FF)V

    .line 1667
    :goto_3
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get2(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/String;

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

    .line 1608
    return-void

    .line 1622
    .end local v1    # "isFakeSize":Z
    :cond_4
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get31(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/base/Handle;

    invoke-static {v4}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1623
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get31(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v5}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get30(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/gallery2/media/Media$SizeCallback;

    move-result-object v5

    invoke-interface {p1, v5}, Lcom/oneplus/gallery2/media/Media;->getSize(Lcom/oneplus/gallery2/media/Media$SizeCallback;)Lcom/oneplus/base/Handle;

    move-result-object v5

    invoke-interface {v4, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1635
    .restart local v1    # "isFakeSize":Z
    :cond_5
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get7(Lcom/oneplus/gallery/CameraGalleryImpl;)Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v3

    .line 1636
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get7(Lcom/oneplus/gallery/CameraGalleryImpl;)Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v0

    goto/16 :goto_1

    .line 1643
    :cond_6
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->mediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v3, v0}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v4, p1, v5}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setMedia(Lcom/oneplus/gallery2/media/Media;Landroid/util/Size;)V

    goto/16 :goto_2

    .line 1662
    :cond_7
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->playButton:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1663
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v4, v9}, Lcom/oneplus/widget/ScaleImageView;->setImageBoundsChangeEnabled(Z)V

    .line 1664
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v4, v7, v7}, Lcom/oneplus/widget/ScaleImageView;->setImageScaleRatio(FF)V

    goto :goto_3
.end method
