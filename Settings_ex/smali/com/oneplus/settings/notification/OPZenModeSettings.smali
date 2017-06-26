.class public Lcom/oneplus/settings/notification/OPZenModeSettings;
.super Lcom/android/settings_ex/notification/ZenModeSettingsBase;
.source "OPZenModeSettings.java"

# interfaces
.implements Lcom/android/settings_ex/search/Indexable;


# static fields
.field private static final KEY_EVENTS:Ljava/lang/String; = "events"

.field private static final KEY_FAVOURITE_CONTACTS:Ljava/lang/String; = "favourite_contacts_settings"

.field private static final KEY_REPEAT_INCALLER_UNLIMIT_ENABLE:Ljava/lang/String; = "repeat_incaller_unlimit_enable"

.field private static final KEY_SPEC_INCALL_SETTINGS:Ljava/lang/String; = "spec_incall_settings"

.field private static final KEY_ZEN_MODE_ENABLE:Ljava/lang/String; = "zen_mode_enable"

.field private static final OEM_FAVORITES_PEOPLE:Ljava/lang/String; = "com.oneplus.contacts.action.OP_FAVORITES_PEOPLE"

.field private static final OEM_SILENT_STATUS:Ljava/lang/String; = "oem_silent_status"

.field private static final OEM_SWITCH_STATE:Ljava/lang/String; = "switch_state"

.field private static final OEM_THREE_KEY_ACTION:Ljava/lang/String; = "com.oem.intent.action.THREE_KEY_MODE"

.field private static final OEM_THREE_KEY_SUPPORT:Ljava/lang/String; = "oem.threeStageKey.support"

.field private static final OEM_ZEN_STATUS:Ljava/lang/String; = "oem_zen_status"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "OPZenModeSettings"


# instance fields
.field private mDisableListeners:Z

.field private mEvents:Landroid/preference/SwitchPreference;

.field private mFavouritePreference:Landroid/preference/Preference;

.field private mRepeatIncallPreference:Landroid/preference/SwitchPreference;

.field private mRepeateCallEnable:Z

.field private mSpecIncallPreference:Landroid/preference/Preference;

.field private mZenModeEnable:Z

.field private mZenmodePreference:Landroid/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 248
    new-instance v0, Lcom/oneplus/settings/notification/OPZenModeSettings$4;

    invoke-direct {v0}, Lcom/oneplus/settings/notification/OPZenModeSettings$4;-><init>()V

    sput-object v0, Lcom/oneplus/settings/notification/OPZenModeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeSettingsBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/notification/OPZenModeSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPZenModeSettings;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/oneplus/settings/notification/OPZenModeSettings;->mDisableListeners:Z

    return v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/notification/OPZenModeSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPZenModeSettings;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPZenModeSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/notification/OPZenModeSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPZenModeSettings;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/oneplus/settings/notification/OPZenModeSettings;->mRepeateCallEnable:Z

    return v0
.end method

