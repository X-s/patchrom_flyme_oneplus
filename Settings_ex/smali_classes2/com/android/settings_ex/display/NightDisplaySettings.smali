.class public Lcom/android/settings_ex/display/NightDisplaySettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "NightDisplaySettings.java"

# interfaces
.implements Lcom/android/internal/app/NightDisplayController$Callback;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final DIALOG_END_TIME:I = 0x1

.field private static final DIALOG_START_TIME:I = 0x0

.field private static final KEY_NIGHT_DISPLAY_ACTIVATED:Ljava/lang/String; = "night_display_activated"

.field private static final KEY_NIGHT_DISPLAY_AUTO_MODE:Ljava/lang/String; = "night_display_auto_mode"

.field private static final KEY_NIGHT_DISPLAY_END_TIME:Ljava/lang/String; = "night_display_end_time"

.field private static final KEY_NIGHT_DISPLAY_START_TIME:Ljava/lang/String; = "night_display_start_time"


# instance fields
.field private mActivatedPreference:Landroid/support/v7/preference/TwoStatePreference;

.field private mAutoModePreference:Landroid/support/v7/preference/DropDownPreference;

.field private mController:Lcom/android/internal/app/NightDisplayController;

.field private mEndTimePreference:Landroid/support/v7/preference/Preference;

.field private mStartTimePreference:Landroid/support/v7/preference/Preference;

.field private mTimeFormatter:Ljava/text/DateFormat;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/display/NightDisplaySettings;)Lcom/android/internal/app/NightDisplayController;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/display/NightDisplaySettings;->mController:Lcom/android/internal/app/NightDisplayController;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private getFormattedTimeString(Lcom/android/internal/app/NightDisplayController$LocalTime;)Ljava/lang/String;
    .locals 4
    .param p1, "localTime"    # Lcom/android/internal/app/NightDisplayController$LocalTime;

    .prologue
    const/4 v3, 0x0

    .line 173
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 174
    .local v0, "c":Ljava/util/Calendar;
    iget-object v1, p0, Lcom/android/settings_ex/display/NightDisplaySettings;->mTimeFormatter:Ljava/text/DateFormat;

    invoke-virtual {v1}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 175
    iget v1, p1, Lcom/android/internal/app/NightDisplayController$LocalTime;->hourOfDay:I

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 176
    iget v1, p1, Lcom/android/internal/app/NightDisplayController$LocalTime;->minute:I

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 177
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 178
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 179
    iget-object v1, p0, Lcom/android/settings_ex/display/NightDisplaySettings;->mTimeFormatter:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 204
    const/16 v0, 0x1e8

    return v0
.end method

.method public onActivated(Z)V
    .locals 1
    .param p1, "activated"    # Z

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings_ex/display/NightDisplaySettings;->mActivatedPreference:Landroid/support/v7/preference/TwoStatePreference;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    .line 159
    return-void
.end method

