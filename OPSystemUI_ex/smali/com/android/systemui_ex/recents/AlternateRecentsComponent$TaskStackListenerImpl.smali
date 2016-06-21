.class Lcom/android/systemui_ex/recents/AlternateRecentsComponent$TaskStackListenerImpl;
.super Landroid/app/ITaskStackListener$Stub;
.source "AlternateRecentsComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/recents/AlternateRecentsComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskStackListenerImpl"
.end annotation


# instance fields
.field mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/systemui_ex/recents/AlternateRecentsComponent;


# direct methods
.method public constructor <init>(Lcom/android/systemui_ex/recents/AlternateRecentsComponent;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent$TaskStackListenerImpl;->this$0:Lcom/android/systemui_ex/recents/AlternateRecentsComponent;

    invoke-direct {p0}, Landroid/app/ITaskStackListener$Stub;-><init>()V

    .line 102
    iput-object p2, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent$TaskStackListenerImpl;->mHandler:Landroid/os/Handler;

    .line 103
    return-void
.end method


# virtual methods
.method public onTaskStackChanged()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent$TaskStackListenerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 109
    iget-object v0, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent$TaskStackListenerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 110
    return-void
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 114
    invoke-static {}, Lcom/android/systemui_ex/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui_ex/recents/RecentsConfiguration;

    move-result-object v0

    .line 115
    .local v0, "config":Lcom/android/systemui_ex/recents/RecentsConfiguration;
    iget v6, v0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->svelteLevel:I

    if-nez v6, :cond_1

    .line 116
    invoke-static {}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;

    move-result-object v2

    .line 117
    .local v2, "loader":Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;
    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    move-result-object v5

    .line 118
    .local v5, "ssp":Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;
    invoke-virtual {v5}, Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    .line 121
    .local v4, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v6, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent$TaskStackListenerImpl;->this$0:Lcom/android/systemui_ex/recents/AlternateRecentsComponent;

    iget-object v6, v6, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;

    move-result-object v3

    .line 122
    .local v3, "plan":Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;
    invoke-virtual {v2, v3, v7}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;Z)V

    .line 123
    new-instance v1, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v1}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 127
    .local v1, "launchOpts":Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;
    if-eqz v4, :cond_0

    .line 128
    iget v6, v4, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    iput v6, v1, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    .line 130
    :cond_0
    iput v8, v1, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 131
    iput v8, v1, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 132
    iput-boolean v7, v1, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    .line 133
    iput-boolean v7, v1, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadPausedActivities:Z

    .line 134
    iget-object v6, p0, Lcom/android/systemui_ex/recents/AlternateRecentsComponent$TaskStackListenerImpl;->this$0:Lcom/android/systemui_ex/recents/AlternateRecentsComponent;

    iget-object v6, v6, Lcom/android/systemui_ex/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6, v3, v1}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 136
    .end local v1    # "launchOpts":Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;
    .end local v2    # "loader":Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;
    .end local v3    # "plan":Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;
    .end local v4    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v5    # "ssp":Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;
    :cond_1
    return-void
.end method
