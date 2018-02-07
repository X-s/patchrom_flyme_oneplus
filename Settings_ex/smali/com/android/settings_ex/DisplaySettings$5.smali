.class final Lcom/android/settings_ex/DisplaySettings$5;
.super Lcom/android/settings_ex/search/BaseSearchIndexProvider;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1773
    invoke-direct {p0}, Lcom/android/settings_ex/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1789
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1790
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1791
    const v2, 0x112006e

    .line 1790
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1792
    const-string/jumbo v1, "screensaver"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1794
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/DisplaySettings;->-wrap0(Landroid/content/res/Resources;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1795
    const-string/jumbo v1, "auto_brightness"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1797
    :cond_1
    invoke-static {p1}, Lcom/android/settings_ex/DisplaySettings;->-wrap4(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1798
    const-string/jumbo v1, "lift_to_wake"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1800
    :cond_2
    invoke-static {p1}, Lcom/android/settings_ex/DisplaySettings;->-wrap3(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1801
    const-string/jumbo v1, "doze"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1803
    :cond_3
    invoke-static {p1}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleVisible(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1804
    const-string/jumbo v1, "auto_rotate"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1806
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/DisplaySettings;->-wrap5(Landroid/content/res/Resources;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1807
    const-string/jumbo v1, "tap_to_wake"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1809
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/DisplaySettings;->-wrap2(Landroid/content/res/Resources;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1810
    const-string/jumbo v1, "camera_gesture"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1812
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/DisplaySettings;->-wrap1(Landroid/content/res/Resources;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1813
    const-string/jumbo v1, "camera_double_tap_power_gesture"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1815
    :cond_7
    invoke-static {p1}, Lcom/android/settings_ex/DisplaySettings;->-wrap6(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1816
    const-string/jumbo v1, "vr_display_pref"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1819
    :cond_8
    const-string/jumbo v1, "msm_screen_better_settings"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1820
    const-string/jumbo v1, "back_topic_theme"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1821
    const-string/jumbo v1, "wallpaper"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1822
    const-string/jumbo v1, "lockguard_wallpaper_settings"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1823
    const-string/jumbo v1, "network_operator_display"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1824
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1825
    const-string/jumbo v1, "night_mode_enabled_op"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1826
    const-string/jumbo v1, "night_mode_level_op"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1827
    const-string/jumbo v1, "screen_color_mode"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1829
    :cond_9
    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    const-string/jumbo v2, "oem.lift_up_display.support"

    invoke-static {v1, v2}, Lcom/oneplus/settings/utils/OPUtils;->isFeatureSupport(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1830
    const-string/jumbo v1, "oneplus_proximity_wake"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1835
    :goto_0
    return-object v0

    .line 1832
    :cond_a
    const-string/jumbo v1, "oneplus_hand_up_proximity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1778
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1780
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/provider/SearchIndexableResource;>;"
    new-instance v1, Landroid/provider/SearchIndexableResource;

    invoke-direct {v1, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 1781
    .local v1, "sir":Landroid/provider/SearchIndexableResource;
    const v2, 0x7f08002c

    iput v2, v1, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 1782
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1784
    return-object v0
.end method
