.class public Lcom/oneplus/settings/better/OPNightMode;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OPNightMode.java"

# interfaces
.implements Lcom/android/internal/app/NightDisplayController$Callback;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$OPNightModeLevelPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/better/OPNightMode$1;
    }
.end annotation


# static fields
.field private static final AUTO_ACTIVATE_CUSTOMIZED_VALUE:I = 0x2

.field private static final DIALOG_TURN_OFF_TIME:I = 0x1

.field private static final DIALOG_TURN_ON_TIME:I = 0x0

.field private static final KEY_AUTO_ACTIVATE:Ljava/lang/String; = "auto_activate"

.field private static final KEY_NIGHT_MODE_ENABLED_OP:Ljava/lang/String; = "night_mode_enabled"

.field private static final KEY_NIGHT_MODE_LEVEL_OP:Ljava/lang/String; = "night_mode_level_op"

.field private static final KEY_NIGHT_MODE_SUMMARY:Ljava/lang/String; = "night_mode_summary"

.field private static final KEY_SET_TIME:Ljava/lang/String; = "set_time"

.field private static final KEY_TURN_OFF_TIME:Ljava/lang/String; = "turn_off_time"

.field private static final KEY_TURN_ON_TIME:Ljava/lang/String; = "turn_on_time"

.field private static final NEVER_AUTO_VALUE:I = 0x0

.field private static final NIGHT_MODE_ENABLED:Ljava/lang/String; = "night_mode_enabled"

.field private static final SUNRISE_SUNSET_VALUE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OPNightMode"


# instance fields
.field private isSupportReadingMode:Z

.field private mAutoActivatePreference:Landroid/support/v7/preference/ListPreference;

.field private mCM:Lcom/oneplus/settings/OneplusColorManager;

.field private mController:Lcom/android/internal/app/NightDisplayController;

.field private mNightModSummary:Lcom/android/settings_ex/fuelgauge/WallOfTextPreference;

.field private mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

.field private mNightModeSeekBarContentObserver:Landroid/database/ContentObserver;

.field private mSetTimePreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mTimeFormatter:Ljava/text/DateFormat;

.field private mTurnOffTimePreference:Landroid/support/v7/preference/Preference;

.field private mTurnOnTimePreference:Landroid/support/v7/preference/Preference;


