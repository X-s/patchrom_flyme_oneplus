.class Lcom/android/systemui_ex/recent/RecentTasksLoader$4;
.super Landroid/os/AsyncTask;
.source "RecentTasksLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/recent/RecentTasksLoader;->loadThumbnailsAndIconsInBackground(Ljava/util/concurrent/BlockingQueue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Lcom/android/systemui_ex/recent/TaskDescription;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/recent/RecentTasksLoader;

.field final synthetic val$tasksWaitingForThumbnails:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/recent/RecentTasksLoader;Ljava/util/concurrent/BlockingQueue;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lcom/android/systemui_ex/recent/RecentTasksLoader$4;->this$0:Lcom/android/systemui_ex/recent/RecentTasksLoader;

    iput-object p2, p0, Lcom/android/systemui_ex/recent/RecentTasksLoader$4;->val$tasksWaitingForThumbnails:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 541
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui_ex/recent/RecentTasksLoader$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 557
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v1

    .line 558
    .local v1, "origPri":I
    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 561
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/recent/RecentTasksLoader$4;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 580
    :goto_1
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 581
    const/4 v3, 0x0

    return-object v3

    .line 564
    :cond_0
    const/4 v2, 0x0

    .line 565
    .local v2, "td":Lcom/android/systemui_ex/recent/TaskDescription;
    :goto_2
    if-nez v2, :cond_1

    .line 567
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui_ex/recent/RecentTasksLoader$4;->val$tasksWaitingForThumbnails:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/systemui_ex/recent/TaskDescription;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 571
    :cond_1
    invoke-virtual {v2}, Lcom/android/systemui_ex/recent/TaskDescription;->isNull()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 572
    new-array v3, v5, [Lcom/android/systemui_ex/recent/TaskDescription;

    aput-object v2, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/systemui_ex/recent/RecentTasksLoader$4;->publishProgress([Ljava/lang/Object;)V

    goto :goto_1

    .line 575
    :cond_2
    iget-object v3, p0, Lcom/android/systemui_ex/recent/RecentTasksLoader$4;->this$0:Lcom/android/systemui_ex/recent/RecentTasksLoader;

    invoke-virtual {v3, v2}, Lcom/android/systemui_ex/recent/RecentTasksLoader;->loadThumbnailAndIcon(Lcom/android/systemui_ex/recent/TaskDescription;)V

    .line 577
    new-array v3, v5, [Lcom/android/systemui_ex/recent/TaskDescription;

    aput-object v2, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/systemui_ex/recent/RecentTasksLoader$4;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0

    .line 568
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method protected varargs onProgressUpdate([Lcom/android/systemui_ex/recent/TaskDescription;)V
    .locals 3
    .param p1, "values"    # [Lcom/android/systemui_ex/recent/TaskDescription;

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/android/systemui_ex/recent/RecentTasksLoader$4;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 545
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 546
    .local v0, "td":Lcom/android/systemui_ex/recent/TaskDescription;
    invoke-virtual {v0}, Lcom/android/systemui_ex/recent/TaskDescription;->isNull()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 547
    iget-object v1, p0, Lcom/android/systemui_ex/recent/RecentTasksLoader$4;->this$0:Lcom/android/systemui_ex/recent/RecentTasksLoader;

    sget-object v2, Lcom/android/systemui_ex/recent/RecentTasksLoader$State;->LOADED:Lcom/android/systemui_ex/recent/RecentTasksLoader$State;

    # setter for: Lcom/android/systemui_ex/recent/RecentTasksLoader;->mState:Lcom/android/systemui_ex/recent/RecentTasksLoader$State;
    invoke-static {v1, v2}, Lcom/android/systemui_ex/recent/RecentTasksLoader;->access$1002(Lcom/android/systemui_ex/recent/RecentTasksLoader;Lcom/android/systemui_ex/recent/RecentTasksLoader$State;)Lcom/android/systemui_ex/recent/RecentTasksLoader$State;

    .line 554
    .end local v0    # "td":Lcom/android/systemui_ex/recent/TaskDescription;
    :cond_0
    :goto_0
    return-void

    .line 549
    .restart local v0    # "td":Lcom/android/systemui_ex/recent/TaskDescription;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui_ex/recent/RecentTasksLoader$4;->this$0:Lcom/android/systemui_ex/recent/RecentTasksLoader;

    # getter for: Lcom/android/systemui_ex/recent/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui_ex/recent/RecentsPanelView;
    invoke-static {v1}, Lcom/android/systemui_ex/recent/RecentTasksLoader;->access$400(Lcom/android/systemui_ex/recent/RecentTasksLoader;)Lcom/android/systemui_ex/recent/RecentsPanelView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 550
    iget-object v1, p0, Lcom/android/systemui_ex/recent/RecentTasksLoader$4;->this$0:Lcom/android/systemui_ex/recent/RecentTasksLoader;

    # getter for: Lcom/android/systemui_ex/recent/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui_ex/recent/RecentsPanelView;
    invoke-static {v1}, Lcom/android/systemui_ex/recent/RecentTasksLoader;->access$400(Lcom/android/systemui_ex/recent/RecentTasksLoader;)Lcom/android/systemui_ex/recent/RecentsPanelView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui_ex/recent/RecentsPanelView;->onTaskThumbnailLoaded(Lcom/android/systemui_ex/recent/TaskDescription;)V

    goto :goto_0
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 541
    check-cast p1, [Lcom/android/systemui_ex/recent/TaskDescription;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui_ex/recent/RecentTasksLoader$4;->onProgressUpdate([Lcom/android/systemui_ex/recent/TaskDescription;)V

    return-void
.end method