.method static synthetic access$202(Lcom/oneplus/settings/notification/OPZenModeSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPZenModeSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/oneplus/settings/notification/OPZenModeSettings;->mRepeateCallEnable:Z

    return p1
.end method

.method static synthetic access$300(Lcom/oneplus/settings/notification/OPZenModeSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPZenModeSettings;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPZenModeSettings;->updateControls()V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/settings/notification/OPZenModeSettings;)Landroid/service/notification/ZenModeConfig;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPZenModeSettings;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/notification/OPZenModeSettings;)Landroid/service/notification/ZenModeConfig;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPZenModeSettings;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/notification/OPZenModeSettings;Landroid/service/notification/ZenModeConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPZenModeSettings;
    .param p1, "x1"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/notification/OPZenModeSettings;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/content/Context;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-static {p0}, Lcom/oneplus/settings/notification/OPZenModeSettings;->allKeyTitles(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method private static allKeyTitles(Landroid/content/Context;)Landroid/util/SparseArray;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const v3, 0x7f0c0c64

    .line 60
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 61
    .local v0, "rt":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const v1, 0x7f0c0c63

    const-string v2, "zen_mode_enable"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    const-string v1, "spec_incall_settings"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    const-string v1, "repeat_incaller_unlimit_enable"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    const-string v1, "events"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    return-object v0
.end method

.method private updateControls()V
    .locals 2

    .prologue
    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/notification/OPZenModeSettings;->mDisableListeners:Z

    .line 198
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPZenModeSettings;->mEvents:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 199
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPZenModeSettings;->mRepeatIncallPreference:Landroid/preference/SwitchPreference;

    iget-boolean v1, p0, Lcom/oneplus/settings/notification/OPZenModeSettings;->mRepeateCallEnable:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 200
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPZenModeSettings;->mZenmodePreference:Landroid/preference/SwitchPreference;

    iget-boolean v1, p0, Lcom/oneplus/settings/notification/OPZenModeSettings;->mZenModeEnable:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/notification/OPZenModeSettings;->mDisableListeners:Z

    .line 202
    return-void
.end method

.method private updateSpecIncallSettingStatus(I)V
    .locals 3
    .param p1, "resid"    # I

    .prologue
    .line 205
    const-string v0, ""

    .line 206
    .local v0, "summary":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 220
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPZenModeSettings;->mSpecIncallPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPZenModeSettings;->mSpecIncallPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 223
    :cond_0
    return-void

    .line 208
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPZenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 210
    goto :goto_0

    .line 212
    :pswitch_1
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPZenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 214
    goto :goto_0

    .line 216
    :pswitch_2
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPZenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateTreeKeyMode()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 227
    iget-boolean v5, p0, Lcom/oneplus/settings/notification/OPZenModeSettings;->mZenModeEnable:Z

    if-eqz v5, :cond_0

    .line 228
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 229
    .local v2, "mThreeIntent":Landroid/content/Intent;
    const-string v5, "com.oem.intent.action.THREE_KEY_MODE"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const-string v5, "switch_state"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPZenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 242
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPZenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "oem_zen_status"

    iget-boolean v7, p0, Lcom/oneplus/settings/notification/OPZenModeSettings;->mZenModeEnable:Z

    if-eqz v7, :cond_2

    :goto_1
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 244
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPZenModeSettings;->updateControls()V

    .line 245
    return-void

    .line 233
    .end local v2    # "mThreeIntent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPZenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "oem_silent_status"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 235
    .local v0, "mMutemode":I
    if-nez v0, :cond_1

    move v1, v3

    .line 237
    .local v1, "mStatus":I
    :goto_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 238
    .restart local v2    # "mThreeIntent":Landroid/content/Intent;
    const-string v5, "com.oem.intent.action.THREE_KEY_MODE"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    const-string v5, "switch_state"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPZenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 235
    .end local v1    # "mStatus":I
    .end local v2    # "mThreeIntent":Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x3

    goto :goto_2

    .end local v0    # "mMutemode":I
    .restart local v2    # "mThreeIntent":Landroid/content/Intent;
    :cond_2
    move v3, v4

    .line 242
    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 73
    const/16 v0, 0x4c

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 78
    invoke-super {p0, p1}, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const v2, 0x7f080058

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/notification/OPZenModeSettings;->addPreferencesFromResource(I)V

    .line 80
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPZenModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 82
    .local v1, "root":Landroid/preference/PreferenceScreen;
    const-string v2, "zen_mode_enable"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/notification/OPZenModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/oneplus/settings/notification/OPZenModeSettings;->mZenmodePreference:Landroid/preference/SwitchPreference;

    .line 83
    const-string v2, "spec_incall_settings"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/notification/OPZenModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/notification/OPZenModeSettings;->mSpecIncallPreference:Landroid/preference/Preference;

    .line 84
    const-string v2, "repeat_incaller_unlimit_enable"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/notification/OPZenModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/oneplus/settings/notification/OPZenModeSettings;->mRepeatIncallPreference:Landroid/preference/SwitchPreference;

    .line 85
    const-string v2, "events"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/notification/OPZenModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/oneplus/settings/notification/OPZenModeSettings;->mEvents:Landroid/preference/SwitchPreference;

    .line 86
    const-string v2, "favourite_contacts_settings"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/notification/OPZenModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/notification/OPZenModeSettings;->mFavouritePreference:Landroid/preference/Preference;

    .line 87
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPZenModeSettings;->mFavouritePreference:Landroid/preference/Preference;

    new-instance v5, Lcom/oneplus/settings/notification/OPZenModeSettings$1;

    invoke-direct {v5, p0}, Lcom/oneplus/settings/notification/OPZenModeSettings$1;-><init>(Lcom/oneplus/settings/notification/OPZenModeSettings;)V

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 126
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPZenModeSettings;->mZenmodePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 128
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPZenModeSettings;->mRepeatIncallPreference:Landroid/preference/SwitchPreference;

    new-instance v5, Lcom/oneplus/settings/notification/OPZenModeSettings$2;

    invoke-direct {v5, p0}, Lcom/oneplus/settings/notification/OPZenModeSettings$2;-><init>(Lcom/oneplus/settings/notification/OPZenModeSettings;)V

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 151
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPZenModeSettings;->mEvents:Landroid/preference/SwitchPreference;

    new-instance v5, Lcom/oneplus/settings/notification/OPZenModeSettings$3;

    invoke-direct {v5, p0}, Lcom/oneplus/settings/notification/OPZenModeSettings$3;-><init>(Lcom/oneplus/settings/notification/OPZenModeSettings;)V

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 167
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPZenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "oem_zen_status"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/oneplus/settings/notification/OPZenModeSettings;->mZenModeEnable:Z

    .line 169
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPZenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "oem_repeate_incall_unlimite"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    iput-boolean v3, p0, Lcom/oneplus/settings/notification/OPZenModeSettings;->mRepeateCallEnable:Z

    .line 171
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPZenModeSettings;->updateControls()V

    .line 174
    const-string v2, "important"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 175
    .local v0, "preferenceCategory":Landroid/preference/PreferenceCategory;
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPZenModeSettings;->mEvents:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 176
    return-void

    .end local v0    # "preferenceCategory":Landroid/preference/PreferenceCategory;
    :cond_0
    move v2, v4

    .line 167
    goto :goto_0

    :cond_1
    move v3, v4

    .line 169
    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 180
    invoke-super {p0}, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->onResume()V

    .line 181
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_agree_incall_people"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 183
    .local v0, "selectID":I
    invoke-direct {p0, v0}, Lcom/oneplus/settings/notification/OPZenModeSettings;->updateSpecIncallSettingStatus(I)V

    .line 184
    return-void
.end method

.method protected onZenModeChanged()V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method protected onZenModeConfigChanged()V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPZenModeSettings;->updateControls()V

    .line 194
    return-void
.end method
