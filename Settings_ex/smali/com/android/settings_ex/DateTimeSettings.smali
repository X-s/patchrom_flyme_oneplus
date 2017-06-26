.class public Lcom/android/settings_ex/DateTimeSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "DateTimeSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


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

.field private mDatePref:Landroid/preference/Preference;

.field private mDummyDate:Ljava/util/Calendar;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mTime24Pref:Landroid/preference/Preference;

.field private mTimePref:Landroid/preference/Preference;

.field private mTimeZone:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 375
    new-instance v0, Lcom/android/settings_ex/DateTimeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DateTimeSettings$1;-><init>(Lcom/android/settings_ex/DateTimeSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private closePowerOffAndPowerOnAlarm()V
    .locals 10

    .prologue
    const/high16 v9, 0x8000000

    .line 386
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 387
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->isPowerOnEnable(Landroid/content/Context;)Z

    move-result v4

    .line 388
    .local v4, "powerOn":Z
    invoke-static {v0}, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->isPowerOffEnable(Landroid/content/Context;)Z

    move-result v2

    .line 390
    .local v2, "powerOff":Z
    if-eqz v2, :cond_0

    .line 391
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.android.settings.POWER_OP_OFF"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 392
    .local v3, "powerOffIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    const-string v8, "alarm"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 393
    .local v1, "am":Landroid/app/AlarmManager;
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, v3, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 395
    .local v6, "sender":Landroid/app/PendingIntent;
    invoke-virtual {v1, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 398
    .end local v1    # "am":Landroid/app/AlarmManager;
    .end local v3    # "powerOffIntent":Landroid/content/Intent;
    .end local v6    # "sender":Landroid/app/PendingIntent;
    :cond_0
    if-eqz v4, :cond_1

    .line 399
    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.android.settings.POWER_OP_ON"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 400
    .local v5, "powerOnIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    const-string v8, "alarm"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 401
    .restart local v1    # "am":Landroid/app/AlarmManager;
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v7, v8, v5, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 403
    .restart local v6    # "sender":Landroid/app/PendingIntent;
    invoke-virtual {v1, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 405
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
    .line 264
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 265
    .local v0, "t":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 266
    const/16 v1, 0x7b2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 267
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 268
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 269
    const/16 v1, 0x7f5

    const/16 v2, 0xb

    const/16 v3, 0x1f

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 270
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 271
    return-void
.end method

.method private getAutoState(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 342
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 344
    :cond_0
    :goto_0
    return v1

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private initUI()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 98
    const-string v5, "auto_time"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v0

    .line 99
    .local v0, "autoTimeEnabled":Z
    const-string v5, "auto_time_zone"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    .line 102
    .local v1, "autoTimeZoneEnabled":Z
    const-string v5, "device_policy"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/DateTimeSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 104
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getAutoTimeRequired()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 113
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "firstRun"

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 115
    .local v4, "isFirstRun":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    .line 121
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v4, :cond_2

    .line 123
    :cond_1
    const/4 v1, 0x0

    .line 127
    :cond_2
    const-string v5, "auto_set_time_and_zone"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    iput-object v5, p0, Lcom/android/settings_ex/DateTimeSettings;->mAutoSetTimeAndZonePref:Landroid/preference/SwitchPreference;

    .line 128
    iget-object v8, p0, Lcom/android/settings_ex/DateTimeSettings;->mAutoSetTimeAndZonePref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    move v5, v6

    :goto_0
    invoke-virtual {v8, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 130
    const-string v5, "time"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    .line 131
    const-string v5, "24 hour"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    .line 132
    const-string v5, "timezone"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    .line 133
    const-string v5, "date"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    .line 134
    if-eqz v4, :cond_3

    .line 135
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings_ex/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 138
    :cond_3
    iget-object v8, p0, Lcom/android/settings_ex/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez v0, :cond_5

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 139
    iget-object v8, p0, Lcom/android/settings_ex/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez v0, :cond_6

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 140
    iget-object v5, p0, Lcom/android/settings_ex/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez v1, :cond_7

    :goto_3
    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 141
    return-void

    :cond_4
    move v5, v7

    .line 128
    goto :goto_0

    :cond_5
    move v5, v7

    .line 138
    goto :goto_1

    :cond_6
    move v5, v7

    .line 139
    goto :goto_2

    :cond_7
    move v6, v7

    .line 140
    goto :goto_3
.end method

.method private is24Hour()Z
    .locals 1

    .prologue
    .line 331
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
    .line 335
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    if-eqz p1, :cond_0

    const-string v0, "24"

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 338
    return-void

    .line 335
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
    .line 349
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 351
    .local v0, "c":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 352
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 353
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 354
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 356
    .local v2, "when":J
    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 357
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlarmManager;->setTime(J)V

    .line 359
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

    .line 362
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 364
    .local v0, "c":Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 365
    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 366
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 367
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 368
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 370
    .local v2, "when":J
    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 371
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlarmManager;->setTime(J)V

    .line 373
    :cond_0
    return-void
.end method

.method private timeUpdated(Z)V
    .locals 2
    .param p1, "is24Hour"    # Z

    .prologue
    .line 323
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 324
    .local v0, "timeChanged":Landroid/content/Intent;
    const-string v1, "android.intent.extra.TIME_PREF_24_HOUR_FORMAT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 325
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 326
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 85
    const/16 v0, 0x26

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 320
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const v0, 0x7f080016

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DateTimeSettings;->addPreferencesFromResource(I)V

    .line 94
    invoke-direct {p0}, Lcom/android/settings_ex/DateTimeSettings;->initUI()V

    .line 95
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .param p1, "id"    # I

    .prologue
    .line 239
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 240
    .local v7, "calendar":Ljava/util/Calendar;
    packed-switch p1, :pswitch_data_0

    .line 258
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 242
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

    .line 248
    .local v0, "d":Landroid/app/DatePickerDialog;
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/DateTimeSettings;->configureDatePicker(Landroid/widget/DatePicker;)V

    .line 251
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

    .line 240
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
    .line 188
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 189
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 190
    invoke-direct {p0}, Lcom/android/settings_ex/DateTimeSettings;->closePowerOffAndPowerOnAlarm()V

    .line 191
    invoke-static {v0, p2, p3, p4}, Lcom/android/settings_ex/DateTimeSettings;->setDate(Landroid/content/Context;III)V

    .line 192
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 194
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 164
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 165
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 166
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 168
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    .line 301
    iget-object v1, p0, Lcom/android/settings_ex/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-ne p2, v1, :cond_1

    .line 302
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/DateTimeSettings;->showDialog(I)V

    .line 313
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 303
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-ne p2, v1, :cond_2

    .line 305
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/DateTimeSettings;->removeDialog(I)V

    .line 306
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/DateTimeSettings;->showDialog(I)V

    goto :goto_0

    .line 307
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    if-ne p2, v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/android/settings_ex/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    check-cast v1, Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 309
    .local v0, "is24Hour":Z
    invoke-direct {p0, v0}, Lcom/android/settings_ex/DateTimeSettings;->set24Hour(Z)V

    .line 310
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 311
    invoke-direct {p0, v0}, Lcom/android/settings_ex/DateTimeSettings;->timeUpdated(Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 145
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 147
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 150
    iget-object v1, p0, Lcom/android/settings_ex/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    check-cast v1, Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings_ex/DateTimeSettings;->is24Hour()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 153
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 154
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 159
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 160
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 7
    .param p1, "preferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 212
    const-string v2, "auto_time"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 213
    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 214
    .local v0, "autoEnabled":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "auto_time"

    if-eqz v0, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 216
    iget-object v5, p0, Lcom/android/settings_ex/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez v0, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 217
    iget-object v2, p0, Lcom/android/settings_ex/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez v0, :cond_3

    :goto_2
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 235
    .end local v0    # "autoEnabled":Z
    :cond_0
    :goto_3
    return-void

    .restart local v0    # "autoEnabled":Z
    :cond_1
    move v2, v4

    .line 214
    goto :goto_0

    :cond_2
    move v2, v4

    .line 216
    goto :goto_1

    :cond_3
    move v3, v4

    .line 217
    goto :goto_2

    .line 218
    .end local v0    # "autoEnabled":Z
    :cond_4
    const-string v2, "auto_zone"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 219
    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 220
    .local v1, "autoZoneEnabled":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "auto_time_zone"

    if-eqz v1, :cond_5

    move v2, v3

    :goto_4
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 222
    iget-object v2, p0, Lcom/android/settings_ex/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez v1, :cond_6

    :goto_5
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_3

    :cond_5
    move v2, v4

    .line 220
    goto :goto_4

    :cond_6
    move v3, v4

    .line 222
    goto :goto_5

    .line 223
    .end local v1    # "autoZoneEnabled":Z
    :cond_7
    const-string v2, "auto_set_time_and_zone"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 225
    .restart local v0    # "autoEnabled":Z
    invoke-direct {p0}, Lcom/android/settings_ex/DateTimeSettings;->closePowerOffAndPowerOnAlarm()V

    .line 226
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "auto_time"

    if-eqz v0, :cond_8

    move v2, v3

    :goto_6
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 228
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "auto_time_zone"

    if-eqz v0, :cond_9

    move v2, v3

    :goto_7
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 230
    iget-object v5, p0, Lcom/android/settings_ex/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez v0, :cond_a

    move v2, v3

    :goto_8
    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 231
    iget-object v5, p0, Lcom/android/settings_ex/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez v0, :cond_b

    move v2, v3

    :goto_9
    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 232
    iget-object v2, p0, Lcom/android/settings_ex/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez v0, :cond_c

    :goto_a
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_3

    :cond_8
    move v2, v4

    .line 226
    goto :goto_6

    :cond_9
    move v2, v4

    .line 228
    goto :goto_7

    :cond_a
    move v2, v4

    .line 230
    goto :goto_8

    :cond_b
    move v2, v4

    .line 231
    goto :goto_9

    :cond_c
    move v3, v4

    .line 232
    goto :goto_a
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 199
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/android/settings_ex/DateTimeSettings;->closePowerOffAndPowerOnAlarm()V

    .line 201
    invoke-static {v0, p2, p3}, Lcom/android/settings_ex/DateTimeSettings;->setTime(Landroid/content/Context;II)V

    .line 202
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 208
    :cond_0
    return-void
.end method

.method public updateTimeAndDateDisplay(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 171
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 172
    .local v8, "now":Ljava/util/Calendar;
    iget-object v0, p0, Lcom/android/settings_ex/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 175
    iget-object v0, p0, Lcom/android/settings_ex/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0x1f

    const/16 v4, 0xd

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 176
    iget-object v0, p0, Lcom/android/settings_ex/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    .line 177
    .local v7, "dummyDate":Ljava/util/Date;
    iget-object v0, p0, Lcom/android/settings_ex/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    invoke-static {p1}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 178
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

    .line 179
    iget-object v0, p0, Lcom/android/settings_ex/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings_exlib/datetime/ZoneGetter;->getTimeZoneOffsetAndName(Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lcom/android/settings_ex/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 182
    const-string v0, "auto_time"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DateTimeSettings;->removePreference(Ljava/lang/String;)V

    .line 183
    const-string v0, "auto_zone"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DateTimeSettings;->removePreference(Ljava/lang/String;)V

    .line 184
    return-void
.end method
