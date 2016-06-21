.class Lcom/android/systemui_ex/recent/RecentTasksLoader$2;
.super Ljava/lang/Thread;
.source "RecentTasksLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/recent/RecentTasksLoader;->preloadFirstTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/recent/RecentTasksLoader;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/recent/RecentTasksLoader;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/systemui_ex/recent/RecentTasksLoader$2;->this$0:Lcom/android/systemui_ex/recent/RecentTasksLoader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 328
    iget-object v1, p0, Lcom/android/systemui_ex/recent/RecentTasksLoader$2;->this$0:Lcom/android/systemui_ex/recent/RecentTasksLoader;

    invoke-virtual {v1}, Lcom/android/systemui_ex/recent/RecentTasksLoader;->loadFirstTask()Lcom/android/systemui_ex/recent/TaskDescription;

    move-result-object v0

    .line 329
    .local v0, "first":Lcom/android/systemui_ex/recent/TaskDescription;
    iget-object v1, p0, Lcom/android/systemui_ex/recent/RecentTasksLoader$2;->this$0:Lcom/android/systemui_ex/recent/RecentTasksLoader;

    # getter for: Lcom/android/systemui_ex/recent/RecentTasksLoader;->mFirstTaskLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/systemui_ex/recent/RecentTasksLoader;->access$000(Lcom/android/systemui_ex/recent/RecentTasksLoader;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 330
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui_ex/recent/RecentTasksLoader$2;->this$0:Lcom/android/systemui_ex/recent/RecentTasksLoader;

    iget-boolean v1, v1, Lcom/android/systemui_ex/recent/RecentTasksLoader;->mCancelPreloadingFirstTask:Z

    if-eqz v1, :cond_0

    .line 331
    iget-object v1, p0, Lcom/android/systemui_ex/recent/RecentTasksLoader$2;->this$0:Lcom/android/systemui_ex/recent/RecentTasksLoader;

    # invokes: Lcom/android/systemui_ex/recent/RecentTasksLoader;->clearFirstTask()V
    invoke-static {v1}, Lcom/android/systemui_ex/recent/RecentTasksLoader;->access$100(Lcom/android/systemui_ex/recent/RecentTasksLoader;)V

    .line 336
    :goto_0
    iget-object v1, p0, Lcom/android/systemui_ex/recent/RecentTasksLoader$2;->this$0:Lcom/android/systemui_ex/recent/RecentTasksLoader;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/systemui_ex/recent/RecentTasksLoader;->mPreloadingFirstTask:Z

    .line 337
    monitor-exit v2

    .line 338
    return-void

    .line 333
    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/recent/RecentTasksLoader$2;->this$0:Lcom/android/systemui_ex/recent/RecentTasksLoader;

    # setter for: Lcom/android/systemui_ex/recent/RecentTasksLoader;->mFirstTask:Lcom/android/systemui_ex/recent/TaskDescription;
    invoke-static {v1, v0}, Lcom/android/systemui_ex/recent/RecentTasksLoader;->access$202(Lcom/android/systemui_ex/recent/RecentTasksLoader;Lcom/android/systemui_ex/recent/TaskDescription;)Lcom/android/systemui_ex/recent/TaskDescription;

    .line 334
    iget-object v1, p0, Lcom/android/systemui_ex/recent/RecentTasksLoader$2;->this$0:Lcom/android/systemui_ex/recent/RecentTasksLoader;

    const/4 v3, 0x1

    # setter for: Lcom/android/systemui_ex/recent/RecentTasksLoader;->mFirstTaskLoaded:Z
    invoke-static {v1, v3}, Lcom/android/systemui_ex/recent/RecentTasksLoader;->access$302(Lcom/android/systemui_ex/recent/RecentTasksLoader;Z)Z

    goto :goto_0

    .line 337
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
