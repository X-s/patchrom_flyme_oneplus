.class Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;
.super Ljava/lang/Object;
.source "HeadsUpNotificationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EdgeSwipeHelper"
.end annotation


# instance fields
.field private mConsuming:Z

.field private mFirstX:F

.field private mFirstY:F

.field private final mTouchSlop:F

.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;


# direct methods
.method public constructor <init>(Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;F)V
    .locals 0
    .param p2, "touchSlop"    # F

    .prologue
    .line 502
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->this$0:Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 503
    iput p2, p0, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->mTouchSlop:F

    .line 504
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 508
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 537
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->mConsuming:Z

    return v3

    .line 511
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->mFirstX:F

    .line 512
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->mFirstY:F

    .line 513
    iput-boolean v4, p0, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->mConsuming:Z

    goto :goto_0

    .line 518
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->mFirstY:F

    sub-float v0, v3, v4

    .line 519
    .local v0, "dY":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->mFirstX:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 520
    .local v1, "daX":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 521
    .local v2, "daY":F
    iget-boolean v3, p0, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->mConsuming:Z

    if-nez v3, :cond_0

    cmpg-float v3, v1, v2

    if-gez v3, :cond_0

    iget v3, p0, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->mTouchSlop:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    .line 522
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->this$0:Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;->snooze()V
    invoke-static {v3}, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;->access$000(Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;)V

    .line 523
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_1

    .line 525
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->this$0:Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;

    # getter for: Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;->mBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;
    invoke-static {v3}, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;->access$300(Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;)Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->animateExpandNotificationsPanel()V

    .line 527
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->mConsuming:Z

    goto :goto_0

    .line 534
    .end local v0    # "dY":F
    .end local v1    # "daX":F
    .end local v2    # "daY":F
    :pswitch_2
    iput-boolean v4, p0, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->mConsuming:Z

    goto :goto_0

    .line 508
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
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 542
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->mConsuming:Z

    return v0
.end method
