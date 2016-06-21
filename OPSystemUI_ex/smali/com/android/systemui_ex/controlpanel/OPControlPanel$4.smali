.class Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;
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
    .line 252
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$400(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Landroid/animation/ValueAnimator;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$000(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Ljava/lang/String;

    move-result-object v2

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " mGestureTouchListener: mAnimator = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v15}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$400(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Landroid/animation/ValueAnimator;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Lcom/android/systemui_ex/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const/4 v2, 0x1

    .line 356
    :goto_0
    return v2

    .line 259
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    .line 260
    .local v11, "moveY":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$500(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Landroid/view/GestureDetector;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 262
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    .line 353
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$000(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Ljava/lang/String;

    move-result-object v2

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "GestureTouchListener: event "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v15

    and-int/lit16 v15, v15, 0xff

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Lcom/android/systemui_ex/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :cond_1
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 264
    :pswitch_1
    # setter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGestureMoveY:F
    invoke-static {v11}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$602(F)F

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    const/4 v14, 0x0

    # setter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mFlingVelocity:F
    invoke-static {v2, v14}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$102(Lcom/android/systemui_ex/controlpanel/OPControlPanel;F)F

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mPanelLayout:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$700(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    const/16 v14, 0x8

    if-ne v2, v14, :cond_2

    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    const/4 v14, 0x0

    # setter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mPanelStatus:I
    invoke-static {v2, v14}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$302(Lcom/android/systemui_ex/controlpanel/OPControlPanel;I)I

    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$000(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Ljava/lang/String;

    move-result-object v2

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mGestureTouchListener:onTouch: mIsWizard="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mIsWizard:Z
    invoke-static {v15}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$800(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", mKeyguardShow="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mKeyguardShow:Z
    invoke-static {v15}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$900(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", mPanelStatus="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mPanelStatus:I
    invoke-static {v15}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$300(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Lcom/android/systemui_ex/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 269
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$000(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Ljava/lang/String;

    move-result-object v2

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " mGestureTouchListener: mPanelLayout Visibility : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mPanelLayout:Landroid/widget/FrameLayout;
    invoke-static {v15}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$700(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Landroid/widget/FrameLayout;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Lcom/android/systemui_ex/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    const/4 v14, 0x2

    # setter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mPanelStatus:I
    invoke-static {v2, v14}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$302(Lcom/android/systemui_ex/controlpanel/OPControlPanel;I)I

    .line 271
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 280
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mPanelStatus:I
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$300(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)I

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mPanelStatus:I
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$300(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)I

    move-result v2

    const/4 v14, 0x1

    if-ne v2, v14, :cond_1

    :cond_3
    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGestureMoveY:F
    invoke-static {}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$600()F

    move-result v2

    cmpg-float v2, v11, v2

    if-gtz v2, :cond_1

    neg-float v2, v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSPanelHeight:I
    invoke-static {v14}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1000(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)I

    move-result v14

    int-to-float v14, v14

    cmpg-float v2, v2, v14

    if-gtz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mIsWizard:Z
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$800(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mKeyguardShow:Z
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$900(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    const/4 v14, 0x1

    # setter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mPanelStatus:I
    invoke-static {v2, v14}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$302(Lcom/android/systemui_ex/controlpanel/OPControlPanel;I)I

    .line 285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # invokes: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->getOffsetY(F)F
    invoke-static {v2, v11}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1100(Lcom/android/systemui_ex/controlpanel/OPControlPanel;F)F

    move-result v12

    .line 286
    .local v12, "offsetY":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mPanelLayout:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$700(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Landroid/widget/FrameLayout;

    move-result-object v2

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGuildPanel:Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1200(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel;->setTranslationY(F)V

    .line 290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    const v14, 0x3f19999a    # 0.6f

    const/4 v15, 0x0

    sub-float/2addr v15, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    move-object/from16 v16, v0

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSPanelHeight:I
    invoke-static/range {v16 .. v16}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1000(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    mul-float/2addr v14, v15

    # setter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mAlphaDelta:F
    invoke-static {v2, v14}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1302(Lcom/android/systemui_ex/controlpanel/OPControlPanel;F)F

    .line 292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mBackgroundMask:Landroid/view/View;
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1400(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Landroid/view/View;

    move-result-object v2

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    .line 293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mPanelStatus:I
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$300(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)I

    move-result v2

    const/4 v14, 0x1

    if-ne v2, v14, :cond_4

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mBackgroundMask:Landroid/view/View;
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1400(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mAlphaDelta:F
    invoke-static {v14}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1300(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)F

    move-result v14

    invoke-virtual {v2, v14}, Landroid/view/View;->setAlpha(F)V

    .line 296
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # invokes: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->onHideDetailPanel()V
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1500(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)V

    goto/16 :goto_1

    .line 302
    .end local v12    # "offsetY":F
    :pswitch_3
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 304
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->hidePanelView(Z)V

    .line 305
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 307
    :pswitch_5
    const/4 v2, 0x0

    # setter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mGestureMoveY:F
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$602(F)F

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mPanelStatus:I
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$300(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)I

    move-result v2

    const/4 v14, 0x2

    if-ne v2, v14, :cond_5

    .line 309
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 311
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # invokes: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->getOffsetY(F)F
    invoke-static {v2, v11}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1100(Lcom/android/systemui_ex/controlpanel/OPControlPanel;F)F

    move-result v3

    .line 312
    .local v3, "startY":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSOpenY:F
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1600(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)F

    move-result v2

    cmpl-float v2, v3, v2

    if-nez v2, :cond_6

    .line 313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # invokes: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->updateStatus(F)V
    invoke-static {v2, v3}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1700(Lcom/android/systemui_ex/controlpanel/OPControlPanel;F)V

    .line 314
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 315
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSCloseY:F
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1800(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)F

    move-result v2

    cmpl-float v2, v3, v2

    if-nez v2, :cond_7

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # invokes: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->updateStatus(F)V
    invoke-static {v2, v3}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1700(Lcom/android/systemui_ex/controlpanel/OPControlPanel;F)V

    .line 317
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 322
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mAlphaDelta:F
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1300(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)F

    move-result v6

    .line 325
    .local v6, "startAlpha":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mFlingVelocity:F
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$100(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)F

    move-result v2

    const/high16 v14, -0x3c060000    # -500.0f

    cmpg-float v2, v2, v14

    if-gez v2, :cond_8

    .line 326
    const/4 v13, 0x1

    .line 337
    .local v13, "open":Z
    :goto_2
    if-eqz v13, :cond_b

    .line 338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSOpenY:F
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1600(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)F

    move-result v4

    .line 339
    .local v4, "endY":F
    sub-float v5, v4, v3

    .line 340
    .local v5, "disY":F
    const v10, 0x3f19999a    # 0.6f

    .line 341
    .local v10, "endAlpha":F
    sub-float v7, v10, v6

    .line 342
    .local v7, "disAlpha":F
    const/high16 v2, 0x43960000    # 300.0f

    mul-float/2addr v2, v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSOpenY:F
    invoke-static {v14}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1600(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)F

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSCloseY:F
    invoke-static {v15}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1800(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)F

    move-result v15

    sub-float/2addr v14, v15

    div-float/2addr v2, v14

    float-to-long v8, v2

    .line 350
    .local v8, "duration":J
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # invokes: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->drawerAnimation(FFFFFJ)V
    invoke-static/range {v2 .. v9}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$2000(Lcom/android/systemui_ex/controlpanel/OPControlPanel;FFFFFJ)V

    goto/16 :goto_1

    .line 327
    .end local v4    # "endY":F
    .end local v5    # "disY":F
    .end local v7    # "disAlpha":F
    .end local v8    # "duration":J
    .end local v10    # "endAlpha":F
    .end local v13    # "open":Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mFlingVelocity:F
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$100(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)F

    move-result v2

    const/high16 v14, 0x43fa0000    # 500.0f

    cmpl-float v2, v2, v14

    if-lez v2, :cond_9

    .line 328
    const/4 v13, 0x0

    .restart local v13    # "open":Z
    goto :goto_2

    .line 330
    .end local v13    # "open":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSOpenThreadHold:F
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1900(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)F

    move-result v2

    cmpl-float v2, v3, v2

    if-ltz v2, :cond_a

    .line 331
    const/4 v13, 0x0

    .restart local v13    # "open":Z
    goto :goto_2

    .line 333
    .end local v13    # "open":Z
    :cond_a
    const/4 v13, 0x1

    .restart local v13    # "open":Z
    goto :goto_2

    .line 344
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSCloseY:F
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1800(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)F

    move-result v4

    .line 345
    .restart local v4    # "endY":F
    sub-float v5, v4, v3

    .line 346
    .restart local v5    # "disY":F
    const/4 v10, 0x0

    .line 347
    .restart local v10    # "endAlpha":F
    sub-float v7, v10, v6

    .line 348
    .restart local v7    # "disAlpha":F
    const/high16 v2, 0x437a0000    # 250.0f

    mul-float/2addr v2, v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSCloseY:F
    invoke-static {v14}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1800(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)F

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$4;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSOpenY:F
    invoke-static {v15}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1600(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)F

    move-result v15

    sub-float/2addr v14, v15

    div-float/2addr v2, v14

    float-to-long v8, v2

    .restart local v8    # "duration":J
    goto :goto_3

    .line 262
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
