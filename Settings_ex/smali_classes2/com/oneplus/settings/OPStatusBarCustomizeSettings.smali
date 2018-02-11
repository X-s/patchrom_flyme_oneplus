.class public Lcom/oneplus/settings/OPStatusBarCustomizeSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OPStatusBarCustomizeSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings_ex/search/Indexable;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/OPStatusBarCustomizeSettings$StatusBarCustomizeIndexProvider;
    }
.end annotation


# static fields
.field private static final BATTERY_BAR_STYLE:I = 0x0

.field private static final BATTERY_CIRCLE_STYLE:I = 0x1

.field private static final BATTERY_HIDDEN_STYLE:I = 0x2

.field private static final KEY_BATTERY_PERCENT:Ljava/lang/String; = "enable_show_statusbar"

.field private static final KEY_BATTERY_STYLE:Ljava/lang/String; = "battery_style"

.field private static final KEY_STATUSBAR_ICON_MANGER:Ljava/lang/String; = "status_bar_icon_manager"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static final SHOW_POWER_PERCENT_IN_STATUSBAR_TITLE:Ljava/lang/String; = "show_power_percent_in_statusbar_title"

.field private static final TAG:Ljava/lang/String; = "OPStatusBarCustomizeSettings"


# instance fields
.field private mBatteryStylePreference:Landroid/support/v7/preference/ListPreference;

.field private mContext:Landroid/content/Context;

.field private mShowBatteryPercentPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mStatusBarIconMangerPreference:Landroid/support/v7/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings$StatusBarCustomizeIndexProvider;

    invoke-direct {v0}, Lcom/oneplus/settings/OPStatusBarCustomizeSettings$StatusBarCustomizeIndexProvider;-><init>()V

    .line 112
    sput-object v0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private updateBatteryStylePreferenceDescription(I)V
    .locals 3
    .param p1, "batteryStyle"    # I

    .prologue
    .line 92
    iget-object v1, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mBatteryStylePreference:Landroid/support/v7/preference/ListPreference;

    if-eqz v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mBatteryStylePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-lt p1, v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mBatteryStylePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 p1, v1, -0x1

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mBatteryStylePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 102
    .local v0, "entries":[Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mBatteryStylePreference:Landroid/support/v7/preference/ListPreference;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 91
    .end local v0    # "entries":[Ljava/lang/CharSequence;
    :cond_1
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 108
    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 45
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v4, 0x7f08005e

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->addPreferencesFromResource(I)V

    .line 47
    invoke-virtual {p0}, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mContext:Landroid/content/Context;

    .line 48
    const-string/jumbo v4, "battery_style"

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/ListPreference;

    iput-object v4, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mBatteryStylePreference:Landroid/support/v7/preference/ListPreference;

    .line 49
    iget-object v4, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 50
    const-string/jumbo v7, "status_bar_battery_style"

    .line 49
    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 51
    .local v1, "selectedStyle":I
    iget-object v4, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mBatteryStylePreference:Landroid/support/v7/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 52
    invoke-direct {p0, v1}, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->updateBatteryStylePreferenceDescription(I)V

    .line 53
    iget-object v4, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mBatteryStylePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 55
    const-string/jumbo v4, "enable_show_statusbar"

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v14/preference/SwitchPreference;

    iput-object v4, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mShowBatteryPercentPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 56
    const-string/jumbo v4, "status_bar_icon_manager"

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mStatusBarIconMangerPreference:Landroid/support/v7/preference/Preference;

    .line 57
    iget-object v4, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mStatusBarIconMangerPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v4, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 59
    iget-object v4, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 60
    const-string/jumbo v7, "status_bar_show_battery_percent"

    .line 59
    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 61
    .local v2, "showPercetn":I
    iget-object v7, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mShowBatteryPercentPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne v2, v5, :cond_1

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 62
    iget-object v4, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mShowBatteryPercentPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 64
    invoke-virtual {p0}, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 65
    .local v0, "intent":Landroid/content/Intent;
    const/4 v3, 0x1

    .line 66
    .local v3, "showPowerPercentInStatusBar":Z
    if-eqz v0, :cond_0

    const-string/jumbo v4, "show_power_percent_in_statusbar_title"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 67
    const-string/jumbo v4, "show_power_percent_in_statusbar_title"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 68
    .local v3, "showPowerPercentInStatusBar":Z
    if-nez v3, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mShowBatteryPercentPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 44
    .end local v3    # "showPowerPercentInStatusBar":Z
    :cond_0
    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    move v4, v6

    .line 61
    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 76
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v3, "battery_style"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 79
    .local v0, "batteryStyle":I
    iget-object v3, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 80
    const-string/jumbo v5, "status_bar_battery_style"

    .line 79
    invoke-static {v3, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 81
    invoke-direct {p0, v0}, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->updateBatteryStylePreferenceDescription(I)V

    .line 82
    return v4

    .line 83
    .end local v0    # "batteryStyle":I
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v3, "enable_show_statusbar"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 84
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 85
    .local v2, "value":Z
    iget-object v3, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "status_bar_show_battery_percent"

    if-eqz v2, :cond_1

    move v3, v4

    :goto_0
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 86
    return v4

    .line 85
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 88
    .end local v2    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_2
    return v4
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 8
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v3, 0x0

    .line 117
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 118
    .local v7, "key":Ljava/lang/String;
    const-string/jumbo v0, "status_bar_icon_manager"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    new-instance v6, Landroid/content/Intent;

    iget-object v0, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mContext:Landroid/content/Context;

    const-class v1, Lcom/oneplus/settings/OPStatusBarCustomizeIconSettings;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    .local v6, "intent":Landroid/content/Intent;
    const-class v0, Lcom/oneplus/settings/OPStatusBarCustomizeIconSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 121
    const/4 v0, 0x1

    return v0

    .line 123
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_0
    return v3
.end method
