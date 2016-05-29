.class public Lcom/android/settings_ex/DateTimeSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "DateTimeSettings.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final DIALOG_DATEPICKER:I = 0x0

.field private static final DIALOG_TIMEPICKER:I = 0x1

.field protected static final EXTRA_IS_FIRST_RUN:Ljava/lang/String; = "firstRun"

.field private static final HOURS_12:Ljava/lang/String; = "12"

.field private static final HOURS_24:Ljava/lang/String; = "24"

.field private static final KEY_AUTO_SET_TIME_AND_ZONE:Ljava/lang/String; = "auto_set_time_and_zone"

.field private static final KEY_AUTO_TIME:Ljava/lang/String; = "auto_time"

.field private static final KEY_AUTO_TIME_ZONE:Ljava/lang/String; = "auto_zone"


# instance fields
.field private mAutoSetTimeAndZonePref:Landroid/preference/SwitchPreference;

.field private mAutoTimePref:Landroid/preference/SwitchPreference;

.field private mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

.field private mDateFormat:Landroid/preference/ListPreference;

.field private mDatePref:Landroid/preference/Preference;

.field private mDummyDate:Ljava/util/Calendar;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mTime24Pref:Landroid/preference/SwitchPreference;

.field private mTimePref:Landroid/preference/Preference;

