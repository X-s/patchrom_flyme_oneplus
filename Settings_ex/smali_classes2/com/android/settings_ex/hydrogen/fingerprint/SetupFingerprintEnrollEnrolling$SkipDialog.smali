.class public Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog;
.super Landroid/app/DialogFragment;
.source "SetupFingerprintEnrollEnrolling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollEnrolling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SkipDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 116
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 117
    const v2, 0x7f0e05fb

    .line 116
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 118
    const v2, 0x7f0e05fc

    .line 116
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 119
    const/4 v2, 0x0

    .line 116
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 121
    new-instance v2, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog$1;-><init>(Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog;)V

    .line 120
    const v3, 0x7f0e0761

    .line 116
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 163
    new-instance v2, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog$2;-><init>(Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog;)V

    .line 162
    const v3, 0x7f0e0762

    .line 116
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 169
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/setupwizardlib/util/SystemBarHelper;->hideSystemBars(Landroid/app/Dialog;)V

    .line 170
    return-object v0
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "manager"    # Landroid/app/FragmentManager;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 106
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 104
    :cond_0
    return-void
.end method
