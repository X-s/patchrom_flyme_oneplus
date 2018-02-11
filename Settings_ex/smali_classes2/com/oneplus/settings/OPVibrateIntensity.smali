.class public Lcom/oneplus/settings/OPVibrateIntensity;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OPVibrateIntensity.java"

# interfaces
.implements Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_INCOMING_CALL_VIBRATE_INTENSITY:Ljava/lang/String; = "incoming_call_vibrate_intensity"

.field private static final KEY_NOTICE_VIBRATE_INTENSITY:Ljava/lang/String; = "notice_vibrate_intensity"

.field private static final KEY_VIBRATE_ON_TOUCH_INTENSITY:Ljava/lang/String; = "vibrate_on_touch_intensity"

.field private static final TAG:Ljava/lang/String; = "OPVibrateIntensity"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCunrrentType:Ljava/lang/String;

.field private mIncomingCallVibrateIntensityPreference:Landroid/support/v7/preference/Preference;

.field private mNoticeVibrateIntensityPreference:Landroid/support/v7/preference/Preference;

.field private mOPListDialog:Lcom/oneplus/settings/ui/OPListDialog;

.field private mVibrateOnTouchIntensityPreference:Landroid/support/v7/preference/Preference;

.field private mVibrator:Landroid/os/Vibrator;

