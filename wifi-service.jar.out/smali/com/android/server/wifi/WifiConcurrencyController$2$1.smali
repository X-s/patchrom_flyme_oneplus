.class Lcom/android/server/wifi/WifiConcurrencyController$2$1;
.super Ljava/lang/Object;
.source "WifiConcurrencyController.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiConcurrencyController$2;->onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/WifiConcurrencyController$2;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiConcurrencyController$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/WifiConcurrencyController$2;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/server/wifi/WifiConcurrencyController$2$1;->this$1:Lcom/android/server/wifi/WifiConcurrencyController$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .param p1, "reasonCode"    # I

    .prologue
    .line 105
    const-string/jumbo v0, "WifiConcurrencyController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "group remove failed. Reason :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/android/server/wifi/WifiConcurrencyController$2$1;->this$1:Lcom/android/server/wifi/WifiConcurrencyController$2;

    iget-object v0, v0, Lcom/android/server/wifi/WifiConcurrencyController$2;->this$0:Lcom/android/server/wifi/WifiConcurrencyController;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConcurrencyController;->sendMessage(I)V

    .line 104
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 111
    const-string/jumbo v0, "WifiConcurrencyController"

    const-string/jumbo v1, "group remove success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void
.end method
