.class public Lcom/android/settings_ex/location/LocationMode;
.super Lcom/android/settings_ex/location/LocationSettingsBase;
.source "LocationMode.java"

# interfaces
.implements Lcom/android/settings_ex/location/RadioButtonPreference$OnClickListener;


# static fields
.field private static final KEY_BATTERY_SAVING:Ljava/lang/String; = "battery_saving"

.field private static final KEY_HIGH_ACCURACY:Ljava/lang/String; = "high_accuracy"

.field private static final KEY_SENSORS_ONLY:Ljava/lang/String; = "sensors_only"


# instance fields
.field private mBatterySaving:Lcom/android/settings_ex/location/RadioButtonPreference;

.field private mHighAccuracy:Lcom/android/settings_ex/location/RadioButtonPreference;

.field private mSensorsOnly:Lcom/android/settings_ex/location/RadioButtonPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;-><init>()V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationMode;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 63
    .local v0, "root":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 66
    :cond_0
    const v1, 0x7f08002a

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/location/LocationMode;->addPreferencesFromResource(I)V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationMode;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 69
    const-string v1, "high_accuracy"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/location/RadioButtonPreference;

    iput-object v1, p0, Lcom/android/settings_ex/location/LocationMode;->mHighAccuracy:Lcom/android/settings_ex/location/RadioButtonPreference;

    .line 70
    const-string v1, "battery_saving"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/location/RadioButtonPreference;

    iput-object v1, p0, Lcom/android/settings_ex/location/LocationMode;->mBatterySaving:Lcom/android/settings_ex/location/RadioButtonPreference;

    .line 71
    const-string v1, "sensors_only"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/location/RadioButtonPreference;

    iput-object v1, p0, Lcom/android/settings_ex/location/LocationMode;->mSensorsOnly:Lcom/android/settings_ex/location/RadioButtonPreference;

    .line 72
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationMode;->mHighAccuracy:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/location/RadioButtonPreference;->setOnClickListener(Lcom/android/settings_ex/location/RadioButtonPreference$OnClickListener;)V

    .line 73
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationMode;->mBatterySaving:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/location/RadioButtonPreference;->setOnClickListener(Lcom/android/settings_ex/location/RadioButtonPreference$OnClickListener;)V

    .line 74
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationMode;->mSensorsOnly:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/location/RadioButtonPreference;->setOnClickListener(Lcom/android/settings_ex/location/RadioButtonPreference$OnClickListener;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationMode;->refreshLocationMode()V

    .line 77
    return-object v0
.end method

.method private updateRadioButtons(Lcom/android/settings_ex/location/RadioButtonPreference;)V
    .locals 3
    .param p1, "activated"    # Lcom/android/settings_ex/location/RadioButtonPreference;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 81
    if-nez p1, :cond_1

    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationMode;->mHighAccuracy:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 83
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationMode;->mBatterySaving:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 84
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationMode;->mSensorsOnly:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationMode;->mHighAccuracy:Lcom/android/settings_ex/location/RadioButtonPreference;

    if-ne p1, v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationMode;->mHighAccuracy:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 87
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationMode;->mBatterySaving:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 88
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationMode;->mSensorsOnly:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationMode;->mBatterySaving:Lcom/android/settings_ex/location/RadioButtonPreference;

    if-ne p1, v0, :cond_3

    .line 90
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationMode;->mHighAccuracy:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationMode;->mBatterySaving:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 92
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationMode;->mSensorsOnly:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 93
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationMode;->mSensorsOnly:Lcom/android/settings_ex/location/RadioButtonPreference;

    if-ne p1, v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationMode;->mHighAccuracy:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 95
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationMode;->mBatterySaving:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 96
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationMode;->mSensorsOnly:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 140
    const v0, 0x7f0c0ba4

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0x40

    return v0
.end method

.method public onModeChanged(IZ)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "restricted"    # Z

    .prologue
    .line 115
    packed-switch p1, :pswitch_data_0

    .line 132
    :goto_0
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x1

    .line 133
    .local v0, "enabled":Z
    :goto_1
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationMode;->mHighAccuracy:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/location/RadioButtonPreference;->setEnabled(Z)V

    .line 134
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationMode;->mBatterySaving:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/location/RadioButtonPreference;->setEnabled(Z)V

    .line 135
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationMode;->mSensorsOnly:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/location/RadioButtonPreference;->setEnabled(Z)V

    .line 136
    return-void

    .line 117
    .end local v0    # "enabled":Z
    :pswitch_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings_ex/location/LocationMode;->updateRadioButtons(Lcom/android/settings_ex/location/RadioButtonPreference;)V

    goto :goto_0

    .line 120
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationMode;->mSensorsOnly:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/location/LocationMode;->updateRadioButtons(Lcom/android/settings_ex/location/RadioButtonPreference;)V

    goto :goto_0

    .line 123
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationMode;->mBatterySaving:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/location/LocationMode;->updateRadioButtons(Lcom/android/settings_ex/location/RadioButtonPreference;)V

    goto :goto_0

    .line 126
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationMode;->mHighAccuracy:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/location/LocationMode;->updateRadioButtons(Lcom/android/settings_ex/location/RadioButtonPreference;)V

    goto :goto_0

    .line 132
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;->onPause()V

    .line 59
    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settings_ex/location/RadioButtonPreference;)V
    .locals 2
    .param p1, "emiter"    # Lcom/android/settings_ex/location/RadioButtonPreference;

    .prologue
    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, "mode":I
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationMode;->mHighAccuracy:Lcom/android/settings_ex/location/RadioButtonPreference;

    if-ne p1, v1, :cond_1

    .line 104
    const/4 v0, 0x3

    .line 110
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/location/LocationMode;->setLocationMode(I)V

    .line 111
    return-void

    .line 105
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationMode;->mBatterySaving:Lcom/android/settings_ex/location/RadioButtonPreference;

    if-ne p1, v1, :cond_2

    .line 106
    const/4 v0, 0x2

    goto :goto_0

    .line 107
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationMode;->mSensorsOnly:Lcom/android/settings_ex/location/RadioButtonPreference;

    if-ne p1, v1, :cond_0

    .line 108
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;->onResume()V

    .line 53
    invoke-direct {p0}, Lcom/android/settings_ex/location/LocationMode;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 54
    return-void
.end method
