.class Lcom/oneplus/camera/ui/ScaleImageView$13;
.super Ljava/lang/Object;
.source "ScaleImageView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/ScaleImageView;->finishPortrait()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/ScaleImageView;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ScaleImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/ScaleImageView;

    .prologue
    .line 1147
    iput-object p1, p0, Lcom/oneplus/camera/ui/ScaleImageView$13;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView$13;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ScaleImageView;->-get4(Lcom/oneplus/camera/ui/ScaleImageView;)Lcom/oneplus/camera/ui/PreviewGallery;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/ui/PreviewGallery;->setSwipeable(Z)V

    .line 1163
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView$13;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    iget-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView$13;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ScaleImageView;->-get7(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/ScaleImageView;->-set4(Lcom/oneplus/camera/ui/ScaleImageView;I)I

    .line 1157
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView$13;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    iget-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView$13;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ScaleImageView;->-get8(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/ScaleImageView;->-set5(Lcom/oneplus/camera/ui/ScaleImageView;I)I

    .line 1158
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView$13;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/ScaleImageView;->-set0(Lcom/oneplus/camera/ui/ScaleImageView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 1159
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView$13;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ScaleImageView;->-get4(Lcom/oneplus/camera/ui/ScaleImageView;)Lcom/oneplus/camera/ui/PreviewGallery;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/ui/PreviewGallery;->setSwipeable(Z)V

    .line 1155
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1168
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView$13;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ScaleImageView;->-get4(Lcom/oneplus/camera/ui/ScaleImageView;)Lcom/oneplus/camera/ui/PreviewGallery;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/ui/PreviewGallery;->setSwipeable(Z)V

    .line 1150
    return-void
.end method
