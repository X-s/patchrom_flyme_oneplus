.class public Lcom/android/settings_ex/applications/ManageAssist;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "ManageAssist.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_CONTEXT:Ljava/lang/String; = "context"

.field private static final KEY_DEFAULT_ASSIST:Ljava/lang/String; = "default_assist"

.field private static final KEY_SCREENSHOT:Ljava/lang/String; = "screenshot"

.field private static final KEY_VOICE_INPUT:Ljava/lang/String; = "voice_input_settings"


# instance fields
.field private mContextPref:Landroid/preference/SwitchPreference;

.field private mDefaultAssitPref:Lcom/android/settings_ex/applications/DefaultAssistPreference;

.field private mHandler:Landroid/os/Handler;

.field private mScreenshotPref:Landroid/preference/SwitchPreference;

.field private mVoiceInputPref:Lcom/android/settings_ex/voice/VoiceInputListPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageAssist;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/applications/ManageAssist;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageAssist;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings_ex/applications/ManageAssist;->updateUi()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/applications/ManageAssist;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageAssist;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/ManageAssist;->setDefaultAssist(Ljava/lang/String;)V

    return-void
.end method

.method private confirmNewAssist(Ljava/lang/String;)V
    .locals 11
    .param p1, "newAssitPackage"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 153
    iget-object v7, p0, Lcom/android/settings_ex/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings_ex/applications/DefaultAssistPreference;

    invoke-virtual {v7, p1}, Lcom/android/settings_ex/applications/DefaultAssistPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v5

    .line 154
    .local v5, "selected":I
    iget-object v7, p0, Lcom/android/settings_ex/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings_ex/applications/DefaultAssistPreference;

    invoke-virtual {v7}, Lcom/android/settings_ex/applications/DefaultAssistPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v7

    aget-object v0, v7, v5

    .line 156
    .local v0, "appLabel":Ljava/lang/CharSequence;
    const v7, 0x7f0c0d34

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v0, v8, v10

    invoke-virtual {p0, v7, v8}, Lcom/android/settings_ex/applications/ManageAssist;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 157
    .local v6, "title":Ljava/lang/String;
    const v7, 0x7f0c0d35

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v0, v8, v10

    invoke-virtual {p0, v7, v8}, Lcom/android/settings_ex/applications/ManageAssist;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, "message":Ljava/lang/String;
    new-instance v4, Lcom/android/settings_ex/applications/ManageAssist$2;

    invoke-direct {v4, p0, p1}, Lcom/android/settings_ex/applications/ManageAssist$2;-><init>(Lcom/android/settings_ex/applications/ManageAssist;Ljava/lang/String;)V

    .line 166
    .local v4, "onAgree":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageAssist;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 167
    .local v1, "builder":Lcom/oneplus/app/OPAlertDialog$Builder;
    invoke-virtual {v1, v6}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/oneplus/app/OPAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/oneplus/app/OPAlertDialog$Builder;->setCancelable(Z)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0c0d36

    invoke-virtual {v7, v8, v4}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0c0d37

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/oneplus/app/OPAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 172
    invoke-virtual {v1}, Lcom/oneplus/app/OPAlertDialog$Builder;->create()Lcom/oneplus/app/OPAlertDialog;

    move-result-object v2

    .line 173
    .local v2, "dialog":Lcom/oneplus/app/OPAlertDialog;
    invoke-virtual {v2}, Lcom/oneplus/app/OPAlertDialog;->show()V

    .line 174
    return-void
.end method

