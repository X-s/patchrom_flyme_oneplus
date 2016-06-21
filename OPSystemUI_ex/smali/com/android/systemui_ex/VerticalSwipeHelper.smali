.class public Lcom/android/systemui_ex/VerticalSwipeHelper;
.super Ljava/lang/Object;
.source "VerticalSwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/VerticalSwipeHelper$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/systemui_ex/VerticalSwipeHelper$Callback;

.field private mDragging:Z

.field private mInitialTouchPosX:F

.field private mInitialTouchPosY:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui_ex/VerticalSwipeHelper$Callback;Landroid/content/Context;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui_ex/VerticalSwipeHelper$Callback;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/VerticalSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 21
    iput-object p1, p0, Lcom/android/systemui_ex/VerticalSwipeHelper;->mCallback:Lcom/android/systemui_ex/VerticalSwipeHelper$Callback;

    .line 22
    return-void
.end method

.method private getPosX(Landroid/view/MotionEvent;)F
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    return v0
.end method

.method private getPosY(Landroid/view/MotionEvent;)F
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    return v0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 45
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 62
    :cond_0
    :goto_0
    return v2

    .line 47
    :pswitch_0
    iput-boolean v2, p0, Lcom/android/systemui_ex/VerticalSwipeHelper;->mDragging:Z

    .line 48
    iget-object v3, p0, Lcom/android/systemui_ex/VerticalSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/VerticalSwipeHelper;->getPosY(Landroid/view/MotionEvent;)F

    move-result v3

    iput v3, p0, Lcom/android/systemui_ex/VerticalSwipeHelper;->mInitialTouchPosY:F

    .line 50
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/VerticalSwipeHelper;->getPosX(Landroid/view/MotionEvent;)F

    move-result v3

    iput v3, p0, Lcom/android/systemui_ex/VerticalSwipeHelper;->mInitialTouchPosX:F

    goto :goto_0

    .line 53
    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui_ex/VerticalSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 57
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/systemui_ex/VerticalSwipeHelper;->mDragging:Z

    .line 58
    .local v1, "captured":Z
    iput-boolean v2, p0, Lcom/android/systemui_ex/VerticalSwipeHelper;->mDragging:Z

    .line 59
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    .line 67
    iget-object v8, p0, Lcom/android/systemui_ex/VerticalSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 69
    .local v1, "action":I
    packed-switch v1, :pswitch_data_0

    .line 92
    :cond_0
    :goto_0
    :pswitch_0
    return v7

    .line 74
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/VerticalSwipeHelper;->getPosY(Landroid/view/MotionEvent;)F

    move-result v8

    iget v9, p0, Lcom/android/systemui_ex/VerticalSwipeHelper;->mInitialTouchPosY:F

    sub-float v3, v8, v9

    .line 75
    .local v3, "deltaY":F
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/VerticalSwipeHelper;->getPosX(Landroid/view/MotionEvent;)F

    move-result v8

    iget v9, p0, Lcom/android/systemui_ex/VerticalSwipeHelper;->mInitialTouchPosX:F

    sub-float v2, v8, v9

    .line 76
    .local v2, "deltaX":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 77
    .local v0, "absDeltaY":F
    const/high16 v6, 0x42c80000    # 100.0f

    .line 78
    .local v6, "ySlop":F
    const/high16 v8, 0x42c80000    # 100.0f

    cmpl-float v8, v0, v8

    if-ltz v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui_ex/VerticalSwipeHelper;->mCallback:Lcom/android/systemui_ex/VerticalSwipeHelper$Callback;

    invoke-interface {v8}, Lcom/android/systemui_ex/VerticalSwipeHelper$Callback;->isDraggingNotificationCenter()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v8, v0, v8

    if-lez v8, :cond_0

    .line 79
    cmpl-float v8, v3, v10

    if-lez v8, :cond_3

    move v4, v7

    .line 80
    .local v4, "isMovingDown":Z
    :goto_1
    if-eqz v4, :cond_1

    iget-object v8, p0, Lcom/android/systemui_ex/VerticalSwipeHelper;->mCallback:Lcom/android/systemui_ex/VerticalSwipeHelper$Callback;

    invoke-interface {v8}, Lcom/android/systemui_ex/VerticalSwipeHelper$Callback;->isReachingStackHeadToEnableSingleHandNotification()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 81
    iget-object v8, p0, Lcom/android/systemui_ex/VerticalSwipeHelper;->mCallback:Lcom/android/systemui_ex/VerticalSwipeHelper$Callback;

    invoke-interface {v8}, Lcom/android/systemui_ex/VerticalSwipeHelper$Callback;->onSingleHandEnabled()V

    .line 83
    :cond_1
    cmpg-float v8, v3, v10

    if-gez v8, :cond_2

    move v5, v7

    .line 84
    .local v5, "isMovingUp":Z
    :cond_2
    if-eqz v5, :cond_0

    .line 85
    iget-object v8, p0, Lcom/android/systemui_ex/VerticalSwipeHelper;->mCallback:Lcom/android/systemui_ex/VerticalSwipeHelper$Callback;

    invoke-interface {v8}, Lcom/android/systemui_ex/VerticalSwipeHelper$Callback;->onSingleHandDisabled()V

    goto :goto_0

    .end local v4    # "isMovingDown":Z
    .end local v5    # "isMovingUp":Z
    :cond_3
    move v4, v5

    .line 79
    goto :goto_1

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
