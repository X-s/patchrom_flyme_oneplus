.class Lcom/android/settings_ex/wifi/AdvancedWifiSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "AdvancedWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/AdvancedWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 121
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    # invokes: Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->refreshWifiInfo()V
    invoke-static {v1}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->access$000(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)V

    .line 126
    :cond_1
    return-void
.end method
