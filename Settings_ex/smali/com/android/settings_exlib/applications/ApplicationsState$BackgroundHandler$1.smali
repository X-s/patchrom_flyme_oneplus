.class Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler$1;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;


# direct methods
.method constructor <init>(Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;)V
    .locals 0

    .prologue
    .line 924
    iput-object p1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 18
    .param p1, "stats"    # Landroid/content/pm/PackageStats;
    .param p2, "succeeded"    # Z

    .prologue
    .line 926
    const/4 v10, 0x0

    .line 927
    .local v10, "sizeChanged":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    iget-object v12, v12, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v13, v12, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v13

    .line 929
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    iget-object v12, v12, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v12, v12, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/content/pm/PackageStats;->userHandle:I

    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    .line 930
    .local v11, "userMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    if-nez v11, :cond_0

    .line 932
    monitor-exit v13

    .line 983
    :goto_0
    return-void

    .line 934
    :cond_0
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .line 935
    .local v2, "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    if-eqz v2, :cond_3

    .line 936
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 937
    const/4 v12, 0x0

    :try_start_1
    iput-boolean v12, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->sizeStale:Z

    .line 938
    const-wide/16 v14, 0x0

    iput-wide v14, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    .line 939
    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/content/pm/PackageStats;->externalCodeSize:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/content/pm/PackageStats;->externalObbSize:J

    move-wide/from16 v16, v0

    add-long v4, v14, v16

    .line 941
    .local v4, "externalCodeSize":J
    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/content/pm/PackageStats;->externalDataSize:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/content/pm/PackageStats;->externalMediaSize:J

    move-wide/from16 v16, v0

    add-long v6, v14, v16

    .line 943
    .local v6, "externalDataSize":J
    add-long v14, v4, v6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    iget-object v12, v12, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v0, p1

    # invokes: Lcom/android/settings_exlib/applications/ApplicationsState;->getTotalInternalSize(Landroid/content/pm/PackageStats;)J
    invoke-static {v12, v0}, Lcom/android/settings_exlib/applications/ApplicationsState;->access$200(Lcom/android/settings_exlib/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J

    move-result-wide v16

    add-long v8, v14, v16

    .line 945
    .local v8, "newSize":J
    iget-wide v14, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v12, v14, v8

    if-nez v12, :cond_1

    iget-wide v14, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->cacheSize:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/content/pm/PackageStats;->cacheSize:J

    move-wide/from16 v16, v0

    cmp-long v12, v14, v16

    if-nez v12, :cond_1

    iget-wide v14, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->codeSize:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/content/pm/PackageStats;->codeSize:J

    move-wide/from16 v16, v0

    cmp-long v12, v14, v16

    if-nez v12, :cond_1

    iget-wide v14, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->dataSize:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/content/pm/PackageStats;->dataSize:J

    move-wide/from16 v16, v0

    cmp-long v12, v14, v16

    if-nez v12, :cond_1

    iget-wide v14, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    cmp-long v12, v14, v4

    if-nez v12, :cond_1

    iget-wide v14, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->externalDataSize:J

    cmp-long v12, v14, v6

    if-nez v12, :cond_1

    iget-wide v14, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->externalCacheSize:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/content/pm/PackageStats;->externalCacheSize:J

    move-wide/from16 v16, v0

    cmp-long v12, v14, v16

    if-eqz v12, :cond_2

    .line 952
    :cond_1
    iput-wide v8, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->size:J

    .line 953
    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/content/pm/PackageStats;->cacheSize:J

    iput-wide v14, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->cacheSize:J

    .line 954
    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/content/pm/PackageStats;->codeSize:J

    iput-wide v14, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->codeSize:J

    .line 955
    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/content/pm/PackageStats;->dataSize:J

    iput-wide v14, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->dataSize:J

    .line 956
    iput-wide v4, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    .line 957
    iput-wide v6, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->externalDataSize:J

    .line 958
    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/content/pm/PackageStats;->externalCacheSize:J

    iput-wide v14, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->externalCacheSize:J

    .line 959
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    iget-object v12, v12, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-wide v14, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->size:J

    # invokes: Lcom/android/settings_exlib/applications/ApplicationsState;->getSizeStr(J)Ljava/lang/String;
    invoke-static {v12, v14, v15}, Lcom/android/settings_exlib/applications/ApplicationsState;->access$300(Lcom/android/settings_exlib/applications/ApplicationsState;J)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->sizeStr:Ljava/lang/String;

    .line 960
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    iget-object v12, v12, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v0, p1

    # invokes: Lcom/android/settings_exlib/applications/ApplicationsState;->getTotalInternalSize(Landroid/content/pm/PackageStats;)J
    invoke-static {v12, v0}, Lcom/android/settings_exlib/applications/ApplicationsState;->access$200(Lcom/android/settings_exlib/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J

    move-result-wide v14

    iput-wide v14, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->internalSize:J

    .line 961
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    iget-object v12, v12, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-wide v14, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->internalSize:J

    # invokes: Lcom/android/settings_exlib/applications/ApplicationsState;->getSizeStr(J)Ljava/lang/String;
    invoke-static {v12, v14, v15}, Lcom/android/settings_exlib/applications/ApplicationsState;->access$300(Lcom/android/settings_exlib/applications/ApplicationsState;J)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->internalSizeStr:Ljava/lang/String;

    .line 962
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    iget-object v12, v12, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    move-object/from16 v0, p1

    # invokes: Lcom/android/settings_exlib/applications/ApplicationsState;->getTotalExternalSize(Landroid/content/pm/PackageStats;)J
    invoke-static {v12, v0}, Lcom/android/settings_exlib/applications/ApplicationsState;->access$400(Lcom/android/settings_exlib/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J

    move-result-wide v14

    iput-wide v14, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->externalSize:J

    .line 963
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    iget-object v12, v12, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-wide v14, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->externalSize:J

    # invokes: Lcom/android/settings_exlib/applications/ApplicationsState;->getSizeStr(J)Ljava/lang/String;
    invoke-static {v12, v14, v15}, Lcom/android/settings_exlib/applications/ApplicationsState;->access$300(Lcom/android/settings_exlib/applications/ApplicationsState;J)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->externalSizeStr:Ljava/lang/String;

    .line 966
    const/4 v10, 0x1

    .line 968
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 969
    if-eqz v10, :cond_3

    .line 970
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    iget-object v12, v12, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v12, v12, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    const/4 v14, 0x4

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v14, v15}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 972
    .local v3, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    iget-object v12, v12, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v12, v12, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v12, v3}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 975
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "externalCodeSize":J
    .end local v6    # "externalDataSize":J
    .end local v8    # "newSize":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    iget-object v12, v12, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v12, v12, Lcom/android/settings_exlib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    iget-object v12, v12, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v12, v12, Lcom/android/settings_exlib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    iget-object v12, v12, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget v12, v12, Lcom/android/settings_exlib/applications/ApplicationsState;->mCurComputingSizeUserId:I

    move-object/from16 v0, p1

    iget v14, v0, Landroid/content/pm/PackageStats;->userHandle:I

    if-ne v12, v14, :cond_4

    .line 978
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    iget-object v12, v12, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    const/4 v14, 0x0

    iput-object v14, v12, Lcom/android/settings_exlib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    .line 979
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    const/4 v14, 0x4

    invoke-virtual {v12, v14}, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 982
    :cond_4
    monitor-exit v13

    goto/16 :goto_0

    .end local v2    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .end local v11    # "userMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v12

    .line 968
    .restart local v2    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .restart local v11    # "userMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    :catchall_1
    move-exception v12

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
