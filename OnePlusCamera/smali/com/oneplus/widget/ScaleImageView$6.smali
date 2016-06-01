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
    .line 852
    iput-object p1, p0, Lcom/oneplus/widget/ScaleImageView$6;->this$0:Lcom/oneplus/widget/ScaleImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 871
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView$6;->this$0:Lcom/oneplus/widget/ScaleImageView;

    # getter for: Lcom/oneplus/widget/ScaleImageView;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/oneplus/widget/ScaleImageView;->access$1400(Lcom/oneplus/widget/ScaleImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    if-eqz v0, :cond_0

    .line 872
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView$6;->this$0:Lcom/oneplus/widget/ScaleImageView;

    # getter for: Lcom/oneplus/widget/ScaleImageView;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/oneplus/widget/ScaleImageView;->access$1400(Lcom/oneplus/widget/ScaleImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->setHighQualityBitmapEnabled(Z)V

    .line 873
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 864
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView$6;->this$0:Lcom/oneplus/widget/ScaleImageView;

    # getter for: Lcom/oneplus/widget/ScaleImageView;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/oneplus/widget/ScaleImageView;->access$1400(Lcom/oneplus/widget/ScaleImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    if-eqz v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView$6;->this$0:Lcom/oneplus/widget/ScaleImageView;

    # getter for: Lcom/oneplus/widget/ScaleImageView;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/oneplus/widget/ScaleImageView;->access$1400(Lcom/oneplus/widget/ScaleImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->setHighQualityBitmapEnabled(Z)V

    .line 866
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 859
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 855
    return-void
.end method
