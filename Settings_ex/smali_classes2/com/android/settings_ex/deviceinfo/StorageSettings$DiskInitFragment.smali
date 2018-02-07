.class public Lcom/android/settings_ex/deviceinfo/StorageSettings$DiskInitFragment;
.super Landroid/app/DialogFragment;
.source "StorageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/StorageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiskInitFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 437
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/Fragment;ILjava/lang/String;)V
    .locals 4
    .param p0, "parent"    # Landroid/app/Fragment;
    .param p1, "resId"    # I
    .param p2, "diskId"    # Ljava/lang/String;

    .prologue
    .line 439
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 440
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 441
    const-string/jumbo v2, "android.os.storage.extra.DISK_ID"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    new-instance v1, Lcom/android/settings_ex/deviceinfo/StorageSettings$DiskInitFragment;

    invoke-direct {v1}, Lcom/android/settings_ex/deviceinfo/StorageSettings$DiskInitFragment;-><init>()V

    .line 444
    .local v1, "dialog":Lcom/android/settings_ex/deviceinfo/StorageSettings$DiskInitFragment;
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/deviceinfo/StorageSettings$DiskInitFragment;->setArguments(Landroid/os/Bundle;)V

    .line 445
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/settings_ex/deviceinfo/StorageSettings$DiskInitFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 446
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "disk_init"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/deviceinfo/StorageSettings$DiskInitFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 438
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 451
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageSettings$DiskInitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 452
    .local v1, "context":Landroid/content/Context;
    const-class v6, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageManager;

    .line 454
    .local v5, "sm":Landroid/os/storage/StorageManager;
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageSettings$DiskInitFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "android.intent.extra.TEXT"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 455
    .local v4, "resId":I
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageSettings$DiskInitFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "android.os.storage.extra.DISK_ID"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 456
    .local v3, "diskId":Ljava/lang/String;
    invoke-virtual {v5, v3}, Landroid/os/storage/StorageManager;->findDiskById(Ljava/lang/String;)Landroid/os/storage/DiskInfo;

    move-result-object v2

    .line 458
    .local v2, "disk":Landroid/os/storage/DiskInfo;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 459
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/deviceinfo/StorageSettings$DiskInitFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/CharSequence;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 462
    new-instance v6, Lcom/android/settings_ex/deviceinfo/StorageSettings$DiskInitFragment$1;

    invoke-direct {v6, p0, v1, v3}, Lcom/android/settings_ex/deviceinfo/StorageSettings$DiskInitFragment$1;-><init>(Lcom/android/settings_ex/deviceinfo/StorageSettings$DiskInitFragment;Landroid/content/Context;Ljava/lang/String;)V

    .line 461
    const v7, 0x7f0e088c

    invoke-virtual {v0, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 470
    const v6, 0x7f0e0592

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 472
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    return-object v6
.end method
