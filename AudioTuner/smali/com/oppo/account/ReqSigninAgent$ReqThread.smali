.class public Lcom/oppo/account/ReqSigninAgent$ReqThread;
.super Ljava/lang/Thread;
.source "ReqSigninAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/account/ReqSigninAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ReqThread"
.end annotation


# instance fields
.field accountName:Ljava/lang/String;

.field appKey:Ljava/lang/String;

.field appSecret:Ljava/lang/String;

.field password:Ljava/lang/String;

.field final synthetic this$0:Lcom/oppo/account/ReqSigninAgent;


# direct methods
.method constructor <init>(Lcom/oppo/account/ReqSigninAgent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "appKey"    # Ljava/lang/String;
    .param p5, "appSecret"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/oppo/account/ReqSigninAgent$ReqThread;->this$0:Lcom/oppo/account/ReqSigninAgent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 143
    iput-object p2, p0, Lcom/oppo/account/ReqSigninAgent$ReqThread;->accountName:Ljava/lang/String;

    .line 144
    iput-object p3, p0, Lcom/oppo/account/ReqSigninAgent$ReqThread;->password:Ljava/lang/String;

    .line 145
    iput-object p4, p0, Lcom/oppo/account/ReqSigninAgent$ReqThread;->appKey:Ljava/lang/String;

    .line 146
    iput-object p5, p0, Lcom/oppo/account/ReqSigninAgent$ReqThread;->appSecret:Ljava/lang/String;

    .line 147
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 151
    iget-object v4, p0, Lcom/oppo/account/ReqSigninAgent$ReqThread;->this$0:Lcom/oppo/account/ReqSigninAgent;

    # getter for: Lcom/oppo/account/ReqSigninAgent;->isLocked:Ljava/lang/Integer;
    invoke-static {v4}, Lcom/oppo/account/ReqSigninAgent;->access$1(Lcom/oppo/account/ReqSigninAgent;)Ljava/lang/Integer;

    move-result-object v5

    monitor-enter v5

    .line 152
    :try_start_0
    # getter for: Lcom/oppo/account/ReqSigninAgent;->askSignin:Lcom/nearme/aidl/IAskSignin;
    invoke-static {}, Lcom/oppo/account/ReqSigninAgent;->access$3()Lcom/nearme/aidl/IAskSignin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-nez v4, :cond_0

    .line 154
    :try_start_1
    iget-object v4, p0, Lcom/oppo/account/ReqSigninAgent$ReqThread;->this$0:Lcom/oppo/account/ReqSigninAgent;

    # getter for: Lcom/oppo/account/ReqSigninAgent;->isLocked:Ljava/lang/Integer;
    invoke-static {v4}, Lcom/oppo/account/ReqSigninAgent;->access$1(Lcom/oppo/account/ReqSigninAgent;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    iget-object v4, p0, Lcom/oppo/account/ReqSigninAgent$ReqThread;->password:Ljava/lang/String;

    invoke-static {v4}, Lcom/oppo/account/Utilities;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/oppo/account/Utilities;->getMD5([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/account/ReqSigninAgent$ReqThread;->password:Ljava/lang/String;

    .line 163
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oppo/account/ReqSigninAgent$ReqThread;->appKey:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/oppo/account/ReqSigninAgent$ReqThread;->accountName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/oppo/account/ReqSigninAgent$ReqThread;->password:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/oppo/account/ReqSigninAgent$ReqThread;->appSecret:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/oppo/account/HmacHelper;->signMD5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "hmacKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/oppo/account/ReqSigninAgent$ReqThread;->this$0:Lcom/oppo/account/ReqSigninAgent;

    iget-object v5, p0, Lcom/oppo/account/ReqSigninAgent$ReqThread;->accountName:Ljava/lang/String;

    iget-object v6, p0, Lcom/oppo/account/ReqSigninAgent$ReqThread;->password:Ljava/lang/String;

    iget-object v7, p0, Lcom/oppo/account/ReqSigninAgent$ReqThread;->appKey:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7, v1}, Lcom/oppo/account/ReqSigninAgent;->callReqSignin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nearme/aidl/UserEntity;

    move-result-object v3

    .line 167
    .local v3, "userEntity":Lcom/nearme/aidl/UserEntity;
    iget-object v4, p0, Lcom/oppo/account/ReqSigninAgent$ReqThread;->this$0:Lcom/oppo/account/ReqSigninAgent;

    invoke-virtual {v4}, Lcom/oppo/account/ReqSigninAgent;->unbindNearMeService()V

    .line 169
    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/oppo/account/ReqSigninAgent$ReqThread;->this$0:Lcom/oppo/account/ReqSigninAgent;

    # getter for: Lcom/oppo/account/ReqSigninAgent;->mTokenHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/oppo/account/ReqSigninAgent;->access$4(Lcom/oppo/account/ReqSigninAgent;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 170
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 171
    .local v2, "message":Landroid/os/Message;
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 172
    iget-object v4, p0, Lcom/oppo/account/ReqSigninAgent$ReqThread;->this$0:Lcom/oppo/account/ReqSigninAgent;

    # getter for: Lcom/oppo/account/ReqSigninAgent;->mTokenHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/oppo/account/ReqSigninAgent;->access$4(Lcom/oppo/account/ReqSigninAgent;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 176
    .end local v2    # "message":Landroid/os/Message;
    :cond_1
    iget-object v4, p0, Lcom/oppo/account/ReqSigninAgent$ReqThread;->this$0:Lcom/oppo/account/ReqSigninAgent;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/oppo/account/ReqSigninAgent;->access$5(Lcom/oppo/account/ReqSigninAgent;Landroid/os/Handler;)V

    .line 178
    return-void

    .line 155
    .end local v1    # "hmacKey":Ljava/lang/String;
    .end local v3    # "userEntity":Lcom/nearme/aidl/UserEntity;
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 151
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4
.end method
