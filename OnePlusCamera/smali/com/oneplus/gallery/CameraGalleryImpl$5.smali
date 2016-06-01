.class Lcom/oneplus/gallery/CameraGalleryImpl$5;
.super Lcom/oneplus/camera/ui/BaseGestureHandler;
.source "CameraGalleryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/CameraGalleryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private m_IsAcceptScrolling:Ljava/lang/Boolean;

.field m_IsFling:Z

.field final synthetic this$0:Lcom/oneplus/gallery/CameraGalleryImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-direct {p0}, Lcom/oneplus/camera/ui/BaseGestureHandler;-><init>()V

    return-void
.end method

.method private checkIsAcceptScrolling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 323
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-virtual {v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 324
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    sget-object v5, Lcom/oneplus/gallery/CameraGalleryImpl$26;->$SwitchMap$com$oneplus$camera$PhotoCaptureState:[I

    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v4}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_0

    .line 331
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$300(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "checkIsAcceptScrolling() - capturing"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->m_IsAcceptScrolling:Ljava/lang/Boolean;

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 336
    :pswitch_0
    sget-object v5, Lcom/oneplus/gallery/CameraGalleryImpl$26;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v4}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_1

    .line 343
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$400(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "checkIsAcceptScrolling() - capturing"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->m_IsAcceptScrolling:Ljava/lang/Boolean;

    goto :goto_0

    .line 349
    :pswitch_1
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->m_IsAcceptScrolling:Ljava/lang/Boolean;

    if-nez v4, :cond_0

    .line 351
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float v1, v4, v5

    .line 352
    .local v1, "diffX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float v2, v4, v5

    .line 353
    .local v2, "diffY":F
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    sget-object v5, Lcom/oneplus/camera/ui/CameraGallery;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v5}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/ui/CameraGallery$UIState;

    .line 354
    .local v3, "uiState":Lcom/oneplus/camera/ui/CameraGallery$UIState;
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->m_IsAcceptScrolling:Ljava/lang/Boolean;

    .line 355
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ne v4, v7, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-eq v4, v7, :cond_2

    .line 357
    :cond_1
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$500(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "checkIsAcceptScrolling() - Multi touch"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 360
    :cond_2
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$600(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkIsAcceptScrolling() - DiffX: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", diffY: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    sget-object v4, Lcom/oneplus/gallery/CameraGalleryImpl$26;->$SwitchMap$com$oneplus$base$Rotation:[I

    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->getRotation()Lcom/oneplus/base/Rotation;
    invoke-static {v5}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$700(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/Rotation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_2

    goto/16 :goto_0

    .line 365
    :pswitch_2
    sget-object v4, Lcom/oneplus/camera/ui/CameraGallery$UIState;->CLOSED:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    if-ne v3, v4, :cond_3

    cmpg-float v4, v1, v8

    if-gez v4, :cond_3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 366
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->m_IsAcceptScrolling:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 367
    :cond_3
    sget-object v4, Lcom/oneplus/camera/ui/CameraGallery$UIState;->OPENED:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    if-ne v3, v4, :cond_0

    cmpl-float v4, v1, v8

    if-lez v4, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 368
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->m_IsAcceptScrolling:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 371
    :pswitch_3
    sget-object v4, Lcom/oneplus/camera/ui/CameraGallery$UIState;->CLOSED:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    if-ne v3, v4, :cond_4

    cmpl-float v4, v1, v8

    if-lez v4, :cond_4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    .line 372
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->m_IsAcceptScrolling:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 373
    :cond_4
    sget-object v4, Lcom/oneplus/camera/ui/CameraGallery$UIState;->OPENED:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    if-ne v3, v4, :cond_0

    cmpg-float v4, v1, v8

    if-gez v4, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 374
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->m_IsAcceptScrolling:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 377
    :pswitch_4
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$800(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "checkIsAcceptScrolling() - Inverse portrait is not supported"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 324
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 336
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 361
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v9, 0x1

    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 386
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$900(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "onFling() - E1: "

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v0

    const-string v6, ", E2: "

    aput-object v6, v5, v9

    const/4 v6, 0x2

    aput-object p2, v5, v6

    const/4 v6, 0x3

    const-string v7, ", vX: "

    aput-object v7, v5, v6

    const/4 v6, 0x4

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, ", vy: "

    aput-object v7, v5, v6

    const/4 v6, 0x6

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 387
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->m_IsAcceptScrolling:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 419
    :cond_0
    :goto_0
    return v0

    .line 389
    :cond_1
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/camera/media/MediaList;
    invoke-static {v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$1000(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/camera/media/MediaList;

    move-result-object v3

    invoke-interface {v3}, Lcom/oneplus/camera/media/MediaList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 391
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->m_IsAcceptScrolling:Ljava/lang/Boolean;

    .line 392
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float v1, v3, v4

    .line 393
    .local v1, "diffX":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x43480000    # 200.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 394
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-virtual {v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    const v4, 0x7f09004f

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/CameraActivity;->showToast(I)V

    goto :goto_0

    .line 397
    .end local v1    # "diffX":F
    :cond_2
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->getHideTranslationX()F
    invoke-static {v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$1100(Lcom/oneplus/gallery/CameraGalleryImpl;)F

    move-result v2

    .line 398
    .local v2, "hideTranslationX":F
    const/4 v0, 0x0

    .line 399
    .local v0, "consumed":Z
    sget-object v3, Lcom/oneplus/gallery/CameraGalleryImpl$26;->$SwitchMap$com$oneplus$camera$ui$CameraGallery$UIState:[I

    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_UIStateOnDraggingStart:Lcom/oneplus/camera/ui/CameraGallery$UIState;
    invoke-static {v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$1200(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/camera/ui/CameraGallery$UIState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/camera/ui/CameraGallery$UIState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 418
    :cond_3
    :goto_1
    iput-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->m_IsFling:Z

    goto :goto_0

    .line 402
    :pswitch_0
    cmpl-float v3, v2, v8

    if-lez v3, :cond_4

    cmpg-float v3, p3, v8

    if-ltz v3, :cond_5

    :cond_4
    cmpg-float v3, v2, v8

    if-gez v3, :cond_3

    cmpl-float v3, p3, v8

    if-lez v3, :cond_3

    .line 405
    :cond_5
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->openFilmstrip()V
    invoke-static {v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$1300(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    .line 406
    const/4 v0, 0x1

    goto :goto_1

    .line 410
    :pswitch_1
    cmpl-float v3, v2, v8

    if-lez v3, :cond_6

    cmpl-float v3, p3, v8

    if-gtz v3, :cond_7

    :cond_6
    cmpg-float v3, v2, v8

    if-gez v3, :cond_3

    cmpg-float v3, p3, v8

    if-gez v3, :cond_3

    .line 413
    :cond_7
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->closeFilmstrip(Z)V
    invoke-static {v3, v9}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$1400(Lcom/oneplus/gallery/CameraGalleryImpl;Z)V

    .line 414
    const/4 v0, 0x1

    goto :goto_1

    .line 399
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onGestureEnd(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 425
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$1500(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onGestureEnd"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->m_IsAcceptScrolling:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->m_IsAcceptScrolling:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->m_IsFling:Z

    if-nez v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->onFilmstripDraggingEnd()V
    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$1600(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$UIState;->OPENED:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    if-ne v0, v1, :cond_0

    .line 432
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->resetFilmstripOverScrollState()V
    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$1700(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    goto :goto_0
.end method

.method public onGestureStart(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 439
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$1800(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onGestureStart"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->m_IsAcceptScrolling:Ljava/lang/Boolean;

    .line 443
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->m_IsFling:Z

    .line 444
    const/4 v0, 0x1

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 454
    const/4 v0, 0x0

    .line 455
    .local v0, "consumed":Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    sub-float v1, v7, v8

    .line 456
    .local v1, "diffX":F
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    sget-object v8, Lcom/oneplus/camera/ui/CameraGallery;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v7, v8}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/camera/ui/CameraGallery$UIState;

    .line 457
    .local v5, "state":Lcom/oneplus/camera/ui/CameraGallery$UIState;
    sget-object v7, Lcom/oneplus/gallery/CameraGalleryImpl$26;->$SwitchMap$com$oneplus$camera$ui$CameraGallery$UIState:[I

    invoke-virtual {v5}, Lcom/oneplus/camera/ui/CameraGallery$UIState;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 506
    :cond_0
    :goto_0
    return v0

    .line 462
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/CameraGalleryImpl$5;->checkIsAcceptScrolling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 463
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->m_IsAcceptScrolling:Ljava/lang/Boolean;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->m_IsAcceptScrolling:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 465
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/camera/media/MediaList;
    invoke-static {v7}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$1000(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/camera/media/MediaList;

    move-result-object v7

    invoke-interface {v7}, Lcom/oneplus/camera/media/MediaList;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 467
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v8, 0x43480000    # 200.0f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    .line 469
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->m_IsAcceptScrolling:Ljava/lang/Boolean;

    .line 470
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-virtual {v7}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v7

    const v8, 0x7f09004f

    invoke-virtual {v7, v8}, Lcom/oneplus/camera/CameraActivity;->showToast(I)V

    goto :goto_0

    .line 473
    :cond_1
    const/4 v0, 0x1

    .line 474
    goto :goto_0

    .line 476
    :cond_2
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;
    invoke-static {v7}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$1900(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/widget/FilmstripView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oneplus/widget/FilmstripView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 477
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    iget-object v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;
    invoke-static {v8}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$1900(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/widget/FilmstripView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oneplus/widget/FilmstripView;->getTranslationX()F

    move-result v8

    # setter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_InitTouchPagerX:F
    invoke-static {v7, v8}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$2002(Lcom/oneplus/gallery/CameraGalleryImpl;F)F

    .line 478
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->onFilmstripDraggingStart()V
    invoke-static {v7}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$2100(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    .line 479
    const/4 v0, 0x1

    goto :goto_0

    .line 484
    :cond_3
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    sget-object v8, Lcom/oneplus/camera/ui/CameraGallery;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v7, v8}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lcom/oneplus/camera/ui/CameraGallery$UIState;->OPENED:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    if-ne v7, v8, :cond_0

    .line 486
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->resetFilmstripOverScrollState()V
    invoke-static {v7}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$1700(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    .line 487
    const/4 v0, 0x1

    goto :goto_0

    .line 493
    :pswitch_1
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_InitTouchPagerX:F
    invoke-static {v7}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$2000(Lcom/oneplus/gallery/CameraGalleryImpl;)F

    move-result v7

    add-float v4, v7, v1

    .line 494
    .local v4, "newX":F
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->getTranslationXRange()Landroid/util/Range;
    invoke-static {v7}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$2200(Lcom/oneplus/gallery/CameraGalleryImpl;)Landroid/util/Range;

    move-result-object v6

    .line 495
    .local v6, "translationXRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->getHideTranslationX()F
    invoke-static {v7}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$1100(Lcom/oneplus/gallery/CameraGalleryImpl;)F

    move-result v2

    .line 496
    .local v2, "hideTranslationX":F
    invoke-virtual {v6}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    cmpg-float v7, v4, v7

    if-gez v7, :cond_5

    .line 497
    invoke-virtual {v6}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 500
    :cond_4
    :goto_1
    sub-float v7, v4, v2

    div-float/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 502
    .local v3, "newAlpha":F
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl$5;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    const/4 v8, 0x0

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->onFilmstripDraggingUpdate(FFF)V
    invoke-static {v7, v4, v8, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$2300(Lcom/oneplus/gallery/CameraGalleryImpl;FFF)V

    .line 503
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 498
    .end local v3    # "newAlpha":F
    :cond_5
    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    cmpl-float v7, v4, v7

    if-lez v7, :cond_4

    .line 499
    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v4

    goto :goto_1

    .line 457
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
