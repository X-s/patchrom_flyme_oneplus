.class public Lcom/android/settings_ex/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;
.super Landroid/app/DialogFragment;
.source "AccountSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/accounts/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmAutoSyncChangeFragment"
.end annotation


# static fields
.field private static final SAVE_ENABLING:Ljava/lang/String; = "enabling"

.field private static final SAVE_USER_HANDLE:Ljava/lang/String; = "userHandle"


# instance fields
.field private mEnabling:Z

.field private mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 625
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings_ex/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;

    .prologue
    .line 625
    iget-boolean v0, p0, Lcom/android/settings_ex/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;)Landroid/os/UserHandle;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method public static show(Lcom/android/settings_ex/accounts/AccountSettings;ZLandroid/os/UserHandle;)V
    .locals 3
    .param p0, "parent"    # Lcom/android/settings_ex/accounts/AccountSettings;
    .param p1, "enabling"    # Z
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 639
    :goto_0
    return-void

    .line 634
    :cond_0
    new-instance v0, Lcom/android/settings_ex/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;

    invoke-direct {v0}, Lcom/android/settings_ex/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;-><init>()V

    .line 635
    .local v0, "dialog":Lcom/android/settings_ex/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;
    iput-boolean p1, v0, Lcom/android/settings_ex/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    .line 636
    iput-object p2, v0, Lcom/android/settings_ex/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->mUserHandle:Landroid/os/UserHandle;

    .line 637
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings_ex/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 638
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmAutoSyncChange"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 643
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 644
    .local v1, "context":Landroid/content/Context;
    if-eqz p1, :cond_0

    .line 645
    const-string v2, "enabling"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    .line 646
    const-string v2, "userHandle"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    iput-object v2, p0, Lcom/android/settings_ex/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->mUserHandle:Landroid/os/UserHandle;

    .line 649
    :cond_0
    new-instance v0, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-direct {v0, v1}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 650
    .local v0, "builder":Lcom/oneplus/app/OPAlertDialog$Builder;
    iget-boolean v2, p0, Lcom/android/settings_ex/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    if-nez v2, :cond_1

    .line 651
    const v2, 0x7f0c0b08

    invoke-virtual {v0, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 652
    const v2, 0x7f0c0b09

    invoke-virtual {v0, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->setMessage(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 658
    :goto_0
    const v2, 0x104000a

    new-instance v3, Lcom/android/settings_ex/accounts/AccountSettings$ConfirmAutoSyncChangeFragment$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/accounts/AccountSettings$ConfirmAutoSyncChangeFragment$1;-><init>(Lcom/android/settings_ex/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;)V

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 665
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/app/OPAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 667
    invoke-virtual {v0}, Lcom/oneplus/app/OPAlertDialog$Builder;->create()Lcom/oneplus/app/OPAlertDialog;

    move-result-object v2

    return-object v2

    .line 654
    :cond_1
    const v2, 0x7f0c0b06

    invoke-virtual {v0, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 655
    const v2, 0x7f0c0b07

    invoke-virtual {v0, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->setMessage(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 672
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 673
    const-string v0, "enabling"

    iget-boolean v1, p0, Lcom/android/settings_ex/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 674
    const-string v0, "userHandle"

    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 675
    return-void
.end method
