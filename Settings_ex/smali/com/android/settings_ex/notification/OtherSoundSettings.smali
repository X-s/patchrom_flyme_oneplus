.class public Lcom/android/settings_ex/notification/OtherSoundSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OtherSoundSettings.java"

# interfaces
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/notification/OtherSoundSettings$SettingsObserver;
    }
.end annotation


# static fields
.field private static final DEFAULT_DOCK_AUDIO_MEDIA:I = 0x0

.field private static final DEFAULT_EMERGENCY_TONE:I = 0x0

.field private static final DEFAULT_ON:I = 0x1

.field private static final DOCK_AUDIO_MEDIA_DISABLED:I = 0x0

.field private static final DOCK_AUDIO_MEDIA_ENABLED:I = 0x1

.field private static final EMERGENCY_TONE_ALERT:I = 0x1

.field private static final EMERGENCY_TONE_SILENT:I = 0x0

.field private static final EMERGENCY_TONE_VIBRATE:I = 0x2

.field private static final KEY_DIAL_PAD_TONES:Ljava/lang/String; = "dial_pad_tones"

.field private static final KEY_DOCKING_SOUNDS:Ljava/lang/String; = "docking_sounds"

.field private static final KEY_DOCK_AUDIO_MEDIA:Ljava/lang/String; = "dock_audio_media"

.field private static final KEY_EMERGENCY_TONE:Ljava/lang/String; = "emergency_tone"

.field private static final KEY_SCREEN_LOCKING_SOUNDS:Ljava/lang/String; = "screen_locking_sounds"

.field private static final KEY_TOUCH_SOUNDS:Ljava/lang/String; = "touch_sounds"

.field private static final KEY_VIBRATE_ON_TOUCH:Ljava/lang/String; = "vibrate_on_touch"

