.class final Lcom/android/server/DeviceIdleController$MyHandler;
.super Landroid/os/Handler;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceIdleController;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/DeviceIdleController;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1091
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 1092
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1091
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1096
    const-string/jumbo v1, "DeviceIdleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleMessage("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1095
    :goto_0
    return-void

    .line 1099
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->handleWriteConfigFile()V

    goto :goto_0

    .line 1103
    :pswitch_1
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnStart()V

    .line 1109
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get9(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->-get15(Lcom/android/server/DeviceIdleController;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->setDeviceIdleState(I)V

    .line 1112
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 1113
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get9(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    move-result v13

    .line 1114
    .local v13, "deepChanged":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get9(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    move-result v17

    .line 1117
    .local v17, "lightChanged":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get8(Lcom/android/server/DeviceIdleController;)Lcom/android/server/lights/LightsManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1118
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get8(Lcom/android/server/DeviceIdleController;)Lcom/android/server/lights/LightsManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/lights/LightsManager;->setDeviceIdleMode(Z)Z

    .line 1126
    :cond_0
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get13(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    .line 1127
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get0(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 1128
    const/4 v1, 0x2

    .line 1129
    :goto_2
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const/4 v4, 0x0

    .line 1127
    invoke-interface {v2, v1, v4, v3}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1132
    :goto_3
    if-eqz v13, :cond_1

    .line 1133
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get3(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "stopGps"

    sget-boolean v3, Lcom/android/server/DeviceIdleController;->mStopGps:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1134
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->-get3(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1136
    :cond_1
    if-eqz v17, :cond_2

    .line 1137
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->-get6(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1139
    :cond_2
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnComplete()V

    goto/16 :goto_0

    .line 1122
    .end local v13    # "deepChanged":Z
    .end local v17    # "lightChanged":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get9(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    move-result v13

    .line 1123
    .restart local v13    # "deepChanged":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get9(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    move-result v17

    .restart local v17    # "lightChanged":Z
    goto/16 :goto_1

    .line 1129
    :cond_4
    const/4 v1, 0x1

    goto :goto_2

    .line 1142
    .end local v13    # "deepChanged":Z
    .end local v17    # "lightChanged":Z
    :pswitch_2
    const-string/jumbo v1, "unknown"

    invoke-static {v1}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffStart(Ljava/lang/String;)V

    .line 1146
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get9(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->-get15(Lcom/android/server/DeviceIdleController;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->setDeviceIdleState(I)V

    .line 1149
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get9(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    move-result v13

    .line 1150
    .restart local v13    # "deepChanged":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get9(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    move-result v17

    .line 1152
    .restart local v17    # "lightChanged":Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get13(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    .line 1153
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get0(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    .line 1154
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 1153
    const/4 v3, 0x0

    .line 1154
    const/4 v4, 0x0

    .line 1153
    invoke-interface {v1, v3, v4, v2}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1157
    :goto_4
    if-eqz v13, :cond_6

    .line 1160
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get8(Lcom/android/server/DeviceIdleController;)Lcom/android/server/lights/LightsManager;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1161
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get8(Lcom/android/server/DeviceIdleController;)Lcom/android/server/lights/LightsManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/lights/LightsManager;->setDeviceIdleMode(Z)Z

    .line 1164
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->incActiveIdleOps()V

    .line 1165
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->-get3(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1166
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->-get4(Lcom/android/server/DeviceIdleController;)Landroid/content/BroadcastReceiver;

    move-result-object v5

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1165
    invoke-virtual/range {v1 .. v9}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1168
    :cond_6
    if-eqz v17, :cond_7

    .line 1169
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->incActiveIdleOps()V

    .line 1170
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->-get6(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1171
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->-get4(Lcom/android/server/DeviceIdleController;)Landroid/content/BroadcastReceiver;

    move-result-object v5

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1170
    invoke-virtual/range {v1 .. v9}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1175
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->decActiveIdleOps()V

    .line 1176
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffComplete()V

    goto/16 :goto_0

    .line 1179
    .end local v13    # "deepChanged":Z
    .end local v17    # "lightChanged":Z
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    .line 1180
    .local v11, "activeReason":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .line 1182
    .local v12, "activeUid":I
    if-eqz v11, :cond_b

    move-object v1, v11

    .line 1181
    :goto_5
    invoke-static {v1}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffStart(Ljava/lang/String;)V

    .line 1185
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get9(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->-get15(Lcom/android/server/DeviceIdleController;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->setDeviceIdleState(I)V

    .line 1188
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get9(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    move-result v13

    .line 1189
    .restart local v13    # "deepChanged":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get9(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    move-result v17

    .line 1191
    .restart local v17    # "lightChanged":Z
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get13(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    .line 1192
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get0(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, v11, v12}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ILjava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1196
    :goto_6
    if-eqz v13, :cond_9

    .line 1199
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get8(Lcom/android/server/DeviceIdleController;)Lcom/android/server/lights/LightsManager;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1200
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get8(Lcom/android/server/DeviceIdleController;)Lcom/android/server/lights/LightsManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/lights/LightsManager;->setDeviceIdleMode(Z)Z

    .line 1203
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->-get3(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1205
    :cond_9
    if-eqz v17, :cond_a

    .line 1206
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->-get6(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1208
    :cond_a
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffComplete()V

    goto/16 :goto_0

    .line 1182
    .end local v13    # "deepChanged":Z
    .end local v17    # "lightChanged":Z
    :cond_b
    const-string/jumbo v1, "unknown"

    goto/16 :goto_5

    .line 1211
    .end local v11    # "activeReason":Ljava/lang/String;
    .end local v12    # "activeUid":I
    :pswitch_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    .line 1212
    .local v19, "uid":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/android/server/DeviceIdleController;->checkTempAppWhitelistTimeout(I)V

    goto/16 :goto_0

    .line 1215
    .end local v19    # "uid":I
    :pswitch_5
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    const/4 v10, 0x1

    .line 1216
    .local v10, "active":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get10(Lcom/android/server/DeviceIdleController;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v18

    .line 1218
    .local v18, "size":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_8
    move/from16 v0, v18

    if-ge v15, v0, :cond_d

    .line 1220
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get10(Lcom/android/server/DeviceIdleController;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/os/IMaintenanceActivityListener;

    invoke-interface {v1, v10}, Landroid/os/IMaintenanceActivityListener;->onMaintenanceActivityChanged(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1218
    :goto_9
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 1215
    .end local v10    # "active":Z
    .end local v15    # "i":I
    .end local v18    # "size":I
    :cond_c
    const/4 v10, 0x0

    .restart local v10    # "active":Z
    goto :goto_7

    .line 1226
    .restart local v15    # "i":I
    .restart local v18    # "size":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get10(Lcom/android/server/DeviceIdleController;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_0

    .line 1225
    :catchall_0
    move-exception v1

    .line 1226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->-get10(Lcom/android/server/DeviceIdleController;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1225
    throw v1

    .line 1230
    .end local v10    # "active":Z
    .end local v15    # "i":I
    .end local v18    # "size":I
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->decActiveIdleOps()V

    goto/16 :goto_0

    .line 1222
    .restart local v10    # "active":Z
    .restart local v15    # "i":I
    .restart local v18    # "size":I
    :catch_0
    move-exception v16

    .local v16, "ignored":Landroid/os/RemoteException;
    goto :goto_9

    .line 1194
    .end local v10    # "active":Z
    .end local v15    # "i":I
    .end local v16    # "ignored":Landroid/os/RemoteException;
    .end local v18    # "size":I
    .restart local v11    # "activeReason":Ljava/lang/String;
    .restart local v12    # "activeUid":I
    .restart local v13    # "deepChanged":Z
    .restart local v17    # "lightChanged":Z
    :catch_1
    move-exception v14

    .local v14, "e":Landroid/os/RemoteException;
    goto/16 :goto_6

    .line 1155
    .end local v11    # "activeReason":Ljava/lang/String;
    .end local v12    # "activeUid":I
    .end local v14    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v14

    .restart local v14    # "e":Landroid/os/RemoteException;
    goto/16 :goto_4

    .line 1130
    .end local v14    # "e":Landroid/os/RemoteException;
    :catch_3
    move-exception v14

    .restart local v14    # "e":Landroid/os/RemoteException;
    goto/16 :goto_3

    .line 1097
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
