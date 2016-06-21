.class Lcom/android/systemui_ex/statusbar/phone/PanelView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/phone/PanelView;->fling(FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/phone/PanelView;

.field final synthetic val$clearAllExpandHack:Z

.field final synthetic val$expand:Z


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/phone/PanelView;ZZ)V
    .locals 0

    .prologue
    .line 837
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView$6;->this$0:Lcom/android/systemui_ex/statusbar/phone/PanelView;

    iput-boolean p2, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView$6;->val$expand:Z

    iput-boolean p3, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView$6;->val$clearAllExpandHack:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 851
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView$6;->mCancelled:Z

    .line 852
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 859
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView$6;->this$0:Lcom/android/systemui_ex/statusbar/phone/PanelView;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui_ex/statusbar/phone/PanelView;->mFlingToExpand:Z
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->access$402(Lcom/android/systemui_ex/statusbar/phone/PanelView;Z)Z

    .line 861
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView$6;->val$clearAllExpandHack:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView$6;->mCancelled:Z

    if-nez v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView$6;->this$0:Lcom/android/systemui_ex/statusbar/phone/PanelView;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView$6;->this$0:Lcom/android/systemui_ex/statusbar/phone/PanelView;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->setExpandedHeightInternal(F)V

    .line 864
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView$6;->this$0:Lcom/android/systemui_ex/statusbar/phone/PanelView;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui_ex/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->access$502(Lcom/android/systemui_ex/statusbar/phone/PanelView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 865
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView$6;->mCancelled:Z

    if-nez v0, :cond_1

    .line 866
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView$6;->this$0:Lcom/android/systemui_ex/statusbar/phone/PanelView;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/PanelView;->notifyExpandingFinished()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->access$600(Lcom/android/systemui_ex/statusbar/phone/PanelView;)V

    .line 868
    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 843
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView$6;->val$expand:Z

    if-nez v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView$6;->this$0:Lcom/android/systemui_ex/statusbar/phone/PanelView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->cancelSingleHandModeWhenFling()V

    .line 846
    :cond_0
    return-void
.end method
