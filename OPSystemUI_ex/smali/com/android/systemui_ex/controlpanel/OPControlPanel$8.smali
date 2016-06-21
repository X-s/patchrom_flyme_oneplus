.class Lcom/android/systemui_ex/controlpanel/OPControlPanel$8;
.super Ljava/lang/Object;
.source "OPControlPanel.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/controlpanel/OPControlPanel;->showDetailAnimation(FFFFJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

.field final synthetic val$endY:F


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/controlpanel/OPControlPanel;F)V
    .locals 0

    .prologue
    .line 510
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$8;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    iput p2, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$8;->val$endY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$8;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0, v1}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$2402(Lcom/android/systemui_ex/controlpanel/OPControlPanel;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 533
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$8;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0, v1}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$2402(Lcom/android/systemui_ex/controlpanel/OPControlPanel;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 525
    iget v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$8;->val$endY:F

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$8;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSCloseY:F
    invoke-static {v1}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1800(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$8;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # invokes: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->onHideDetailPanel()V
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1500(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)V

    .line 528
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 537
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 514
    iget v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$8;->val$endY:F

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$8;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSOpenY:F
    invoke-static {v1}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1600(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$8;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    const/4 v1, 0x1

    # setter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mIsDetailPanelShow:Z
    invoke-static {v0, v1}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$2302(Lcom/android/systemui_ex/controlpanel/OPControlPanel;Z)Z

    .line 516
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$8;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailPanelBackgroundMask:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$2200(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$8;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSOpenY:F
    invoke-static {v1}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1600(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 517
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$8;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$2100(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 518
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$8;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailPanelBackgroundMask:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$2200(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 520
    :cond_0
    return-void
.end method
