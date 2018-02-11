.class Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;
.super Landroid/os/AsyncTask;
.source "UserCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveCredentialsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private targetFragment:Landroid/app/Fragment;

.field final synthetic this$1:Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment;Landroid/content/Context;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "targetFragment"    # Landroid/app/Fragment;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->this$1:Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 161
    iput-object p2, p0, Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->context:Landroid/content/Context;

    .line 162
    iput-object p3, p0, Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->targetFragment:Landroid/app/Fragment;

    .line 160
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "aliases"    # [Ljava/lang/Object;

    .prologue
    .line 166
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "aliases":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 7
    .param p1, "aliases"    # [Ljava/lang/String;

    .prologue
    .line 168
    :try_start_0
    iget-object v5, p0, Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->this$1:Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment;

    invoke-virtual {v5}, Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 170
    .local v1, "conn":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_1
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v4

    .line 171
    .local v4, "keyChain":Landroid/security/IKeyChainService;
    const/4 v5, 0x0

    array-length v6, p1

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v0, p1, v5

    .line 172
    .local v0, "alias":Ljava/lang/String;
    invoke-interface {v4, v0}, Landroid/security/IKeyChainService;->removeKeyPair(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 177
    .end local v0    # "alias":Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 182
    .end local v1    # "conn":Landroid/security/KeyChain$KeyChainConnection;
    .end local v4    # "keyChain":Landroid/security/IKeyChainService;
    :goto_1
    const/4 v5, 0x0

    return-object v5

    .line 174
    .restart local v1    # "conn":Landroid/security/KeyChain$KeyChainConnection;
    :catch_0
    move-exception v2

    .line 175
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v5, "CredentialDialogFragment"

    const-string/jumbo v6, "Removing credentials"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 177
    :try_start_4
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 179
    .end local v1    # "conn":Landroid/security/KeyChain$KeyChainConnection;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 180
    .local v3, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v5, "CredentialDialogFragment"

    const-string/jumbo v6, "Connecting to keychain"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 176
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "conn":Landroid/security/KeyChain$KeyChainConnection;
    :catchall_0
    move-exception v5

    .line 177
    :try_start_5
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 176
    throw v5
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 186
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->targetFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/android/settings_ex/UserCredentialsSettings;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->targetFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/android/settings_ex/UserCredentialsSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/UserCredentialsSettings;->refreshItems()V

    .line 186
    :cond_0
    return-void
.end method
