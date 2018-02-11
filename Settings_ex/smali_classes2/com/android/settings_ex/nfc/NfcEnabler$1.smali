.class Lcom/android/settings_ex/nfc/NfcEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "NfcEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/nfc/NfcEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/nfc/NfcEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/nfc/NfcEnabler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/nfc/NfcEnabler;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/settings_ex/nfc/NfcEnabler$1;->this$0:Lcom/android/settings_ex/nfc/NfcEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 52
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/android/settings_ex/nfc/NfcEnabler$1;->this$0:Lcom/android/settings_ex/nfc/NfcEnabler;

    const-string/jumbo v2, "android.nfc.extra.ADAPTER_STATE"

    .line 55
    const/4 v3, 0x1

    .line 54
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings_ex/nfc/NfcEnabler;->-wrap0(Lcom/android/settings_ex/nfc/NfcEnabler;I)V

    .line 51
    :cond_0
    return-void
.end method
