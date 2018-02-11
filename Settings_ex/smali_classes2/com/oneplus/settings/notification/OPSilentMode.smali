.class public Lcom/oneplus/settings/notification/OPSilentMode;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OPSilentMode.java"

# interfaces
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/notification/OPSilentMode$1;,
        Lcom/oneplus/settings/notification/OPSilentMode$PrefSettingsObserver;
    }
.end annotation


# static fields
.field private static final KEY_MEDIA_RING:Ljava/lang/String; = "media_ring"

.field private static final KEY_NOISE_TIPS:Ljava/lang/String; = "noise_tips"

.field private static final PREFS:[Lcom/android/settings_ex/notification/SettingPref;

.field private static final PREF_MEDIA_RING_SETTING:Lcom/android/settings_ex/notification/SettingPref;

.field private static final PREF_NOISE_TIPS_SETTING:Lcom/android/settings_ex/notification/SettingPref;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/BaseSearchIndexProvider;


# instance fields
.field private mPrefSettingsObserver:Lcom/oneplus/settings/notification/OPSilentMode$PrefSettingsObserver;


# direct methods
.method static synthetic -get0()[Lcom/android/settings_ex/notification/SettingPref;
    .locals 1

    sget-object v0, Lcom/oneplus/settings/notification/OPSilentMode;->PREFS:[Lcom/android/settings_ex/notification/SettingPref;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/oneplus/settings/notification/OPSilentMode;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPSilentMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x0

    .line 32
    new-instance v0, Lcom/android/settings_ex/notification/SettingPref;

    .line 33
    const-string/jumbo v2, "media_ring"

    const-string/jumbo v3, "oem_zen_media_switch"

    .line 32
    new-array v5, v4, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/oneplus/settings/notification/OPSilentMode;->PREF_MEDIA_RING_SETTING:Lcom/android/settings_ex/notification/SettingPref;

    .line 36
    new-instance v0, Lcom/android/settings_ex/notification/SettingPref;

    .line 37
    const-string/jumbo v2, "noise_tips"

    const-string/jumbo v3, "oem_vibrate_under_silent"

    .line 36
    new-array v5, v4, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/oneplus/settings/notification/OPSilentMode;->PREF_NOISE_TIPS_SETTING:Lcom/android/settings_ex/notification/SettingPref;

    .line 39
    new-array v0, v1, [Lcom/android/settings_ex/notification/SettingPref;

    sget-object v1, Lcom/oneplus/settings/notification/OPSilentMode;->PREF_MEDIA_RING_SETTING:Lcom/android/settings_ex/notification/SettingPref;

    aput-object v1, v0, v4

    .line 40
    sget-object v1, Lcom/oneplus/settings/notification/OPSilentMode;->PREF_NOISE_TIPS_SETTING:Lcom/android/settings_ex/notification/SettingPref;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 39
    sput-object v0, Lcom/oneplus/settings/notification/OPSilentMode;->PREFS:[Lcom/android/settings_ex/notification/SettingPref;

    .line 98
    new-instance v0, Lcom/oneplus/settings/notification/OPSilentMode$1;

    invoke-direct {v0}, Lcom/oneplus/settings/notification/OPSilentMode$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/notification/OPSilentMode;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/BaseSearchIndexProvider;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 30
    new-instance v0, Lcom/oneplus/settings/notification/OPSilentMode$PrefSettingsObserver;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/notification/OPSilentMode$PrefSettingsObserver;-><init>(Lcom/oneplus/settings/notification/OPSilentMode;)V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPSilentMode;->mPrefSettingsObserver:Lcom/oneplus/settings/notification/OPSilentMode$PrefSettingsObserver;

    .line 25
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 65
    const/16 v0, 0x4c

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f08005c

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPSilentMode;->addPreferencesFromResource(I)V

    .line 43
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSilentMode;->mPrefSettingsObserver:Lcom/oneplus/settings/notification/OPSilentMode$PrefSettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/notification/OPSilentMode$PrefSettingsObserver;->register(Z)V

    .line 60
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 58
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 50
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 51
    sget-object v2, Lcom/oneplus/settings/notification/OPSilentMode;->PREFS:[Lcom/android/settings_ex/notification/SettingPref;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 52
    .local v0, "pref":Lcom/android/settings_ex/notification/SettingPref;
    invoke-virtual {v0, p0}, Lcom/android/settings_ex/notification/SettingPref;->init(Lcom/android/settings_ex/SettingsPreferenceFragment;)Landroid/support/v7/preference/Preference;

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    .end local v0    # "pref":Lcom/android/settings_ex/notification/SettingPref;
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSilentMode;->mPrefSettingsObserver:Lcom/oneplus/settings/notification/OPSilentMode$PrefSettingsObserver;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/notification/OPSilentMode$PrefSettingsObserver;->register(Z)V

    .line 49
    return-void
.end method
