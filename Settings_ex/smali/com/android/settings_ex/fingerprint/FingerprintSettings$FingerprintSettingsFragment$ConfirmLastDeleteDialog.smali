.class public Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;
.super Landroid/app/DialogFragment;
.source "FingerprintSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLastDeleteDialog"
.end annotation


# instance fields
.field private mFp:Landroid/hardware/fingerprint/Fingerprint;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 629
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;)Landroid/hardware/fingerprint/Fingerprint;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;

    .prologue
    .line 629
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;->mFp:Landroid/hardware/fingerprint/Fingerprint;

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 635
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "fingerprint"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    iput-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;->mFp:Landroid/hardware/fingerprint/Fingerprint;

    .line 636
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c040e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c040f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0410

    new-instance v3, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog$2;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog$2;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c03a2

    new-instance v3, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog$1;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 658
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    return-object v0
.end method