# direct methods
.method static synthetic -get0(Lcom/oneplus/settings/better/OPNightMode;)Lcom/android/internal/app/NightDisplayController;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/NightDisplayController;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/settings/better/OPNightMode;)Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/oneplus/settings/better/OPNightMode;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/settings/better/OPNightMode;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 301
    new-instance v0, Lcom/oneplus/settings/better/OPNightMode$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/better/OPNightMode$1;-><init>(Lcom/oneplus/settings/better/OPNightMode;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeSeekBarContentObserver:Landroid/database/ContentObserver;

    .line 40
    return-void
.end method

.method private convertAutoMode(I)I
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 107
    if-nez p1, :cond_0

    .line 108
    return v0

    .line 109
    :cond_0
    if-ne p1, v1, :cond_1

    .line 110
    const/4 v0, 0x2

    return v0

    .line 112
    :cond_1
    return v1
.end method

.method private getFormattedTimeString(Lcom/android/internal/app/NightDisplayController$LocalTime;)Ljava/lang/String;
    .locals 4
    .param p1, "localTime"    # Lcom/android/internal/app/NightDisplayController$LocalTime;

    .prologue
    const/4 v3, 0x0

    .line 247
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 248
    .local v0, "c":Ljava/util/Calendar;
    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mTimeFormatter:Ljava/text/DateFormat;

    invoke-virtual {v1}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 249
    iget v1, p1, Lcom/android/internal/app/NightDisplayController$LocalTime;->hourOfDay:I

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 250
    iget v1, p1, Lcom/android/internal/app/NightDisplayController$LocalTime;->minute:I

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 251
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 252
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 253
    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mTimeFormatter:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private updateAutoActivateModePreferenceDescription(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 162
    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mAutoActivatePreference:Landroid/support/v7/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mAutoActivatePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 164
    .local v0, "entries":[Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mAutoActivatePreference:Landroid/support/v7/preference/ListPreference;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 161
    .end local v0    # "entries":[Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 318
    const/16 v0, 0x270f

    return v0
.end method

.method public onActivated(Z)V
    .locals 1
    .param p1, "activated"    # Z

    .prologue
    .line 147
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 148
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->setEnabled(Z)V

    .line 146
    return-void
.end method

.method public onAutoModeChanged(I)V
    .locals 3
    .param p1, "autoMode"    # I

    .prologue
    .line 154
    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mAutoActivatePreference:Landroid/support/v7/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 156
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    .line 157
    .local v0, "showCustomSchedule":Z
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mTurnOnTimePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 158
    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mTurnOffTimePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 153
    return-void

    .line 156
    .end local v0    # "showCustomSchedule":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "showCustomSchedule":Z
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v2, 0x7f08004c

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/better/OPNightMode;->addPreferencesFromResource(I)V

    .line 73
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 74
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "oem.read_mode.support"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oneplus/settings/better/OPNightMode;->isSupportReadingMode:Z

    .line 75
    new-instance v2, Lcom/android/internal/app/NightDisplayController;

    invoke-direct {v2, v0}, Lcom/android/internal/app/NightDisplayController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/NightDisplayController;

    .line 76
    const-string/jumbo v2, "night_mode_enabled"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/better/OPNightMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    iput-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 77
    const-string/jumbo v2, "auto_activate"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/better/OPNightMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/ListPreference;

    iput-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mAutoActivatePreference:Landroid/support/v7/preference/ListPreference;

    .line 78
    const-string/jumbo v2, "set_time"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/better/OPNightMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mSetTimePreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 79
    const-string/jumbo v2, "turn_on_time"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/better/OPNightMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mTurnOnTimePreference:Landroid/support/v7/preference/Preference;

    .line 80
    const-string/jumbo v2, "turn_off_time"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/better/OPNightMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mTurnOffTimePreference:Landroid/support/v7/preference/Preference;

    .line 81
    const-string/jumbo v2, "night_mode_summary"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/better/OPNightMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/fuelgauge/WallOfTextPreference;

    iput-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModSummary:Lcom/android/settings_ex/fuelgauge/WallOfTextPreference;

    .line 82
    const-string/jumbo v2, "night_mode_level_op"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/better/OPNightMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    iput-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    .line 83
    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_0

    .line 84
    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 86
    :cond_0
    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    if-eqz v2, :cond_1

    .line 87
    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    invoke-virtual {v2, p0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->setOPNightModeLevelSeekBarChangeListener(Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$OPNightModeLevelPreferenceChangeListener;)V

    .line 91
    :cond_1
    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mAutoActivatePreference:Landroid/support/v7/preference/ListPreference;

    iget-object v3, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v3}, Lcom/android/internal/app/NightDisplayController;->getAutoMode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 93
    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mAutoActivatePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 94
    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mTimeFormatter:Ljava/text/DateFormat;

    .line 95
    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mTimeFormatter:Ljava/text/DateFormat;

    const-string/jumbo v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 96
    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v2}, Lcom/android/internal/app/NightDisplayController;->getAutoMode()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/oneplus/settings/better/OPNightMode;->convertAutoMode(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/oneplus/settings/better/OPNightMode;->updateAutoActivateModePreferenceDescription(I)V

    .line 98
    new-instance v2, Lcom/oneplus/settings/OneplusColorManager;

    sget-object v3, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-direct {v2, v3}, Lcom/oneplus/settings/OneplusColorManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    .line 99
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "reading_mode_status"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v1, 0x1

    .line 100
    .local v1, "readingmodeEnbale":Z
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    invoke-virtual {v2, v1}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->setEnabled(Z)V

    .line 101
    iget-boolean v2, p0, Lcom/oneplus/settings/better/OPNightMode;->isSupportReadingMode:Z

    if-eqz v2, :cond_2

    .line 102
    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModSummary:Lcom/android/settings_ex/fuelgauge/WallOfTextPreference;

    sget-object v3, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    const v4, 0x7f0e03da

    invoke-virtual {v3, v4}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/fuelgauge/WallOfTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 69
    :cond_2
    return-void

    .line 99
    .end local v1    # "readingmodeEnbale":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "readingmodeEnbale":Z
    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .param p1, "dialogId"    # I

    .prologue
    .line 198
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 200
    :cond_0
    if-nez p1, :cond_1

    .line 201
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->getCustomStartTime()Lcom/android/internal/app/NightDisplayController$LocalTime;

    move-result-object v6

    .line 206
    .local v6, "initialTime":Lcom/android/internal/app/NightDisplayController$LocalTime;
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 207
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    .line 209
    .local v5, "use24HourFormat":Z
    new-instance v0, Landroid/app/TimePickerDialog;

    .line 211
    new-instance v2, Lcom/oneplus/settings/better/OPNightMode$2;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/settings/better/OPNightMode$2;-><init>(Lcom/oneplus/settings/better/OPNightMode;I)V

    .line 239
    iget v3, v6, Lcom/android/internal/app/NightDisplayController$LocalTime;->hourOfDay:I

    iget v4, v6, Lcom/android/internal/app/NightDisplayController$LocalTime;->minute:I

    .line 209
    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    return-object v0

    .line 203
    .end local v1    # "context":Landroid/content/Context;
    .end local v5    # "use24HourFormat":Z
    .end local v6    # "initialTime":Lcom/android/internal/app/NightDisplayController$LocalTime;
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->getCustomEndTime()Lcom/android/internal/app/NightDisplayController$LocalTime;

    move-result-object v6

    .restart local v6    # "initialTime":Lcom/android/internal/app/NightDisplayController$LocalTime;
    goto :goto_0

    .line 242
    .end local v6    # "initialTime":Lcom/android/internal/app/NightDisplayController$LocalTime;
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCustomEndTimeChanged(Lcom/android/internal/app/NightDisplayController$LocalTime;)V
    .locals 2
    .param p1, "endTime"    # Lcom/android/internal/app/NightDisplayController$LocalTime;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mTurnOffTimePreference:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, p1}, Lcom/oneplus/settings/better/OPNightMode;->getFormattedTimeString(Lcom/android/internal/app/NightDisplayController$LocalTime;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 263
    return-void
.end method

.method public onCustomStartTimeChanged(Lcom/android/internal/app/NightDisplayController$LocalTime;)V
    .locals 2
    .param p1, "startTime"    # Lcom/android/internal/app/NightDisplayController$LocalTime;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mTurnOnTimePreference:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, p1}, Lcom/oneplus/settings/better/OPNightMode;->getFormattedTimeString(Lcom/android/internal/app/NightDisplayController$LocalTime;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 258
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 170
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v3, "night_mode_enabled"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 172
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 173
    .local v0, "enabled":Z
    iget-object v3, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v3, v0}, Lcom/android/internal/app/NightDisplayController;->setActivated(Z)Z

    .line 180
    .end local v0    # "enabled":Z
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 174
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v3, "auto_activate"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 175
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 176
    .local v2, "value":I
    iget-object v3, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v3, v2}, Lcom/android/internal/app/NightDisplayController;->setAutoMode(I)Z

    .line 177
    iget-object v3, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v3}, Lcom/android/internal/app/NightDisplayController;->getAutoMode()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/oneplus/settings/better/OPNightMode;->convertAutoMode(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/oneplus/settings/better/OPNightMode;->updateAutoActivateModePreferenceDescription(I)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v2, 0x1

    .line 185
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "key":Ljava/lang/String;
    const-string/jumbo v1, "turn_on_time"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPNightMode;->showDialog(I)V

    .line 188
    return v2

    .line 189
    :cond_0
    const-string/jumbo v1, "turn_off_time"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    invoke-virtual {p0, v2}, Lcom/oneplus/settings/better/OPNightMode;->showDialog(I)V

    .line 191
    return v2

    .line 193
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 270
    if-nez p3, :cond_0

    return-void

    .line 273
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/settings/better/OPNightMode;->isSupportReadingMode:Z

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    rsub-int v1, p2, 0x84

    add-int/lit8 v1, v1, -0x5a

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OneplusColorManager;->setColorBalance(I)V

    .line 269
    :goto_0
    return-void

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    rsub-int v1, p2, 0x84

    add-int/lit8 v1, v1, -0x38

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OneplusColorManager;->setColorBalance(I)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x2

    .line 118
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStart()V

    .line 121
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/NightDisplayController;->setListener(Lcom/android/internal/app/NightDisplayController$Callback;)V

    .line 124
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->isActivated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPNightMode;->onActivated(Z)V

    .line 125
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->getAutoMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPNightMode;->onAutoModeChanged(I)V

    .line 126
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->getCustomStartTime()Lcom/android/internal/app/NightDisplayController$LocalTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPNightMode;->onCustomStartTimeChanged(Lcom/android/internal/app/NightDisplayController$LocalTime;)V

    .line 127
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->getCustomEndTime()Lcom/android/internal/app/NightDisplayController$LocalTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPNightMode;->onCustomEndTimeChanged(Lcom/android/internal/app/NightDisplayController$LocalTime;)V

    .line 128
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 129
    const-string/jumbo v1, "oem_nightmode_progress_status"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 130
    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeSeekBarContentObserver:Landroid/database/ContentObserver;

    .line 128
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 131
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 132
    const-string/jumbo v1, "reading_mode_status"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 133
    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeSeekBarContentObserver:Landroid/database/ContentObserver;

    .line 131
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 117
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/settings/better/OPNightMode;->isSupportReadingMode:Z

    if-eqz v0, :cond_0

    .line 282
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 138
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStop()V

    .line 141
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/NightDisplayController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/NightDisplayController;->setListener(Lcom/android/internal/app/NightDisplayController$Callback;)V

    .line 142
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeSeekBarContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 137
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 294
    const-string/jumbo v1, "oem_nightmode_progress_status"

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    const/4 v3, -0x2

    .line 293
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 297
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    const/16 v1, -0x200

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OneplusColorManager;->setColorBalance(I)V

    .line 292
    return-void
.end method
