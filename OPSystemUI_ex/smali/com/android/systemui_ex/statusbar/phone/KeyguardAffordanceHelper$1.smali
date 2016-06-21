.class Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardAffordanceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$1;->this$0:Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$1;->this$0:Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->access$002(Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 101
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$1;->this$0:Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;

    const/4 v1, 0x0

    # invokes: Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->setSwipingInProgress(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->access$100(Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;Z)V

    .line 102
    return-void
.end method
