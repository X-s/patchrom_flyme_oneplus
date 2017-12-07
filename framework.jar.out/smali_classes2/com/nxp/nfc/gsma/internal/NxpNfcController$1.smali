.class Lcom/nxp/nfc/gsma/internal/NxpNfcController$1;
.super Landroid/content/BroadcastReceiver;
.source "NxpNfcController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nxp/nfc/gsma/internal/NxpNfcController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nxp/nfc/gsma/internal/NxpNfcController;


# direct methods
.method constructor <init>(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController$1;->this$0:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 105
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 107
    .local v1, "state":I
    const-string/jumbo v2, "NxpNfcController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceive: action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController$1;->this$0:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    invoke-static {v4}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->-get5(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController$1;->this$0:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    invoke-static {v2}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->-get5(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController$1;->this$0:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    invoke-static {v2}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->-get2(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController$1;->this$0:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    invoke-static {v2, v6}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->-set1(Lcom/nxp/nfc/gsma/internal/NxpNfcController;Z)Z

    .line 110
    iget-object v2, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController$1;->this$0:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    invoke-static {v2}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->-get0(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;

    move-result-object v2

    invoke-interface {v2, v6}, Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;->onNxpEnableNfcController(Z)V

    .line 111
    iget-object v2, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController$1;->this$0:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    invoke-static {v2, v5}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->-set0(Lcom/nxp/nfc/gsma/internal/NxpNfcController;Z)Z

    .line 112
    iget-object v2, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController$1;->this$0:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    invoke-static {v2, v5}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->-set2(Lcom/nxp/nfc/gsma/internal/NxpNfcController;Z)Z

    .line 113
    iget-object v2, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController$1;->this$0:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    invoke-static {v2}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->-get1(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController$1;->this$0:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    invoke-static {v3}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->-get3(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 114
    iget-object v2, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController$1;->this$0:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    invoke-static {v2}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->-get1(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController$1;->this$0:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    invoke-static {v3}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->-get4(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 104
    :cond_0
    return-void
.end method
