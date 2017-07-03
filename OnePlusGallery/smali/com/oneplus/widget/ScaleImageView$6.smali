.class Lcom/oneplus/widget/ScaleImageView$6;
.super Ljava/lang/Object;
.source "ScaleImageView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/widget/ScaleImageView;->setImageBounds(IIIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/widget/ScaleImageView;


# direct methods
.method constructor <init>(Lcom/oneplus/widget/ScaleImageView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/widget/ScaleImageView$6;->this$0:Lcom/oneplus/widget/ScaleImageView;

    .line 1498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1520
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView$6;->this$0:Lcom/oneplus/widget/ScaleImageView;

    const/4 v1, 0x0

    # invokes: Lcom/oneplus/widget/ScaleImageView;->notifyAnimating(Z)V
    invoke-static {v0, v1}, Lcom/oneplus/widget/ScaleImageView;->access$13(Lcom/oneplus/widget/ScaleImageView;Z)V

    .line 1521
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView$6;->this$0:Lcom/oneplus/widget/ScaleImageView;

    const/4 v1, 0x0

    # invokes: Lcom/oneplus/widget/ScaleImageView;->notifyAnimating(Z)V
    invoke-static {v0, v1}, Lcom/oneplus/widget/ScaleImageView;->access$13(Lcom/oneplus/widget/ScaleImageView;Z)V

    .line 1515
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1509
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1503
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView$6;->this$0:Lcom/oneplus/widget/ScaleImageView;

    const/4 v1, 0x1

    # invokes: Lcom/oneplus/widget/ScaleImageView;->notifyAnimating(Z)V
    invoke-static {v0, v1}, Lcom/oneplus/widget/ScaleImageView;->access$13(Lcom/oneplus/widget/ScaleImageView;Z)V

    .line 1504
    return-void
.end method
