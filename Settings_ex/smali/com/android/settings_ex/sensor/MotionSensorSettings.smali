.class public Lcom/android/settings_ex/sensor/MotionSensorSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "MotionSensorSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final ANTI_MISOPERATION_SCREEN_TOUCH:Ljava/lang/String; = "anti_misoperation_of_the_screen_touch_enable"

.field private static final ROTATION_SILENT_KEY:Ljava/lang/String; = "rotation_silent_enable"

.field private static final THREE_SCEENTSHOTS_KEY:Ljava/lang/String; = "three_screenshots_enable"


# instance fields
.field private isSupportThreeScrrenShot:Z

.field private mAntiMisOperationTouch:Landroid/preference/SwitchPreference;

.field private mContext:Landroid/content/Context;

.field private mRotationSilent:Landroid/preference/SwitchPreference;

.field private mThreeSwipeScreenShot:Landroid/preference/SwitchPreference;

.field private root:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/sensor/MotionSensorSettings;->isSupportThreeScrrenShot:Z

    return-void
.end method


# virtual methods
.method public initView()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    invoke-virtual {p0}, Lcom/android/settings_ex/sensor/MotionSensorSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "oem_acc_sensor_three_finger"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 82
    .local v0, "isThreeShowEnable":I
    iget-object v4, p0, Lcom/android/settings_ex/sensor/MotionSensorSettings;->mThreeSwipeScreenShot:Landroid/preference/SwitchPreference;

    if-nez v0, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 84
    iget-object v4, p0, Lcom/android/settings_ex/sensor/MotionSensorSettings;->mRotationSilent:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/sensor/MotionSensorSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "oem_acc_sensor_rotate_silent"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 86
    iget-object v1, p0, Lcom/android/settings_ex/sensor/MotionSensorSettings;->mAntiMisOperationTouch:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/sensor/MotionSensorSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "oem_acc_anti_misoperation_screen"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 88
    iget-boolean v1, p0, Lcom/android/settings_ex/sensor/MotionSensorSettings;->isSupportThreeScrrenShot:Z

    if-nez v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/android/settings_ex/sensor/MotionSensorSettings;->root:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/settings_ex/sensor/MotionSensorSettings;->mThreeSwipeScreenShot:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 94
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 82
    goto :goto_0

    :cond_2
    move v1, v3

    .line 84
    goto :goto_1

    :cond_3
    move v2, v3

    .line 86
    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f060030

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/sensor/MotionSensorSettings;->addPreferencesFromResource(I)V

    .line 39
    invoke-virtual {p0}, Lcom/android/settings_ex/sensor/MotionSensorSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/sensor/MotionSensorSettings;->mContext:Landroid/content/Context;

    .line 41
    invoke-virtual {p0}, Lcom/android/settings_ex/sensor/MotionSensorSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/sensor/MotionSensorSettings;->root:Landroid/preference/PreferenceScreen;

    .line 43
    iget-object v0, p0, Lcom/android/settings_ex/sensor/MotionSensorSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oem.threeScreenshot.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/sensor/MotionSensorSettings;->isSupportThreeScrrenShot:Z

    .line 47
    const-string v0, "three_screenshots_enable"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/sensor/MotionSensorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings_ex/sensor/MotionSensorSettings;->mThreeSwipeScreenShot:Landroid/preference/SwitchPreference;

    .line 52
    iget-object v0, p0, Lcom/android/settings_ex/sensor/MotionSensorSettings;->mThreeSwipeScreenShot:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 54
    const-string v0, "rotation_silent_enable"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/sensor/MotionSensorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings_ex/sensor/MotionSensorSettings;->mRotationSilent:Landroid/preference/SwitchPreference;

    .line 55
    iget-object v0, p0, Lcom/android/settings_ex/sensor/MotionSensorSettings;->mRotationSilent:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 57
    const-string v0, "anti_misoperation_of_the_screen_touch_enable"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/sensor/MotionSensorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings_ex/sensor/MotionSensorSettings;->mAntiMisOperationTouch:Landroid/preference/SwitchPreference;

    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/sensor/MotionSensorSettings;->mAntiMisOperationTouch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 61
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/preference/Preference;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "three_screenshots_enable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/android/settings_ex/sensor/MotionSensorSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_acc_sensor_three_finger"

    iget-object v4, p0, Lcom/android/settings_ex/sensor/MotionSensorSettings;->mThreeSwipeScreenShot:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 122
    :goto_0
    return v1

    .line 112
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "rotation_silent_enable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 114
    invoke-virtual {p0}, Lcom/android/settings_ex/sensor/MotionSensorSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_acc_sensor_rotate_silent"

    iget-object v4, p0, Lcom/android/settings_ex/sensor/MotionSensorSettings;->mRotationSilent:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_1
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    :goto_2
    move v1, v0

    .line 122
    goto :goto_0

    :cond_3
    move v1, v0

    .line 114
    goto :goto_1

    .line 116
    :cond_4
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "anti_misoperation_of_the_screen_touch_enable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 118
    invoke-virtual {p0}, Lcom/android/settings_ex/sensor/MotionSensorSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_acc_anti_misoperation_screen"

    iget-object v4, p0, Lcom/android/settings_ex/sensor/MotionSensorSettings;->mAntiMisOperationTouch:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_3
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_5
    move v1, v0

    goto :goto_3
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings_ex/sensor/MotionSensorSettings;->initView()V

    .line 70
    return-void
.end method
