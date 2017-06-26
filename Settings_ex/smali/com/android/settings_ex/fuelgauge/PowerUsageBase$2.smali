.class Lcom/android/settings_ex/fuelgauge/PowerUsageBase$2;
.super Landroid/content/BroadcastReceiver;
.source "PowerUsageBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/fuelgauge/PowerUsageBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/fuelgauge/PowerUsageBase;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fuelgauge/PowerUsageBase;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase$2;->this$0:Lcom/android/settings_ex/fuelgauge/PowerUsageBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v6, 0x64

    .line 177
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "action":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase$2;->this$0:Lcom/android/settings_ex/fuelgauge/PowerUsageBase;

    # invokes: Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->updateBatteryStatus(Landroid/content/Intent;)Z
    invoke-static {v2, p2}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->access$000(Lcom/android/settings_ex/fuelgauge/PowerUsageBase;Landroid/content/Intent;)Z

    move-result v1

    .line 179
    .local v1, "updateBatteryStatus":Z
    const-string v2, "PowerUsageBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "zhuyang-PowerUsageBase-mBatteryInfoReceiver--onReceive--action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const-string v2, "PowerUsageBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "zhuyang-PowerUsageBase-mBatteryInfoReceiver--onReceive--updateBatteryStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    :cond_0
    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 183
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase$2;->this$0:Lcom/android/settings_ex/fuelgauge/PowerUsageBase;

    # getter for: Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->access$100(Lcom/android/settings_ex/fuelgauge/PowerUsageBase;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 184
    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageBase$2;->this$0:Lcom/android/settings_ex/fuelgauge/PowerUsageBase;

    # getter for: Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->access$100(Lcom/android/settings_ex/fuelgauge/PowerUsageBase;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 187
    :cond_2
    return-void
.end method
