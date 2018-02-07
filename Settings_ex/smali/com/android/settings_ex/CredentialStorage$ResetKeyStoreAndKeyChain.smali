.class Lcom/android/settings_ex/CredentialStorage$ResetKeyStoreAndKeyChain;
.super Landroid/os/AsyncTask;
.source "CredentialStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/CredentialStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetKeyStoreAndKeyChain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/CredentialStorage;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/CredentialStorage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/CredentialStorage;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/android/settings_ex/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings_ex/CredentialStorage;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/CredentialStorage;Lcom/android/settings_ex/CredentialStorage$ResetKeyStoreAndKeyChain;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/CredentialStorage;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/CredentialStorage$ResetKeyStoreAndKeyChain;-><init>(Lcom/android/settings_ex/CredentialStorage;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "unused"    # [Ljava/lang/Void;

    .prologue
    const/4 v5, 0x0

    .line 353
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/settings_ex/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings_ex/CredentialStorage;

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->resetKeyStore(I)V

    .line 356
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings_ex/CredentialStorage;

    invoke-static {v3}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 358
    .local v2, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_1
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v3

    invoke-interface {v3}, Landroid/security/IKeyChainService;->reset()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 362
    :try_start_2
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 358
    return-object v3

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    :try_start_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    .line 362
    :try_start_4
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 360
    return-object v3

    .line 361
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    .line 362
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 361
    throw v3
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 364
    .end local v2    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_1
    move-exception v1

    .line 365
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 366
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "unused"    # [Ljava/lang/Object;

    .prologue
    .line 350
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "unused":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/CredentialStorage$ResetKeyStoreAndKeyChain;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    const/4 v2, 0x0

    .line 371
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/settings_ex/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings_ex/CredentialStorage;

    .line 373
    const v1, 0x7f0e0be8

    .line 372
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 378
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings_ex/CredentialStorage;

    invoke-virtual {v0}, Lcom/android/settings_ex/CredentialStorage;->finish()V

    .line 370
    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings_ex/CredentialStorage;

    .line 376
    const v1, 0x7f0e0be9

    .line 375
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "success"    # Ljava/lang/Object;

    .prologue
    .line 370
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "success":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/CredentialStorage$ResetKeyStoreAndKeyChain;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
