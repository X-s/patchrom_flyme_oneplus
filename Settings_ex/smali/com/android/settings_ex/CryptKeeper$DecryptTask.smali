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
    .line 169
    iput-object p1, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/CryptKeeper;Lcom/android/settings_ex/CryptKeeper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/CryptKeeper;
    .param p2, "x1"    # Lcom/android/settings_ex/CryptKeeper$1;

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/android/settings_ex/CryptKeeper$DecryptTask;-><init>(Lcom/android/settings_ex/CryptKeeper;)V

    return-void
.end method

.method private hide(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 171
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    invoke-virtual {v1, p1}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 172
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 173
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 175
    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 185
    iget-object v2, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    # invokes: Lcom/android/settings_ex/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;
    invoke-static {v2}, Lcom/android/settings_ex/CryptKeeper;->access$300(Lcom/android/settings_ex/CryptKeeper;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 187
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

    .line 190
    :goto_0
    return-object v2

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CryptKeeper"

    const-string v3, "Error while decrypting..."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 169
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6
    .param p1, "failedAttempts"    # Ljava/lang/Integer;

    .prologue
    .line 196
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    .line 199
    iget-object v2, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    # getter for: Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v2}, Lcom/android/settings_ex/CryptKeeper;->access$100(Lcom/android/settings_ex/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 200
    iget-object v2, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    # getter for: Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v2}, Lcom/android/settings_ex/CryptKeeper;->access$100(Lcom/android/settings_ex/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    # getter for: Lcom/android/settings_ex/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/settings_ex/CryptKeeper;->access$400(Lcom/android/settings_ex/CryptKeeper;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 201
    iget-object v2, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    # getter for: Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v2}, Lcom/android/settings_ex/CryptKeeper;->access$100(Lcom/android/settings_ex/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    # getter for: Lcom/android/settings_ex/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/settings_ex/CryptKeeper;->access$400(Lcom/android/settings_ex/CryptKeeper;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 203
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    const v3, 0x7f0f001d

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 204
    .local v1, "status":Landroid/widget/TextView;
    const v2, 0x7f0908e8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 205
    const v2, 0x7f0f005f

    invoke-direct {p0, v2}, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->hide(I)V

    .line 206
    const v2, 0x7f0f0060

    invoke-direct {p0, v2}, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->hide(I)V

    .line 207
    const v2, 0x7f0f0051

    invoke-direct {p0, v2}, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->hide(I)V

    .line 208
    const v2, 0x7f0f0069

    invoke-direct {p0, v2}, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->hide(I)V

    .line 209
    const v2, 0x7f0f005e

    invoke-direct {p0, v2}, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->hide(I)V

    .line 224
    .end local v1    # "status":Landroid/widget/TextView;
    :goto_0
    return-void

    .line 210
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_2

    .line 212
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 214
    const-string v2, "android.intent.extra.REASON"

    const-string v3, "CryptKeeper.MAX_FAILED_ATTEMPTS"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    iget-object v2, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    invoke-virtual {v2, v0}, Lcom/android/settings_ex/CryptKeeper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 216
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 218
    iget-object v2, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    const v3, 0x7f040028

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/CryptKeeper;->setContentView(I)V

    .line 219
    iget-object v2, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    const/4 v3, 0x1

    # invokes: Lcom/android/settings_ex/CryptKeeper;->showFactoryReset(Z)V
    invoke-static {v2, v3}, Lcom/android/settings_ex/CryptKeeper;->access$500(Lcom/android/settings_ex/CryptKeeper;Z)V

    goto :goto_0

    .line 222
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    # invokes: Lcom/android/settings_ex/CryptKeeper;->handleBadAttempt(Ljava/lang/Integer;)V
    invoke-static {v2, p1}, Lcom/android/settings_ex/CryptKeeper;->access$000(Lcom/android/settings_ex/CryptKeeper;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 169
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 179
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 180
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    # invokes: Lcom/android/settings_ex/CryptKeeper;->beginAttempt()V
    invoke-static {v0}, Lcom/android/settings_ex/CryptKeeper;->access$200(Lcom/android/settings_ex/CryptKeeper;)V

    .line 181
    return-void
.end method
