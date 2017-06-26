.class public Lcom/android/settings_ex/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;
.super Landroid/app/DialogFragment;
.source "PrivateVolumeForget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/PrivateVolumeForget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForgetConfirmFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/Fragment;Ljava/lang/String;)V
    .locals 4
    .param p0, "parent"    # Landroid/app/Fragment;
    .param p1, "fsUuid"    # Ljava/lang/String;

    .prologue
    .line 79
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 80
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "android.os.storage.extra.FS_UUID"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v1, Lcom/android/settings_ex/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;

    invoke-direct {v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;-><init>()V

    .line 83
    .local v1, "dialog":Lcom/android/settings_ex/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;->setArguments(Landroid/os/Bundle;)V

    .line 84
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 85
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "forget_confirm"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 86
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 90
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 91
    .local v1, "context":Landroid/content/Context;
    const-class v5, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    .line 93
    .local v4, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "android.os.storage.extra.FS_UUID"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "fsUuid":Ljava/lang/String;
    invoke-virtual {v4, v2}, Landroid/os/storage/StorageManager;->findRecordByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object v3

    .line 96
    .local v3, "record":Landroid/os/storage/VolumeRecord;
    new-instance v0, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-direct {v0, v1}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 97
    .local v0, "builder":Lcom/oneplus/app/OPAlertDialog$Builder;
    const v5, 0x7f0c068a

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/CharSequence;

    invoke-virtual {v3}, Landroid/os/storage/VolumeRecord;->getNickname()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 99
    const v5, 0x7f0c068b

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/CharSequence;

    invoke-virtual {v3}, Landroid/os/storage/VolumeRecord;->getNickname()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/oneplus/app/OPAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 102
    const v5, 0x7f0c066b

    new-instance v6, Lcom/android/settings_ex/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment$1;

    invoke-direct {v6, p0, v4, v2}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment$1;-><init>(Lcom/android/settings_ex/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;Landroid/os/storage/StorageManager;Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 110
    const v5, 0x7f0c03a2

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lcom/oneplus/app/OPAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 112
    invoke-virtual {v0}, Lcom/oneplus/app/OPAlertDialog$Builder;->create()Lcom/oneplus/app/OPAlertDialog;

    move-result-object v5

    return-object v5
.end method
