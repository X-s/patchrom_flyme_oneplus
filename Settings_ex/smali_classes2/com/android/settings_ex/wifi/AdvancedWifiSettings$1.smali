.class Lcom/android/settings_ex/wifi/AdvancedWifiSettings$1;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/wifi/AdvancedWifiSettings;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 164
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    invoke-static {v1}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->-wrap0(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    .line 165
    const-string/jumbo v2, "airplane_mode_on"

    .line 164
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 166
    .local v0, "isAirplaneMode":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    iget-object v1, v1, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->frequencyPref:Landroid/support/v7/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    iget-object v1, v1, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->frequencyPref:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 162
    :cond_0
    return-void

    .line 164
    .end local v0    # "isAirplaneMode":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isAirplaneMode":Z
    goto :goto_0
.end method
