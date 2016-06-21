.class Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;
.super Ljava/lang/Object;
.source "OPControlPanel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/controlpanel/OPControlPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)V
    .locals 0

    .prologue
    .line 552
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 22
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 555
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$400(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Landroid/animation/ValueAnimator;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 556
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$000(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Ljava/lang/String;

    move-result-object v2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " mPanelTouchListener: mAnimator = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v12}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$400(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Landroid/animation/ValueAnimator;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Lcom/android/systemui_ex/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const/4 v2, 0x1

    .line 669
    :goto_0
    return v2

    .line 559
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v2

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    mul-float v21, v2, v11

    .line 561
    .local v21, "rawY":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$500(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Landroid/view/GestureDetector;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 563
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    .line 666
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$000(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Ljava/lang/String;

    move-result-object v2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PanelTouchListener: event "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    and-int/lit16 v12, v12, 0xff

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Lcom/android/systemui_ex/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    :cond_1
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 565
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    const/4 v11, 0x0

    # setter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mFlingVelocity:F
    invoke-static {v2, v11}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$102(Lcom/android/systemui_ex/controlpanel/OPControlPanel;F)F

    .line 566
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    move/from16 v0, v21

    # setter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mStartPanelY:F
    invoke-static {v2, v0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$2502(Lcom/android/systemui_ex/controlpanel/OPControlPanel;F)F

    .line 568
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSOpenY:F
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1600(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)F

    move-result v2

    cmpl-float v2, v21, v2

    if-lez v2, :cond_2

    .line 569
    const/4 v2, 0x1

    goto :goto_0

    .line 571
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mPanelLayout:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$700(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    const/16 v11, 0x8

    if-ne v2, v11, :cond_3

    .line 572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$000(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Ljava/lang/String;

    move-result-object v2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " mPanelTouchListener: mPanelLayout Visibility : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mPanelLayout:Landroid/widget/FrameLayout;
    invoke-static {v12}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$700(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Landroid/widget/FrameLayout;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Lcom/android/systemui_ex/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    const/4 v11, 0x0

    # setter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mPanelStatus:I
    invoke-static {v2, v11}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$302(Lcom/android/systemui_ex/controlpanel/OPControlPanel;I)I

    .line 574
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 576
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    const/4 v11, 0x2

    # setter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mPanelStatus:I
    invoke-static {v2, v11}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$302(Lcom/android/systemui_ex/controlpanel/OPControlPanel;I)I

    goto :goto_1

    .line 581
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mStartPanelY:F
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$2500(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSOpenY:F
    invoke-static {v11}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1600(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)F

    move-result v11

    cmpl-float v2, v2, v11

    if-lez v2, :cond_4

    .line 582
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 585
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSOpenY:F
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1600(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)F

    move-result v2

    cmpg-float v2, v21, v2

    if-ltz v2, :cond_1

    .line 588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    move/from16 v0, v21

    # invokes: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->getNavOffsetY(F)F
    invoke-static {v2, v0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$2600(Lcom/android/systemui_ex/controlpanel/OPControlPanel;F)F

    move-result v19

    .line 589
    .local v19, "move":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    const/4 v11, 0x1

    # setter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mPanelStatus:I
    invoke-static {v2, v11}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$302(Lcom/android/systemui_ex/controlpanel/OPControlPanel;I)I

    .line 590
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGuildPanel:Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1200(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->setTranslationY(F)V

    .line 591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    const v11, 0x3f19999a    # 0.6f

    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSOpenY:F
    invoke-static {v13}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1600(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)F

    move-result v13

    sub-float v13, v19, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSPanelHeight:I
    invoke-static {v14}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1000(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    mul-float/2addr v11, v12

    # setter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mAlphaDelta:F
    invoke-static {v2, v11}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1302(Lcom/android/systemui_ex/controlpanel/OPControlPanel;F)F

    .line 593
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mBackgroundMask:Landroid/view/View;
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1400(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Landroid/view/View;

    move-result-object v2

    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mBackgroundMask:Landroid/view/View;
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1400(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mAlphaDelta:F
    invoke-static {v11}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1300(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)F

    move-result v11

    invoke-virtual {v2, v11}, Landroid/view/View;->setAlpha(F)V

    .line 596
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mIsDetailPanelShow:Z
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$2300(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 597
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$2100(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Landroid/view/View;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 598
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mDetailPanelBackgroundMask:Landroid/view/View;
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$2200(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Landroid/view/View;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_1

    .line 603
    .end local v19    # "move":F
    :pswitch_3
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 605
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->hidePanelView(Z)V

    .line 606
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 608
    :pswitch_5
    const/16 v20, 0x0

    .line 610
    .local v20, "open":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    move/from16 v0, v21

    # setter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mEndPanelY:F
    invoke-static {v2, v0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$2702(Lcom/android/systemui_ex/controlpanel/OPControlPanel;F)F

    .line 611
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mStartPanelY:F
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$2500(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSOpenY:F
    invoke-static {v11}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1600(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)F

    move-result v11

    cmpl-float v2, v2, v11

    if-lez v2, :cond_5

    .line 612
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    const/4 v11, 0x0

    # setter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mStartPanelY:F
    invoke-static {v2, v11}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$2502(Lcom/android/systemui_ex/controlpanel/OPControlPanel;F)F

    .line 613
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 615
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    move/from16 v0, v21

    # invokes: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->getNavOffsetY(F)F
    invoke-static {v2, v0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$2600(Lcom/android/systemui_ex/controlpanel/OPControlPanel;F)F

    move-result v3

    .line 616
    .local v3, "startY":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mEndPanelY:F
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$2700(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSOpenY:F
    invoke-static {v11}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1600(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)F

    move-result v11

    cmpl-float v2, v2, v11

    if-lez v2, :cond_c

    .line 617
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSOpenY:F
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1600(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)F

    move-result v2

    cmpl-float v2, v3, v2

    if-nez v2, :cond_6

    .line 618
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # invokes: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->updateStatus(F)V
    invoke-static {v2, v3}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1700(Lcom/android/systemui_ex/controlpanel/OPControlPanel;F)V

    .line 619
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 620
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSCloseY:F
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1800(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)F

    move-result v2

    cmpl-float v2, v3, v2

    if-nez v2, :cond_7

    .line 621
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # invokes: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->updateStatus(F)V
    invoke-static {v2, v3}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1700(Lcom/android/systemui_ex/controlpanel/OPControlPanel;F)V

    .line 622
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 624
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mFlingVelocity:F
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$100(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)F

    move-result v2

    const/high16 v11, -0x3c060000    # -500.0f

    cmpg-float v2, v2, v11

    if-gez v2, :cond_9

    .line 625
    const/16 v20, 0x1

    .line 645
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mAlphaDelta:F
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1300(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)F

    move-result v6

    .line 647
    .local v6, "startAlpha":F
    if-eqz v20, :cond_e

    .line 648
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSOpenY:F
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1600(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)F

    move-result v4

    .line 649
    .local v4, "endY":F
    sub-float v5, v4, v3

    .line 650
    .local v5, "disY":F
    const v10, 0x3f19999a    # 0.6f

    .line 651
    .local v10, "endAlpha":F
    sub-float v7, v10, v6

    .line 652
    .local v7, "disAlpha":F
    const/high16 v2, 0x43960000    # 300.0f

    mul-float/2addr v2, v5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSOpenY:F
    invoke-static {v11}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1600(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)F

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSCloseY:F
    invoke-static {v12}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1800(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)F

    move-result v12

    sub-float/2addr v11, v12

    div-float/2addr v2, v11

    float-to-long v8, v2

    .line 660
    .local v8, "duration":J
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # invokes: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->drawerAnimation(FFFFFJ)V
    invoke-static/range {v2 .. v9}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$2000(Lcom/android/systemui_ex/controlpanel/OPControlPanel;FFFFFJ)V

    .line 661
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mIsDetailPanelShow:Z
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$2300(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 662
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    const/16 v18, 0x1

    move v12, v3

    move v13, v4

    move v14, v6

    move v15, v7

    move-wide/from16 v16, v8

    # invokes: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->showDetailAnimation(FFFFJZ)V
    invoke-static/range {v11 .. v18}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$2900(Lcom/android/systemui_ex/controlpanel/OPControlPanel;FFFFJZ)V

    goto/16 :goto_1

    .line 626
    .end local v4    # "endY":F
    .end local v5    # "disY":F
    .end local v6    # "startAlpha":F
    .end local v7    # "disAlpha":F
    .end local v8    # "duration":J
    .end local v10    # "endAlpha":F
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mFlingVelocity:F
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$100(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)F

    move-result v2

    const/high16 v11, 0x43fa0000    # 500.0f

    cmpl-float v2, v2, v11

    if-lez v2, :cond_a

    .line 627
    const/16 v20, 0x0

    goto :goto_2

    .line 629
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSCloseThreadHold:F
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$2800(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)F

    move-result v2

    cmpl-float v2, v3, v2

    if-ltz v2, :cond_b

    .line 630
    const/16 v20, 0x0

    goto :goto_2

    .line 632
    :cond_b
    const/16 v20, 0x1

    goto :goto_2

    .line 636
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mEndPanelY:F
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$2700(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSOpenY:F
    invoke-static {v11}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1600(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)F

    move-result v11

    cmpg-float v2, v2, v11

    if-gtz v2, :cond_8

    .line 637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mPanelStatus:I
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$300(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)I

    move-result v2

    const/4 v11, 0x1

    if-ne v2, v11, :cond_d

    .line 638
    const/16 v20, 0x1

    goto/16 :goto_2

    .line 640
    :cond_d
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 654
    .restart local v6    # "startAlpha":F
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSCloseY:F
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1800(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)F

    move-result v4

    .line 655
    .restart local v4    # "endY":F
    sub-float v5, v4, v3

    .line 656
    .restart local v5    # "disY":F
    const/4 v10, 0x0

    .line 657
    .restart local v10    # "endAlpha":F
    sub-float v7, v10, v6

    .line 658
    .restart local v7    # "disAlpha":F
    const/high16 v2, 0x437a0000    # 250.0f

    mul-float/2addr v2, v5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSCloseY:F
    invoke-static {v11}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1800(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)F

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$9;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSOpenY:F
    invoke-static {v12}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1600(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)F

    move-result v12

    sub-float/2addr v11, v12

    div-float/2addr v2, v11

    float-to-long v8, v2

    .restart local v8    # "duration":J
    goto/16 :goto_3

    .line 563
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
