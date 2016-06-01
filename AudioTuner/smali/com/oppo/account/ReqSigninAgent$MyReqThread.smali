.class public Lcom/oppo/account/ReqSigninAgent$MyReqThread;
.super Ljava/lang/Thread;
.source "ReqSigninAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/account/ReqSigninAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyReqThread"
.end annotation


# instance fields
.field accountName:Ljava/lang/String;

.field appCode:Ljava/lang/String;

.field appKey:Ljava/lang/String;

.field appSecret:Ljava/lang/String;

.field password:Ljava/lang/String;

.field final synthetic this$0:Lcom/oppo/account/ReqSigninAgent;


# direct methods
.method constructor <init>(Lcom/oppo/account/ReqSigninAgent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "appKey"    # Ljava/lang/String;
    .param p5, "appSecret"    # Ljava/lang/String;
    .param p6, "appCode"    # Ljava/lang/String;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/oppo/account/ReqSigninAgent$MyReqThread;->this$0:Lcom/oppo/account/ReqSigninAgent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 305
    iput-object p2, p0, Lcom/oppo/account/ReqSigninAgent$MyReqThread;->accountName:Ljava/lang/String;

    .line 306
    iput-object p3, p0, Lcom/oppo/account/ReqSigninAgent$MyReqThread;->password:Ljava/lang/String;

    .line 307
    iput-object p4, p0, Lcom/oppo/account/ReqSigninAgent$MyReqThread;->appKey:Ljava/lang/String;

    .line 308
    iput-object p5, p0, Lcom/oppo/account/ReqSigninAgent$MyReqThread;->appSecret:Ljava/lang/String;

    .line 309
    iput-object p6, p0, Lcom/oppo/account/ReqSigninAgent$MyReqThread;->appCode:Ljava/lang/String;

    .line 310
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 314
    iget-object v0, p0, Lcom/oppo/account/ReqSigninAgent$MyReqThread;->this$0:Lcom/oppo/account/ReqSigninAgent;

    # getter for: Lcom/oppo/account/ReqSigninAgent;->isLocked:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/oppo/account/ReqSigninAgent;->access$1(Lcom/oppo/account/ReqSigninAgent;)Ljava/lang/Integer;

    move-result-object v1

    monitor-enter v1

    .line 315
    :try_start_0
    # getter for: Lcom/oppo/account/ReqSigninAgent;->askSigninByAppCode:Lcom/nearme/aidl/IAskSigninByAppCode;
    invoke-static {}, Lcom/oppo/account/ReqSigninAgent;->access$6()Lcom/nearme/aidl/IAskSigninByAppCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    .line 317
    :try_start_1
    iget-object v0, p0, Lcom/oppo/account/ReqSigninAgent$MyReqThread;->this$0:Lcom/oppo/account/ReqSigninAgent;

    # getter for: Lcom/oppo/account/ReqSigninAgent;->isLocked:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/oppo/account/ReqSigninAgent;->access$1(Lcom/oppo/account/ReqSigninAgent;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 314
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 324
    iget-object v0, p0, Lcom/oppo/account/ReqSigninAgent$MyReqThread;->password:Ljava/lang/String;

    invoke-static {v0}, Lcom/oppo/account/Utilities;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/account/Utilities;->getMD5([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/account/ReqSigninAgent$MyReqThread;->password:Ljava/lang/String;

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/account/ReqSigninAgent$MyReqThread;->appKey:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oppo/account/ReqSigninAgent$MyReqThread;->accountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/account/ReqSigninAgent$MyReqThread;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/account/ReqSigninAgent$MyReqThread;->appSecret:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oppo/account/HmacHelper;->signMD5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 328
    .local v4, "hmacKey":Ljava/lang/String;
    iget-object v0, p0, Lcom/oppo/account/ReqSigninAgent$MyReqThread;->this$0:Lcom/oppo/account/ReqSigninAgent;

    iget-object v1, p0, Lcom/oppo/account/ReqSigninAgent$MyReqThread;->accountName:Ljava/lang/String;

    iget-object v2, p0, Lcom/oppo/account/ReqSigninAgent$MyReqThread;->password:Ljava/lang/String;

    iget-object v3, p0, Lcom/oppo/account/ReqSigninAgent$MyReqThread;->appKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/oppo/account/ReqSigninAgent$MyReqThread;->appCode:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/account/ReqSigninAgent;->callReqSignin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nearme/aidl/UserEntity;

    move-result-object v8

    .line 330
    .local v8, "userEntity":Lcom/nearme/aidl/UserEntity;
    iget-object v0, p0, Lcom/oppo/account/ReqSigninAgent$MyReqThread;->this$0:Lcom/oppo/account/ReqSigninAgent;

    invoke-virtual {v0}, Lcom/oppo/account/ReqSigninAgent;->myUnbindNearMeService()V

    .line 332
    if-eqz v8, :cond_1

    iget-object v0, p0, Lcom/oppo/account/ReqSigninAgent$MyReqThread;->this$0:Lcom/oppo/account/ReqSigninAgent;

    # getter for: Lcom/oppo/account/ReqSigninAgent;->mTokenHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/oppo/account/ReqSigninAgent;->access$4(Lcom/oppo/account/ReqSigninAgent;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 333
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 334
    .local v7, "message":Landroid/os/Message;
    iput-object v8, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 335
    iget-object v0, p0, Lcom/oppo/account/ReqSigninAgent$MyReqThread;->this$0:Lcom/oppo/account/ReqSigninAgent;

    # getter for: Lcom/oppo/account/ReqSigninAgent;->mTokenHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/oppo/account/ReqSigninAgent;->access$4(Lcom/oppo/account/ReqSigninAgent;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 339
    .end local v7    # "message":Landroid/os/Message;
    :cond_1
    iget-object v0, p0, Lcom/oppo/account/ReqSigninAgent$MyReqThread;->this$0:Lcom/oppo/account/ReqSigninAgent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oppo/account/ReqSigninAgent;->access$5(Lcom/oppo/account/ReqSigninAgent;Landroid/os/Handler;)V

    .line 341
    return-void

    .line 318
    .end local v4    # "hmacKey":Ljava/lang/String;
    .end local v8    # "userEntity":Lcom/nearme/aidl/UserEntity;
    :catch_0
    move-exception v6

    .line 319
    .local v6, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 314
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
