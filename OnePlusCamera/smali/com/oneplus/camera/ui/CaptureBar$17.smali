.class Lcom/oneplus/camera/ui/CaptureBar$17;
.super Ljava/lang/Object;
.source "CaptureBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/CaptureBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/CaptureBar;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/CaptureBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/CaptureBar;

    .prologue
    .line 472
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureBar$17;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 491
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 485
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$17;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-get5(Lcom/oneplus/camera/ui/CaptureBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 486
    return-void

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$17;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/CaptureBar;->-set0(Lcom/oneplus/camera/ui/CaptureBar;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 483
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 479
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 475
    return-void
.end method
