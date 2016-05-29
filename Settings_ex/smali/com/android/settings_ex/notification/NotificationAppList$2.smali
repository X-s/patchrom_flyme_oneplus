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
    .line 482
    iput-object p1, p0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 35

    .prologue
    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    move-object/from16 v29, v0

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mRows:Landroid/util/ArrayMap;
    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/notification/NotificationAppList;->access$400(Lcom/android/settings_ex/notification/NotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v30

    monitor-enter v30

    .line 486
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    .line 487
    .local v26, "start":J
    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->DEBUG:Z
    invoke-static {}, Lcom/android/settings_ex/notification/NotificationAppList;->access$500()Z

    move-result v29

    if-eqz v29, :cond_0

    const-string v29, "NotificationAppList"

    const-string v31, "Collecting apps..."

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    move-object/from16 v29, v0

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mRows:Landroid/util/ArrayMap;
    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/notification/NotificationAppList;->access$400(Lcom/android/settings_ex/notification/NotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/util/ArrayMap;->clear()V

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    move-object/from16 v29, v0

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mSortedRows:Ljava/util/ArrayList;
    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/notification/NotificationAppList;->access$600(Lcom/android/settings_ex/notification/NotificationAppList;)Ljava/util/ArrayList;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->clear()V

    .line 492
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 494
    .local v12, "appInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    move-object/from16 v29, v0

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mLauncherApps:Landroid/content/pm/LauncherApps;
    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/notification/NotificationAppList;->access$700(Lcom/android/settings_ex/notification/NotificationAppList;)Landroid/content/pm/LauncherApps;

    move-result-object v29

    const/16 v31, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v20

    .line 497
    .local v20, "lais":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->DEBUG:Z
    invoke-static {}, Lcom/android/settings_ex/notification/NotificationAppList;->access$500()Z

    move-result v29

    if-eqz v29, :cond_1

    const-string v29, "NotificationAppList"

    const-string v31, "  launchable activities:"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_1
    const/4 v11, 0x0

    .line 500
    .local v11, "WeChatInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v9, 0x0

    .line 501
    .local v9, "QQInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v8, 0x0

    .line 502
    .local v8, "PhoneInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v7, 0x0

    .line 504
    .local v7, "MmsInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v4, 0x0

    .line 508
    .local v4, "CalendarInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v6, 0x0

    .line 511
    .local v6, "MailInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v5, 0x0

    .line 513
    .local v5, "DeskClockInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v10, 0x0

    .line 515
    .local v10, "TestInfo":Landroid/content/pm/ApplicationInfo;
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/pm/LauncherActivityInfo;

    .line 526
    .local v19, "lai":Landroid/content/pm/LauncherActivityInfo;
    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/LauncherActivityInfo;->getName()Ljava/lang/String;

    move-result-object v29

    const-string v31, "com.android.dialer"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_2

    .line 527
    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-interface {v12, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 528
    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    goto :goto_0

    .line 529
    :cond_2
    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/LauncherActivityInfo;->getName()Ljava/lang/String;

    move-result-object v29

    const-string v31, "com.android.mms"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 530
    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-interface {v12, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 531
    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    goto :goto_0

    .line 533
    :cond_3
    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/LauncherActivityInfo;->getName()Ljava/lang/String;

    move-result-object v29

    const-string v31, "com.oneplus.calendar"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_4

    .line 534
    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-interface {v12, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 535
    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    goto :goto_0

    .line 543
    :cond_4
    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/LauncherActivityInfo;->getName()Ljava/lang/String;

    move-result-object v29

    const-string v31, "com.oneplus.deskclock"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_5

    .line 544
    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-interface {v12, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 545
    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    goto/16 :goto_0

    .line 548
    :cond_5
    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 675
    .end local v4    # "CalendarInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "DeskClockInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "MailInfo":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "MmsInfo":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "PhoneInfo":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "QQInfo":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "TestInfo":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "WeChatInfo":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "appInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v19    # "lai":Landroid/content/pm/LauncherActivityInfo;
    .end local v20    # "lais":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    .end local v26    # "start":J
    :catchall_0
    move-exception v29

    monitor-exit v30
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v29

    .line 552
    .restart local v4    # "CalendarInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "DeskClockInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v6    # "MailInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v7    # "MmsInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v8    # "PhoneInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v9    # "QQInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v10    # "TestInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v11    # "WeChatInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v12    # "appInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v16    # "i$":Ljava/util/Iterator;
    .restart local v20    # "lais":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    .restart local v26    # "start":J
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    move-object/from16 v29, v0

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mPM:Landroid/content/pm/PackageManager;
    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/notification/NotificationAppList;->access$800(Lcom/android/settings_ex/notification/NotificationAppList;)Landroid/content/pm/PackageManager;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/notification/NotificationAppList;->queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v22

    .line 554
    .local v22, "resolvedConfigActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->DEBUG:Z
    invoke-static {}, Lcom/android/settings_ex/notification/NotificationAppList;->access$500()Z

    move-result v29

    if-eqz v29, :cond_7

    const-string v29, "NotificationAppList"

    const-string v31, "  config activities:"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_7
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_9

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/ResolveInfo;

    .line 556
    .local v23, "ri":Landroid/content/pm/ResolveInfo;
    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->DEBUG:Z
    invoke-static {}, Lcom/android/settings_ex/notification/NotificationAppList;->access$500()Z

    move-result v29

    if-eqz v29, :cond_8

    const-string v29, "NotificationAppList"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "    "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "/"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_8
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 561
    .end local v23    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_9
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_a
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ApplicationInfo;

    .line 562
    .local v17, "info":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 563
    .local v18, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    move-object/from16 v29, v0

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mRows:Landroid/util/ArrayMap;
    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/notification/NotificationAppList;->access$400(Lcom/android/settings_ex/notification/NotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_a

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    move-object/from16 v29, v0

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mPM:Landroid/content/pm/PackageManager;
    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/notification/NotificationAppList;->access$800(Lcom/android/settings_ex/notification/NotificationAppList;)Landroid/content/pm/PackageManager;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    move-object/from16 v31, v0

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mBackend:Lcom/android/settings_ex/notification/NotificationAppList$Backend;
    invoke-static/range {v31 .. v31}, Lcom/android/settings_ex/notification/NotificationAppList;->access$900(Lcom/android/settings_ex/notification/NotificationAppList;)Lcom/android/settings_ex/notification/NotificationAppList$Backend;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/notification/NotificationAppList;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/android/settings_ex/notification/NotificationAppList$Backend;)Lcom/android/settings_ex/notification/NotificationAppList$AppRow;

    move-result-object v24

    .line 569
    .local v24, "row":Lcom/android/settings_ex/notification/NotificationAppList$AppRow;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    move-object/from16 v29, v0

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mRows:Landroid/util/ArrayMap;
    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/notification/NotificationAppList;->access$400(Lcom/android/settings_ex/notification/NotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 573
    .end local v17    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v18    # "key":Ljava/lang/String;
    .end local v24    # "row":Lcom/android/settings_ex/notification/NotificationAppList$AppRow;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    move-object/from16 v29, v0

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mPM:Landroid/content/pm/PackageManager;
    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/notification/NotificationAppList;->access$800(Lcom/android/settings_ex/notification/NotificationAppList;)Landroid/content/pm/PackageManager;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    move-object/from16 v31, v0

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mRows:Landroid/util/ArrayMap;
    invoke-static/range {v31 .. v31}, Lcom/android/settings_ex/notification/NotificationAppList;->access$400(Lcom/android/settings_ex/notification/NotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/notification/NotificationAppList;->applyConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;Ljava/util/List;)V

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    move-object/from16 v29, v0

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mSortedRows:Ljava/util/ArrayList;
    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/notification/NotificationAppList;->access$600(Lcom/android/settings_ex/notification/NotificationAppList;)Ljava/util/ArrayList;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    move-object/from16 v31, v0

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mRows:Landroid/util/ArrayMap;
    invoke-static/range {v31 .. v31}, Lcom/android/settings_ex/notification/NotificationAppList;->access$400(Lcom/android/settings_ex/notification/NotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    move-object/from16 v29, v0

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mSortedRows:Ljava/util/ArrayList;
    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/notification/NotificationAppList;->access$600(Lcom/android/settings_ex/notification/NotificationAppList;)Ljava/util/ArrayList;

    move-result-object v29

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mRowComparator:Ljava/util/Comparator;
    invoke-static {}, Lcom/android/settings_ex/notification/NotificationAppList;->access$1000()Ljava/util/Comparator;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    move-object/from16 v29, v0

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mSortedRows:Ljava/util/ArrayList;
    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/notification/NotificationAppList;->access$600(Lcom/android/settings_ex/notification/NotificationAppList;)Ljava/util/ArrayList;

    move-result-object v31

    monitor-enter v31
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 582
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    move-object/from16 v29, v0

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mSortedRows:Ljava/util/ArrayList;
    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/notification/NotificationAppList;->access$600(Lcom/android/settings_ex/notification/NotificationAppList;)Ljava/util/ArrayList;

    move-result-object v29

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    move-object/from16 v33, v0

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mPM:Landroid/content/pm/PackageManager;
    invoke-static/range {v33 .. v33}, Lcom/android/settings_ex/notification/NotificationAppList;->access$800(Lcom/android/settings_ex/notification/NotificationAppList;)Landroid/content/pm/PackageManager;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    move-object/from16 v34, v0

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mBackend:Lcom/android/settings_ex/notification/NotificationAppList$Backend;
    invoke-static/range {v34 .. v34}, Lcom/android/settings_ex/notification/NotificationAppList;->access$900(Lcom/android/settings_ex/notification/NotificationAppList;)Lcom/android/settings_ex/notification/NotificationAppList$Backend;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-static {v0, v5, v1}, Lcom/android/settings_ex/notification/NotificationAppList;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/android/settings_ex/notification/NotificationAppList$Backend;)Lcom/android/settings_ex/notification/NotificationAppList$AppRow;

    move-result-object v33

    move-object/from16 v0, v29

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 598
    :goto_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    move-object/from16 v29, v0

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mSortedRows:Ljava/util/ArrayList;
    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/notification/NotificationAppList;->access$600(Lcom/android/settings_ex/notification/NotificationAppList;)Ljava/util/ArrayList;

    move-result-object v29

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    move-object/from16 v33, v0

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mPM:Landroid/content/pm/PackageManager;
    invoke-static/range {v33 .. v33}, Lcom/android/settings_ex/notification/NotificationAppList;->access$800(Lcom/android/settings_ex/notification/NotificationAppList;)Landroid/content/pm/PackageManager;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    move-object/from16 v34, v0

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mBackend:Lcom/android/settings_ex/notification/NotificationAppList$Backend;
    invoke-static/range {v34 .. v34}, Lcom/android/settings_ex/notification/NotificationAppList;->access$900(Lcom/android/settings_ex/notification/NotificationAppList;)Lcom/android/settings_ex/notification/NotificationAppList$Backend;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-static {v0, v4, v1}, Lcom/android/settings_ex/notification/NotificationAppList;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/android/settings_ex/notification/NotificationAppList$Backend;)Lcom/android/settings_ex/notification/NotificationAppList$AppRow;

    move-result-object v33

    move-object/from16 v0, v29

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 623
    :goto_4
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    move-object/from16 v29, v0

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mSortedRows:Ljava/util/ArrayList;
    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/notification/NotificationAppList;->access$600(Lcom/android/settings_ex/notification/NotificationAppList;)Ljava/util/ArrayList;

    move-result-object v29

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    move-object/from16 v33, v0

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mPM:Landroid/content/pm/PackageManager;
    invoke-static/range {v33 .. v33}, Lcom/android/settings_ex/notification/NotificationAppList;->access$800(Lcom/android/settings_ex/notification/NotificationAppList;)Landroid/content/pm/PackageManager;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    move-object/from16 v34, v0

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mBackend:Lcom/android/settings_ex/notification/NotificationAppList$Backend;
    invoke-static/range {v34 .. v34}, Lcom/android/settings_ex/notification/NotificationAppList;->access$900(Lcom/android/settings_ex/notification/NotificationAppList;)Lcom/android/settings_ex/notification/NotificationAppList$Backend;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-static {v0, v7, v1}, Lcom/android/settings_ex/notification/NotificationAppList;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/android/settings_ex/notification/NotificationAppList$Backend;)Lcom/android/settings_ex/notification/NotificationAppList$AppRow;

    move-result-object v33

    move-object/from16 v0, v29

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 631
    :goto_5
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    move-object/from16 v29, v0

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mSortedRows:Ljava/util/ArrayList;
    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/notification/NotificationAppList;->access$600(Lcom/android/settings_ex/notification/NotificationAppList;)Ljava/util/ArrayList;

    move-result-object v29

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    move-object/from16 v33, v0

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mPM:Landroid/content/pm/PackageManager;
    invoke-static/range {v33 .. v33}, Lcom/android/settings_ex/notification/NotificationAppList;->access$800(Lcom/android/settings_ex/notification/NotificationAppList;)Landroid/content/pm/PackageManager;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    move-object/from16 v34, v0

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mBackend:Lcom/android/settings_ex/notification/NotificationAppList$Backend;
    invoke-static/range {v34 .. v34}, Lcom/android/settings_ex/notification/NotificationAppList;->access$900(Lcom/android/settings_ex/notification/NotificationAppList;)Lcom/android/settings_ex/notification/NotificationAppList$Backend;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-static {v0, v8, v1}, Lcom/android/settings_ex/notification/NotificationAppList;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/android/settings_ex/notification/NotificationAppList$Backend;)Lcom/android/settings_ex/notification/NotificationAppList$AppRow;

    move-result-object v33

    move-object/from16 v0, v29

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 637
    :goto_6
    :try_start_6
    monitor-exit v31
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 640
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    move-object/from16 v29, v0

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mSections:Ljava/util/ArrayList;
    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/notification/NotificationAppList;->access$1100(Lcom/android/settings_ex/notification/NotificationAppList;)Ljava/util/ArrayList;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->clear()V

    .line 641
    const/16 v25, 0x0

    .line 643
    .local v25, "section":Ljava/lang/String;
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 645
    .local v28, "tempSortedBanned":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/notification/NotificationAppList$AppRow;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    move-object/from16 v29, v0

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mSortedRows:Ljava/util/ArrayList;
    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/notification/NotificationAppList;->access$600(Lcom/android/settings_ex/notification/NotificationAppList;)Ljava/util/ArrayList;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_c
    :goto_7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_e

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;

    .line 646
    .local v21, "r":Lcom/android/settings_ex/notification/NotificationAppList$AppRow;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    move-object/from16 v29, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;->label:Ljava/lang/CharSequence;

    move-object/from16 v31, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    # invokes: Lcom/android/settings_ex/notification/NotificationAppList;->getSection(Ljava/lang/CharSequence;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings_ex/notification/NotificationAppList;->access$1200(Lcom/android/settings_ex/notification/NotificationAppList;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;->section:Ljava/lang/String;

    .line 647
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;->section:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_d

    .line 648
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;->section:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    move-object/from16 v29, v0

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mSections:Ljava/util/ArrayList;
    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/notification/NotificationAppList;->access$1100(Lcom/android/settings_ex/notification/NotificationAppList;)Ljava/util/ArrayList;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    move-object/from16 v29, v0

    const-string v31, "com.android.dialer"

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    move-object/from16 v2, v31

    # invokes: Lcom/android/settings_ex/notification/NotificationAppList;->changePackagePriority(Lcom/android/settings_ex/notification/NotificationAppList$AppRow;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/notification/NotificationAppList;->access$1300(Lcom/android/settings_ex/notification/NotificationAppList;Lcom/android/settings_ex/notification/NotificationAppList$AppRow;Ljava/lang/String;)V

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    move-object/from16 v29, v0

    const-string v31, "com.android.mms"

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    move-object/from16 v2, v31

    # invokes: Lcom/android/settings_ex/notification/NotificationAppList;->changePackagePriority(Lcom/android/settings_ex/notification/NotificationAppList$AppRow;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/notification/NotificationAppList;->access$1300(Lcom/android/settings_ex/notification/NotificationAppList;Lcom/android/settings_ex/notification/NotificationAppList$AppRow;Ljava/lang/String;)V

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    move-object/from16 v29, v0

    const-string v31, "com.oneplus.calendar"

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    move-object/from16 v2, v31

    # invokes: Lcom/android/settings_ex/notification/NotificationAppList;->changePackagePriority(Lcom/android/settings_ex/notification/NotificationAppList$AppRow;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/notification/NotificationAppList;->access$1300(Lcom/android/settings_ex/notification/NotificationAppList;Lcom/android/settings_ex/notification/NotificationAppList$AppRow;Ljava/lang/String;)V

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    move-object/from16 v29, v0

    const-string v31, "com.oneplus.deskclock"

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    move-object/from16 v2, v31

    # invokes: Lcom/android/settings_ex/notification/NotificationAppList;->changePackagePriority(Lcom/android/settings_ex/notification/NotificationAppList$AppRow;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/notification/NotificationAppList;->access$1300(Lcom/android/settings_ex/notification/NotificationAppList;Lcom/android/settings_ex/notification/NotificationAppList$AppRow;Ljava/lang/String;)V

    .line 664
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;->banned:Z

    move/from16 v29, v0

    if-eqz v29, :cond_c

    .line 665
    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_7

    .line 583
    .end local v21    # "r":Lcom/android/settings_ex/notification/NotificationAppList$AppRow;
    .end local v25    # "section":Ljava/lang/String;
    .end local v28    # "tempSortedBanned":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/notification/NotificationAppList$AppRow;>;"
    :catch_0
    move-exception v13

    .line 584
    .local v13, "e":Ljava/lang/NullPointerException;
    :try_start_8
    invoke-virtual {v13}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_3

    .line 637
    .end local v13    # "e":Ljava/lang/NullPointerException;
    :catchall_1
    move-exception v29

    monitor-exit v31
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v29
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 585
    :catch_1
    move-exception v13

    .line 586
    .local v13, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_a
    invoke-virtual {v13}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto/16 :goto_3

    .line 599
    .end local v13    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_2
    move-exception v13

    .line 600
    .local v13, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v13}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_4

    .line 601
    .end local v13    # "e":Ljava/lang/NullPointerException;
    :catch_3
    move-exception v13

    .line 602
    .local v13, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v13}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto/16 :goto_4

    .line 624
    .end local v13    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_4
    move-exception v13

    .line 625
    .local v13, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v13}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_5

    .line 626
    .end local v13    # "e":Ljava/lang/NullPointerException;
    :catch_5
    move-exception v13

    .line 627
    .local v13, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v13}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto/16 :goto_5

    .line 632
    .end local v13    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_6
    move-exception v13

    .line 633
    .local v13, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v13}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_6

    .line 634
    .end local v13    # "e":Ljava/lang/NullPointerException;
    :catch_7
    move-exception v13

    .line 635
    .local v13, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v13}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_6

    .line 668
    .end local v13    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v25    # "section":Ljava/lang/String;
    .restart local v28    # "tempSortedBanned":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/notification/NotificationAppList$AppRow;>;"
    :cond_e
    :try_start_b
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_8
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_f

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;

    .line 669
    .restart local v21    # "r":Lcom/android/settings_ex/notification/NotificationAppList$AppRow;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    move-object/from16 v29, v0

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mSortedRows:Ljava/util/ArrayList;
    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/notification/NotificationAppList;->access$600(Lcom/android/settings_ex/notification/NotificationAppList;)Ljava/util/ArrayList;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    move-object/from16 v29, v0

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mSortedRows:Ljava/util/ArrayList;
    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/notification/NotificationAppList;->access$600(Lcom/android/settings_ex/notification/NotificationAppList;)Ljava/util/ArrayList;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    move-object/from16 v31, v0

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mSortedRows:Ljava/util/ArrayList;
    invoke-static/range {v31 .. v31}, Lcom/android/settings_ex/notification/NotificationAppList;->access$600(Lcom/android/settings_ex/notification/NotificationAppList;)Ljava/util/ArrayList;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    move-object/from16 v0, v29

    move/from16 v1, v31

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_8

    .line 672
    .end local v21    # "r":Lcom/android/settings_ex/notification/NotificationAppList$AppRow;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    move-object/from16 v29, v0

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mHandler:Landroid/os/Handler;
    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/notification/NotificationAppList;->access$1500(Lcom/android/settings_ex/notification/NotificationAppList;)Landroid/os/Handler;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    move-object/from16 v31, v0

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mRefreshAppsListRunnable:Ljava/lang/Runnable;
    invoke-static/range {v31 .. v31}, Lcom/android/settings_ex/notification/NotificationAppList;->access$1400(Lcom/android/settings_ex/notification/NotificationAppList;)Ljava/lang/Runnable;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 673
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v32

    sub-long v14, v32, v26

    .line 674
    .local v14, "elapsed":J
    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->DEBUG:Z
    invoke-static {}, Lcom/android/settings_ex/notification/NotificationAppList;->access$500()Z

    move-result v29

    if-eqz v29, :cond_10

    const-string v29, "NotificationAppList"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Collected "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationAppList$2;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    move-object/from16 v32, v0

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mRows:Landroid/util/ArrayMap;
    invoke-static/range {v32 .. v32}, Lcom/android/settings_ex/notification/NotificationAppList;->access$400(Lcom/android/settings_ex/notification/NotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/util/ArrayMap;->size()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " apps in "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "ms"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :cond_10
    monitor-exit v30
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 676
    return-void
.end method
