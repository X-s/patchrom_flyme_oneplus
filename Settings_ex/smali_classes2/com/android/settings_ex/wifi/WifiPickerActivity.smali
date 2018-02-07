.class public Lcom/android/settings_ex/wifi/WifiPickerActivity;
.super Lcom/android/settings_ex/SettingsActivity;
.source "WifiPickerActivity.java"

# interfaces
.implements Lcom/android/settings_ex/ButtonBarHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 30
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings_ex/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 31
    .local v0, "modIntent":Landroid/content/Intent;
    const-string/jumbo v1, ":settings:show_fragment"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 32
    const-string/jumbo v1, ":settings:show_fragment"

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiPickerActivity;->getWifiSettingsClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    const-string/jumbo v1, ":settings:show_fragment_title_resid"

    const v2, 0x7f0e06ea

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 35
    :cond_0
    return-object v0
.end method

.method getWifiSettingsClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v14/preference/PreferenceFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    const-class v0, Lcom/android/settings_ex/wifi/WifiSettings;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 40
    const-class v0, Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    const-class v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 40
    if-nez v0, :cond_0

    .line 42
    const-class v0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 40
    if-nez v0, :cond_0

    .line 43
    const-class v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 43
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 44
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
