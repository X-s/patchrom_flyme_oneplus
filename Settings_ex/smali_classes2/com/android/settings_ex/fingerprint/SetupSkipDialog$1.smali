.class Lcom/android/settings_ex/fingerprint/SetupSkipDialog$1;
.super Ljava/lang/Object;
.source "SetupSkipDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/fingerprint/SetupSkipDialog;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final activity:Landroid/app/Activity;

.field final synthetic this$0:Lcom/android/settings_ex/fingerprint/SetupSkipDialog;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fingerprint/SetupSkipDialog;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings_ex/fingerprint/SetupSkipDialog;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/SetupSkipDialog$1;->this$0:Lcom/android/settings_ex/fingerprint/SetupSkipDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/SetupSkipDialog$1;->this$0:Lcom/android/settings_ex/fingerprint/SetupSkipDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/fingerprint/SetupSkipDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/SetupSkipDialog$1;->activity:Landroid/app/Activity;

    .line 72
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 77
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/SetupSkipDialog$1;->activity:Landroid/app/Activity;

    if-nez v3, :cond_0

    .line 78
    return-void

    .line 80
    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 81
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/SetupSkipDialog$1;->activity:Landroid/app/Activity;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setResult(I)V

    .line 82
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/SetupSkipDialog$1;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 75
    :goto_0
    return-void

    .line 85
    :cond_1
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 87
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 88
    new-instance v0, Landroid/content/ComponentName;

    .line 89
    const-string/jumbo v3, "com.oneplus.provision"

    .line 90
    const-string/jumbo v4, "com.oneplus.provision.UserSettingSuccess"

    .line 88
    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .local v0, "componentName":Landroid/content/ComponentName;
    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 97
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/SetupSkipDialog$1;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 98
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/SetupSkipDialog$1;->activity:Landroid/app/Activity;

    const v4, 0x7f050023

    const v5, 0x7f050024

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 101
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/SetupSkipDialog$1;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 92
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_2
    :try_start_1
    new-instance v0, Landroid/content/ComponentName;

    .line 93
    const-string/jumbo v3, "com.oneplus.provision"

    .line 94
    const-string/jumbo v4, "com.oneplus.provision.GesturesActivity"

    .line 92
    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v0    # "componentName":Landroid/content/ComponentName;
    goto :goto_1
.end method
