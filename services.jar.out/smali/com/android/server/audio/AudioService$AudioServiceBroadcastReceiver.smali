.class Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioServiceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    .prologue
    .line 5704
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/audio/AudioService;
    .param p2, "x1"    # Lcom/android/server/audio/AudioService$1;

    .prologue
    .line 5704
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 30
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 5707
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    .line 5712
    .local v17, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.DOCK_EVENT"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5713
    const-string v2, "android.intent.extra.DOCK_STATE"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 5716
    .local v22, "dockState":I
    packed-switch v22, :pswitch_data_0

    .line 5731
    const/16 v21, 0x0

    .line 5735
    .local v21, "config":I
    :goto_0
    const/4 v2, 0x3

    move/from16 v0, v22

    if-eq v0, v2, :cond_1

    if-nez v22, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mDockState:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$7700(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 5738
    :cond_0
    const/4 v2, 0x3

    move/from16 v0, v21

    invoke-static {v2, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 5740
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move/from16 v0, v22

    # setter for: Lcom/android/server/audio/AudioService;->mDockState:I
    invoke-static {v2, v0}, Lcom/android/server/audio/AudioService;->access$7702(Lcom/android/server/audio/AudioService;I)I

    .line 6172
    .end local v21    # "config":I
    .end local v22    # "dockState":I
    :cond_2
    :goto_1
    return-void

    .line 5718
    .restart local v22    # "dockState":I
    :pswitch_0
    const/16 v21, 0x7

    .line 5719
    .restart local v21    # "config":I
    goto :goto_0

    .line 5721
    .end local v21    # "config":I
    :pswitch_1
    const/16 v21, 0x6

    .line 5722
    .restart local v21    # "config":I
    goto :goto_0

    .line 5724
    .end local v21    # "config":I
    :pswitch_2
    const/16 v21, 0x8

    .line 5725
    .restart local v21    # "config":I
    goto :goto_0

    .line 5727
    .end local v21    # "config":I
    :pswitch_3
    const/16 v21, 0x9

    .line 5728
    .restart local v21    # "config":I
    goto :goto_0

    .line 5741
    .end local v21    # "config":I
    .end local v22    # "dockState":I
    :cond_3
    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5742
    const-string v2, "android.bluetooth.profile.extra.STATE"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v26

    .line 5744
    .local v26, "state":I
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v19

    check-cast v19, Landroid/bluetooth/BluetoothDevice;

    .line 5746
    .local v19, "btDevice":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v2, v0, v1}, Lcom/android/server/audio/AudioService;->setBtScoDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_1

    .line 5747
    .end local v19    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v26    # "state":I
    :cond_4
    const-string v2, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 5748
    const/16 v18, 0x0

    .line 5749
    .local v18, "broadcast":Z
    const/16 v25, -0x1

    .line 5750
    .local v25, "scoAudioState":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2200(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 5751
    :try_start_0
    const-string v2, "android.bluetooth.profile.extra.STATE"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 5753
    .local v20, "btState":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2200(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_6

    .line 5757
    :cond_5
    const/16 v18, 0x1

    .line 5759
    :cond_6
    packed-switch v20, :pswitch_data_1

    .line 5781
    :cond_7
    :goto_2
    const/16 v18, 0x0

    .line 5784
    :cond_8
    :goto_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5785
    if-eqz v18, :cond_2

    .line 5786
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move/from16 v0, v25

    # invokes: Lcom/android/server/audio/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v2, v0}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;I)V

    .line 5789
    new-instance v24, Landroid/content/Intent;

    const-string v2, "android.media.SCO_AUDIO_STATE_CHANGED"

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5790
    .local v24, "newIntent":Landroid/content/Intent;
    const-string v2, "android.media.extra.SCO_AUDIO_STATE"

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5791
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, v24

    # invokes: Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V
    invoke-static {v2, v0}, Lcom/android/server/audio/AudioService;->access$7800(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 5761
    .end local v24    # "newIntent":Landroid/content/Intent;
    :pswitch_4
    const/16 v25, 0x1

    .line 5762
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v4, 0x5

    if-eq v2, v4, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_8

    .line 5765
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v4, 0x2

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2, v4}, Lcom/android/server/audio/AudioService;->access$2502(Lcom/android/server/audio/AudioService;I)I

    goto :goto_3

    .line 5784
    .end local v20    # "btState":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 5769
    .restart local v20    # "btState":I
    :pswitch_5
    const/16 v25, 0x0

    .line 5770
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2, v4}, Lcom/android/server/audio/AudioService;->access$2502(Lcom/android/server/audio/AudioService;I)I

    .line 5771
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6}, Lcom/android/server/audio/AudioService;->clearAllScoClients(IZ)V

    goto :goto_3

    .line 5774
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v4, 0x5

    if-eq v2, v4, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_7

    .line 5777
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v4, 0x2

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2, v4}, Lcom/android/server/audio/AudioService;->access$2502(Lcom/android/server/audio/AudioService;I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 5793
    .end local v18    # "broadcast":Z
    .end local v20    # "btState":I
    .end local v25    # "scoAudioState":I
    :cond_9
    const-string v2, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 5794
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMonitorRotation:Z
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$7900(Lcom/android/server/audio/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 5795
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->enable()V

    .line 5797
    :cond_a
    const-string v2, "screen_state=on"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 5798
    :cond_b
    const-string v2, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 5799
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMonitorRotation:Z
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$7900(Lcom/android/server/audio/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 5801
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->disable()V

    .line 5803
    :cond_c
    const-string v2, "screen_state=off"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 5804
    :cond_d
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 5805
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/audio/AudioService;->handleConfigurationChanged(Landroid/content/Context;)V
    invoke-static {v2, v0}, Lcom/android/server/audio/AudioService;->access$8000(Lcom/android/server/audio/AudioService;Landroid/content/Context;)V

    goto/16 :goto_1

    .line 5806
    :cond_e
    const-string v2, "android.intent.action.USER_SWITCHED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 5808
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v2

    const/16 v3, 0xf

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    # invokes: Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5816
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$8100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/audio/MediaFocusControl;->discardAudioFocusOwner()V

    .line 5819
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x1

    # invokes: Lcom/android/server/audio/AudioService;->readAudioSettings(Z)V
    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->access$8200(Lcom/android/server/audio/AudioService;Z)V

    .line 5821
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v2

    const/16 v3, 0xa

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$4900(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v7

    const/4 v8, 0x3

    aget-object v7, v7, v8

    const/4 v8, 0x0

    # invokes: Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_1

    .line 5827
    :cond_f
    const-string v2, "android.intent.action.USER_BACKGROUND"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 5829
    const-string v2, "android.intent.extra.user_handle"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v28

    .line 5830
    .local v28, "userId":I
    if-ltz v28, :cond_10

    .line 5832
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v29

    .line 5833
    .local v29, "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, v29

    # invokes: Lcom/android/server/audio/AudioService;->killBackgroundUserProcessesWithRecordAudioPermission(Landroid/content/pm/UserInfo;)V
    invoke-static {v2, v0}, Lcom/android/server/audio/AudioService;->access$8300(Lcom/android/server/audio/AudioService;Landroid/content/pm/UserInfo;)V

    .line 5835
    .end local v29    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_10
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    const-string v3, "no_record_audio"

    const/4 v4, 0x1

    move/from16 v0, v28

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/pm/UserManagerService;->setSystemControlledUserRestriction(Ljava/lang/String;ZI)V

    goto/16 :goto_1

    .line 5837
    .end local v28    # "userId":I
    :cond_11
    const-string v2, "android.intent.action.USER_FOREGROUND"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 5839
    const-string v2, "android.intent.extra.user_handle"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v28

    .line 5840
    .restart local v28    # "userId":I
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    const-string v3, "no_record_audio"

    const/4 v4, 0x0

    move/from16 v0, v28

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/pm/UserManagerService;->setSystemControlledUserRestriction(Ljava/lang/String;ZI)V

    goto/16 :goto_1

    .line 5842
    .end local v28    # "userId":I
    :cond_12
    const-string v2, "com.oem.intent.action.THREE_KEY_MODE_BOOT"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "com.oem.intent.action.THREE_KEY_MODE_BOOT_MEDIASERVERDIED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 5846
    :cond_13
    const-string v2, "switch_state"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    .line 5848
    .local v27, "switch_state":I
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switch_state_boot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5850
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v8

    monitor-enter v8

    .line 5851
    :try_start_3
    invoke-static {}, Lcom/android/server/audio/AudioService;->isASBluetoothA2dpOn()Z

    move-result v2

    if-nez v2, :cond_14

    invoke-static {}, Lcom/android/server/audio/AudioService;->isASWiredHeadsetOn()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 5853
    :cond_14
    const-string v2, "AudioService"

    const-string v3, "switch_state connected headset or A2DB"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5855
    sget v2, Landroid/media/AudioManager;->SWITCH_STATE_ON:I

    move/from16 v0, v27

    if-ne v2, v0, :cond_16

    .line 5857
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switch_state_boot1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5859
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    sget v3, Landroid/media/AudioManager;->SWITCH_STATE_ON:I

    # setter for: Lcom/android/server/audio/AudioService;->mThreeKeyMode:I
    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->access$8402(Lcom/android/server/audio/AudioService;I)I

    .line 5860
    # getter for: Lcom/android/server/audio/AudioService;->sIsH2:Z
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$8500()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 5861
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5864
    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5865
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$4900(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v2

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 5867
    const/4 v2, 0x7

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5868
    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5869
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5870
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$4900(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->broadcastStreamMuteStatus(Z)V

    .line 5871
    const/4 v2, 0x6

    const/16 v3, 0xd

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 5872
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/16 v3, 0xd

    # setter for: Lcom/android/server/audio/AudioService;->mForcedUseForNoSpeaker:I
    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->access$8602(Lcom/android/server/audio/AudioService;I)I

    .line 5873
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string v3, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    const/4 v4, 0x2

    # invokes: Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V
    invoke-static {v2, v3, v4}, Lcom/android/server/audio/AudioService;->access$8700(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V

    .line 5981
    :cond_15
    :goto_4
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5982
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->maybeMuteRingAndSystem()V
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$9300(Lcom/android/server/audio/AudioService;)V

    goto/16 :goto_1

    .line 5875
    :cond_16
    :try_start_4
    sget v2, Landroid/media/AudioManager;->SWITCH_STATE_MIDDLE:I

    move/from16 v0, v27

    if-ne v2, v0, :cond_17

    .line 5877
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switch_state_boot2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5879
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    sget v3, Landroid/media/AudioManager;->SWITCH_STATE_MIDDLE:I

    # setter for: Lcom/android/server/audio/AudioService;->mThreeKeyMode:I
    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->access$8402(Lcom/android/server/audio/AudioService;I)I

    .line 5880
    # getter for: Lcom/android/server/audio/AudioService;->sIsH2:Z
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$8500()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 5881
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5884
    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5885
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$4900(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v2

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 5887
    const/4 v2, 0x7

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5888
    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5889
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5890
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$4900(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->broadcastStreamMuteStatus(Z)V

    .line 5891
    const/4 v2, 0x6

    const/16 v3, 0xe

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 5892
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/audio/AudioService;->mForcedUseForNoSpeaker:I
    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->access$8602(Lcom/android/server/audio/AudioService;I)I

    .line 5893
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string v3, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    const/4 v4, 0x2

    # invokes: Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V
    invoke-static {v2, v3, v4}, Lcom/android/server/audio/AudioService;->access$8700(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 5981
    :catchall_1
    move-exception v2

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 5895
    :cond_17
    :try_start_5
    sget v2, Landroid/media/AudioManager;->SWITCH_STATE_DOWN:I

    move/from16 v0, v27

    if-ne v2, v0, :cond_15

    .line 5897
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switch_state_boot3: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5899
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    sget v3, Landroid/media/AudioManager;->SWITCH_STATE_DOWN:I

    # setter for: Lcom/android/server/audio/AudioService;->mThreeKeyMode:I
    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->access$8402(Lcom/android/server/audio/AudioService;I)I

    .line 5900
    # getter for: Lcom/android/server/audio/AudioService;->sIsH2:Z
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$8500()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 5901
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5902
    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5903
    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5904
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5907
    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5908
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$4900(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v2

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 5910
    const/4 v2, 0x6

    const/16 v3, 0xe

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 5911
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/audio/AudioService;->mForcedUseForNoSpeaker:I
    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->access$8602(Lcom/android/server/audio/AudioService;I)I

    .line 5912
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x2

    # invokes: Lcom/android/server/audio/AudioService;->setRingerModeExt(I)V
    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->access$8800(Lcom/android/server/audio/AudioService;I)V

    goto/16 :goto_4

    .line 5916
    :cond_18
    sget v2, Landroid/media/AudioManager;->SWITCH_STATE_ON:I

    move/from16 v0, v27

    if-ne v2, v0, :cond_1a

    .line 5918
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switch_state_boot1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5920
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    sget v3, Landroid/media/AudioManager;->SWITCH_STATE_ON:I

    # setter for: Lcom/android/server/audio/AudioService;->mThreeKeyMode:I
    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->access$8402(Lcom/android/server/audio/AudioService;I)I

    .line 5921
    # getter for: Lcom/android/server/audio/AudioService;->sIsH2:Z
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$8500()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 5922
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5923
    const/4 v2, 0x7

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5924
    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5925
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5928
    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5929
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$4900(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v2

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 5932
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mFirstStart:Z
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$8900(Lcom/android/server/audio/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 5933
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switch_state_boot1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "set volume of Music stream zero"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5934
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v7, "LF1"

    # invokes: Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V
    invoke-static/range {v2 .. v7}, Lcom/android/server/audio/AudioService;->access$9000(Lcom/android/server/audio/AudioService;IIIZLjava/lang/String;)V

    .line 5936
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/audio/AudioService;->mFirstStart:Z
    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->access$8902(Lcom/android/server/audio/AudioService;Z)Z

    .line 5937
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/audio/AudioService;->mOldMusicVolume:I
    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->access$9102(Lcom/android/server/audio/AudioService;I)I

    .line 5938
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mOldMusicVolume:I
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$9100(Lcom/android/server/audio/AudioService;)I

    move-result v3

    # invokes: Lcom/android/server/audio/AudioService;->persistMusicVolume(I)V
    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->access$9200(Lcom/android/server/audio/AudioService;I)V

    .line 5941
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$4900(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 5942
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string v3, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    const/4 v4, 0x2

    # invokes: Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V
    invoke-static {v2, v3, v4}, Lcom/android/server/audio/AudioService;->access$8700(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 5944
    :cond_1a
    sget v2, Landroid/media/AudioManager;->SWITCH_STATE_MIDDLE:I

    move/from16 v0, v27

    if-ne v2, v0, :cond_1b

    .line 5946
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switch_state_boot2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5948
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    sget v3, Landroid/media/AudioManager;->SWITCH_STATE_MIDDLE:I

    # setter for: Lcom/android/server/audio/AudioService;->mThreeKeyMode:I
    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->access$8402(Lcom/android/server/audio/AudioService;I)I

    .line 5949
    # getter for: Lcom/android/server/audio/AudioService;->sIsH2:Z
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$8500()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 5950
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5951
    const/4 v2, 0x7

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5952
    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5953
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5956
    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5957
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$4900(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v2

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 5959
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$4900(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 5960
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string v3, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    const/4 v4, 0x2

    # invokes: Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V
    invoke-static {v2, v3, v4}, Lcom/android/server/audio/AudioService;->access$8700(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 5962
    :cond_1b
    sget v2, Landroid/media/AudioManager;->SWITCH_STATE_DOWN:I

    move/from16 v0, v27

    if-ne v2, v0, :cond_15

    .line 5964
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switch_state_boot3: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5966
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    sget v3, Landroid/media/AudioManager;->SWITCH_STATE_DOWN:I

    # setter for: Lcom/android/server/audio/AudioService;->mThreeKeyMode:I
    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->access$8402(Lcom/android/server/audio/AudioService;I)I

    .line 5967
    # getter for: Lcom/android/server/audio/AudioService;->sIsH2:Z
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$8500()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 5968
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5969
    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5970
    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5971
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5974
    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5975
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$4900(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v2

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_4

    .line 5983
    .end local v27    # "switch_state":I
    :cond_1c
    const-string v2, "com.oem.intent.action.THREE_KEY_MODE"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 5984
    const-string v2, "switch_state"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    .line 5985
    .restart local v27    # "switch_state":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v12

    monitor-enter v12

    .line 5986
    :try_start_6
    invoke-static {}, Lcom/android/server/audio/AudioService;->isASBluetoothA2dpOn()Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-static {}, Lcom/android/server/audio/AudioService;->isASWiredHeadsetOn()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 5988
    :cond_1d
    const-string v2, "AudioService"

    const-string v3, "switch_state connectted headset or A2DB"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5990
    sget v2, Landroid/media/AudioManager;->SWITCH_STATE_ON:I

    move/from16 v0, v27

    if-ne v2, v0, :cond_1f

    .line 5992
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switch_state1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5994
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    sget v3, Landroid/media/AudioManager;->SWITCH_STATE_ON:I

    # setter for: Lcom/android/server/audio/AudioService;->mThreeKeyMode:I
    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->access$8402(Lcom/android/server/audio/AudioService;I)I

    .line 5995
    # getter for: Lcom/android/server/audio/AudioService;->sIsH2:Z
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$8500()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 5996
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5999
    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 6000
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$4900(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v2

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 6002
    const/4 v2, 0x7

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 6003
    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 6004
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 6005
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v7, "LF1"

    # invokes: Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V
    invoke-static/range {v2 .. v7}, Lcom/android/server/audio/AudioService;->access$9000(Lcom/android/server/audio/AudioService;IIIZLjava/lang/String;)V

    .line 6007
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$4900(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->broadcastStreamMuteStatus(Z)V

    .line 6008
    const/4 v2, 0x6

    const/16 v3, 0xd

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 6009
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/16 v3, 0xd

    # setter for: Lcom/android/server/audio/AudioService;->mForcedUseForNoSpeaker:I
    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->access$8602(Lcom/android/server/audio/AudioService;I)I

    .line 6010
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string v3, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    const/4 v4, 0x2

    # invokes: Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V
    invoke-static {v2, v3, v4}, Lcom/android/server/audio/AudioService;->access$8700(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V

    .line 6147
    :cond_1e
    :goto_5
    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 6148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->maybeMuteRingAndSystem()V
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$9300(Lcom/android/server/audio/AudioService;)V

    goto/16 :goto_1

    .line 6012
    :cond_1f
    :try_start_7
    sget v2, Landroid/media/AudioManager;->SWITCH_STATE_MIDDLE:I

    move/from16 v0, v27

    if-ne v2, v0, :cond_21

    .line 6014
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switch_state2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6016
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    sget v3, Landroid/media/AudioManager;->SWITCH_STATE_MIDDLE:I

    # setter for: Lcom/android/server/audio/AudioService;->mThreeKeyMode:I
    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->access$8402(Lcom/android/server/audio/AudioService;I)I

    .line 6017
    # getter for: Lcom/android/server/audio/AudioService;->sIsH2:Z
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$8500()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 6018
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 6021
    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 6022
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$4900(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v2

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 6024
    const/4 v2, 0x7

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 6025
    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 6026
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 6027
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$4900(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v23, v2, 0xa

    .line 6030
    .local v23, "mnew_Music_volume":I
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mnew_Music_volume: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mOldMusicVolume: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mOldMusicVolume:I
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$9100(Lcom/android/server/audio/AudioService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6033
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mOldMusicVolume:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$9100(Lcom/android/server/audio/AudioService;)I

    move-result v2

    move/from16 v0, v23

    if-eq v2, v0, :cond_20

    .line 6034
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mOldMusicVolume:I
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$9100(Lcom/android/server/audio/AudioService;)I

    move-result v4

    mul-int/lit8 v4, v4, 0xa

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v7, "LF1"

    # invokes: Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V
    invoke-static/range {v2 .. v7}, Lcom/android/server/audio/AudioService;->access$9000(Lcom/android/server/audio/AudioService;IIIZLjava/lang/String;)V

    .line 6037
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$4900(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->broadcastStreamMuteStatus(Z)V

    .line 6038
    const/4 v2, 0x6

    const/16 v3, 0xe

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 6039
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/audio/AudioService;->mForcedUseForNoSpeaker:I
    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->access$8602(Lcom/android/server/audio/AudioService;I)I

    .line 6040
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string v3, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    const/4 v4, 0x2

    # invokes: Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V
    invoke-static {v2, v3, v4}, Lcom/android/server/audio/AudioService;->access$8700(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 6147
    .end local v23    # "mnew_Music_volume":I
    :catchall_2
    move-exception v2

    monitor-exit v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v2

    .line 6042
    :cond_21
    :try_start_8
    sget v2, Landroid/media/AudioManager;->SWITCH_STATE_DOWN:I

    move/from16 v0, v27

    if-ne v2, v0, :cond_1e

    .line 6044
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switch_state3: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6046
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    sget v3, Landroid/media/AudioManager;->SWITCH_STATE_DOWN:I

    # setter for: Lcom/android/server/audio/AudioService;->mThreeKeyMode:I
    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->access$8402(Lcom/android/server/audio/AudioService;I)I

    .line 6047
    # getter for: Lcom/android/server/audio/AudioService;->sIsH2:Z
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$8500()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 6048
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 6049
    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 6050
    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 6051
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 6054
    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 6055
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$4900(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v2

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 6057
    const/4 v2, 0x6

    const/16 v3, 0xe

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 6058
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/audio/AudioService;->mForcedUseForNoSpeaker:I
    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->access$8602(Lcom/android/server/audio/AudioService;I)I

    .line 6059
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x2

    # invokes: Lcom/android/server/audio/AudioService;->setRingerModeExt(I)V
    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->access$8800(Lcom/android/server/audio/AudioService;I)V

    goto/16 :goto_5

    .line 6063
    :cond_22
    sget v2, Landroid/media/AudioManager;->SWITCH_STATE_ON:I

    move/from16 v0, v27

    if-ne v2, v0, :cond_23

    .line 6065
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switch_state1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6067
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    sget v3, Landroid/media/AudioManager;->SWITCH_STATE_ON:I

    # setter for: Lcom/android/server/audio/AudioService;->mThreeKeyMode:I
    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->access$8402(Lcom/android/server/audio/AudioService;I)I

    .line 6068
    # getter for: Lcom/android/server/audio/AudioService;->sIsH2:Z
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$8500()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 6069
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 6070
    const/4 v2, 0x7

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 6071
    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 6072
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 6075
    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 6076
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$4900(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v2

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 6078
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x3

    # invokes: Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I
    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;I)I

    move-result v5

    .line 6079
    .local v5, "device":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v7, "LF"

    # invokes: Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V
    invoke-static/range {v2 .. v7}, Lcom/android/server/audio/AudioService;->access$9000(Lcom/android/server/audio/AudioService;IIIZLjava/lang/String;)V

    .line 6080
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$4900(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 6081
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string v3, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    const/4 v4, 0x2

    # invokes: Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V
    invoke-static {v2, v3, v4}, Lcom/android/server/audio/AudioService;->access$8700(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 6083
    .end local v5    # "device":I
    :cond_23
    sget v2, Landroid/media/AudioManager;->SWITCH_STATE_MIDDLE:I

    move/from16 v0, v27

    if-ne v2, v0, :cond_25

    .line 6085
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switch_state2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6087
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    sget v3, Landroid/media/AudioManager;->SWITCH_STATE_MIDDLE:I

    # setter for: Lcom/android/server/audio/AudioService;->mThreeKeyMode:I
    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->access$8402(Lcom/android/server/audio/AudioService;I)I

    .line 6088
    # getter for: Lcom/android/server/audio/AudioService;->sIsH2:Z
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$8500()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 6089
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 6090
    const/4 v2, 0x7

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 6091
    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 6092
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 6095
    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 6096
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$4900(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v2

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 6098
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService;->getStreamVolume(I)I

    move-result v23

    .line 6100
    .restart local v23    # "mnew_Music_volume":I
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mnew_Music_volume: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mOldMusicVolume: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mOldMusicVolume:I
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$9100(Lcom/android/server/audio/AudioService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6103
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mOldMusicVolume:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$9100(Lcom/android/server/audio/AudioService;)I

    move-result v2

    move/from16 v0, v23

    if-eq v2, v0, :cond_24

    .line 6104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x3

    # invokes: Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I
    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;I)I

    move-result v9

    .line 6105
    .local v9, "device1":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v7, 0x3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mOldMusicVolume:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$9100(Lcom/android/server/audio/AudioService;)I

    move-result v2

    mul-int/lit8 v8, v2, 0xa

    const/4 v10, 0x0

    const-string v11, "LF"

    # invokes: Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V
    invoke-static/range {v6 .. v11}, Lcom/android/server/audio/AudioService;->access$9000(Lcom/android/server/audio/AudioService;IIIZLjava/lang/String;)V

    .line 6108
    .end local v9    # "device1":I
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$4900(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 6109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string v3, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    const/4 v4, 0x2

    # invokes: Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V
    invoke-static {v2, v3, v4}, Lcom/android/server/audio/AudioService;->access$8700(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 6111
    .end local v23    # "mnew_Music_volume":I
    :cond_25
    sget v2, Landroid/media/AudioManager;->SWITCH_STATE_DOWN:I

    move/from16 v0, v27

    if-ne v2, v0, :cond_1e

    .line 6113
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switch_state3: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    sget v3, Landroid/media/AudioManager;->SWITCH_STATE_DOWN:I

    # setter for: Lcom/android/server/audio/AudioService;->mThreeKeyMode:I
    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->access$8402(Lcom/android/server/audio/AudioService;I)I

    .line 6116
    # getter for: Lcom/android/server/audio/AudioService;->sIsH2:Z
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$8500()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 6117
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 6121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mIsVirtual3SKeySupport:Z
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$9400(Lcom/android/server/audio/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 6122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string v3, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    const/4 v4, 0x2

    # invokes: Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V
    invoke-static {v2, v3, v4}, Lcom/android/server/audio/AudioService;->access$8700(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V

    .line 6123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService;->getStreamVolume(I)I

    move-result v23

    .line 6125
    .restart local v23    # "mnew_Music_volume":I
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mnew_Music_volume: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mOldMusicVolume: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mOldMusicVolume:I
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$9100(Lcom/android/server/audio/AudioService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mOldMusicVolume:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$9100(Lcom/android/server/audio/AudioService;)I

    move-result v2

    move/from16 v0, v23

    if-eq v2, v0, :cond_26

    .line 6129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x3

    # invokes: Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I
    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;I)I

    move-result v9

    .line 6130
    .restart local v9    # "device1":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v7, 0x3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mOldMusicVolume:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$9100(Lcom/android/server/audio/AudioService;)I

    move-result v2

    mul-int/lit8 v8, v2, 0xa

    const/4 v10, 0x0

    const-string v11, "LF"

    # invokes: Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V
    invoke-static/range {v6 .. v11}, Lcom/android/server/audio/AudioService;->access$9000(Lcom/android/server/audio/AudioService;IIIZLjava/lang/String;)V

    .line 6135
    .end local v9    # "device1":I
    .end local v23    # "mnew_Music_volume":I
    :cond_26
    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 6136
    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 6137
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 6140
    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 6141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$4900(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v2

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/16 :goto_5

    .line 6149
    .end local v27    # "switch_state":I
    :cond_27
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 6153
    # getter for: Lcom/android/server/audio/AudioService;->sIsH2:Z
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$8500()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 6155
    const-string v2, "AudioService"

    const-string v3, "ACTION_SHUTDOWN Intent received"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v10

    const/16 v11, 0x1c

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    # invokes: Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v10 .. v16}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6159
    const-string v2, "AudioService"

    const-string v3, "ACTION_SHUTDOWN  Intent received returned"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6164
    :cond_28
    const-string v2, "dev_shutdown=true"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 6166
    :cond_29
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v10

    const/16 v11, 0x1d

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    # invokes: Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v10 .. v16}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_1

    .line 5716
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 5759
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method
