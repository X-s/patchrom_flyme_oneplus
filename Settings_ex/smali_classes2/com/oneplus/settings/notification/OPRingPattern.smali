.class public Lcom/oneplus/settings/notification/OPRingPattern;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OPRingPattern.java"

# interfaces
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/notification/OPRingPattern$1;,
        Lcom/oneplus/settings/notification/OPRingPattern$SettingsObserver;
    }
.end annotation


# static fields
.field private static final KEY_VIBRATE_WHEN_RINGING:Ljava/lang/String; = "vibrate_when_ringing"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/BaseSearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "OPRingPattern"


# instance fields
.field private final mSettingsObserver:Lcom/oneplus/settings/notification/OPRingPattern$SettingsObserver;

.field private mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

.field private mVoiceCapable:Z


# direct methods
.method static synthetic -wrap0(Lcom/oneplus/settings/notification/OPRingPattern;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPRingPattern;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/settings/notification/OPRingPattern;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPRingPattern;->updateVibrateWhenRinging()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lcom/oneplus/settings/notification/OPRingPattern$1;

    invoke-direct {v0}, Lcom/oneplus/settings/notification/OPRingPattern$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/notification/OPRingPattern;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/BaseSearchIndexProvider;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 36
    new-instance v0, Lcom/oneplus/settings/notification/OPRingPattern$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/notification/OPRingPattern$SettingsObserver;-><init>(Lcom/oneplus/settings/notification/OPRingPattern;)V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPRingPattern;->mSettingsObserver:Lcom/oneplus/settings/notification/OPRingPattern$SettingsObserver;

    .line 29
    return-void
.end method

.method private initVibrateWhenRinging()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    const-string/jumbo v0, "vibrate_when_ringing"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPRingPattern;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPRingPattern;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    .line 74
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingPattern;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    if-nez v0, :cond_0

    .line 75
    const-string/jumbo v0, "OPRingPattern"

    const-string/jumbo v1, "Preference not found: vibrate_when_ringing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void

    .line 78
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/settings/notification/OPRingPattern;->mVoiceCapable:Z

    if-nez v0, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPRingPattern;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPRingPattern;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 80
    iput-object v2, p0, Lcom/oneplus/settings/notification/OPRingPattern;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    .line 81
    return-void

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingPattern;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/TwoStatePreference;->setPersistent(Z)V

    .line 84
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPRingPattern;->updateVibrateWhenRinging()V

    .line 85
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingPattern;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    new-instance v1, Lcom/oneplus/settings/notification/OPRingPattern$2;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/notification/OPRingPattern$2;-><init>(Lcom/oneplus/settings/notification/OPRingPattern;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 72
    return-void
.end method

.method private updateVibrateWhenRinging()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 97
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPRingPattern;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    if-nez v1, :cond_0

    return-void

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPRingPattern;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPRingPattern;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 99
    const-string/jumbo v3, "vibrate_when_ringing"

    .line 98
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    .line 96
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 69
    const/16 v0, 0x4c

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f080057

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPRingPattern;->addPreferencesFromResource(I)V

    .line 42
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPRingPattern;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/settings/notification/OPRingPattern;->mVoiceCapable:Z

    .line 43
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPRingPattern;->initVibrateWhenRinging()V

    .line 44
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingPattern;->mSettingsObserver:Lcom/oneplus/settings/notification/OPRingPattern$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/notification/OPRingPattern$SettingsObserver;->register(Z)V

    .line 39
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 64
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingPattern;->mSettingsObserver:Lcom/oneplus/settings/notification/OPRingPattern$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/notification/OPRingPattern$SettingsObserver;->register(Z)V

    .line 62
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 57
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 50
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPRingPattern;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    if-eqz v1, :cond_1

    .line 51
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPRingPattern;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPRingPattern;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 52
    const-string/jumbo v3, "vibrate_when_ringing"

    .line 51
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    .line 48
    :cond_1
    return-void
.end method