.field private static final PREFS:[Lcom/android/settings_ex/notification/SettingPref;

.field private static final PREF_DIAL_PAD_TONES:Lcom/android/settings_ex/notification/SettingPref;

.field private static final PREF_DOCKING_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

.field private static final PREF_DOCK_AUDIO_MEDIA:Lcom/android/settings_ex/notification/SettingPref;

.field private static final PREF_EMERGENCY_TONE:Lcom/android/settings_ex/notification/SettingPref;

.field private static final PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

.field private static final PREF_TOUCH_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

.field private static final PREF_VIBRATE_ON_TOUCH:Lcom/android/settings_ex/notification/SettingPref;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/BaseSearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "OtherSoundSettings"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mSettingsObserver:Lcom/android/settings_ex/notification/OtherSoundSettings$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v1, 0x2

    const/4 v9, 0x0

    const/4 v4, 0x1

    .line 68
    new-instance v0, Lcom/android/settings_ex/notification/OtherSoundSettings$1;

    const-string v2, "dial_pad_tones"

    const-string v3, "dtmf_tone"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/notification/OtherSoundSettings$1;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings_ex/notification/OtherSoundSettings;->PREF_DIAL_PAD_TONES:Lcom/android/settings_ex/notification/SettingPref;

    .line 76
    new-instance v0, Lcom/android/settings_ex/notification/SettingPref;

    const-string v2, "screen_locking_sounds"

    const-string v3, "lockscreen_sounds_enabled"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings_ex/notification/OtherSoundSettings;->PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

    .line 79
    new-instance v3, Lcom/android/settings_ex/notification/OtherSoundSettings$2;

    const-string v5, "docking_sounds"

    const-string v6, "dock_sounds_enabled"

    new-array v8, v9, [I

    move v7, v4

    invoke-direct/range {v3 .. v8}, Lcom/android/settings_ex/notification/OtherSoundSettings$2;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/android/settings_ex/notification/OtherSoundSettings;->PREF_DOCKING_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

    .line 87
    new-instance v0, Lcom/android/settings_ex/notification/OtherSoundSettings$3;

    const-string v2, "touch_sounds"

    const-string v3, "sound_effects_enabled"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/notification/OtherSoundSettings$3;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings_ex/notification/OtherSoundSettings;->PREF_TOUCH_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

    .line 101
    new-instance v0, Lcom/android/settings_ex/notification/OtherSoundSettings$4;

    const-string v2, "vibrate_on_touch"

    const-string v3, "haptic_feedback_enabled"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/notification/OtherSoundSettings$4;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings_ex/notification/OtherSoundSettings;->PREF_VIBRATE_ON_TOUCH:Lcom/android/settings_ex/notification/SettingPref;

    .line 109
    new-instance v3, Lcom/android/settings_ex/notification/OtherSoundSettings$5;

    const-string v5, "dock_audio_media"

    const-string v6, "dock_audio_media_enabled"

    new-array v8, v1, [I

    fill-array-data v8, :array_0

    move v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/settings_ex/notification/OtherSoundSettings$5;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/android/settings_ex/notification/OtherSoundSettings;->PREF_DOCK_AUDIO_MEDIA:Lcom/android/settings_ex/notification/SettingPref;

    .line 130
    new-instance v3, Lcom/android/settings_ex/notification/OtherSoundSettings$6;

    const-string v5, "emergency_tone"

    const-string v6, "emergency_tone"

    new-array v8, v10, [I

    fill-array-data v8, :array_1

    move v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/settings_ex/notification/OtherSoundSettings$6;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/android/settings_ex/notification/OtherSoundSettings;->PREF_EMERGENCY_TONE:Lcom/android/settings_ex/notification/SettingPref;

    .line 154
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/settings_ex/notification/SettingPref;

    sget-object v2, Lcom/android/settings_ex/notification/OtherSoundSettings;->PREF_DIAL_PAD_TONES:Lcom/android/settings_ex/notification/SettingPref;

    aput-object v2, v0, v9

    sget-object v2, Lcom/android/settings_ex/notification/OtherSoundSettings;->PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

    aput-object v2, v0, v4

    sget-object v2, Lcom/android/settings_ex/notification/OtherSoundSettings;->PREF_DOCKING_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/settings_ex/notification/OtherSoundSettings;->PREF_TOUCH_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

    aput-object v1, v0, v10

    const/4 v1, 0x4

    sget-object v2, Lcom/android/settings_ex/notification/OtherSoundSettings;->PREF_VIBRATE_ON_TOUCH:Lcom/android/settings_ex/notification/SettingPref;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/settings_ex/notification/OtherSoundSettings;->PREF_DOCK_AUDIO_MEDIA:Lcom/android/settings_ex/notification/SettingPref;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/settings_ex/notification/OtherSoundSettings;->PREF_EMERGENCY_TONE:Lcom/android/settings_ex/notification/SettingPref;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/notification/OtherSoundSettings;->PREFS:[Lcom/android/settings_ex/notification/SettingPref;

    .line 234
    new-instance v0, Lcom/android/settings_ex/notification/OtherSoundSettings$7;

    invoke-direct {v0}, Lcom/android/settings_ex/notification/OtherSoundSettings$7;-><init>()V

    sput-object v0, Lcom/android/settings_ex/notification/OtherSoundSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/BaseSearchIndexProvider;

    return-void

    .line 109
    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data

    .line 130
    :array_1
    .array-data 4
        0x1
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 164
    new-instance v0, Lcom/android/settings_ex/notification/OtherSoundSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/notification/OtherSoundSettings$SettingsObserver;-><init>(Lcom/android/settings_ex/notification/OtherSoundSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/OtherSoundSettings;->mSettingsObserver:Lcom/android/settings_ex/notification/OtherSoundSettings$SettingsObserver;

    .line 204
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-static {p0}, Lcom/android/settings_ex/notification/OtherSoundSettings;->hasDockSettings(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-static {p0}, Lcom/android/settings_ex/notification/OtherSoundSettings;->hasHaptic(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/notification/OtherSoundSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/OtherSoundSettings;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/OtherSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()[Lcom/android/settings_ex/notification/SettingPref;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/settings_ex/notification/OtherSoundSettings;->PREFS:[Lcom/android/settings_ex/notification/SettingPref;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/notification/OtherSoundSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/OtherSoundSettings;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings_ex/notification/OtherSoundSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static hasDockSettings(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 194
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static hasHaptic(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 198
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 199
    .local v0, "vibrator":Landroid/os/Vibrator;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 170
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 172
    const v4, 0x7f06004c

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/notification/OtherSoundSettings;->addPreferencesFromResource(I)V

    .line 174
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/OtherSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/notification/OtherSoundSettings;->mContext:Landroid/content/Context;

    .line 176
    sget-object v0, Lcom/android/settings_ex/notification/OtherSoundSettings;->PREFS:[Lcom/android/settings_ex/notification/SettingPref;

    .local v0, "arr$":[Lcom/android/settings_ex/notification/SettingPref;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 177
    .local v3, "pref":Lcom/android/settings_ex/notification/SettingPref;
    invoke-virtual {v3, p0}, Lcom/android/settings_ex/notification/SettingPref;->init(Lcom/android/settings_ex/SettingsPreferenceFragment;)Landroid/preference/Preference;

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    .end local v3    # "pref":Lcom/android/settings_ex/notification/SettingPref;
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 189
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 190
    iget-object v0, p0, Lcom/android/settings_ex/notification/OtherSoundSettings;->mSettingsObserver:Lcom/android/settings_ex/notification/OtherSoundSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/OtherSoundSettings$SettingsObserver;->register(Z)V

    .line 191
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 183
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 184
    iget-object v0, p0, Lcom/android/settings_ex/notification/OtherSoundSettings;->mSettingsObserver:Lcom/android/settings_ex/notification/OtherSoundSettings$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/OtherSoundSettings$SettingsObserver;->register(Z)V

    .line 185
    return-void
.end method
