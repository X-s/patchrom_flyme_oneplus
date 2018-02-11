.class final Lcom/android/settings_exlib/wifi/WifiTracker$WifiTrackerNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "WifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_exlib/wifi/WifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WifiTrackerNetworkCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_exlib/wifi/WifiTracker;


# direct methods
.method private constructor <init>(Lcom/android/settings_exlib/wifi/WifiTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_exlib/wifi/WifiTracker;

    .prologue
    .line 577
    iput-object p1, p0, Lcom/android/settings_exlib/wifi/WifiTracker$WifiTrackerNetworkCallback;->this$0:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_exlib/wifi/WifiTracker;Lcom/android/settings_exlib/wifi/WifiTracker$WifiTrackerNetworkCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_exlib/wifi/WifiTracker;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_exlib/wifi/WifiTracker$WifiTrackerNetworkCallback;-><init>(Lcom/android/settings_exlib/wifi/WifiTracker;)V

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker$WifiTrackerNetworkCallback;->this$0:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/settings_exlib/wifi/WifiTracker;->-get4(Lcom/android/settings_exlib/wifi/WifiTracker;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker$WifiTrackerNetworkCallback;->this$0:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/settings_exlib/wifi/WifiTracker;->-get5(Lcom/android/settings_exlib/wifi/WifiTracker;)Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;->sendEmptyMessage(I)Z

    .line 578
    :cond_0
    return-void
.end method
