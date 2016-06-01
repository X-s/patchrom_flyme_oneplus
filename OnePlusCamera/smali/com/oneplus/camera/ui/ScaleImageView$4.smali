.class Lcom/oneplus/camera/ui/ScaleImageView$4;
.super Ljava/lang/Object;
.source "ScaleImageView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/ScaleImageView;->animateZoomEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/ScaleImageView;

.field final synthetic val$disX:F

.field final synthetic val$disY:F

.field final synthetic val$startX:F

.field final synthetic val$startY:F


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ScaleImageView;FFFF)V
    .locals 0

    .prologue
    .line 862
    iput-object p1, p0, Lcom/oneplus/camera/ui/ScaleImageView$4;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    iput p2, p0, Lcom/oneplus/camera/ui/ScaleImageView$4;->val$startX:F

    iput p3, p0, Lcom/oneplus/camera/ui/ScaleImageView$4;->val$disX:F

    iput p4, p0, Lcom/oneplus/camera/ui/ScaleImageView$4;->val$startY:F

    iput p5, p0, Lcom/oneplus/camera/ui/ScaleImageView$4;->val$disY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/high16 v5, 0x447a0000    # 1000.0f

    .line 864
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 865
    .local v0, "value":Ljava/lang/Float;
    iget-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView$4;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    iget v2, p0, Lcom/oneplus/camera/ui/ScaleImageView$4;->val$startX:F

    iget v3, p0, Lcom/oneplus/camera/ui/ScaleImageView$4;->val$disX:F

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    # invokes: Lcom/oneplus/camera/ui/ScaleImageView;->setTranslateX(F)V
    invoke-static {v1, v2}, Lcom/oneplus/camera/ui/ScaleImageView;->access$1700(Lcom/oneplus/camera/ui/ScaleImageView;F)V

    .line 866
    iget-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView$4;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    iget v2, p0, Lcom/oneplus/camera/ui/ScaleImageView$4;->val$startY:F

    iget v3, p0, Lcom/oneplus/camera/ui/ScaleImageView$4;->val$disY:F

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    # invokes: Lcom/oneplus/camera/ui/ScaleImageView;->setTranslateY(F)V
    invoke-static {v1, v2}, Lcom/oneplus/camera/ui/ScaleImageView;->access$1800(Lcom/oneplus/camera/ui/ScaleImageView;F)V

    .line 867
    iget-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView$4;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    iget-object v2, p0, Lcom/oneplus/camera/ui/ScaleImageView$4;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_Matrix:Landroid/graphics/Matrix;
    invoke-static {v2}, Lcom/oneplus/camera/ui/ScaleImageView;->access$600(Lcom/oneplus/camera/ui/ScaleImageView;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/ui/ScaleImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 868
    return-void
.end method
