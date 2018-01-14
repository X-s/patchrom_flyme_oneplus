.class Lcom/nxp/nfc/gsma/internal/NxpNfcController$2;
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
    .line 119
    iput-object p1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController$2;->this$0:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 122
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "com.gsma.services.nfc.action.ENABLE_NFC_SET_FALG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController$2;->this$0:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "ENABLE_STATE"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->-set2(Lcom/nxp/nfc/gsma/internal/NxpNfcController;Z)Z

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController$2;->this$0:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    invoke-static {v1}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->-get5(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 127
    iget-object v1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController$2;->this$0:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    invoke-static {v1}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->-get0(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;->onNxpEnableNfcController(Z)V

    .line 128
    iget-object v1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController$2;->this$0:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    invoke-static {v1}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->-get1(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController$2;->this$0:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    invoke-static {v2}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->-get3(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 129
    iget-object v1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController$2;->this$0:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    invoke-static {v1}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->-get1(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController$2;->this$0:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    invoke-static {v2}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->-get4(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 121
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController$2;->this$0:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->-set0(Lcom/nxp/nfc/gsma/internal/NxpNfcController;Z)Z

    goto :goto_0
.end method
