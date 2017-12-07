.class public Lcom/android/server/wifi/WifiConcurrencyController;
.super Lcom/android/internal/util/StateMachine;
.source "WifiConcurrencyController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiConcurrencyController$InitialState;,
        Lcom/android/server/wifi/WifiConcurrencyController$RunningApState;,
        Lcom/android/server/wifi/WifiConcurrencyController$RunningP2pState;
    }
.end annotation


# static fields
.field private static final CMD_P2P_ENABLE:I = 0x2

.field private static final CMD_P2P_REMOVE_GROUP_FAILURE:I = 0x3

.field private static final CMD_SOFTAP_ENABLE:I = 0x1

.field private static DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiConcurrencyController"


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mInitialState:Lcom/android/internal/util/State;

.field private mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private final mP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mRunningApState:Lcom/android/internal/util/State;

.field private mRunningP2pState:Lcom/android/internal/util/State;

.field private mStaAndAPConcurrency:Z

.field private mWfdStatus:Landroid/hardware/display/WifiDisplayStatus;

.field private final mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wifi/WifiConcurrencyController;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/WifiConcurrencyController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConcurrencyController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/WifiConcurrencyController;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConcurrencyController;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/WifiConcurrencyController;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConcurrencyController;->mP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/wifi/WifiConcurrencyController;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConcurrencyController;->mRunningApState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/wifi/WifiConcurrencyController;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConcurrencyController;->mRunningP2pState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/WifiConcurrencyController;Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConcurrencyController;->smToString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/WifiConcurrencyController;Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConcurrencyController;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/wifi/WifiConcurrencyController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConcurrencyController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/wifi/WifiConcurrencyController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConcurrencyController;->turnDownP2p()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/wifi/WifiConcurrencyController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConcurrencyController;->turnDownSoftap()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wifi/WifiConcurrencyController;->DBG:Z

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "statemachine"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    const/4 v2, 0x0

    .line 65
    const-string/jumbo v0, "WifiConcurrency"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 54
    iput-object v2, p0, Lcom/android/server/wifi/WifiConcurrencyController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConcurrencyController;->mStaAndAPConcurrency:Z

    .line 60
    new-instance v0, Lcom/android/server/wifi/WifiConcurrencyController$InitialState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiConcurrencyController$InitialState;-><init>(Lcom/android/server/wifi/WifiConcurrencyController;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConcurrencyController;->mInitialState:Lcom/android/internal/util/State;

    .line 61
    new-instance v0, Lcom/android/server/wifi/WifiConcurrencyController$RunningApState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiConcurrencyController$RunningApState;-><init>(Lcom/android/server/wifi/WifiConcurrencyController;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConcurrencyController;->mRunningApState:Lcom/android/internal/util/State;

    .line 62
    new-instance v0, Lcom/android/server/wifi/WifiConcurrencyController$RunningP2pState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiConcurrencyController$RunningP2pState;-><init>(Lcom/android/server/wifi/WifiConcurrencyController;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConcurrencyController;->mRunningP2pState:Lcom/android/internal/util/State;

    .line 67
    iput-object p1, p0, Lcom/android/server/wifi/WifiConcurrencyController;->mContext:Landroid/content/Context;

    .line 68
    iput-object p3, p0, Lcom/android/server/wifi/WifiConcurrencyController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 69
    iget-object v0, p0, Lcom/android/server/wifi/WifiConcurrencyController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifip2p"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/android/server/wifi/WifiConcurrencyController;->mP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 70
    iget-object v0, p0, Lcom/android/server/wifi/WifiConcurrencyController;->mP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConcurrencyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiConcurrencyController;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 72
    iget-object v0, p0, Lcom/android/server/wifi/WifiConcurrencyController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/wifi/WifiConcurrencyController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 74
    iget-object v0, p0, Lcom/android/server/wifi/WifiConcurrencyController;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConcurrencyController;->addState(Lcom/android/internal/util/State;)V

    .line 75
    iget-object v0, p0, Lcom/android/server/wifi/WifiConcurrencyController;->mRunningApState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConcurrencyController;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiConcurrencyController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 76
    iget-object v0, p0, Lcom/android/server/wifi/WifiConcurrencyController;->mRunningP2pState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConcurrencyController;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiConcurrencyController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 77
    iget-object v0, p0, Lcom/android/server/wifi/WifiConcurrencyController;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConcurrencyController;->setInitialState(Lcom/android/internal/util/State;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConcurrencyController;->start()V

    .line 64
    return-void
.end method

.method private checkAndSetConnectivityInstance()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/wifi/WifiConcurrencyController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/server/wifi/WifiConcurrencyController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/wifi/WifiConcurrencyController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 129
    :cond_0
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 83
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/android/server/wifi/WifiConcurrencyController$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wifi/WifiConcurrencyController$1;-><init>(Lcom/android/server/wifi/WifiConcurrencyController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    return-void
.end method

.method private smToString(Landroid/os/Message;)Ljava/lang/String;
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 235
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 243
    const-string/jumbo v0, "UNKNOWN"

    .line 245
    .local v0, "s":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 237
    .end local v0    # "s":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "CMD_SOFTAP_ENABLE"

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 239
    .end local v0    # "s":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "CMD_P2P_ENABLE"

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 241
    .end local v0    # "s":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "CMD_P2P_REMOVE_GROUP_FAILURE"

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private declared-synchronized turnDownP2p()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConcurrencyController;->mP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConcurrencyController;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/server/wifi/WifiConcurrencyController$2;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiConcurrencyController$2;-><init>(Lcom/android/server/wifi/WifiConcurrencyController;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 95
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized turnDownSoftap()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 122
    :try_start_0
    sget-boolean v0, Lcom/android/server/wifi/WifiConcurrencyController;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiConcurrencyController"

    const-string/jumbo v1, "Turn off hotspot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConcurrencyController;->checkAndSetConnectivityInstance()V

    .line 124
    iget-object v0, p0, Lcom/android/server/wifi/WifiConcurrencyController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    .line 126
    const-string/jumbo v0, "Disable Wi-Fi Hotspot while Wi-Fi Direct is running"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConcurrencyController;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 121
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public requestRunningP2p()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 157
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConcurrencyController;->mStaAndAPConcurrency:Z

    if-nez v0, :cond_0

    .line 158
    return v2

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConcurrencyController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    .line 161
    iget-object v0, p0, Lcom/android/server/wifi/WifiConcurrencyController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 162
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConcurrencyController;->sendMessage(I)V

    .line 164
    :cond_2
    return v2
.end method

.method public requestRunningSoftap()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 136
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConcurrencyController;->mStaAndAPConcurrency:Z

    if-nez v1, :cond_0

    .line 137
    return v2

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConcurrencyController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1, v3, v3}, Lcom/android/server/wifi/WifiStateMachine;->setFrequencyBand(IZ)V

    .line 142
    iget-object v1, p0, Lcom/android/server/wifi/WifiConcurrencyController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiConcurrencyController;->mWfdStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 143
    iget-object v1, p0, Lcom/android/server/wifi/WifiConcurrencyController;->mWfdStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v0

    .line 144
    .local v0, "activeState":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 145
    if-ne v0, v2, :cond_2

    .line 146
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiConcurrencyController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->disconnectWifiDisplay()V

    .line 148
    const-string/jumbo v1, "Disconnect Wi-Fi Display while Hotspot is running"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiConcurrencyController;->showToast(Ljava/lang/String;)V

    .line 153
    :goto_0
    return v2

    .line 151
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConcurrencyController;->sendMessage(I)V

    goto :goto_0
.end method

.method public setStaSoftApConcurrencyEnabled(I)V
    .locals 1
    .param p1, "enabled"    # I

    .prologue
    const/4 v0, 0x0

    .line 92
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConcurrencyController;->mStaAndAPConcurrency:Z

    .line 91
    return-void
.end method
