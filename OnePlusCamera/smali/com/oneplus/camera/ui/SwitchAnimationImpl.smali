.class public Lcom/oneplus/camera/ui/SwitchAnimationImpl;
.super Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl;
.source "SwitchAnimationImpl.java"

# interfaces
.implements Lcom/oneplus/camera/ui/CaptureModeSwitchAnimation;
.implements Lcom/oneplus/camera/ui/PreviewSizeSwitchAnimation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/SwitchAnimationImpl$2;
    }
.end annotation


# static fields
.field private static final ANIMATION_FADE_IN_DURATION:J = 0x190L

.field private static final ANIMATION_FADE_OUT_DELAY:J = 0x0L

.field private static final ANIMATION_FADE_OUT_DURATION:J = 0xc8L

.field private static final ENABLE_ANIMATION_LOG:Z = false

.field private static final MSG_CAMERA_PREVIEW_OVERLAY_INVALIDATE:I = 0x2715

.field private static final MSG_FADE_OUT:I = 0x2724

.field private static final MSG_ON_ANIMATION_TIMEOUT:I = 0x271a

.field private static final TIMEOUT:J = 0x1388L


# instance fields
.field private m_BackgroundRectangles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private m_BitmapPaint:Landroid/graphics/Paint;

.field private m_CameraPreviewOverlay:Lcom/oneplus/camera/ui/CameraPreviewOverlay;

.field private m_FadeInStartTime:J

.field private m_FadeInState:Lcom/oneplus/camera/OperationState;

.field private m_FadeOutStartTime:J

.field private m_FadeOutState:Lcom/oneplus/camera/OperationState;

.field private m_IsFirstPreviewFrameReceived:Z

.field private m_Paint:Landroid/graphics/Paint;

.field private m_PreviewBlurImage:Landroid/graphics/Bitmap;

.field private m_PreviewBounds:Landroid/graphics/RectF;

.field private m_PreviewContainerSize:Landroid/util/Size;

.field private m_PreviewImage:Landroid/graphics/Bitmap;

.field private m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;


# direct methods
.method protected constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 1
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 54
    const-string v0, "Switch Animation Impl"

    invoke-direct {p0, v0, p1}, Lcom/oneplus/camera/ui/SwitchAnimationImpl;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;)V

    .line 55
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;)V

    .line 39
    sget-object v0, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    iput-object v0, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_FadeInState:Lcom/oneplus/camera/OperationState;

    .line 41
    sget-object v0, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    iput-object v0, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_FadeOutState:Lcom/oneplus/camera/OperationState;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/camera/ui/SwitchAnimationImpl;Landroid/graphics/Canvas;Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/SwitchAnimationImpl;
    .param p1, "x1"    # Landroid/graphics/Canvas;
    .param p2, "x2"    # Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->onPreviewOverlayRender(Landroid/graphics/Canvas;Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;)V

    return-void
.end method

.method private hasAnimation()Z
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_FadeInState:Lcom/oneplus/camera/OperationState;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_FadeOutState:Lcom/oneplus/camera/OperationState;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    if-eq v0, v1, :cond_1

    .line 104
    :cond_0
    const/4 v0, 0x1

    .line 105
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onFadeInAnimationFinished()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->TAG:Ljava/lang/String;

    const-string v1, "onFadeInAnimationFinished()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const/16 v0, 0x271a

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 118
    sget-object v0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->PROP_ANIMATION_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 121
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_IsFirstPreviewFrameReceived:Z

    if-eqz v0, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->startFadeOutAnimation()Z

    .line 123
    :cond_0
    return-void
.end method

.method private onFadeOutAnimationFinished()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->TAG:Ljava/lang/String;

    const-string v1, "onFadeOutAnimationFinished()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->reset()V

    .line 132
    return-void
.end method

