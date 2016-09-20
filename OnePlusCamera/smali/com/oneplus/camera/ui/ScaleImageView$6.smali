.class Lcom/oneplus/camera/ui/ScaleImageView$6;
.super Ljava/lang/Object;
.source "ScaleImageView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/ScaleImageView;->animateCenterToSlider()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/ScaleImageView;

.field final synthetic val$distanceX:F

.field final synthetic val$distanceY:F

.field final synthetic val$startX:F

.field final synthetic val$startY:F


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ScaleImageView;FFFF)V
    .locals 0

    .prologue
    .line 942
    iput-object p1, p0, Lcom/oneplus/camera/ui/ScaleImageView$6;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    iput p2, p0, Lcom/oneplus/camera/ui/ScaleImageView$6;->val$startY:F

    iput p3, p0, Lcom/oneplus/camera/ui/ScaleImageView$6;->val$distanceY:F

    iput p4, p0, Lcom/oneplus/camera/ui/ScaleImageView$6;->val$startX:F

    iput p5, p0, Lcom/oneplus/camera/ui/ScaleImageView$6;->val$distanceX:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 944
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 945
    .local v0, "valueX":F
    iget v2, p0, Lcom/oneplus/camera/ui/ScaleImageView$6;->val$startY:F

    iget v3, p0, Lcom/oneplus/camera/ui/ScaleImageView$6;->val$distanceY:F

    iget v4, p0, Lcom/oneplus/camera/ui/ScaleImageView$6;->val$startX:F

    sub-float v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/oneplus/camera/ui/ScaleImageView$6;->val$distanceX:F

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float v1, v2, v3

    .line 946
    .local v1, "valueY":F
    iget-object v2, p0, Lcom/oneplus/camera/ui/ScaleImageView$6;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    # invokes: Lcom/oneplus/camera/ui/ScaleImageView;->setTranslateX(F)V
    invoke-static {v2, v0}, Lcom/oneplus/camera/ui/ScaleImageView;->access$1700(Lcom/oneplus/camera/ui/ScaleImageView;F)V

    .line 947
    iget-object v2, p0, Lcom/oneplus/camera/ui/ScaleImageView$6;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    # invokes: Lcom/oneplus/camera/ui/ScaleImageView;->setTranslateY(F)V
    invoke-static {v2, v1}, Lcom/oneplus/camera/ui/ScaleImageView;->access$1800(Lcom/oneplus/camera/ui/ScaleImageView;F)V

    .line 948
    iget-object v2, p0, Lcom/oneplus/camera/ui/ScaleImageView$6;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    iget-object v3, p0, Lcom/oneplus/camera/ui/ScaleImageView$6;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_Matrix:Landroid/graphics/Matrix;
    invoke-static {v3}, Lcom/oneplus/camera/ui/ScaleImageView;->access$600(Lcom/oneplus/camera/ui/ScaleImageView;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/ui/ScaleImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 949
    return-void
.end method
