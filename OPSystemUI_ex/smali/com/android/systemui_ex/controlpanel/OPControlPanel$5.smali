.class Lcom/android/systemui_ex/controlpanel/OPControlPanel$5;
.super Ljava/lang/Object;
.source "OPControlPanel.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

.field final synthetic val$disAlpha:F

.field final synthetic val$disY:F

.field final synthetic val$startAlpha:F

.field final synthetic val$startY:F


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/controlpanel/OPControlPanel;FFFF)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$5;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    iput p2, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$5;->val$startY:F

    iput p3, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$5;->val$disY:F

    iput p4, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$5;->val$startAlpha:F

    iput p5, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$5;->val$disAlpha:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 445
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 446
    .local v0, "factor":F
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$5;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGuildPanel:Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;
    invoke-static {v1}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1200(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$5;->val$startY:F

    iget v3, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$5;->val$disY:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->setTranslationY(F)V

    .line 447
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$5;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mBackgroundMask:Landroid/view/View;
    invoke-static {v1}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1400(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$5;->val$startAlpha:F

    iget v3, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$5;->val$disAlpha:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 448
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$5;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGuildPanel:Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;
    invoke-static {v1}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1200(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->invalidate()V

    .line 449
    return-void
.end method