.field private mTimeZone:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 480
    new-instance v0, Lcom/android/settings_ex/DateTimeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DateTimeSettings$1;-><init>(Lcom/android/settings_ex/DateTimeSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private closePowerOffAndPowerOnAlarm()V
    .locals 10

    .prologue
    const/high16 v9, 0x8000000

    .line 247
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 248
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/settings_ex/timer/OPTimerReceiverPowerOff;->isPowerOnEnable(Landroid/content/Context;)Z

    move-result v4

    .line 249
    .local v4, "powerOn":Z
    invoke-static {v0}, Lcom/android/settings_ex/timer/OPTimerReceiverPowerOff;->isPowerOffEnable(Landroid/content/Context;)Z

    move-result v2

    .line 251
    .local v2, "powerOff":Z
    if-eqz v2, :cond_0

    .line 252
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.android.settings_ex.POWER_OP_OFF"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 253
    .local v3, "powerOffIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    const-string v8, "alarm"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 255
    .local v1, "am":Landroid/app/AlarmManager;
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, v3, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 258
    .local v6, "sender":Landroid/app/PendingIntent;
    invoke-virtual {v1, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 261
    .end local v1    # "am":Landroid/app/AlarmManager;
    .end local v3    # "powerOffIntent":Landroid/content/Intent;
    .end local v6    # "sender":Landroid/app/PendingIntent;
    :cond_0
    if-eqz v4, :cond_1

    .line 262
    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.android.settings_ex.POWER_OP_ON"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    .local v5, "powerOnIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    const-string v8, "alarm"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 265
    .restart local v1    # "am":Landroid/app/AlarmManager;
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v7, v8, v5, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 268
    .restart local v6    # "sender":Landroid/app/PendingIntent;
    invoke-virtual {v1, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 270
    .end local v1    # "am":Landroid/app/AlarmManager;
    .end local v5    # "powerOnIntent":Landroid/content/Intent;
    .end local v6    # "sender":Landroid/app/PendingIntent;
    :cond_1
    return-void
.end method

.method static configureDatePicker(Landroid/widget/DatePicker;)V
    .locals 4
    .param p0, "datePicker"    # Landroid/widget/DatePicker;

    .prologue
    .line 334
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 335
    .local v0, "t":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 336
    const/16 v1, 0x7b2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 337
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 338
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 339
    const/16 v1, 0x7f5

    const/16 v2, 0xb

    const/16 v3, 0x1f

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 340
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 341
    return-void
.end method

.method static configureOneplusDatePicker(Landroid/widget/DatePicker;)V
    .locals 8
    .param p0, "datePicker"    # Landroid/widget/DatePicker;

    .prologue
    const/16 v7, 0x3b

    const/4 v2, 0x0

    .line 349
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 350
    .local v0, "t":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 351
    const/16 v1, 0x7b2

    const/4 v3, 0x1

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 352
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 353
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 354
    const/16 v1, 0x7f5

    const/16 v2, 0xb

    const/16 v3, 0x1f

    const/16 v4, 0x17

    move v5, v7

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 355
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 357
    return-void
.end method

.method private getAutoState(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 413
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 415
    :cond_0
    :goto_0
    return v1

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method public static getTimeZoneText(Ljava/util/TimeZone;Z)Ljava/lang/String;
    .locals 10
    .param p0, "tz"    # Ljava/util/TimeZone;
    .param p1, "includeName"    # Z

    .prologue
    const/4 v3, 0x1

    .line 450
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 453
    .local v5, "now":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v8, "ZZZZ"

    invoke-direct {v1, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 454
    .local v1, "gmtFormatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 455
    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 459
    .local v2, "gmtString":Ljava/lang/String;
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    .line 460
    .local v0, "bidiFormatter":Landroid/text/BidiFormatter;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    .line 461
    .local v4, "l":Ljava/util/Locale;
    invoke-static {v4}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v8

    if-ne v8, v3, :cond_0

    .line 462
    .local v3, "isRtl":Z
    :goto_0
    if-eqz v3, :cond_1

    sget-object v8, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    :goto_1
    invoke-virtual {v0, v2, v8}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v2

    .line 466
    if-nez p1, :cond_2

    .line 477
    .end local v2    # "gmtString":Ljava/lang/String;
    :goto_2
    return-object v2

    .line 461
    .end local v3    # "isRtl":Z
    .restart local v2    # "gmtString":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 462
    .restart local v3    # "isRtl":Z
    :cond_1
    sget-object v8, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_1

    .line 471
    :cond_2
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v8, "zzzz"

    invoke-direct {v6, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 472
    .local v6, "zoneNameFormatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v6, p0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 473
    invoke-virtual {v6, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 477
    .local v7, "zoneNameString":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method private initUI()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 102
    const-string v5, "auto_time"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v0

    .line 103
    .local v0, "autoTimeEnabled":Z
    const-string v5, "auto_time_zone"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    .line 107
    .local v1, "autoTimeZoneEnabled":Z
    const-string v5, "device_policy"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/DateTimeSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 108
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getAutoTimeRequired()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 117
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "firstRun"

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 119
    .local v4, "isFirstRun":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    .line 128
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v4, :cond_2

    .line 130
    :cond_1
    const/4 v1, 0x0

    .line 137
    :cond_2
    const-string v5, "auto_set_time_and_zone"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    iput-object v5, p0, Lcom/android/settings_ex/DateTimeSettings;->mAutoSetTimeAndZonePref:Landroid/preference/SwitchPreference;

    .line 138
    iget-object v8, p0, Lcom/android/settings_ex/DateTimeSettings;->mAutoSetTimeAndZonePref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    move v5, v6

    :goto_0
    invoke-virtual {v8, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 143
    const-string v5, "time"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    .line 144
    const-string v5, "24 hour"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    iput-object v5, p0, Lcom/android/settings_ex/DateTimeSettings;->mTime24Pref:Landroid/preference/SwitchPreference;

    .line 145
    const-string v5, "timezone"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    .line 146
    const-string v5, "date"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    .line 147
    if-eqz v4, :cond_3

    .line 148
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings_ex/DateTimeSettings;->mTime24Pref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 151
    :cond_3
    iget-object v8, p0, Lcom/android/settings_ex/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez v0, :cond_5

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 152
    iget-object v8, p0, Lcom/android/settings_ex/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez v0, :cond_6

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 153
    iget-object v5, p0, Lcom/android/settings_ex/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez v1, :cond_7

    :goto_3
    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 155
    return-void

    :cond_4
    move v5, v7

    .line 138
    goto :goto_0

    :cond_5
    move v5, v7

    .line 151
    goto :goto_1

    :cond_6
    move v5, v7

    .line 152
    goto :goto_2

    :cond_7
    move v6, v7

    .line 153
    goto :goto_3
.end method

.method private is24Hour()Z
    .locals 1

    .prologue
    .line 403
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
    .line 407
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    if-eqz p1, :cond_0

    const-string v0, "24"

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 409
    return-void

    .line 407
    :cond_0
    const-string v0, "12"

    goto :goto_0
.end method

.method static setDate(Landroid/content/Context;III)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 421
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 423
    .local v0, "c":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 424
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 425
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 426
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 428
    .local v2, "when":J
    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 429
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlarmManager;->setTime(J)V

    .line 432
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

    .line 435
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 437
    .local v0, "c":Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 438
    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 439
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 440
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 441
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 443
    .local v2, "when":J
    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 444
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlarmManager;->setTime(J)V

    .line 447
    :cond_0
    return-void
.end method

.method private timeUpdated(Z)V
    .locals 2
    .param p1, "is24Hour"    # Z

    .prologue
    .line 395
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 396
    .local v0, "timeChanged":Landroid/content/Intent;
    const-string v1, "android.intent.extra.TIME_PREF_24_HOUR_FORMAT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 397
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 398
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 392
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const v0, 0x7f060019

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DateTimeSettings;->addPreferencesFromResource(I)V

    .line 98
    invoke-direct {p0}, Lcom/android/settings_ex/DateTimeSettings;->initUI()V

    .line 99
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .param p1, "id"    # I

    .prologue
    .line 303
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 304
    .local v7, "calendar":Ljava/util/Calendar;
    packed-switch p1, :pswitch_data_0

    .line 328
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 306
    :pswitch_0
    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v2, 0x2

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v2, 0x5

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 313
    .local v0, "d":Landroid/app/DatePickerDialog;
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/DateTimeSettings;->configureOneplusDatePicker(Landroid/widget/DatePicker;)V

    .line 317
    .end local v0    # "d":Landroid/app/DatePickerDialog;
    :goto_0
    return-object v0

    :pswitch_1
    new-instance v1, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v3, 0xc

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    move-object v0, v1

    goto :goto_0

    .line 304
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 218
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/android/settings_ex/DateTimeSettings;->closePowerOffAndPowerOnAlarm()V

    .line 221
    invoke-static {v0, p2, p3, p4}, Lcom/android/settings_ex/DateTimeSettings;->setDate(Landroid/content/Context;III)V

    .line 223
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 228
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 178
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 179
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 180
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 182
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    .line 373
    iget-object v1, p0, Lcom/android/settings_ex/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-ne p2, v1, :cond_1

    .line 374
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/DateTimeSettings;->showDialog(I)V

    .line 386
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 375
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-ne p2, v1, :cond_2

    .line 377
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/DateTimeSettings;->removeDialog(I)V

    .line 378
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/DateTimeSettings;->showDialog(I)V

    goto :goto_0

    .line 379
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/DateTimeSettings;->mTime24Pref:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/android/settings_ex/DateTimeSettings;->mTime24Pref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 382
    .local v0, "is24Hour":Z
    invoke-direct {p0, v0}, Lcom/android/settings_ex/DateTimeSettings;->set24Hour(Z)V

    .line 383
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 384
    invoke-direct {p0, v0}, Lcom/android/settings_ex/DateTimeSettings;->timeUpdated(Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 159
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 161
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 164
    iget-object v1, p0, Lcom/android/settings_ex/DateTimeSettings;->mTime24Pref:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings_ex/DateTimeSettings;->is24Hour()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 167
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 168
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 173
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 174
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 7
    .param p1, "preferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 275
    const-string v2, "auto_time"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 276
    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 277
    .local v0, "autoEnabled":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "auto_time"

    if-eqz v0, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 279
    iget-object v5, p0, Lcom/android/settings_ex/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez v0, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 280
    iget-object v2, p0, Lcom/android/settings_ex/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez v0, :cond_3

    :goto_2
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 299
    .end local v0    # "autoEnabled":Z
    :cond_0
    :goto_3
    return-void

    .restart local v0    # "autoEnabled":Z
    :cond_1
    move v2, v4

    .line 277
    goto :goto_0

    :cond_2
    move v2, v4

    .line 279
    goto :goto_1

    :cond_3
    move v3, v4

    .line 280
    goto :goto_2

    .line 281
    .end local v0    # "autoEnabled":Z
    :cond_4
    const-string v2, "auto_zone"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 282
    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 283
    .local v1, "autoZoneEnabled":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "auto_time_zone"

    if-eqz v1, :cond_5

    move v2, v3

    :goto_4
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 285
    iget-object v2, p0, Lcom/android/settings_ex/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez v1, :cond_6

    :goto_5
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_3

    :cond_5
    move v2, v4

    .line 283
    goto :goto_4

    :cond_6
    move v3, v4

    .line 285
    goto :goto_5

    .line 286
    .end local v1    # "autoZoneEnabled":Z
    :cond_7
    const-string v2, "auto_set_time_and_zone"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 287
    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 288
    .restart local v0    # "autoEnabled":Z
    invoke-direct {p0}, Lcom/android/settings_ex/DateTimeSettings;->closePowerOffAndPowerOnAlarm()V

    .line 290
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "auto_time"

    if-eqz v0, :cond_8

    move v2, v3

    :goto_6
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 292
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "auto_time_zone"

    if-eqz v0, :cond_9

    move v2, v3

    :goto_7
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 294
    iget-object v5, p0, Lcom/android/settings_ex/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez v0, :cond_a

    move v2, v3

    :goto_8
    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 295
    iget-object v5, p0, Lcom/android/settings_ex/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez v0, :cond_b

    move v2, v3

    :goto_9
    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 296
    iget-object v2, p0, Lcom/android/settings_ex/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez v0, :cond_c

    :goto_a
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_3

    :cond_8
    move v2, v4

    .line 290
    goto :goto_6

    :cond_9
    move v2, v4

    .line 292
    goto :goto_7

    :cond_a
    move v2, v4

    .line 294
    goto :goto_8

    :cond_b
    move v2, v4

    .line 295
    goto :goto_9

    :cond_c
    move v3, v4

    .line 296
    goto :goto_a
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 233
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 234
    invoke-direct {p0}, Lcom/android/settings_ex/DateTimeSettings;->closePowerOffAndPowerOnAlarm()V

    .line 236
    invoke-static {v0, p2, p3}, Lcom/android/settings_ex/DateTimeSettings;->setTime(Landroid/content/Context;II)V

    .line 238
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 244
    :cond_0
    return-void
.end method

.method public updateTimeAndDateDisplay(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 185
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 186
    .local v8, "now":Ljava/util/Calendar;
    iget-object v0, p0, Lcom/android/settings_ex/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 190
    iget-object v0, p0, Lcom/android/settings_ex/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    const/16 v2, 0xb

    const/16 v3, 0x1f

    const/16 v4, 0xd

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 192
    iget-object v0, p0, Lcom/android/settings_ex/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    .line 193
    .local v7, "dummyDate":Ljava/util/Date;
    iget-object v0, p0, Lcom/android/settings_ex/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    invoke-static {p1}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p0, Lcom/android/settings_ex/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p0, Lcom/android/settings_ex/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1, v9}, Lcom/android/settings_ex/DateTimeSettings;->getTimeZoneText(Ljava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p0, Lcom/android/settings_ex/DateTimeSettings;->mTime24Pref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 201
    const-string v0, "auto_time"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DateTimeSettings;->removePreference(Ljava/lang/String;)V

    .line 202
    const-string v0, "auto_zone"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DateTimeSettings;->removePreference(Ljava/lang/String;)V

    .line 204
    return-void
.end method
