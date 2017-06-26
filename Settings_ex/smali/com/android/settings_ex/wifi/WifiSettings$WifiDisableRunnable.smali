.class Lcom/android/settings_ex/wifi/WifiSettings$WifiDisableRunnable;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiDisableRunnable"
.end annotation


# instance fields
.field dValue:Z

.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/wifi/WifiSettings;)V
    .locals 1

    .prologue
    .line 462
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettings$WifiDisableRunnable;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$WifiDisableRunnable;->dValue:Z

    .line 463
    return-void
.end method

.method public constructor <init>(Lcom/android/settings_ex/wifi/WifiSettings;Z)V
    .locals 1
    .param p2, "value"    # Z

    .prologue
    .line 465
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettings$WifiDisableRunnable;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$WifiDisableRunnable;->dValue:Z

    .line 466
    iput-boolean p2, p0, Lcom/android/settings_ex/wifi/WifiSettings$WifiDisableRunnable;->dValue:Z

    .line 467
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 476
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$WifiDisableRunnable;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$WifiDisableRunnable;->dValue:Z

    if-eqz v0, :cond_2

    .line 494
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$WifiDisableRunnable;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$WifiDisableRunnable;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$WifiDisableRunnable;->dValue:Z

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$WifiDisableRunnable;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mEnableWifi:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->access$300(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 497
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$WifiDisableRunnable;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c04d3

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 487
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$WifiDisableRunnable;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 488
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$WifiDisableRunnable;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mEnableWifi:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->access$300(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    const v1, 0x7f0c0146

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_1

    .line 491
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$WifiDisableRunnable;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mEnableWifi:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->access$300(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    const v1, 0x7f0c04d2

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_1
.end method

.method public setValue(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 470
    iput-boolean p1, p0, Lcom/android/settings_ex/wifi/WifiSettings$WifiDisableRunnable;->dValue:Z

    .line 471
    return-void
.end method
