.class Lcom/android/server/audio/AudioService$ScoClient;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScoClient"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field private mCreatorPid:I

.field private mStartcount:I

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V
    .locals 1
    .param p2, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 3143
    iput-object p1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3144
    iput-object p2, p0, Lcom/android/server/audio/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    .line 3145
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/AudioService$ScoClient;->mCreatorPid:I

    .line 3146
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    .line 3147
    return-void
.end method

.method private requestScoState(II)V
    .locals 9
    .param p1, "state"    # I
    .param p2, "scoAudioMode"    # I

    .prologue
    const/4 v4, 0x5

    const/4 v2, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 3235
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->checkScoAudioState()V
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2300(Lcom/android/server/audio/AudioService;)V

    .line 3236
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$ScoClient;->totalCount()I

    move-result v1

    if-nez v1, :cond_6

    .line 3237
    const/16 v1, 0xc

    if-ne p1, v1, :cond_e

    .line 3240
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v1, v8}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;I)V

    .line 3243
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$1300(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 3244
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$1300(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$1300(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPid()I

    move-result v1

    iget v3, p0, Lcom/android/server/audio/AudioService$ScoClient;->mCreatorPid:I

    if-ne v1, v3, :cond_d

    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-ne v1, v4, :cond_d

    .line 3248
    :cond_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-nez v1, :cond_c

    .line 3249
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v1, p2}, Lcom/android/server/audio/AudioService;->access$2602(Lcom/android/server/audio/AudioService;I)I

    .line 3250
    const/4 v1, -0x1

    if-ne p2, v1, :cond_3

    .line 3251
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 3252
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    new-instance v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bluetooth_sco_channel_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->access$2602(Lcom/android/server/audio/AudioService;I)I

    .line 3257
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2600(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-gt v1, v8, :cond_2

    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2600(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-gez v1, :cond_3

    .line 3258
    :cond_2
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->access$2602(Lcom/android/server/audio/AudioService;I)I

    .line 3264
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 3265
    const/4 v0, 0x0

    .line 3266
    .local v0, "status":Z
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2600(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-ne v1, v7, :cond_8

    .line 3267
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->connectAudio()Z

    move-result v0

    .line 3276
    :cond_4
    :goto_1
    if-eqz v0, :cond_a

    .line 3277
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x3

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->access$2502(Lcom/android/server/audio/AudioService;I)I

    .line 3292
    .end local v0    # "status":Z
    :cond_5
    :goto_2
    monitor-exit v2

    .line 3323
    :cond_6
    :goto_3
    return-void

    .line 3261
    :cond_7
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->access$2602(Lcom/android/server/audio/AudioService;I)I

    goto :goto_0

    .line 3292
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3268
    .restart local v0    # "status":Z
    :cond_8
    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2600(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-nez v1, :cond_9

    .line 3269
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->startScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_1

    .line 3271
    :cond_9
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2600(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-ne v1, v8, :cond_4

    .line 3272
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_1

    .line 3279
    :cond_a
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/audio/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;I)V

    goto :goto_2

    .line 3282
    .end local v0    # "status":Z
    :cond_b
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->getBluetoothHeadset()Z
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3283
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->access$2502(Lcom/android/server/audio/AudioService;I)I

    goto :goto_2

    .line 3286
    :cond_c
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x3

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->access$2502(Lcom/android/server/audio/AudioService;I)I

    .line 3287
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x1

    # invokes: Lcom/android/server/audio/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;I)V

    goto :goto_2

    .line 3290
    :cond_d
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/audio/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 3293
    :cond_e
    const/16 v1, 0xa

    if-ne p1, v1, :cond_6

    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-eq v1, v2, :cond_f

    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-ne v1, v7, :cond_6

    .line 3296
    :cond_f
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-ne v1, v2, :cond_14

    .line 3297
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 3298
    const/4 v0, 0x0

    .line 3299
    .restart local v0    # "status":Z
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2600(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-ne v1, v7, :cond_11

    .line 3300
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->disconnectAudio()Z

    move-result v0

    .line 3309
    :cond_10
    :goto_4
    if-nez v0, :cond_6

    .line 3310
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->access$2502(Lcom/android/server/audio/AudioService;I)I

    .line 3311
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;I)V

    goto/16 :goto_3

    .line 3301
    :cond_11
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2600(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-nez v1, :cond_12

    .line 3302
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHeadset;->stopScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_4

    .line 3304
    :cond_12
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2600(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-ne v1, v8, :cond_10

    .line 3305
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_4

    .line 3314
    .end local v0    # "status":Z
    :cond_13
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->getBluetoothHeadset()Z
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3315
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v1, v4}, Lcom/android/server/audio/AudioService;->access$2502(Lcom/android/server/audio/AudioService;I)I

    goto/16 :goto_3

    .line 3318
    :cond_14
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->access$2502(Lcom/android/server/audio/AudioService;I)I

    .line 3319
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;I)V

    goto/16 :goto_3
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    .line 3150
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2200(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 3151
    :try_start_0
    const-string v1, "AudioService"

    const-string v3, "SCO client died"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3152
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2200(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 3153
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 3154
    const-string v1, "AudioService"

    const-string v3, "unregistered SCO client died"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3159
    :goto_0
    monitor-exit v2

    .line 3160
    return-void

    .line 3156
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService$ScoClient;->clearCount(Z)V

    .line 3157
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2200(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3159
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearCount(Z)V
    .locals 5
    .param p1, "stopSco"    # Z

    .prologue
    .line 3196
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2200(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 3197
    :try_start_0
    iget v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 3199
    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3204
    :cond_0
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    .line 3205
    if-eqz p1, :cond_1

    .line 3206
    const/16 v1, 0xa

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/server/audio/AudioService$ScoClient;->requestScoState(II)V

    .line 3208
    :cond_1
    monitor-exit v2

    .line 3209
    return-void

    .line 3200
    :catch_0
    move-exception v0

    .line 3201
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearCount() mStartcount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " != 0 but not registered to binder"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3208
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public decCount()V
    .locals 4

    .prologue
    .line 3178
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2200(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 3179
    :try_start_0
    iget v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    if-nez v1, :cond_0

    .line 3180
    const-string v1, "AudioService"

    const-string v3, "ScoClient.decCount() already 0"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3192
    :goto_0
    monitor-exit v2

    .line 3193
    return-void

    .line 3182
    :cond_0
    iget v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    .line 3183
    iget v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 3185
    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3190
    :cond_1
    :goto_1
    const/16 v1, 0xa

    const/4 v3, 0x0

    :try_start_2
    invoke-direct {p0, v1, v3}, Lcom/android/server/audio/AudioService$ScoClient;->requestScoState(II)V

    goto :goto_0

    .line 3192
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 3186
    :catch_0
    move-exception v0

    .line 3187
    .local v0, "e":Ljava/util/NoSuchElementException;
    :try_start_3
    const-string v1, "AudioService"

    const-string v3, "decCount() going to 0 but not registered to binder"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 3216
    iget-object v0, p0, Lcom/android/server/audio/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 3212
    iget v0, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    return v0
.end method

.method public getPid()I
    .locals 1

    .prologue
    .line 3220
    iget v0, p0, Lcom/android/server/audio/AudioService$ScoClient;->mCreatorPid:I

    return v0
.end method

.method public incCount(I)V
    .locals 5
    .param p1, "scoAudioMode"    # I

    .prologue
    .line 3163
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2200(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 3164
    const/16 v1, 0xc

    :try_start_0
    invoke-direct {p0, v1, p1}, Lcom/android/server/audio/AudioService$ScoClient;->requestScoState(II)V

    .line 3165
    iget v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 3167
    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3173
    :cond_0
    :goto_0
    :try_start_2
    iget v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    .line 3174
    monitor-exit v2

    .line 3175
    return-void

    .line 3168
    :catch_0
    move-exception v0

    .line 3170
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ScoClient  incCount() could not link to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/audio/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " binder death"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3174
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public totalCount()I
    .locals 5

    .prologue
    .line 3224
    iget-object v3, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$2200(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 3225
    const/4 v0, 0x0

    .line 3226
    .local v0, "count":I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$2200(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3227
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 3228
    iget-object v3, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$2200(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$ScoClient;

    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$ScoClient;->getCount()I

    move-result v3

    add-int/2addr v0, v3

    .line 3227
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3230
    :cond_0
    monitor-exit v4

    return v0

    .line 3231
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