.method public onAutoModeChanged(I)V
    .locals 3
    .param p1, "autoMode"    # I

    .prologue
    .line 165
    iget-object v1, p0, Lcom/android/settings_ex/display/NightDisplaySettings;->mAutoModePreference:Landroid/support/v7/preference/DropDownPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 167
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    .line 168
    .local v0, "showCustomSchedule":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/display/NightDisplaySettings;->mStartTimePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 169
    iget-object v1, p0, Lcom/android/settings_ex/display/NightDisplaySettings;->mEndTimePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 164
    return-void

    .line 167
    .end local v0    # "showCustomSchedule":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "showCustomSchedule":Z
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings_ex/display/NightDisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 64
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/internal/app/NightDisplayController;

    invoke-direct {v1, v0}, Lcom/android/internal/app/NightDisplayController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/display/NightDisplaySettings;->mController:Lcom/android/internal/app/NightDisplayController;

    .line 66
    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/display/NightDisplaySettings;->mTimeFormatter:Ljava/text/DateFormat;

    .line 67
    iget-object v1, p0, Lcom/android/settings_ex/display/NightDisplaySettings;->mTimeFormatter:Ljava/text/DateFormat;

    const-string/jumbo v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 60
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .param p1, "dialogId"    # I

    .prologue
    .line 132
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 134
    :cond_0
    if-nez p1, :cond_1

    .line 135
    iget-object v0, p0, Lcom/android/settings_ex/display/NightDisplaySettings;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->getCustomStartTime()Lcom/android/internal/app/NightDisplayController$LocalTime;

    move-result-object v6

    .line 140
    .local v6, "initialTime":Lcom/android/internal/app/NightDisplayController$LocalTime;
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/display/NightDisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 141
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    .line 142
    .local v5, "use24HourFormat":Z
    new-instance v0, Landroid/app/TimePickerDialog;

    new-instance v2, Lcom/android/settings_ex/display/NightDisplaySettings$1;

    invoke-direct {v2, p0, p1}, Lcom/android/settings_ex/display/NightDisplaySettings$1;-><init>(Lcom/android/settings_ex/display/NightDisplaySettings;I)V

    .line 153
    iget v3, v6, Lcom/android/internal/app/NightDisplayController$LocalTime;->hourOfDay:I

    iget v4, v6, Lcom/android/internal/app/NightDisplayController$LocalTime;->minute:I

    .line 142
    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    return-object v0

    .line 137
    .end local v1    # "context":Landroid/content/Context;
    .end local v5    # "use24HourFormat":Z
    .end local v6    # "initialTime":Lcom/android/internal/app/NightDisplayController$LocalTime;
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/display/NightDisplaySettings;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->getCustomEndTime()Lcom/android/internal/app/NightDisplayController$LocalTime;

    move-result-object v6

    .restart local v6    # "initialTime":Lcom/android/internal/app/NightDisplayController$LocalTime;
    goto :goto_0

    .line 155
    .end local v6    # "initialTime":Lcom/android/internal/app/NightDisplayController$LocalTime;
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "rootKey"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 75
    const v0, 0x7f08003e

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/display/NightDisplaySettings;->addPreferencesFromResource(I)V

    .line 77
    const-string/jumbo v0, "night_display_auto_mode"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/display/NightDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings_ex/display/NightDisplaySettings;->mAutoModePreference:Landroid/support/v7/preference/DropDownPreference;

    .line 78
    const-string/jumbo v0, "night_display_start_time"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/display/NightDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/display/NightDisplaySettings;->mStartTimePreference:Landroid/support/v7/preference/Preference;

    .line 79
    const-string/jumbo v0, "night_display_end_time"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/display/NightDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/display/NightDisplaySettings;->mEndTimePreference:Landroid/support/v7/preference/Preference;

    .line 80
    const-string/jumbo v0, "night_display_activated"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/display/NightDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings_ex/display/NightDisplaySettings;->mActivatedPreference:Landroid/support/v7/preference/TwoStatePreference;

    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/display/NightDisplaySettings;->mAutoModePreference:Landroid/support/v7/preference/DropDownPreference;

    new-array v1, v6, [Ljava/lang/CharSequence;

    .line 83
    const v2, 0x7f0e0829

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/display/NightDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 84
    const v2, 0x7f0e082a

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/display/NightDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 85
    const v2, 0x7f0e082b

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/display/NightDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 82
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/android/settings_ex/display/NightDisplaySettings;->mAutoModePreference:Landroid/support/v7/preference/DropDownPreference;

    new-array v1, v6, [Ljava/lang/CharSequence;

    .line 88
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 89
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 90
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 87
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/android/settings_ex/display/NightDisplaySettings;->mAutoModePreference:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/DropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 93
    iget-object v0, p0, Lcom/android/settings_ex/display/NightDisplaySettings;->mActivatedPreference:Landroid/support/v7/preference/TwoStatePreference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 71
    return-void
.end method

.method public onCustomEndTimeChanged(Lcom/android/internal/app/NightDisplayController$LocalTime;)V
    .locals 2
    .param p1, "endTime"    # Lcom/android/internal/app/NightDisplayController$LocalTime;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/settings_ex/display/NightDisplaySettings;->mEndTimePreference:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, p1}, Lcom/android/settings_ex/display/NightDisplaySettings;->getFormattedTimeString(Lcom/android/internal/app/NightDisplayController$LocalTime;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 188
    return-void
.end method

.method public onCustomStartTimeChanged(Lcom/android/internal/app/NightDisplayController$LocalTime;)V
    .locals 2
    .param p1, "startTime"    # Lcom/android/internal/app/NightDisplayController$LocalTime;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/settings_ex/display/NightDisplaySettings;->mStartTimePreference:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, p1}, Lcom/android/settings_ex/display/NightDisplaySettings;->getFormattedTimeString(Lcom/android/internal/app/NightDisplayController$LocalTime;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 183
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/settings_ex/display/NightDisplaySettings;->mAutoModePreference:Landroid/support/v7/preference/DropDownPreference;

    if-ne p1, v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/settings_ex/display/NightDisplaySettings;->mController:Lcom/android/internal/app/NightDisplayController;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/NightDisplayController;->setAutoMode(I)Z

    move-result v0

    return v0

    .line 196
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/display/NightDisplaySettings;->mActivatedPreference:Landroid/support/v7/preference/TwoStatePreference;

    if-ne p1, v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/android/settings_ex/display/NightDisplaySettings;->mController:Lcom/android/internal/app/NightDisplayController;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/NightDisplayController;->setActivated(Z)Z

    move-result v0

    return v0

    .line 199
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v1, 0x1

    .line 120
    iget-object v0, p0, Lcom/android/settings_ex/display/NightDisplaySettings;->mStartTimePreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/display/NightDisplaySettings;->showDialog(I)V

    .line 122
    return v1

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/display/NightDisplaySettings;->mEndTimePreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_1

    .line 124
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/display/NightDisplaySettings;->showDialog(I)V

    .line 125
    return v1

    .line 127
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStart()V

    .line 101
    iget-object v0, p0, Lcom/android/settings_ex/display/NightDisplaySettings;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/NightDisplayController;->setListener(Lcom/android/internal/app/NightDisplayController$Callback;)V

    .line 104
    iget-object v0, p0, Lcom/android/settings_ex/display/NightDisplaySettings;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->isActivated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/display/NightDisplaySettings;->onActivated(Z)V

    .line 105
    iget-object v0, p0, Lcom/android/settings_ex/display/NightDisplaySettings;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->getAutoMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/display/NightDisplaySettings;->onAutoModeChanged(I)V

    .line 106
    iget-object v0, p0, Lcom/android/settings_ex/display/NightDisplaySettings;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->getCustomStartTime()Lcom/android/internal/app/NightDisplayController$LocalTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/display/NightDisplaySettings;->onCustomStartTimeChanged(Lcom/android/internal/app/NightDisplayController$LocalTime;)V

    .line 107
    iget-object v0, p0, Lcom/android/settings_ex/display/NightDisplaySettings;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->getCustomEndTime()Lcom/android/internal/app/NightDisplayController$LocalTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/display/NightDisplaySettings;->onCustomEndTimeChanged(Lcom/android/internal/app/NightDisplayController$LocalTime;)V

    .line 97
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 112
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStop()V

    .line 115
    iget-object v0, p0, Lcom/android/settings_ex/display/NightDisplaySettings;->mController:Lcom/android/internal/app/NightDisplayController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/NightDisplayController;->setListener(Lcom/android/internal/app/NightDisplayController$Callback;)V

    .line 111
    return-void
.end method
