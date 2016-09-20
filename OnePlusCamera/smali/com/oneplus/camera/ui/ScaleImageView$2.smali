.class Lcom/oneplus/camera/ui/ScaleImageView$2;
.super Ljava/lang/Object;
.source "ScaleImageView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/ScaleImageView;->animateToViewer()V
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

    .prologue
    .line 649
    iput-object p1, p0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 25
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v22, v0

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_Matrix:Landroid/graphics/Matrix;
    invoke-static/range {v22 .. v22}, Lcom/oneplus/camera/ui/ScaleImageView;->access$600(Lcom/oneplus/camera/ui/ScaleImageView;)Landroid/graphics/Matrix;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v23, v0

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_SavedMatrix:Landroid/graphics/Matrix;
    invoke-static/range {v23 .. v23}, Lcom/oneplus/camera/ui/ScaleImageView;->access$500(Lcom/oneplus/camera/ui/ScaleImageView;)Landroid/graphics/Matrix;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 652
    invoke-virtual/range {p1 .. p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    .line 653
    .local v19, "value":Ljava/lang/Float;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v22, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v24, v0

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_Start:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Lcom/oneplus/camera/ui/ScaleImageView;->access$700(Lcom/oneplus/camera/ui/ScaleImageView;)Landroid/graphics/PointF;

    move-result-object v24

    # invokes: Lcom/oneplus/camera/ui/ScaleImageView;->zoomTo(FLandroid/graphics/PointF;)V
    invoke-static/range {v22 .. v24}, Lcom/oneplus/camera/ui/ScaleImageView;->access$800(Lcom/oneplus/camera/ui/ScaleImageView;FLandroid/graphics/PointF;)V

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v22, v0

    # invokes: Lcom/oneplus/camera/ui/ScaleImageView;->getScale()F
    invoke-static/range {v22 .. v22}, Lcom/oneplus/camera/ui/ScaleImageView;->access$900(Lcom/oneplus/camera/ui/ScaleImageView;)F

    move-result v14

    .line 655
    .local v14, "scale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v22, v0

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_DrawableWidth:I
    invoke-static/range {v22 .. v22}, Lcom/oneplus/camera/ui/ScaleImageView;->access$1000(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v3, v14, v22

    .line 656
    .local v3, "currentWidth":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v22, v0

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_DrawableHeight:I
    invoke-static/range {v22 .. v22}, Lcom/oneplus/camera/ui/ScaleImageView;->access$1100(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v2, v14, v22

    .line 657
    .local v2, "currentHeight":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v22, v0

    # invokes: Lcom/oneplus/camera/ui/ScaleImageView;->getTranslateX()F
    invoke-static/range {v22 .. v22}, Lcom/oneplus/camera/ui/ScaleImageView;->access$1200(Lcom/oneplus/camera/ui/ScaleImageView;)F

    move-result v17

    .local v17, "transX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v22, v0

    # invokes: Lcom/oneplus/camera/ui/ScaleImageView;->getTranslateY()F
    invoke-static/range {v22 .. v22}, Lcom/oneplus/camera/ui/ScaleImageView;->access$1300(Lcom/oneplus/camera/ui/ScaleImageView;)F

    move-result v18

    .line 659
    .local v18, "transY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v22, v0

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_Oriental:I
    invoke-static/range {v22 .. v22}, Lcom/oneplus/camera/ui/ScaleImageView;->access$1400(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v22

    if-nez v22, :cond_7

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v22, v0

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewWidth:I
    invoke-static/range {v22 .. v22}, Lcom/oneplus/camera/ui/ScaleImageView;->access$1500(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v10, v22, v3

    .line 662
    .local v10, "minX":F
    const/4 v8, 0x0

    .line 663
    .local v8, "maxX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v22, v0

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewHeight:I
    invoke-static/range {v22 .. v22}, Lcom/oneplus/camera/ui/ScaleImageView;->access$1600(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v11, v22, v2

    .line 664
    .local v11, "minY":F
    const/4 v9, 0x0

    .line 665
    .local v9, "maxY":F
    const/16 v22, 0x0

    cmpl-float v22, v17, v22

    if-lez v22, :cond_0

    .line 666
    move/from16 v15, v17

    .line 667
    .local v15, "startX":F
    const/4 v6, 0x0

    .line 683
    .local v6, "endX":F
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v22, v0

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewHeight:I
    invoke-static/range {v22 .. v22}, Lcom/oneplus/camera/ui/ScaleImageView;->access$1600(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpl-float v22, v2, v22

    if-lez v22, :cond_6

    .line 684
    move/from16 v16, v18

    .line 685
    .local v16, "startY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v22, v0

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewHeight:I
    invoke-static/range {v22 .. v22}, Lcom/oneplus/camera/ui/ScaleImageView;->access$1600(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v22

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v23, v0

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_Start:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Lcom/oneplus/camera/ui/ScaleImageView;->access$700(Lcom/oneplus/camera/ui/ScaleImageView;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    add-float v13, v16, v22

    .line 686
    .local v13, "offsetEnd":F
    cmpg-float v22, v13, v11

    if-gez v22, :cond_4

    .line 687
    move v7, v11

    .line 751
    .end local v13    # "offsetEnd":F
    .local v7, "endY":F
    :goto_1
    sub-float v4, v6, v15

    .line 752
    .local v4, "distanceX":F
    sub-float v5, v7, v16

    .line 755
    .local v5, "distanceY":F
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v22

    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v22, v22, v23

    mul-float v22, v22, v4

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    add-float v20, v15, v22

    .line 756
    .local v20, "valueX":F
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v22

    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v22, v22, v23

    mul-float v22, v22, v5

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    add-float v21, v16, v22

    .line 757
    .local v21, "valueY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v20

    # invokes: Lcom/oneplus/camera/ui/ScaleImageView;->setTranslateX(F)V
    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/ScaleImageView;->access$1700(Lcom/oneplus/camera/ui/ScaleImageView;F)V

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v21

    # invokes: Lcom/oneplus/camera/ui/ScaleImageView;->setTranslateY(F)V
    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/ScaleImageView;->access$1800(Lcom/oneplus/camera/ui/ScaleImageView;F)V

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v23, v0

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_Matrix:Landroid/graphics/Matrix;
    invoke-static/range {v23 .. v23}, Lcom/oneplus/camera/ui/ScaleImageView;->access$600(Lcom/oneplus/camera/ui/ScaleImageView;)Landroid/graphics/Matrix;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/oneplus/camera/ui/ScaleImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 760
    return-void

    .line 668
    .end local v4    # "distanceX":F
    .end local v5    # "distanceY":F
    .end local v6    # "endX":F
    .end local v7    # "endY":F
    .end local v15    # "startX":F
    .end local v16    # "startY":F
    .end local v20    # "valueX":F
    .end local v21    # "valueY":F
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v22, v0

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewWidth:I
    invoke-static/range {v22 .. v22}, Lcom/oneplus/camera/ui/ScaleImageView;->access$1500(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v22, v22, v3

    cmpg-float v22, v17, v22

    if-gez v22, :cond_1

    .line 669
    move/from16 v15, v17

    .line 670
    .restart local v15    # "startX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v22, v0

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewWidth:I
    invoke-static/range {v22 .. v22}, Lcom/oneplus/camera/ui/ScaleImageView;->access$1500(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v6, v22, v3

    .restart local v6    # "endX":F
    goto/16 :goto_0

    .line 673
    .end local v6    # "endX":F
    .end local v15    # "startX":F
    :cond_1
    move/from16 v15, v17

    .line 674
    .restart local v15    # "startX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v22, v0

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewWidth:I
    invoke-static/range {v22 .. v22}, Lcom/oneplus/camera/ui/ScaleImageView;->access$1500(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v22

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v23, v0

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_Start:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Lcom/oneplus/camera/ui/ScaleImageView;->access$700(Lcom/oneplus/camera/ui/ScaleImageView;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    add-float v12, v15, v22

    .line 675
    .local v12, "offset":F
    cmpg-float v22, v12, v10

    if-gez v22, :cond_2

    .line 676
    move v6, v10

    .restart local v6    # "endX":F
    goto/16 :goto_0

    .line 677
    .end local v6    # "endX":F
    :cond_2
    cmpl-float v22, v12, v8

    if-lez v22, :cond_3

    .line 678
    move v6, v8

    .restart local v6    # "endX":F
    goto/16 :goto_0

    .line 680
    .end local v6    # "endX":F
    :cond_3
    move v6, v12

    .restart local v6    # "endX":F
    goto/16 :goto_0

    .line 688
    .end local v12    # "offset":F
    .restart local v13    # "offsetEnd":F
    .restart local v16    # "startY":F
    :cond_4
    cmpl-float v22, v13, v9

    if-lez v22, :cond_5

    .line 689
    move v7, v9

    .restart local v7    # "endY":F
    goto/16 :goto_1

    .line 691
    .end local v7    # "endY":F
    :cond_5
    move v7, v13

    .restart local v7    # "endY":F
    goto/16 :goto_1

    .line 694
    .end local v7    # "endY":F
    .end local v13    # "offsetEnd":F
    .end local v16    # "startY":F
    :cond_6
    move/from16 v16, v18

    .line 695
    .restart local v16    # "startY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v22, v0

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewHeight:I
    invoke-static/range {v22 .. v22}, Lcom/oneplus/camera/ui/ScaleImageView;->access$1600(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v22, v22, v2

    const/high16 v23, 0x40000000    # 2.0f

    div-float v7, v22, v23

    .restart local v7    # "endY":F
    goto/16 :goto_1

    .line 699
    .end local v6    # "endX":F
    .end local v7    # "endY":F
    .end local v8    # "maxX":F
    .end local v9    # "maxY":F
    .end local v10    # "minX":F
    .end local v11    # "minY":F
    .end local v15    # "startX":F
    .end local v16    # "startY":F
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v22, v0

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewWidth:I
    invoke-static/range {v22 .. v22}, Lcom/oneplus/camera/ui/ScaleImageView;->access$1500(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v22

    move/from16 v0, v22

    int-to-float v10, v0

    .line 700
    .restart local v10    # "minX":F
    move v8, v2

    .line 701
    .restart local v8    # "maxX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v22, v0

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewHeight:I
    invoke-static/range {v22 .. v22}, Lcom/oneplus/camera/ui/ScaleImageView;->access$1600(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v11, v22, v3

    .line 702
    .restart local v11    # "minY":F
    const/4 v9, 0x0

    .line 704
    .restart local v9    # "maxY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v22, v0

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewWidth:I
    invoke-static/range {v22 .. v22}, Lcom/oneplus/camera/ui/ScaleImageView;->access$1500(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpl-float v22, v2, v22

    if-ltz v22, :cond_c

    .line 705
    cmpl-float v22, v17, v2

    if-lez v22, :cond_8

    .line 706
    move/from16 v15, v17

    .line 707
    .restart local v15    # "startX":F
    move v6, v2

    .line 727
    .restart local v6    # "endX":F
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v22, v0

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewHeight:I
    invoke-static/range {v22 .. v22}, Lcom/oneplus/camera/ui/ScaleImageView;->access$1600(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpl-float v22, v22, v3

    if-lez v22, :cond_d

    .line 728
    move/from16 v16, v18

    .line 729
    .restart local v16    # "startY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v22, v0

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewHeight:I
    invoke-static/range {v22 .. v22}, Lcom/oneplus/camera/ui/ScaleImageView;->access$1600(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v22, v22, v3

    const/high16 v23, 0x40000000    # 2.0f

    div-float v7, v22, v23

    .restart local v7    # "endY":F
    goto/16 :goto_1

    .line 708
    .end local v6    # "endX":F
    .end local v7    # "endY":F
    .end local v15    # "startX":F
    .end local v16    # "startY":F
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v22, v0

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewWidth:I
    invoke-static/range {v22 .. v22}, Lcom/oneplus/camera/ui/ScaleImageView;->access$1500(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpg-float v22, v17, v22

    if-gez v22, :cond_9

    .line 709
    move/from16 v15, v17

    .line 710
    .restart local v15    # "startX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v22, v0

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewWidth:I
    invoke-static/range {v22 .. v22}, Lcom/oneplus/camera/ui/ScaleImageView;->access$1500(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v22

    move/from16 v0, v22

    int-to-float v6, v0

    .restart local v6    # "endX":F
    goto :goto_2

    .line 713
    .end local v6    # "endX":F
    .end local v15    # "startX":F
    :cond_9
    move/from16 v15, v17

    .line 714
    .restart local v15    # "startX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v22, v0

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewWidth:I
    invoke-static/range {v22 .. v22}, Lcom/oneplus/camera/ui/ScaleImageView;->access$1500(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v22

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v23, v0

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_Start:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Lcom/oneplus/camera/ui/ScaleImageView;->access$700(Lcom/oneplus/camera/ui/ScaleImageView;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    add-float v12, v15, v22

    .line 715
    .restart local v12    # "offset":F
    cmpg-float v22, v12, v10

    if-gez v22, :cond_a

    .line 716
    move v6, v10

    .restart local v6    # "endX":F
    goto :goto_2

    .line 717
    .end local v6    # "endX":F
    :cond_a
    cmpl-float v22, v12, v8

    if-lez v22, :cond_b

    .line 718
    move v6, v8

    .restart local v6    # "endX":F
    goto/16 :goto_2

    .line 720
    .end local v6    # "endX":F
    :cond_b
    move v6, v12

    .restart local v6    # "endX":F
    goto/16 :goto_2

    .line 724
    .end local v6    # "endX":F
    .end local v12    # "offset":F
    .end local v15    # "startX":F
    :cond_c
    move/from16 v6, v17

    .restart local v6    # "endX":F
    move/from16 v15, v17

    .restart local v15    # "startX":F
    goto/16 :goto_2

    .line 731
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v22, v0

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewHeight:I
    invoke-static/range {v22 .. v22}, Lcom/oneplus/camera/ui/ScaleImageView;->access$1600(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v22, v22, v3

    cmpg-float v22, v18, v22

    if-gez v22, :cond_e

    .line 732
    move/from16 v16, v18

    .line 733
    .restart local v16    # "startY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v22, v0

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewHeight:I
    invoke-static/range {v22 .. v22}, Lcom/oneplus/camera/ui/ScaleImageView;->access$1600(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v7, v22, v3

    .restart local v7    # "endY":F
    goto/16 :goto_1

    .line 734
    .end local v7    # "endY":F
    .end local v16    # "startY":F
    :cond_e
    const/16 v22, 0x0

    cmpl-float v22, v18, v22

    if-lez v22, :cond_f

    .line 735
    move/from16 v16, v18

    .line 736
    .restart local v16    # "startY":F
    const/4 v7, 0x0

    .restart local v7    # "endY":F
    goto/16 :goto_1

    .line 739
    .end local v7    # "endY":F
    .end local v16    # "startY":F
    :cond_f
    move/from16 v16, v18

    .line 740
    .restart local v16    # "startY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v22, v0

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_ViewHeight:I
    invoke-static/range {v22 .. v22}, Lcom/oneplus/camera/ui/ScaleImageView;->access$1600(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v22

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v23, v0

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_Start:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Lcom/oneplus/camera/ui/ScaleImageView;->access$700(Lcom/oneplus/camera/ui/ScaleImageView;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    add-float v13, v16, v22

    .line 741
    .restart local v13    # "offsetEnd":F
    cmpg-float v22, v13, v11

    if-gez v22, :cond_10

    .line 742
    move v7, v11

    .restart local v7    # "endY":F
    goto/16 :goto_1

    .line 743
    .end local v7    # "endY":F
    :cond_10
    cmpl-float v22, v13, v9

    if-lez v22, :cond_11

    .line 744
    move v7, v9

    .restart local v7    # "endY":F
    goto/16 :goto_1

    .line 746
    .end local v7    # "endY":F
    :cond_11
    move v7, v13

    .restart local v7    # "endY":F
    goto/16 :goto_1
.end method
