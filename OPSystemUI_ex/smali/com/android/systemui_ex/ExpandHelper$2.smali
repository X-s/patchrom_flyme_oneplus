.class Lcom/android/systemui_ex/ExpandHelper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ExpandHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/ExpandHelper;->finishExpanding(ZF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/ExpandHelper;

.field final synthetic val$scaledView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/ExpandHelper;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 550
    iput-object p1, p0, Lcom/android/systemui_ex/ExpandHelper$2;->this$0:Lcom/android/systemui_ex/ExpandHelper;

    iput-object p2, p0, Lcom/android/systemui_ex/ExpandHelper$2;->val$scaledView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/systemui_ex/ExpandHelper$2;->this$0:Lcom/android/systemui_ex/ExpandHelper;

    # getter for: Lcom/android/systemui_ex/ExpandHelper;->mCallback:Lcom/android/systemui_ex/ExpandHelper$Callback;
    invoke-static {v0}, Lcom/android/systemui_ex/ExpandHelper;->access$400(Lcom/android/systemui_ex/ExpandHelper;)Lcom/android/systemui_ex/ExpandHelper$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/ExpandHelper$2;->val$scaledView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/systemui_ex/ExpandHelper$Callback;->setUserLockedChild(Landroid/view/View;Z)V

    .line 554
    iget-object v0, p0, Lcom/android/systemui_ex/ExpandHelper$2;->this$0:Lcom/android/systemui_ex/ExpandHelper;

    # getter for: Lcom/android/systemui_ex/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/systemui_ex/ExpandHelper;->access$500(Lcom/android/systemui_ex/ExpandHelper;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 555
    return-void
.end method
