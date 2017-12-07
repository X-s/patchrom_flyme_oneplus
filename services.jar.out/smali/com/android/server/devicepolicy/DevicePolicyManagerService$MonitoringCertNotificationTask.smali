.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;
.super Landroid/os/AsyncTask;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonitoringCertNotificationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .prologue
    .line 2699
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    return-void
.end method

.method private getInstalledCaCertificates(Landroid/os/UserHandle;)Ljava/util/List;
    .locals 8
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 2799
    const/4 v1, 0x0

    .line 2801
    .local v1, "conn":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v6, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v1

    .line 2802
    .local v1, "conn":Landroid/security/KeyChain$KeyChainConnection;
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v6

    invoke-interface {v6}, Landroid/security/IKeyChainService;->getUserCaAliases()Landroid/content/pm/ParceledListSlice;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 2803
    .local v0, "aliases":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/util/ParcelableString;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 2804
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 2805
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/util/ParcelableString;

    iget-object v6, v6, Lcom/android/internal/util/ParcelableString;->string:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2804
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2814
    :cond_0
    if-eqz v1, :cond_1

    .line 2815
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 2807
    :cond_1
    return-object v5

    .line 2811
    .end local v0    # "aliases":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/util/ParcelableString;>;"
    .end local v1    # "conn":Landroid/security/KeyChain$KeyChainConnection;
    .end local v4    # "i":I
    .end local v5    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 2812
    .local v2, "e":Ljava/lang/AssertionError;
    :try_start_1
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2813
    .end local v2    # "e":Ljava/lang/AssertionError;
    :catchall_0
    move-exception v6

    .line 2814
    if-eqz v1, :cond_2

    .line 2815
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 2813
    :cond_2
    throw v6

    .line 2808
    :catch_1
    move-exception v3

    .line 2809
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2814
    if-eqz v1, :cond_3

    .line 2815
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 2810
    :cond_3
    return-object v7
.end method

.method private manageNotification(Landroid/os/UserHandle;)V
    .locals 19
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 2715
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2716
    return-void

    .line 2722
    :cond_0
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->getInstalledCaCertificates(Landroid/os/UserHandle;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 2728
    .local v15, "pendingCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    monitor-enter v2

    .line 2729
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v16

    .line 2732
    .local v16, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAcceptedCaCertificates:Landroid/util/ArraySet;

    invoke-virtual {v1, v15}, Landroid/util/ArraySet;->retainAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2733
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap15(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    .line 2736
    :cond_1
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAcceptedCaCertificates:Landroid/util/ArraySet;

    invoke-interface {v15, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 2739
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2740
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v1

    .line 2741
    const/4 v2, 0x0

    const v4, 0x1140001

    .line 2740
    move-object/from16 v0, p1

    invoke-virtual {v1, v2, v4, v0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 2742
    return-void

    .line 2723
    .end local v15    # "pendingCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catch_0
    move-exception v9

    .line 2724
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "DevicePolicyManagerService"

    const-string/jumbo v2, "Could not retrieve certificates from KeyChain service"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2725
    return-void

    .line 2728
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v15    # "pendingCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 2748
    .restart local v16    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v14

    .line 2749
    .local v14, "parentUserId":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwner(I)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2750
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 2751
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwnerName(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 2750
    const v4, 0x104011a

    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 2752
    .local v7, "contentText":Ljava/lang/String;
    const v17, 0x10806fd

    .line 2753
    .local v17, "smallIconId":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap2(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)I

    move-result v14

    .line 2763
    :goto_0
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v12

    .line 2764
    .local v12, "numberOfCertificates":I
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.settings.MONITORING_CERT_INFO"

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2765
    .local v3, "dialogIntent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2766
    const-string/jumbo v1, "com.android.settings"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2767
    const-string/jumbo v1, "android.settings.extra.number_of_certificates"

    invoke-virtual {v3, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2768
    const-string/jumbo v1, "android.intent.extra.USER_ID"

    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2769
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 2771
    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v14}, Landroid/os/UserHandle;-><init>(I)V

    .line 2769
    const/4 v2, 0x0

    .line 2770
    const/high16 v4, 0x8000000

    const/4 v5, 0x0

    .line 2769
    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v11

    .line 2775
    .local v11, "notifyIntent":Landroid/app/PendingIntent;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 2776
    .local v13, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v1, v13, v2, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v18

    .line 2781
    .local v18, "userContext":Landroid/content/Context;
    new-instance v1, Landroid/app/Notification$Builder;

    move-object/from16 v0, v18

    invoke-direct {v1, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 2783
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2784
    const v4, 0x1140001

    .line 2783
    invoke-virtual {v2, v4, v12}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2781
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 2787
    const/4 v2, 0x1

    .line 2781
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 2788
    const/4 v2, 0x0

    .line 2781
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 2789
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 2790
    const v4, 0x106005b

    .line 2789
    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 2781
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v10

    .line 2793
    .local v10, "noti":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v1

    .line 2794
    const/4 v2, 0x0

    const v4, 0x1140001

    .line 2793
    move-object/from16 v0, p1

    invoke-virtual {v1, v2, v4, v10, v0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 2714
    return-void

    .line 2754
    .end local v3    # "dialogIntent":Landroid/content/Intent;
    .end local v7    # "contentText":Ljava/lang/String;
    .end local v10    # "noti":Landroid/app/Notification;
    .end local v11    # "notifyIntent":Landroid/app/PendingIntent;
    .end local v12    # "numberOfCertificates":I
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v17    # "smallIconId":I
    .end local v18    # "userContext":Landroid/content/Context;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerUserId()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 2755
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 2756
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 2755
    const v4, 0x104011a

    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 2757
    .restart local v7    # "contentText":Ljava/lang/String;
    const v17, 0x10806fd

    .restart local v17    # "smallIconId":I
    goto/16 :goto_0

    .line 2759
    .end local v7    # "contentText":Ljava/lang/String;
    .end local v17    # "smallIconId":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v2, 0x1040118

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2760
    .restart local v7    # "contentText":Ljava/lang/String;
    const v17, 0x108008a

    .restart local v17    # "smallIconId":I
    goto/16 :goto_0

    .line 2777
    .restart local v3    # "dialogIntent":Landroid/content/Intent;
    .restart local v11    # "notifyIntent":Landroid/app/PendingIntent;
    .restart local v12    # "numberOfCertificates":I
    :catch_1
    move-exception v8

    .line 2778
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v1, "DevicePolicyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Create context as "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " failed"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2779
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 2701
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    .line 2702
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2704
    .local v0, "userHandle":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 2705
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v3, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "userInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 2706
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->manageNotification(Landroid/os/UserHandle;)V

    goto :goto_0

    .line 2709
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v2    # "userInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->manageNotification(Landroid/os/UserHandle;)V

    .line 2711
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method
