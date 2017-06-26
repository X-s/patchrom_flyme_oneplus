.class Lcom/android/settings_ex/CryptKeeper$DecryptTask;
.super Landroid/os/AsyncTask;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecryptTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/CryptKeeper;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/CryptKeeper;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/CryptKeeper;Lcom/android/settings_ex/CryptKeeper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/CryptKeeper;
    .param p2, "x1"    # Lcom/android/settings_ex/CryptKeeper$1;

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/android/settings_ex/CryptKeeper$DecryptTask;-><init>(Lcom/android/settings_ex/CryptKeeper;)V

    return-void
.end method

.method private hide(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 172
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    invoke-virtual {v1, p1}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 173
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 174
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 186
    iget-object v2, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    # invokes: Lcom/android/settings_ex/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;
    invoke-static {v2}, Lcom/android/settings_ex/CryptKeeper;->access$300(Lcom/android/settings_ex/CryptKeeper;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 188
    .local v1, "service":Landroid/os/storage/IMountService;
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, p1, v2

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->decryptStorage(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 191
    :goto_0
    return-object v2

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CryptKeeper"

    const-string v3, "Error while decrypting..."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 170
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 8
    .param p1, "failedAttempts"    # Ljava/lang/Integer;

    .prologue
    const/4 v6, 0x1

    .line 197
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_1

    .line 200
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    # getter for: Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v4}, Lcom/android/settings_ex/CryptKeeper;->access$100(Lcom/android/settings_ex/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 201
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    # getter for: Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v4}, Lcom/android/settings_ex/CryptKeeper;->access$100(Lcom/android/settings_ex/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    # getter for: Lcom/android/settings_ex/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/settings_ex/CryptKeeper;->access$400(Lcom/android/settings_ex/CryptKeeper;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 202
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    # getter for: Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v4}, Lcom/android/settings_ex/CryptKeeper;->access$100(Lcom/android/settings_ex/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    # getter for: Lcom/android/settings_ex/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/settings_ex/CryptKeeper;->access$400(Lcom/android/settings_ex/CryptKeeper;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 204
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    const v5, 0x7f120059

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 205
    .local v3, "status":Landroid/widget/TextView;
    const v4, 0x7f0c0a8d

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 206
    const v4, 0x7f120056

    invoke-direct {p0, v4}, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->hide(I)V

    .line 207
    const v4, 0x7f120061

    invoke-direct {p0, v4}, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->hide(I)V

    .line 208
    const v4, 0x7f120042

    invoke-direct {p0, v4}, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->hide(I)V

    .line 209
    const v4, 0x7f120060

    invoke-direct {p0, v4}, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->hide(I)V

    .line 210
    const v4, 0x7f120055

    invoke-direct {p0, v4}, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->hide(I)V

    .line 238
    .end local v3    # "status":Landroid/widget/TextView;
    :goto_0
    return-void

    .line 211
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x1e

    if-ne v4, v5, :cond_3

    .line 213
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    # getter for: Lcom/android/settings_ex/CryptKeeper;->mMdtpActivated:Z
    invoke-static {v4}, Lcom/android/settings_ex/CryptKeeper;->access$500(Lcom/android/settings_ex/CryptKeeper;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 214
    const-string v4, "CryptKeeper"

    const-string v5, "  CryptKeeper.MAX_FAILED_ATTEMPTS, calling encryptStorage with wipe"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :try_start_0
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    # invokes: Lcom/android/settings_ex/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;
    invoke-static {v4}, Lcom/android/settings_ex/CryptKeeper;->access$300(Lcom/android/settings_ex/CryptKeeper;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 218
    .local v2, "service":Landroid/os/storage/IMountService;
    const/4 v4, 0x1

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/os/storage/IMountService;->encryptWipeStorage(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 220
    .end local v2    # "service":Landroid/os/storage/IMountService;
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "CryptKeeper"

    const-string v5, "Unable to call MountService properly"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 225
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 226
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 227
    const-string v4, "android.intent.extra.REASON"

    const-string v5, "CryptKeeper.MAX_FAILED_ATTEMPTS"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    invoke-virtual {v4, v1}, Lcom/android/settings_ex/CryptKeeper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 230
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    .line 232
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    const v5, 0x7f040033

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/CryptKeeper;->setContentView(I)V

    .line 233
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    const/4 v5, 0x0

    # invokes: Lcom/android/settings_ex/CryptKeeper;->showFactoryReset(ZZ)V
    invoke-static {v4, v6, v5}, Lcom/android/settings_ex/CryptKeeper;->access$600(Lcom/android/settings_ex/CryptKeeper;ZZ)V

    goto :goto_0

    .line 236
    :cond_4
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    # invokes: Lcom/android/settings_ex/CryptKeeper;->handleBadAttempt(Ljava/lang/Integer;)V
    invoke-static {v4, p1}, Lcom/android/settings_ex/CryptKeeper;->access$000(Lcom/android/settings_ex/CryptKeeper;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 170
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 180
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 181
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    # invokes: Lcom/android/settings_ex/CryptKeeper;->beginAttempt()V
    invoke-static {v0}, Lcom/android/settings_ex/CryptKeeper;->access$200(Lcom/android/settings_ex/CryptKeeper;)V

    .line 182
    return-void
.end method
