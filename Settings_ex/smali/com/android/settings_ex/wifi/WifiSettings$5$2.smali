.class Lcom/android/settings_ex/wifi/WifiSettings$5$2;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiSettings$5;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/wifi/WifiSettings$5;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiSettings$5;)V
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettings$5$2;->this$1:Lcom/android/settings_ex/wifi/WifiSettings$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v1, 0x0

    .line 508
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$5$2;->this$1:Lcom/android/settings_ex/wifi/WifiSettings$5;

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSettings$5;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 509
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$5$2;->this$1:Lcom/android/settings_ex/wifi/WifiSettings$5;

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSettings$5;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mEnableWifi:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->access$100(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 510
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$5$2;->this$1:Lcom/android/settings_ex/wifi/WifiSettings$5;

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSettings$5;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # setter for: Lcom/android/settings_ex/wifi/WifiSettings;->isAlertMark:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->access$302(Lcom/android/settings_ex/wifi/WifiSettings;Z)Z

    .line 512
    return-void
.end method
