.class public Lcom/android/settings_ex/hydrogen/fingerprint/SetupSkipDialog;
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
    .line 43
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Z)Lcom/android/settings_ex/hydrogen/fingerprint/SetupSkipDialog;
    .locals 3
    .param p0, "isFrpSupported"    # Z

    .prologue
    .line 52
    new-instance v1, Lcom/android/settings_ex/hydrogen/fingerprint/SetupSkipDialog;

    invoke-direct {v1}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupSkipDialog;-><init>()V

    .line 53
    .local v1, "dialog":Lcom/android/settings_ex/hydrogen/fingerprint/SetupSkipDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 54
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "frp_supported"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 55
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupSkipDialog;->setArguments(Landroid/os/Bundle;)V

    .line 56
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 80
    packed-switch p2, :pswitch_data_0

    .line 79
    :goto_0
    return-void

    .line 87
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupSkipDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 88
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 89
    return-void

    .line 91
    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 92
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Landroid/app/Activity;->setResult(I)V

    .line 93
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 96
    :cond_1
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 98
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 99
    new-instance v1, Landroid/content/ComponentName;

    .line 100
    const-string/jumbo v4, "com.oneplus.provision"

    .line 101
    const-string/jumbo v5, "com.oneplus.provision.UserSettingSuccess"

    .line 99
    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .local v1, "componentName":Landroid/content/ComponentName;
    :goto_1
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 108
    invoke-virtual {v0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 109
    const v4, 0x7f050023

    const v5, 0x7f050024

    invoke-virtual {v0, v4, v5}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 111
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 112
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 103
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_2
    :try_start_1
    new-instance v1, Landroid/content/ComponentName;

    .line 104
    const-string/jumbo v4, "com.oneplus.provision"

    .line 105
    const-string/jumbo v5, "com.oneplus.provision.GesturesActivity"

    .line 103
    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v1    # "componentName":Landroid/content/ComponentName;
    goto :goto_1

    .line 80
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupSkipDialog;->onCreateDialogBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 63
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/setupwizardlib/util/SystemBarHelper;->hideSystemBars(Landroid/app/Dialog;)V

    .line 64
    return-object v0
.end method

.method public onCreateDialogBuilder()Landroid/app/AlertDialog$Builder;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupSkipDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 70
    .local v0, "args":Landroid/os/Bundle;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupSkipDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 71
    const v2, 0x7f0e05eb

    .line 70
    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 72
    const v2, 0x7f0e05ec

    .line 70
    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 73
    const-string/jumbo v1, "frp_supported"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    const v1, 0x7f0e05e9

    .line 70
    :goto_0
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    return-object v1

    .line 75
    :cond_0
    const v1, 0x7f0e05ea

    goto :goto_0
.end method

.method public show(Landroid/app/FragmentManager;)V
    .locals 1
    .param p1, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 121
    const-string/jumbo v0, "skip_dialog"

    invoke-virtual {p0, p1, v0}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupSkipDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 120
    return-void
.end method
