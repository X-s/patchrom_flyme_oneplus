.class Lcom/android/systemui_ex/statusbar/ActivatableNotificationView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ActivatableNotificationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->startAppearAnimation(ZFJJLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mWasCancelled:Z

.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;

.field final synthetic val$onFinishedRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 616
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView$5;->this$0:Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;

    iput-object p2, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView$5;->val$onFinishedRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 638
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView$5;->mWasCancelled:Z

    .line 639
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView$5;->val$onFinishedRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView$5;->val$onFinishedRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 624
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView$5;->mWasCancelled:Z

    if-nez v0, :cond_1

    .line 625
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView$5;->this$0:Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;

    const/high16 v1, -0x40800000    # -1.0f

    # setter for: Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->access$102(Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;F)F

    .line 626
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView$5;->this$0:Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->setOutlineRect(Landroid/graphics/RectF;)V

    .line 627
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView$5;->this$0:Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;

    const/4 v1, 0x0

    # invokes: Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->enableAppearDrawing(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->access$400(Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;Z)V

    .line 629
    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 633
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView$5;->mWasCancelled:Z

    .line 634
    return-void
.end method
