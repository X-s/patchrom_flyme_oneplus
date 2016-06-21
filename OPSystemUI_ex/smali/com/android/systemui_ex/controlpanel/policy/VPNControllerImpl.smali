.class public Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;
.super Ljava/lang/Object;
.source "VPNControllerImpl.java"

# interfaces
.implements Lcom/android/systemui_ex/controlpanel/policy/VPNController;


# static fields
.field private static final REQUEST:Landroid/net/NetworkRequest;


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui_ex/controlpanel/policy/VPNController$VPNStateChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentVpnNetworkId:I

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    sput-object v0, Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;->REQUEST:Landroid/net/NetworkRequest;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;->mCurrentVpnNetworkId:I

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl$1;-><init>(Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 30
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;->mContext:Landroid/content/Context;

    .line 31
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 33
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    sget-object v1, Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;->REQUEST:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;->setCurrentNetid(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;

    .prologue
    .line 13
    iget v0, p0, Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;->mCurrentVpnNetworkId:I

    return v0
.end method

.method private fireCallbacks()V
    .locals 4

    .prologue
    .line 69
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v3

    .line 70
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/controlpanel/policy/VPNController$VPNStateChangedCallback;

    .line 71
    .local v0, "callback":Lcom/android/systemui_ex/controlpanel/policy/VPNController$VPNStateChangedCallback;
    invoke-interface {v0}, Lcom/android/systemui_ex/controlpanel/policy/VPNController$VPNStateChangedCallback;->onStateChanged()V

    goto :goto_0

    .line 73
    .end local v0    # "callback":Lcom/android/systemui_ex/controlpanel/policy/VPNController$VPNStateChangedCallback;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    return-void
.end method

.method private setCurrentNetid(I)V
    .locals 1
    .param p1, "netId"    # I

    .prologue
    .line 62
    iget v0, p0, Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;->mCurrentVpnNetworkId:I

    if-eq p1, v0, :cond_0

    .line 63
    iput p1, p0, Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;->mCurrentVpnNetworkId:I

    .line 64
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;->fireCallbacks()V

    .line 66
    :cond_0
    return-void
.end method


# virtual methods
.method public addVPNStateChangedCallback(Lcom/android/systemui_ex/controlpanel/policy/VPNController$VPNStateChangedCallback;)V
    .locals 2
    .param p1, "cb"    # Lcom/android/systemui_ex/controlpanel/policy/VPNController$VPNStateChangedCallback;

    .prologue
    .line 43
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 44
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    :cond_0
    monitor-exit v1

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isVPNEnabled()Z
    .locals 2

    .prologue
    .line 38
    iget v0, p0, Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;->mCurrentVpnNetworkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
