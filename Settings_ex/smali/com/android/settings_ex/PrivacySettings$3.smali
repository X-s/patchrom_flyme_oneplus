.class Lcom/android/settings_ex/PrivacySettings$3;
.super Ljava/lang/Object;
.source "PrivacySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/PrivacySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/PrivacySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/PrivacySettings;)V
    .locals 0

    .prologue
    .line 961
    iput-object p1, p0, Lcom/android/settings_ex/PrivacySettings$3;->this$0:Lcom/android/settings_ex/PrivacySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 964
    const/4 v3, -0x1

    if-eq p2, v3, :cond_1

    .line 988
    :cond_0
    :goto_0
    return-void

    .line 967
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/PrivacySettings$3;->this$0:Lcom/android/settings_ex/PrivacySettings;

    # getter for: Lcom/android/settings_ex/PrivacySettings;->mConfirmDialog:Lcom/oneplus/settings/RestorePwdDialog;
    invoke-static {v3}, Lcom/android/settings_ex/PrivacySettings;->access$600(Lcom/android/settings_ex/PrivacySettings;)Lcom/oneplus/settings/RestorePwdDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/settings/RestorePwdDialog;->getPassWord()Ljava/lang/String;

    move-result-object v2

    .line 968
    .local v2, "passwordString":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 971
    iget-object v3, p0, Lcom/android/settings_ex/PrivacySettings$3;->this$0:Lcom/android/settings_ex/PrivacySettings;

    # invokes: Lcom/android/settings_ex/PrivacySettings;->checkPassword(Ljava/lang/String;)Z
    invoke-static {v3, v2}, Lcom/android/settings_ex/PrivacySettings;->access$700(Lcom/android/settings_ex/PrivacySettings;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 972
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v3

    if-nez v3, :cond_0

    .line 978
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 979
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "actionid"

    const/4 v4, 0x5

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 980
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.settings_ex"

    const-string v4, "com.android.settings_ex.SettingsMainFragement"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 982
    iget-object v3, p0, Lcom/android/settings_ex/PrivacySettings$3;->this$0:Lcom/android/settings_ex/PrivacySettings;

    invoke-virtual {v3}, Lcom/android/settings_ex/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 986
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/PrivacySettings$3;->this$0:Lcom/android/settings_ex/PrivacySettings;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/settings_ex/PrivacySettings$3;->this$0:Lcom/android/settings_ex/PrivacySettings;

    iget-object v5, v5, Lcom/android/settings_ex/PrivacySettings;->mCheckPasswordListener:Landroid/content/DialogInterface$OnClickListener;

    # invokes: Lcom/android/settings_ex/PrivacySettings;->checkPasswordDialog(ZLandroid/content/DialogInterface$OnClickListener;)V
    invoke-static {v3, v4, v5}, Lcom/android/settings_ex/PrivacySettings;->access$800(Lcom/android/settings_ex/PrivacySettings;ZLandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method
