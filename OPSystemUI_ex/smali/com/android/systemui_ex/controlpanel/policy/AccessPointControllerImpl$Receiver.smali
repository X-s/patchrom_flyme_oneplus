.class final Lcom/android/systemui_ex/controlpanel/policy/AccessPointControllerImpl$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "AccessPointControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/controlpanel/policy/AccessPointControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field private mRegistered:Z

.field final synthetic this$0:Lcom/android/systemui_ex/controlpanel/policy/AccessPointControllerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui_ex/controlpanel/policy/AccessPointControllerImpl;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/policy/AccessPointControllerImpl$Receiver;->this$0:Lcom/android/systemui_ex/controlpanel/policy/AccessPointControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui_ex/controlpanel/policy/AccessPointControllerImpl;Lcom/android/systemui_ex/controlpanel/policy/AccessPointControllerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui_ex/controlpanel/policy/AccessPointControllerImpl;
    .param p2, "x1"    # Lcom/android/systemui_ex/controlpanel/policy/AccessPointControllerImpl$1;

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/controlpanel/policy/AccessPointControllerImpl$Receiver;-><init>(Lcom/android/systemui_ex/controlpanel/policy/AccessPointControllerImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 269
    # getter for: Lcom/android/systemui_ex/controlpanel/policy/AccessPointControllerImpl;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui_ex/controlpanel/policy/AccessPointControllerImpl;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AccessPointController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_0
    const-string v0, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/AccessPointControllerImpl$Receiver;->this$0:Lcom/android/systemui_ex/controlpanel/policy/AccessPointControllerImpl;

    # invokes: Lcom/android/systemui_ex/controlpanel/policy/AccessPointControllerImpl;->updateAccessPoints()V
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/policy/AccessPointControllerImpl;->access$300(Lcom/android/systemui_ex/controlpanel/policy/AccessPointControllerImpl;)V

    .line 272
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/AccessPointControllerImpl$Receiver;->this$0:Lcom/android/systemui_ex/controlpanel/policy/AccessPointControllerImpl;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui_ex/controlpanel/policy/AccessPointControllerImpl;->mScanning:Z
    invoke-static {v0, v1}, Lcom/android/systemui_ex/controlpanel/policy/AccessPointControllerImpl;->access$402(Lcom/android/systemui_ex/controlpanel/policy/AccessPointControllerImpl;Z)Z

    .line 274
    :cond_1
    return-void
.end method

.method public setListening(Z)V
    .locals 3
    .param p1, "listening"    # Z

    .prologue
    .line 247
    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui_ex/controlpanel/policy/AccessPointControllerImpl$Receiver;->mRegistered:Z

    if-nez v1, :cond_2

    .line 248
    # getter for: Lcom/android/systemui_ex/controlpanel/policy/AccessPointControllerImpl;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui_ex/controlpanel/policy/AccessPointControllerImpl;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "AccessPointController"

    const-string v2, "Registering receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 250
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/AccessPointControllerImpl$Receiver;->this$0:Lcom/android/systemui_ex/controlpanel/policy/AccessPointControllerImpl;

    # getter for: Lcom/android/systemui_ex/controlpanel/policy/AccessPointControllerImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui_ex/controlpanel/policy/AccessPointControllerImpl;->access$200(Lcom/android/systemui_ex/controlpanel/policy/AccessPointControllerImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 259
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui_ex/controlpanel/policy/AccessPointControllerImpl$Receiver;->mRegistered:Z

    .line 265
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    :goto_0
    return-void

    .line 260
    :cond_2
    if-nez p1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui_ex/controlpanel/policy/AccessPointControllerImpl$Receiver;->mRegistered:Z

    if-eqz v1, :cond_1

    .line 261
    # getter for: Lcom/android/systemui_ex/controlpanel/policy/AccessPointControllerImpl;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui_ex/controlpanel/policy/AccessPointControllerImpl;->access$100()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "AccessPointController"

    const-string v2, "Unregistering receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_3
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/AccessPointControllerImpl$Receiver;->this$0:Lcom/android/systemui_ex/controlpanel/policy/AccessPointControllerImpl;

    # getter for: Lcom/android/systemui_ex/controlpanel/policy/AccessPointControllerImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui_ex/controlpanel/policy/AccessPointControllerImpl;->access$200(Lcom/android/systemui_ex/controlpanel/policy/AccessPointControllerImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 263
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui_ex/controlpanel/policy/AccessPointControllerImpl$Receiver;->mRegistered:Z

    goto :goto_0
.end method
