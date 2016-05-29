.class public Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OPEyeCareModeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final CMD_OEM_QDCM_MODE_10:Ljava/lang/String; = "oem:qdcm:mode_10"

.field private static final CMD_OEM_QDCM_MODE_5:Ljava/lang/String; = "oem:qdcm:mode_5"

.field private static final CMD_OEM_QDCM_MODE_6:Ljava/lang/String; = "oem:qdcm:mode_6"

.field private static final CMD_OEM_QDCM_MODE_7:Ljava/lang/String; = "oem:qdcm:mode_7"

.field private static final CMD_OEM_QDCM_MODE_8:Ljava/lang/String; = "oem:qdcm:mode_8"

.field private static final CMD_OEM_QDCM_MODE_9:Ljava/lang/String; = "oem:qdcm:mode_9"

.field private static final KEY_EYECARE_ENABLE:Ljava/lang/String; = "eyecare_mode_enable"

.field private static final KEY_EYECARE_SEEK_ADJUSTING:Ljava/lang/String; = "eyecare_seekbar_adjuting_settings"

.field private static final TAG:Ljava/lang/String; = "OPEyeCareModeSettings"

.field private static final TYPE_ONE:Ljava/lang/String; = "oem:qdcm:mode_1"

.field private static final TYPE_SERVER:Ljava/lang/String; = "pps"

.field private static final TYPE_THREE:Ljava/lang/String; = "oem:qdcm:mode_3"

.field private static final TYPE_TWO:Ljava/lang/String; = "oem:qdcm:mode_2"


# instance fields
.field private M_TYPE_STRING:Ljava/lang/String;

.field private TYPE_SETTINGS_ID:I

.field private localSocket:Landroid/net/LocalSocket;

.field private mBetterStatus:I

.field private mContext:Landroid/content/Context;

.field private mEyeCarePreference:Landroid/preference/SwitchPreference;

.field private mHandler:Landroid/os/Handler;

.field private mSeekEyeCarePreference:Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 36
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 65
    iput v1, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->TYPE_SETTINGS_ID:I

    .line 66
    const-string v0, "oem:qdcm:mode_1"

    iput-object v0, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->M_TYPE_STRING:Ljava/lang/String;

    .line 71
    iput v1, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mBetterStatus:I

    .line 160
    new-instance v0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;-><init>(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;)V

    iput-object v0, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->M_TYPE_STRING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->M_TYPE_STRING:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mBetterStatus:I

    return p1
.end method

.method static synthetic access$200(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;)Landroid/net/LocalSocket;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->localSocket:Landroid/net/LocalSocket;

    return-object v0
.end method

.method static synthetic access$202(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;Landroid/net/LocalSocket;)Landroid/net/LocalSocket;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;
    .param p1, "x1"    # Landroid/net/LocalSocket;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->localSocket:Landroid/net/LocalSocket;

    return-object p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const v0, 0x7f06003a

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->addPreferencesFromResource(I)V

    .line 86
    invoke-virtual {p0}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mContext:Landroid/content/Context;

    .line 88
    const-string v0, "eyecare_mode_enable"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mEyeCarePreference:Landroid/preference/SwitchPreference;

    .line 89
    iget-object v0, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mEyeCarePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 91
    const-string v0, "eyecare_seekbar_adjuting_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;

    iput-object v0, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mSeekEyeCarePreference:Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;

    .line 93
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/16 v8, 0x12c

    const/16 v7, 0xc8

    const/16 v6, 0x64

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 111
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "eyecare_mode_enable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 113
    iget-object v3, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oem_eyecare_enable"

    iget-object v5, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mEyeCarePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-ne v5, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 117
    iget-object v1, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mSeekEyeCarePreference:Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;

    iget-object v3, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mEyeCarePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->setEnabled(Z)V

    .line 119
    iget-object v1, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mEyeCarePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_2

    .line 121
    iget-object v1, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "oem_better_status"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mBetterStatus:I

    .line 123
    iget-object v1, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mBetterStatus:I

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 157
    :cond_1
    :goto_0
    return v2

    .line 126
    :cond_2
    iget-object v1, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "oem_eyecare_progress_status"

    const/16 v4, 0x258

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 130
    .local v0, "progress":I
    iget-object v1, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mSeekEyeCarePreference:Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->setSeekValue(I)V

    .line 132
    if-ltz v0, :cond_3

    if-ge v0, v6, :cond_3

    .line 133
    const-string v1, "oem:qdcm:mode_5"

    iput-object v1, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->M_TYPE_STRING:Ljava/lang/String;

    .line 134
    iget-object v1, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 135
    :cond_3
    if-lt v0, v6, :cond_4

    if-ge v0, v7, :cond_4

    .line 136
    const-string v1, "oem:qdcm:mode_6"

    iput-object v1, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->M_TYPE_STRING:Ljava/lang/String;

    .line 137
    iget-object v1, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 138
    :cond_4
    if-lt v0, v7, :cond_5

    if-ge v0, v8, :cond_5

    .line 139
    const-string v1, "oem:qdcm:mode_7"

    iput-object v1, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->M_TYPE_STRING:Ljava/lang/String;

    .line 140
    iget-object v1, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 141
    :cond_5
    if-lt v0, v8, :cond_6

    const/16 v1, 0x190

    if-ge v0, v1, :cond_6

    .line 142
    const-string v1, "oem:qdcm:mode_8"

    iput-object v1, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->M_TYPE_STRING:Ljava/lang/String;

    .line 143
    iget-object v1, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 144
    :cond_6
    const/16 v1, 0x190

    if-lt v0, v1, :cond_7

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_7

    .line 145
    const-string v1, "oem:qdcm:mode_9"

    iput-object v1, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->M_TYPE_STRING:Ljava/lang/String;

    .line 146
    iget-object v1, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 147
    :cond_7
    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_1

    const/16 v1, 0x258

    if-gt v0, v1, :cond_1

    .line 148
    const-string v1, "oem:qdcm:mode_10"

    iput-object v1, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->M_TYPE_STRING:Ljava/lang/String;

    .line 149
    iget-object v1, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .end local v0    # "progress":I
    :cond_8
    move v2, v1

    .line 157
    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 98
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 100
    iget-object v1, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "oem_eyecare_enable"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 102
    .local v0, "mStatus":I
    iget-object v4, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mEyeCarePreference:Landroid/preference/SwitchPreference;

    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 103
    iget-object v1, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mSeekEyeCarePreference:Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->setEnabled(Z)V

    .line 105
    return-void

    :cond_0
    move v1, v3

    .line 102
    goto :goto_0

    :cond_1
    move v2, v3

    .line 103
    goto :goto_1
.end method
