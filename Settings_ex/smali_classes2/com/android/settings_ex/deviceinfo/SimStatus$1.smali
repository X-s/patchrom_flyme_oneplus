.class Lcom/android/settings_ex/deviceinfo/SimStatus$1;
.super Landroid/content/BroadcastReceiver;
.source "SimStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/SimStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/SimStatus;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/SimStatus;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/deviceinfo/SimStatus;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus$1;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatus;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 134
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 136
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 137
    .local v2, "extras":Landroid/os/Bundle;
    if-nez v2, :cond_0

    .line 138
    return-void

    .line 140
    :cond_0
    const-string/jumbo v4, "message"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellBroadcastMessage;

    .line 141
    .local v1, "cbMessage":Landroid/telephony/CellBroadcastMessage;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/telephony/CellBroadcastMessage;->getServiceCategory()I

    move-result v4

    const/16 v5, 0x32

    if-ne v4, v5, :cond_1

    .line 142
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatus$1;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatus;

    invoke-static {v4}, Lcom/android/settings_ex/deviceinfo/SimStatus;->-get2(Lcom/android/settings_ex/deviceinfo/SimStatus;)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v1}, Landroid/telephony/CellBroadcastMessage;->getSubId()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 143
    invoke-virtual {v1}, Landroid/telephony/CellBroadcastMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, "latestAreaInfo":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatus$1;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatus;

    invoke-static {v4, v3}, Lcom/android/settings_ex/deviceinfo/SimStatus;->-wrap1(Lcom/android/settings_ex/deviceinfo/SimStatus;Ljava/lang/String;)V

    .line 133
    .end local v1    # "cbMessage":Landroid/telephony/CellBroadcastMessage;
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v3    # "latestAreaInfo":Ljava/lang/String;
    :cond_1
    return-void
.end method
