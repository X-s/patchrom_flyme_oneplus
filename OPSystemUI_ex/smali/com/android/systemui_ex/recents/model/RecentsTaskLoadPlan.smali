.class public Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;
.super Ljava/lang/Object;
.source "RecentsTaskLoadPlan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;
    }
.end annotation


# static fields
.field static DEBUG:Z

.field static TAG:Ljava/lang/String;


# instance fields
.field mActivityInfoCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/systemui_ex/recents/model/Task$ComponentNameKey;",
            "Lcom/android/systemui_ex/recents/model/ActivityInfoHandle;",
            ">;"
        }
    .end annotation
.end field

.field mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

.field mContext:Landroid/content/Context;

.field mRawTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

.field mSystemServicesProxy:Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "RecentsTaskLoadPlan"

    sput-object v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->TAG:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/systemui_ex/recents/RecentsConfiguration;Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Lcom/android/systemui_ex/recents/RecentsConfiguration;
    .param p3, "ssp"    # Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->mActivityInfoCache:Ljava/util/HashMap;

    .line 69
    iput-object p1, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    .line 71
    iput-object p3, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->mSystemServicesProxy:Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    .line 72
    return-void
.end method


# virtual methods
.method declared-synchronized executePlan(Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;Lcom/android/systemui_ex/recents/model/TaskResourceLoadQueue;)V
    .locals 18
    .param p1, "opts"    # Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;
    .param p2, "loader"    # Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;
    .param p3, "loadQueue"    # Lcom/android/systemui_ex/recents/model/TaskResourceLoadQueue;

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executePlan, # tasks: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", # thumbnails: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", running task id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 169
    .local v5, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui_ex/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v17

    .line 170
    .local v17, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui_ex/recents/model/Task;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 171
    .local v16, "taskCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v10, v0, :cond_f

    .line 172
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 173
    .local v14, "t":Landroid/app/ActivityManager$RecentTaskInfo;
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui_ex/recents/model/Task;

    .line 174
    .local v15, "task":Lcom/android/systemui_ex/recents/model/Task;
    iget-object v2, v15, Lcom/android/systemui_ex/recents/model/Task;->key:Lcom/android/systemui_ex/recents/model/Task$TaskKey;

    .line 177
    .local v2, "taskKey":Lcom/android/systemui_ex/recents/model/Task$TaskKey;
    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/model/Task$TaskKey;->getComponentNameKey()Lcom/android/systemui_ex/recents/model/Task$ComponentNameKey;

    move-result-object v8

    .line 179
    .local v8, "cnKey":Lcom/android/systemui_ex/recents/model/Task$ComponentNameKey;
    const/4 v9, 0x0

    .line 180
    .local v9, "hadCachedActivityInfo":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->mActivityInfoCache:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 181
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->mActivityInfoCache:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui_ex/recents/model/ActivityInfoHandle;

    .line 182
    .local v6, "infoHandle":Lcom/android/systemui_ex/recents/model/ActivityInfoHandle;
    const/4 v9, 0x1

    .line 187
    :goto_1
    iget-object v1, v15, Lcom/android/systemui_ex/recents/model/Task;->key:Lcom/android/systemui_ex/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui_ex/recents/model/Task$TaskKey;->id:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    if-ne v1, v3, :cond_3

    const/4 v11, 0x1

    .line 188
    .local v11, "isRunningTask":Z
    :goto_2
    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    sub-int v1, v16, v1

    if-lt v10, v1, :cond_4

    const/4 v12, 0x1

    .line 189
    .local v12, "isVisibleTask":Z
    :goto_3
    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    sub-int v1, v16, v1

    if-lt v10, v1, :cond_5

    const/4 v13, 0x1

    .line 192
    .local v13, "isVisibleThumbnail":Z
    :goto_4
    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadPausedActivities:Z

    if-eqz v1, :cond_6

    if-eqz v11, :cond_6

    .line 171
    :cond_1
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 184
    .end local v6    # "infoHandle":Lcom/android/systemui_ex/recents/model/ActivityInfoHandle;
    .end local v11    # "isRunningTask":Z
    .end local v12    # "isVisibleTask":Z
    .end local v13    # "isVisibleThumbnail":Z
    :cond_2
    new-instance v6, Lcom/android/systemui_ex/recents/model/ActivityInfoHandle;

    invoke-direct {v6}, Lcom/android/systemui_ex/recents/model/ActivityInfoHandle;-><init>()V

    .restart local v6    # "infoHandle":Lcom/android/systemui_ex/recents/model/ActivityInfoHandle;
    goto :goto_1

    .line 187
    :cond_3
    const/4 v11, 0x0

    goto :goto_2

    .line 188
    .restart local v11    # "isRunningTask":Z
    :cond_4
    const/4 v12, 0x0

    goto :goto_3

    .line 189
    .restart local v12    # "isVisibleTask":Z
    :cond_5
    const/4 v13, 0x0

    goto :goto_4

    .line 196
    .restart local v13    # "isVisibleThumbnail":Z
    :cond_6
    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;->loadIcons:Z

    if-eqz v1, :cond_9

    if-nez v11, :cond_7

    if-eqz v12, :cond_9

    .line 197
    :cond_7
    iget-object v1, v15, Lcom/android/systemui_ex/recents/model/Task;->activityIcon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_9

    .line 198
    sget-boolean v1, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->DEBUG:Z

    if-eqz v1, :cond_8

    sget-object v1, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tLoading icon: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_8
    iget-object v3, v14, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->mSystemServicesProxy:Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    const/4 v7, 0x1

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->getAndUpdateActivityIcon(Lcom/android/systemui_ex/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;Landroid/content/res/Resources;Lcom/android/systemui_ex/recents/model/ActivityInfoHandle;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v15, Lcom/android/systemui_ex/recents/model/Task;->activityIcon:Landroid/graphics/drawable/Drawable;

    .line 203
    :cond_9
    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    if-eqz v1, :cond_d

    if-nez v11, :cond_a

    if-eqz v13, :cond_d

    .line 204
    :cond_a
    iget-object v1, v15, Lcom/android/systemui_ex/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_b

    if-eqz v11, :cond_d

    .line 205
    :cond_b
    sget-boolean v1, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->DEBUG:Z

    if-eqz v1, :cond_c

    sget-object v1, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tLoading thumbnail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui_ex/recents/RecentsConfiguration;->svelteLevel:I

    const/4 v3, 0x1

    if-gt v1, v3, :cond_e

    .line 207
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->mSystemServicesProxy:Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->getAndUpdateThumbnail(Lcom/android/systemui_ex/recents/model/Task$TaskKey;Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v15, Lcom/android/systemui_ex/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    .line 216
    :cond_d
    :goto_6
    if-nez v9, :cond_1

    iget-object v1, v6, Lcom/android/systemui_ex/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_1

    .line 217
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->mActivityInfoCache:Ljava/util/HashMap;

    invoke-virtual {v1, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    .line 162
    .end local v2    # "taskKey":Lcom/android/systemui_ex/recents/model/Task$TaskKey;
    .end local v5    # "res":Landroid/content/res/Resources;
    .end local v6    # "infoHandle":Lcom/android/systemui_ex/recents/model/ActivityInfoHandle;
    .end local v8    # "cnKey":Lcom/android/systemui_ex/recents/model/Task$ComponentNameKey;
    .end local v9    # "hadCachedActivityInfo":Z
    .end local v10    # "i":I
    .end local v11    # "isRunningTask":Z
    .end local v12    # "isVisibleTask":Z
    .end local v13    # "isVisibleThumbnail":Z
    .end local v14    # "t":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v15    # "task":Lcom/android/systemui_ex/recents/model/Task;
    .end local v16    # "taskCount":I
    .end local v17    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui_ex/recents/model/Task;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 209
    .restart local v2    # "taskKey":Lcom/android/systemui_ex/recents/model/Task$TaskKey;
    .restart local v5    # "res":Landroid/content/res/Resources;
    .restart local v6    # "infoHandle":Lcom/android/systemui_ex/recents/model/ActivityInfoHandle;
    .restart local v8    # "cnKey":Lcom/android/systemui_ex/recents/model/Task$ComponentNameKey;
    .restart local v9    # "hadCachedActivityInfo":Z
    .restart local v10    # "i":I
    .restart local v11    # "isRunningTask":Z
    .restart local v12    # "isVisibleTask":Z
    .restart local v13    # "isVisibleThumbnail":Z
    .restart local v14    # "t":Landroid/app/ActivityManager$RecentTaskInfo;
    .restart local v15    # "task":Lcom/android/systemui_ex/recents/model/Task;
    .restart local v16    # "taskCount":I
    .restart local v17    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui_ex/recents/model/Task;>;"
    :cond_e
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui_ex/recents/RecentsConfiguration;->svelteLevel:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_d

    .line 210
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lcom/android/systemui_ex/recents/model/TaskResourceLoadQueue;->addTask(Lcom/android/systemui_ex/recents/model/Task;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    .line 220
    .end local v2    # "taskKey":Lcom/android/systemui_ex/recents/model/Task$TaskKey;
    .end local v6    # "infoHandle":Lcom/android/systemui_ex/recents/model/ActivityInfoHandle;
    .end local v8    # "cnKey":Lcom/android/systemui_ex/recents/model/Task$ComponentNameKey;
    .end local v9    # "hadCachedActivityInfo":Z
    .end local v11    # "isRunningTask":Z
    .end local v12    # "isVisibleTask":Z
    .end local v13    # "isVisibleThumbnail":Z
    .end local v14    # "t":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v15    # "task":Lcom/android/systemui_ex/recents/model/Task;
    :cond_f
    monitor-exit p0

    return-void
.end method

.method public getSpaceNode()Lcom/android/systemui_ex/recents/model/SpaceNode;
    .locals 2

    .prologue
    .line 233
    new-instance v0, Lcom/android/systemui_ex/recents/model/SpaceNode;

    invoke-direct {v0}, Lcom/android/systemui_ex/recents/model/SpaceNode;-><init>()V

    .line 234
    .local v0, "node":Lcom/android/systemui_ex/recents/model/SpaceNode;
    iget-object v1, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/recents/model/SpaceNode;->setStack(Lcom/android/systemui_ex/recents/model/TaskStack;)V

    .line 235
    return-object v0
.end method

.method public getTaskStack()Lcom/android/systemui_ex/recents/model/TaskStack;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    return-object v0
.end method

.method declared-synchronized preloadPlan(Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;Z)V
    .locals 28
    .param p1, "loader"    # Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;
    .param p2, "isTopTaskHome"    # Z

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    sget-boolean v3, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->TAG:Ljava/lang/String;

    const-string v4, "preloadPlan"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->mActivityInfoCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 94
    new-instance v3, Lcom/android/systemui_ex/recents/model/TaskStack;

    invoke-direct {v3}, Lcom/android/systemui_ex/recents/model/TaskStack;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    .line 96
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    .line 97
    .local v25, "res":Landroid/content/res/Resources;
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v24, "loadedTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui_ex/recents/model/Task;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    if-nez v3, :cond_1

    .line 99
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->preloadRawTasks(Z)V

    .line 101
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v27

    .line 102
    .local v27, "taskCount":I
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_0
    move/from16 v0, v23

    move/from16 v1, v27

    if-ge v0, v1, :cond_9

    .line 103
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    move/from16 v0, v23

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 106
    .local v26, "t":Landroid/app/ActivityManager$RecentTaskInfo;
    new-instance v2, Lcom/android/systemui_ex/recents/model/Task$TaskKey;

    move-object/from16 v0, v26

    iget v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    move-object/from16 v0, v26

    iget-object v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v0, v26

    iget v5, v0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    move-object/from16 v0, v26

    iget-wide v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->firstActiveTime:J

    move-object/from16 v0, v26

    iget-wide v8, v0, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui_ex/recents/model/Task$TaskKey;-><init>(ILandroid/content/Intent;IJJ)V

    .line 110
    .local v2, "taskKey":Lcom/android/systemui_ex/recents/model/Task$TaskKey;
    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/model/Task$TaskKey;->getComponentNameKey()Lcom/android/systemui_ex/recents/model/Task$ComponentNameKey;

    move-result-object v21

    .line 112
    .local v21, "cnKey":Lcom/android/systemui_ex/recents/model/Task$ComponentNameKey;
    const/16 v22, 0x0

    .line 113
    .local v22, "hadCachedActivityInfo":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->mActivityInfoCache:Ljava/util/HashMap;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 114
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->mActivityInfoCache:Ljava/util/HashMap;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui_ex/recents/model/ActivityInfoHandle;

    .line 115
    .local v8, "infoHandle":Lcom/android/systemui_ex/recents/model/ActivityInfoHandle;
    const/16 v22, 0x1

    .line 121
    :goto_1
    move-object/from16 v0, v26

    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->mSystemServicesProxy:Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v8}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->getAndUpdateActivityLabel(Lcom/android/systemui_ex/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;Lcom/android/systemui_ex/recents/model/ActivityInfoHandle;)Ljava/lang/String;

    move-result-object v14

    .line 123
    .local v14, "activityLabel":Ljava/lang/String;
    move-object/from16 v0, v26

    iget-object v5, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->mSystemServicesProxy:Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    const/4 v9, 0x0

    move-object/from16 v3, p1

    move-object v4, v2

    move-object/from16 v7, v25

    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->getAndUpdateActivityIcon(Lcom/android/systemui_ex/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;Landroid/content/res/Resources;Lcom/android/systemui_ex/recents/model/ActivityInfoHandle;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 125
    .local v15, "activityIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v26

    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->getActivityPrimaryColor(Landroid/app/ActivityManager$TaskDescription;Lcom/android/systemui_ex/recents/RecentsConfiguration;)I

    move-result v16

    .line 128
    .local v16, "activityColor":I
    if-nez v22, :cond_2

    iget-object v3, v8, Lcom/android/systemui_ex/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_2

    .line 129
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->mActivityInfoCache:Ljava/util/HashMap;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_2
    move-object/from16 v0, v26

    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v3, :cond_5

    move-object/from16 v0, v26

    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskDescription;->getInMemoryIcon()Landroid/graphics/Bitmap;

    move-result-object v19

    .line 135
    .local v19, "icon":Landroid/graphics/Bitmap;
    :goto_2
    move-object/from16 v0, v26

    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v3, :cond_6

    move-object/from16 v0, v26

    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v20

    .line 140
    .local v20, "iconFilename":Ljava/lang/String;
    :goto_3
    new-instance v9, Lcom/android/systemui_ex/recents/model/Task;

    move-object/from16 v0, v26

    iget v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    sget v4, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->INVALID_TASK_ID:I

    if-eq v3, v4, :cond_7

    const/4 v11, 0x1

    :goto_4
    move-object/from16 v0, v26

    iget v12, v0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskId:I

    move-object/from16 v0, v26

    iget v13, v0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskColor:I

    add-int/lit8 v3, v27, -0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_8

    const/16 v17, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-boolean v0, v3, Lcom/android/systemui_ex/recents/RecentsConfiguration;->lockToAppEnabled:Z

    move/from16 v18, v0

    move-object v10, v2

    invoke-direct/range {v9 .. v20}, Lcom/android/systemui_ex/recents/model/Task;-><init>(Lcom/android/systemui_ex/recents/model/Task$TaskKey;ZIILjava/lang/String;Landroid/graphics/drawable/Drawable;IZZLandroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 144
    .local v9, "task":Lcom/android/systemui_ex/recents/model/Task;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->mSystemServicesProxy:Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->getAndUpdateThumbnail(Lcom/android/systemui_ex/recents/model/Task$TaskKey;Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v9, Lcom/android/systemui_ex/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    .line 145
    sget-boolean v3, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->DEBUG:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tthumbnail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v9, Lcom/android/systemui_ex/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_3
    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_0

    .line 117
    .end local v8    # "infoHandle":Lcom/android/systemui_ex/recents/model/ActivityInfoHandle;
    .end local v9    # "task":Lcom/android/systemui_ex/recents/model/Task;
    .end local v14    # "activityLabel":Ljava/lang/String;
    .end local v15    # "activityIcon":Landroid/graphics/drawable/Drawable;
    .end local v16    # "activityColor":I
    .end local v19    # "icon":Landroid/graphics/Bitmap;
    .end local v20    # "iconFilename":Ljava/lang/String;
    :cond_4
    new-instance v8, Lcom/android/systemui_ex/recents/model/ActivityInfoHandle;

    invoke-direct {v8}, Lcom/android/systemui_ex/recents/model/ActivityInfoHandle;-><init>()V

    .restart local v8    # "infoHandle":Lcom/android/systemui_ex/recents/model/ActivityInfoHandle;
    goto/16 :goto_1

    .line 132
    .restart local v14    # "activityLabel":Ljava/lang/String;
    .restart local v15    # "activityIcon":Landroid/graphics/drawable/Drawable;
    .restart local v16    # "activityColor":I
    :cond_5
    const/16 v19, 0x0

    goto :goto_2

    .line 135
    .restart local v19    # "icon":Landroid/graphics/Bitmap;
    :cond_6
    const/16 v20, 0x0

    goto :goto_3

    .line 140
    .restart local v20    # "iconFilename":Ljava/lang/String;
    :cond_7
    const/4 v11, 0x0

    goto :goto_4

    :cond_8
    const/16 v17, 0x0

    goto :goto_5

    .line 148
    .end local v2    # "taskKey":Lcom/android/systemui_ex/recents/model/Task$TaskKey;
    .end local v8    # "infoHandle":Lcom/android/systemui_ex/recents/model/ActivityInfoHandle;
    .end local v14    # "activityLabel":Ljava/lang/String;
    .end local v15    # "activityIcon":Landroid/graphics/drawable/Drawable;
    .end local v16    # "activityColor":I
    .end local v19    # "icon":Landroid/graphics/Bitmap;
    .end local v20    # "iconFilename":Ljava/lang/String;
    .end local v21    # "cnKey":Lcom/android/systemui_ex/recents/model/Task$ComponentNameKey;
    .end local v22    # "hadCachedActivityInfo":Z
    .end local v26    # "t":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/android/systemui_ex/recents/model/TaskStack;->setTasks(Ljava/util/List;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/recents/model/TaskStack;->createAffiliatedGroupings(Lcom/android/systemui_ex/recents/RecentsConfiguration;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    invoke-virtual {v3}, Lcom/android/systemui_ex/recents/model/TaskStack;->getTaskCount()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_a

    .line 153
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Loading failed"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .end local v23    # "i":I
    .end local v24    # "loadedTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui_ex/recents/model/Task;>;"
    .end local v25    # "res":Landroid/content/res/Resources;
    .end local v27    # "taskCount":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 155
    .restart local v23    # "i":I
    .restart local v24    # "loadedTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui_ex/recents/model/Task;>;"
    .restart local v25    # "res":Landroid/content/res/Resources;
    .restart local v27    # "taskCount":I
    :cond_a
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized preloadRawTasks(Z)V
    .locals 3
    .param p1, "isTopTaskHome"    # Z

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->mSystemServicesProxy:Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    iget-object v1, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui_ex/recents/RecentsConfiguration;->maxNumTasksToLoad:I

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;->getRecentTasks(IIZ)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    .line 80
    iget-object v0, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 82
    sget-boolean v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preloadRawTasks, tasks: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_0
    monitor-exit p0

    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
