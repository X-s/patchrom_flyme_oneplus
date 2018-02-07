.class Lcom/android/settings_ex/nfc/AndroidBeam$1;
.super Landroid/content/BroadcastReceiver;
.source "AndroidBeam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/nfc/AndroidBeam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/nfc/AndroidBeam;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/nfc/AndroidBeam;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/nfc/AndroidBeam;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/settings_ex/nfc/AndroidBeam$1;->this$0:Lcom/android/settings_ex/nfc/AndroidBeam;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam$1;->this$0:Lcom/android/settings_ex/nfc/AndroidBeam;

    const-string/jumbo v2, "android.nfc.extra.ADAPTER_STATE"

    .line 63
    const/4 v3, 0x1

    .line 62
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings_ex/nfc/AndroidBeam;->-wrap0(Lcom/android/settings_ex/nfc/AndroidBeam;I)V

    .line 59
    :cond_0
    return-void
.end method
