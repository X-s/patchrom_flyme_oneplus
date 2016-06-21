.class Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$4;
.super Landroid/os/Handler;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;
    .param p3, "x1"    # Landroid/os/Handler$Callback;
    .param p4, "x2"    # Z

    .prologue
    .line 1156
    iput-object p1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1159
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1209
    :goto_0
    :pswitch_0
    return-void

    .line 1161
    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    # invokes: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->handleShow(Landroid/os/Bundle;)V
    invoke-static {v2, v1}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$2200(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1164
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->handleHide()V
    invoke-static {v1}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$2300(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)V

    goto :goto_0

    .line 1167
    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->handleReset()V
    invoke-static {v1}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$2400(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)V

    goto :goto_0

    .line 1170
    :pswitch_4
    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->handleVerifyUnlock()V
    invoke-static {v1}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$2500(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)V

    goto :goto_0

    .line 1173
    :pswitch_5
    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->handleNotifyScreenOff()V
    invoke-static {v1}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$2600(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)V

    goto :goto_0

    .line 1176
    :pswitch_6
    iget-object v2, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/policy/IKeyguardShowCallback;

    # invokes: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->handleNotifyScreenOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V
    invoke-static {v2, v1}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$2700(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/IKeyguardShowCallback;)V

    goto :goto_0

    .line 1179
    :pswitch_7
    iget-object v4, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_0

    move v1, v2

    :goto_1
    iget v5, p1, Landroid/os/Message;->arg2:I

    if-eqz v5, :cond_1

    :goto_2
    # invokes: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->handleKeyguardDone(ZZ)V
    invoke-static {v4, v1, v2}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$2800(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;ZZ)V

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_2

    .line 1182
    :pswitch_8
    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->handleKeyguardDoneDrawing()V
    invoke-static {v1}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$2900(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)V

    goto :goto_0

    .line 1185
    :pswitch_9
    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    invoke-virtual {v1, v2, v2}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    goto :goto_0

    .line 1188
    :pswitch_a
    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_2

    :goto_3
    # invokes: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->handleSetOccluded(Z)V
    invoke-static {v1, v2}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$3000(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;Z)V

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_3

    .line 1191
    :pswitch_b
    iget-object v2, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    monitor-enter v2

    .line 1192
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    # invokes: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V
    invoke-static {v3, v1}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$700(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 1193
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1196
    :pswitch_c
    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->handleDismiss()V

    goto :goto_0

    .line 1199
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;

    .line 1200
    .local v0, "params":Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;
    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    iget-wide v2, v0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->startTime:J

    iget-wide v4, v0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->fadeoutDuration:J

    # invokes: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->handleStartKeyguardExitAnimation(JJ)V
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$3100(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;JJ)V

    goto :goto_0

    .line 1203
    .end local v0    # "params":Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;
    :pswitch_e
    const-string v1, "KeyguardViewMediator"

    const-string v2, "Timeout while waiting for activity drawn!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    :pswitch_f
    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->handleOnActivityDrawn()V
    invoke-static {v1}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$3200(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_0

    .line 1159
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method
