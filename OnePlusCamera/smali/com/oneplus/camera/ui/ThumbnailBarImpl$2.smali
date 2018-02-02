.class Lcom/oneplus/camera/ui/ThumbnailBarImpl$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ThumbnailBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/ThumbnailBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    .prologue
    .line 569
    iput-object p1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$2;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 574
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$2;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-set1(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Z)Z

    .line 572
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 8
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 580
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$2;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get15(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 581
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$2;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get15(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 582
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$2;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get15(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 583
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$2;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0, v7}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-set3(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Z)Z

    .line 584
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$2;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get7(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$2;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$2;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get15(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$2;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-wrap1(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Lcom/oneplus/base/Rotation;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-wrap10(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Landroid/view/View;Lcom/oneplus/base/Rotation;JLandroid/view/animation/Interpolator;)V

    .line 587
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$2;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0, v7}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-set7(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Z)Z

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$2;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get2(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 591
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$2;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0, v7}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-set1(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Z)Z

    .line 592
    return-void

    .line 594
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$2;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0, v7}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-wrap8(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Z)V

    .line 578
    return-void
.end method
