.class Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment$1;
.super Ljava/lang/Object;
.source "UserCredentialsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment;

.field final synthetic val$item:Lcom/android/settings_ex/UserCredentialsSettings$Credential;

.field final synthetic val$myUserId:I


# direct methods
.method constructor <init>(Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment;ILcom/android/settings_ex/UserCredentialsSettings$Credential;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment;
    .param p2, "val$myUserId"    # I
    .param p3, "val$item"    # Lcom/android/settings_ex/UserCredentialsSettings$Credential;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment$1;->this$1:Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment;

    iput p2, p0, Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment$1;->val$myUserId:I

    iput-object p3, p0, Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment$1;->val$item:Lcom/android/settings_ex/UserCredentialsSettings$Credential;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 140
    iget-object v1, p0, Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment$1;->this$1:Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment;

    invoke-virtual {v1}, Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "no_config_credentials"

    iget v3, p0, Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment$1;->val$myUserId:I

    .line 139
    invoke-static {v1, v2, v3}, Lcom/android/settings_exlib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 141
    .local v0, "admin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    if-eqz v0, :cond_0

    .line 142
    iget-object v1, p0, Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment$1;->this$1:Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment;

    invoke-virtual {v1}, Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings_exlib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 148
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 138
    return-void

    .line 145
    :cond_0
    new-instance v1, Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;

    iget-object v2, p0, Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment$1;->this$1:Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment;

    iget-object v3, p0, Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment$1;->this$1:Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment;

    invoke-virtual {v3}, Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment$1;->this$1:Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment;

    invoke-virtual {v4}, Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;-><init>(Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment;Landroid/content/Context;Landroid/app/Fragment;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 146
    iget-object v3, p0, Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment$1;->val$item:Lcom/android/settings_ex/UserCredentialsSettings$Credential;

    iget-object v3, v3, Lcom/android/settings_ex/UserCredentialsSettings$Credential;->alias:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 145
    invoke-virtual {v1, v2}, Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
