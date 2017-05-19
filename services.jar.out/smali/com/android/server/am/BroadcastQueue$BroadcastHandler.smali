.class final Lcom/android/server/am/BroadcastQueue$BroadcastHandler;
.super Landroid/os/Handler;
.source "BroadcastQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BroadcastQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BroadcastHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BroadcastQueue;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BroadcastQueue;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->this$0:Lcom/android/server/am/BroadcastQueue;

    .line 196
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 197
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 201
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 205
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->this$0:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {v1, v4}, Lcom/android/server/am/BroadcastQueue;->processNextBroadcast(Z)V

    goto :goto_0

    .line 208
    :sswitch_1
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->this$0:Lcom/android/server/am/BroadcastQueue;

    iget-object v2, v1, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 209
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->this$0:Lcom/android/server/am/BroadcastQueue;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/am/BroadcastQueue;->broadcastTimeoutLocked(Z)V

    .line 210
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 213
    :sswitch_2
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->this$0:Lcom/android/server/am/BroadcastQueue;

    iget-object v1, v1, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    .line 214
    .local v0, "dic":Lcom/android/server/DeviceIdleController$LocalService;
    if-eqz v0, :cond_0

    .line 215
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    int-to-long v2, v2

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/DeviceIdleController$LocalService;->addPowerSaveTempWhitelistAppDirect(IJZLjava/lang/String;)V

    goto :goto_0

    .line 222
    .end local v0    # "dic":Lcom/android/server/DeviceIdleController$LocalService;
    :sswitch_3
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/am/BroadcastRecord;

    .line 226
    .local v6, "r":Lcom/android/server/am/BroadcastRecord;
    iget-object v5, p0, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->this$0:Lcom/android/server/am/BroadcastQueue;

    move-object v9, v8

    move v10, v7

    move v11, v4

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    move-result v13

    .line 227
    .local v13, "doNext":Z
    if-eqz v13, :cond_0

    .line 228
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->this$0:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {v1, v7}, Lcom/android/server/am/BroadcastQueue;->processNextBroadcast(Z)V

    goto :goto_0

    .line 234
    .end local v6    # "r":Lcom/android/server/am/BroadcastRecord;
    .end local v13    # "doNext":Z
    :sswitch_4
    new-instance v12, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->this$0:Lcom/android/server/am/BroadcastQueue;

    # getter for: Lcom/android/server/am/BroadcastQueue;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/am/BroadcastQueue;->access$000(Lcom/android/server/am/BroadcastQueue;)Landroid/content/Context;

    move-result-object v1

    # getter for: Lcom/android/server/am/BroadcastQueue;->CONFIG_NAME:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/BroadcastQueue;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v12, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 235
    .local v12, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->this$0:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {v12}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v2

    # invokes: Lcom/android/server/am/BroadcastQueue;->resolveConfigFromJSON(Lorg/json/JSONArray;)V
    invoke-static {v1, v2}, Lcom/android/server/am/BroadcastQueue;->access$200(Lcom/android/server/am/BroadcastQueue;Lorg/json/JSONArray;)V

    goto :goto_0

    .line 201
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_1
        0xca -> :sswitch_2
        0xcb -> :sswitch_3
        0x2710 -> :sswitch_4
    .end sparse-switch
.end method
