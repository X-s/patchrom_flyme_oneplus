.class public Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;
.super Lcom/oneplus/camera/ui/BasePreviewCoverProducer;
.source "BlurPreviewCoverProducer.java"


# static fields
.field private static final ANIMATION_FADE_IN_DURATION:J = 0xc8L

.field private static final ANIMATION_FADE_OUT_DURATION:J = 0xc8L

.field private static final MSG_ON_IMAGE_BITMAPS_PREPARED:I = 0x2711


# instance fields
.field private m_ImageProcessingHandler:Landroid/os/Handler;

.field private m_ImageProcessingThread:Landroid/os/HandlerThread;

.field private final m_OnFadeInAnimationEndRunnable:Ljava/lang/Runnable;

.field private final m_OnFadeInAnimationStartRunnable:Ljava/lang/Runnable;

.field private final m_OnFadeOutAnimationEndRunnable:Ljava/lang/Runnable;

.field private final m_OnFadeOutAnimationStartRunnable:Ljava/lang/Runnable;

.field private final m_OnReverseFadeOutAnimationEndRunnable:Ljava/lang/Runnable;

.field private m_RenderScript:Landroid/renderscript/RenderScript;

.field private m_RenderScriptHandle:Lcom/oneplus/base/Handle;

.field private m_ResizeScript:Landroid/renderscript/ScriptIntrinsicResize;

.field private m_RgbBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

.field private m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

