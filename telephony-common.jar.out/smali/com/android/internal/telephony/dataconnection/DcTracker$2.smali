.class Lcom/android/internal/telephony/dataconnection/DcTracker$2;
.super Landroid/content/BroadcastReceiver;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcTracker;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 288
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isCardReady()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 291
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string/jumbo v4, "screen on"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 292
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/dataconnection/DcTracker;->mScreenHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 287
    :goto_0
    return-void

    .line 293
    :cond_0
    const-string/jumbo v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isCardReady()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 294
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string/jumbo v4, "screen off"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 295
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/dataconnection/DcTracker;->mScreenHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 296
    :cond_1
    const-string/jumbo v4, "com.android.internal.telephony.data-reconnect"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 297
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Reconnect alarm. Previous state was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/dataconnection/DcTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 298
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v3, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap2(Lcom/android/internal/telephony/dataconnection/DcTracker;Landroid/content/Intent;)V

    goto :goto_0

    .line 299
    :cond_2
    const-string/jumbo v4, "com.android.internal.telephony.data-stall"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 300
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string/jumbo v4, "Data stall alarm"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 301
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v3, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap0(Lcom/android/internal/telephony/dataconnection/DcTracker;Landroid/content/Intent;)V

    goto :goto_0

    .line 302
    :cond_3
    const-string/jumbo v4, "com.android.internal.telephony.provisioning_apn_alarm"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 303
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string/jumbo v4, "Provisioning apn alarm"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 304
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v3, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap1(Lcom/android/internal/telephony/dataconnection/DcTracker;Landroid/content/Intent;)V

    goto :goto_0

    .line 305
    :cond_4
    const-string/jumbo v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 307
    const-string/jumbo v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 308
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    :cond_5
    invoke-static {v4, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-set1(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)Z

    .line 309
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "NETWORK_STATE_CHANGED_ACTION: mIsWifiConnected="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-get2(Lcom/android/internal/telephony/dataconnection/DcTracker;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 310
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_6
    const-string/jumbo v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 311
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string/jumbo v5, "Wifi state changed"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 312
    const-string/jumbo v4, "wifi_state"

    .line 313
    const/4 v5, 0x4

    .line 312
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 313
    const/4 v5, 0x3

    .line 312
    if-ne v4, v5, :cond_8

    .line 314
    .local v1, "enabled":Z
    :goto_1
    if-nez v1, :cond_7

    .line 317
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v4, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-set1(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)Z

    .line 320
    :cond_7
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "WIFI_STATE_CHANGED_ACTION: enabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 321
    const-string/jumbo v5, " mIsWifiConnected="

    .line 320
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 321
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-get2(Lcom/android/internal/telephony/dataconnection/DcTracker;)Z

    move-result v5

    .line 320
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "enabled":Z
    :cond_8
    move v1, v3

    .line 312
    goto :goto_1

    .line 324
    :cond_9
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReceive: Unknown action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
