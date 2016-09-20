.class final Lcom/oneplus/camera/ui/ThumbnailBarImpl;
.super Lcom/oneplus/camera/UIComponent;
.source "ThumbnailBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/ThumbnailBarImpl$12;,
        Lcom/oneplus/camera/ui/ThumbnailBarImpl$CircleOutlineProvider;
    }
.end annotation


# instance fields
.field private final DELAY_HIDE_THUMBNAL_MESSAGE_TIME:I

.field private final MSG_HIDE_THUMBNAIL_WITH_ANIMATION:I

.field private final THUMBNAIL_ANIMATION_DURATION_LONG:I

.field private final THUMBNAIL_ANIMATION_DURATION_SHORT:I

.field private m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

.field private m_CameraGallery:Lcom/oneplus/camera/ui/CameraGallery;

.field private m_CancelHideAnimation:Z

.field private m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

.field private m_CaptureHandles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/camera/CaptureHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_HideAnimationStarted:Z

.field private m_HideAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private m_IsPressingCaptureButton:Z

.field private m_Length:I

.field private m_OutlineProviderCircle:Lcom/oneplus/camera/ui/ThumbnailBarImpl$CircleOutlineProvider;

.field private m_ShowAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private m_ThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;

.field private final m_ThumbDecodeCallback:Lcom/oneplus/media/BitmapPool$Callback;

.field private m_ThumbnailBackground:Landroid/graphics/Bitmap;

.field private m_ThumbnailBar:Landroid/widget/ImageView;

.field private m_ThumbnailBarBackGroud:Landroid/widget/ImageView;

.field private m_ThumbnailBarContainer:Landroid/view/View;

.field private final m_ThumbnailBitmapQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final m_ThumbnailDecodeHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/Handle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 3
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    const/4 v2, 0x0

    .line 93
    const-string v0, "Thumbnail Bar"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 59
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->THUMBNAIL_ANIMATION_DURATION_LONG:I

    .line 60
    const/16 v0, 0x32

    iput v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->THUMBNAIL_ANIMATION_DURATION_SHORT:I

    .line 61
    const/16 v0, 0x2710

    iput v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->MSG_HIDE_THUMBNAIL_WITH_ANIMATION:I

    .line 62
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->DELAY_HIDE_THUMBNAL_MESSAGE_TIME:I

    .line 76
    iput-boolean v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CancelHideAnimation:Z

    .line 77
    iput-boolean v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_HideAnimationStarted:Z

    .line 78
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CaptureHandles:Ljava/util/Set;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailDecodeHandles:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBitmapQueue:Ljava/util/LinkedList;

    .line 81
    new-instance v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$1;-><init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbDecodeCallback:Lcom/oneplus/media/BitmapPool$Callback;

    .line 257
    new-instance v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$10;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$10;-><init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_HideAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 381
    new-instance v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$11;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$11;-><init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ShowAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailDecodeHandles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ThumbnailBarImpl;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->addThumbnailView(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CancelHideAnimation:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ThumbnailBarImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CancelHideAnimation:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ThumbnailBarImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_HideAnimationStarted:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBar:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBitmapQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBackground:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ThumbnailBarImpl;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBackground:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBarBackGroud:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Lcom/oneplus/camera/ui/ThumbnailBarImpl$CircleOutlineProvider;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_OutlineProviderCircle:Lcom/oneplus/camera/ui/ThumbnailBarImpl$CircleOutlineProvider;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Lcom/oneplus/camera/ui/ThumbnailBarImpl$CircleOutlineProvider;)Lcom/oneplus/camera/ui/ThumbnailBarImpl$CircleOutlineProvider;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ThumbnailBarImpl;
    .param p1, "x1"    # Lcom/oneplus/camera/ui/ThumbnailBarImpl$CircleOutlineProvider;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_OutlineProviderCircle:Lcom/oneplus/camera/ui/ThumbnailBarImpl$CircleOutlineProvider;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->startThumbnailAnimation()V

    return-void
.end method

