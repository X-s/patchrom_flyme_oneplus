.class public Lcom/oppo/service/account/CallInfoAgent$TokenThread;
.super Ljava/lang/Thread;
.source "CallInfoAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/service/account/CallInfoAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TokenThread"
.end annotation


# instance fields
.field private reqCode:I

.field final synthetic this$0:Lcom/oppo/service/account/CallInfoAgent;


# direct methods
.method constructor <init>(Lcom/oppo/service/account/CallInfoAgent;I)V
    .locals 1
    .param p2, "reqCede"    # I

    .prologue
    .line 198
    iput-object p1, p0, Lcom/oppo/service/account/CallInfoAgent$TokenThread;->this$0:Lcom/oppo/service/account/CallInfoAgent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 196
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/service/account/CallInfoAgent$TokenThread;->reqCode:I

    .line 199
    iput p2, p0, Lcom/oppo/service/account/CallInfoAgent$TokenThread;->reqCode:I

    .line 200
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 204
    iget-object v3, p0, Lcom/oppo/service/account/CallInfoAgent$TokenThread;->this$0:Lcom/oppo/service/account/CallInfoAgent;

    # getter for: Lcom/oppo/service/account/CallInfoAgent;->isLocked:Ljava/lang/Integer;
    invoke-static {v3}, Lcom/oppo/service/account/CallInfoAgent;->access$1(Lcom/oppo/service/account/CallInfoAgent;)Ljava/lang/Integer;

    move-result-object v4

    monitor-enter v4

    .line 205
    :try_start_0
    # getter for: Lcom/oppo/service/account/CallInfoAgent;->myToken:Lcom/nearme/aidl/IAskToken;
    invoke-static {}, Lcom/oppo/service/account/CallInfoAgent;->access$4()Lcom/nearme/aidl/IAskToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-nez v3, :cond_0

    .line 207
    :try_start_1
    iget-object v3, p0, Lcom/oppo/service/account/CallInfoAgent$TokenThread;->this$0:Lcom/oppo/service/account/CallInfoAgent;

    # getter for: Lcom/oppo/service/account/CallInfoAgent;->isLocked:Ljava/lang/Integer;
    invoke-static {v3}, Lcom/oppo/service/account/CallInfoAgent;->access$1(Lcom/oppo/service/account/CallInfoAgent;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 214
    new-instance v2, Lcom/nearme/aidl/UserEntity;

    invoke-direct {v2}, Lcom/nearme/aidl/UserEntity;-><init>()V

    .line 216
    .local v2, "userEntity":Lcom/nearme/aidl/UserEntity;
    iget v3, p0, Lcom/oppo/service/account/CallInfoAgent$TokenThread;->reqCode:I

    packed-switch v3, :pswitch_data_0

    .line 230
    :goto_1
    iget-object v3, p0, Lcom/oppo/service/account/CallInfoAgent$TokenThread;->this$0:Lcom/oppo/service/account/CallInfoAgent;

    invoke-virtual {v3}, Lcom/oppo/service/account/CallInfoAgent;->unbindNearMeService()V

    .line 232
    if-eqz v2, :cond_1

    # getter for: Lcom/oppo/service/account/CallInfoAgent;->currentHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/oppo/service/account/CallInfoAgent;->access$5()Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 233
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 234
    .local v1, "message":Landroid/os/Message;
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 235
    # getter for: Lcom/oppo/service/account/CallInfoAgent;->currentHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/oppo/service/account/CallInfoAgent;->access$5()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 239
    .end local v1    # "message":Landroid/os/Message;
    :cond_1
    invoke-static {v5}, Lcom/oppo/service/account/CallInfoAgent;->access$2(Lcom/nearme/aidl/IAskToken;)V

    .line 240
    invoke-static {v5}, Lcom/oppo/service/account/CallInfoAgent;->access$6(Landroid/os/Handler;)V

    .line 241
    return-void

    .line 208
    .end local v2    # "userEntity":Lcom/nearme/aidl/UserEntity;
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 204
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 218
    .restart local v2    # "userEntity":Lcom/nearme/aidl/UserEntity;
    :pswitch_0
    iget-object v3, p0, Lcom/oppo/service/account/CallInfoAgent$TokenThread;->this$0:Lcom/oppo/service/account/CallInfoAgent;

    invoke-virtual {v3}, Lcom/oppo/service/account/CallInfoAgent;->callReqToken()Lcom/nearme/aidl/UserEntity;

    move-result-object v2

    .line 219
    goto :goto_1

    .line 221
    :pswitch_1
    iget-object v3, p0, Lcom/oppo/service/account/CallInfoAgent$TokenThread;->this$0:Lcom/oppo/service/account/CallInfoAgent;

    invoke-virtual {v3}, Lcom/oppo/service/account/CallInfoAgent;->callReqSignin()Lcom/nearme/aidl/UserEntity;

    move-result-object v2

    .line 222
    goto :goto_1

    .line 224
    :pswitch_2
    iget-object v3, p0, Lcom/oppo/service/account/CallInfoAgent$TokenThread;->this$0:Lcom/oppo/service/account/CallInfoAgent;

    invoke-virtual {v3}, Lcom/oppo/service/account/CallInfoAgent;->callReqCheckPwd()Lcom/nearme/aidl/UserEntity;

    move-result-object v2

    .line 225
    goto :goto_1

    .line 216
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