.method private isCurrentAssistVoiceService()Z
    .locals 3

    .prologue
    .line 146
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings_ex/applications/DefaultAssistPreference;

    invoke-virtual {v2}, Lcom/android/settings_ex/applications/DefaultAssistPreference;->getCurrentAssist()Landroid/content/ComponentName;

    move-result-object v1

    .line 147
    .local v1, "currentAssist":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageAssist;->mVoiceInputPref:Lcom/android/settings_ex/voice/VoiceInputListPreference;

    invoke-virtual {v2}, Lcom/android/settings_ex/voice/VoiceInputListPreference;->getCurrentService()Landroid/content/ComponentName;

    move-result-object v0

    .line 148
    .local v0, "activeService":Landroid/content/ComponentName;
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private postUpdateUi()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageAssist;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings_ex/applications/ManageAssist$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/applications/ManageAssist$1;-><init>(Lcom/android/settings_ex/applications/ManageAssist;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 116
    return-void
.end method

.method private setDefaultAssist(Ljava/lang/String;)V
    .locals 1
    .param p1, "assistPackage"    # Ljava/lang/String;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings_ex/applications/DefaultAssistPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/applications/DefaultAssistPreference;->setValue(Ljava/lang/String;)V

    .line 178
    invoke-direct {p0}, Lcom/android/settings_ex/applications/ManageAssist;->updateUi()V

    .line 179
    return-void
.end method

.method private updateUi()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 119
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings_ex/applications/DefaultAssistPreference;

    invoke-virtual {v3}, Lcom/android/settings_ex/applications/DefaultAssistPreference;->refreshAssistApps()V

    .line 120
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageAssist;->mVoiceInputPref:Lcom/android/settings_ex/voice/VoiceInputListPreference;

    invoke-virtual {v3}, Lcom/android/settings_ex/voice/VoiceInputListPreference;->refreshVoiceInputs()V

    .line 122
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings_ex/applications/DefaultAssistPreference;

    invoke-virtual {v3}, Lcom/android/settings_ex/applications/DefaultAssistPreference;->getCurrentAssist()Landroid/content/ComponentName;

    move-result-object v0

    .line 123
    .local v0, "currentAssist":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 124
    .local v1, "hasAssistant":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 125
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 126
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 132
    :goto_1
    invoke-direct {p0}, Lcom/android/settings_ex/applications/ManageAssist;->isCurrentAssistVoiceService()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 133
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageAssist;->mVoiceInputPref:Lcom/android/settings_ex/voice/VoiceInputListPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 139
    :goto_2
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 140
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_0

    .line 141
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 143
    :cond_0
    return-void

    .end local v1    # "hasAssistant":Z
    :cond_1
    move v1, v2

    .line 123
    goto :goto_0

    .line 128
    .restart local v1    # "hasAssistant":Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 129
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 135
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageAssist;->mVoiceInputPref:Lcom/android/settings_ex/voice/VoiceInputListPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 136
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageAssist;->mVoiceInputPref:Lcom/android/settings_ex/voice/VoiceInputListPreference;

    invoke-virtual {v3, v0}, Lcom/android/settings_ex/voice/VoiceInputListPreference;->setAssistRestrict(Landroid/content/ComponentName;)V

    goto :goto_2
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 76
    const/16 v0, 0xc9

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v0, 0x7f08002d

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ManageAssist;->addPreferencesFromResource(I)V

    .line 57
    const-string v0, "default_assist"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/DefaultAssistPreference;

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings_ex/applications/DefaultAssistPreference;

    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings_ex/applications/DefaultAssistPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/applications/DefaultAssistPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 60
    const-string v0, "context"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    .line 61
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageAssist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "assist_structure_enabled"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 63
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 65
    const-string v0, "screenshot"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    .line 66
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageAssist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "assist_screenshot_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 70
    const-string v0, "voice_input_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/voice/VoiceInputListPreference;

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageAssist;->mVoiceInputPref:Lcom/android/settings_ex/voice/VoiceInputListPreference;

    .line 71
    invoke-direct {p0}, Lcom/android/settings_ex/applications/ManageAssist;->updateUi()V

    .line 72
    return-void

    :cond_0
    move v0, v2

    .line 61
    goto :goto_0

    :cond_1
    move v1, v2

    .line 66
    goto :goto_1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 81
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    if-ne p1, v4, :cond_2

    .line 82
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageAssist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "assist_structure_enabled"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 84
    invoke-direct {p0}, Lcom/android/settings_ex/applications/ManageAssist;->postUpdateUi()V

    move v2, v3

    .line 106
    :cond_1
    :goto_0
    return v2

    .line 87
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    if-ne p1, v4, :cond_4

    .line 88
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageAssist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "assist_screenshot_enabled"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    move v2, v3

    :cond_3
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v2, v3

    .line 90
    goto :goto_0

    .line 92
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_4
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings_ex/applications/DefaultAssistPreference;

    if-ne p1, v3, :cond_1

    move-object v1, p2

    .line 93
    check-cast v1, Ljava/lang/String;

    .line 94
    .local v1, "newAssitPackage":Ljava/lang/String;
    if-eqz v1, :cond_5

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 96
    :cond_5
    const-string v3, ""

    invoke-direct {p0, v3}, Lcom/android/settings_ex/applications/ManageAssist;->setDefaultAssist(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_6
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings_ex/applications/DefaultAssistPreference;

    invoke-virtual {v3}, Lcom/android/settings_ex/applications/DefaultAssistPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "currentPackage":Ljava/lang/String;
    if-eqz v0, :cond_7

    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 102
    :cond_7
    invoke-direct {p0, v1}, Lcom/android/settings_ex/applications/ManageAssist;->confirmNewAssist(Ljava/lang/String;)V

    goto :goto_0
.end method
