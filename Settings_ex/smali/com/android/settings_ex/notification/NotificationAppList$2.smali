.class Lcom/android/settings_ex/notification/NotificationAppList$2;
.super Ljava/lang/Object;
.source "NotificationAppList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/NotificationAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/NotificationAppList;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/NotificationAppList;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 437
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mRows:Landroid/util/ArrayMap;
    invoke-static {v15}, Lcom/android/settings_ex/notification/NotificationAppList;->access$500(Lcom/android/settings_ex/notification/NotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v18

    monitor-enter v18

    .line 438
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 439
    .local v16, "start":J
    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->DEBUG:Z
    invoke-static {}, Lcom/android/settings_ex/notification/NotificationAppList;->access$600()Z

    move-result v15

    if-eqz v15, :cond_0

    const-string v15, "NotificationAppList"

    const-string v19, "Collecting apps..."

    move-object/from16 v0, v19

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mRows:Landroid/util/ArrayMap;
    invoke-static {v15}, Lcom/android/settings_ex/notification/NotificationAppList;->access$500(Lcom/android/settings_ex/notification/NotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v15

    invoke-virtual {v15}, Landroid/util/ArrayMap;->clear()V

    .line 441
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mSortedRows:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/android/settings_ex/notification/NotificationAppList;->access$700(Lcom/android/settings_ex/notification/NotificationAppList;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 444
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .local v2, "appInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mLauncherApps:Landroid/content/pm/LauncherApps;
    invoke-static {v15}, Lcom/android/settings_ex/notification/NotificationAppList;->access$800(Lcom/android/settings_ex/notification/NotificationAppList;)Landroid/content/pm/LauncherApps;

    move-result-object v15

    const/16 v19, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v9

    .line 449
    .local v9, "lais":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->DEBUG:Z
    invoke-static {}, Lcom/android/settings_ex/notification/NotificationAppList;->access$600()Z

    move-result v15

    if-eqz v15, :cond_1

    const-string v15, "NotificationAppList"

    const-string v19, "  launchable activities:"

    move-object/from16 v0, v19

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_1
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/LauncherActivityInfo;

    .line 451
    .local v8, "lai":Landroid/content/pm/LauncherActivityInfo;
    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->DEBUG:Z
    invoke-static {}, Lcom/android/settings_ex/notification/NotificationAppList;->access$600()Z

    move-result v15

    if-eqz v15, :cond_2

    const-string v15, "NotificationAppList"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "    "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v8}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_2
    invoke-virtual {v8}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 494
    .end local v2    # "appInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v8    # "lai":Landroid/content/pm/LauncherActivityInfo;
    .end local v9    # "lais":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    .end local v16    # "start":J
    :catchall_0
    move-exception v15

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    .line 455
    .restart local v2    # "appInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v9    # "lais":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    .restart local v16    # "start":J
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mPM:Landroid/content/pm/PackageManager;
    invoke-static {v15}, Lcom/android/settings_ex/notification/NotificationAppList;->access$900(Lcom/android/settings_ex/notification/NotificationAppList;)Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-static {v15}, Lcom/android/settings_ex/notification/NotificationAppList;->queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v11

    .line 457
    .local v11, "resolvedConfigActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->DEBUG:Z
    invoke-static {}, Lcom/android/settings_ex/notification/NotificationAppList;->access$600()Z

    move-result v15

    if-eqz v15, :cond_4

    const-string v15, "NotificationAppList"

    const-string v19, "  config activities:"

    move-object/from16 v0, v19

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_4
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 459
    .local v12, "ri":Landroid/content/pm/ResolveInfo;
    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->DEBUG:Z
    invoke-static {}, Lcom/android/settings_ex/notification/NotificationAppList;->access$600()Z

    move-result v15

    if-eqz v15, :cond_5

    const-string v15, "NotificationAppList"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "    "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_5
    iget-object v15, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 464
    .end local v12    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 465
    .local v6, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 466
    .local v7, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mRows:Landroid/util/ArrayMap;
    invoke-static {v15}, Lcom/android/settings_ex/notification/NotificationAppList;->access$500(Lcom/android/settings_ex/notification/NotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v15

    invoke-virtual {v15, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    .line 471
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mPM:Landroid/content/pm/PackageManager;
    invoke-static {v15}, Lcom/android/settings_ex/notification/NotificationAppList;->access$900(Lcom/android/settings_ex/notification/NotificationAppList;)Landroid/content/pm/PackageManager;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    move-object/from16 v19, v0

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mBackend:Lcom/android/settings_ex/notification/NotificationAppList$Backend;
    invoke-static/range {v19 .. v19}, Lcom/android/settings_ex/notification/NotificationAppList;->access$1000(Lcom/android/settings_ex/notification/NotificationAppList;)Lcom/android/settings_ex/notification/NotificationAppList$Backend;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v15, v6, v0}, Lcom/android/settings_ex/notification/NotificationAppList;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/android/settings_ex/notification/NotificationAppList$Backend;)Lcom/android/settings_ex/notification/NotificationAppList$AppRow;

    move-result-object v13

    .line 472
    .local v13, "row":Lcom/android/settings_ex/notification/NotificationAppList$AppRow;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mRows:Landroid/util/ArrayMap;
    invoke-static {v15}, Lcom/android/settings_ex/notification/NotificationAppList;->access$500(Lcom/android/settings_ex/notification/NotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v15

    invoke-virtual {v15, v7, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 476
    .end local v6    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "key":Ljava/lang/String;
    .end local v13    # "row":Lcom/android/settings_ex/notification/NotificationAppList$AppRow;
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mPM:Landroid/content/pm/PackageManager;
    invoke-static {v15}, Lcom/android/settings_ex/notification/NotificationAppList;->access$900(Lcom/android/settings_ex/notification/NotificationAppList;)Landroid/content/pm/PackageManager;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    move-object/from16 v19, v0

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mRows:Landroid/util/ArrayMap;
    invoke-static/range {v19 .. v19}, Lcom/android/settings_ex/notification/NotificationAppList;->access$500(Lcom/android/settings_ex/notification/NotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v15, v0, v11}, Lcom/android/settings_ex/notification/NotificationAppList;->applyConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;Ljava/util/List;)V

    .line 479
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mSortedRows:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/android/settings_ex/notification/NotificationAppList;->access$700(Lcom/android/settings_ex/notification/NotificationAppList;)Ljava/util/ArrayList;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    move-object/from16 v19, v0

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mRows:Landroid/util/ArrayMap;
    invoke-static/range {v19 .. v19}, Lcom/android/settings_ex/notification/NotificationAppList;->access$500(Lcom/android/settings_ex/notification/NotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 480
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mSortedRows:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/android/settings_ex/notification/NotificationAppList;->access$700(Lcom/android/settings_ex/notification/NotificationAppList;)Ljava/util/ArrayList;

    move-result-object v15

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mRowComparator:Ljava/util/Comparator;
    invoke-static {}, Lcom/android/settings_ex/notification/NotificationAppList;->access$1100()Ljava/util/Comparator;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v15, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 482
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mSections:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/android/settings_ex/notification/NotificationAppList;->access$300(Lcom/android/settings_ex/notification/NotificationAppList;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 483
    const/4 v14, 0x0

    .line 484
    .local v14, "section":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mSortedRows:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/android/settings_ex/notification/NotificationAppList;->access$700(Lcom/android/settings_ex/notification/NotificationAppList;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;

    .line 485
    .local v10, "r":Lcom/android/settings_ex/notification/NotificationAppList$AppRow;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    iget-object v0, v10, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;->label:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # invokes: Lcom/android/settings_ex/notification/NotificationAppList;->getSection(Ljava/lang/CharSequence;)Ljava/lang/String;
    invoke-static {v15, v0}, Lcom/android/settings_ex/notification/NotificationAppList;->access$1200(Lcom/android/settings_ex/notification/NotificationAppList;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v10, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;->section:Ljava/lang/String;

    .line 486
    iget-object v15, v10, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;->section:Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9

    .line 487
    iget-object v14, v10, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;->section:Ljava/lang/String;

    .line 488
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mSections:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/android/settings_ex/notification/NotificationAppList;->access$300(Lcom/android/settings_ex/notification/NotificationAppList;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 491
    .end local v10    # "r":Lcom/android/settings_ex/notification/NotificationAppList$AppRow;
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/android/settings_ex/notification/NotificationAppList;->access$1400(Lcom/android/settings_ex/notification/NotificationAppList;)Landroid/os/Handler;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    move-object/from16 v19, v0

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mRefreshAppsListRunnable:Ljava/lang/Runnable;
    invoke-static/range {v19 .. v19}, Lcom/android/settings_ex/notification/NotificationAppList;->access$1300(Lcom/android/settings_ex/notification/NotificationAppList;)Ljava/lang/Runnable;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 492
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    sub-long v4, v20, v16

    .line 493
    .local v4, "elapsed":J
    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->DEBUG:Z
    invoke-static {}, Lcom/android/settings_ex/notification/NotificationAppList;->access$600()Z

    move-result v15

    if-eqz v15, :cond_b

    const-string v15, "NotificationAppList"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Collected "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    move-object/from16 v20, v0

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mRows:Landroid/util/ArrayMap;
    invoke-static/range {v20 .. v20}, Lcom/android/settings_ex/notification/NotificationAppList;->access$500(Lcom/android/settings_ex/notification/NotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/util/ArrayMap;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " apps in "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "ms"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_b
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 495
    return-void
.end method
