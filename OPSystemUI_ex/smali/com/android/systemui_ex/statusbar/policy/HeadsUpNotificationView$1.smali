.class Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView$1;
.super Ljava/lang/Object;
.source "HeadsUpNotificationView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mConsuming:Z

.field private mFirstX:F

.field private mFirstY:F

.field private final mTouchSlop:F

.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;)V
    .locals 1

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView$1;->mTouchSlop:F

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    .line 168
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 197
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView$1;->mConsuming:Z

    return v3

    .line 173
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, p0, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView$1;->mFirstX:F

    .line 174
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, p0, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView$1;->mFirstY:F

    .line 175
    iput-boolean v5, p0, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView$1;->mConsuming:Z

    goto :goto_0

    .line 181
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, p0, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView$1;->mFirstY:F

    sub-float v0, v3, v4

    .line 182
    .local v0, "dY":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v4, p0, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView$1;->mFirstX:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 183
    .local v1, "daX":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 184
    .local v2, "daY":F
    const/high16 v3, 0x40a00000    # 5.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    .line 185
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;->snooze()V
    invoke-static {v3}, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;->access$000(Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;)V

    .line 186
    iput-boolean v5, p0, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView$1;->mConsuming:Z

    goto :goto_0

    .line 194
    .end local v0    # "dY":F
    .end local v1    # "daX":F
    .end local v2    # "daY":F
    :pswitch_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView$1;->mConsuming:Z

    goto :goto_0

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
