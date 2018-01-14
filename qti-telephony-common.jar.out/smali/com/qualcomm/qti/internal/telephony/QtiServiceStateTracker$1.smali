.class Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "QtiServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 66
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "qualcomm.intent.action.ACTION_RAC_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 68
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 69
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;

    const-string/jumbo v2, "rac"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->-set0(Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;I)I

    .line 70
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;

    const-string/jumbo v2, "rat"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->-set1(Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;I)I

    .line 71
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->-wrap0(Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;)V

    .line 65
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method
