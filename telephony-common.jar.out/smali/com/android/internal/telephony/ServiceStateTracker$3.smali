.class Lcom/android/internal/telephony/ServiceStateTracker$3;
.super Landroid/content/BroadcastReceiver;
.source "ServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ServiceStateTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/ServiceStateTracker;

    .prologue
    .line 475
    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 478
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v3

    if-nez v3, :cond_0

    .line 479
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Ignoring intent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " received on CDMA phone"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 480
    return-void

    .line 483
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 485
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ServiceStateTracker;->updateSpnDisplay()V

    .line 510
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v3, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->-wrap0(Lcom/android/internal/telephony/ServiceStateTracker;Landroid/content/Context;Landroid/content/Intent;)V

    .line 477
    return-void

    .line 486
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "android.intent.action.ACTION_RADIO_OFF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 487
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v3, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->-set0(Lcom/android/internal/telephony/ServiceStateTracker;Z)Z

    .line 488
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, v3, Lcom/android/internal/telephony/GsmCdmaPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 489
    .local v0, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTracker;
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    goto :goto_0

    .line 492
    .end local v0    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTracker;
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 494
    const-string/jumbo v3, "ss"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 495
    .local v2, "stateExtra":Ljava/lang/String;
    const-string/jumbo v3, "phone"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 497
    .local v1, "phoneId":I
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    if-ne v1, v3, :cond_4

    .line 499
    const-string/jumbo v3, "ABSENT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 497
    if-eqz v3, :cond_4

    .line 501
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/internal/telephony/ServiceStateTracker;->isRemoveCard:Z

    goto :goto_0

    .line 503
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 505
    const-string/jumbo v3, "READY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 503
    if-eqz v3, :cond_1

    .line 507
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iput-boolean v5, v3, Lcom/android/internal/telephony/ServiceStateTracker;->isRemoveCard:Z

    goto :goto_0
.end method
