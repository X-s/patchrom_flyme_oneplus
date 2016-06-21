.class Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;-><init>(Lcom/android/systemui_ex/SwipeHelper;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;

.field final synthetic val$this$0:Lcom/android/systemui_ex/SwipeHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;Lcom/android/systemui_ex/SwipeHelper;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper$1;->this$1:Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;

    iput-object p2, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper$1;->val$this$0:Lcom/android/systemui_ex/SwipeHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper$1;->this$1:Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;

    # getter for: Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->isHintAnimationRunningInterrupted:Z
    invoke-static {v0}, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->access$700(Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    const-string v0, "com.android.systemui.SwipeHelper"

    const-string v1, "current running animation is interrupted by another notification click, this time no hide operation is taken"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :goto_0
    iget-object v0, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper$1;->this$1:Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->isHintAnimationRunningInterrupted:Z
    invoke-static {v0, v1}, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->access$702(Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;Z)Z

    .line 366
    iget-object v0, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper$1;->this$1:Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;

    # invokes: Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->clearHostedFields()V
    invoke-static {v0}, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->access$1000(Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;)V

    .line 367
    return-void

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper$1;->this$1:Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->this$0:Lcom/android/systemui_ex/SwipeHelper;

    iget-object v1, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper$1;->this$1:Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;

    # getter for: Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->animView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->access$800(Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;)Landroid/view/View;

    move-result-object v1

    # invokes: Lcom/android/systemui_ex/SwipeHelper;->hideNotificationSwipeBackground(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/android/systemui_ex/SwipeHelper;->access$900(Lcom/android/systemui_ex/SwipeHelper;Landroid/view/View;)V

    goto :goto_0
.end method
