.class Lcom/android/settings_ex/PrivacySettings$4;
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
    .line 991
    iput-object p1, p0, Lcom/android/settings_ex/PrivacySettings$4;->this$0:Lcom/android/settings_ex/PrivacySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 994
    const/4 v3, -0x1

    if-eq p2, v3, :cond_1

    .line 1025
    :cond_0
    :goto_0
    return-void

    .line 997
    :cond_1
    const/4 v0, 0x0

    .line 998
    .local v0, "checkResult":Z
    iget-object v3, p0, Lcom/android/settings_ex/PrivacySettings$4;->this$0:Lcom/android/settings_ex/PrivacySettings;

    # getter for: Lcom/android/settings_ex/PrivacySettings;->mChecked:Z
    invoke-static {v3}, Lcom/android/settings_ex/PrivacySettings;->access$900(Lcom/android/settings_ex/PrivacySettings;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 999
    iget-object v3, p0, Lcom/android/settings_ex/PrivacySettings$4;->this$0:Lcom/android/settings_ex/PrivacySettings;

    # getter for: Lcom/android/settings_ex/PrivacySettings;->mConfirmDialog:Lcom/oneplus/settings/RestorePwdDialog;
    invoke-static {v3}, Lcom/android/settings_ex/PrivacySettings;->access$600(Lcom/android/settings_ex/PrivacySettings;)Lcom/oneplus/settings/RestorePwdDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/settings/RestorePwdDialog;->getPassWord()Ljava/lang/String;

    move-result-object v2

    .line 1000
    .local v2, "passwordString":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1003
    iget-object v3, p0, Lcom/android/settings_ex/PrivacySettings$4;->this$0:Lcom/android/settings_ex/PrivacySettings;

    # invokes: Lcom/android/settings_ex/PrivacySettings;->checkPassword(Ljava/lang/String;)Z
    invoke-static {v3, v2}, Lcom/android/settings_ex/PrivacySettings;->access$700(Lcom/android/settings_ex/PrivacySettings;Ljava/lang/String;)Z

    move-result v0

    .line 1004
    if-eqz v0, :cond_2

    .line 1005
    iget-object v3, p0, Lcom/android/settings_ex/PrivacySettings$4;->this$0:Lcom/android/settings_ex/PrivacySettings;

    # setter for: Lcom/android/settings_ex/PrivacySettings;->mChecked:Z
    invoke-static {v3, v5}, Lcom/android/settings_ex/PrivacySettings;->access$902(Lcom/android/settings_ex/PrivacySettings;Z)Z

    .line 1006
    iget-object v3, p0, Lcom/android/settings_ex/PrivacySettings$4;->this$0:Lcom/android/settings_ex/PrivacySettings;

    # invokes: Lcom/android/settings_ex/PrivacySettings;->modifyPassword(Z)V
    invoke-static {v3, v6}, Lcom/android/settings_ex/PrivacySettings;->access$1000(Lcom/android/settings_ex/PrivacySettings;Z)V

    goto :goto_0

    .line 1009
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/PrivacySettings$4;->this$0:Lcom/android/settings_ex/PrivacySettings;

    iget-object v4, p0, Lcom/android/settings_ex/PrivacySettings$4;->this$0:Lcom/android/settings_ex/PrivacySettings;

    iget-object v4, v4, Lcom/android/settings_ex/PrivacySettings;->mModifyPasswordListener:Landroid/content/DialogInterface$OnClickListener;

    # invokes: Lcom/android/settings_ex/PrivacySettings;->checkPasswordDialog(ZLandroid/content/DialogInterface$OnClickListener;)V
    invoke-static {v3, v5, v4}, Lcom/android/settings_ex/PrivacySettings;->access$800(Lcom/android/settings_ex/PrivacySettings;ZLandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 1012
    .end local v2    # "passwordString":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/PrivacySettings$4;->this$0:Lcom/android/settings_ex/PrivacySettings;

    # invokes: Lcom/android/settings_ex/PrivacySettings;->confirmPassword()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings_ex/PrivacySettings;->access$1100(Lcom/android/settings_ex/PrivacySettings;)Ljava/lang/String;

    move-result-object v1

    .line 1013
    .local v1, "confirmString":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 1017
    iget-object v3, p0, Lcom/android/settings_ex/PrivacySettings$4;->this$0:Lcom/android/settings_ex/PrivacySettings;

    # invokes: Lcom/android/settings_ex/PrivacySettings;->savePassword(Ljava/lang/String;)V
    invoke-static {v3, v1}, Lcom/android/settings_ex/PrivacySettings;->access$1200(Lcom/android/settings_ex/PrivacySettings;Ljava/lang/String;)V

    .line 1018
    iget-object v3, p0, Lcom/android/settings_ex/PrivacySettings$4;->this$0:Lcom/android/settings_ex/PrivacySettings;

    invoke-virtual {v3}, Lcom/android/settings_ex/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/PrivacySettings$4;->this$0:Lcom/android/settings_ex/PrivacySettings;

    invoke-virtual {v4}, Lcom/android/settings_ex/PrivacySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09002f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1022
    :cond_4
    iget-object v3, p0, Lcom/android/settings_ex/PrivacySettings$4;->this$0:Lcom/android/settings_ex/PrivacySettings;

    # invokes: Lcom/android/settings_ex/PrivacySettings;->modifyPassword(Z)V
    invoke-static {v3, v5}, Lcom/android/settings_ex/PrivacySettings;->access$1000(Lcom/android/settings_ex/PrivacySettings;Z)V

    goto :goto_0
.end method