.field private sNoticeVibrateIntensity:[[J

.field private sRepeatVibrateIntensity:[[J

.field private sTouchVibrateIntensity:[[J

.field private sVibrateIntensity:[[J

.field private sVibratePatternrhythm:[[J


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 18
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 24
    const-string/jumbo v0, "incoming_call_vibrate_intensity"

    iput-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mCunrrentType:Ljava/lang/String;

    .line 30
    new-array v0, v3, [[J

    .line 31
    new-array v1, v3, [J

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    .line 32
    const/16 v1, 0x9

    new-array v1, v1, [J

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    .line 33
    const/16 v1, 0xd

    new-array v1, v1, [J

    fill-array-data v1, :array_2

    aput-object v1, v0, v6

    .line 34
    const/16 v1, 0x11

    new-array v1, v1, [J

    fill-array-data v1, :array_3

    aput-object v1, v0, v7

    .line 36
    const/16 v1, 0xd

    new-array v1, v1, [J

    fill-array-data v1, :array_4

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 30
    iput-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->sVibratePatternrhythm:[[J

    .line 37
    new-array v0, v7, [[J

    .line 38
    new-array v1, v3, [J

    fill-array-data v1, :array_5

    aput-object v1, v0, v4

    new-array v1, v3, [J

    fill-array-data v1, :array_6

    aput-object v1, v0, v5

    .line 39
    new-array v1, v3, [J

    fill-array-data v1, :array_7

    aput-object v1, v0, v6

    .line 37
    iput-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->sRepeatVibrateIntensity:[[J

    .line 40
    new-array v0, v7, [[J

    const/4 v1, 0x4

    new-array v1, v1, [J

    fill-array-data v1, :array_8

    aput-object v1, v0, v4

    .line 41
    const/4 v1, 0x4

    new-array v1, v1, [J

    fill-array-data v1, :array_9

    aput-object v1, v0, v5

    const/4 v1, 0x4

    new-array v1, v1, [J

    fill-array-data v1, :array_a

    aput-object v1, v0, v6

    .line 40
    iput-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->sVibrateIntensity:[[J

    .line 42
    new-array v0, v7, [[J

    .line 43
    const/16 v1, 0x9

    new-array v1, v1, [J

    fill-array-data v1, :array_b

    aput-object v1, v0, v4

    .line 44
    const/16 v1, 0x9

    new-array v1, v1, [J

    fill-array-data v1, :array_c

    aput-object v1, v0, v5

    .line 45
    const/16 v1, 0x9

    new-array v1, v1, [J

    fill-array-data v1, :array_d

    aput-object v1, v0, v6

    .line 42
    iput-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->sNoticeVibrateIntensity:[[J

    .line 46
    new-array v0, v7, [[J

    .line 47
    new-array v1, v3, [J

    fill-array-data v1, :array_e

    aput-object v1, v0, v4

    new-array v1, v3, [J

    fill-array-data v1, :array_f

    aput-object v1, v0, v5

    .line 48
    new-array v1, v3, [J

    fill-array-data v1, :array_10

    aput-object v1, v0, v6

    .line 46
    iput-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->sTouchVibrateIntensity:[[J

    .line 18
    return-void

    .line 31
    nop

    :array_0
    .array-data 8
        -0x2
        0x0
        0x3e8
        0x3e8
        0x3e8
    .end array-data

    .line 32
    :array_1
    .array-data 8
        -0x2
        0x0
        0x1f4
        0xfa
        0xa
        0x3e8
        0x1f4
        0xfa
        0xa
    .end array-data

    .line 33
    :array_2
    .array-data 8
        -0x2
        0x0
        0x12c
        0x190
        0x12c
        0x190
        0x12c
        0x3e8
        0x12c
        0x190
        0x12c
        0x190
        0x12c
    .end array-data

    .line 34
    :array_3
    .array-data 8
        -0x2
        0x0
        0x1e
        0x50
        0x1e
        0x50
        0x32
        0xb4
        0x258
        0x3e8
        0x1e
        0x50
        0x1e
        0x50
        0x32
        0xb4
        0x258
    .end array-data

    .line 36
    :array_4
    .array-data 8
        -0x2
        0x0
        0x50
        0xc8
        0x258
        0x96
        0xa
        0x3e8
        0x50
        0xc8
        0x258
        0x96
        0xa
    .end array-data

    .line 38
    :array_5
    .array-data 8
        -0x1
        0x1f4
        0x3e8
        0x5dc
        0x3e8
    .end array-data

    :array_6
    .array-data 8
        -0x2
        0x1f4
        0x3e8
        0x5dc
        0x3e8
    .end array-data

    .line 39
    :array_7
    .array-data 8
        -0x3
        0x1f4
        0x3e8
        0x5dc
        0x3e8
    .end array-data

    .line 40
    :array_8
    .array-data 8
        -0x1
        0x1f4
        0x3e8
        0x1f4
    .end array-data

    .line 41
    :array_9
    .array-data 8
        -0x2
        0x1f4
        0x3e8
        0x1f4
    .end array-data

    :array_a
    .array-data 8
        -0x3
        0x1f4
        0x3e8
        0x1f4
    .end array-data

    .line 43
    :array_b
    .array-data 8
        -0x1
        0x0
        0x64
        0x96
        0x64
        0x3e8
        0x64
        0x96
        0x64
    .end array-data

    .line 44
    :array_c
    .array-data 8
        -0x2
        0x0
        0x64
        0x96
        0x64
        0x3e8
        0x64
        0x96
        0x64
    .end array-data

    .line 45
    :array_d
    .array-data 8
        -0x3
        0x0
        0x64
        0x96
        0x64
        0x3e8
        0x64
        0x96
        0x64
    .end array-data

    .line 47
    :array_e
    .array-data 8
        -0x1
        0x0
        0xa
        0x3e8
        0xa
    .end array-data

    :array_f
    .array-data 8
        -0x2
        0x0
        0xa
        0x3e8
        0xa
    .end array-data

    .line 48
    :array_10
    .array-data 8
        -0x3
        0x0
        0xa
        0x3e8
        0xa
    .end array-data
.end method

.method private updateVibratePreferenceDescription(Ljava/lang/String;I)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/OPVibrateIntensity;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 80
    .local v1, "modePreference":Landroid/support/v7/preference/Preference;
    if-eqz v1, :cond_0

    .line 81
    iget-object v2, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0099

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "entries":[Ljava/lang/String;
    aget-object v2, v0, p2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 78
    .end local v0    # "entries":[Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public OnDialogListCancelClick()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 162
    :cond_0
    return-void
.end method

.method public OnDialogListConfirmClick(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 139
    const-string/jumbo v0, "incoming_call_vibrate_intensity"

    iget-object v1, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mCunrrentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    invoke-virtual {p0}, Lcom/oneplus/settings/OPVibrateIntensity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 141
    const-string/jumbo v1, "incoming_call_vibrate_intensity"

    .line 140
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 143
    const-string/jumbo v0, "incoming_call_vibrate_intensity"

    .line 142
    invoke-direct {p0, v0, p1}, Lcom/oneplus/settings/OPVibrateIntensity;->updateVibratePreferenceDescription(Ljava/lang/String;I)V

    .line 157
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 136
    :cond_1
    return-void

    .line 144
    :cond_2
    const-string/jumbo v0, "notice_vibrate_intensity"

    iget-object v1, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mCunrrentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 145
    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_3

    .line 146
    invoke-virtual {p0}, Lcom/oneplus/settings/OPVibrateIntensity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 147
    const-string/jumbo v1, "notice_vibrate_intensity"

    .line 146
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 148
    const-string/jumbo v0, "notice_vibrate_intensity"

    invoke-direct {p0, v0, p1}, Lcom/oneplus/settings/OPVibrateIntensity;->updateVibratePreferenceDescription(Ljava/lang/String;I)V

    goto :goto_0

    .line 150
    :cond_3
    const-string/jumbo v0, "vibrate_on_touch_intensity"

    iget-object v1, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mCunrrentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/oneplus/settings/OPVibrateIntensity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 153
    const-string/jumbo v1, "vibrate_on_touch_intensity"

    .line 152
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 154
    const-string/jumbo v0, "vibrate_on_touch_intensity"

    invoke-direct {p0, v0, p1}, Lcom/oneplus/settings/OPVibrateIntensity;->updateVibratePreferenceDescription(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public OnDialogListItemClick(I)V
    .locals 8
    .param p1, "value"    # I

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 108
    const-string/jumbo v2, "OPVibrateIntensity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "OnDialogListItemClick--index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const-string/jumbo v2, "incoming_call_vibrate_intensity"

    iget-object v3, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mCunrrentType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 110
    iget-object v2, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    if-eqz v2, :cond_5

    .line 111
    invoke-virtual {p0}, Lcom/oneplus/settings/OPVibrateIntensity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 112
    const-string/jumbo v3, "incoming_call_vibrate_mode"

    .line 111
    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 113
    .local v1, "modevalue":I
    iget-object v2, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V

    .line 114
    if-nez p1, :cond_1

    .line 115
    iget-object v2, p0, Lcom/oneplus/settings/OPVibrateIntensity;->sVibratePatternrhythm:[[J

    aget-object v2, v2, v1

    const-wide/16 v4, -0x1

    aput-wide v4, v2, v6

    .line 121
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/oneplus/settings/OPVibrateIntensity;->sVibratePatternrhythm:[[J

    aget-object v2, v2, v1

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 122
    const-string/jumbo v2, "OPVibrateIntensity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sVibratePatternrhythm ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/settings/OPVibrateIntensity;->sVibratePatternrhythm:[[J

    aget-object v4, v4, v1

    aget-wide v4, v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 116
    .end local v0    # "i":I
    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 117
    iget-object v2, p0, Lcom/oneplus/settings/OPVibrateIntensity;->sVibratePatternrhythm:[[J

    aget-object v2, v2, v1

    const-wide/16 v4, -0x2

    aput-wide v4, v2, v6

    goto :goto_0

    .line 118
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 119
    iget-object v2, p0, Lcom/oneplus/settings/OPVibrateIntensity;->sVibratePatternrhythm:[[J

    aget-object v2, v2, v1

    const-wide/16 v4, -0x3

    aput-wide v4, v2, v6

    goto :goto_0

    .line 124
    .restart local v0    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    iget-object v3, p0, Lcom/oneplus/settings/OPVibrateIntensity;->sVibratePatternrhythm:[[J

    aget-object v3, v3, v1

    invoke-virtual {v2, v3, v7}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 107
    .end local v0    # "i":I
    .end local v1    # "modevalue":I
    :cond_4
    :goto_2
    return-void

    .line 125
    :cond_5
    const-string/jumbo v2, "notice_vibrate_intensity"

    iget-object v3, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mCunrrentType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 126
    iget-object v2, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    if-eqz v2, :cond_6

    .line 127
    iget-object v2, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V

    .line 128
    iget-object v2, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    iget-object v3, p0, Lcom/oneplus/settings/OPVibrateIntensity;->sNoticeVibrateIntensity:[[J

    aget-object v3, v3, p1

    invoke-virtual {v2, v3, v7}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_2

    .line 129
    :cond_6
    const-string/jumbo v2, "vibrate_on_touch_intensity"

    iget-object v3, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mCunrrentType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 130
    iget-object v2, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    if-eqz v2, :cond_4

    .line 131
    iget-object v2, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V

    .line 132
    iget-object v2, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    iget-object v3, p0, Lcom/oneplus/settings/OPVibrateIntensity;->sTouchVibrateIntensity:[[J

    aget-object v3, v3, p1

    invoke-virtual {v2, v3, v7}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_2
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 212
    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v1, 0x7f080061

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/OPVibrateIntensity;->addPreferencesFromResource(I)V

    .line 56
    invoke-virtual {p0}, Lcom/oneplus/settings/OPVibrateIntensity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mContext:Landroid/content/Context;

    .line 57
    invoke-virtual {p0}, Lcom/oneplus/settings/OPVibrateIntensity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 58
    const-string/jumbo v2, "vibrator"

    .line 57
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    .line 59
    iget-object v1, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    :cond_0
    :goto_0
    const-string/jumbo v1, "incoming_call_vibrate_intensity"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/OPVibrateIntensity;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mIncomingCallVibrateIntensityPreference:Landroid/support/v7/preference/Preference;

    .line 63
    const-string/jumbo v1, "notice_vibrate_intensity"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/OPVibrateIntensity;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mNoticeVibrateIntensityPreference:Landroid/support/v7/preference/Preference;

    .line 64
    const-string/jumbo v1, "vibrate_on_touch_intensity"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/OPVibrateIntensity;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrateOnTouchIntensityPreference:Landroid/support/v7/preference/Preference;

    .line 65
    invoke-virtual {p0}, Lcom/oneplus/settings/OPVibrateIntensity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 66
    const-string/jumbo v2, "incoming_call_vibrate_intensity"

    .line 65
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 67
    .local v0, "value":I
    const-string/jumbo v1, "incoming_call_vibrate_intensity"

    invoke-direct {p0, v1, v0}, Lcom/oneplus/settings/OPVibrateIntensity;->updateVibratePreferenceDescription(Ljava/lang/String;I)V

    .line 69
    invoke-virtual {p0}, Lcom/oneplus/settings/OPVibrateIntensity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 70
    const-string/jumbo v2, "notice_vibrate_intensity"

    .line 69
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 71
    const-string/jumbo v1, "notice_vibrate_intensity"

    invoke-direct {p0, v1, v0}, Lcom/oneplus/settings/OPVibrateIntensity;->updateVibratePreferenceDescription(Ljava/lang/String;I)V

    .line 72
    invoke-virtual {p0}, Lcom/oneplus/settings/OPVibrateIntensity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 73
    const-string/jumbo v2, "vibrate_on_touch_intensity"

    .line 72
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 74
    const-string/jumbo v1, "vibrate_on_touch_intensity"

    invoke-direct {p0, v1, v0}, Lcom/oneplus/settings/OPVibrateIntensity;->updateVibratePreferenceDescription(Ljava/lang/String;I)V

    .line 52
    return-void

    .line 60
    .end local v0    # "value":I
    :cond_1
    iput-object v4, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mVibrator:Landroid/os/Vibrator;

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 88
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a009a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "entriesValue":[Ljava/lang/String;
    iget-object v3, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0099

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "entries":[Ljava/lang/String;
    new-instance v3, Lcom/oneplus/settings/ui/OPListDialog;

    iget-object v4, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1, v0}, Lcom/oneplus/settings/ui/OPListDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v3, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mOPListDialog:Lcom/oneplus/settings/ui/OPListDialog;

    .line 92
    iget-object v3, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mOPListDialog:Lcom/oneplus/settings/ui/OPListDialog;

    invoke-virtual {v3, p0}, Lcom/oneplus/settings/ui/OPListDialog;->setOnDialogListItemClickListener(Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;)V

    .line 93
    const-string/jumbo v3, "incoming_call_vibrate_intensity"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    iget-object v3, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mOPListDialog:Lcom/oneplus/settings/ui/OPListDialog;

    const-string/jumbo v4, "incoming_call_vibrate_intensity"

    invoke-virtual {v3, v4}, Lcom/oneplus/settings/ui/OPListDialog;->setVibrateKey(Ljava/lang/String;)V

    .line 95
    const-string/jumbo v3, "incoming_call_vibrate_intensity"

    iput-object v3, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mCunrrentType:Ljava/lang/String;

    .line 103
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mOPListDialog:Lcom/oneplus/settings/ui/OPListDialog;

    invoke-virtual {v3}, Lcom/oneplus/settings/ui/OPListDialog;->show()V

    .line 104
    const/4 v3, 0x1

    return v3

    .line 96
    :cond_1
    const-string/jumbo v3, "notice_vibrate_intensity"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 97
    iget-object v3, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mOPListDialog:Lcom/oneplus/settings/ui/OPListDialog;

    const-string/jumbo v4, "notice_vibrate_intensity"

    invoke-virtual {v3, v4}, Lcom/oneplus/settings/ui/OPListDialog;->setVibrateKey(Ljava/lang/String;)V

    .line 98
    const-string/jumbo v3, "notice_vibrate_intensity"

    iput-object v3, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mCunrrentType:Ljava/lang/String;

    goto :goto_0

    .line 99
    :cond_2
    const-string/jumbo v3, "vibrate_on_touch_intensity"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    iget-object v3, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mOPListDialog:Lcom/oneplus/settings/ui/OPListDialog;

    const-string/jumbo v4, "vibrate_on_touch_intensity"

    invoke-virtual {v3, v4}, Lcom/oneplus/settings/ui/OPListDialog;->setVibrateKey(Ljava/lang/String;)V

    .line 101
    const-string/jumbo v3, "vibrate_on_touch_intensity"

    iput-object v3, p0, Lcom/oneplus/settings/OPVibrateIntensity;->mCunrrentType:Ljava/lang/String;

    goto :goto_0
.end method
