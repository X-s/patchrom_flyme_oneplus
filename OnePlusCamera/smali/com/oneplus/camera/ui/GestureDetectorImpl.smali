.class public Lcom/oneplus/camera/ui/GestureDetectorImpl;
.super Lcom/oneplus/camera/UIComponent;
.source "GestureDetectorImpl.java"

# interfaces
.implements Lcom/oneplus/camera/ui/GestureDetector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/GestureDetectorImpl$3;,
        Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;,
        Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureSlide;
    }
.end annotation


# static fields
.field private static final THRESHOLD_SLIDE_DISTANCE:I = 0xc8

.field private static final THRESHOLD_SLIDE_TIME_MILLIS:J = 0x320L


# instance fields
.field private m_GestureDetector:Landroid/view/GestureDetector;

.field private m_GestureHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_GestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private m_HasMultiPointers:Z


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 215
    const-string v0, "Gesture Detector Impl"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl;->m_GestureHandles:Ljava/util/List;

    .line 33
    new-instance v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/GestureDetectorImpl$1;-><init>(Lcom/oneplus/camera/ui/GestureDetectorImpl;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl;->m_GestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 216
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Lcom/oneplus/base/Rotation;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/GestureDetectorImpl;

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->getCameraActivityRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Lcom/oneplus/base/Rotation;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/GestureDetectorImpl;

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Lcom/oneplus/base/Rotation;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/GestureDetectorImpl;

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->getCameraActivityRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Lcom/oneplus/base/Rotation;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/GestureDetectorImpl;

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/GestureDetectorImpl;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl;->m_HasMultiPointers:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Lcom/oneplus/base/Rotation;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/GestureDetectorImpl;

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->getCameraActivityRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Lcom/oneplus/base/Rotation;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/GestureDetectorImpl;

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/oneplus/camera/ui/GestureDetectorImpl;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/GestureDetectorImpl;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->handleTouchEventInternal(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/camera/ui/GestureDetectorImpl;Landroid/view/MotionEvent;Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/GestureDetectorImpl;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # Lcom/oneplus/base/Rotation;
    .param p3, "x3"    # Lcom/oneplus/base/Rotation;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->rotateMotionEvent(Landroid/view/MotionEvent;Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/GestureDetectorImpl;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl;->m_GestureHandles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Lcom/oneplus/base/Rotation;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/GestureDetectorImpl;

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->getCameraActivityRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Lcom/oneplus/base/Rotation;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/GestureDetectorImpl;

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/camera/ui/GestureDetectorImpl;FFLcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)F
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/GestureDetectorImpl;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # Lcom/oneplus/base/Rotation;
    .param p4, "x4"    # Lcom/oneplus/base/Rotation;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->rotateDistanceX(FFLcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)F

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/oneplus/camera/ui/GestureDetectorImpl;FFLcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)F
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/GestureDetectorImpl;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # Lcom/oneplus/base/Rotation;
    .param p4, "x4"    # Lcom/oneplus/base/Rotation;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->rotateDistanceY(FFLcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)F

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Lcom/oneplus/base/Rotation;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/GestureDetectorImpl;

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->getCameraActivityRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Lcom/oneplus/base/Rotation;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/GestureDetectorImpl;

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    return-object v0
.end method

