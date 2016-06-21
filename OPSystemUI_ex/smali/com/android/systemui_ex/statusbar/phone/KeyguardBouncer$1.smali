.class Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer$1;
.super Ljava/lang/Object;
.source "KeyguardBouncer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer$1;->this$0:Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 93
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer$1;->this$0:Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->access$000(Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer$1;->this$0:Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->access$000(Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 96
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer$1;->this$0:Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->access$000(Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 101
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer$1;->this$0:Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->access$100(Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;)Lcom/android/keyguard/KeyguardViewBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewBase;->onResume()V

    .line 102
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer$1;->this$0:Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->access$100(Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;)Lcom/android/keyguard/KeyguardViewBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewBase;->startAppearAnimation()V

    .line 103
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer$1;->this$0:Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;

    # setter for: Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z
    invoke-static {v0, v4}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->access$202(Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;Z)Z

    .line 104
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer$1;->this$0:Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->access$100(Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;)Lcom/android/keyguard/KeyguardViewBase;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardViewBase;->sendAccessibilityEvent(I)V

    .line 105
    return-void
.end method
