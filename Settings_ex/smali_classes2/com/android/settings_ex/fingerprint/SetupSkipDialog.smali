.class public Lcom/android/settings_ex/fingerprint/SetupSkipDialog;
.super Landroid/app/DialogFragment;
.source "SetupSkipDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final ARG_FRP_SUPPORTED:Ljava/lang/String; = "frp_supported"

.field public static final EXTRA_FRP_SUPPORTED:Ljava/lang/String; = ":settings:frp_supported"

.field private static final RESULT_SKIP:I = 0xb

.field private static final TAG_SKIP_DIALOG:Ljava/lang/String; = "skip_dialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Z)Lcom/android/settings_ex/fingerprint/SetupSkipDialog;
    .locals 3
    .param p0, "isFrpSupported"    # Z

    .prologue
    .line 44
    new-instance v1, Lcom/android/settings_ex/fingerprint/SetupSkipDialog;

    invoke-direct {v1}, Lcom/android/settings_ex/fingerprint/SetupSkipDialog;-><init>()V

    .line 45
    .local v1, "dialog":Lcom/android/settings_ex/fingerprint/SetupSkipDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 46
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "frp_supported"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 47
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/fingerprint/SetupSkipDialog;->setArguments(Landroid/os/Bundle;)V

    .line 48
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 69
    packed-switch p2, :pswitch_data_0

    .line 68
    :goto_0
    return-void

    .line 72
    :pswitch_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings_ex/fingerprint/SetupSkipDialog$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/fingerprint/SetupSkipDialog$1;-><init>(Lcom/android/settings_ex/fingerprint/SetupSkipDialog;)V

    .line 105
    const-wide/16 v2, 0x64

    .line 72
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/SetupSkipDialog;->onCreateDialogBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateDialogBuilder()Landroid/app/AlertDialog$Builder;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/SetupSkipDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 59
    .local v0, "args":Landroid/os/Bundle;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/SetupSkipDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 60
    const v2, 0x7f0e05eb

    .line 59
    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 61
    const v2, 0x7f0e05ec

    .line 59
    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 62
    const-string/jumbo v1, "frp_supported"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    const v1, 0x7f0e05e9

    .line 59
    :goto_0
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    return-object v1

    .line 64
    :cond_0
    const v1, 0x7f0e05ea

    goto :goto_0
.end method

.method public show(Landroid/app/FragmentManager;)V
    .locals 1
    .param p1, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 112
    const-string/jumbo v0, "skip_dialog"

    invoke-virtual {p0, p1, v0}, Lcom/android/settings_ex/fingerprint/SetupSkipDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 111
    return-void
.end method
