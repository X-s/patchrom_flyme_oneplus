.class Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$4;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->startClockAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;)V
    .locals 0

    .prologue
    .line 493
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$4;->this$0:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 496
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$4;->this$0:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 497
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$4;->this$0:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mClockAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->access$400(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$4;->this$0:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mClockAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->access$400(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 499
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$4;->this$0:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mClockAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->access$400(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$4;->this$0:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$4;->this$0:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;
    invoke-static {v1}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->access$500(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;)Lcom/android/keyguard/KeyguardStatusView;

    move-result-object v1

    sget-object v2, Landroid/view/View;->Y:Landroid/util/Property;

    new-array v3, v6, [F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$4;->this$0:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mClockAnimationTarget:I
    invoke-static {v5}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->access$600(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;)I

    move-result v5

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    # setter for: Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mClockAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->access$402(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 503
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$4;->this$0:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mClockAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->access$400(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$4;->this$0:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v1}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->access$700(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 504
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$4;->this$0:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mClockAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->access$400(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x168

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 505
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$4;->this$0:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mClockAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->access$400(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$4$1;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$4$1;-><init>(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$4;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 512
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$4;->this$0:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mClockAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->access$400(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 513
    return v6
.end method
