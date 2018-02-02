.class Lcom/oneplus/camera/ui/TutorialUI$14$1;
.super Ljava/lang/Object;
.source "TutorialUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/TutorialUI$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/camera/ui/TutorialUI$14;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/TutorialUI$14;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/camera/ui/TutorialUI$14;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/oneplus/camera/ui/TutorialUI$14$1;->this$1:Lcom/oneplus/camera/ui/TutorialUI$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 334
    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI$14$1;->this$1:Lcom/oneplus/camera/ui/TutorialUI$14;

    iget-object v0, v0, Lcom/oneplus/camera/ui/TutorialUI$14;->this$0:Lcom/oneplus/camera/ui/TutorialUI;

    invoke-static {v0}, Lcom/oneplus/camera/ui/TutorialUI;->-get6(Lcom/oneplus/camera/ui/TutorialUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/camera/ui/TutorialUI$14$1$1;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ui/TutorialUI$14$1$1;-><init>(Lcom/oneplus/camera/ui/TutorialUI$14$1;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 332
    return-void
.end method
