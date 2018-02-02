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
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/ScaleImageView;

    .prologue
    .line 649
    iput-object p1, p0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 24
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/oneplus/camera/ui/ScaleImageView;->-get6(Lcom/oneplus/camera/ui/ScaleImageView;)Landroid/graphics/Matrix;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/oneplus/camera/ui/ScaleImageView;->-get16(Lcom/oneplus/camera/ui/ScaleImageView;)Landroid/graphics/Matrix;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 652
    invoke-virtual/range {p1 .. p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Float;

    .line 653
    .local v18, "value":Ljava/lang/Float;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/oneplus/camera/ui/ScaleImageView;->-get18(Lcom/oneplus/camera/ui/ScaleImageView;)Landroid/graphics/PointF;

    move-result-object v23

    invoke-static/range {v21 .. v23}, Lcom/oneplus/camera/ui/ScaleImageView;->-wrap8(Lcom/oneplus/camera/ui/ScaleImageView;FLandroid/graphics/PointF;)V

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/oneplus/camera/ui/ScaleImageView;->-wrap0(Lcom/oneplus/camera/ui/ScaleImageView;)F

    move-result v13

    .line 655
    .local v13, "scale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/oneplus/camera/ui/ScaleImageView;->-get3(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v3, v13, v21

    .line 656
    .local v3, "currentWidth":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/oneplus/camera/ui/ScaleImageView;->-get2(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v2, v13, v21

    .line 657
    .local v2, "currentHeight":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/oneplus/camera/ui/ScaleImageView;->-wrap1(Lcom/oneplus/camera/ui/ScaleImageView;)F

    move-result v16

    .local v16, "transX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/oneplus/camera/ui/ScaleImageView;->-wrap2(Lcom/oneplus/camera/ui/ScaleImageView;)F

    move-result v17

    .line 659
    .local v17, "transY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/oneplus/camera/ui/ScaleImageView;->-get12(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v21

    if-nez v21, :cond_7

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/oneplus/camera/ui/ScaleImageView;->-get20(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v9, v21, v3

    .line 663
    .local v9, "minX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/oneplus/camera/ui/ScaleImageView;->-get19(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v10, v21, v2

    .line 665
    .local v10, "minY":F
    const/16 v21, 0x0

    cmpl-float v21, v16, v21

    if-lez v21, :cond_0

    .line 666
    move/from16 v14, v16

    .line 667
    .local v14, "startX":F
    const/4 v6, 0x0

    .line 683
    .local v6, "endX":F
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/oneplus/camera/ui/ScaleImageView;->-get19(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpl-float v21, v2, v21

    if-lez v21, :cond_6

    .line 684
    move/from16 v15, v17

    .line 685
    .local v15, "startY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/oneplus/camera/ui/ScaleImageView;->-get19(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/oneplus/camera/ui/ScaleImageView;->-get18(Lcom/oneplus/camera/ui/ScaleImageView;)Landroid/graphics/PointF;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    add-float v12, v17, v21

    .line 686
    .local v12, "offsetEnd":F
    cmpg-float v21, v12, v10

    if-gez v21, :cond_4

    .line 687
    move v7, v10

    .line 751
    .end local v12    # "offsetEnd":F
    .local v7, "endY":F
    :goto_1
    sub-float v4, v6, v14

    .line 752
    .local v4, "distanceX":F
    sub-float v5, v7, v15

    .line 755
    .local v5, "distanceY":F
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v21

    const/high16 v22, 0x3f800000    # 1.0f

    sub-float v21, v21, v22

    mul-float v21, v21, v4

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    add-float v19, v14, v21

    .line 756
    .local v19, "valueX":F
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v21

    const/high16 v22, 0x3f800000    # 1.0f

    sub-float v21, v21, v22

    mul-float v21, v21, v5

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    add-float v20, v15, v21

    .line 757
    .local v20, "valueY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/ScaleImageView;->-wrap5(Lcom/oneplus/camera/ui/ScaleImageView;F)V

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/ScaleImageView;->-wrap6(Lcom/oneplus/camera/ui/ScaleImageView;F)V

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/oneplus/camera/ui/ScaleImageView;->-get6(Lcom/oneplus/camera/ui/ScaleImageView;)Landroid/graphics/Matrix;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/oneplus/camera/ui/ScaleImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 650
    return-void

    .line 668
    .end local v4    # "distanceX":F
    .end local v5    # "distanceY":F
    .end local v6    # "endX":F
    .end local v7    # "endY":F
    .end local v14    # "startX":F
    .end local v15    # "startY":F
    .end local v19    # "valueX":F
    .end local v20    # "valueY":F
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/oneplus/camera/ui/ScaleImageView;->-get20(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v21, v21, v3

    cmpg-float v21, v16, v21

    if-gez v21, :cond_1

    .line 669
    move/from16 v14, v16

    .line 670
    .restart local v14    # "startX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/oneplus/camera/ui/ScaleImageView;->-get20(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v6, v21, v3

    .restart local v6    # "endX":F
    goto/16 :goto_0

    .line 673
    .end local v6    # "endX":F
    .end local v14    # "startX":F
    :cond_1
    move/from16 v14, v16

    .line 674
    .restart local v14    # "startX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/oneplus/camera/ui/ScaleImageView;->-get20(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/oneplus/camera/ui/ScaleImageView;->-get18(Lcom/oneplus/camera/ui/ScaleImageView;)Landroid/graphics/PointF;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    add-float v11, v16, v21

    .line 675
    .local v11, "offset":F
    cmpg-float v21, v11, v9

    if-gez v21, :cond_2

    .line 676
    move v6, v9

    .restart local v6    # "endX":F
    goto/16 :goto_0

    .line 662
    .end local v6    # "endX":F
    :cond_2
    const/16 v21, 0x0

    .line 677
    cmpl-float v21, v11, v21

    if-lez v21, :cond_3

    .line 662
    const/4 v6, 0x0

    .line 678
    .restart local v6    # "endX":F
    goto/16 :goto_0

    .line 680
    .end local v6    # "endX":F
    :cond_3
    move v6, v11

    .restart local v6    # "endX":F
    goto/16 :goto_0

    .line 664
    .end local v11    # "offset":F
    .restart local v12    # "offsetEnd":F
    .restart local v15    # "startY":F
    :cond_4
    const/16 v21, 0x0

    .line 688
    cmpl-float v21, v12, v21

    if-lez v21, :cond_5

    .line 664
    const/4 v7, 0x0

    .line 689
    .restart local v7    # "endY":F
    goto/16 :goto_1

    .line 691
    .end local v7    # "endY":F
    :cond_5
    move v7, v12

    .restart local v7    # "endY":F
    goto/16 :goto_1

    .line 694
    .end local v7    # "endY":F
    .end local v12    # "offsetEnd":F
    .end local v15    # "startY":F
    :cond_6
    move/from16 v15, v17

    .line 695
    .restart local v15    # "startY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/oneplus/camera/ui/ScaleImageView;->-get19(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v21, v21, v2

    const/high16 v22, 0x40000000    # 2.0f

    div-float v7, v21, v22

    .restart local v7    # "endY":F
    goto/16 :goto_1

    .line 699
    .end local v6    # "endX":F
    .end local v7    # "endY":F
    .end local v9    # "minX":F
    .end local v10    # "minY":F
    .end local v14    # "startX":F
    .end local v15    # "startY":F
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/oneplus/camera/ui/ScaleImageView;->-get20(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v21

    move/from16 v0, v21

    int-to-float v9, v0

    .line 700
    .restart local v9    # "minX":F
    move v8, v2

    .line 701
    .local v8, "maxX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/oneplus/camera/ui/ScaleImageView;->-get19(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v10, v21, v3

    .line 704
    .restart local v10    # "minY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/oneplus/camera/ui/ScaleImageView;->-get20(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpl-float v21, v2, v21

    if-ltz v21, :cond_c

    .line 705
    cmpl-float v21, v16, v2

    if-lez v21, :cond_8

    .line 706
    move/from16 v14, v16

    .line 707
    .restart local v14    # "startX":F
    move v6, v2

    .line 727
    .restart local v6    # "endX":F
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/oneplus/camera/ui/ScaleImageView;->-get19(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpl-float v21, v21, v3

    if-lez v21, :cond_d

    .line 728
    move/from16 v15, v17

    .line 729
    .restart local v15    # "startY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/oneplus/camera/ui/ScaleImageView;->-get19(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v21, v21, v3

    const/high16 v22, 0x40000000    # 2.0f

    div-float v7, v21, v22

    .restart local v7    # "endY":F
    goto/16 :goto_1

    .line 708
    .end local v6    # "endX":F
    .end local v7    # "endY":F
    .end local v14    # "startX":F
    .end local v15    # "startY":F
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/oneplus/camera/ui/ScaleImageView;->-get20(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpg-float v21, v16, v21

    if-gez v21, :cond_9

    .line 709
    move/from16 v14, v16

    .line 710
    .restart local v14    # "startX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/oneplus/camera/ui/ScaleImageView;->-get20(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v21

    move/from16 v0, v21

    int-to-float v6, v0

    .restart local v6    # "endX":F
    goto :goto_2

    .line 713
    .end local v6    # "endX":F
    .end local v14    # "startX":F
    :cond_9
    move/from16 v14, v16

    .line 714
    .restart local v14    # "startX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/oneplus/camera/ui/ScaleImageView;->-get20(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/oneplus/camera/ui/ScaleImageView;->-get18(Lcom/oneplus/camera/ui/ScaleImageView;)Landroid/graphics/PointF;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    add-float v11, v16, v21

    .line 715
    .restart local v11    # "offset":F
    cmpg-float v21, v11, v9

    if-gez v21, :cond_a

    .line 716
    move v6, v9

    .restart local v6    # "endX":F
    goto :goto_2

    .line 717
    .end local v6    # "endX":F
    :cond_a
    cmpl-float v21, v11, v2

    if-lez v21, :cond_b

    .line 718
    move v6, v2

    .restart local v6    # "endX":F
    goto/16 :goto_2

    .line 720
    .end local v6    # "endX":F
    :cond_b
    move v6, v11

    .restart local v6    # "endX":F
    goto/16 :goto_2

    .line 724
    .end local v6    # "endX":F
    .end local v11    # "offset":F
    .end local v14    # "startX":F
    :cond_c
    move/from16 v6, v16

    .restart local v6    # "endX":F
    move/from16 v14, v16

    .restart local v14    # "startX":F
    goto/16 :goto_2

    .line 731
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/oneplus/camera/ui/ScaleImageView;->-get19(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v21, v21, v3

    cmpg-float v21, v17, v21

    if-gez v21, :cond_e

    .line 732
    move/from16 v15, v17

    .line 733
    .restart local v15    # "startY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/oneplus/camera/ui/ScaleImageView;->-get19(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v7, v21, v3

    .restart local v7    # "endY":F
    goto/16 :goto_1

    .line 734
    .end local v7    # "endY":F
    .end local v15    # "startY":F
    :cond_e
    const/16 v21, 0x0

    cmpl-float v21, v17, v21

    if-lez v21, :cond_f

    .line 735
    move/from16 v15, v17

    .line 736
    .restart local v15    # "startY":F
    const/4 v7, 0x0

    .restart local v7    # "endY":F
    goto/16 :goto_1

    .line 739
    .end local v7    # "endY":F
    .end local v15    # "startY":F
    :cond_f
    move/from16 v15, v17

    .line 740
    .restart local v15    # "startY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/oneplus/camera/ui/ScaleImageView;->-get19(Lcom/oneplus/camera/ui/ScaleImageView;)I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/ScaleImageView$2;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/oneplus/camera/ui/ScaleImageView;->-get18(Lcom/oneplus/camera/ui/ScaleImageView;)Landroid/graphics/PointF;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    add-float v12, v17, v21

    .line 741
    .restart local v12    # "offsetEnd":F
    cmpg-float v21, v12, v10

    if-gez v21, :cond_10

    .line 742
    move v7, v10

    .restart local v7    # "endY":F
    goto/16 :goto_1

    .line 702
    .end local v7    # "endY":F
    :cond_10
    const/16 v21, 0x0

    .line 743
    cmpl-float v21, v12, v21

    if-lez v21, :cond_11

    .line 702
    const/4 v7, 0x0

    .line 744
    .restart local v7    # "endY":F
    goto/16 :goto_1

    .line 746
    .end local v7    # "endY":F
    :cond_11
    move v7, v12

    .restart local v7    # "endY":F
    goto/16 :goto_1
.end method
