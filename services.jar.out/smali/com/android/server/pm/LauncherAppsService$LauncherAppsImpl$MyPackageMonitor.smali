.class Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "LauncherAppsService.java"

# interfaces
.implements Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPackageMonitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor$-void_onShortcutChanged_java_lang_String_packageName_int_userId_LambdaImpl0;
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .prologue
    .line 633
    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)V

    return-void
.end method

.method private onShortcutChangedInner(Ljava/lang/String;I)V
    .locals 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 799
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v19

    .line 801
    .local v19, "n":I
    :try_start_0
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v21

    .line 803
    .local v21, "user":Landroid/os/UserHandle;
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 804
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v18

    check-cast v18, Landroid/content/pm/IOnAppsChangedListener;

    .line 805
    .local v18, "listener":Landroid/content/pm/IOnAppsChangedListener;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 806
    .local v4, "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v7, v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v8, "onShortcutChanged"

    move-object/from16 v0, v21

    invoke-static {v5, v0, v7, v8}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-wrap0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 803
    :cond_0
    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 808
    :cond_1
    iget-object v5, v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 811
    .local v6, "launcherUserId":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get1(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Landroid/content/pm/ShortcutServiceInternal;

    move-result-object v5

    .line 812
    iget-object v7, v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->packageName:Ljava/lang/String;

    .line 811
    invoke-virtual {v5, v6, v7}, Landroid/content/pm/ShortcutServiceInternal;->hasShortcutHostPermission(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 820
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get1(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Landroid/content/pm/ShortcutServiceInternal;

    move-result-object v5

    .line 821
    iget-object v7, v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->packageName:Ljava/lang/String;

    .line 822
    const-wide/16 v8, 0x0

    const/4 v11, 0x0

    .line 823
    const/4 v12, 0x0

    .line 824
    const/16 v13, 0xf

    move-object/from16 v10, p1

    move/from16 v14, p2

    .line 820
    invoke-virtual/range {v5 .. v14}, Landroid/content/pm/ShortcutServiceInternal;->getShortcuts(ILjava/lang/String;JLjava/lang/String;Ljava/util/List;Landroid/content/ComponentName;II)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v17

    .line 829
    .local v17, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :try_start_1
    new-instance v5, Landroid/content/pm/ParceledListSlice;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 828
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2, v5}, Landroid/content/pm/IOnAppsChangedListener;->onShortcutChanged(Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 830
    :catch_0
    move-exception v20

    .line 831
    .local v20, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v5, "LauncherAppsService"

    const-string/jumbo v7, "Callback failed "

    move-object/from16 v0, v20

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 834
    .end local v4    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    .end local v6    # "launcherUserId":I
    .end local v16    # "i":I
    .end local v17    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .end local v18    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v20    # "re":Landroid/os/RemoteException;
    .end local v21    # "user":Landroid/os/UserHandle;
    :catch_1
    move-exception v15

    .line 836
    .local v15, "e":Ljava/lang/RuntimeException;
    :try_start_3
    const-string/jumbo v5, "LauncherAppsService"

    invoke-virtual {v15}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 838
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 798
    .end local v15    # "e":Ljava/lang/RuntimeException;
    :goto_2
    return-void

    .line 838
    .restart local v16    # "i":I
    .restart local v21    # "user":Landroid/os/UserHandle;
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    goto :goto_2

    .line 837
    .end local v16    # "i":I
    .end local v21    # "user":Landroid/os/UserHandle;
    :catchall_0
    move-exception v5

    .line 838
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 837
    throw v5
.end method


# virtual methods
.method synthetic -com_android_server_pm_LauncherAppsService$LauncherAppsImpl$MyPackageMonitor_lambda$1(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 794
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->onShortcutChangedInner(Ljava/lang/String;I)V

    .line 0
    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 639
    new-instance v5, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 640
    .local v5, "user":Landroid/os/UserHandle;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v3

    .line 642
    .local v3, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 643
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/content/pm/IOnAppsChangedListener;

    .line 644
    .local v2, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 645
    .local v0, "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v7, v0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v8, "onPackageAdded"

    invoke-static {v6, v5, v7, v8}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-wrap0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_0

    .line 642
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 647
    :cond_0
    :try_start_1
    invoke-interface {v2, v5, p1}, Landroid/content/pm/IOnAppsChangedListener;->onPackageAdded(Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 648
    :catch_0
    move-exception v4

    .line 649
    .local v4, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v6, "LauncherAppsService"

    const-string/jumbo v7, "Callback failed "

    invoke-static {v6, v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 652
    .end local v0    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    .end local v2    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v4    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    .line 653
    iget-object v7, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 652
    throw v6

    .line 653
    :cond_1
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 656
    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageAdded(Ljava/lang/String;I)V

    .line 638
    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 683
    new-instance v5, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 684
    .local v5, "user":Landroid/os/UserHandle;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v3

    .line 686
    .local v3, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 687
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/content/pm/IOnAppsChangedListener;

    .line 688
    .local v2, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 689
    .local v0, "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v7, v0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v8, "onPackageModified"

    invoke-static {v6, v5, v7, v8}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-wrap0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_0

    .line 686
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 691
    :cond_0
    :try_start_1
    invoke-interface {v2, v5, p1}, Landroid/content/pm/IOnAppsChangedListener;->onPackageChanged(Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 692
    :catch_0
    move-exception v4

    .line 693
    .local v4, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v6, "LauncherAppsService"

    const-string/jumbo v7, "Callback failed "

    invoke-static {v6, v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 696
    .end local v0    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    .end local v2    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v4    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    .line 697
    iget-object v7, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 696
    throw v6

    .line 697
    :cond_1
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 700
    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackageModified(Ljava/lang/String;)V

    .line 682
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 661
    new-instance v5, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 662
    .local v5, "user":Landroid/os/UserHandle;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v3

    .line 664
    .local v3, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 665
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/content/pm/IOnAppsChangedListener;

    .line 666
    .local v2, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 667
    .local v0, "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v7, v0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v8, "onPackageRemoved"

    invoke-static {v6, v5, v7, v8}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-wrap0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_0

    .line 664
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 669
    :cond_0
    :try_start_1
    invoke-interface {v2, v5, p1}, Landroid/content/pm/IOnAppsChangedListener;->onPackageRemoved(Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 670
    :catch_0
    move-exception v4

    .line 671
    .local v4, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v6, "LauncherAppsService"

    const-string/jumbo v7, "Callback failed "

    invoke-static {v6, v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 674
    .end local v0    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    .end local v2    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v4    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    .line 675
    iget-object v7, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 674
    throw v6

    .line 675
    :cond_1
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 678
    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageRemoved(Ljava/lang/String;I)V

    .line 660
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;)V
    .locals 9
    .param p1, "packages"    # [Ljava/lang/String;

    .prologue
    .line 705
    new-instance v5, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 706
    .local v5, "user":Landroid/os/UserHandle;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v3

    .line 708
    .local v3, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 709
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/content/pm/IOnAppsChangedListener;

    .line 710
    .local v2, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 711
    .local v0, "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v7, v0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v8, "onPackagesAvailable"

    invoke-static {v6, v5, v7, v8}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-wrap0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_0

    .line 708
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 713
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->isReplacing()Z

    move-result v6

    invoke-interface {v2, v5, p1, v6}, Landroid/content/pm/IOnAppsChangedListener;->onPackagesAvailable(Landroid/os/UserHandle;[Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 714
    :catch_0
    move-exception v4

    .line 715
    .local v4, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v6, "LauncherAppsService"

    const-string/jumbo v7, "Callback failed "

    invoke-static {v6, v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 718
    .end local v0    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    .end local v2    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v4    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    .line 719
    iget-object v7, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 718
    throw v6

    .line 719
    :cond_1
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 722
    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackagesAvailable([Ljava/lang/String;)V

    .line 704
    return-void
.end method

.method public onPackagesSuspended([Ljava/lang/String;)V
    .locals 9
    .param p1, "packages"    # [Ljava/lang/String;

    .prologue
    .line 749
    new-instance v5, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 750
    .local v5, "user":Landroid/os/UserHandle;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v3

    .line 752
    .local v3, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 753
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/content/pm/IOnAppsChangedListener;

    .line 754
    .local v2, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 755
    .local v0, "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v7, v0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v8, "onPackagesSuspended"

    invoke-static {v6, v5, v7, v8}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-wrap0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_0

    .line 752
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 757
    :cond_0
    :try_start_1
    invoke-interface {v2, v5, p1}, Landroid/content/pm/IOnAppsChangedListener;->onPackagesSuspended(Landroid/os/UserHandle;[Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 758
    :catch_0
    move-exception v4

    .line 759
    .local v4, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v6, "LauncherAppsService"

    const-string/jumbo v7, "Callback failed "

    invoke-static {v6, v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 762
    .end local v0    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    .end local v2    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v4    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    .line 763
    iget-object v7, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 762
    throw v6

    .line 763
    :cond_1
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 766
    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackagesSuspended([Ljava/lang/String;)V

    .line 748
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;)V
    .locals 9
    .param p1, "packages"    # [Ljava/lang/String;

    .prologue
    .line 727
    new-instance v5, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 728
    .local v5, "user":Landroid/os/UserHandle;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v3

    .line 730
    .local v3, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 731
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/content/pm/IOnAppsChangedListener;

    .line 732
    .local v2, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 733
    .local v0, "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v7, v0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v8, "onPackagesUnavailable"

    invoke-static {v6, v5, v7, v8}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-wrap0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_0

    .line 730
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 735
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->isReplacing()Z

    move-result v6

    invoke-interface {v2, v5, p1, v6}, Landroid/content/pm/IOnAppsChangedListener;->onPackagesUnavailable(Landroid/os/UserHandle;[Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 736
    :catch_0
    move-exception v4

    .line 737
    .local v4, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v6, "LauncherAppsService"

    const-string/jumbo v7, "Callback failed "

    invoke-static {v6, v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 740
    .end local v0    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    .end local v2    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v4    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    .line 741
    iget-object v7, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 740
    throw v6

    .line 741
    :cond_1
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 744
    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackagesUnavailable([Ljava/lang/String;)V

    .line 726
    return-void
.end method

.method public onPackagesUnsuspended([Ljava/lang/String;)V
    .locals 9
    .param p1, "packages"    # [Ljava/lang/String;

    .prologue
    .line 771
    new-instance v5, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 772
    .local v5, "user":Landroid/os/UserHandle;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v3

    .line 774
    .local v3, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 775
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/content/pm/IOnAppsChangedListener;

    .line 776
    .local v2, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 777
    .local v0, "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v7, v0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v8, "onPackagesUnsuspended"

    invoke-static {v6, v5, v7, v8}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-wrap0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_0

    .line 774
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 779
    :cond_0
    :try_start_1
    invoke-interface {v2, v5, p1}, Landroid/content/pm/IOnAppsChangedListener;->onPackagesUnsuspended(Landroid/os/UserHandle;[Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 780
    :catch_0
    move-exception v4

    .line 781
    .local v4, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v6, "LauncherAppsService"

    const-string/jumbo v7, "Callback failed "

    invoke-static {v6, v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 784
    .end local v0    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    .end local v2    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v4    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    .line 785
    iget-object v7, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 784
    throw v6

    .line 785
    :cond_1
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 788
    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackagesUnsuspended([Ljava/lang/String;)V

    .line 770
    return-void
.end method

.method public onShortcutChanged(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 794
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    new-instance v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor$-void_onShortcutChanged_java_lang_String_packageName_int_userId_LambdaImpl0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor$-void_onShortcutChanged_java_lang_String_packageName_int_userId_LambdaImpl0;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->postToPackageMonitorHandler(Ljava/lang/Runnable;)V

    .line 793
    return-void
.end method
