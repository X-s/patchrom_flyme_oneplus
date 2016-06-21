.class Lcom/android/systemui_ex/recents/views/TaskStackView$5;
.super Ljava/lang/Object;
.source "TaskStackView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/recents/views/TaskStackView;->startEnterRecentsAnimation(Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewEnterContext;)V
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
    .line 888
    iput-object p1, p0, Lcom/android/systemui_ex/recents/views/TaskStackView$5;->this$0:Lcom/android/systemui_ex/recents/views/TaskStackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 891
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/TaskStackView$5;->this$0:Lcom/android/systemui_ex/recents/views/TaskStackView;

    iput-boolean v7, v4, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStartEnterAnimationCompleted:Z

    .line 893
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/TaskStackView$5;->this$0:Lcom/android/systemui_ex/recents/views/TaskStackView;

    iget-object v4, v4, Lcom/android/systemui_ex/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui_ex/recents/misc/DozeTrigger;

    invoke-virtual {v4}, Lcom/android/systemui_ex/recents/misc/DozeTrigger;->poke()V

    .line 895
    invoke-static {}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;

    move-result-object v1

    .line 896
    .local v1, "loader":Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;
    invoke-virtual {v1}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    move-result-object v2

    .line 897
    .local v2, "ssp":Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/TaskStackView$5;->this$0:Lcom/android/systemui_ex/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    .line 898
    .local v0, "childCount":I
    if-lez v0, :cond_0

    .line 900
    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;->isTouchExplorationEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 901
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/TaskStackView$5;->this$0:Lcom/android/systemui_ex/recents/views/TaskStackView;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/recents/views/TaskView;

    .line 902
    .local v3, "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    invoke-virtual {v3}, Lcom/android/systemui_ex/recents/views/TaskView;->requestAccessibilityFocus()Z

    .line 903
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/TaskStackView$5;->this$0:Lcom/android/systemui_ex/recents/views/TaskStackView;

    iget-object v5, p0, Lcom/android/systemui_ex/recents/views/TaskStackView$5;->this$0:Lcom/android/systemui_ex/recents/views/TaskStackView;

    iget-object v5, v5, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    invoke-virtual {v3}, Lcom/android/systemui_ex/recents/views/TaskView;->getTask()Lcom/android/systemui_ex/recents/model/Task;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/systemui_ex/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui_ex/recents/model/Task;)I

    move-result v5

    iput v5, v4, Lcom/android/systemui_ex/recents/views/TaskStackView;->mPrevAccessibilityFocusedIndex:I

    .line 908
    .end local v3    # "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/TaskStackView$5;->this$0:Lcom/android/systemui_ex/recents/views/TaskStackView;

    iget-object v4, v4, Lcom/android/systemui_ex/recents/views/TaskStackView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-boolean v4, v4, Lcom/android/systemui_ex/recents/RecentsConfiguration;->launchedWithAltTab:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/TaskStackView$5;->this$0:Lcom/android/systemui_ex/recents/views/TaskStackView;

    iget-object v4, v4, Lcom/android/systemui_ex/recents/views/TaskStackView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-boolean v4, v4, Lcom/android/systemui_ex/recents/RecentsConfiguration;->launchedHasConfigurationChanged:Z

    if-nez v4, :cond_1

    .line 909
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/TaskStackView$5;->this$0:Lcom/android/systemui_ex/recents/views/TaskStackView;

    iget-object v5, p0, Lcom/android/systemui_ex/recents/views/TaskStackView$5;->this$0:Lcom/android/systemui_ex/recents/views/TaskStackView;

    iget v5, v5, Lcom/android/systemui_ex/recents/views/TaskStackView;->mFocusedTaskIndex:I

    invoke-virtual {v4, v5}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 910
    .local v3, "tv":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 911
    check-cast v3, Lcom/android/systemui_ex/recents/views/TaskView;

    .end local v3    # "tv":Landroid/view/View;
    invoke-virtual {v3, v7}, Lcom/android/systemui_ex/recents/views/TaskView;->setFocusedTask(Z)V

    .line 914
    :cond_1
    return-void
.end method
