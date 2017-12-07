.class Lcom/android/server/wifi/WifiConcurrencyController$2;
.super Ljava/lang/Object;
.source "WifiConcurrencyController.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiConcurrencyController;->turnDownP2p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiConcurrencyController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiConcurrencyController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiConcurrencyController;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/server/wifi/WifiConcurrencyController$2;->this$0:Lcom/android/server/wifi/WifiConcurrencyController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 3
    .param p1, "group"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    .line 100
    if-eqz p1, :cond_1

    .line 101
    invoke-static {}, Lcom/android/server/wifi/WifiConcurrencyController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiConcurrencyController"

    const-string/jumbo v1, "Remove p2p group"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConcurrencyController$2;->this$0:Lcom/android/server/wifi/WifiConcurrencyController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConcurrencyController;->-get3(Lcom/android/server/wifi/WifiConcurrencyController;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConcurrencyController$2;->this$0:Lcom/android/server/wifi/WifiConcurrencyController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConcurrencyController;->-get2(Lcom/android/server/wifi/WifiConcurrencyController;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    new-instance v2, Lcom/android/server/wifi/WifiConcurrencyController$2$1;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiConcurrencyController$2$1;-><init>(Lcom/android/server/wifi/WifiConcurrencyController$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 115
    iget-object v0, p0, Lcom/android/server/wifi/WifiConcurrencyController$2;->this$0:Lcom/android/server/wifi/WifiConcurrencyController;

    const-string/jumbo v1, "Disable Wi-Fi Direct while Hotspot is running"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConcurrencyController;->-wrap1(Lcom/android/server/wifi/WifiConcurrencyController;Ljava/lang/String;)V

    .line 99
    :cond_1
    return-void
.end method
