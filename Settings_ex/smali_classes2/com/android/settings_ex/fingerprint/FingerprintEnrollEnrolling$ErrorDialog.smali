.class public Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;
.super Landroid/app/DialogFragment;
.source "FingerprintEnrollEnrolling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 721
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static newInstance(Ljava/lang/CharSequence;I)Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;
    .locals 3
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "msgId"    # I

    .prologue
    .line 731
    new-instance v1, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;

    invoke-direct {v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;-><init>()V

    .line 732
    .local v1, "dlg":Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 733
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "error_msg"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 734
    const-string/jumbo v2, "error_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 735
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;->setArguments(Landroid/os/Bundle;)V

    .line 736
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 741
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 742
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "error_msg"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 743
    .local v3, "errorString":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "error_id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 744
    .local v2, "errMsgId":I
    const v4, 0x7f0e0601

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 748
    new-instance v5, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$ErrorDialog$1;

    invoke-direct {v5, p0, v2}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$ErrorDialog$1;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;I)V

    .line 747
    const v6, 0x7f0e05f1

    .line 744
    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 760
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 761
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 762
    return-object v1
.end method
