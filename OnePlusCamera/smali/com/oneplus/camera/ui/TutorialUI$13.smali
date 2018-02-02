.class Lcom/oneplus/camera/ui/TutorialUI$13;
.super Ljava/lang/Object;
.source "TutorialUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/TutorialUI;->doDragFocalPointAnimation(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/TutorialUI;

.field final synthetic val$translationX:F

.field final synthetic val$translationY:F


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/TutorialUI;FF)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/TutorialUI;
    .param p2, "val$translationX"    # F
    .param p3, "val$translationY"    # F

    .prologue
    .line 284
    iput-object p1, p0, Lcom/oneplus/camera/ui/TutorialUI$13;->this$0:Lcom/oneplus/camera/ui/TutorialUI;

    iput p2, p0, Lcom/oneplus/camera/ui/TutorialUI$13;->val$translationX:F

    iput p3, p0, Lcom/oneplus/camera/ui/TutorialUI$13;->val$translationY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    const/high16 v2, 0x40000000    # 2.0f

    .line 289
    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI$13;->this$0:Lcom/oneplus/camera/ui/TutorialUI;

    invoke-static {v0}, Lcom/oneplus/camera/ui/TutorialUI;->-get1(Lcom/oneplus/camera/ui/TutorialUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/camera/ui/TutorialUI$13;->val$translationX:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/camera/ui/TutorialUI$13;->val$translationY:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/camera/ui/TutorialUI$13$1;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ui/TutorialUI$13$1;-><init>(Lcom/oneplus/camera/ui/TutorialUI$13;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 304
    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI$13;->this$0:Lcom/oneplus/camera/ui/TutorialUI;

    invoke-static {v0}, Lcom/oneplus/camera/ui/TutorialUI;->-get2(Lcom/oneplus/camera/ui/TutorialUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/camera/ui/TutorialUI$13;->val$translationX:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/camera/ui/TutorialUI$13;->val$translationY:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 287
    return-void
.end method