.field private m_YuvToRgbScript:Landroid/renderscript/ScriptIntrinsicYuvToRGB;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    .line 47
    new-instance v0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$1;-><init>(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_OnFadeInAnimationEndRunnable:Ljava/lang/Runnable;

    .line 55
    new-instance v0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$2;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$2;-><init>(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_OnFadeInAnimationStartRunnable:Ljava/lang/Runnable;

    .line 63
    new-instance v0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$3;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$3;-><init>(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_OnFadeOutAnimationEndRunnable:Ljava/lang/Runnable;

    .line 71
    new-instance v0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$4;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$4;-><init>(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_OnFadeOutAnimationStartRunnable:Ljava/lang/Runnable;

    .line 79
    new-instance v0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$5;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$5;-><init>(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_OnReverseFadeOutAnimationEndRunnable:Ljava/lang/Runnable;

    .line 99
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Blur preview cover processing thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_ImageProcessingThread:Landroid/os/HandlerThread;

    .line 100
    iget-object v0, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_ImageProcessingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 101
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_ImageProcessingThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_ImageProcessingHandler:Landroid/os/Handler;

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->onFadeInAnimationEnd()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->onFadeInAnimationStart()V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)Landroid/renderscript/RenderScript;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RenderScript:Landroid/renderscript/RenderScript;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;Landroid/renderscript/RenderScript;)Landroid/renderscript/RenderScript;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;
    .param p1, "x1"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RenderScript:Landroid/renderscript/RenderScript;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)Landroid/renderscript/ScriptIntrinsicYuvToRGB;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_YuvToRgbScript:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;Landroid/renderscript/ScriptIntrinsicYuvToRGB;)Landroid/renderscript/ScriptIntrinsicYuvToRGB;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;
    .param p1, "x1"    # Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_YuvToRgbScript:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_ImageProcessingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->onFadeOutAnimationEnd()V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->onFadeOutAnimationStart()V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->onReverseFadeOutAnimationEnd()V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;
    .param p1, "x1"    # Lcom/oneplus/base/PropertyKey;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RenderScriptHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic access$702(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RenderScriptHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic access$800(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)[Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # Landroid/graphics/RectF;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->processImageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)[Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private onFadeInAnimationEnd()V
    .locals 3

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->getPreviewCoverBaseImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 134
    .local v0, "baseImageView":Landroid/widget/ImageView;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    sget-object v1, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->READY_TO_OUT_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 136
    return-void
.end method

.method private onFadeInAnimationStart()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method private onFadeOutAnimationEnd()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 148
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->getPreviewCoverContainer()Landroid/view/View;

    move-result-object v3

    .line 149
    .local v3, "container":Landroid/view/View;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->getPreviewCoverBackgroundView()Landroid/view/View;

    move-result-object v0

    .line 150
    .local v0, "backgroundView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->getPreviewCoverBaseImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 151
    .local v1, "baseImageView":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->getPreviewCoverTopImageView()Landroid/widget/ImageView;

    move-result-object v2

    .line 152
    .local v2, "blurImageView":Landroid/widget/ImageView;
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 153
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 154
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 155
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 156
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    sget-object v4, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v5, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->STOPPED:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    invoke-virtual {p0, v4, v5}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 159
    return-void
.end method

.method private onFadeOutAnimationStart()V
    .locals 0

    .prologue
    .line 165
    return-void
.end method

.method private onPreviewCoverPrepared(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V
    .locals 8
    .param p1, "normalImage"    # Landroid/graphics/Bitmap;
    .param p2, "blurImage"    # Landroid/graphics/Bitmap;
    .param p3, "previewBounds"    # Landroid/graphics/RectF;

    .prologue
    const/4 v7, 0x0

    .line 171
    sget-object v5, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->PREPARING:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    if-eq v5, v6, :cond_0

    .line 173
    iget-object v5, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPreviewCoverPrepared() - Current state is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->getPreviewCoverBaseImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 178
    .local v1, "baseImageView":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->getPreviewCoverTopImageView()Landroid/widget/ImageView;

    move-result-object v2

    .line 181
    .local v2, "blurImageView":Landroid/widget/ImageView;
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 182
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 183
    .local v4, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v5, p3, Landroid/graphics/RectF;->top:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 184
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 185
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 186
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 189
    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 190
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .end local v4    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 191
    .restart local v4    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v5, p3, Landroid/graphics/RectF;->top:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 192
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 193
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 195
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->getPreviewCoverContainer()Landroid/view/View;

    move-result-object v3

    .line 196
    .local v3, "container":Landroid/view/View;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->getPreviewCoverBackgroundView()Landroid/view/View;

    move-result-object v0

    .line 197
    .local v0, "backgroundView":Landroid/view/View;
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 198
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 199
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 202
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->getHandler()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$6;

    invoke-direct {v6, p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$6;-><init>(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private onReverseFadeOutAnimationEnd()V
    .locals 2

    .prologue
    .line 240
    sget-object v0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->READY_TO_OUT_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 241
    return-void
.end method

.method private processImageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)[Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "previewFrame"    # Landroid/graphics/Bitmap;
    .param p2, "previewBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 387
    iget-object v11, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RenderScript:Landroid/renderscript/RenderScript;

    if-nez v11, :cond_0

    .line 389
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v11

    invoke-static {v11}, Lcom/oneplus/renderscript/RenderScriptManager;->createRenderScript(Landroid/content/Context;)Lcom/oneplus/base/Handle;

    move-result-object v11

    iput-object v11, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RenderScriptHandle:Lcom/oneplus/base/Handle;

    .line 390
    iget-object v11, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RenderScriptHandle:Lcom/oneplus/base/Handle;

    invoke-static {v11}, Lcom/oneplus/renderscript/RenderScriptManager;->getRenderScript(Lcom/oneplus/base/Handle;)Landroid/renderscript/RenderScript;

    move-result-object v11

    iput-object v11, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RenderScript:Landroid/renderscript/RenderScript;

    .line 392
    :cond_0
    iget-object v11, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RgbBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    if-nez v11, :cond_1

    .line 393
    iget-object v11, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RenderScript:Landroid/renderscript/RenderScript;

    iget-object v12, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RenderScript:Landroid/renderscript/RenderScript;

    invoke-static {v12}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v11

    iput-object v11, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RgbBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 394
    :cond_1
    iget-object v11, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_ResizeScript:Landroid/renderscript/ScriptIntrinsicResize;

    if-nez v11, :cond_2

    .line 395
    iget-object v11, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RenderScript:Landroid/renderscript/RenderScript;

    invoke-static {v11}, Landroid/renderscript/ScriptIntrinsicResize;->create(Landroid/renderscript/RenderScript;)Landroid/renderscript/ScriptIntrinsicResize;

    move-result-object v11

    iput-object v11, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_ResizeScript:Landroid/renderscript/ScriptIntrinsicResize;

    .line 398
    :cond_2
    iget-object v11, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RenderScript:Landroid/renderscript/RenderScript;

    invoke-static {v11, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v2

    .line 401
    .local v2, "frameRgbAllocation":Landroid/renderscript/Allocation;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    div-int/lit8 v5, v11, 0xa

    .line 402
    .local v5, "resizeWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    div-int/lit8 v4, v11, 0xa

    .line 403
    .local v4, "resizeHeight":I
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v4, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 404
    .local v9, "thumbImage":Landroid/graphics/Bitmap;
    iget-object v11, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RenderScript:Landroid/renderscript/RenderScript;

    invoke-static {v11, v9}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 407
    .local v0, "frameBlurAllocation":Landroid/renderscript/Allocation;
    new-instance v6, Landroid/renderscript/Type$Builder;

    iget-object v11, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RenderScript:Landroid/renderscript/RenderScript;

    iget-object v12, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RenderScript:Landroid/renderscript/RenderScript;

    invoke-static {v12}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v12

    invoke-direct {v6, v11, v12}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 408
    .local v6, "rgbaTypeBuilder":Landroid/renderscript/Type$Builder;
    invoke-virtual {v6, v5}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 409
    invoke-virtual {v6, v4}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 410
    iget-object v11, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RenderScript:Landroid/renderscript/RenderScript;

    invoke-virtual {v6}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 413
    .local v1, "frameResizeAllocation":Landroid/renderscript/Allocation;
    iget-object v11, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_ResizeScript:Landroid/renderscript/ScriptIntrinsicResize;

    invoke-virtual {v11, v2}, Landroid/renderscript/ScriptIntrinsicResize;->setInput(Landroid/renderscript/Allocation;)V

    .line 414
    iget-object v11, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_ResizeScript:Landroid/renderscript/ScriptIntrinsicResize;

    invoke-virtual {v11, v1}, Landroid/renderscript/ScriptIntrinsicResize;->forEach_bicubic(Landroid/renderscript/Allocation;)V

    .line 417
    iget-object v11, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RgbBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    const/high16 v12, 0x41c80000    # 25.0f

    invoke-virtual {v11, v12}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 418
    iget-object v11, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RgbBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v11, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 419
    iget-object v11, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RgbBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v11, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 422
    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 425
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 426
    .local v10, "thumbMatrix":Landroid/graphics/Matrix;
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 429
    .local v3, "originalMatrix":Landroid/graphics/Matrix;
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v11

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float v7, v11, v12

    .line 430
    .local v7, "scaleX":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v11

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float v8, v11, v12

    .line 431
    .local v8, "scaleY":F
    invoke-virtual {v10, v7, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 434
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v11

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float v7, v11, v12

    .line 435
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v11

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float v8, v11, v12

    .line 436
    invoke-virtual {v3, v7, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 438
    const/4 v11, 0x2

    new-array v11, v11, [Landroid/graphics/Bitmap;

    const/4 v12, 0x0

    aput-object p1, v11, v12

    const/4 v12, 0x1

    aput-object v9, v11, v12

    return-object v11
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 109
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 116
    invoke-super {p0, p1}, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->handleMessage(Landroid/os/Message;)V

    .line 119
    :goto_0
    return-void

    .line 112
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 113
    .local v0, "objs":[Ljava/lang/Object;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Landroid/graphics/Bitmap;

    const/4 v3, 0x2

    aget-object v3, v0, v3

    check-cast v3, Landroid/graphics/RectF;

    invoke-direct {p0, v1, v2, v3}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->onPreviewCoverPrepared(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V

    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method public isAlphaBlending()Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method protected onRelease()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_ImageProcessingThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_ImageProcessingHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$7;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$7;-><init>(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 231
    iget-object v0, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_ImageProcessingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 233
    :cond_0
    invoke-super {p0}, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->onRelease()V

    .line 234
    return-void
.end method

.method protected preparePreviewCover()Z
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 249
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    .line 250
    .local v1, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    iget-object v6, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    if-nez v6, :cond_0

    .line 251
    const-class v6, Lcom/oneplus/camera/ui/Viewfinder;

    invoke-virtual {v1, v6}, Lcom/oneplus/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v6

    check-cast v6, Lcom/oneplus/camera/ui/Viewfinder;

    iput-object v6, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    .line 252
    :cond_0
    iget-object v6, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    if-nez v6, :cond_1

    .line 254
    iget-object v6, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->TAG:Ljava/lang/String;

    const-string v8, "preparePreviewCover() - No viewfinder"

    invoke-static {v6, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 379
    :goto_0
    return v6

    .line 259
    :cond_1
    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v6}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 260
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_2

    .line 262
    iget-object v6, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->TAG:Ljava/lang/String;

    const-string v8, "preparePreviewCover() - No camera"

    invoke-static {v6, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 263
    goto :goto_0

    .line 267
    :cond_2
    iget-object v6, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    sget-object v9, Lcom/oneplus/camera/ui/Viewfinder;->PROP_PREVIEW_BOUNDS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v6, v9}, Lcom/oneplus/camera/ui/Viewfinder;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RectF;

    .line 269
    .local v3, "previewBounds":Landroid/graphics/RectF;
    iget-object v6, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    sget-object v9, Lcom/oneplus/camera/ui/Viewfinder;->PROP_IS_DISPLAY_PREVIEW_FRAME_COPY_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v6, v9}, Lcom/oneplus/camera/ui/Viewfinder;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v6

    cmpl-float v6, v6, v10

    if-lez v6, :cond_3

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v6

    cmpl-float v6, v6, v10

    if-lez v6, :cond_3

    .line 274
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-int v5, v6

    .line 275
    .local v5, "width":I
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v6

    float-to-int v2, v6

    .line 276
    .local v2, "height":I
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 277
    .local v4, "previewFrame":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    invoke-interface {v6, v4, v7}, Lcom/oneplus/camera/ui/Viewfinder;->copyDisplayPreviewFrame(Landroid/graphics/Bitmap;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 279
    iget-object v6, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_ImageProcessingHandler:Landroid/os/Handler;

    new-instance v7, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$8;

    invoke-direct {v7, p0, v4, v3}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$8;-><init>(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v6, v8

    .line 291
    goto :goto_0

    .line 296
    .end local v2    # "height":I
    .end local v4    # "previewFrame":Landroid/graphics/Bitmap;
    .end local v5    # "width":I
    :cond_3
    new-instance v6, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;

    invoke-direct {v6, p0, v0, v3}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;-><init>(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;Lcom/oneplus/camera/Camera;Landroid/graphics/RectF;)V

    invoke-static {v0, v6}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move v6, v8

    .line 379
    goto :goto_0
.end method

.method protected reverseInAnimation()V
    .locals 0

    .prologue
    .line 446
    return-void
.end method

.method protected reverseOutAnimation()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 453
    sget-object v4, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->OUT_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    if-eq v4, v5, :cond_0

    .line 466
    :goto_0
    return-void

    .line 456
    :cond_0
    iget-object v4, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->TAG:Ljava/lang/String;

    const-string v5, "reverseOutAnimation()"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->getPreviewCoverBackgroundView()Landroid/view/View;

    move-result-object v0

    .line 459
    .local v0, "backgroundView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->getPreviewCoverTopImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 460
    .local v1, "blurImageView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 461
    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 462
    invoke-virtual {v1}, Landroid/widget/ImageView;->getAlpha()F

    move-result v4

    sub-float v4, v6, v4

    const/high16 v5, 0x43480000    # 200.0f

    mul-float/2addr v4, v5

    float-to-long v2, v4

    .line 463
    .local v2, "duration":J
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 464
    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_OnReverseFadeOutAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method protected startInAnimation(Z)V
    .locals 8
    .param p1, "animation"    # Z

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 474
    sget-object v4, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->READY_TO_IN_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    if-eq v4, v5, :cond_0

    .line 502
    :goto_0
    return-void

    .line 478
    :cond_0
    if-nez p1, :cond_1

    .line 480
    iget-object v4, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_OnFadeInAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 484
    :cond_1
    iget-object v4, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->TAG:Ljava/lang/String;

    const-string v5, "startInAnimation()"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->getPreviewCoverContainer()Landroid/view/View;

    move-result-object v3

    .line 487
    .local v3, "container":Landroid/view/View;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->getPreviewCoverBackgroundView()Landroid/view/View;

    move-result-object v0

    .line 488
    .local v0, "backgroundView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->getPreviewCoverBaseImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 489
    .local v1, "baseImageView":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->getPreviewCoverTopImageView()Landroid/widget/ImageView;

    move-result-object v2

    .line 490
    .local v2, "blurImageView":Landroid/widget/ImageView;
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 491
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 492
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 493
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 494
    invoke-virtual {v0, v7}, Landroid/view/View;->setAlpha(F)V

    .line 495
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 496
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 497
    invoke-virtual {v2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_OnFadeInAnimationStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_OnFadeInAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 501
    sget-object v4, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v5, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->IN_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    invoke-virtual {p0, v4, v5}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected startOutAnimation(Z)V
    .locals 8
    .param p1, "animation"    # Z

    .prologue
    const-wide/16 v6, 0xc8

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 508
    sget-object v2, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->READY_TO_OUT_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    if-eq v2, v3, :cond_0

    .line 530
    :goto_0
    return-void

    .line 512
    :cond_0
    if-nez p1, :cond_1

    .line 514
    iget-object v2, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_OnFadeOutAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 518
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->TAG:Ljava/lang/String;

    const-string v3, "startOutAnimation()"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->getPreviewCoverBackgroundView()Landroid/view/View;

    move-result-object v0

    .line 521
    .local v0, "backgroundView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->getPreviewCoverTopImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 522
    .local v1, "blurImageView":Landroid/widget/ImageView;
    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 523
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 524
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 525
    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_OnFadeOutAnimationStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_OnFadeOutAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 529
    sget-object v2, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->OUT_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method
