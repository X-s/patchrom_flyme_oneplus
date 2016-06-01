.class Lcom/oneplus/tuner/MixerActivity$15;
.super Ljava/lang/Thread;
.source "MixerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/MixerActivity;->doRefreshOrGetToken(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/MixerActivity;

.field final synthetic val$isFromReceiver:Z


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/MixerActivity;Z)V
    .locals 0

    .prologue
    .line 1167
    iput-object p1, p0, Lcom/oneplus/tuner/MixerActivity$15;->this$0:Lcom/oneplus/tuner/MixerActivity;

    iput-boolean p2, p0, Lcom/oneplus/tuner/MixerActivity$15;->val$isFromReceiver:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1172
    :try_start_0
    sget-object v0, Lcom/oneplus/tuner/base/BaseActivity;->sAm:Landroid/accounts/AccountManager;

    const-string v1, "com.oneplus.account"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v8

    .line 1173
    .local v8, "account":[Landroid/accounts/Account;
    array-length v0, v8

    if-nez v0, :cond_1

    .line 1174
    iget-boolean v0, p0, Lcom/oneplus/tuner/MixerActivity$15;->val$isFromReceiver:Z

    if-eqz v0, :cond_0

    .line 1175
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity$15;->this$0:Lcom/oneplus/tuner/MixerActivity;

    # getter for: Lcom/oneplus/tuner/MixerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/oneplus/tuner/MixerActivity;->access$1800(Lcom/oneplus/tuner/MixerActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1185
    .end local v8    # "account":[Landroid/accounts/Account;
    :goto_0
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity$15;->this$0:Lcom/oneplus/tuner/MixerActivity;

    invoke-virtual {v0}, Lcom/oneplus/tuner/MixerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/tuner/manager/OppoTunerManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/tuner/manager/OppoTunerManager;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/oneplus/tuner/manager/OppoTunerManager;->setIsNeedRefreshTokenFlag(Z)V

    .line 1186
    return-void

    .line 1177
    .restart local v8    # "account":[Landroid/accounts/Account;
    :cond_0
    :try_start_1
    sget-object v0, Lcom/oneplus/tuner/base/BaseActivity;->sAm:Landroid/accounts/AccountManager;

    const-string v1, "com.oneplus.account"

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/oneplus/tuner/MixerActivity$15;->this$0:Lcom/oneplus/tuner/MixerActivity;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1182
    .end local v8    # "account":[Landroid/accounts/Account;
    :catch_0
    move-exception v9

    .line 1183
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "MixerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception:================> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1180
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v8    # "account":[Landroid/accounts/Account;
    :cond_1
    :try_start_2
    sget-object v0, Lcom/oneplus/tuner/base/BaseActivity;->sAm:Landroid/accounts/AccountManager;

    const/4 v1, 0x0

    aget-object v1, v8, v1

    const-string v2, "com.oneplus.account"

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/oneplus/tuner/MixerActivity$15;->this$0:Lcom/oneplus/tuner/MixerActivity;

    iget-object v5, p0, Lcom/oneplus/tuner/MixerActivity$15;->this$0:Lcom/oneplus/tuner/MixerActivity;

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method
