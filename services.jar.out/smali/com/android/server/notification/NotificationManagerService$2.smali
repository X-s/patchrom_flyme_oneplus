.class Lcom/android/server/notification/NotificationManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 853
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 27
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 856
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    .line 857
    .local v12, "action":Ljava/lang/String;
    if-nez v12, :cond_0

    .line 858
    return-void

    .line 861
    :cond_0
    const/16 v21, 0x0

    .line 862
    .local v21, "queryRestart":Z
    const/16 v20, 0x0

    .line 863
    .local v20, "queryRemove":Z
    const/16 v17, 0x0

    .line 864
    .local v17, "packageChanged":Z
    const/4 v13, 0x1

    .line 865
    .local v13, "cancelNotifications":Z
    const/4 v10, 0x5

    .line 867
    .local v10, "reason":I
    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 868
    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    .line 867
    .local v20, "queryRemove":Z
    if-nez v20, :cond_1

    .line 869
    const-string/jumbo v2, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 867
    if-nez v2, :cond_1

    .line 870
    const-string/jumbo v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 867
    .local v17, "packageChanged":Z
    if-nez v17, :cond_1

    .line 871
    const-string/jumbo v2, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    .line 867
    .local v21, "queryRestart":Z
    if-nez v21, :cond_1

    .line 872
    const-string/jumbo v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 867
    if-nez v2, :cond_1

    .line 873
    const-string/jumbo v2, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 867
    if-eqz v2, :cond_13

    .line 874
    .end local v17    # "packageChanged":Z
    .end local v20    # "queryRemove":Z
    .end local v21    # "queryRestart":Z
    :cond_1
    const-string/jumbo v2, "android.intent.extra.user_handle"

    .line 875
    const/4 v3, -0x1

    .line 874
    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 876
    .local v9, "changeUserId":I
    const/16 v18, 0x0

    .line 877
    .local v18, "pkgList":[Ljava/lang/String;
    if-eqz v20, :cond_5

    .line 878
    const-string/jumbo v2, "android.intent.extra.REPLACING"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v22, 0x0

    .line 879
    .local v22, "removingPackage":Z
    :goto_0
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " removing="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    :cond_2
    const-string/jumbo v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 881
    const-string/jumbo v2, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 930
    .local v18, "pkgList":[Ljava/lang/String;
    :goto_1
    if-eqz v18, :cond_12

    move-object/from16 v0, v18

    array-length v2, v0

    if-lez v2, :cond_12

    .line 931
    const/4 v2, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v25, v2

    :goto_2
    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_12

    aget-object v5, v18, v25

    .line 932
    .local v5, "pkgName":Ljava/lang/String;
    if-eqz v13, :cond_3

    .line 933
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-get2()I

    move-result v3

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-get1()I

    move-result v4

    if-eqz v21, :cond_11

    const/4 v8, 0x0

    :goto_3
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 934
    const/4 v11, 0x0

    .line 933
    invoke-virtual/range {v2 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    .line 931
    :cond_3
    add-int/lit8 v2, v25, 0x1

    move/from16 v25, v2

    goto :goto_2

    .line 878
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v22    # "removingPackage":Z
    .local v18, "pkgList":[Ljava/lang/String;
    :cond_4
    const/16 v22, 0x1

    .restart local v22    # "removingPackage":Z
    goto :goto_0

    .line 877
    .end local v22    # "removingPackage":Z
    :cond_5
    const/16 v22, 0x0

    .restart local v22    # "removingPackage":Z
    goto :goto_0

    .line 882
    :cond_6
    const-string/jumbo v2, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 883
    const-string/jumbo v2, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 884
    .local v18, "pkgList":[Ljava/lang/String;
    const/16 v10, 0xe

    goto :goto_1

    .line 885
    .local v18, "pkgList":[Ljava/lang/String;
    :cond_7
    if-eqz v21, :cond_8

    .line 886
    const-string/jumbo v2, "android.intent.extra.PACKAGES"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .local v18, "pkgList":[Ljava/lang/String;
    goto :goto_1

    .line 888
    .local v18, "pkgList":[Ljava/lang/String;
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v24

    .line 889
    .local v24, "uri":Landroid/net/Uri;
    if-nez v24, :cond_9

    .line 890
    return-void

    .line 892
    :cond_9
    invoke-virtual/range {v24 .. v24}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 893
    .restart local v5    # "pkgName":Ljava/lang/String;
    if-nez v5, :cond_a

    .line 894
    return-void

    .line 896
    :cond_a
    if-eqz v17, :cond_c

    .line 899
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v19

    .line 901
    .local v19, "pm":Landroid/content/pm/IPackageManager;
    const/4 v2, -0x1

    if-eq v9, v2, :cond_e

    move v2, v9

    .line 900
    :goto_4
    move-object/from16 v0, v19

    invoke-interface {v0, v5, v2}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v16

    .line 903
    .local v16, "enabled":I
    const/4 v2, 0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_b

    .line 904
    if-nez v16, :cond_c

    .line 905
    :cond_b
    const/4 v13, 0x0

    .line 919
    .end local v16    # "enabled":I
    .end local v19    # "pm":Landroid/content/pm/IPackageManager;
    :cond_c
    :goto_5
    const-string/jumbo v2, "android.intent.extra.REPLACING"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v23

    .line 920
    .local v23, "replacing":Z
    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v23, :cond_f

    .line 927
    :cond_d
    :goto_6
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v18, v0

    .end local v18    # "pkgList":[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object v5, v18, v2

    .local v18, "pkgList":[Ljava/lang/String;
    goto/16 :goto_1

    .line 902
    .end local v23    # "replacing":Z
    .local v18, "pkgList":[Ljava/lang/String;
    .restart local v19    # "pm":Landroid/content/pm/IPackageManager;
    :cond_e
    const/4 v2, 0x0

    goto :goto_4

    .line 907
    .end local v19    # "pm":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v15

    .line 910
    .local v15, "e":Ljava/lang/IllegalArgumentException;
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v2, :cond_c

    .line 911
    const-string/jumbo v2, "NotificationService"

    const-string/jumbo v3, "Exception trying to look up app enabled setting"

    invoke-static {v2, v3, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 921
    .end local v15    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v23    # "replacing":Z
    :cond_f
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-get0()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 922
    const-string/jumbo v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pkg "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " added, replacing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get22(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    move-result-object v2

    invoke-virtual {v2, v9, v5}, Lcom/android/server/notification/RankingHelper;->setDefaultOPLevel(ILjava/lang/String;)V

    .line 925
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->savePolicyFile()V

    goto :goto_6

    .line 933
    .end local v23    # "replacing":Z
    .end local v24    # "uri":Landroid/net/Uri;
    .local v18, "pkgList":[Ljava/lang/String;
    :cond_11
    const/4 v8, 0x1

    goto/16 :goto_3

    .line 938
    .end local v5    # "pkgName":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get14(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v2

    move/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onPackagesChanged(Z[Ljava/lang/String;)V

    .line 939
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get20(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationRankers;

    move-result-object v2

    move/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->onPackagesChanged(Z[Ljava/lang/String;)V

    .line 940
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get8(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v2

    move/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/ConditionProviders;->onPackagesChanged(Z[Ljava/lang/String;)V

    .line 941
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get22(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    move-result-object v2

    move/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/RankingHelper;->onPackagesChanged(Z[Ljava/lang/String;)V

    .line 855
    .end local v9    # "changeUserId":I
    .end local v18    # "pkgList":[Ljava/lang/String;
    .end local v22    # "removingPackage":Z
    :cond_13
    return-void

    .line 913
    .restart local v5    # "pkgName":Ljava/lang/String;
    .restart local v9    # "changeUserId":I
    .local v18, "pkgList":[Ljava/lang/String;
    .restart local v22    # "removingPackage":Z
    .restart local v24    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v14

    .local v14, "e":Landroid/os/RemoteException;
    goto/16 :goto_5
.end method