.method static synthetic access$1900(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    .prologue
    .line 56
    iget v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_Length:I

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->openCameraGallery()V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CaptureHandles:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ThumbnailBarImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->decodeThumbnailImage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ThumbnailBarImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->hideThumbnailBar(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic access$602(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ThumbnailBarImpl;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic access$700(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBarContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$802(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Lcom/oneplus/camera/ui/CaptureButtons;)Lcom/oneplus/camera/ui/CaptureButtons;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ThumbnailBarImpl;
    .param p1, "x1"    # Lcom/oneplus/camera/ui/CaptureButtons;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

    return-object p1
.end method

.method static synthetic access$902(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/ThumbnailBarImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_IsPressingCaptureButton:Z

    return p1
.end method

.method private addThumbnailView(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    .line 361
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->convertToCircle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 363
    .local v0, "circle":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraGallery:Lcom/oneplus/camera/ui/CameraGallery;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraGallery:Lcom/oneplus/camera/ui/CameraGallery;

    sget-object v2, Lcom/oneplus/camera/ui/CameraGallery;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/ui/CameraGallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/ui/CameraGallery$UIState;->OPENED:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/base/BaseActivity$State;->RUNNING:Lcom/oneplus/base/BaseActivity$State;

    if-eq v1, v2, :cond_2

    .line 366
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBar:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 367
    iput-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBackground:Landroid/graphics/Bitmap;

    .line 378
    :goto_0
    return-void

    .line 371
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBitmapQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 373
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBar:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 374
    iput-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBackground:Landroid/graphics/Bitmap;

    .line 375
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->startThumbnailAnimation()V

    .line 377
    :cond_3
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBitmapQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private cancelDecodingImages()V
    .locals 3

    .prologue
    .line 508
    iget-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailDecodeHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 510
    iget-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailDecodeHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/Handle;

    .line 512
    .local v0, "handle":Lcom/oneplus/base/Handle;
    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 515
    .end local v0    # "handle":Lcom/oneplus/base/Handle;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailDecodeHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 516
    iget-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBitmapQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 517
    return-void
.end method

.method private convertToCircle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v13, 0x0

    .line 323
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 324
    .local v10, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 325
    .local v3, "height":I
    invoke-static {v10, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 326
    .local v4, "min":I
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 328
    .local v5, "out":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 329
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 330
    .local v6, "paint":Landroid/graphics/Paint;
    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 333
    const/4 v9, 0x0

    .line 334
    .local v9, "w":I
    const/4 v1, 0x0

    .line 335
    .local v1, "deltaX":I
    const/4 v2, 0x0

    .line 336
    .local v2, "deltaY":I
    if-gt v10, v3, :cond_0

    .line 338
    move v9, v10

    .line 339
    sub-int v11, v3, v9

    div-int/lit8 v2, v11, 0x2

    .line 347
    :goto_0
    new-instance v7, Landroid/graphics/Rect;

    add-int v11, v9, v1

    add-int v12, v9, v2

    invoke-direct {v7, v1, v2, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 349
    .local v7, "rect":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/RectF;

    int-to-float v11, v4

    int-to-float v12, v4

    invoke-direct {v8, v13, v13, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 352
    .local v8, "rectF":Landroid/graphics/RectF;
    div-int/lit8 v11, v4, 0x2

    int-to-float v11, v11

    div-int/lit8 v12, v4, 0x2

    int-to-float v12, v12

    div-int/lit8 v13, v4, 0x2

    int-to-float v13, v13

    invoke-virtual {v0, v11, v12, v13, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 353
    new-instance v11, Landroid/graphics/PorterDuffXfermode;

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v11, v12}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 354
    invoke-virtual {v0, p1, v7, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 355
    return-object v5

    .line 343
    .end local v7    # "rect":Landroid/graphics/Rect;
    .end local v8    # "rectF":Landroid/graphics/RectF;
    :cond_0
    move v9, v3

    .line 344
    sub-int v1, v10, v9

    goto :goto_0
.end method

.method private decodeThumbnailImage(Ljava/lang/String;)V
    .locals 8
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 487
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decodeThumbnailImage() - lenght: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_Length:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", filePath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-static {p1}, Lcom/oneplus/io/FileUtils;->isRawFilePath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    :goto_0
    return-void

    .line 491
    :cond_0
    sget-object v0, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL_BAR_SMALL:Lcom/oneplus/media/BitmapPool;

    iget v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_Length:I

    iget v3, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_Length:I

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbDecodeCallback:Lcom/oneplus/media/BitmapPool$Callback;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->getHandler()Landroid/os/Handler;

    move-result-object v6

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/oneplus/media/BitmapPool;->decode(Ljava/lang/String;IIILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v7

    .line 492
    .local v7, "decodingHandle":Lcom/oneplus/base/Handle;
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailDecodeHandles:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private hideThumbnailBar(Z)V
    .locals 4
    .param p1, "withAnimation"    # Z

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 284
    if-eqz p1, :cond_0

    .line 286
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 287
    .local v0, "translation":I
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBarContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-direct {v2, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_HideAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 288
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_HideAnimationStarted:Z

    .line 301
    .end local v0    # "translation":I
    :goto_0
    return-void

    .line 292
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->cancelDecodingImages()V

    .line 293
    const/16 v1, 0x2710

    invoke-static {p0, v1}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 294
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBar:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 295
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBar:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 296
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBar:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 297
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBarBackGroud:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 298
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBarBackGroud:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 299
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBarContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private openCameraGallery()V
    .locals 3

    .prologue
    .line 452
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_IsPressingCaptureButton:Z

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->TAG:Ljava/lang/String;

    const-string v1, "openCameraGallery() - capture button is pressed"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    :goto_0
    return-void

    .line 458
    :cond_0
    sget-object v1, Lcom/oneplus/camera/ui/ThumbnailBarImpl$12;->$SwitchMap$com$oneplus$camera$PhotoCaptureState:[I

    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v0}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 467
    :pswitch_0
    sget-object v1, Lcom/oneplus/camera/ui/ThumbnailBarImpl$12;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v0}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 476
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraGallery:Lcom/oneplus/camera/ui/CameraGallery;

    if-nez v0, :cond_1

    .line 477
    const-class v0, Lcom/oneplus/camera/ui/CameraGallery;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CameraGallery;

    iput-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraGallery:Lcom/oneplus/camera/ui/CameraGallery;

    .line 478
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraGallery:Lcom/oneplus/camera/ui/CameraGallery;

    if-eqz v0, :cond_2

    .line 479
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraGallery:Lcom/oneplus/camera/ui/CameraGallery;

    invoke-interface {v0}, Lcom/oneplus/camera/ui/CameraGallery;->openFilmstripDirectly()V

    .line 480
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CaptureHandles:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 481
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->hideThumbnailBar(Z)V

    goto :goto_0

    .line 458
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 467
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private startThumbnailAnimation()V
    .locals 4

    .prologue
    const v2, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 432
    const/16 v1, 0x2710

    invoke-static {p0, v1}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 433
    iget-boolean v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_HideAnimationStarted:Z

    if-eqz v1, :cond_0

    .line 435
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBarContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 437
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBar:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 438
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBar:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 439
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBar:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 441
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_BURST_PHOTO_ON_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBitmapQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    .line 442
    :cond_1
    const/16 v0, 0x32

    .line 445
    .local v0, "duration":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBar:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ShowAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v3}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 446
    return-void

    .line 444
    .end local v0    # "duration":I
    :cond_2
    const/16 v0, 0x1f4

    .restart local v0    # "duration":I
    goto :goto_0
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 307
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 314
    invoke-super {p0, p1}, Lcom/oneplus/camera/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 317
    :goto_0
    return-void

    .line 310
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->hideThumbnailBar(Z)V

    goto :goto_0

    .line 307
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method

.method protected onDeinitialize()V
    .locals 0

    .prologue
    .line 500
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onDeinitialize()V

    .line 501
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->cancelDecodingImages()V

    .line 502
    return-void
.end method

.method protected onInitialize()V
    .locals 3

    .prologue
    .line 100
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onInitialize()V

    .line 102
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    .line 105
    sget-object v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$12;->$SwitchMap$com$oneplus$camera$StartMode:[I

    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->getStartMode()Lcom/oneplus/camera/StartMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 115
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    const v1, 0x7f0b0084

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBarContainer:Landroid/view/View;

    .line 116
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    const v1, 0x7f0b0085

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBarBackGroud:Landroid/widget/ImageView;

    .line 117
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    const v1, 0x7f0b0086

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBar:Landroid/widget/ImageView;

    .line 118
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBarContainer:Landroid/view/View;

    new-instance v1, Lcom/oneplus/camera/ui/ThumbnailBarImpl$2;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$2;-><init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBarContainer:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->addAutoRotateView(Landroid/view/View;)V

    .line 129
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    sget-object v0, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL_BAR_SMALL:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v0}, Lcom/oneplus/media/BitmapPool;->activate()Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_Length:I

    .line 135
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->EVENT_MEDIA_FILE_SAVED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/ui/ThumbnailBarImpl$3;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$3;-><init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 147
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->EVENT_CAPTURE_STARTED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/ui/ThumbnailBarImpl$4;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$4;-><init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 160
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/ThumbnailBarImpl$5;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$5;-><init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 181
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/ThumbnailBarImpl$6;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$6;-><init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 200
    const-class v0, Lcom/oneplus/camera/ui/CameraGallery;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CameraGallery;

    iput-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraGallery:Lcom/oneplus/camera/ui/CameraGallery;

    .line 201
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraGallery:Lcom/oneplus/camera/ui/CameraGallery;

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraGallery:Lcom/oneplus/camera/ui/CameraGallery;

    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery;->PROP_IS_MEDIA_LIST_EMPTY:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/ThumbnailBarImpl$7;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$7;-><init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/ui/CameraGallery;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 213
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraGallery:Lcom/oneplus/camera/ui/CameraGallery;

    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/ThumbnailBarImpl$8;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$8;-><init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/ui/CameraGallery;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

    if-nez v0, :cond_2

    .line 230
    const-class v0, Lcom/oneplus/camera/ui/CaptureButtons;

    new-instance v1, Lcom/oneplus/camera/ui/ThumbnailBarImpl$9;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$9;-><init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 255
    :cond_2
    :pswitch_0
    return-void

    .line 105
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
