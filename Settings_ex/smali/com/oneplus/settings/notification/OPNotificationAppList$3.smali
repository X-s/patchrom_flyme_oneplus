.class Lcom/oneplus/settings/notification/OPNotificationAppList$3;
.super Ljava/lang/Object;
.source "OPNotificationAppList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/notification/OPNotificationAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/notification/OPNotificationAppList;)V
    .locals 0

    .prologue
    .line 591
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 35

    .prologue
    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    move-object/from16 v29, v0

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->mRows:Landroid/util/ArrayMap;
    invoke-static/range {v29 .. v29}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$500(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v30

    monitor-enter v30

    .line 595
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    .line 596
    .local v26, "start":J
    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->DEBUG:Z
    invoke-static {}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$600()Z

    move-result v29

    if-eqz v29, :cond_0

    const-string v29, "NotificationAppList"

    const-string v31, "Collecting apps..."

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    move-object/from16 v29, v0

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->mRows:Landroid/util/ArrayMap;
    invoke-static/range {v29 .. v29}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$500(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/util/ArrayMap;->clear()V

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    move-object/from16 v29, v0

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->mSortedRows:Ljava/util/ArrayList;
    invoke-static/range {v29 .. v29}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$700(Lcom/oneplus/settings/notification/OPNotificationAppList;)Ljava/util/ArrayList;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->clear()V

    .line 601
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 603
    .local v12, "appInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    move-object/from16 v29, v0

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->mLauncherApps:Landroid/content/pm/LauncherApps;
    invoke-static/range {v29 .. v29}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$800(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/content/pm/LauncherApps;

    move-result-object v29

    const/16 v31, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v20

    .line 606
    .local v20, "lais":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->DEBUG:Z
    invoke-static {}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$600()Z

    move-result v29

    if-eqz v29, :cond_1

    const-string v29, "NotificationAppList"

    const-string v31, "  launchable activities:"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_1
    const/4 v11, 0x0

    .line 609
    .local v11, "WeChatInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v9, 0x0

    .line 610
    .local v9, "QQInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v8, 0x0

    .line 611
    .local v8, "PhoneInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v7, 0x0

    .line 613
    .local v7, "MmsInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v4, 0x0

    .line 617
    .local v4, "CalendarInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v6, 0x0

    .line 620
    .local v6, "MailInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v5, 0x0

    .line 622
    .local v5, "DeskClockInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v10, 0x0

    .line 624
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

    .line 635
    .local v19, "lai":Landroid/content/pm/LauncherActivityInfo;
    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/LauncherActivityInfo;->getName()Ljava/lang/String;

    move-result-object v29

    const-string v31, "com.android.contacts"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_2

    .line 636
    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-interface {v12, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 637
    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    goto :goto_0

    .line 638
    :cond_2
    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/LauncherActivityInfo;->getName()Ljava/lang/String;

    move-result-object v29

    const-string v31, "com.android.mms"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 639
    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-interface {v12, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 640
    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    goto :goto_0

    .line 642
    :cond_3
    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/LauncherActivityInfo;->getName()Ljava/lang/String;

    move-result-object v29

    const-string v31, "com.oneplus.calendar"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_4

    .line 643
    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-interface {v12, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 644
    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    goto :goto_0

    .line 652
    :cond_4
    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/LauncherActivityInfo;->getName()Ljava/lang/String;

    move-result-object v29

    const-string v31, "com.oneplus.deskclock"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_5

    .line 653
    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-interface {v12, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 654
    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    goto/16 :goto_0

    .line 657
    :cond_5
    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 785
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

    .line 661
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

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    move-object/from16 v29, v0

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->mPM:Landroid/content/pm/PackageManager;
    invoke-static/range {v29 .. v29}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$900(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/content/pm/PackageManager;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/oneplus/settings/notification/OPNotificationAppList;->queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v22

    .line 663
    .local v22, "resolvedConfigActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->DEBUG:Z
    invoke-static {}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$600()Z

    move-result v29

    if-eqz v29, :cond_7

    const-string v29, "NotificationAppList"

    const-string v31, "  config activities:"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
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

    .line 665
    .local v23, "ri":Landroid/content/pm/ResolveInfo;
    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->DEBUG:Z
    invoke-static {}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$600()Z

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

    .line 667
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

    .line 670
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

    .line 671
    .local v17, "info":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 672
    .local v18, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    move-object/from16 v29, v0

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->mRows:Landroid/util/ArrayMap;
    invoke-static/range {v29 .. v29}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$500(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_a

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    move-object/from16 v29, v0

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->mPM:Landroid/content/pm/PackageManager;
    invoke-static/range {v29 .. v29}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$900(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/content/pm/PackageManager;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    move-object/from16 v31, v0

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->mBackend:Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;
    invoke-static/range {v31 .. v31}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$1000(Lcom/oneplus/settings/notification/OPNotificationAppList;)Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/oneplus/settings/notification/OPNotificationAppList;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;)Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;

    move-result-object v24

    .line 678
    .local v24, "row":Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    move-object/from16 v29, v0

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->mRows:Landroid/util/ArrayMap;
    invoke-static/range {v29 .. v29}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$500(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 682
    .end local v17    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v18    # "key":Ljava/lang/String;
    .end local v24    # "row":Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    move-object/from16 v29, v0

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->mPM:Landroid/content/pm/PackageManager;
    invoke-static/range {v29 .. v29}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$900(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/content/pm/PackageManager;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    move-object/from16 v31, v0

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->mRows:Landroid/util/ArrayMap;
    invoke-static/range {v31 .. v31}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$500(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/oneplus/settings/notification/OPNotificationAppList;->applyConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;Ljava/util/List;)V

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    move-object/from16 v29, v0

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->mSortedRows:Ljava/util/ArrayList;
    invoke-static/range {v29 .. v29}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$700(Lcom/oneplus/settings/notification/OPNotificationAppList;)Ljava/util/ArrayList;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    move-object/from16 v31, v0

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->mRows:Landroid/util/ArrayMap;
    invoke-static/range {v31 .. v31}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$500(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    move-object/from16 v29, v0

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->mSortedRows:Ljava/util/ArrayList;
    invoke-static/range {v29 .. v29}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$700(Lcom/oneplus/settings/notification/OPNotificationAppList;)Ljava/util/ArrayList;

    move-result-object v29

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->mRowComparator:Ljava/util/Comparator;
    invoke-static {}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$1100()Ljava/util/Comparator;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    move-object/from16 v29, v0

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->mSortedRows:Ljava/util/ArrayList;
    invoke-static/range {v29 .. v29}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$700(Lcom/oneplus/settings/notification/OPNotificationAppList;)Ljava/util/ArrayList;

    move-result-object v31

    monitor-enter v31
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 691
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    move-object/from16 v29, v0

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->mSortedRows:Ljava/util/ArrayList;
    invoke-static/range {v29 .. v29}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$700(Lcom/oneplus/settings/notification/OPNotificationAppList;)Ljava/util/ArrayList;

    move-result-object v29

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    move-object/from16 v33, v0

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->mPM:Landroid/content/pm/PackageManager;
    invoke-static/range {v33 .. v33}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$900(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/content/pm/PackageManager;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    move-object/from16 v34, v0

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->mBackend:Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;
    invoke-static/range {v34 .. v34}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$1000(Lcom/oneplus/settings/notification/OPNotificationAppList;)Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-static {v0, v5, v1}, Lcom/oneplus/settings/notification/OPNotificationAppList;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;)Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;

    move-result-object v33

    move-object/from16 v0, v29

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 707
    :goto_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    move-object/from16 v29, v0

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->mSortedRows:Ljava/util/ArrayList;
    invoke-static/range {v29 .. v29}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$700(Lcom/oneplus/settings/notification/OPNotificationAppList;)Ljava/util/ArrayList;

    move-result-object v29

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    move-object/from16 v33, v0

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->mPM:Landroid/content/pm/PackageManager;
    invoke-static/range {v33 .. v33}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$900(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/content/pm/PackageManager;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    move-object/from16 v34, v0

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->mBackend:Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;
    invoke-static/range {v34 .. v34}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$1000(Lcom/oneplus/settings/notification/OPNotificationAppList;)Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-static {v0, v4, v1}, Lcom/oneplus/settings/notification/OPNotificationAppList;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;)Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;

    move-result-object v33

    move-object/from16 v0, v29

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 732
    :goto_4
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    move-object/from16 v29, v0

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->mSortedRows:Ljava/util/ArrayList;
    invoke-static/range {v29 .. v29}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$700(Lcom/oneplus/settings/notification/OPNotificationAppList;)Ljava/util/ArrayList;

    move-result-object v29

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    move-object/from16 v33, v0

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->mPM:Landroid/content/pm/PackageManager;
    invoke-static/range {v33 .. v33}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$900(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/content/pm/PackageManager;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    move-object/from16 v34, v0

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->mBackend:Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;
    invoke-static/range {v34 .. v34}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$1000(Lcom/oneplus/settings/notification/OPNotificationAppList;)Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-static {v0, v7, v1}, Lcom/oneplus/settings/notification/OPNotificationAppList;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;)Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;

    move-result-object v33

    move-object/from16 v0, v29

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 740
    :goto_5
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    move-object/from16 v29, v0

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->mSortedRows:Ljava/util/ArrayList;
    invoke-static/range {v29 .. v29}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$700(Lcom/oneplus/settings/notification/OPNotificationAppList;)Ljava/util/ArrayList;

    move-result-object v29

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    move-object/from16 v33, v0

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->mPM:Landroid/content/pm/PackageManager;
    invoke-static/range {v33 .. v33}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$900(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/content/pm/PackageManager;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    move-object/from16 v34, v0

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->mBackend:Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;
    invoke-static/range {v34 .. v34}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$1000(Lcom/oneplus/settings/notification/OPNotificationAppList;)Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-static {v0, v8, v1}, Lcom/oneplus/settings/notification/OPNotificationAppList;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;)Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;

    move-result-object v33

    move-object/from16 v0, v29

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 746
    :goto_6
    :try_start_6
    monitor-exit v31
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 749
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    move-object/from16 v29, v0

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->mSections:Ljava/util/ArrayList;
    invoke-static/range {v29 .. v29}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$1200(Lcom/oneplus/settings/notification/OPNotificationAppList;)Ljava/util/ArrayList;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->clear()V

    .line 750
    const/16 v25, 0x0

    .line 752
    .local v25, "section":Ljava/lang/String;
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 754
    .local v28, "tempSortedBanned":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    move-object/from16 v29, v0

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->mSortedRows:Ljava/util/ArrayList;
    invoke-static/range {v29 .. v29}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$700(Lcom/oneplus/settings/notification/OPNotificationAppList;)Ljava/util/ArrayList;

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

    check-cast v21, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;

    .line 755
    .local v21, "r":Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    move-object/from16 v29, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->label:Ljava/lang/CharSequence;

    move-object/from16 v31, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    # invokes: Lcom/oneplus/settings/notification/OPNotificationAppList;->getSection(Ljava/lang/CharSequence;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$1300(Lcom/oneplus/settings/notification/OPNotificationAppList;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->section:Ljava/lang/String;

    .line 756
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->section:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_d

    .line 757
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->section:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    move-object/from16 v29, v0

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->mSections:Ljava/util/ArrayList;
    invoke-static/range {v29 .. v29}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$1200(Lcom/oneplus/settings/notification/OPNotificationAppList;)Ljava/util/ArrayList;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    move-object/from16 v29, v0

    const-string v31, "com.android.contacts"

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    move-object/from16 v2, v31

    # invokes: Lcom/oneplus/settings/notification/OPNotificationAppList;->changePackagePriority(Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$1400(Lcom/oneplus/settings/notification/OPNotificationAppList;Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;Ljava/lang/String;)V

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    move-object/from16 v29, v0

    const-string v31, "com.android.mms"

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    move-object/from16 v2, v31

    # invokes: Lcom/oneplus/settings/notification/OPNotificationAppList;->changePackagePriority(Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$1400(Lcom/oneplus/settings/notification/OPNotificationAppList;Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;Ljava/lang/String;)V

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    move-object/from16 v29, v0

    const-string v31, "com.oneplus.calendar"

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    move-object/from16 v2, v31

    # invokes: Lcom/oneplus/settings/notification/OPNotificationAppList;->changePackagePriority(Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$1400(Lcom/oneplus/settings/notification/OPNotificationAppList;Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;Ljava/lang/String;)V

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    move-object/from16 v29, v0

    const-string v31, "com.oneplus.deskclock"

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    move-object/from16 v2, v31

    # invokes: Lcom/oneplus/settings/notification/OPNotificationAppList;->changePackagePriority(Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$1400(Lcom/oneplus/settings/notification/OPNotificationAppList;Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;Ljava/lang/String;)V

    .line 773
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->banned:Z

    move/from16 v29, v0

    if-eqz v29, :cond_c

    .line 774
    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_7

    .line 692
    .end local v21    # "r":Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;
    .end local v25    # "section":Ljava/lang/String;
    .end local v28    # "tempSortedBanned":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;>;"
    :catch_0
    move-exception v13

    .line 693
    .local v13, "e":Ljava/lang/NullPointerException;
    :try_start_8
    invoke-virtual {v13}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_3

    .line 746
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

    .line 694
    :catch_1
    move-exception v13

    .line 695
    .local v13, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_a
    invoke-virtual {v13}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto/16 :goto_3

    .line 708
    .end local v13    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_2
    move-exception v13

    .line 709
    .local v13, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v13}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_4

    .line 710
    .end local v13    # "e":Ljava/lang/NullPointerException;
    :catch_3
    move-exception v13

    .line 711
    .local v13, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v13}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto/16 :goto_4

    .line 733
    .end local v13    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_4
    move-exception v13

    .line 734
    .local v13, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v13}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_5

    .line 735
    .end local v13    # "e":Ljava/lang/NullPointerException;
    :catch_5
    move-exception v13

    .line 736
    .local v13, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v13}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto/16 :goto_5

    .line 741
    .end local v13    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_6
    move-exception v13

    .line 742
    .local v13, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v13}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_6

    .line 743
    .end local v13    # "e":Ljava/lang/NullPointerException;
    :catch_7
    move-exception v13

    .line 744
    .local v13, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v13}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_6

    .line 777
    .end local v13    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v25    # "section":Ljava/lang/String;
    .restart local v28    # "tempSortedBanned":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;>;"
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

    check-cast v21, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;

    .line 778
    .restart local v21    # "r":Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    move-object/from16 v29, v0

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->mSortedRows:Ljava/util/ArrayList;
    invoke-static/range {v29 .. v29}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$700(Lcom/oneplus/settings/notification/OPNotificationAppList;)Ljava/util/ArrayList;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    move-object/from16 v29, v0

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->mSortedRows:Ljava/util/ArrayList;
    invoke-static/range {v29 .. v29}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$700(Lcom/oneplus/settings/notification/OPNotificationAppList;)Ljava/util/ArrayList;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    move-object/from16 v31, v0

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->mSortedRows:Ljava/util/ArrayList;
    invoke-static/range {v31 .. v31}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$700(Lcom/oneplus/settings/notification/OPNotificationAppList;)Ljava/util/ArrayList;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    move-object/from16 v0, v29

    move/from16 v1, v31

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_8

    .line 781
    .end local v21    # "r":Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    move-object/from16 v29, v0

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->mHandler:Landroid/os/Handler;
    invoke-static/range {v29 .. v29}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$1500(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/os/Handler;

    move-result-object v29

    const/16 v31, 0x2

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    move-object/from16 v29, v0

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->mHandler:Landroid/os/Handler;
    invoke-static/range {v29 .. v29}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$1500(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/os/Handler;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    move-object/from16 v31, v0

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->mRefreshAppsListRunnable:Ljava/lang/Runnable;
    invoke-static/range {v31 .. v31}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$1600(Lcom/oneplus/settings/notification/OPNotificationAppList;)Ljava/lang/Runnable;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 783
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v32

    sub-long v14, v32, v26

    .line 784
    .local v14, "elapsed":J
    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->DEBUG:Z
    invoke-static {}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$600()Z

    move-result v29

    if-eqz v29, :cond_10

    const-string v29, "NotificationAppList"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Collected "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    move-object/from16 v32, v0

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->mRows:Landroid/util/ArrayMap;
    invoke-static/range {v32 .. v32}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$500(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/util/ArrayMap;

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

    .line 785
    :cond_10
    monitor-exit v30
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 786
    return-void
.end method
