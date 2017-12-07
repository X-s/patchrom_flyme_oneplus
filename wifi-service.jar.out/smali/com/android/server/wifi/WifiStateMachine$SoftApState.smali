.class Lcom/android/server/wifi/WifiStateMachine$SoftApState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoftApState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiStateMachine$SoftApState$SoftApListener;
    }
.end annotation


# instance fields
.field private mSoftApManager:Lcom/android/server/wifi/SoftApManager;

.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 8384
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 8402
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap2(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/Message;

    move-result-object v10

    .line 8403
    .local v10, "message":Landroid/os/Message;
    iget v0, v10, Landroid/os/Message;->what:I

    const v1, 0x20015

    if-ne v0, v1, :cond_1

    .line 8404
    iget-object v9, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    .line 8406
    .local v9, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v9, :cond_0

    .line 8411
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get81(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiApConfigStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiApConfigStore;->getApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    .line 8417
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap16(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 8418
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get28(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/FrameworkFacade;

    move-result-object v0

    .line 8419
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get15(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get92(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get45(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v4

    .line 8420
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get12(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/ConnectivityManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get16(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiCountryCode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiCountryCode;->getCountryCode()Ljava/lang/String;

    move-result-object v6

    .line 8421
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get81(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiApConfigStore;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiApConfigStore;->getAllowed2GChannel()Ljava/util/ArrayList;

    move-result-object v7

    .line 8422
    new-instance v8, Lcom/android/server/wifi/WifiStateMachine$SoftApState$SoftApListener;

    invoke-direct {v8, p0, v11}, Lcom/android/server/wifi/WifiStateMachine$SoftApState$SoftApListener;-><init>(Lcom/android/server/wifi/WifiStateMachine$SoftApState;Lcom/android/server/wifi/WifiStateMachine$SoftApState$SoftApListener;)V

    .line 8418
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wifi/FrameworkFacade;->makeSoftApManager(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/WifiNative;Landroid/os/INetworkManagementService;Landroid/net/ConnectivityManager;Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/server/wifi/SoftApManager$Listener;)Lcom/android/server/wifi/SoftApManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->mSoftApManager:Lcom/android/server/wifi/SoftApManager;

    .line 8423
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->mSoftApManager:Lcom/android/server/wifi/SoftApManager;

    invoke-virtual {v0, v9}, Lcom/android/server/wifi/SoftApManager;->start(Landroid/net/wifi/WifiConfiguration;)V

    .line 8401
    return-void

    .line 8414
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get81(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiApConfigStore;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/server/wifi/WifiApConfigStore;->setApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 8425
    .end local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal transition to SoftApState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public exit()V
    .locals 1

    .prologue
    .line 8431
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->mSoftApManager:Lcom/android/server/wifi/SoftApManager;

    .line 8430
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 8436
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, p1, p0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Lcom/android/internal/util/State;)V

    .line 8438
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 8452
    const/4 v0, 0x0

    return v0

    .line 8443
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->mSoftApManager:Lcom/android/server/wifi/SoftApManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/SoftApManager;->stop()V

    .line 8454
    :goto_0
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 8446
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get30(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap51(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 8449
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get30(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap51(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 8438
    nop

    :pswitch_data_0
    .packed-switch 0x20015
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
