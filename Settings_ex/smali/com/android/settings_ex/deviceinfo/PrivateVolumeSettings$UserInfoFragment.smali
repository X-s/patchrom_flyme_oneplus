.class public Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$UserInfoFragment;
.super Landroid/app/DialogFragment;
.source "PrivateVolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserInfoFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 720
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/Fragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 4
    .param p0, "parent"    # Landroid/app/Fragment;
    .param p1, "userLabel"    # Ljava/lang/CharSequence;
    .param p2, "userSize"    # Ljava/lang/CharSequence;

    .prologue
    .line 722
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 731
    :goto_0
    return-void

    .line 724
    :cond_0
    new-instance v1, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$UserInfoFragment;

    invoke-direct {v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$UserInfoFragment;-><init>()V

    .line 725
    .local v1, "dialog":Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$UserInfoFragment;
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$UserInfoFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 726
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 727
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 728
    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 729
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$UserInfoFragment;->setArguments(Landroid/os/Bundle;)V

    .line 730
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "userInfo"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$UserInfoFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 735
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$UserInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 737
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$UserInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "android.intent.extra.TITLE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 738
    .local v2, "userLabel":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$UserInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "android.intent.extra.SUBJECT"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 740
    .local v3, "userSize":Ljava/lang/CharSequence;
    new-instance v0, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-direct {v0, v1}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 741
    .local v0, "builder":Lcom/oneplus/app/OPAlertDialog$Builder;
    const v4, 0x7f0c0694

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$UserInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/CharSequence;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/oneplus/app/OPAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 744
    const v4, 0x104000a

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 746
    invoke-virtual {v0}, Lcom/oneplus/app/OPAlertDialog$Builder;->create()Lcom/oneplus/app/OPAlertDialog;

    move-result-object v4

    return-object v4
.end method