.method private onPreviewOverlayRender(Landroid/graphics/Canvas;Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "params"    # Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;

    .prologue
    .line 224
    iget-object v8, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_PreviewBlurImage:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_9

    .line 227
    iget-object v8, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_BackgroundRectangles:Ljava/util/List;

    if-nez v8, :cond_1

    .line 229
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_BackgroundRectangles:Ljava/util/List;

    .line 230
    iget-object v8, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_PreviewBounds:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_0

    .line 231
    iget-object v8, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_BackgroundRectangles:Ljava/util/List;

    new-instance v9, Landroid/graphics/RectF;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_PreviewContainerSize:Landroid/util/Size;

    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v12

    int-to-float v12, v12

    iget-object v13, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_PreviewBounds:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_0
    iget-object v8, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_PreviewBounds:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    iget-object v9, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_PreviewContainerSize:Landroid/util/Size;

    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    .line 233
    iget-object v8, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_BackgroundRectangles:Ljava/util/List;

    new-instance v9, Landroid/graphics/RectF;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_PreviewBounds:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    iget-object v12, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_PreviewContainerSize:Landroid/util/Size;

    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v12

    int-to-float v12, v12

    iget-object v13, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_PreviewContainerSize:Landroid/util/Size;

    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v13

    int-to-float v13, v13

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_1
    const/4 v1, 0x0

    .line 238
    .local v1, "drawBitmap":Z
    iget-object v8, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_FadeInState:Lcom/oneplus/camera/OperationState;

    sget-object v9, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    if-eq v8, v9, :cond_4

    .line 240
    sget-object v8, Lcom/oneplus/camera/ui/SwitchAnimationImpl$2;->$SwitchMap$com$oneplus$camera$OperationState:[I

    iget-object v9, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_FadeInState:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v9}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 348
    :cond_2
    :goto_0
    if-eqz v1, :cond_9

    .line 351
    iget-object v8, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_BackgroundRectangles:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/RectF;

    .line 355
    .local v7, "rect":Landroid/graphics/RectF;
    iget-object v8, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 243
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "rect":Landroid/graphics/RectF;
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 244
    .local v2, "currentTime":J
    iget-wide v8, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_FadeInStartTime:J

    sub-long v4, v2, v8

    .line 245
    .local v4, "elapsedTime":J
    const-wide/16 v8, 0x190

    cmp-long v8, v4, v8

    if-gez v8, :cond_3

    .line 247
    long-to-float v8, v4

    const/high16 v9, 0x43c80000    # 400.0f

    div-float/2addr v8, v9

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float v0, v8, v9

    .line 250
    .local v0, "alpha":F
    iget-object v8, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_Paint:Landroid/graphics/Paint;

    const/16 v9, 0xff

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 251
    iget-object v8, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_BitmapPaint:Landroid/graphics/Paint;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 252
    const/4 v1, 0x1

    .line 265
    .end local v0    # "alpha":F
    :goto_2
    const/16 v8, 0x2715

    const/4 v9, 0x1

    invoke-static {p0, v8, v9}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZ)Z

    .line 267
    sget-object v8, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->PROP_ANIMATION_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v8}, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    if-ne v8, v9, :cond_2

    .line 268
    sget-object v8, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->PROP_ANIMATION_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v9, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v8, v9}, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 258
    :cond_3
    iget-object v8, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_Paint:Landroid/graphics/Paint;

    const/16 v9, 0xff

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 259
    iget-object v8, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_BitmapPaint:Landroid/graphics/Paint;

    const/16 v9, 0xff

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 260
    const/4 v1, 0x1

    .line 261
    sget-object v8, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    iput-object v8, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_FadeInState:Lcom/oneplus/camera/OperationState;

    goto :goto_2

    .line 273
    .end local v2    # "currentTime":J
    .end local v4    # "elapsedTime":J
    :pswitch_1
    iget-object v8, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_Paint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 274
    iget-object v8, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_BitmapPaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 275
    const/4 v1, 0x1

    .line 278
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_FadeInStartTime:J

    .line 279
    sget-object v8, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    iput-object v8, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_FadeInState:Lcom/oneplus/camera/OperationState;

    .line 282
    const/16 v8, 0x2715

    const/4 v9, 0x1

    invoke-static {p0, v8, v9}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZ)Z

    goto/16 :goto_0

    .line 287
    :pswitch_2
    const/4 v1, 0x1

    .line 288
    sget-object v8, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    iput-object v8, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_FadeInState:Lcom/oneplus/camera/OperationState;

    .line 289
    invoke-direct {p0}, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->onFadeInAnimationFinished()V

    goto/16 :goto_0

    .line 294
    :cond_4
    iget-object v8, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_FadeOutState:Lcom/oneplus/camera/OperationState;

    sget-object v9, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    if-eq v8, v9, :cond_6

    .line 296
    sget-object v8, Lcom/oneplus/camera/ui/SwitchAnimationImpl$2;->$SwitchMap$com$oneplus$camera$OperationState:[I

    iget-object v9, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_FadeOutState:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v9}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_1

    goto/16 :goto_0

    .line 299
    :pswitch_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 300
    .restart local v2    # "currentTime":J
    iget-wide v8, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_FadeOutStartTime:J

    sub-long v4, v2, v8

    .line 301
    .restart local v4    # "elapsedTime":J
    const-wide/16 v8, 0xc8

    cmp-long v8, v4, v8

    if-gez v8, :cond_5

    .line 303
    const/high16 v8, 0x3f800000    # 1.0f

    long-to-float v9, v4

    const/high16 v10, 0x43480000    # 200.0f

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float v0, v8, v9

    .line 306
    .restart local v0    # "alpha":F
    iget-object v8, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_Paint:Landroid/graphics/Paint;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 307
    iget-object v8, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_BitmapPaint:Landroid/graphics/Paint;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 308
    const/4 v1, 0x1

    .line 321
    .end local v0    # "alpha":F
    :goto_3
    const/16 v8, 0x2715

    const/4 v9, 0x1

    invoke-static {p0, v8, v9}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZ)Z

    goto/16 :goto_0

    .line 314
    :cond_5
    iget-object v8, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_Paint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 315
    iget-object v8, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_BitmapPaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 316
    const/4 v1, 0x1

    .line 317
    sget-object v8, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    iput-object v8, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_FadeOutState:Lcom/oneplus/camera/OperationState;

    goto :goto_3

    .line 326
    .end local v2    # "currentTime":J
    .end local v4    # "elapsedTime":J
    :pswitch_4
    iget-object v8, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_Paint:Landroid/graphics/Paint;

    const/16 v9, 0xff

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 327
    iget-object v8, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_BitmapPaint:Landroid/graphics/Paint;

    const/16 v9, 0xff

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 328
    const/4 v1, 0x1

    .line 331
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_FadeOutStartTime:J

    .line 332
    sget-object v8, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    iput-object v8, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_FadeOutState:Lcom/oneplus/camera/OperationState;

    .line 335
    const/16 v8, 0x2715

    const/4 v9, 0x1

    invoke-static {p0, v8, v9}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZ)Z

    goto/16 :goto_0

    .line 340
    :pswitch_5
    sget-object v8, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    iput-object v8, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_FadeOutState:Lcom/oneplus/camera/OperationState;

    .line 341
    invoke-direct {p0}, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->onFadeOutAnimationFinished()V

    goto/16 :goto_0

    .line 346
    :cond_6
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 361
    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_7
    iget-object v8, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_FadeInState:Lcom/oneplus/camera/OperationState;

    sget-object v9, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne v8, v9, :cond_8

    .line 362
    iget-object v8, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_PreviewImage:Landroid/graphics/Bitmap;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_PreviewBounds:Landroid/graphics/RectF;

    const/4 v11, 0x0

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 363
    :cond_8
    iget-object v8, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_PreviewBlurImage:Landroid/graphics/Bitmap;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_PreviewBounds:Landroid/graphics/RectF;

    iget-object v11, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_BitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 366
    .end local v1    # "drawBitmap":Z
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_9
    return-void

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 296
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private startFadeInAnimation()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 416
    iget-object v1, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_CameraPreviewOverlay:Lcom/oneplus/camera/ui/CameraPreviewOverlay;

    if-nez v1, :cond_0

    .line 418
    iget-object v1, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->TAG:Ljava/lang/String;

    const-string v2, "startFadeOutAnimation() - No camera preview overlay"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :goto_0
    return v0

    .line 421
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->hasAnimation()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 423
    iget-object v1, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->TAG:Ljava/lang/String;

    const-string v2, "startFadeInAnimation() - Already has animation, skip"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->TAG:Ljava/lang/String;

    const-string v1, "startFadeInAnimation()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    sget-object v0, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    iput-object v0, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_FadeInState:Lcom/oneplus/camera/OperationState;

    .line 429
    iget-object v0, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_CameraPreviewOverlay:Lcom/oneplus/camera/ui/CameraPreviewOverlay;

    invoke-interface {v0}, Lcom/oneplus/camera/ui/CameraPreviewOverlay;->invalidateCameraPreviewOverlay()V

    .line 431
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private startFadeOutAnimation()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 438
    iget-object v1, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_CameraPreviewOverlay:Lcom/oneplus/camera/ui/CameraPreviewOverlay;

    if-nez v1, :cond_0

    .line 440
    iget-object v1, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->TAG:Ljava/lang/String;

    const-string v2, "startFadeOutAnimation() - No camera preview overlay"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    :goto_0
    return v0

    .line 443
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->hasAnimation()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 445
    iget-object v1, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->TAG:Ljava/lang/String;

    const-string v2, "startFadeOutAnimation() - Already has animation, skip"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 449
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->TAG:Ljava/lang/String;

    const-string v1, "startFadeOutAnimation()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    sget-object v0, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    iput-object v0, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_FadeOutState:Lcom/oneplus/camera/OperationState;

    .line 451
    iget-object v0, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_CameraPreviewOverlay:Lcom/oneplus/camera/ui/CameraPreviewOverlay;

    invoke-interface {v0}, Lcom/oneplus/camera/ui/CameraPreviewOverlay;->invalidateCameraPreviewOverlay()V

    .line 453
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 66
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 93
    invoke-super {p0, p1}, Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl;->handleMessage(Landroid/os/Message;)V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 69
    :sswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_CameraPreviewOverlay:Lcom/oneplus/camera/ui/CameraPreviewOverlay;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_CameraPreviewOverlay:Lcom/oneplus/camera/ui/CameraPreviewOverlay;

    invoke-interface {v0}, Lcom/oneplus/camera/ui/CameraPreviewOverlay;->invalidateCameraPreviewOverlay()V

    goto :goto_0

    .line 74
    :sswitch_1
    invoke-direct {p0}, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->hasAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->startFadeOutAnimation()Z

    goto :goto_0

    .line 81
    :sswitch_2
    sget-object v0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->PROP_ANIMATION_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_1

    .line 83
    iget-object v0, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->TAG:Ljava/lang/String;

    const-string v1, "handleMessage() - Already stopped"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->TAG:Ljava/lang/String;

    const-string v1, "handleMessage() - On animation timeout"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-direct {p0}, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->startFadeOutAnimation()Z

    goto :goto_0

    .line 66
    :sswitch_data_0
    .sparse-switch
        0x2715 -> :sswitch_0
        0x271a -> :sswitch_2
        0x2724 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onFirstPreviewFrameReceived()V
    .locals 4

    .prologue
    .line 138
    iget-object v0, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->TAG:Ljava/lang/String;

    const-string v1, "onFirstPreviewFrameReceived()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_IsFirstPreviewFrameReceived:Z

    .line 143
    invoke-direct {p0}, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->hasAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    const/16 v0, 0x2724

    const-wide/16 v2, 0x0

    invoke-static {p0, v0, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IJ)Z

    .line 147
    :goto_0
    return-void

    .line 146
    :cond_0
    const/16 v0, 0x271a

    const-wide/16 v2, 0x1388

    invoke-static {p0, v0, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IJ)Z

    goto :goto_0
