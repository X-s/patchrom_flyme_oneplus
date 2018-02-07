.class public Lcom/android/settings_ex/DateTimeSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "DateTimeSettings.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;
.implements Landroid/app/DatePickerDialog$OnDateSetListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/DateTimeSettings$1;,
        Lcom/android/settings_ex/DateTimeSettings$2;,
        Lcom/android/settings_ex/DateTimeSettings$3;,
        Lcom/android/settings_ex/DateTimeSettings$DateTimeSearchIndexProvider;,
        Lcom/android/settings_ex/DateTimeSettings$SummaryProvider;
    }
.end annotation


# static fields
.field private static final DIALOG_DATEPICKER:I = 0x0

.field private static final DIALOG_TIMEPICKER:I = 0x1

.field protected static final EXTRA_IS_FIRST_RUN:Ljava/lang/String; = "firstRun"

.field private static final HOURS_12:Ljava/lang/String; = "12"

.field private static final HOURS_24:Ljava/lang/String; = "24"

.field private static final KEY_AUTO_TIME:Ljava/lang/String; = "auto_time"

.field private static final KEY_AUTO_TIME_ZONE:Ljava/lang/String; = "auto_zone"

.field private static final MIN_DATE:J = 0x1160d1b4800L

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private mAutoTimePref:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

.field private mAutoTimeZonePref:Landroid/support/v14/preference/SwitchPreference;

.field private mDatePref:Landroid/support/v7/preference/Preference;

.field private mDummyDate:Ljava/util/Calendar;

.field private mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mTime24Pref:Landroid/support/v7/preference/Preference;

.field private mTimePref:Landroid/support/v7/preference/Preference;

.field private mTimeZone:Landroid/support/v7/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 413
    new-instance v0, Lcom/android/settings_ex/DateTimeSettings$3;

    invoke-direct {v0}, Lcom/android/settings_ex/DateTimeSettings$3;-><init>()V

    .line 412
    sput-object v0, Lcom/android/settings_ex/DateTimeSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 422
    new-instance v0, Lcom/android/settings_ex/DateTimeSettings$DateTimeSearchIndexProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/DateTimeSettings$DateTimeSearchIndexProvider;-><init>(Lcom/android/settings_ex/DateTimeSettings$DateTimeSearchIndexProvider;)V

    .line 421
    sput-object v0, Lcom/android/settings_ex/DateTimeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 89
    new-instance v0, Lcom/android/settings_ex/DateTimeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DateTimeSettings$1;-><init>(Lcom/android/settings_ex/DateTimeSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/DateTimeSettings;->mHandler:Landroid/os/Handler;

    .line 382
    new-instance v0, Lcom/android/settings_ex/DateTimeSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DateTimeSettings$2;-><init>(Lcom/android/settings_ex/DateTimeSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 60
    return-void
.end method

.method static configureDatePicker(Landroid/widget/DatePicker;)V
    .locals 4
    .param p0, "datePicker"    # Landroid/widget/DatePicker;

    .prologue
    .line 271
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 272
    .local v0, "t":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 273
    const/16 v1, 0x7b2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 274
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 275
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 276
    const/16 v1, 0x7f5

    const/16 v2, 0xb

    const/16 v3, 0x1f

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 277
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 269
    return-void
.end method

.method private getAutoState(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 349
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    return v1
.end method

.method private initUI()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 113
    const-string/jumbo v5, "auto_time"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    .line 114
    .local v1, "autoTimeEnabled":Z
    const-string/jumbo v5, "auto_time_zone"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v2

    .line 116
    .local v2, "autoTimeZoneEnabled":Z
    const-string/jumbo v5, "auto_time"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    iput-object v5, p0, Lcom/android/settings_ex/DateTimeSettings;->mAutoTimePref:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    .line 117
    iget-object v5, p0, Lcom/android/settings_ex/DateTimeSettings;->mAutoTimePref:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v5, p0}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings_exlib/RestrictedLockUtils;->checkIfAutoTimeRequired(Landroid/content/Context;)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 119
    .local v0, "admin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    iget-object v5, p0, Lcom/android/settings_ex/DateTimeSettings;->mAutoTimePref:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v5, v0}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 122
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "firstRun"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 124
    .local v4, "isFirstRun":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    .line 128
    iget-object v5, p0, Lcom/android/settings_ex/DateTimeSettings;->mAutoTimePref:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v5, v1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setChecked(Z)V

    .line 129
    const-string/jumbo v5, "auto_zone"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v14/preference/SwitchPreference;

    iput-object v5, p0, Lcom/android/settings_ex/DateTimeSettings;->mAutoTimeZonePref:Landroid/support/v14/preference/SwitchPreference;

    .line 130
    iget-object v5, p0, Lcom/android/settings_ex/DateTimeSettings;->mAutoTimeZonePref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v5, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v4, :cond_1

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings_ex/DateTimeSettings;->mAutoTimeZonePref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v5, v8}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 135
    const/4 v2, 0x0

    .line 137
    .end local v2    # "autoTimeZoneEnabled":Z
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/DateTimeSettings;->mAutoTimeZonePref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v5, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 139
    const-string/jumbo v5, "time"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DateTimeSettings;->mTimePref:Landroid/support/v7/preference/Preference;

    .line 140
    const-string/jumbo v5, "24 hour"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DateTimeSettings;->mTime24Pref:Landroid/support/v7/preference/Preference;

    .line 141
    const-string/jumbo v5, "timezone"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DateTimeSettings;->mTimeZone:Landroid/support/v7/preference/Preference;

    .line 142
    const-string/jumbo v5, "date"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DateTimeSettings;->mDatePref:Landroid/support/v7/preference/Preference;

    .line 143
    if-eqz v4, :cond_2

    .line 144
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings_ex/DateTimeSettings;->mTime24Pref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v5, v8}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 147
    :cond_2
    iget-object v8, p0, Lcom/android/settings_ex/DateTimeSettings;->mTimePref:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_3

    move v5, v6

    :goto_0
    invoke-virtual {v8, v5}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 148
    iget-object v8, p0, Lcom/android/settings_ex/DateTimeSettings;->mDatePref:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_4

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 149
    iget-object v5, p0, Lcom/android/settings_ex/DateTimeSettings;->mTimeZone:Landroid/support/v7/preference/Preference;

    if-eqz v2, :cond_5

    :goto_2
    invoke-virtual {v5, v6}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 112
    return-void

    :cond_3
    move v5, v7

    .line 147
    goto :goto_0

    :cond_4
    move v5, v7

    .line 148
    goto :goto_1

    :cond_5
    move v6, v7

    .line 149
    goto :goto_2
