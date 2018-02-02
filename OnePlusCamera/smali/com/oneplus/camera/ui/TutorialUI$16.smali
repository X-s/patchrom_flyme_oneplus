.class Lcom/oneplus/camera/ui/TutorialUI$16;
.super Ljava/lang/Object;
.source "TutorialUI.java"

# interfaces
.implements Lcom/oneplus/widget/ViewUtils$AnimationCompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/TutorialUI;->hideTutorialUIContainer(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/TutorialUI;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/TutorialUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/TutorialUI;

    .prologue
    .line 373
    iput-object p1, p0, Lcom/oneplus/camera/ui/TutorialUI$16;->this$0:Lcom/oneplus/camera/ui/TutorialUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCompleted(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isCancelled"    # Z

    .prologue
    .line 378
    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI$16;->this$0:Lcom/oneplus/camera/ui/TutorialUI;

    invoke-static {v0}, Lcom/oneplus/camera/ui/TutorialUI;->-get3(Lcom/oneplus/camera/ui/TutorialUI;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI$16;->this$0:Lcom/oneplus/camera/ui/TutorialUI;

    invoke-static {v0}, Lcom/oneplus/camera/ui/TutorialUI;->-get3(Lcom/oneplus/camera/ui/TutorialUI;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 376
    return-void
.end method