.end method

.method protected onInitialize()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/high16 v3, -0x1000000

    .line 154
    invoke-super {p0}, Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl;->onInitialize()V

    .line 157
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_Paint:Landroid/graphics/Paint;

    .line 158
    iget-object v1, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 159
    iget-object v1, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 160
    iget-object v1, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_Paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 161
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_BitmapPaint:Landroid/graphics/Paint;

    .line 162
    iget-object v1, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_BitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 163
    iget-object v1, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_BitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 164
    iget-object v1, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_BitmapPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 167
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 168
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    const-class v1, Lcom/oneplus/camera/ui/CameraPreviewOverlay;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/CameraPreviewOverlay;

    iput-object v1, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_CameraPreviewOverlay:Lcom/oneplus/camera/ui/CameraPreviewOverlay;

    .line 169
    iget-object v1, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_CameraPreviewOverlay:Lcom/oneplus/camera/ui/CameraPreviewOverlay;

    if-eqz v1, :cond_1

    .line 171
    iget-object v1, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_CameraPreviewOverlay:Lcom/oneplus/camera/ui/CameraPreviewOverlay;

    new-instance v2, Lcom/oneplus/camera/ui/SwitchAnimationImpl$1;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/SwitchAnimationImpl$1;-><init>(Lcom/oneplus/camera/ui/SwitchAnimationImpl;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/ui/CameraPreviewOverlay;->addRenderer(Lcom/oneplus/camera/ui/CameraPreviewOverlay$Renderer;I)Lcom/oneplus/base/Handle;

    .line 184
    :goto_0
    const-class v1, Lcom/oneplus/camera/ui/Viewfinder;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/Viewfinder;

    iput-object v1, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    .line 185
    iget-object v1, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    if-nez v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->TAG:Ljava/lang/String;

    const-string v2, "onInitialize() - Cannot find Viewfinder component"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_0
    return-void

    .line 181
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->TAG:Ljava/lang/String;

    const-string v2, "onInitialize() - Cannot find CameraPreviewOverlay component"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onLastPreviewImageCreated([Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "image"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 195
    sget-object v0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->PROP_ANIMATION_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->TAG:Ljava/lang/String;

    const-string v1, "onLastPreviewImageCreated() - Already stopped"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :goto_0
    return-void

    .line 202
    :cond_0
    if-nez p1, :cond_1

    .line 204
    iget-object v0, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->TAG:Ljava/lang/String;

    const-string v1, "onLastPreviewImageCreated() - Image is null, reset"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->reset()V

    goto :goto_0

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->TAG:Ljava/lang/String;

    const-string v1, "onLastPreviewImageCreated()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_PreviewImage:Landroid/graphics/Bitmap;

    .line 213
    const/4 v0, 0x1

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_PreviewBlurImage:Landroid/graphics/Bitmap;

    .line 216
    invoke-direct {p0}, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->startFadeInAnimation()Z

    goto :goto_0
.end method

.method protected onReset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 373
    iget-object v0, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->TAG:Ljava/lang/String;

    const-string v1, "onReset()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const/16 v0, 0x2715

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 377
    const/16 v0, 0x271a

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 378
    const/16 v0, 0x2724

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 381
    iput-object v2, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_PreviewBlurImage:Landroid/graphics/Bitmap;

    .line 382
    iput-object v2, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_PreviewImage:Landroid/graphics/Bitmap;

    .line 383
    iput-object v2, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_PreviewBounds:Landroid/graphics/RectF;

    .line 384
    iput-object v2, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_BackgroundRectangles:Ljava/util/List;

    .line 385
    iget-object v0, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_CameraPreviewOverlay:Lcom/oneplus/camera/ui/CameraPreviewOverlay;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_CameraPreviewOverlay:Lcom/oneplus/camera/ui/CameraPreviewOverlay;

    invoke-interface {v0}, Lcom/oneplus/camera/ui/CameraPreviewOverlay;->invalidateCameraPreviewOverlay()V

    .line 389
    :cond_0
    sget-object v0, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    iput-object v0, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_FadeInState:Lcom/oneplus/camera/OperationState;

    .line 390
    sget-object v0, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    iput-object v0, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_FadeOutState:Lcom/oneplus/camera/OperationState;

    .line 391
    return-void
.end method

.method protected onStarted()V
    .locals 2

    .prologue
    .line 398
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_IsFirstPreviewFrameReceived:Z

    .line 399
    iget-object v0, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    sget-object v1, Lcom/oneplus/camera/ui/Viewfinder;->PROP_PREVIEW_BOUNDS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/ui/Viewfinder;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_PreviewBounds:Landroid/graphics/RectF;

    .line 402
    iget-object v0, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    sget-object v1, Lcom/oneplus/camera/ui/Viewfinder;->PROP_PREVIEW_CONTAINER_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/ui/Viewfinder;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    iput-object v0, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->m_PreviewContainerSize:Landroid/util/Size;

    .line 410
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->TAG:Ljava/lang/String;

    const-string v1, "start() - No viewfinder"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->reset()V

    goto :goto_0
.end method
