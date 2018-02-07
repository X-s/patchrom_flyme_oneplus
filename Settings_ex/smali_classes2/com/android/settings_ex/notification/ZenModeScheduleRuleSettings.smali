.class public Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;
.super Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;
.source "ZenModeScheduleRuleSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "android.settings.ZEN_MODE_SCHEDULE_RULE_SETTINGS"

.field private static final KEY_DAYS:Ljava/lang/String; = "days"

.field private static final KEY_END_TIME:Ljava/lang/String; = "end_time"

.field private static final KEY_EXIT_AT_ALARM:Ljava/lang/String; = "exit_at_alarm"

.field private static final KEY_START_TIME:Ljava/lang/String; = "start_time"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private final mDayFormat:Ljava/text/SimpleDateFormat;

.field private mDays:Landroid/support/v7/preference/Preference;

.field private mEnd:Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

.field private mExitAtAlarm:Landroid/support/v14/preference/SwitchPreference;

.field private mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

.field private mStart:Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->showDaysDialog()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->updateDays()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;-><init>()V

    .line 58
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "EEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->mDayFormat:Ljava/text/SimpleDateFormat;

    .line 49
    return-void
.end method

.method private showDaysDialog()V
    .locals 4

    .prologue
    .line 214
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 215
    const v1, 0x7f0e0e8b

    .line 214
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 216
    new-instance v1, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$5;

    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    invoke-direct {v1, p0, v2, v3}, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$5;-><init>(Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;Landroid/content/Context;[I)V

    .line 214
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 226
    new-instance v1, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$6;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$6;-><init>(Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;)V

    .line 214
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 232
    const v1, 0x7f0e0d0d

    const/4 v2, 0x0

    .line 214
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->mAlertDialog:Landroid/app/AlertDialog;

    .line 213
    return-void
.end method

.method private updateDays()V
    .locals 9

    .prologue
    .line 159
    :try_start_0
    iget-object v7, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v2, v7, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 160
    .local v2, "days":[I
    if-eqz v2, :cond_4

    array-length v7, v2

    if-lez v7, :cond_4

    .line 161
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 163
    .local v0, "c":Ljava/util/Calendar;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    sget-object v7, Lcom/android/settings_ex/notification/ZenModeScheduleDaysSelection;->DAYS:[I

    array-length v7, v7

    if-ge v4, v7, :cond_3

    .line 164
    sget-object v7, Lcom/android/settings_ex/notification/ZenModeScheduleDaysSelection;->DAYS:[I

    aget v1, v7, v4

    .line 165
    .local v1, "day":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    array-length v7, v2

    if-ge v5, v7, :cond_1

    .line 166
    aget v7, v2, v5

    if-ne v1, v7, :cond_2

    .line 167
    const/4 v7, 0x7

    invoke-virtual {v0, v7, v1}, Ljava/util/Calendar;->set(II)V

    .line 168
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 169
    iget-object v7, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->mContext:Landroid/content/Context;

    const v8, 0x7f0e0e90

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :cond_0
    iget-object v7, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->mDayFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 165
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 176
    .end local v1    # "day":I
    .end local v5    # "j":I
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 177
    iget-object v7, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->mDays:Landroid/support/v7/preference/Preference;

    invoke-virtual {v7, v6}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v7, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->mDays:Landroid/support/v7/preference/Preference;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/Preference;->notifyDependencyChange(Z)V

    .line 179
    return-void

    .line 182
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v4    # "i":I
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    iget-object v7, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->mDays:Landroid/support/v7/preference/Preference;

    const v8, 0x7f0e0e8c

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 183
    iget-object v7, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->mDays:Landroid/support/v7/preference/Preference;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/Preference;->notifyDependencyChange(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .end local v2    # "days":[I
    :goto_2
    return-void

    .line 184
    :catch_0
    move-exception v3

    .line 185
    .local v3, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2
.end method

.method private updateEndSummary()V
    .locals 6

    .prologue
    .line 191
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v4, v4, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    mul-int/lit8 v4, v4, 0x3c

    iget-object v5, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v5, v5, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    add-int v2, v4, v5

    .line 192
    .local v2, "startMin":I
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v4, v4, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    mul-int/lit8 v4, v4, 0x3c

    iget-object v5, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v5, v5, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    add-int v0, v4, v5

    .line 193
    .local v0, "endMin":I
    if-lt v2, v0, :cond_0

    const/4 v1, 0x1

    .line 194
    .local v1, "nextDay":Z
    :goto_0
    if-eqz v1, :cond_1

    const v3, 0x7f0e0ea8

    .line 195
    .local v3, "summaryFormat":I
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-virtual {v4, v3}, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setSummaryFormat(I)V

    .line 190
    return-void

    .line 193
    .end local v1    # "nextDay":Z
    .end local v3    # "summaryFormat":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 194
    .restart local v1    # "nextDay":Z
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "summaryFormat":I
    goto :goto_1
.end method


# virtual methods
.method protected getEnabledToastText()I
    .locals 1

    .prologue
    .line 81
    const v0, 0x7f0e0e7c

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 209
    const/16 v0, 0x90

    return v0
.end method

.method protected getZenModeDependency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->mDays:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateInternal()V
    .locals 4

    .prologue
    .line 86
    const v2, 0x7f0800ac

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->addPreferencesFromResource(I)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    .line 89
    .local v1, "root":Landroid/support/v7/preference/PreferenceScreen;
    const-string/jumbo v2, "days"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->mDays:Landroid/support/v7/preference/Preference;

    .line 90
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->mDays:Landroid/support/v7/preference/Preference;

    new-instance v3, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$1;-><init>(Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 100
    .local v0, "mgr":Landroid/app/FragmentManager;
    new-instance v2, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;)V

    iput-object v2, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->mStart:Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    .line 101
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->mStart:Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    const-string/jumbo v3, "start_time"

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setKey(Ljava/lang/String;)V

    .line 102
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->mStart:Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    const v3, 0x7f0e0ea6

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setTitle(I)V

    .line 103
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->mStart:Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    new-instance v3, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$2;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$2;-><init>(Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;)V

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setCallback(Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference$Callback;)V

    .line 119
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->mStart:Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 120
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->mStart:Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->mDays:Landroid/support/v7/preference/Preference;

    invoke-virtual {v3}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setDependency(Ljava/lang/String;)V

    .line 122
    new-instance v2, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;)V

    iput-object v2, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    .line 123
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    const-string/jumbo v3, "end_time"

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setKey(Ljava/lang/String;)V

    .line 124
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    const v3, 0x7f0e0ea7

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setTitle(I)V

    .line 125
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    new-instance v3, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$3;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$3;-><init>(Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;)V

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setCallback(Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference$Callback;)V

    .line 141
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 142
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->mDays:Landroid/support/v7/preference/Preference;

    invoke-virtual {v3}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setDependency(Ljava/lang/String;)V

    .line 144
    const-string/jumbo v2, "exit_at_alarm"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->mExitAtAlarm:Landroid/support/v14/preference/SwitchPreference;

    .line 145
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->mExitAtAlarm:Landroid/support/v14/preference/SwitchPreference;

    new-instance v3, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$4;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$4;-><init>(Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;)V

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 85
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 315
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 317
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->mAlertDialog:Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->onDestroy()V

    .line 313
    return-void

    .line 319
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method protected setRule(Landroid/app/AutomaticZenRule;)Z
    .locals 1
    .param p1, "rule"    # Landroid/app/AutomaticZenRule;

    .prologue
    const/4 v0, 0x0

    .line 69
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    .line 71
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateControlsInternal()V
    .locals 3

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->updateDays()V

    .line 201
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->mStart:Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v2, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setTime(II)V

    .line 202
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v2, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setTime(II)V

    .line 203
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->mExitAtAlarm:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->exitAtAlarm:Z

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 204
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->updateEndSummary()V

    .line 199
    return-void
.end method
