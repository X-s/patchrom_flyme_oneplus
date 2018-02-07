.class public Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog;
.super Landroid/app/DialogFragment;
.source "SetupFingerprintEnrollEnrolling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollEnrolling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SkipDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 92
    const v1, 0x7f0e05fb

    .line 91
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 93
    const v1, 0x7f0e05fc

    .line 91
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 94
    const/4 v1, 0x0

    .line 91
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 96
    new-instance v1, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog$1;-><init>(Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog;)V

    .line 95
    const v2, 0x7f0e0761

    .line 91
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 107
    new-instance v1, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog$2;-><init>(Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog;)V

    .line 106
    const v2, 0x7f0e0762

    .line 91
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "manager"    # Landroid/app/FragmentManager;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 81
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 79
    :cond_0
    return-void
.end method
