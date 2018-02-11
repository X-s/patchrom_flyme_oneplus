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
    .param p1, "this$0"    # Lcom/oneplus/settings/notification/OPNotificationAppList;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 331
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v15}, Lcom/oneplus/settings/notification/OPNotificationAppList;->-get8(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v18

    monitor-enter v18

    .line 332
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 333
    .local v16, "start":J
    const-string/jumbo v15, "OPNotificationAppList"

    const-string/jumbo v19, "Collecting apps..."

    move-object/from16 v0, v19

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v15}, Lcom/oneplus/settings/notification/OPNotificationAppList;->-get8(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v15

    invoke-virtual {v15}, Landroid/util/ArrayMap;->clear()V

    .line 335
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v15}, Lcom/oneplus/settings/notification/OPNotificationAppList;->-get9(Lcom/oneplus/settings/notification/OPNotificationAppList;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 338
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v2, "appInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v15}, Lcom/oneplus/settings/notification/OPNotificationAppList;->-get3(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/content/pm/LauncherApps;

    move-result-object v15

    .line 342
    sget-object v19, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 341
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v10

    .line 343
    .local v10, "lais":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    const-string/jumbo v15, "OPNotificationAppList"

    const-string/jumbo v19, "  launchable activities:"

    move-object/from16 v0, v19

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "lai$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/LauncherActivityInfo;

    .line 345
    .local v8, "lai":Landroid/content/pm/LauncherActivityInfo;
    const-string/jumbo v15, "OPNotificationAppList"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "oneplus- "

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

    .line 346
    invoke-virtual {v8}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 331
    .end local v2    # "appInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v8    # "lai":Landroid/content/pm/LauncherActivityInfo;
    .end local v9    # "lai$iterator":Ljava/util/Iterator;
    .end local v10    # "lais":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    .end local v16    # "start":J
    :catchall_0
    move-exception v15

    monitor-exit v18

    throw v15

    .line 350
    .restart local v2    # "appInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v9    # "lai$iterator":Ljava/util/Iterator;
    .restart local v10    # "lais":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    .restart local v16    # "start":J
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v15}, Lcom/oneplus/settings/notification/OPNotificationAppList;->-get5(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-static {v15}, Lcom/oneplus/settings/notification/OPNotificationAppList;->queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v11

    .line 351
    .local v11, "resolvedConfigActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string/jumbo v15, "OPNotificationAppList"

    const-string/jumbo v19, "  config activities:"

    move-object/from16 v0, v19

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "ri$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 353
    .local v12, "ri":Landroid/content/pm/ResolveInfo;
    const-string/jumbo v15, "OPNotificationAppList"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "oneplus-"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 354
    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 353
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 354
    const-string/jumbo v20, "/"

    .line 353
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 354
    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 353
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v15, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 358
    .end local v12    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "info$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 359
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v7, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 360
    .local v7, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v15}, Lcom/oneplus/settings/notification/OPNotificationAppList;->-get8(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v15

    invoke-virtual {v15, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 365
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v15}, Lcom/oneplus/settings/notification/OPNotificationAppList;->-get5(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/content/pm/PackageManager;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/oneplus/settings/notification/OPNotificationAppList;->-get1(Lcom/oneplus/settings/notification/OPNotificationAppList;)Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v15, v3, v0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;)Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;

    move-result-object v14

    .line 366
    .local v14, "row":Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v15}, Lcom/oneplus/settings/notification/OPNotificationAppList;->-get8(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v15

    invoke-virtual {v15, v7, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 370
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "key":Ljava/lang/String;
    .end local v14    # "row":Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v15}, Lcom/oneplus/settings/notification/OPNotificationAppList;->-get5(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/content/pm/PackageManager;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/oneplus/settings/notification/OPNotificationAppList;->-get8(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v15, v0, v11}, Lcom/oneplus/settings/notification/OPNotificationAppList;->applyConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;Ljava/util/List;)V

    .line 373
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v15}, Lcom/oneplus/settings/notification/OPNotificationAppList;->-get9(Lcom/oneplus/settings/notification/OPNotificationAppList;)Ljava/util/ArrayList;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/oneplus/settings/notification/OPNotificationAppList;->-get8(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 374
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v15}, Lcom/oneplus/settings/notification/OPNotificationAppList;->-get9(Lcom/oneplus/settings/notification/OPNotificationAppList;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-static {}, Lcom/oneplus/settings/notification/OPNotificationAppList;->-get7()Ljava/util/Comparator;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v15, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v15}, Lcom/oneplus/settings/notification/OPNotificationAppList;->-get2(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/os/Handler;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/oneplus/settings/notification/OPNotificationAppList;->-get6(Lcom/oneplus/settings/notification/OPNotificationAppList;)Ljava/lang/Runnable;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 376
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    sub-long v4, v20, v16

    .line 377
    .local v4, "elapsed":J
    const-string/jumbo v15, "OPNotificationAppList"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "oneplus-Collected "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/oneplus/settings/notification/OPNotificationAppList;->-get8(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/util/ArrayMap;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " apps in "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "ms"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v18

    .line 330
    return-void
.end method
