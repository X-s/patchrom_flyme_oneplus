.class Lcom/oneplus/camera/ui/CaptureModeSwitcher$6;
.super Ljava/lang/Object;
.source "CaptureModeSwitcher.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/CaptureModeSwitcher;->onCaptureModeItemClicked(Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

.field final synthetic val$targetPosition:F


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher;
    .param p2, "val$targetPosition"    # F

    .prologue
    .line 790
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$6;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    iput p2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$6;->val$targetPosition:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 812
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$6;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-set3(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Z)Z

    .line 813
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$6;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get2(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Landroid/view/ViewGroup;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$6;->val$targetPosition:F

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 815
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$6;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get18(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Lcom/oneplus/camera/ui/PreviewCover;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/ui/PreviewCover;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$UIState;->OPENED:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    if-ne v0, v1, :cond_0

    .line 817
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$6;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get0(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onCaptureModeItemClicked() - animation cancel, set capture mode"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$6;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap12(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V

    .line 810
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 801
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$6;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-set3(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Z)Z

    .line 803
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$6;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get18(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Lcom/oneplus/camera/ui/PreviewCover;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/ui/PreviewCover;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$UIState;->OPENED:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    if-ne v0, v1, :cond_0

    .line 804
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$6;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get0(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onCaptureModeItemClicked() - animation end, set capture mode"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$6;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap12(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V

    .line 799
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 796
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 793
    return-void
.end method
