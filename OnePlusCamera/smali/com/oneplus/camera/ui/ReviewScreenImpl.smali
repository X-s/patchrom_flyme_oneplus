.class public Lcom/oneplus/camera/ui/ReviewScreenImpl;
.super Lcom/oneplus/camera/UIComponent;
.source "ReviewScreenImpl.java"

# interfaces
.implements Lcom/oneplus/camera/ui/ReviewScreen;
.implements Lcom/oneplus/camera/KeyEventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/ReviewScreenImpl$1;,
        Lcom/oneplus/camera/ui/ReviewScreenImpl$2;,
        Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;,
        Lcom/oneplus/camera/ui/ReviewScreenImpl$ReviewScreenHandle;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-base-RotationSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-media-MediaTypeSwitchesValues:[I = null

.field private static final DURATION_ANIMATION_IN:I = 0x190

.field private static final MAX_THUMBNAIL_IMAGE_SIDE:I = 0x780

.field private static final MSG_ASYNC_PROCESS_REVIEW_IMAGE:I = 0x4e21

.field private static final MSG_ON_MEDIA_SAVED_TIMEOUT:I = 0x2716

.field private static final MSG_ON_REVIEW_IMAGE_CREATED:I = 0x2711

.field private static final MSG_ON_REVIEW_IMAGE_TIMEOUT:I = 0x2715

.field private static final MSG_SET_LAST_MEDIA_INFO:I = 0x2712

.field private static final TIMEOUT_MEDIA_SAVED:I = 0x2710

.field private static final TIMEOUT_PROCESS_REVIEW_IMAGE:I = 0x2710


# instance fields
.field private m_CancelButton:Landroid/widget/ImageButton;

.field private volatile m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

.field private m_IsCameraPreviewReceivedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_IsPostviewReceived:Z

.field private m_IsSetupUI:Z

.field private m_IsVideoBitmapDecoding:Z

.field private m_KeyEventHandle:Lcom/oneplus/base/Handle;

.field private volatile m_LastMediaInfo:Lcom/oneplus/camera/MediaInfo;

.field private volatile m_MediaResultType:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

.field private m_MediaSaveFailed:Z

.field private m_OKButton:Landroid/widget/ImageButton;

.field private m_ProcessingCancelHandle:Lcom/oneplus/base/Handle;

.field private m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

.field private m_ProcessingOkHandle:Lcom/oneplus/base/Handle;

.field private m_ProcessingRetakeHandle:Lcom/oneplus/base/Handle;

.field private m_RetakeButton:Landroid/widget/ImageButton;

.field private m_ReviewControls:Landroid/view/View;

.field private m_ReviewImage:Landroid/graphics/Bitmap;

.field private m_ReviewImageView:Landroid/widget/ImageView;

.field private m_ReviewScreen:Landroid/view/View;

.field private m_ReviewScreenHandle:Lcom/oneplus/base/Handle;

.field private m_ThumbnailImage:Landroid/graphics/Bitmap;

.field private m_VideoDecodedCallback:Lcom/oneplus/media/BitmapPool$Callback;

.field private m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

.field private m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;


# direct methods
.method static synthetic -get0(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Lcom/oneplus/camera/CaptureHandle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_IsPostviewReceived:Z

    return v0
.end method

.method static synthetic -get3(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_IsSetupUI:Z

    return v0
.end method

.method static synthetic -get4(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_MediaResultType:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    return-object v0
.end method

.method static synthetic -get5(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewScreen:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get6(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Lcom/oneplus/media/BitmapPool$Callback;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_VideoDecodedCallback:Lcom/oneplus/media/BitmapPool$Callback;

    return-object v0
.end method

.method private static synthetic -getcom-oneplus-base-RotationSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-com-oneplus-base-RotationSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-com-oneplus-base-RotationSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/base/Rotation;->values()[Lcom/oneplus/base/Rotation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/base/Rotation;->INVERSE_LANDSCAPE:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/base/Rotation;->INVERSE_PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-com-oneplus-base-RotationSwitchesValues:[I

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

.method private static synthetic -getcom-oneplus-camera-media-MediaTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-com-oneplus-camera-media-MediaTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-com-oneplus-camera-media-MediaTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/media/MediaType;->values()[Lcom/oneplus/camera/media/MediaType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    invoke-virtual {v1}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    invoke-virtual {v1}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-com-oneplus-camera-media-MediaTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/oneplus/camera/ui/ReviewScreenImpl;Lcom/oneplus/camera/CaptureHandle;)Lcom/oneplus/camera/CaptureHandle;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    return-object p1
.end method

.method static synthetic -set1(Lcom/oneplus/camera/ui/ReviewScreenImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_IsPostviewReceived:Z

    return p1
.end method

.method static synthetic -set2(Lcom/oneplus/camera/ui/ReviewScreenImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_IsVideoBitmapDecoding:Z

    return p1
.end method

.method static synthetic -set3(Lcom/oneplus/camera/ui/ReviewScreenImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_MediaSaveFailed:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/ui/ReviewScreenImpl;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Lcom/oneplus/base/PropertyKey;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Lcom/oneplus/camera/media/MediaType;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/oneplus/camera/ui/ReviewScreenImpl;Landroid/view/View;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isVisible"    # Z

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->setViewVisibility(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/oneplus/camera/ui/ReviewScreenImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->setupUI()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/oneplus/camera/ui/ReviewScreenImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->updateMediaResultType()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/ui/ReviewScreenImpl;I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->hideReviewScreen(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/ui/ReviewScreenImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->onClickCancelButton()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/oneplus/camera/ui/ReviewScreenImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->onClickOKButton()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/oneplus/camera/ui/ReviewScreenImpl;Z)V
    .locals 0
    .param p1, "forceRetake"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->onClickRetakeButton(Z)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/oneplus/camera/ui/ReviewScreenImpl;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "thumbnail"    # Landroid/graphics/Bitmap;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->onPostViewReviewImageCreated(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/oneplus/camera/ui/ReviewScreenImpl;Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 0
    .param p1, "args"    # Lcom/oneplus/camera/CameraCaptureEventArgs;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->onPostviewReceived(Lcom/oneplus/camera/CameraCaptureEventArgs;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/oneplus/camera/ui/ReviewScreenImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->onPreviewReceived()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/oneplus/camera/ui/ReviewScreenImpl;Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->onVideoBitmapDecoded(Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    const/4 v1, 0x1

    .line 142
    const-string/jumbo v0, "ReviewScreen"

    invoke-direct {p0, v0, p1, v1, v1}, Lcom/oneplus/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;ZZ)V

    .line 94
    new-instance v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl$1;-><init>(Lcom/oneplus/camera/ui/ReviewScreenImpl;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_IsCameraPreviewReceivedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 123
    new-instance v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$2;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl$2;-><init>(Lcom/oneplus/camera/ui/ReviewScreenImpl;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_VideoDecodedCallback:Lcom/oneplus/media/BitmapPool$Callback;

    .line 140
    return-void
.end method

.method private deleteLastMedia()V
    .locals 3

    .prologue
    .line 149
    iget-object v2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_LastMediaInfo:Lcom/oneplus/camera/MediaInfo;

    if-nez v2, :cond_0

    .line 150
    return-void

    .line 153
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_LastMediaInfo:Lcom/oneplus/camera/MediaInfo;

    iget-object v0, v2, Lcom/oneplus/camera/MediaInfo;->contentURI:Landroid/net/Uri;

    .line 154
    .local v0, "contentUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_LastMediaInfo:Lcom/oneplus/camera/MediaInfo;

    iget-object v1, v2, Lcom/oneplus/camera/MediaInfo;->filePath:Ljava/lang/String;

    .line 155
    .local v1, "filePath":Ljava/lang/String;
    new-instance v2, Lcom/oneplus/camera/ui/ReviewScreenImpl$3;

    invoke-direct {v2, p0, v0, v1}, Lcom/oneplus/camera/ui/ReviewScreenImpl$3;-><init>(Lcom/oneplus/camera/ui/ReviewScreenImpl;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 146
    return-void
.end method

.method private hideReviewScreen(I)V
    .locals 4
    .param p1, "flags"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 349
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_IsSetupUI:Z

    if-nez v0, :cond_0

    .line 350
    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "hideReviewScreen() - Hide"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const/16 v0, 0x2715

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 356
    const/16 v0, 0x2716

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 359
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewControls:Landroid/view/View;

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->setViewVisibility(Landroid/view/View;Z)V

    .line 365
    :goto_0
    iput-object v3, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    .line 366
    iput-boolean v2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_IsVideoBitmapDecoding:Z

    .line 367
    iput-object v3, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_LastMediaInfo:Lcom/oneplus/camera/MediaInfo;

    .line 368
    iput-object v3, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewImage:Landroid/graphics/Bitmap;

    .line 369
    iput-object v3, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ThumbnailImage:Landroid/graphics/Bitmap;

    .line 370
    iput-object v3, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_MediaResultType:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    .line 371
    iput-boolean v2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_MediaSaveFailed:Z

    .line 372
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_KeyEventHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 373
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingOkHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 374
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingCancelHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 375
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingRetakeHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 378
    sget-object v0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 346
    return-void

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewScreen:Landroid/view/View;

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->setViewVisibility(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private needMediaInfo()Z
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_MediaResultType:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_MediaResultType:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    sget-object v1, Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;->PHOTO_THUMBNAIL:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    if-ne v0, v1, :cond_1

    .line 385
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 387
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private onClickCancelButton()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 393
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingCancelHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onClickCancelButton() - Processing dialog is showing."

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    return-void

    .line 398
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingCancelHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 401
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->needMediaInfo()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_LastMediaInfo:Lcom/oneplus/camera/MediaInfo;

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_MediaSaveFailed:Z

    if-eqz v1, :cond_2

    .line 412
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->deleteLastMedia()V

    .line 415
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    check-cast v0, Lcom/oneplus/camera/MediaInfo;

    invoke-virtual {v1, v3, v0}, Lcom/oneplus/camera/CameraActivity;->setMediaResult(ILcom/oneplus/camera/MediaInfo;)V

    .line 391
    return-void

    .line 403
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onClickCancelButton() - Last media content Uri or file path is null, skip"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    if-eqz v0, :cond_3

    .line 406
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    const v2, 0x7f0d0069

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/oneplus/camera/ui/ProcessingDialog;->showProcessingDialog(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingCancelHandle:Lcom/oneplus/base/Handle;

    .line 408
    :cond_3
    return-void
.end method

.method private onClickOKButton()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 421
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingOkHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onClickOKButton() - Processing dialog is showing."

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    return-void

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingOkHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 429
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClickOKButton() - needMediaInfo() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->needMediaInfo()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , m_LastMediaInfo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_LastMediaInfo:Lcom/oneplus/camera/MediaInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , m_MediaSaveFailed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_MediaSaveFailed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->needMediaInfo()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_LastMediaInfo:Lcom/oneplus/camera/MediaInfo;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_MediaSaveFailed:Z

    if-eqz v0, :cond_2

    .line 441
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->needMediaInfo()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_LastMediaInfo:Lcom/oneplus/camera/MediaInfo;

    if-eqz v0, :cond_4

    .line 442
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_LastMediaInfo:Lcom/oneplus/camera/MediaInfo;

    invoke-virtual {v0, v3, v1}, Lcom/oneplus/camera/CameraActivity;->setMediaResult(ILcom/oneplus/camera/MediaInfo;)V

    .line 419
    :goto_0
    return-void

    .line 432
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onClickOKButton() - Last media content Uri or file path is null, skip"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    if-eqz v0, :cond_3

    .line 435
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    const v2, 0x7f0d0069

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/ui/ProcessingDialog;->showProcessingDialog(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingOkHandle:Lcom/oneplus/base/Handle;

    .line 437
    :cond_3
    return-void

    .line 445
    :cond_4
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ThumbnailImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 446
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ThumbnailImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3, v1}, Lcom/oneplus/camera/CameraActivity;->setMediaResult(ILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 448
    :cond_5
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onClickOKButton() - Fail to decode captured picture"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onClickRetakeButton(Z)V
    .locals 5
    .param p1, "forceRetake"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 455
    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingRetakeHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 457
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onClickRetakeButton() - Processing dialog is showing."

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    return-void

    .line 460
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingRetakeHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 463
    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->needMediaInfo()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_LastMediaInfo:Lcom/oneplus/camera/MediaInfo;

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_MediaSaveFailed:Z

    if-eqz v2, :cond_2

    .line 477
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 478
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    check-cast v1, Lcom/oneplus/camera/MediaInfo;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/oneplus/camera/CameraActivity;->setMediaResult(ILcom/oneplus/camera/MediaInfo;)V

    .line 481
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewControls:Landroid/view/View;

    invoke-virtual {p0, v1, v4}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->setViewVisibility(Landroid/view/View;Z)V

    .line 482
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_IsCameraPreviewReceivedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 453
    return-void

    .line 465
    .end local v0    # "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onClickRetakeButton() - Last media content Uri or file path is null, skip"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    if-eqz v1, :cond_3

    .line 468
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    const v3, 0x7f0d0069

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Lcom/oneplus/camera/ui/ProcessingDialog;->showProcessingDialog(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingRetakeHandle:Lcom/oneplus/base/Handle;

    .line 470
    :cond_3
    return-void
.end method

.method private onPostViewReviewImageCreated(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "thumbnail"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 745
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPostViewReviewImageCreated() - Camera is not running, ignore review image"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    return-void

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewScreen:Landroid/view/View;

    if-nez v0, :cond_1

    .line 752
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPostViewReviewImageCreated() - Review screen is null, ignore review image"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    return-void

    .line 755
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewScreen:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 757
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPostViewReviewImageCreated() - Review screen is shown, ignore review image"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    return-void

    .line 761
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPostViewReviewImageCreated()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    iput-object p1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewImage:Landroid/graphics/Bitmap;

    .line 765
    iput-object p2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ThumbnailImage:Landroid/graphics/Bitmap;

    .line 766
    if-eqz p1, :cond_4

    .line 767
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 775
    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_MediaResultType:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    if-nez v0, :cond_3

    .line 776
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->updateMediaResultType()V

    .line 779
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewScreenHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 781
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPostViewReviewImageCreated() - ReviewScreenHandle is valid, show directly."

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->showReviewScreenDirectly()V

    .line 742
    :goto_1
    return-void

    .line 770
    :cond_4
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPostViewReviewImageCreated() - No image"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 786
    :cond_5
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPostViewReviewImageCreated() - ReviewScreenHandle is invalid"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->showReviewScreen()Lcom/oneplus/base/Handle;

    goto :goto_1
.end method

.method private onPostviewReceived(Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 14
    .param p1, "args"    # Lcom/oneplus/camera/CameraCaptureEventArgs;

    .prologue
    const/4 v2, 0x1

    .line 662
    iget-object v9, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    .line 663
    .local v9, "handle":Lcom/oneplus/camera/CaptureHandle;
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPostviewReceived() - Handle"

    invoke-static {v0, v1, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 666
    iput-boolean v2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_IsPostviewReceived:Z

    .line 669
    invoke-virtual {p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPictureSize()Landroid/util/Size;

    move-result-object v11

    .line 670
    .local v11, "pictureSize":Landroid/util/Size;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getScreenSize()Lcom/oneplus/base/ScreenSize;

    move-result-object v12

    .line 671
    .local v12, "screenSize":Lcom/oneplus/base/ScreenSize;
    invoke-virtual {v12}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v0

    invoke-virtual {v12}, Lcom/oneplus/base/ScreenSize;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 672
    .local v10, "maxScreenSide":I
    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-static {v0, v1, v10, v10, v2}, Lcom/oneplus/util/SizeUtils;->getRatioStretchedSize(IIIIZ)Landroid/util/Size;

    move-result-object v13

    .line 674
    .local v13, "targetSize":Landroid/util/Size;
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    if-nez v0, :cond_0

    .line 676
    new-instance v0, Lcom/oneplus/camera/media/YuvToBitmapWorker;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move v8, v2

    invoke-direct/range {v0 .. v8}, Lcom/oneplus/camera/media/YuvToBitmapWorker;-><init>(Landroid/content/Context;IIIIILandroid/graphics/Bitmap$Config;I)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    .line 685
    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    new-instance v1, Lcom/oneplus/camera/ui/ReviewScreenImpl$6;

    invoke-direct {v1, p0, v9}, Lcom/oneplus/camera/ui/ReviewScreenImpl$6;-><init>(Lcom/oneplus/camera/ui/ReviewScreenImpl;Lcom/oneplus/camera/CaptureHandle;)V

    .line 736
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 685
    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->setOnBitmapAvailableListener(Lcom/oneplus/camera/media/YuvToBitmapWorker$OnBitmapAvailableListener;Landroid/os/Handler;)V

    .line 739
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    invoke-virtual {p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPicturePlanes()[Lcom/oneplus/camera/media/ImagePlane;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/oneplus/camera/media/ImagePlane;->getData()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->addNV21Frame([B)V

    .line 660
    return-void

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->reconfigureInput(II)V

    .line 681
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->reconfigureOutput(II)V

    goto :goto_0
.end method

.method private onPreviewReceived()V
    .locals 3

    .prologue
    .line 655
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->hideReviewScreen(I)V

    .line 656
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_IsCameraPreviewReceivedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 653
    return-void
.end method

.method private onReviewImageCreated(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "thumbnail"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 795
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onReviewImageCreated() - Camera is not running, ignore review image"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    return-void

    .line 800
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewScreenHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 802
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onReviewImageCreated() - Review screen handle is invalid, ignore review image"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    return-void

    .line 805
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewScreen:Landroid/view/View;

    if-nez v0, :cond_2

    .line 807
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onReviewImageCreated() - Review screen is null, ignore review image"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    return-void

    .line 810
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewScreen:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 812
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onReviewImageCreated() - Review screen is shown, ignore review image"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    return-void

    .line 816
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onReviewImageCreated()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    const/16 v0, 0x2715

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 822
    iput-object p1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewImage:Landroid/graphics/Bitmap;

    .line 823
    iput-object p2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ThumbnailImage:Landroid/graphics/Bitmap;

    .line 824
    if-eqz p1, :cond_5

    .line 825
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 831
    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewScreenHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 832
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->showReviewScreenDirectly()V

    .line 792
    :cond_4
    return-void

    .line 828
    :cond_5
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onReviewImageCreated() - No image"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private onVideoBitmapDecoded(Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 839
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 840
    return-void

    .line 842
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_IsVideoBitmapDecoding:Z

    .line 843
    if-eqz p2, :cond_1

    .line 845
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 847
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onVideoBitmapDecoded() - setImageBitmap"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 854
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->showReviewScreenDirectly()V

    .line 837
    return-void

    .line 851
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onVideoBitmapDecoded() - m_ReviewImageView is null."

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupUI()V
    .locals 3

    .prologue
    .line 861
    iget-boolean v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_IsSetupUI:Z

    if-eqz v1, :cond_0

    .line 862
    return-void

    .line 865
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 866
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    const v1, 0x7f0a0027

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewScreen:Landroid/view/View;

    .line 867
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewScreen:Landroid/view/View;

    new-instance v2, Lcom/oneplus/camera/ui/ReviewScreenImpl$7;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl$7;-><init>(Lcom/oneplus/camera/ui/ReviewScreenImpl;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 874
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewScreen:Landroid/view/View;

    const v2, 0x7f0a0104

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewImageView:Landroid/widget/ImageView;

    .line 875
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewScreen:Landroid/view/View;

    const v2, 0x7f0a0105

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewControls:Landroid/view/View;

    .line 876
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewControls:Landroid/view/View;

    const v2, 0x7f0a0108

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_CancelButton:Landroid/widget/ImageButton;

    .line 877
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewControls:Landroid/view/View;

    const v2, 0x7f0a0107

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_OKButton:Landroid/widget/ImageButton;

    .line 878
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewControls:Landroid/view/View;

    const v2, 0x7f0a0106

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_RetakeButton:Landroid/widget/ImageButton;

    .line 881
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_CancelButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/oneplus/camera/ui/ReviewScreenImpl$8;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl$8;-><init>(Lcom/oneplus/camera/ui/ReviewScreenImpl;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 889
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_OKButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/oneplus/camera/ui/ReviewScreenImpl$9;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl$9;-><init>(Lcom/oneplus/camera/ui/ReviewScreenImpl;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 897
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_RetakeButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/oneplus/camera/ui/ReviewScreenImpl$10;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl$10;-><init>(Lcom/oneplus/camera/ui/ReviewScreenImpl;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 907
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_CancelButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->addAutoRotateView(Landroid/view/View;)V

    .line 908
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_OKButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->addAutoRotateView(Landroid/view/View;)V

    .line 909
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_RetakeButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->addAutoRotateView(Landroid/view/View;)V

    .line 912
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewControls:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->addNavBarAlignedView(Landroid/view/View;)V

    .line 915
    invoke-static {}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-getcom-oneplus-camera-media-MediaTypeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 926
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_IsSetupUI:Z

    .line 859
    return-void

    .line 918
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewScreen:Landroid/view/View;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 922
    :pswitch_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewScreen:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 915
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showReviewScreenDirectly()V
    .locals 8

    .prologue
    const-wide/16 v4, 0x190

    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 1000
    iget-boolean v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_IsVideoBitmapDecoding:Z

    if-eqz v1, :cond_0

    .line 1001
    return-void

    .line 1002
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showReviewScreenDirectly() - Show"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    if-eqz v1, :cond_1

    .line 1007
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    sget-object v2, Lcom/oneplus/camera/ui/Viewfinder;->PROP_PREVIEW_BOUNDS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/ui/Viewfinder;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/RectF;

    .line 1008
    .local v7, "previewBounds":Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1009
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1010
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1011
    iget v1, v7, Landroid/graphics/RectF;->top:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1017
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v7    # "previewBounds":Landroid/graphics/RectF;
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->requestLayout()V

    .line 1018
    iget-object v2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewControls:Landroid/view/View;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 1019
    iget-object v2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewScreen:Landroid/view/View;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 1020
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_OKButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 1021
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/oneplus/camera/CameraActivity;->setKeyEventHandler(Lcom/oneplus/camera/KeyEventHandler;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_KeyEventHandle:Lcom/oneplus/base/Handle;

    .line 1024
    sget-object v1, Lcom/oneplus/camera/ui/ReviewScreenImpl;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 998
    return-void

    .line 1014
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showReviewScreenDirectly() - No Viewfinder"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateMediaResultType()V
    .locals 3

    .prologue
    .line 982
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->getMediaResultInfo()Lcom/oneplus/camera/MediaResultInfo;

    move-result-object v0

    .line 983
    .local v0, "resultInfo":Lcom/oneplus/camera/MediaResultInfo;
    invoke-static {}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-getcom-oneplus-camera-media-MediaTypeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 980
    :goto_0
    return-void

    .line 986
    :pswitch_0
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/oneplus/camera/MediaResultInfo;->extraOutput:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 987
    sget-object v1, Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;->PHOTO_CONTENT_URI:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    iput-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_MediaResultType:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    goto :goto_0

    .line 989
    :cond_0
    sget-object v1, Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;->PHOTO_THUMBNAIL:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    iput-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_MediaResultType:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    goto :goto_0

    .line 993
    :pswitch_1
    sget-object v1, Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;->VIDEO_CONTENT_URI:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    iput-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_MediaResultType:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    goto :goto_0

    .line 983
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected handleAsyncMessage(Landroid/os/Message;)V
    .locals 21
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 192
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 277
    invoke-super/range {p0 .. p1}, Lcom/oneplus/camera/UIComponent;->handleAsyncMessage(Landroid/os/Message;)V

    .line 190
    :goto_0
    return-void

    .line 196
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "handleAsyncMessage() - Decode review image"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-wide/16 v4, 0x2710

    const/16 v3, 0x2715

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IJ)Z

    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getScreenSize()Lcom/oneplus/base/ScreenSize;

    move-result-object v18

    .line 203
    .local v18, "screenSize":Lcom/oneplus/base/ScreenSize;
    invoke-virtual/range {v18 .. v18}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v3

    invoke-virtual/range {v18 .. v18}, Lcom/oneplus/base/ScreenSize;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 204
    .local v16, "maxScreenSide":I
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, [B

    .line 205
    .local v15, "jpeg":[B
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v16

    move/from16 v1, v16

    invoke-static {v15, v0, v1, v3}, Lcom/oneplus/media/ImageUtils;->decodeBitmap([BIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 208
    .local v2, "reviewImage":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 209
    .local v7, "matrix":Landroid/graphics/Matrix;
    if-eqz v2, :cond_2

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/CameraThread;->PROP_CAPTURE_ROTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/oneplus/base/Rotation;

    .line 212
    .local v17, "rotation":Lcom/oneplus/base/Rotation;
    invoke-static {}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-getcom-oneplus-base-RotationSwitchesValues()[I

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    .line 232
    :goto_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 238
    .end local v17    # "rotation":Lcom/oneplus/base/Rotation;
    :goto_2
    const/16 v20, 0x0

    .line 239
    .local v20, "thumbnail":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_MediaResultType:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    if-nez v3, :cond_0

    .line 240
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->updateMediaResultType()V

    .line 241
    :cond_0
    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_MediaResultType:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    sget-object v4, Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;->PHOTO_THUMBNAIL:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    if-ne v3, v4, :cond_1

    .line 243
    new-instance v13, Landroid/graphics/Matrix;

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    .line 244
    .local v13, "thumbMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/16 v5, 0x104

    const/16 v6, 0x104

    const/4 v8, 0x1

    invoke-static {v3, v4, v5, v6, v8}, Lcom/oneplus/util/SizeUtils;->getRatioStretchedSize(IIIIZ)Landroid/util/Size;

    move-result-object v19

    .line 245
    .local v19, "thumbSize":Landroid/util/Size;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "handleAsyncMessage() - Thumb size: "

    move-object/from16 v0, v19

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 246
    invoke-virtual/range {v19 .. v19}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual/range {v19 .. v19}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v13, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 247
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v17

    .line 248
    .restart local v17    # "rotation":Lcom/oneplus/base/Rotation;
    invoke-static {}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-getcom-oneplus-base-RotationSwitchesValues()[I

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_2

    .line 265
    :goto_3
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x1

    move-object v8, v2

    invoke-static/range {v8 .. v14}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 269
    .end local v13    # "thumbMatrix":Landroid/graphics/Matrix;
    .end local v17    # "rotation":Lcom/oneplus/base/Rotation;
    .end local v19    # "thumbSize":Landroid/util/Size;
    .end local v20    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_1
    const/16 v3, 0x2715

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 272
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v4, 0x1

    aput-object v20, v3, v4

    const/16 v4, 0x2711

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v6, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 215
    .restart local v17    # "rotation":Lcom/oneplus/base/Rotation;
    :pswitch_1
    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 216
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_1

    .line 220
    :pswitch_2
    const/high16 v3, -0x3d4c0000    # -90.0f

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 221
    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_1

    .line 225
    :pswitch_3
    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 226
    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_1

    .line 235
    .end local v17    # "rotation":Lcom/oneplus/base/Rotation;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "handleAsyncMessage() - Cannot decode review image"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 251
    .restart local v13    # "thumbMatrix":Landroid/graphics/Matrix;
    .restart local v17    # "rotation":Lcom/oneplus/base/Rotation;
    .restart local v19    # "thumbSize":Landroid/util/Size;
    .restart local v20    # "thumbnail":Landroid/graphics/Bitmap;
    :pswitch_4
    const/high16 v3, -0x3d4c0000    # -90.0f

    invoke-virtual/range {v19 .. v19}, Landroid/util/Size;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual/range {v19 .. v19}, Landroid/util/Size;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v13, v3, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto :goto_3

    .line 255
    :pswitch_5
    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual/range {v19 .. v19}, Landroid/util/Size;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual/range {v19 .. v19}, Landroid/util/Size;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v13, v3, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto/16 :goto_3

    .line 259
    :pswitch_6
    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual/range {v19 .. v19}, Landroid/util/Size;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual/range {v19 .. v19}, Landroid/util/Size;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v13, v3, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto/16 :goto_3

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x4e21
        :pswitch_0
    .end packed-switch

    .line 212
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch

    .line 248
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 286
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 340
    :pswitch_0
    invoke-super {p0, p1}, Lcom/oneplus/camera/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 289
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Landroid/graphics/Bitmap;

    .line 290
    .local v0, "bitmaps":[Landroid/graphics/Bitmap;
    aget-object v1, v0, v3

    aget-object v2, v0, v4

    invoke-direct {p0, v1, v2}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->onReviewImageCreated(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 294
    .end local v0    # "bitmaps":[Landroid/graphics/Bitmap;
    :pswitch_2
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewScreenHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->needMediaInfo()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 297
    const/16 v1, 0x2716

    invoke-static {p0, v1}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 299
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/oneplus/camera/MediaInfo;

    iput-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_LastMediaInfo:Lcom/oneplus/camera/MediaInfo;

    .line 300
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_MediaResultType:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    sget-object v2, Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;->VIDEO_CONTENT_URI:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    if-ne v1, v2, :cond_1

    .line 301
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->showReviewScreenDirectly()V

    .line 303
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingOkHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 305
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingOkHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 306
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->onClickOKButton()V

    .line 308
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingCancelHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 310
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingCancelHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 311
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->onClickCancelButton()V

    .line 313
    :cond_3
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingRetakeHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingRetakeHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 316
    invoke-direct {p0, v3}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->onClickRetakeButton(Z)V

    goto :goto_0

    .line 319
    :cond_4
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewScreenHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingOkHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 322
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingCancelHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 323
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingRetakeHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 329
    :pswitch_3
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "handleMessage() - On review image timeout"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewScreenHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->showReviewScreenDirectly()V

    goto/16 :goto_0

    .line 335
    :pswitch_4
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "handleMessage() - On media saved timeout"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-direct {p0, v4}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->onClickRetakeButton(Z)V

    goto/16 :goto_0

    .line 286
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onDeinitialize()V
    .locals 1

    .prologue
    .line 489
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onDeinitialize()V

    .line 491
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    invoke-virtual {v0}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->close()V

    .line 487
    :cond_0
    return-void
.end method

.method protected onInitialize()V
    .locals 4

    .prologue
    .line 520
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onInitialize()V

    .line 523
    const-class v2, Lcom/oneplus/camera/ui/ProcessingDialog;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/ui/ProcessingDialog;

    iput-object v2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    .line 524
    const-class v2, Lcom/oneplus/camera/ui/Viewfinder;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/ui/Viewfinder;

    iput-object v2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    .line 525
    iget-object v2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    if-nez v2, :cond_0

    .line 526
    iget-object v2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onInitialize() - Cannot find Viewfinder"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 529
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v1

    .line 530
    .local v1, "cameraThread":Lcom/oneplus/camera/CameraThread;
    new-instance v2, Lcom/oneplus/camera/ui/ReviewScreenImpl$4;

    invoke-direct {v2, p0, v1, v0}, Lcom/oneplus/camera/ui/ReviewScreenImpl$4;-><init>(Lcom/oneplus/camera/ui/ReviewScreenImpl;Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraActivity;)V

    invoke-static {v1, v2}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 638
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/ui/ReviewScreenImpl$5;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl$5;-><init>(Lcom/oneplus/camera/ui/ReviewScreenImpl;)V

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 517
    return-void
.end method

.method public onKeyDown(ILcom/oneplus/camera/ui/KeyEventArgs;)Lcom/oneplus/camera/KeyEventHandler$KeyResult;
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Lcom/oneplus/camera/ui/KeyEventArgs;

    .prologue
    .line 499
    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    .line 500
    :cond_0
    sget-object v0, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->HANDLED_AND_PASS_TO_SYSTEM:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    return-object v0

    .line 502
    :cond_1
    sget-object v0, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->NOT_HANDLED:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    return-object v0
.end method

.method public onKeyUp(ILcom/oneplus/camera/ui/KeyEventArgs;)Lcom/oneplus/camera/KeyEventHandler$KeyResult;
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Lcom/oneplus/camera/ui/KeyEventArgs;

    .prologue
    .line 509
    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    .line 510
    :cond_0
    sget-object v0, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->HANDLED_AND_PASS_TO_SYSTEM:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    return-object v0

    .line 512
    :cond_1
    sget-object v0, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->NOT_HANDLED:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    return-object v0
.end method

.method public showReviewScreen()Lcom/oneplus/base/Handle;
    .locals 6

    .prologue
    const-wide/16 v4, 0x2710

    const/16 v2, 0x2716

    .line 934
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_IsSetupUI:Z

    if-nez v0, :cond_0

    .line 935
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->setupUI()V

    .line 938
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewScreenHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 940
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showReviewScreen() - Already show review screen, skip"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewScreenHandle:Lcom/oneplus/base/Handle;

    return-object v0

    .line 945
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showReviewScreen()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    new-instance v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$ReviewScreenHandle;

    const-string/jumbo v1, "Show review screen"

    invoke-direct {v0, p0, v1}, Lcom/oneplus/camera/ui/ReviewScreenImpl$ReviewScreenHandle;-><init>(Lcom/oneplus/camera/ui/ReviewScreenImpl;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewScreenHandle:Lcom/oneplus/base/Handle;

    .line 949
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_MediaResultType:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    if-nez v0, :cond_2

    .line 950
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->updateMediaResultType()V

    .line 953
    :cond_2
    invoke-static {}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-getcom-oneplus-camera-media-MediaTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 977
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewScreenHandle:Lcom/oneplus/base/Handle;

    return-object v0

    .line 956
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 957
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->showReviewScreenDirectly()V

    goto :goto_0

    .line 960
    :cond_4
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showReviewScreen() - Wait for review image created"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_MediaResultType:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    sget-object v1, Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;->PHOTO_CONTENT_URI:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    if-ne v0, v1, :cond_3

    .line 962
    invoke-static {p0, v2, v4, v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IJ)Z

    goto :goto_0

    .line 967
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_LastMediaInfo:Lcom/oneplus/camera/MediaInfo;

    if-eqz v0, :cond_5

    .line 968
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->showReviewScreenDirectly()V

    goto :goto_0

    .line 971
    :cond_5
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showReviewScreen() - Wait for video media saved"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    invoke-static {p0, v2, v4, v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IJ)Z

    goto :goto_0

    .line 953
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
