.class Lcom/android/systemui_ex/recents/views/TaskStackView$4;
.super Ljava/lang/Object;
.source "TaskStackView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/recents/views/TaskStackView;->dismissAllTasks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/recents/views/TaskStackView;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/recents/views/TaskStackView;)V
    .locals 0

    .prologue
    .line 548
    iput-object p1, p0, Lcom/android/systemui_ex/recents/views/TaskStackView$4;->this$0:Lcom/android/systemui_ex/recents/views/TaskStackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 551
    new-instance v8, Lcom/android/systemui_ex/recents/views/TaskStackView$4$1;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/systemui_ex/recents/views/TaskStackView$4$1;-><init>(Lcom/android/systemui_ex/recents/views/TaskStackView$4;)V

    .line 563
    .local v8, "animationFinishAction":Ljava/lang/Runnable;
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 564
    .local v21, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui_ex/recents/model/Task;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackView$4;->this$0:Lcom/android/systemui_ex/recents/views/TaskStackView;

    iget-object v2, v2, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 567
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 568
    .local v18, "size":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move/from16 v0, v18

    if-ge v15, v0, :cond_0

    .line 569
    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/systemui_ex/recents/model/Task;

    .line 570
    .local v19, "t":Lcom/android/systemui_ex/recents/model/Task;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackView$4;->this$0:Lcom/android/systemui_ex/recents/views/TaskStackView;

    move-object/from16 v0, v19

    # invokes: Lcom/android/systemui_ex/recents/views/TaskStackView;->getSavedLockedState(Lcom/android/systemui_ex/recents/model/Task;)Z
    invoke-static {v2, v0}, Lcom/android/systemui_ex/recents/views/TaskStackView;->access$000(Lcom/android/systemui_ex/recents/views/TaskStackView;Lcom/android/systemui_ex/recents/model/Task;)Z

    move-result v20

    .line 571
    .local v20, "taskLocked":Z
    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/android/systemui_ex/recents/model/Task;->taskIsLocked:Z

    .line 568
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 574
    .end local v19    # "t":Lcom/android/systemui_ex/recents/model/Task;
    .end local v20    # "taskLocked":Z
    :cond_0
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 575
    .local v22, "visibleTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui_ex/recents/model/Task;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackView$4;->this$0:Lcom/android/systemui_ex/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildCount()I

    move-result v13

    .line 576
    .local v13, "childCount":I
    const/4 v15, 0x0

    :goto_1
    if-ge v15, v13, :cond_2

    .line 577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackView$4;->this$0:Lcom/android/systemui_ex/recents/views/TaskStackView;

    invoke-virtual {v2, v15}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/recents/views/TaskView;

    .line 578
    .local v3, "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    invoke-virtual {v3}, Lcom/android/systemui_ex/recents/views/TaskView;->getTask()Lcom/android/systemui_ex/recents/model/Task;

    move-result-object v19

    .line 579
    .restart local v19    # "t":Lcom/android/systemui_ex/recents/model/Task;
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    move-object/from16 v0, v19

    iget-boolean v2, v0, Lcom/android/systemui_ex/recents/model/Task;->taskIsLocked:Z

    if-eqz v2, :cond_1

    .line 582
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/android/systemui_ex/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 576
    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 587
    .end local v3    # "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    .end local v19    # "t":Lcom/android/systemui_ex/recents/model/Task;
    :cond_2
    const/4 v15, 0x0

    :goto_2
    move/from16 v0, v18

    if-ge v15, v0, :cond_4

    .line 588
    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/systemui_ex/recents/model/Task;

    .line 589
    .restart local v19    # "t":Lcom/android/systemui_ex/recents/model/Task;
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, v19

    iget-boolean v2, v0, Lcom/android/systemui_ex/recents/model/Task;->taskIsLocked:Z

    if-nez v2, :cond_3

    .line 590
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackView$4;->this$0:Lcom/android/systemui_ex/recents/views/TaskStackView;

    iget-object v2, v2, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    const/4 v6, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v6}, Lcom/android/systemui_ex/recents/model/TaskStack;->removeTask(Lcom/android/systemui_ex/recents/model/Task;Z)V

    .line 587
    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 593
    .end local v19    # "t":Lcom/android/systemui_ex/recents/model/Task;
    :cond_4
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    .line 594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackView$4;->this$0:Lcom/android/systemui_ex/recents/views/TaskStackView;

    iget-object v2, v2, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 597
    const/16 v17, 0xa

    .line 598
    .local v17, "rowDelayDecrement":I
    const/16 v14, 0x104

    .line 599
    .local v14, "currentDuration":I
    const/4 v5, 0x0

    .line 600
    .local v5, "totalDelay":I
    const/16 v16, -0x1

    .line 601
    .local v16, "lastChildNoLockedIndex":I
    const/4 v12, 0x1

    .line 602
    .local v12, "allTaskNotLocked":Z
    const/4 v15, 0x0

    :goto_3
    if-ge v15, v13, :cond_6

    .line 603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackView$4;->this$0:Lcom/android/systemui_ex/recents/views/TaskStackView;

    invoke-virtual {v2, v15}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/recents/views/TaskView;

    .line 604
    .restart local v3    # "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    iget-object v2, v3, Lcom/android/systemui_ex/recents/views/TaskView;->mTask:Lcom/android/systemui_ex/recents/model/Task;

    iget-boolean v2, v2, Lcom/android/systemui_ex/recents/model/Task;->taskIsLocked:Z

    if-nez v2, :cond_5

    .line 605
    move/from16 v16, v15

    .line 602
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 607
    :cond_5
    const/4 v12, 0x0

    goto :goto_4

    .line 611
    .end local v3    # "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    :cond_6
    const/4 v15, 0x0

    :goto_5
    if-ge v15, v13, :cond_9

    .line 612
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackView$4;->this$0:Lcom/android/systemui_ex/recents/views/TaskStackView;

    invoke-virtual {v2, v15}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/recents/views/TaskView;

    .line 613
    .restart local v3    # "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    iget-object v2, v3, Lcom/android/systemui_ex/recents/views/TaskView;->mTask:Lcom/android/systemui_ex/recents/model/Task;

    iget-boolean v2, v2, Lcom/android/systemui_ex/recents/model/Task;->taskIsLocked:Z

    if-nez v2, :cond_8

    .line 614
    invoke-virtual {v3}, Lcom/android/systemui_ex/recents/views/TaskView;->getTask()Lcom/android/systemui_ex/recents/model/Task;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 615
    const/4 v4, 0x0

    .line 616
    .local v4, "endRunnable":Ljava/lang/Runnable;
    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 617
    move-object v4, v8

    .line 619
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackView$4;->this$0:Lcom/android/systemui_ex/recents/views/TaskStackView;

    iget-object v2, v2, Lcom/android/systemui_ex/recents/views/TaskStackView;->mTouchHandler:Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;

    int-to-long v6, v14

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->dismissChildAnimated(Landroid/view/View;Ljava/lang/Runnable;IJ)V

    .line 611
    .end local v4    # "endRunnable":Ljava/lang/Runnable;
    :cond_8
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 623
    .end local v3    # "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    :cond_9
    const/4 v2, -0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_a

    .line 624
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackView$4;->this$0:Lcom/android/systemui_ex/recents/views/TaskStackView;

    iget-object v6, v2, Lcom/android/systemui_ex/recents/views/TaskStackView;->mTouchHandler:Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->dismissChildAnimated(Landroid/view/View;Ljava/lang/Runnable;IJ)V

    .line 627
    :cond_a
    if-eqz v12, :cond_b

    .line 628
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackView$4;->this$0:Lcom/android/systemui_ex/recents/views/TaskStackView;

    iget-object v2, v2, Lcom/android/systemui_ex/recents/views/TaskStackView;->mCb:Lcom/android/systemui_ex/recents/views/TaskStackView$TaskStackViewCallbacks;

    const/16 v6, 0x8

    invoke-interface {v2, v6}, Lcom/android/systemui_ex/recents/views/TaskStackView$TaskStackViewCallbacks;->onSetClearRecentsVisibility(I)V

    .line 635
    :cond_b
    return-void
.end method
