.class Lcom/android/systemui_ex/controlpanel/OPControlPanel$7;
.super Ljava/lang/Object;
.source "OPControlPanel.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

.field final synthetic val$disAlpha:F

.field final synthetic val$disY:F

.field final synthetic val$hideBackgroundMask:Z

.field final synthetic val$startAlpha:F

.field final synthetic val$startY:F


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/controlpanel/OPControlPanel;FFZFF)V
    .locals 0

    .prologue
    .line 498
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$7;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    iput p2, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$7;->val$startY:F

    iput p3, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$7;->val$disY:F

    iput-boolean p4, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$7;->val$hideBackgroundMask:Z

    iput p5, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$7;->val$startAlpha:F

    iput p6, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$7;->val$disAlpha:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 502
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 503
    .local v0, "factor":F
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$7;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$2100(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$7;->val$startY:F

    iget v3, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$7;->val$disY:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 504
    iget-boolean v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$7;->val$hideBackgroundMask:Z

    if-eqz v1, :cond_0

    .line 505
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$7;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailPanelBackgroundMask:Landroid/view/View;
    invoke-static {v1}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$2200(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$7;->val$startY:F

    iget v3, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$7;->val$disY:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 507
    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$7;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailPanelBackgroundMask:Landroid/view/View;
    invoke-static {v1}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$2200(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$7;->val$startAlpha:F

    iget v3, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$7;->val$disAlpha:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 508
    return-void
.end method
