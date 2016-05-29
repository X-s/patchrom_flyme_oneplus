.class public Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "AccessibilityTimerShutdownSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final ACC_TIMERDOWN_TIMESETTINGS_KEY:Ljava/lang/String; = "accessibility_timer_startup_device_settings"

.field private static final ACC_TIMERUP_TIMESETTINGS_KEY:Ljava/lang/String; = "accessibility_timer_startup_device_settings"

.field private static final ACC_TIMER_SHUTDOWN_KEY:Ljava/lang/String; = "accessibility_timer_shutdown_device"

.field private static final ACC_TIMER_STARTUP_KEY:Ljava/lang/String; = "accessibility_timer_startup_device"


# instance fields
.field private am:Landroid/app/AlarmManager;

.field private c:Ljava/util/Calendar;

.field private intent:Landroid/content/Intent;

.field private mShutdownPreference:Landroid/preference/SwitchPreference;

.field private mStartupPreference:Landroid/preference/SwitchPreference;

.field private mTimeDownSettingsPreference:Landroid/preference/Preference;

.field private mTimeUpSettingsPreference:Landroid/preference/Preference;

.field private pIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;->c:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;->intent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;->pIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;->pIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;->am:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;Landroid/app/AlarmManager;)Landroid/app/AlarmManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;
    .param p1, "x1"    # Landroid/app/AlarmManager;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;->am:Landroid/app/AlarmManager;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;->mTimeUpSettingsPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private initView()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 66
    const-string v0, "accessibility_timer_startup_device"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;->mStartupPreference:Landroid/preference/SwitchPreference;

    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;->mStartupPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 68
    iget-object v3, p0, Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;->mStartupPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "oem_startup_timer"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 72
    const-string v0, "accessibility_timer_shutdown_device"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;->mShutdownPreference:Landroid/preference/SwitchPreference;

    .line 73
    iget-object v0, p0, Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;->mShutdownPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;->mShutdownPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oem_shutdown_timer"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 78
    const-string v0, "accessibility_timer_startup_device_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;->mTimeUpSettingsPreference:Landroid/preference/Preference;

    .line 79
    iget-object v0, p0, Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;->mTimeUpSettingsPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 80
    const-string v0, "accessibility_timer_startup_device_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;->mTimeDownSettingsPreference:Landroid/preference/Preference;

    .line 81
    iget-object v0, p0, Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;->mTimeDownSettingsPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 84
    return-void

    :cond_0
    move v0, v2

    .line 68
    goto :goto_0

    :cond_1
    move v1, v2

    .line 74
    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f060004

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;->addPreferencesFromResource(I)V

    .line 53
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/preference/Preference;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/16 v9, 0xc

    const/16 v8, 0xb

    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 97
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "accessibility_timer_shutdown_device"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    invoke-virtual {p0}, Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_shutdown_timer"

    iget-object v6, p0, Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;->mStartupPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-nez v6, :cond_0

    move v5, v0

    :cond_0
    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    :cond_1
    :goto_0
    move v5, v0

    .line 171
    :goto_1
    return v5

    .line 103
    :cond_2
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "accessibility_timer_startup_device"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 105
    invoke-virtual {p0}, Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_startup_timer"

    iget-object v6, p0, Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;->mStartupPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-nez v6, :cond_3

    move v5, v0

    :cond_3
    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    goto :goto_0

    .line 109
    :cond_4
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "accessibility_timer_startup_device_settings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 111
    iget-object v0, p0, Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;->c:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 112
    iget-object v0, p0, Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;->c:Ljava/util/Calendar;

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 113
    .local v3, "hour":I
    iget-object v0, p0, Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;->c:Ljava/util/Calendar;

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 114
    .local v4, "minute":I
    new-instance v0, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings$1;-><init>(Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;)V

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    goto :goto_1

    .line 139
    .end local v3    # "hour":I
    .end local v4    # "minute":I
    :cond_5
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "accessibility_timer_startup_device_settings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    iget-object v0, p0, Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;->c:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 142
    iget-object v0, p0, Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;->c:Ljava/util/Calendar;

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 143
    .restart local v3    # "hour":I
    iget-object v0, p0, Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;->c:Ljava/util/Calendar;

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 144
    .restart local v4    # "minute":I
    new-instance v0, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings$2;-><init>(Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;)V

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 60
    invoke-direct {p0}, Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;->initView()V

    .line 62
    return-void
.end method
