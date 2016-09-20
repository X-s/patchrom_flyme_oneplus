.class Lcom/oneplus/camera/ui/ScaleImageView$8;
.super Ljava/lang/Object;
.source "ScaleImageView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/ScaleImageView;->animateToSlider()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/ScaleImageView;

.field final synthetic val$range:F


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ScaleImageView;F)V
    .locals 0

    .prologue
    .line 983
    iput-object p1, p0, Lcom/oneplus/camera/ui/ScaleImageView$8;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    iput p2, p0, Lcom/oneplus/camera/ui/ScaleImageView$8;->val$range:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 15
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 985
    iget-object v12, p0, Lcom/oneplus/camera/ui/ScaleImageView$8;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_Matrix:Landroid/graphics/Matrix;
    invoke-static {v12}, Lcom/oneplus/camera/ui/ScaleImageView;->access$600(Lcom/oneplus/camera/ui/ScaleImageView;)Landroid/graphics/Matrix;

    move-result-object v12

    iget-object v13, p0, Lcom/oneplus/camera/ui/ScaleImageView$8;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_SavedMatrix:Landroid/graphics/Matrix;
    invoke-static {v13}, Lcom/oneplus/camera/ui/ScaleImageView;->access$500(Lcom/oneplus/camera/ui/ScaleImageView;)Landroid/graphics/Matrix;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 986
    invoke-virtual/range {p1 .. p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    .line 987
    .local v9, "value":Ljava/lang/Float;
    iget-object v12, p0, Lcom/oneplus/camera/ui/ScaleImageView$8;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v13

    iget-object v14, p0, Lcom/oneplus/camera/ui/ScaleImageView$8;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_Center:Landroid/graphics/PointF;
    invoke-static {v14}, Lcom/oneplus/camera/ui/ScaleImageView;->access$2400(Lcom/oneplus/camera/ui/ScaleImageView;)Landroid/graphics/PointF;

    move-result-object v14

    # invokes: Lcom/oneplus/camera/ui/ScaleImageView;->zoomTo(FLandroid/graphics/PointF;)V
    invoke-static {v12, v13, v14}, Lcom/oneplus/camera/ui/ScaleImageView;->access$800(Lcom/oneplus/camera/ui/ScaleImageView;FLandroid/graphics/PointF;)V

    .line 989
    iget-object v12, p0, Lcom/oneplus/camera/ui/ScaleImageView$8;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    # invokes: Lcom/oneplus/camera/ui/ScaleImageView;->getScale()F
    invoke-static {v12}, Lcom/oneplus/camera/ui/ScaleImageView;->access$900(Lcom/oneplus/camera/ui/ScaleImageView;)F

    move-result v1

    .line 990
    .local v1, "currentScale":F
    iget-object v12, p0, Lcom/oneplus/camera/ui/ScaleImageView$8;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_DrawableWidth:I
    invoke-static {v12}, Lcom/oneplus/camera/ui/ScaleImageView;->access$1000(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v12

    int-to-float v12, v12

    mul-float v2, v1, v12

    .line 991
    .local v2, "currentWidth":F
    iget-object v12, p0, Lcom/oneplus/camera/ui/ScaleImageView$8;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_DrawableHeight:I
    invoke-static {v12}, Lcom/oneplus/camera/ui/ScaleImageView;->access$1100(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v12

    int-to-float v12, v12

    mul-float v0, v1, v12

    .line 994
    .local v0, "currentHeight":F
    iget-object v12, p0, Lcom/oneplus/camera/ui/ScaleImageView$8;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_Oriental:I
    invoke-static {v12}, Lcom/oneplus/camera/ui/ScaleImageView;->access$1400(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v12

    if-nez v12, :cond_0

    .line 995
    iget-object v12, p0, Lcom/oneplus/camera/ui/ScaleImageView$8;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    # invokes: Lcom/oneplus/camera/ui/ScaleImageView;->getTranslateX()F
    invoke-static {v12}, Lcom/oneplus/camera/ui/ScaleImageView;->access$1200(Lcom/oneplus/camera/ui/ScaleImageView;)F

    move-result v7

    .line 996
    .local v7, "startX":F
    iget-object v12, p0, Lcom/oneplus/camera/ui/ScaleImageView$8;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewWidth:I
    invoke-static {v12}, Lcom/oneplus/camera/ui/ScaleImageView;->access$1500(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v12

    int-to-float v12, v12

    sub-float v12, v2, v12

    neg-float v12, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float v5, v12, v13

    .line 997
    .local v5, "endX":F
    sub-float v3, v5, v7

    .line 998
    .local v3, "distanceX":F
    iget-object v12, p0, Lcom/oneplus/camera/ui/ScaleImageView$8;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    # invokes: Lcom/oneplus/camera/ui/ScaleImageView;->getTranslateY()F
    invoke-static {v12}, Lcom/oneplus/camera/ui/ScaleImageView;->access$1300(Lcom/oneplus/camera/ui/ScaleImageView;)F

    move-result v8

    .line 999
    .local v8, "startY":F
    iget-object v12, p0, Lcom/oneplus/camera/ui/ScaleImageView$8;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewHeight:I
    invoke-static {v12}, Lcom/oneplus/camera/ui/ScaleImageView;->access$1600(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v12

    int-to-float v12, v12

    sub-float v12, v0, v12

    neg-float v12, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float v6, v12, v13

    .line 1000
    .local v6, "endY":F
    sub-float v4, v6, v8

    .line 1010
    .local v4, "distanceY":F
    :goto_0
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v12

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v12, v13

    mul-float/2addr v12, v3

    iget v13, p0, Lcom/oneplus/camera/ui/ScaleImageView$8;->val$range:F

    div-float/2addr v12, v13

    add-float v10, v7, v12

    .line 1011
    .local v10, "valueX":F
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v12

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v12, v13

    mul-float/2addr v12, v4

    iget v13, p0, Lcom/oneplus/camera/ui/ScaleImageView$8;->val$range:F

    div-float/2addr v12, v13

    add-float v11, v8, v12

    .line 1012
    .local v11, "valueY":F
    sget-object v12, Lcom/oneplus/camera/ui/ScaleImageView;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "valueX: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " valueY: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    iget-object v12, p0, Lcom/oneplus/camera/ui/ScaleImageView$8;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    # invokes: Lcom/oneplus/camera/ui/ScaleImageView;->setTranslateX(F)V
    invoke-static {v12, v10}, Lcom/oneplus/camera/ui/ScaleImageView;->access$1700(Lcom/oneplus/camera/ui/ScaleImageView;F)V

    .line 1014
    iget-object v12, p0, Lcom/oneplus/camera/ui/ScaleImageView$8;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    # invokes: Lcom/oneplus/camera/ui/ScaleImageView;->setTranslateY(F)V
    invoke-static {v12, v11}, Lcom/oneplus/camera/ui/ScaleImageView;->access$1800(Lcom/oneplus/camera/ui/ScaleImageView;F)V

    .line 1015
    iget-object v12, p0, Lcom/oneplus/camera/ui/ScaleImageView$8;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    iget-object v13, p0, Lcom/oneplus/camera/ui/ScaleImageView$8;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_Matrix:Landroid/graphics/Matrix;
    invoke-static {v13}, Lcom/oneplus/camera/ui/ScaleImageView;->access$600(Lcom/oneplus/camera/ui/ScaleImageView;)Landroid/graphics/Matrix;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/oneplus/camera/ui/ScaleImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 1016
    return-void

    .line 1002
    .end local v3    # "distanceX":F
    .end local v4    # "distanceY":F
    .end local v5    # "endX":F
    .end local v6    # "endY":F
    .end local v7    # "startX":F
    .end local v8    # "startY":F
    .end local v10    # "valueX":F
    .end local v11    # "valueY":F
    :cond_0
    iget-object v12, p0, Lcom/oneplus/camera/ui/ScaleImageView$8;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    # invokes: Lcom/oneplus/camera/ui/ScaleImageView;->getTranslateX()F
    invoke-static {v12}, Lcom/oneplus/camera/ui/ScaleImageView;->access$1200(Lcom/oneplus/camera/ui/ScaleImageView;)F

    move-result v7

    .line 1003
    .restart local v7    # "startX":F
    iget-object v12, p0, Lcom/oneplus/camera/ui/ScaleImageView$8;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewWidth:I
    invoke-static {v12}, Lcom/oneplus/camera/ui/ScaleImageView;->access$1500(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v12

    int-to-float v12, v12

    iget-object v13, p0, Lcom/oneplus/camera/ui/ScaleImageView$8;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewWidth:I
    invoke-static {v13}, Lcom/oneplus/camera/ui/ScaleImageView;->access$1500(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v13

    int-to-float v13, v13

    sub-float v13, v0, v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float v5, v12, v13

    .line 1004
    .restart local v5    # "endX":F
    sub-float v3, v5, v7

    .line 1005
    .restart local v3    # "distanceX":F
    iget-object v12, p0, Lcom/oneplus/camera/ui/ScaleImageView$8;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    # invokes: Lcom/oneplus/camera/ui/ScaleImageView;->getTranslateY()F
    invoke-static {v12}, Lcom/oneplus/camera/ui/ScaleImageView;->access$1300(Lcom/oneplus/camera/ui/ScaleImageView;)F

    move-result v8

    .line 1006
    .restart local v8    # "startY":F
    iget-object v12, p0, Lcom/oneplus/camera/ui/ScaleImageView$8;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewHeight:I
    invoke-static {v12}, Lcom/oneplus/camera/ui/ScaleImageView;->access$1600(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v12, v2

    const/high16 v13, 0x40000000    # 2.0f

    div-float v6, v12, v13

    .line 1007
    .restart local v6    # "endY":F
    sub-float v4, v6, v8

    .restart local v4    # "distanceY":F
    goto/16 :goto_0
.end method
