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
    .param p1, "this$0"    # Lcom/oneplus/widget/ScaleImageView;

    .prologue
    .line 1759
    iput-object p1, p0, Lcom/oneplus/widget/ScaleImageView$6;->this$0:Lcom/oneplus/widget/ScaleImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1781
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView$6;->this$0:Lcom/oneplus/widget/ScaleImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/widget/ScaleImageView;->-wrap6(Lcom/oneplus/widget/ScaleImageView;Z)V

    .line 1779
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1775
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView$6;->this$0:Lcom/oneplus/widget/ScaleImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/widget/ScaleImageView;->-wrap6(Lcom/oneplus/widget/ScaleImageView;Z)V

    .line 1773
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1768
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1764
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView$6;->this$0:Lcom/oneplus/widget/ScaleImageView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/widget/ScaleImageView;->-wrap6(Lcom/oneplus/widget/ScaleImageView;Z)V

    .line 1762
    return-void
.end method
