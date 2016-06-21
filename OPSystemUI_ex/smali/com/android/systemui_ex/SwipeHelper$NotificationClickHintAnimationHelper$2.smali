.class Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper$2;
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
    .line 383
    iput-object p1, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper$2;->this$1:Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;

    iput-object p2, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper$2;->val$this$0:Lcom/android/systemui_ex/SwipeHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper$2;->this$1:Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;

    iget-object v1, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper$2;->this$1:Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;

    # getter for: Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->animView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->access$800(Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;)Landroid/view/View;

    move-result-object v1

    # invokes: Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->setUpNotificationSwipeHelperWhenStartingKeyguardHint(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->access$1100(Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;Landroid/view/View;)V

    .line 386
    return-void
.end method
