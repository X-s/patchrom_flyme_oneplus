.class public Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$RenameFragment;
.super Landroid/app/DialogFragment;
.source "PrivateVolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RenameFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 840
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;Landroid/os/storage/VolumeInfo;)V
    .locals 4
    .param p0, "parent"    # Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 842
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 844
    :cond_0
    new-instance v1, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$RenameFragment;

    invoke-direct {v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$RenameFragment;-><init>()V

    .line 845
    .local v1, "dialog":Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$RenameFragment;
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$RenameFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 846
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 847
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "android.os.storage.extra.FS_UUID"

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$RenameFragment;->setArguments(Landroid/os/Bundle;)V

    .line 849
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "rename"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$RenameFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 841
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x0

    .line 854
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$RenameFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 855
    .local v1, "context":Landroid/content/Context;
    const-class v11, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/StorageManager;

    .line 857
    .local v7, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$RenameFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v11

    const-string/jumbo v12, "android.os.storage.extra.FS_UUID"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 858
    .local v3, "fsUuid":Ljava/lang/String;
    invoke-virtual {v7, v3}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v10

    .line 859
    .local v10, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v7, v3}, Landroid/os/storage/StorageManager;->findRecordByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object v6

    .line 861
    .local v6, "rec":Landroid/os/storage/VolumeRecord;
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$RenameFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v11

    const-string/jumbo v12, "android.intent.extra.TITLE"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 862
    .local v8, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$RenameFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v11

    const-string/jumbo v12, "android.intent.extra.INTENT"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 863
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v11, "android.intent.action.ONEPLUS_BROWSER_CLASSIFICATION"

    invoke-static {v1, v4, v11}, Lcom/oneplus/settings/utils/OPUtils;->isActionExist(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 864
    const-string/jumbo v11, "android.intent.action.ONEPLUS_BROWSER_CLASSIFICATION"

    invoke-virtual {v4, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 867
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 868
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 870
    .local v2, "dialogInflater":Landroid/view/LayoutInflater;
    const v11, 0x7f04006f

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v13, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 871
    .local v9, "view":Landroid/view/View;
    const v11, 0x7f110149

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 872
    .local v5, "nickname":Landroid/widget/EditText;
    invoke-virtual {v6}, Landroid/os/storage/VolumeRecord;->getNickname()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 874
    const v11, 0x7f0e08a5

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 875
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 878
    new-instance v11, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$RenameFragment$1;

    invoke-direct {v11, p0, v7, v3, v5}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$RenameFragment$1;-><init>(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$RenameFragment;Landroid/os/storage/StorageManager;Ljava/lang/String;Landroid/widget/EditText;)V

    .line 877
    const v12, 0x7f0e0596

    invoke-virtual {v0, v12, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 886
    const v11, 0x7f0e0592

    invoke-virtual {v0, v11, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 888
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    return-object v11
.end method
