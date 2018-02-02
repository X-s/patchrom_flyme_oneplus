.class public Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;
.super Lcom/oneplus/camera/ui/BasePreviewCoverProducer;
.source "BlurPreviewCoverProducer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$1;,
        Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$2;,
        Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$3;,
        Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$4;,
        Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$5;
    }
.end annotation


# static fields
.field private static final ANIMATION_FADE_IN_DURATION:J = 0x50L

.field private static final ANIMATION_FADE_OUT_DURATION:J = 0x50L

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
.method static synthetic -get0(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_ImageProcessingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)Landroid/renderscript/RenderScript;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RenderScript:Landroid/renderscript/RenderScript;

    return-object v0
.end method

.method static synthetic -get3(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)Lcom/oneplus/base/Handle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RenderScriptHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic -get4(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)Landroid/renderscript/ScriptIntrinsicYuvToRGB;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_YuvToRgbScript:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    return-object v0
.end method

.method static synthetic -set0(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;Landroid/renderscript/RenderScript;)Landroid/renderscript/RenderScript;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RenderScript:Landroid/renderscript/RenderScript;

    return-object p1
.end method

.method static synthetic -set1(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RenderScriptHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic -set2(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;Landroid/renderscript/ScriptIntrinsicYuvToRGB;)Landroid/renderscript/ScriptIntrinsicYuvToRGB;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_YuvToRgbScript:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)[Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "previewFrame"    # Landroid/graphics/Bitmap;
    .param p2, "previewBounds"    # Landroid/graphics/RectF;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->processImageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)[Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Lcom/oneplus/base/PropertyKey;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->onFadeInAnimationEnd()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->onFadeInAnimationStart()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->onFadeOutAnimationEnd()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->onFadeOutAnimationStart()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->onReverseFadeOutAnimationEnd()V

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    .line 48
    new-instance v0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$1;-><init>(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_OnFadeInAnimationEndRunnable:Ljava/lang/Runnable;

    .line 56
    new-instance v0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$2;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$2;-><init>(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_OnFadeInAnimationStartRunnable:Ljava/lang/Runnable;

    .line 64
    new-instance v0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$3;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$3;-><init>(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_OnFadeOutAnimationEndRunnable:Ljava/lang/Runnable;

    .line 72
    new-instance v0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$4;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$4;-><init>(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_OnFadeOutAnimationStartRunnable:Ljava/lang/Runnable;

    .line 80
    new-instance v0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$5;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$5;-><init>(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_OnReverseFadeOutAnimationEndRunnable:Ljava/lang/Runnable;

    .line 100
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "Blur preview cover processing thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_ImageProcessingThread:Landroid/os/HandlerThread;

    .line 101
    iget-object v0, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_ImageProcessingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 102
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_ImageProcessingThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_ImageProcessingHandler:Landroid/os/Handler;

    .line 97
    return-void
.end method

.method private onFadeInAnimationEnd()V
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$6;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$6;-><init>(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 132
    return-void
.end method

.method private onFadeInAnimationStart()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method private onFadeOutAnimationEnd()V
    .locals 6

    .prologue
    const/16 v4, 0x8

    .line 156
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->getPreviewCoverContainer()Landroid/view/View;

    move-result-object v3

    .line 157
    .local v3, "container":Landroid/view/View;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->getPreviewCoverBackgroundView()Landroid/view/View;

    move-result-object v0

    .line 158
    .local v0, "backgroundView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->getPreviewCoverBaseImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 159
    .local v1, "baseImageView":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->getPreviewCoverTopImageView()Landroid/widget/ImageView;

    move-result-object v2

    .line 160
    .local v2, "blurImageView":Landroid/widget/ImageView;
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 161
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 162
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    sget-object v4, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v5, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->STOPPED:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    invoke-virtual {p0, v4, v5}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 154
    return-void
.end method

.method private onFadeOutAnimationStart()V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method private onPreviewCoverPrepared(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V
    .locals 6
    .param p1, "normalImage"    # Landroid/graphics/Bitmap;
    .param p2, "blurImage"    # Landroid/graphics/Bitmap;
    .param p3, "previewBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 178
    sget-object v3, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->PREPARING:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    if-eq v3, v4, :cond_0

    .line 180
    iget-object v3, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPreviewCoverPrepared() - Current state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->getPreviewCoverBaseImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 185
    .local v0, "baseImageView":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->getPreviewCoverTopImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 188
    .local v1, "blurImageView":Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 189
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 190
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v3, p3, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 191
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 192
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 195
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 196
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 197
    .restart local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v3, p3, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 198
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 199
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 202
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$7;

    invoke-direct {v4, p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$7;-><init>(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 176
    return-void
.end method

.method private onReverseFadeOutAnimationEnd()V
    .locals 2

    .prologue
    .line 239
    sget-object v0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->READY_TO_OUT_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 237
    return-void
.end method

.method private processImageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)[Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "previewFrame"    # Landroid/graphics/Bitmap;
    .param p2, "previewBounds"    # Landroid/graphics/RectF;

    .prologue
    const/4 v9, 0x1

    .line 398
    iget-object v7, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RenderScript:Landroid/renderscript/RenderScript;

    if-nez v7, :cond_0

    .line 400
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/oneplus/renderscript/RenderScriptManager;->createRenderScript(Landroid/content/Context;)Lcom/oneplus/base/Handle;

    move-result-object v7

    iput-object v7, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RenderScriptHandle:Lcom/oneplus/base/Handle;

    .line 401
    iget-object v7, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RenderScriptHandle:Lcom/oneplus/base/Handle;

    invoke-static {v7}, Lcom/oneplus/renderscript/RenderScriptManager;->getRenderScript(Lcom/oneplus/base/Handle;)Landroid/renderscript/RenderScript;

    move-result-object v7

    iput-object v7, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RenderScript:Landroid/renderscript/RenderScript;

    .line 403
    :cond_0
    iget-object v7, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RgbBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    if-nez v7, :cond_1

    .line 404
    iget-object v7, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RenderScript:Landroid/renderscript/RenderScript;

    iget-object v8, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RenderScript:Landroid/renderscript/RenderScript;

    invoke-static {v8}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v7

    iput-object v7, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RgbBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 405
    :cond_1
    iget-object v7, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_ResizeScript:Landroid/renderscript/ScriptIntrinsicResize;

    if-nez v7, :cond_2

    .line 406
    iget-object v7, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RenderScript:Landroid/renderscript/RenderScript;

    invoke-static {v7}, Landroid/renderscript/ScriptIntrinsicResize;->create(Landroid/renderscript/RenderScript;)Landroid/renderscript/ScriptIntrinsicResize;

    move-result-object v7

    iput-object v7, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_ResizeScript:Landroid/renderscript/ScriptIntrinsicResize;

    .line 409
    :cond_2
    iget-object v7, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RenderScript:Landroid/renderscript/RenderScript;

    invoke-static {v7, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v2

    .line 412
    .local v2, "frameRgbAllocation":Landroid/renderscript/Allocation;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v4, v7, 0xa

    .line 413
    .local v4, "resizeWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    div-int/lit8 v3, v7, 0xa

    .line 414
    .local v3, "resizeHeight":I
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 415
    .local v6, "thumbImage":Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RenderScript:Landroid/renderscript/RenderScript;

    invoke-static {v7, v6}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 418
    .local v0, "frameBlurAllocation":Landroid/renderscript/Allocation;
    new-instance v5, Landroid/renderscript/Type$Builder;

    iget-object v7, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RenderScript:Landroid/renderscript/RenderScript;

    iget-object v8, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RenderScript:Landroid/renderscript/RenderScript;

    invoke-static {v8}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 419
    .local v5, "rgbaTypeBuilder":Landroid/renderscript/Type$Builder;
    invoke-virtual {v5, v4}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 420
    invoke-virtual {v5, v3}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 421
    iget-object v7, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RenderScript:Landroid/renderscript/RenderScript;

    invoke-virtual {v5}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v8

    invoke-static {v7, v8, v9}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 424
    .local v1, "frameResizeAllocation":Landroid/renderscript/Allocation;
    iget-object v7, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_ResizeScript:Landroid/renderscript/ScriptIntrinsicResize;

    invoke-virtual {v7, v2}, Landroid/renderscript/ScriptIntrinsicResize;->setInput(Landroid/renderscript/Allocation;)V

    .line 425
    iget-object v7, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_ResizeScript:Landroid/renderscript/ScriptIntrinsicResize;

    invoke-virtual {v7, v1}, Landroid/renderscript/ScriptIntrinsicResize;->forEach_bicubic(Landroid/renderscript/Allocation;)V

    .line 428
    iget-object v7, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RgbBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    const/high16 v8, 0x41c80000    # 25.0f

    invoke-virtual {v7, v8}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 429
    iget-object v7, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RgbBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v7, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 430
    iget-object v7, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RgbBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v7, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 432
    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 449
    const/4 v7, 0x2

    new-array v7, v7, [Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    aput-object v6, v7, v9

    return-object v7
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 110
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 117
    invoke-super {p0, p1}, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->handleMessage(Landroid/os/Message;)V

    .line 108
    :goto_0
    return-void

    .line 113
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 114
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

    .line 110
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method public isAlphaBlending()Z
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x1

    return v0
.end method

.method protected onRelease()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_ImageProcessingThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_ImageProcessingHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$8;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$8;-><init>(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 230
    iget-object v0, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_ImageProcessingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 232
    :cond_0
    invoke-super {p0}, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->onRelease()V

    .line 218
    return-void
.end method

.method protected preparePreviewCover()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 248
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    .line 249
    .local v1, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    iget-object v6, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    if-nez v6, :cond_0

    .line 250
    const-class v6, Lcom/oneplus/camera/ui/Viewfinder;

    invoke-virtual {v1, v6}, Lcom/oneplus/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v6

    check-cast v6, Lcom/oneplus/camera/ui/Viewfinder;

    iput-object v6, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    .line 251
    :cond_0
    iget-object v6, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    if-nez v6, :cond_1

    .line 253
    iget-object v6, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "preparePreviewCover() - No viewfinder"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return v8

    .line 258
    :cond_1
    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v6}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 259
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_2

    .line 261
    iget-object v6, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "preparePreviewCover() - No camera"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    return v8

    .line 266
    :cond_2
    iget-object v6, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    sget-object v7, Lcom/oneplus/camera/ui/Viewfinder;->PROP_PREVIEW_BOUNDS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v6, v7}, Lcom/oneplus/camera/ui/Viewfinder;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RectF;

    .line 268
    .local v3, "previewBounds":Landroid/graphics/RectF;
    iget-object v6, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    if-eqz v6, :cond_3

    .line 269
    iget-object v6, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    sget-object v7, Lcom/oneplus/camera/ui/Viewfinder;->PROP_IS_DISPLAY_PREVIEW_FRAME_COPY_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v6, v7}, Lcom/oneplus/camera/ui/Viewfinder;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 268
    if-eqz v6, :cond_3

    .line 270
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v6

    cmpl-float v6, v6, v9

    if-lez v6, :cond_3

    .line 271
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v6

    cmpl-float v6, v6, v9

    if-lez v6, :cond_3

    .line 273
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-int v5, v6

    .line 274
    .local v5, "width":I
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v6

    float-to-int v2, v6

    .line 275
    .local v2, "height":I
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 276
    .local v4, "previewFrame":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    invoke-interface {v6, v4, v8}, Lcom/oneplus/camera/ui/Viewfinder;->copyDisplayPreviewFrame(Landroid/graphics/Bitmap;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 278
    iget-object v6, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_ImageProcessingHandler:Landroid/os/Handler;

    new-instance v7, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;

    invoke-direct {v7, p0, v4, v3}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;-><init>(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 290
    return v10

    .line 295
    .end local v2    # "height":I
    .end local v4    # "previewFrame":Landroid/graphics/Bitmap;
    .end local v5    # "width":I
    :cond_3
    new-instance v6, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;

    invoke-direct {v6, p0, v0, v3}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;-><init>(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;Lcom/oneplus/camera/Camera;Landroid/graphics/RectF;)V

    invoke-static {v0, v6}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 390
    return v10
.end method

.method protected reverseInAnimation()V
    .locals 0

    .prologue
    .line 455
    return-void
.end method

.method protected reverseOutAnimation()V
    .locals 4

    .prologue
    .line 464
    sget-object v1, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->OUT_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    if-eq v1, v2, :cond_0

    .line 465
    return-void

    .line 467
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "reverseOutAnimation()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->getPreviewCoverContainer()Landroid/view/View;

    move-result-object v0

    .line 470
    .local v0, "container":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 471
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x50

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 472
    iget-object v2, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_OnReverseFadeOutAnimationEndRunnable:Ljava/lang/Runnable;

    .line 471
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 462
    return-void
.end method

.method protected startInAnimation(Z)V
    .locals 8
    .param p1, "animation"    # Z

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 481
    sget-object v4, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->READY_TO_IN_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    if-eq v4, v5, :cond_0

    .line 482
    return-void

    .line 485
    :cond_0
    if-nez p1, :cond_1

    .line 487
    iget-object v4, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_OnFadeInAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 488
    return-void

    .line 491
    :cond_1
    iget-object v4, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "startInAnimation()"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->getPreviewCoverContainer()Landroid/view/View;

    move-result-object v3

    .line 494
    .local v3, "container":Landroid/view/View;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->getPreviewCoverBackgroundView()Landroid/view/View;

    move-result-object v0

    .line 495
    .local v0, "backgroundView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->getPreviewCoverBaseImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 496
    .local v1, "baseImageView":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->getPreviewCoverTopImageView()Landroid/widget/ImageView;

    move-result-object v2

    .line 497
    .local v2, "blurImageView":Landroid/widget/ImageView;
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 498
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 499
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 500
    invoke-virtual {v0, v7}, Landroid/view/View;->setAlpha(F)V

    .line 501
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 502
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 503
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v6, 0x50

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 504
    iget-object v5, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_OnFadeInAnimationStartRunnable:Ljava/lang/Runnable;

    .line 503
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 505
    iget-object v5, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_OnFadeInAnimationEndRunnable:Ljava/lang/Runnable;

    .line 503
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 507
    sget-object v4, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v5, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->IN_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    invoke-virtual {p0, v4, v5}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 478
    return-void
.end method

.method protected startOutAnimation(Z)V
    .locals 4
    .param p1, "animation"    # Z

    .prologue
    .line 514
    sget-object v1, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->READY_TO_OUT_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    if-eq v1, v2, :cond_0

    .line 515
    return-void

    .line 518
    :cond_0
    if-nez p1, :cond_1

    .line 520
    iget-object v1, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_OnFadeOutAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 521
    return-void

    .line 524
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startOutAnimation()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->getPreviewCoverContainer()Landroid/view/View;

    move-result-object v0

    .line 527
    .local v0, "container":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x50

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 528
    iget-object v2, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_OnFadeOutAnimationStartRunnable:Ljava/lang/Runnable;

    .line 527
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 529
    iget-object v2, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_OnFadeOutAnimationEndRunnable:Ljava/lang/Runnable;

    .line 527
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 531
    sget-object v1, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->OUT_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 511
    return-void
.end method
