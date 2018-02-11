.class Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog$1;
.super Ljava/lang/Object;
.source "SetupFingerprintEnrollEnrolling.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog$1;->this$1:Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 131
    iget-object v4, p0, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog$1;->this$1:Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog;

    invoke-virtual {v4}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 132
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 133
    return-void

    .line 135
    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 136
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/app/Activity;->setResult(I)V

    .line 137
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 123
    :goto_0
    return-void

    .line 140
    :cond_1
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 142
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 143
    new-instance v1, Landroid/content/ComponentName;

    .line 144
    const-string/jumbo v4, "com.oneplus.provision"

    .line 145
    const-string/jumbo v5, "com.oneplus.provision.UserSettingSuccess"

    .line 143
    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .local v1, "componentName":Landroid/content/ComponentName;
    :goto_1
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 152
    invoke-virtual {v0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 153
    const v4, 0x7f050023

    const v5, 0x7f050024

    invoke-virtual {v0, v4, v5}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 155
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 156
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 147
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_2
    :try_start_1
    new-instance v1, Landroid/content/ComponentName;

    .line 148
    const-string/jumbo v4, "com.oneplus.provision"

    .line 149
    const-string/jumbo v5, "com.oneplus.provision.GesturesActivity"

    .line 147
    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v1    # "componentName":Landroid/content/ComponentName;
    goto :goto_1
.end method
