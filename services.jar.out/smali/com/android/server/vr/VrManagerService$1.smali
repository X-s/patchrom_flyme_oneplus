.class Lcom/android/server/vr/VrManagerService$1;
.super Landroid/os/Handler;
.source "VrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/VrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/VrManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/vr/VrManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/vr/VrManagerService;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 135
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 155
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown message type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 137
    :pswitch_0
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    .line 138
    .local v2, "state":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v3}, Lcom/android/server/vr/VrManagerService;->-get3(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 139
    .local v1, "i":I
    :goto_1
    if-lez v1, :cond_1

    .line 140
    add-int/lit8 v1, v1, -0x1

    .line 142
    :try_start_0
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v3}, Lcom/android/server/vr/VrManagerService;->-get3(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v3, v2}, Landroid/service/vr/IVrStateCallbacks;->onVrStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 143
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 137
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "state":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "state":Z
    goto :goto_0

    .line 147
    .restart local v1    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v3}, Lcom/android/server/vr/VrManagerService;->-get3(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 134
    .end local v1    # "i":I
    .end local v2    # "state":Z
    :goto_2
    return-void

    .line 150
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v3}, Lcom/android/server/vr/VrManagerService;->-get2(Lcom/android/server/vr/VrManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 151
    :try_start_1
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v3}, Lcom/android/server/vr/VrManagerService;->-wrap4(Lcom/android/server/vr/VrManagerService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    goto :goto_2

    .line 150
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
