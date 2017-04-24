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
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 105
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 107
    .local v1, "state":I
    const-string v2, "NxpNfcController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController$1;->this$0:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    # getter for: Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mState:Z
    invoke-static {v4}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->access$000(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)Z

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

    # getter for: Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mState:Z
    invoke-static {v2}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->access$000(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)Z

    move-result v2

    if-ne v2, v5, :cond_0

    iget-object v2, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController$1;->this$0:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    # getter for: Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mDialogBoxFlag:Z
    invoke-static {v2}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->access$100(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)Z

    move-result v2

    if-ne v2, v5, :cond_0

    .line 109
    iget-object v2, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController$1;->this$0:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    # setter for: Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mEnable:Z
    invoke-static {v2, v5}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->access$202(Lcom/nxp/nfc/gsma/internal/NxpNfcController;Z)Z

    .line 110
    iget-object v2, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController$1;->this$0:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    # getter for: Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mCallBack:Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;
    invoke-static {v2}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->access$300(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;->onNxpEnableNfcController(Z)V

    .line 111
    iget-object v2, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController$1;->this$0:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    # setter for: Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mDialogBoxFlag:Z
    invoke-static {v2, v6}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->access$102(Lcom/nxp/nfc/gsma/internal/NxpNfcController;Z)Z

    .line 112
    iget-object v2, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController$1;->this$0:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    # setter for: Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mState:Z
    invoke-static {v2, v6}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->access$002(Lcom/nxp/nfc/gsma/internal/NxpNfcController;Z)Z

    .line 113
    iget-object v2, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController$1;->this$0:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    # getter for: Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->access$500(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController$1;->this$0:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    # getter for: Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mOwnerReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v3}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->access$400(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 114
    iget-object v2, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController$1;->this$0:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    # getter for: Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->access$500(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController$1;->this$0:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    # getter for: Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v3}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->access$600(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 116
    :cond_0
    return-void
.end method
