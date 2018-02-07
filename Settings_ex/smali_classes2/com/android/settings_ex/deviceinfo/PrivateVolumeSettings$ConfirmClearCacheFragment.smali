.class public Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;
.super Landroid/app/DialogFragment;
.source "PrivateVolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmClearCacheFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 962
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/Fragment;)V
    .locals 3
    .param p0, "parent"    # Landroid/app/Fragment;

    .prologue
    .line 964
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 966
    :cond_0
    new-instance v0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;

    invoke-direct {v0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;-><init>()V

    .line 967
    .local v0, "dialog":Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 968
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "confirmClearCache"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 963
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 973
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 975
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 976
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0e0878

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 977
    const v2, 0x7f0e0879

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 979
    new-instance v2, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment$1;

    invoke-direct {v2, p0, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment$1;-><init>(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;Landroid/content/Context;)V

    const v3, 0x104000a

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 997
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 999
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
