.class Lcom/android/settings_ex/wifi/AdvancedWifiSettings$4;
.super Ljava/lang/Object;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->initPreferences()V
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
    .param p1, "this$0"    # Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$4;->this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v2, 0x1

    .line 266
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "key":Ljava/lang/String;
    const-string/jumbo v1, "enable_hs2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$4;->this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    invoke-static {v1}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->-wrap0(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)Landroid/content/ContentResolver;

    move-result-object v3

    .line 269
    const-string/jumbo v4, "wifi_hotspot2_enabled"

    .line 270
    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    .end local p1    # "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {p1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 268
    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 272
    :cond_0
    return v2

    .line 270
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
