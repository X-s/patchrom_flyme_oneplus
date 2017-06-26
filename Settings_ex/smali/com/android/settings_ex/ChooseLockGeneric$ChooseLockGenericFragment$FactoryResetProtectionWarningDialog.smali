.class public Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;
.super Landroid/app/DialogFragment;
.source "ChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FactoryResetProtectionWarningDialog"
.end annotation


# static fields
.field private static final ARG_MESSAGE_RES:Ljava/lang/String; = "messageRes"

.field private static final ARG_TITLE_RES:Ljava/lang/String; = "titleRes"

.field private static final ARG_UNLOCK_METHOD_TO_SET:Ljava/lang/String; = "unlockMethodToSet"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 716
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(ILjava/lang/String;)Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;
    .locals 3
    .param p0, "title"    # I
    .param p1, "unlockMethodToSet"    # Ljava/lang/String;

    .prologue
    .line 723
    new-instance v1, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    invoke-direct {v1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;-><init>()V

    .line 725
    .local v1, "frag":Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 726
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "titleRes"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 727
    const-string v2, "unlockMethodToSet"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->setArguments(Landroid/os/Bundle;)V

    .line 729
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 742
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 743
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "fingerprint"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    .line 744
    .local v1, "fingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v2

    .line 746
    .local v2, "hasFingerprints":Z
    if-eqz v2, :cond_0

    .line 747
    const v3, 0x7f0c011d

    .line 751
    .local v3, "stringId":I
    :goto_0
    new-instance v4, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v5, "titleRes"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/oneplus/app/OPAlertDialog$Builder;->setMessage(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c03a3

    new-instance v6, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$2;

    invoke-direct {v6, p0, v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$2;-><init>(Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;Landroid/os/Bundle;)V

    invoke-virtual {v4, v5, v6}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c03a2

    new-instance v6, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$1;

    invoke-direct {v6, p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$1;-><init>(Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;)V

    invoke-virtual {v4, v5, v6}, Lcom/oneplus/app/OPAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/app/OPAlertDialog$Builder;->create()Lcom/oneplus/app/OPAlertDialog;

    move-result-object v4

    return-object v4

    .line 749
    .end local v3    # "stringId":I
    :cond_0
    const v3, 0x7f0c026e

    .restart local v3    # "stringId":I
    goto :goto_0
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "manager"    # Landroid/app/FragmentManager;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 734
    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 736
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 738
    :cond_0
    return-void
.end method
