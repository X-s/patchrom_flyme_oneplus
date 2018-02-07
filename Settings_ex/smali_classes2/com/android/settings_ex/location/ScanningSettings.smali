.class public Lcom/android/settings_ex/location/ScanningSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "ScanningSettings.java"


# static fields
.field private static final KEY_BLUETOOTH_SCAN_ALWAYS_AVAILABLE:Ljava/lang/String; = "bluetooth_always_scanning"

.field private static final KEY_WIFI_SCAN_ALWAYS_AVAILABLE:Ljava/lang/String; = "wifi_always_scanning"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/settings_ex/location/ScanningSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 48
    .local v0, "root":Landroid/support/v7/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 51
    :cond_0
    const v1, 0x7f080038

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/location/ScanningSettings;->addPreferencesFromResource(I)V

    .line 52
    invoke-virtual {p0}, Lcom/android/settings_ex/location/ScanningSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 53
    invoke-direct {p0}, Lcom/android/settings_ex/location/ScanningSettings;->initPreferences()V

    .line 54
    return-object v0
.end method

.method private initPreferences()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 59
    const-string/jumbo v2, "wifi_always_scanning"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/location/ScanningSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    .line 60
    .local v1, "wifiScanAlwaysAvailable":Landroid/support/v14/preference/SwitchPreference;
    invoke-virtual {p0}, Lcom/android/settings_ex/location/ScanningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 61
    const-string/jumbo v5, "wifi_scan_always_enabled"

    .line 60
    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 63
    const-string/jumbo v2, "bluetooth_always_scanning"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/location/ScanningSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    .line 64
    .local v0, "bleScanAlwaysAvailable":Landroid/support/v14/preference/SwitchPreference;
    invoke-virtual {p0}, Lcom/android/settings_ex/location/ScanningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 65
    const-string/jumbo v5, "ble_scan_always_enabled"

    .line 64
    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 57
    return-void

    .end local v0    # "bleScanAlwaysAvailable":Landroid/support/v14/preference/SwitchPreference;
    :cond_0
    move v2, v4

    .line 60
    goto :goto_0

    .restart local v0    # "bleScanAlwaysAvailable":Landroid/support/v14/preference/SwitchPreference;
    :cond_1
    move v3, v4

    .line 64
    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0x83

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 70
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "key":Ljava/lang/String;
    const-string/jumbo v3, "wifi_always_scanning"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/android/settings_ex/location/ScanningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 73
    const-string/jumbo v4, "wifi_scan_always_enabled"

    .line 74
    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    .end local p1    # "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {p1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v2

    .line 72
    :cond_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 82
    :goto_0
    return v2

    .line 75
    .restart local p1    # "preference":Landroid/support/v7/preference/Preference;
    :cond_1
    const-string/jumbo v3, "bluetooth_always_scanning"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 76
    invoke-virtual {p0}, Lcom/android/settings_ex/location/ScanningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 77
    const-string/jumbo v4, "ble_scan_always_enabled"

    .line 78
    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    .end local p1    # "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {p1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    move v1, v2

    .line 76
    :cond_2
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 80
    .restart local p1    # "preference":Landroid/support/v7/preference/Preference;
    :cond_3
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 43
    invoke-direct {p0}, Lcom/android/settings_ex/location/ScanningSettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    .line 41
    return-void
.end method
