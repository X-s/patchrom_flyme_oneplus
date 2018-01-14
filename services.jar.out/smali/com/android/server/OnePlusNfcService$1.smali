.class Lcom/android/server/OnePlusNfcService$1;
.super Landroid/content/BroadcastReceiver;
.source "OnePlusNfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusNfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OnePlusNfcService;


# direct methods
.method constructor <init>(Lcom/android/server/OnePlusNfcService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OnePlusNfcService;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/server/OnePlusNfcService$1;->this$0:Lcom/android/server/OnePlusNfcService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 152
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    const-string/jumbo v3, "android.nfc.extra.ADAPTER_STATE"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 155
    .local v2, "state":I
    invoke-static {}, Lcom/android/server/OnePlusNfcService;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[NfcBroadcast] state change state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 157
    iget-object v3, p0, Lcom/android/server/OnePlusNfcService$1;->this$0:Lcom/android/server/OnePlusNfcService;

    invoke-static {v3}, Lcom/android/server/OnePlusNfcService;->-get1(Lcom/android/server/OnePlusNfcService;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    .line 158
    .local v1, "nfcAdapter":Landroid/nfc/NfcAdapter;
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 159
    iget-object v3, p0, Lcom/android/server/OnePlusNfcService$1;->this$0:Lcom/android/server/OnePlusNfcService;

    invoke-static {v3}, Lcom/android/server/OnePlusNfcService;->-get1(Lcom/android/server/OnePlusNfcService;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/OnePlusNfcService$1;->this$0:Lcom/android/server/OnePlusNfcService;

    invoke-static {v4}, Lcom/android/server/OnePlusNfcService;->-get2(Lcom/android/server/OnePlusNfcService;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 151
    .end local v1    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    .end local v2    # "state":I
    :cond_0
    return-void
.end method