.method private handleTouchEventInternal(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 260
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 261
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl;->m_HasMultiPointers:Z

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl;->m_GestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 263
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v2, :cond_1

    .line 264
    iput-boolean v2, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl;->m_HasMultiPointers:Z

    .line 265
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 273
    :cond_2
    :pswitch_0
    return-void

    .line 269
    :pswitch_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl;->m_GestureHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 270
    iget-object v1, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl;->m_GestureHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;

    iget-object v1, v1, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;->handler:Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;

    invoke-interface {v1, p1}, Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;->onGestureEnd(Landroid/view/MotionEvent;)V

    .line 269
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private rotateDistanceX(FFLcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)F
    .locals 3
    .param p1, "distanceX"    # F
    .param p2, "distanceY"    # F
    .param p3, "activityRotation"    # Lcom/oneplus/base/Rotation;
    .param p4, "rotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    .line 302
    invoke-virtual {p4}, Lcom/oneplus/base/Rotation;->getDeviceOrientation()I

    move-result v1

    invoke-virtual {p3}, Lcom/oneplus/base/Rotation;->getDeviceOrientation()I

    move-result v2

    sub-int v0, v1, v2

    .line 303
    .local v0, "diff":I
    if-gez v0, :cond_0

    .line 304
    add-int/lit16 v0, v0, 0x168

    .line 305
    :cond_0
    sparse-switch v0, :sswitch_data_0

    move p2, p1

    .line 314
    .end local p2    # "distanceY":F
    :goto_0
    :sswitch_0
    return p2

    .line 308
    .restart local p2    # "distanceY":F
    :sswitch_1
    neg-float p2, p2

    goto :goto_0

    .line 312
    :sswitch_2
    neg-float p2, p1

    goto :goto_0

    .line 305
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method private rotateDistanceY(FFLcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)F
    .locals 3
    .param p1, "distanceX"    # F
    .param p2, "distanceY"    # F
    .param p3, "activityRotation"    # Lcom/oneplus/base/Rotation;
    .param p4, "rotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    .line 319
    invoke-virtual {p4}, Lcom/oneplus/base/Rotation;->getDeviceOrientation()I

    move-result v1

    invoke-virtual {p3}, Lcom/oneplus/base/Rotation;->getDeviceOrientation()I

    move-result v2

    sub-int v0, v1, v2

    .line 320
    .local v0, "diff":I
    if-gez v0, :cond_0

    .line 321
    add-int/lit16 v0, v0, 0x168

    .line 322
    :cond_0
    sparse-switch v0, :sswitch_data_0

    move p1, p2

    .line 331
    .end local p1    # "distanceX":F
    :goto_0
    :sswitch_0
    return p1

    .line 327
    .restart local p1    # "distanceX":F
    :sswitch_1
    neg-float p1, p1

    goto :goto_0

    .line 329
    :sswitch_2
    neg-float p1, p2

    goto :goto_0

    .line 322
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method private rotateMotionEvent(Landroid/view/MotionEvent;Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "activityRotation"    # Lcom/oneplus/base/Rotation;
    .param p3, "rotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    .line 339
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    .line 340
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 341
    .local v3, "y":F
    invoke-virtual {p3}, Lcom/oneplus/base/Rotation;->getDeviceOrientation()I

    move-result v4

    invoke-virtual {p2}, Lcom/oneplus/base/Rotation;->getDeviceOrientation()I

    move-result v5

    sub-int v0, v4, v5

    .line 342
    .local v0, "diff":I
    if-gez v0, :cond_0

    .line 343
    add-int/lit16 v0, v0, 0x168

    .line 344
    :cond_0
    sparse-switch v0, :sswitch_data_0

    .line 365
    :goto_0
    return-void

    .line 348
    :sswitch_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->getScreenSize()Lcom/oneplus/base/ScreenSize;

    move-result-object v1

    .line 349
    .local v1, "screenSize":Lcom/oneplus/base/ScreenSize;
    invoke-virtual {v1}, Lcom/oneplus/base/ScreenSize;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v3

    invoke-virtual {p1, v4, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 354
    .end local v1    # "screenSize":Lcom/oneplus/base/ScreenSize;
    :sswitch_1
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->getScreenSize()Lcom/oneplus/base/ScreenSize;

    move-result-object v1

    .line 355
    .restart local v1    # "screenSize":Lcom/oneplus/base/ScreenSize;
    invoke-virtual {v1}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 360
    .end local v1    # "screenSize":Lcom/oneplus/base/ScreenSize;
    :sswitch_2
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->getScreenSize()Lcom/oneplus/base/ScreenSize;

    move-result-object v1

    .line 361
    .restart local v1    # "screenSize":Lcom/oneplus/base/ScreenSize;
    invoke-virtual {v1}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v2

    invoke-virtual {v1}, Lcom/oneplus/base/ScreenSize;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v3

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 344
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->verifyAccess()V

    .line 252
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 253
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->handleTouchEventInternal(Landroid/view/MotionEvent;)V

    .line 254
    return-void
.end method

.method protected onInitialize()V
    .locals 3

    .prologue
    .line 281
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onInitialize()V

    .line 284
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 285
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl;->m_GestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v1, v0, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl;->m_GestureDetector:Landroid/view/GestureDetector;

    .line 288
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->EVENT_TOUCH:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/ui/GestureDetectorImpl$2;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/GestureDetectorImpl$2;-><init>(Lcom/oneplus/camera/ui/GestureDetectorImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 296
    return-void
.end method

.method public setGestureHandler(Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;I)Lcom/oneplus/base/Handle;
    .locals 4
    .param p1, "handler"    # Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;
    .param p2, "flags"    # I

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->verifyAccess()V

    .line 227
    const/4 v1, 0x0

    .line 228
    .local v1, "handle":Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;
    iget-object v3, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl;->m_GestureHandles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;

    .line 230
    .local v0, "h":Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;
    iget-object v3, v0, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;->handler:Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;

    if-ne p1, v3, :cond_0

    .line 232
    move-object v1, v0

    .line 236
    .end local v0    # "h":Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;
    :cond_1
    if-eqz v1, :cond_2

    .line 237
    iget-object v3, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl;->m_GestureHandles:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 238
    :cond_2
    new-instance v1, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;

    .end local v1    # "handle":Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;
    invoke-direct {v1, p0, p1, p2}, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;-><init>(Lcom/oneplus/camera/ui/GestureDetectorImpl;Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;I)V

    .line 239
    .restart local v1    # "handle":Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;
    iget-object v3, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl;->m_GestureHandles:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    return-object v1
.end method
