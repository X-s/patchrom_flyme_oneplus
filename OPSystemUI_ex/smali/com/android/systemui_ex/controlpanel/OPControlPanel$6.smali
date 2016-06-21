.class Lcom/android/systemui_ex/controlpanel/OPControlPanel$6;
.super Ljava/lang/Object;
.source "OPControlPanel.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/controlpanel/OPControlPanel;->drawerAnimation(FFFFFJ)V
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
    .line 451
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$6;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    iput p2, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$6;->val$endY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$6;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0, v1}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$402(Lcom/android/systemui_ex/controlpanel/OPControlPanel;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 466
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$6;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0, v1}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$402(Lcom/android/systemui_ex/controlpanel/OPControlPanel;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 460
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$6;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    iget v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$6;->val$endY:F

    # invokes: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->updateStatus(F)V
    invoke-static {v0, v1}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1700(Lcom/android/systemui_ex/controlpanel/OPControlPanel;F)V

    .line 461
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 470
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 455
    return-void
.end method