.end method

.method private is24Hour()Z
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private set24Hour(Z)V
    .locals 3
    .param p1, "is24Hour"    # Z

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 343
    const-string/jumbo v2, "time_12_24"

    .line 344
    if-eqz p1, :cond_0

    const-string/jumbo v0, "24"

    .line 342
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 341
    return-void

    .line 344
    :cond_0
    const-string/jumbo v0, "12"

    goto :goto_0
.end method

.method static setDate(Landroid/content/Context;III)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 356
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 358
    .local v0, "c":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 359
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 360
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 361
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide v6, 0x1160d1b4800L

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 363
    .local v2, "when":J
    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 364
    const-string/jumbo v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlarmManager;->setTime(J)V

    .line 355
    :cond_0
    return-void
.end method

.method static setTime(Landroid/content/Context;II)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I

    .prologue
    const/4 v4, 0x0

    .line 369
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 371
    .local v0, "c":Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 372
    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 373
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 374
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 375
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide v6, 0x1160d1b4800L

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 377
    .local v2, "when":J
    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 378
    const-string/jumbo v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlarmManager;->setTime(J)V

    .line 368
    :cond_0
    return-void
.end method

.method private timeUpdated(Z)V
    .locals 2
    .param p1, "is24Hour"    # Z

    .prologue
    .line 330
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 331
    .local v0, "timeChanged":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.extra.TIME_PREF_24_HOUR_FORMAT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 332
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 329
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 100
    const/16 v0, 0x26

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 325
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 107
    const v0, 0x7f080023

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DateTimeSettings;->addPreferencesFromResource(I)V

    .line 109
    invoke-direct {p0}, Lcom/android/settings_ex/DateTimeSettings;->initUI()V

    .line 104
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .param p1, "id"    # I

    .prologue
    .line 246
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 247
    .local v7, "calendar":Ljava/util/Calendar;
    packed-switch p1, :pswitch_data_0

    .line 265
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 249
    :pswitch_0
    new-instance v0, Landroid/app/DatePickerDialog;

    .line 250
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 252
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 253
    const/4 v2, 0x2

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 254
    const/4 v2, 0x5

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v2, p0

    .line 249
    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 255
    .local v0, "d":Landroid/app/DatePickerDialog;
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/DateTimeSettings;->configureDatePicker(Landroid/widget/DatePicker;)V

    .line 256
    return-object v0

    .line 258
    .end local v0    # "d":Landroid/app/DatePickerDialog;
    :pswitch_1
    new-instance v1, Landroid/app/TimePickerDialog;

    .line 259
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 261
    const/16 v3, 0xb

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 262
    const/16 v3, 0xc

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 263
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    move-object v3, p0

    .line 258
    invoke-direct/range {v1 .. v6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    return-object v1

    .line 247
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 7
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 196
    .local v2, "activity":Landroid/app/Activity;
    if-eqz v2, :cond_0

    .line 197
    iget-object v6, p0, Lcom/android/settings_ex/DateTimeSettings;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings_ex/DateTimeSettings$4;

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/DateTimeSettings$4;-><init>(Lcom/android/settings_ex/DateTimeSettings;Landroid/app/Activity;III)V

    .line 204
    const-wide/16 v4, 0x1f4

    .line 197
    invoke-virtual {v6, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 194
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 170
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 171
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 169
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 229
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "auto_time"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 230
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 231
    .local v0, "autoEnabled":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "auto_time"

    .line 232
    if-eqz v0, :cond_1

    move v2, v3

    .line 231
    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 233
    iget-object v5, p0, Lcom/android/settings_ex/DateTimeSettings;->mTimePref:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_2

    move v2, v4

    :goto_1
    invoke-virtual {v5, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 234
    iget-object v2, p0, Lcom/android/settings_ex/DateTimeSettings;->mDatePref:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {v2, v4}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 241
    .end local v0    # "autoEnabled":Z
    :cond_0
    :goto_3
    return v3

    .restart local v0    # "autoEnabled":Z
    :cond_1
    move v2, v4

    .line 232
    goto :goto_0

    :cond_2
    move v2, v3

    .line 233
    goto :goto_1

    :cond_3
    move v4, v3

    .line 234
    goto :goto_2

    .line 235
    .end local v0    # "autoEnabled":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "auto_zone"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 238
    .local v1, "autoZoneEnabled":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "auto_time_zone"

    if-eqz v1, :cond_5

    move v2, v3

    .line 237
    :goto_4
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 239
    iget-object v2, p0, Lcom/android/settings_ex/DateTimeSettings;->mTimeZone:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_6

    :goto_5
    invoke-virtual {v2, v4}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_3

    :cond_5
    move v2, v4

    .line 238
    goto :goto_4

    :cond_6
    move v4, v3

    .line 239
    goto :goto_5
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v2, 0x1

    .line 308
    iget-object v1, p0, Lcom/android/settings_ex/DateTimeSettings;->mDatePref:Landroid/support/v7/preference/Preference;

    if-ne p1, v1, :cond_1

    .line 309
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/DateTimeSettings;->showDialog(I)V

    .line 320
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1

    .line 310
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/DateTimeSettings;->mTimePref:Landroid/support/v7/preference/Preference;

    if-ne p1, v1, :cond_2

    .line 312
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/DateTimeSettings;->removeDialog(I)V

    .line 313
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/DateTimeSettings;->showDialog(I)V

    goto :goto_0

    .line 314
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/DateTimeSettings;->mTime24Pref:Landroid/support/v7/preference/Preference;

    if-ne p1, v1, :cond_0

    .line 315
    iget-object v1, p0, Lcom/android/settings_ex/DateTimeSettings;->mTime24Pref:Landroid/support/v7/preference/Preference;

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 316
    .local v0, "is24Hour":Z
    invoke-direct {p0, v0}, Lcom/android/settings_ex/DateTimeSettings;->set24Hour(Z)V

    .line 317
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 318
    invoke-direct {p0, v0}, Lcom/android/settings_ex/DateTimeSettings;->timeUpdated(Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 154
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 156
    iget-object v1, p0, Lcom/android/settings_ex/DateTimeSettings;->mTime24Pref:Landroid/support/v7/preference/Preference;

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings_ex/DateTimeSettings;->is24Hour()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 159
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 160
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 165
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 153
    return-void
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 6
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 211
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 212
    iget-object v1, p0, Lcom/android/settings_ex/DateTimeSettings;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings_ex/DateTimeSettings$5;

    invoke-direct {v2, p0, v0, p2, p3}, Lcom/android/settings_ex/DateTimeSettings$5;-><init>(Lcom/android/settings_ex/DateTimeSettings;Landroid/app/Activity;II)V

    .line 219
    const-wide/16 v4, 0x1f4

    .line 212
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 209
    :cond_0
    return-void
.end method

.method public updateTimeAndDateDisplay(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 175
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 176
    .local v9, "now":Ljava/util/Calendar;
    iget-object v0, p0, Lcom/android/settings_ex/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 179
    iget-object v0, p0, Lcom/android/settings_ex/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0x1f

    const/16 v4, 0xd

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 180
    iget-object v0, p0, Lcom/android/settings_ex/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    .line 181
    .local v8, "dummyDate":Ljava/util/Date;
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 183
    const-string/jumbo v1, "date_format"

    .line 182
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 184
    .local v7, "dateFormat":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings_ex/DateTimeSettings;->mDatePref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 188
    .end local v7    # "dateFormat":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/DateTimeSettings;->mTimePref:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v0, p0, Lcom/android/settings_ex/DateTimeSettings;->mTimeZone:Landroid/support/v7/preference/Preference;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings_exlib/datetime/ZoneGetter;->getTimeZoneOffsetAndName(Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v0, p0, Lcom/android/settings_ex/DateTimeSettings;->mTime24Pref:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 174
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/DateTimeSettings;->mDatePref:Landroid/support/v7/preference/Preference;

    invoke-static {p1}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
