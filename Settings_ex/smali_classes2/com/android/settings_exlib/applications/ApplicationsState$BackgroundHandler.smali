.class Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;
.super Landroid/os/Handler;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_exlib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler$1;
    }
.end annotation


# static fields
.field static final MSG_LOAD_ENTRIES:I = 0x2

.field static final MSG_LOAD_HOME_APP:I = 0x6

.field static final MSG_LOAD_ICONS:I = 0x3

.field static final MSG_LOAD_LAUNCHER:I = 0x5

.field static final MSG_LOAD_SIZES:I = 0x4

.field static final MSG_REBUILD_LIST:I = 0x1


# instance fields
.field mRunning:Z

.field final mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

.field final synthetic this$0:Lcom/android/settings_exlib/applications/ApplicationsState;


# direct methods
.method constructor <init>(Lcom/android/settings_exlib/applications/ApplicationsState;Landroid/os/Looper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings_exlib/applications/ApplicationsState;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 757
    iput-object p1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    .line 758
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 962
    new-instance v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler$1;

    invoke-direct {v0, p0}, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler$1;-><init>(Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;)V

    iput-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    .line 757
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 30
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 764
    const/16 v20, 0x0

    .line 765
    .local v20, "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$Session;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 766
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_0

    .line 767
    new-instance v21, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 768
    .end local v20    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$Session;>;"
    .local v21, "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$Session;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    move-object/from16 v20, v21

    .end local v21    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$Session;>;"
    :cond_0
    monitor-exit v25

    .line 771
    if-eqz v20, :cond_1

    .line 772
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v10, v0, :cond_1

    .line 773
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    invoke-virtual/range {v24 .. v24}, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->handleRebuildList()V

    .line 772
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 765
    .end local v10    # "i":I
    .restart local v20    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$Session;>;"
    :catchall_0
    move-exception v24

    .end local v20    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$Session;>;"
    :goto_1
    monitor-exit v25

    throw v24

    .line 777
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    packed-switch v24, :pswitch_data_0

    .line 762
    :goto_2
    :pswitch_0
    return-void

    .line 781
    :pswitch_1
    const/16 v18, 0x0

    .line 782
    .local v18, "numDone":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 784
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v10, v0, :cond_5

    const/16 v24, 0x6

    move/from16 v0, v18

    move/from16 v1, v24

    if-ge v0, v1, :cond_5

    .line 785
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    move/from16 v24, v0

    if-nez v24, :cond_2

    .line 786
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    move-object/from16 v24, v0

    .line 788
    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    const/16 v27, 0x6

    .line 787
    move-object/from16 v0, v24

    move/from16 v1, v27

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    .line 789
    .local v15, "m":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 791
    .end local v15    # "m":Landroid/os/Message;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ApplicationInfo;

    .line 792
    .local v11, "info":Landroid/content/pm/ApplicationInfo;
    iget v0, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v23

    .line 793
    .local v23, "userId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/HashMap;

    iget-object v0, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    if-nez v24, :cond_3

    .line 794
    add-int/lit8 v18, v18, 0x1

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v0, v11}, Lcom/android/settings_exlib/applications/ApplicationsState;->-wrap0(Lcom/android/settings_exlib/applications/ApplicationsState;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .line 797
    :cond_3
    if-eqz v23, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    move-object/from16 v24, v0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v24

    if-ltz v24, :cond_4

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    move-object/from16 v24, v0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/HashMap;

    iget-object v0, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .line 806
    .local v7, "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    if-eqz v7, :cond_4

    .line 807
    iget-object v0, v7, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v24, v0

    const/high16 v26, 0x800000

    and-int v24, v24, v26

    if-nez v24, :cond_4

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    move-object/from16 v24, v0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/HashMap;

    iget-object v0, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 784
    .end local v7    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .end local v11    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v23    # "userId":I
    :cond_5
    monitor-exit v25

    .line 816
    const/16 v24, 0x6

    move/from16 v0, v18

    move/from16 v1, v24

    if-lt v0, v1, :cond_6

    .line 817
    const/16 v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 782
    :catchall_1
    move-exception v24

    monitor-exit v25

    throw v24

    .line 819
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v24

    if-nez v24, :cond_7

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 822
    :cond_7
    const/16 v24, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 826
    .end local v10    # "i":I
    .end local v18    # "numDone":I
    :pswitch_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 827
    .local v9, "homeActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 829
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 830
    .local v8, "entryCount":I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_4
    if-ge v10, v8, :cond_a

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/HashMap;

    .line 833
    .local v22, "userEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "activity$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 834
    .local v5, "activity":Landroid/content/pm/ResolveInfo;
    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 835
    .local v19, "packageName":Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .line 836
    .restart local v7    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    if-eqz v7, :cond_8

    .line 837
    const/16 v24, 0x1

    move/from16 v0, v24

    iput-boolean v0, v7, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->isHomeApp:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_5

    .line 828
    .end local v5    # "activity":Landroid/content/pm/ResolveInfo;
    .end local v6    # "activity$iterator":Ljava/util/Iterator;
    .end local v7    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .end local v8    # "entryCount":I
    .end local v10    # "i":I
    .end local v19    # "packageName":Ljava/lang/String;
    .end local v22    # "userEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    :catchall_2
    move-exception v24

    monitor-exit v25

    throw v24

    .line 830
    .restart local v6    # "activity$iterator":Ljava/util/Iterator;
    .restart local v8    # "entryCount":I
    .restart local v10    # "i":I
    .restart local v22    # "userEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .end local v6    # "activity$iterator":Ljava/util/Iterator;
    .end local v22    # "userEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    :cond_a
    monitor-exit v25

    .line 843
    const/16 v24, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 847
    .end local v8    # "entryCount":I
    .end local v9    # "homeActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v10    # "i":I
    :pswitch_3
    new-instance v24, Landroid/content/Intent;

    const-string/jumbo v25, "android.intent.action.MAIN"

    const/16 v26, 0x0

    invoke-direct/range {v24 .. v26}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 848
    const-string/jumbo v25, "android.intent.category.LAUNCHER"

    .line 847
    invoke-virtual/range {v24 .. v25}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    .line 849
    .local v14, "launchIntent":Landroid/content/Intent;
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v10, v0, :cond_d

    .line 850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v23

    .line 856
    .restart local v23    # "userId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v24, v0

    .line 858
    const v25, 0xc0200

    .line 856
    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v23

    invoke-virtual {v0, v14, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v12

    .line 863
    .local v12, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 865
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/HashMap;

    .line 866
    .restart local v22    # "userEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    .line 867
    .local v4, "N":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_7
    if-ge v13, v4, :cond_c

    .line 868
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 869
    .restart local v19    # "packageName":Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .line 870
    .restart local v7    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    if-eqz v7, :cond_b

    .line 871
    const/16 v24, 0x1

    move/from16 v0, v24

    iput-boolean v0, v7, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->hasLauncherEntry:Z

    .line 867
    :goto_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 873
    :cond_b
    const-string/jumbo v24, "ApplicationsState"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Cannot find pkg: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 874
    const-string/jumbo v27, " on user "

    .line 873
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_8

    .line 863
    .end local v4    # "N":I
    .end local v7    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .end local v13    # "j":I
    .end local v19    # "packageName":Ljava/lang/String;
    .end local v22    # "userEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    :catchall_3
    move-exception v24

    monitor-exit v25

    throw v24

    .restart local v4    # "N":I
    .restart local v13    # "j":I
    .restart local v22    # "userEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    :cond_c
    monitor-exit v25

    .line 849
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_6

    .line 881
    .end local v4    # "N":I
    .end local v12    # "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v13    # "j":I
    .end local v22    # "userEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    .end local v23    # "userId":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x7

    invoke-virtual/range {v24 .. v25}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v24

    if-nez v24, :cond_e

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x7

    invoke-virtual/range {v24 .. v25}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 884
    :cond_e
    const/16 v24, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 887
    .end local v10    # "i":I
    .end local v14    # "launchIntent":Landroid/content/Intent;
    :pswitch_4
    const/16 v18, 0x0

    .line 888
    .restart local v18    # "numDone":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 890
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_9
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v10, v0, :cond_12

    const/16 v24, 0x2

    move/from16 v0, v18

    move/from16 v1, v24

    if-ge v0, v1, :cond_12

    .line 891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .line 892
    .restart local v7    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    iget-object v0, v7, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    if-eqz v24, :cond_f

    iget-boolean v0, v7, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->mounted:Z

    move/from16 v24, v0

    if-eqz v24, :cond_f

    .line 890
    :goto_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 893
    :cond_f
    monitor-enter v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 894
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->ensureIconLocked(Landroid/content/Context;Landroid/content/pm/PackageManager;)Z

    move-result v24

    if-eqz v24, :cond_11

    .line 895
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    move/from16 v24, v0

    if-nez v24, :cond_10

    .line 896
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    move-object/from16 v24, v0

    .line 898
    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    const/16 v27, 0x6

    .line 897
    move-object/from16 v0, v24

    move/from16 v1, v27

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    .line 899
    .restart local v15    # "m":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 901
    .end local v15    # "m":Landroid/os/Message;
    :cond_10
    add-int/lit8 v18, v18, 0x1

    :cond_11
    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_a

    .line 888
    .end local v7    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    :catchall_4
    move-exception v24

    monitor-exit v25

    throw v24

    .line 893
    .restart local v7    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    :catchall_5
    move-exception v24

    :try_start_8
    monitor-exit v7

    throw v24
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .end local v7    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    :cond_12
    monitor-exit v25

    .line 908
    if-lez v18, :cond_13

    .line 909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    invoke-virtual/range {v24 .. v25}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v24

    if-nez v24, :cond_13

    .line 910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    invoke-virtual/range {v24 .. v25}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 913
    :cond_13
    const/16 v24, 0x2

    move/from16 v0, v18

    move/from16 v1, v24

    if-lt v0, v1, :cond_14

    .line 914
    const/16 v24, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 916
    :cond_14
    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 920
    .end local v10    # "i":I
    .end local v18    # "numDone":I
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 922
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    move-object/from16 v24, v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    if-eqz v24, :cond_15

    monitor-exit v25

    .line 924
    return-void

    .line 927
    :cond_15
    :try_start_a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 928
    .local v16, "now":J
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v10, v0, :cond_1b

    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .line 930
    .restart local v7    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    iget-wide v0, v7, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->size:J

    move-wide/from16 v26, v0

    const-wide/16 v28, -0x1

    cmp-long v24, v26, v28

    if-eqz v24, :cond_16

    iget-boolean v0, v7, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->sizeStale:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1a

    .line 931
    :cond_16
    iget-wide v0, v7, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmp-long v24, v26, v28

    if-eqz v24, :cond_17

    .line 932
    iget-wide v0, v7, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x4e20

    sub-long v28, v16, v28

    cmp-long v24, v26, v28

    if-gez v24, :cond_19

    .line 933
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    move/from16 v24, v0

    if-nez v24, :cond_18

    .line 934
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    move-object/from16 v24, v0

    .line 936
    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    const/16 v27, 0x6

    .line 935
    move-object/from16 v0, v24

    move/from16 v1, v27

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    .line 937
    .restart local v15    # "m":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 939
    .end local v15    # "m":Landroid/os/Message;
    :cond_18
    move-wide/from16 v0, v16

    iput-wide v0, v7, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v24, v0

    iget-object v0, v7, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/settings_exlib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    .line 941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v24, v0

    iget-object v0, v7, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/settings_exlib/applications/ApplicationsState;->mCurComputingSizeUserId:I

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mCurComputingSizeUserId:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    move-object/from16 v28, v0

    .line 942
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageSizeInfoAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :cond_19
    monitor-exit v25

    .line 946
    return-void

    .line 928
    :cond_1a
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_b

    .line 949
    .end local v7    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    :cond_1b
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    move-object/from16 v24, v0

    const/16 v26, 0x5

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v24

    if-nez v24, :cond_1c

    .line 950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    move-object/from16 v24, v0

    const/16 v26, 0x5

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 951
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    move-object/from16 v24, v0

    .line 953
    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    const/16 v27, 0x6

    .line 952
    move-object/from16 v0, v24

    move/from16 v1, v27

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    .line 954
    .restart local v15    # "m":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .end local v15    # "m":Landroid/os/Message;
    :cond_1c
    monitor-exit v25

    goto/16 :goto_2

    .line 920
    .end local v10    # "i":I
    .end local v16    # "now":J
    :catchall_6
    move-exception v24

    monitor-exit v25

    throw v24

    .line 765
    .restart local v21    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$Session;>;"
    :catchall_7
    move-exception v24

    move-object/from16 v20, v21

    .end local v21    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$Session;>;"
    .local v20, "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$Session;>;"
    goto/16 :goto_1

    .line 777
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
