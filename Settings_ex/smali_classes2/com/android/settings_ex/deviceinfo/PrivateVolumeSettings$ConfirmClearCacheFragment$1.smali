.class Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment$1;
.super Ljava/lang/Object;
.source "PrivateVolumeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;
    .param p2, "val$context"    # Landroid/content/Context;

    .prologue
    .line 979
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment$1;->this$1:Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;

    iput-object p2, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v9, 0x0

    .line 982
    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment$1;->this$1:Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;

    invoke-virtual {v8}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;

    .line 983
    .local v5, "target":Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;
    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment$1;->val$context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 984
    .local v4, "pm":Landroid/content/pm/PackageManager;
    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment$1;->val$context:Landroid/content/Context;

    const-class v10, Landroid/os/UserManager;

    invoke-virtual {v8, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    .line 986
    .local v6, "um":Landroid/os/UserManager;
    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment$1;->val$context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getUserId()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v10

    array-length v11, v10

    move v8, v9

    :goto_0
    if-ge v8, v11, :cond_1

    aget v7, v10, v8

    .line 987
    .local v7, "userId":I
    invoke-virtual {v4, v9, v7}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v2

    .line 988
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v3, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;

    .line 989
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    .line 988
    invoke-direct {v3, v5, v12}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;-><init>(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;I)V

    .line 990
    .local v3, "observer":Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 991
    .local v0, "info":Landroid/content/pm/PackageInfo;
    iget-object v12, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v12, v7, v3}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V

    goto :goto_1

    .line 986
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 981
    .end local v1    # "info$iterator":Ljava/util/Iterator;
    .end local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v3    # "observer":Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;
    .end local v7    # "userId":I
    :cond_1
    return-void
.end method
