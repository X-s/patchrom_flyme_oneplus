.class public Lcom/android/settings_ex/sim/SimSettings;
.super Lcom/android/settings_ex/RestrictedSettingsFragment;
.source "SimSettings.java"

# interfaces
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/sim/SimSettings$SimPreference;
    }
.end annotation


# static fields
.field public static final CONFIG_LTE_SUB_SELECT_MODE:Ljava/lang/String; = "config_lte_sub_select_mode"

.field private static final CONFIG_PRIMARY_SUB_SETABLE:Ljava/lang/String; = "config_primary_sub_setable"

.field private static final DBG:Z = true

.field private static final DISALLOW_CONFIG_SIM:Ljava/lang/String; = "no_config_sim"

.field private static final EVT_UPDATE:I = 0x1

.field private static final KEY_ACTIVITIES:Ljava/lang/String; = "activities"

.field private static final KEY_CALLS:Ljava/lang/String; = "sim_calls"

.field private static final KEY_CELLULAR_DATA:Ljava/lang/String; = "sim_cellular_data"

.field private static final KEY_PRIMARY_SUB_SELECT:Ljava/lang/String; = "select_primary_sub"

.field private static final KEY_SMS:Ljava/lang/String; = "sim_sms"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static final SIM_ACTIVITIES_CATEGORY:Ljava/lang/String; = "sim_activities"

.field private static final SIM_CARD_CATEGORY:Ljava/lang/String; = "sim_cards"

.field private static final SIM_ENABLER_CATEGORY:Ljava/lang/String; = "sim_enablers"

.field private static final TAG:Ljava/lang/String; = "SimSettings"

.field private static mNumSlots:I

.field private static mSimEnablers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/sim/MultiSimEnablerPreference;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private dataDisableToastDisplayed:Z

.field private inActivity:Z

.field private mAvailableSubInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCallState:[I

.field private mCalls:Landroid/telephony/SubscriptionInfo;

.field private mCellularData:Landroid/telephony/SubscriptionInfo;

.field private mDdsSwitchReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mNumSims:I

.field private mPhoneCount:I

.field private mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mPreferredDataSubscription:J

.field private mPrimarySubSelect:Landroid/preference/Preference;

.field private mSMS:Landroid/telephony/SubscriptionInfo;

.field private mSubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    sput v0, Lcom/android/settings_ex/sim/SimSettings;->mNumSlots:I

    .line 95
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings_ex/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    .line 631
    new-instance v0, Lcom/android/settings_ex/sim/SimSettings$4;

    invoke-direct {v0}, Lcom/android/settings_ex/sim/SimSettings$4;-><init>()V

    sput-object v0, Lcom/android/settings_ex/sim/SimSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 112
    const-string v0, "no_config_sim"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 91
    iput-object v1, p0, Lcom/android/settings_ex/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    .line 92
    iput-object v1, p0, Lcom/android/settings_ex/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    .line 93
    iput-object v1, p0, Lcom/android/settings_ex/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    .line 97
    iput-object v1, p0, Lcom/android/settings_ex/sim/SimSettings;->mCellularData:Landroid/telephony/SubscriptionInfo;

    .line 98
    iput-object v1, p0, Lcom/android/settings_ex/sim/SimSettings;->mCalls:Landroid/telephony/SubscriptionInfo;

    .line 99
    iput-object v1, p0, Lcom/android/settings_ex/sim/SimSettings;->mSMS:Landroid/telephony/SubscriptionInfo;

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/sim/SimSettings;->dataDisableToastDisplayed:Z

    .line 165
    new-instance v0, Lcom/android/settings_ex/sim/SimSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/sim/SimSettings$1;-><init>(Lcom/android/settings_ex/sim/SimSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/sim/SimSettings;->mDdsSwitchReceiver:Landroid/content/BroadcastReceiver;

    .line 648
    new-instance v0, Lcom/android/settings_ex/sim/SimSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/sim/SimSettings$5;-><init>(Lcom/android/settings_ex/sim/SimSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/sim/SimSettings;->mHandler:Landroid/os/Handler;

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/sim/SimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/sim/SimSettings;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings_ex/sim/SimSettings;->updateCellularDataValues()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/sim/SimSettings;)Landroid/telephony/SubscriptionManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/sim/SimSettings;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings_ex/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/sim/SimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/sim/SimSettings;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings_ex/sim/SimSettings;->updateCellularDataPreference()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/sim/SimSettings;J)Landroid/telephony/SubscriptionInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/sim/SimSettings;
    .param p1, "x1"    # J

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/sim/SimSettings;->findRecordBySubId(J)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/sim/SimSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/sim/SimSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/settings_ex/sim/SimSettings;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/sim/SimSettings;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/settings_ex/sim/SimSettings;

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/android/settings_ex/sim/SimSettings;->mPreferredDataSubscription:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/settings_ex/sim/SimSettings;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/sim/SimSettings;
    .param p1, "x1"    # J

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/android/settings_ex/sim/SimSettings;->mPreferredDataSubscription:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/settings_ex/sim/SimSettings;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/sim/SimSettings;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings_ex/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings_ex/sim/SimSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/sim/SimSettings;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/android/settings_ex/sim/SimSettings;->mNumSims:I

    return p1
.end method

.method static synthetic access$408(Lcom/android/settings_ex/sim/SimSettings;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/settings_ex/sim/SimSettings;

    .prologue
    .line 64
    iget v0, p0, Lcom/android/settings_ex/sim/SimSettings;->mNumSims:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings_ex/sim/SimSettings;->mNumSims:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings_ex/sim/SimSettings;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/sim/SimSettings;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/settings_ex/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/android/settings_ex/sim/SimSettings;->mNumSlots:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/sim/SimSettings;I)Landroid/telephony/SubscriptionInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/sim/SimSettings;
    .param p1, "x1"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/settings_ex/sim/SimSettings;->findRecordBySlotId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/sim/SimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/sim/SimSettings;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings_ex/sim/SimSettings;->updateAllOptions()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings_ex/sim/SimSettings;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/sim/SimSettings;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings_ex/sim/SimSettings;->mCallState:[I

    return-object v0
.end method

.method private createPreferences()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 199
    const v4, 0x7f060060

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/sim/SimSettings;->addPreferencesFromResource(I)V

    .line 201
    const-string v4, "select_primary_sub"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    .line 202
    const-string v4, "sim_cards"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 203
    .local v1, "simCards":Landroid/preference/PreferenceCategory;
    const-string v4, "sim_enablers"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 206
    .local v2, "simEnablers":Landroid/preference/PreferenceCategory;
    new-instance v4, Ljava/util/ArrayList;

    sget v5, Lcom/android/settings_ex/sim/SimSettings;->mNumSlots:I

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/android/settings_ex/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    .line 207
    new-instance v4, Ljava/util/ArrayList;

    sget v5, Lcom/android/settings_ex/sim/SimSettings;->mNumSlots:I

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v4, Lcom/android/settings_ex/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    .line 208
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v4, Lcom/android/settings_ex/sim/SimSettings;->mNumSlots:I

    if-ge v0, v4, :cond_2

    .line 209
    invoke-direct {p0, v0}, Lcom/android/settings_ex/sim/SimSettings;->findRecordBySlotId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 210
    .local v3, "sir":Landroid/telephony/SubscriptionInfo;
    new-instance v4, Lcom/android/settings_ex/sim/SimSettings$SimPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, p0, v5, v3, v0}, Lcom/android/settings_ex/sim/SimSettings$SimPreference;-><init>(Lcom/android/settings_ex/sim/SimSettings;Landroid/content/Context;Landroid/telephony/SubscriptionInfo;I)V

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 211
    sget v4, Lcom/android/settings_ex/sim/SimSettings;->mNumSlots:I

    if-le v4, v8, :cond_1

    .line 212
    sget-object v4, Lcom/android/settings_ex/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    new-instance v5, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/sim/SimSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, v6, v3, v7, v0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;-><init>(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;Landroid/os/Handler;I)V

    invoke-interface {v4, v0, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 214
    sget-object v4, Lcom/android/settings_ex/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 219
    :goto_1
    if-eqz v3, :cond_0

    iget v4, v3, Landroid/telephony/SubscriptionInfo;->mStatus:I

    iget-object v5, p0, Lcom/android/settings_ex/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-ne v4, v8, :cond_0

    .line 220
    iget v4, p0, Lcom/android/settings_ex/sim/SimSettings;->mNumSims:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/settings_ex/sim/SimSettings;->mNumSims:I

    .line 221
    iget-object v4, p0, Lcom/android/settings_ex/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    :cond_1
    const-string v4, "sim_enablers"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/sim/SimSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_1

    .line 224
    .end local v3    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_2
    return-void
.end method

.method private findRecordBySlotId(I)Landroid/telephony/SubscriptionInfo;
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    .line 304
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 305
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 307
    .local v0, "availableSubInfoLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 308
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 309
    .local v2, "sir":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 316
    .end local v0    # "availableSubInfoLength":I
    .end local v1    # "i":I
    .end local v2    # "sir":Landroid/telephony/SubscriptionInfo;
    :goto_1
    return-object v2

    .line 307
    .restart local v0    # "availableSubInfoLength":I
    .restart local v1    # "i":I
    .restart local v2    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 316
    .end local v0    # "availableSubInfoLength":I
    .end local v1    # "i":I
    .end local v2    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private findRecordBySubId(J)Landroid/telephony/SubscriptionInfo;
    .locals 7
    .param p1, "subId"    # J

    .prologue
    .line 288
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 290
    .local v0, "availableSubInfoLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 291
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 292
    .local v2, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    int-to-long v4, v3

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    .line 296
    .end local v2    # "sir":Landroid/telephony/SubscriptionInfo;
    :goto_1
    return-object v2

    .line 290
    .restart local v2    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 296
    .end local v2    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I

    .prologue
    .line 250
    move v0, p1

    .line 251
    .local v0, "i":I
    iget-object v1, p0, Lcom/android/settings_ex/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    new-instance v2, Lcom/android/settings_ex/sim/SimSettings$2;

    invoke-direct {v2, p0, p2, v0}, Lcom/android/settings_ex/sim/SimSettings$2;-><init>(Lcom/android/settings_ex/sim/SimSettings;II)V

    aput-object v2, v1, p1

    .line 259
    iget-object v1, p0, Lcom/android/settings_ex/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v1, v1, p1

    return-object v1
.end method

.method private getPreferredNetwork(I)I
    .locals 3
    .param p1, "sub"    # I

    .prologue
    .line 445
    const/4 v0, -0x1

    .line 447
    .local v0, "nwMode":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/sim/SimSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2, p1}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 451
    :goto_0
    return v0

    .line 449
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private initLTEPreference()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 401
    const-string v9, "persist.radio.primarycard"

    invoke-static {v9, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 404
    .local v1, "isPrimarySubFeatureEnable":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/sim/SimSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "config_primary_sub_setable"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v7, :cond_1

    move v3, v7

    .line 407
    .local v3, "primarySetable":Z
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isPrimarySubFeatureEnable :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " primarySetable :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings_ex/sim/SimSettings;->logd(Ljava/lang/String;)V

    .line 410
    if-eqz v1, :cond_0

    if-nez v3, :cond_2

    .line 411
    :cond_0
    const-string v7, "sim_activities"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 413
    .local v5, "simActivities":Landroid/preference/PreferenceCategory;
    iget-object v7, p0, Lcom/android/settings_ex/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 431
    .end local v5    # "simActivities":Landroid/preference/PreferenceCategory;
    :goto_1
    return-void

    .end local v3    # "primarySetable":Z
    :cond_1
    move v3, v8

    .line 404
    goto :goto_0

    .line 417
    .restart local v3    # "primarySetable":Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/sim/SimSettings;->getCurrentPrimarySlot()I

    move-result v4

    .line 419
    .local v4, "primarySlot":I
    invoke-virtual {p0}, Lcom/android/settings_ex/sim/SimSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "config_lte_sub_select_mode"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_3

    move v0, v7

    .line 422
    .local v0, "isManualMode":Z
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "init LTE primary slot : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isManualMode :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings_ex/sim/SimSettings;->logd(Ljava/lang/String;)V

    .line 423
    const/4 v7, -0x1

    if-eq v7, v4, :cond_5

    .line 424
    invoke-direct {p0, v4}, Lcom/android/settings_ex/sim/SimSettings;->findRecordBySlotId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v6

    .line 425
    .local v6, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-nez v6, :cond_4

    const/4 v2, 0x0

    .line 426
    .local v2, "lteSummary":Ljava/lang/CharSequence;
    :goto_3
    iget-object v7, p0, Lcom/android/settings_ex/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    invoke-virtual {v7, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 430
    .end local v2    # "lteSummary":Ljava/lang/CharSequence;
    .end local v6    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :goto_4
    iget-object v7, p0, Lcom/android/settings_ex/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .end local v0    # "isManualMode":Z
    :cond_3
    move v0, v8

    .line 419
    goto :goto_2

    .line 425
    .restart local v0    # "isManualMode":Z
    .restart local v6    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_4
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_3

    .line 428
    .end local v6    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_5
    iget-object v7, p0, Lcom/android/settings_ex/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method private isCallStateIdle()Z
    .locals 5

    .prologue
    .line 358
    const/4 v0, 0x1

    .line 359
    .local v0, "callStateIdle":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/sim/SimSettings;->mCallState:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 360
    iget-object v2, p0, Lcom/android/settings_ex/sim/SimSettings;->mCallState:[I

    aget v2, v2, v1

    if-eqz v2, :cond_0

    .line 361
    const/4 v0, 0x0

    .line 359
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 364
    :cond_1
    const-string v2, "SimSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCallStateIdle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    return v0
.end method

.method private listen()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 235
    invoke-virtual {p0}, Lcom/android/settings_ex/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 237
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/android/settings_ex/sim/SimSettings;->mPhoneCount:I

    if-ge v0, v3, :cond_1

    .line 238
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 239
    .local v1, "subId":[I
    if-eqz v1, :cond_0

    .line 240
    aget v3, v1, v5

    if-lez v3, :cond_0

    .line 241
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings;->mCallState:[I

    aget v4, v1, v5

    invoke-virtual {v2, v4}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v4

    aput v4, v3, v0

    .line 242
    aget v3, v1, v5

    invoke-direct {p0, v0, v3}, Lcom/android/settings_ex/sim/SimSettings;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 237
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    .end local v1    # "subId":[I
    :cond_1
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 670
    const-string v0, "SimSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 674
    const-string v0, "SimSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    return-void
.end method

.method private setActivity(Landroid/preference/Preference;Landroid/telephony/SubscriptionInfo;)V
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "sir"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    .line 536
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 538
    .local v0, "key":Ljava/lang/String;
    const-string v1, "sim_cellular_data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 539
    iput-object p2, p0, Lcom/android/settings_ex/sim/SimSettings;->mCellularData:Landroid/telephony/SubscriptionInfo;

    .line 546
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/sim/SimSettings;->updateActivitesCategory()V

    .line 547
    return-void

    .line 540
    :cond_1
    const-string v1, "sim_calls"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 541
    iput-object p2, p0, Lcom/android/settings_ex/sim/SimSettings;->mCalls:Landroid/telephony/SubscriptionInfo;

    goto :goto_0

    .line 542
    :cond_2
    const-string v1, "sim_sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 543
    iput-object p2, p0, Lcom/android/settings_ex/sim/SimSettings;->mSMS:Landroid/telephony/SubscriptionInfo;

    goto :goto_0
.end method

.method private unRegisterPhoneStateListener()V
    .locals 4

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/android/settings_ex/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 157
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/settings_ex/sim/SimSettings;->mPhoneCount:I

    if-ge v0, v2, :cond_1

    .line 158
    iget-object v2, p0, Lcom/android/settings_ex/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/android/settings_ex/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 160
    iget-object v2, p0, Lcom/android/settings_ex/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 157
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    :cond_1
    return-void
.end method

.method private updateActivitesCategory()V
    .locals 1

    .prologue
    .line 275
    const-string v0, "sim_cellular_data"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/notification/DropDownPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/sim/SimSettings;->createDropDown(Lcom/android/settings_ex/notification/DropDownPreference;)V

    .line 276
    const-string v0, "sim_calls"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/notification/DropDownPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/sim/SimSettings;->createDropDown(Lcom/android/settings_ex/notification/DropDownPreference;)V

    .line 277
    const-string v0, "sim_sms"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/notification/DropDownPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/sim/SimSettings;->createDropDown(Lcom/android/settings_ex/notification/DropDownPreference;)V

    .line 278
    invoke-direct {p0}, Lcom/android/settings_ex/sim/SimSettings;->updateCellularDataValues()V

    .line 279
    invoke-direct {p0}, Lcom/android/settings_ex/sim/SimSettings;->updateCallValues()V

    .line 280
    invoke-direct {p0}, Lcom/android/settings_ex/sim/SimSettings;->updateSmsValues()V

    .line 281
    return-void
.end method

.method private updateAllOptions()V
    .locals 2

    .prologue
    .line 227
    const-string v0, "SimSettings"

    const-string v1, "updateAllOptions"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/android/settings_ex/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    .line 229
    invoke-direct {p0}, Lcom/android/settings_ex/sim/SimSettings;->updateSimSlotValues()V

    .line 230
    invoke-direct {p0}, Lcom/android/settings_ex/sim/SimSettings;->updateActivitesCategory()V

    .line 231
    invoke-direct {p0}, Lcom/android/settings_ex/sim/SimSettings;->updateSimEnablers()V

    .line 232
    return-void
.end method

.method private updateCallValues()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 369
    const-string v6, "sim_calls"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/notification/DropDownPreference;

    .line 370
    .local v0, "simPref":Lcom/android/settings_ex/notification/DropDownPreference;
    iget-object v6, p0, Lcom/android/settings_ex/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->isVoicePromptEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    const-wide/16 v2, 0x0

    .line 372
    .local v2, "subId":J
    :goto_0
    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/sim/SimSettings;->findRecordBySubId(J)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 373
    .local v1, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v1, :cond_0

    .line 374
    invoke-virtual {v0, v1, v5}, Lcom/android/settings_ex/notification/DropDownPreference;->setSelectedValue(Ljava/lang/Object;Z)V

    .line 376
    :cond_0
    iget v6, p0, Lcom/android/settings_ex/sim/SimSettings;->mNumSims:I

    if-le v6, v4, :cond_2

    :goto_1
    invoke-virtual {v0, v4}, Lcom/android/settings_ex/notification/DropDownPreference;->setEnabled(Z)V

    .line 377
    return-void

    .line 370
    .end local v1    # "sir":Landroid/telephony/SubscriptionInfo;
    .end local v2    # "subId":J
    :cond_1
    iget-object v6, p0, Lcom/android/settings_ex/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v6

    int-to-long v2, v6

    goto :goto_0

    .restart local v1    # "sir":Landroid/telephony/SubscriptionInfo;
    .restart local v2    # "subId":J
    :cond_2
    move v4, v5

    .line 376
    goto :goto_1
.end method

.method private updateCellularDataPreference()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 340
    const-string v2, "sim_cellular_data"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/notification/DropDownPreference;

    .line 341
    .local v1, "simPref":Lcom/android/settings_ex/notification/DropDownPreference;
    invoke-direct {p0}, Lcom/android/settings_ex/sim/SimSettings;->isCallStateIdle()Z

    move-result v0

    .line 343
    .local v0, "callStateIdle":Z
    iget v2, p0, Lcom/android/settings_ex/sim/SimSettings;->mNumSims:I

    if-le v2, v3, :cond_2

    if-eqz v0, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/settings_ex/notification/DropDownPreference;->setEnabled(Z)V

    .line 346
    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcom/android/settings_ex/sim/SimSettings;->inActivity:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings_ex/sim/SimSettings;->dataDisableToastDisplayed:Z

    if-nez v2, :cond_0

    .line 347
    invoke-virtual {p0}, Lcom/android/settings_ex/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v5, 0x7f09022a

    invoke-static {v2, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 349
    iput-boolean v3, p0, Lcom/android/settings_ex/sim/SimSettings;->dataDisableToastDisplayed:Z

    .line 352
    :cond_0
    if-ne v0, v3, :cond_1

    .line 353
    iput-boolean v4, p0, Lcom/android/settings_ex/sim/SimSettings;->dataDisableToastDisplayed:Z

    .line 355
    :cond_1
    return-void

    :cond_2
    move v2, v4

    .line 343
    goto :goto_0
.end method

.method private updateCellularDataValues()V
    .locals 4

    .prologue
    .line 331
    const-string v2, "sim_cellular_data"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/notification/DropDownPreference;

    .line 332
    .local v0, "simPref":Lcom/android/settings_ex/notification/DropDownPreference;
    iget-object v2, p0, Lcom/android/settings_ex/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/sim/SimSettings;->findRecordBySubId(J)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 333
    .local v1, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v1, :cond_0

    .line 334
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/notification/DropDownPreference;->setSelectedValue(Ljava/lang/Object;Z)V

    .line 336
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/sim/SimSettings;->updateCellularDataPreference()V

    .line 337
    return-void
.end method

.method private updateSimEnablers()V
    .locals 3

    .prologue
    .line 663
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/android/settings_ex/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 664
    sget-object v2, Lcom/android/settings_ex/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

    .line 665
    .local v1, "simEnabler":Lcom/android/settings_ex/sim/MultiSimEnablerPreference;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->update()V

    .line 663
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 667
    .end local v1    # "simEnabler":Lcom/android/settings_ex/sim/MultiSimEnablerPreference;
    :cond_1
    return-void
.end method

.method private updateSimSlotValues()V
    .locals 5

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/android/settings_ex/sim/SimSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 265
    .local v2, "prefScreen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    .line 266
    .local v3, "prefSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 267
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 268
    .local v1, "pref":Landroid/preference/Preference;
    instance-of v4, v1, Lcom/android/settings_ex/sim/SimSettings$SimPreference;

    if-eqz v4, :cond_0

    .line 269
    check-cast v1, Lcom/android/settings_ex/sim/SimSettings$SimPreference;

    .end local v1    # "pref":Landroid/preference/Preference;
    invoke-virtual {v1}, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->update()V

    .line 266
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    :cond_1
    return-void
.end method

.method private updateSmsValues()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 320
    const-string v6, "sim_sms"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/notification/DropDownPreference;

    .line 321
    .local v0, "simPref":Lcom/android/settings_ex/notification/DropDownPreference;
    iget-object v6, p0, Lcom/android/settings_ex/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->isSMSPromptEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    const-wide/16 v2, 0x0

    .line 323
    .local v2, "subId":J
    :goto_0
    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/sim/SimSettings;->findRecordBySubId(J)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 324
    .local v1, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v1, :cond_0

    .line 325
    invoke-virtual {v0, v1, v5}, Lcom/android/settings_ex/notification/DropDownPreference;->setSelectedValue(Ljava/lang/Object;Z)V

    .line 327
    :cond_0
    iget v6, p0, Lcom/android/settings_ex/sim/SimSettings;->mNumSims:I

    if-le v6, v4, :cond_2

    :goto_1
    invoke-virtual {v0, v4}, Lcom/android/settings_ex/notification/DropDownPreference;->setEnabled(Z)V

    .line 328
    return-void

    .line 321
    .end local v1    # "sir":Landroid/telephony/SubscriptionInfo;
    .end local v2    # "subId":J
    :cond_1
    iget-object v6, p0, Lcom/android/settings_ex/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v6

    int-to-long v2, v6

    goto :goto_0

    .restart local v1    # "sir":Landroid/telephony/SubscriptionInfo;
    .restart local v2    # "subId":J
    :cond_2
    move v4, v5

    .line 327
    goto :goto_1
.end method


# virtual methods
.method public createDropDown(Lcom/android/settings_ex/notification/DropDownPreference;)V
    .locals 12
    .param p1, "preference"    # Lcom/android/settings_ex/notification/DropDownPreference;

    .prologue
    const/4 v9, 0x1

    .line 467
    move-object v5, p1

    .line 468
    .local v5, "simPref":Lcom/android/settings_ex/notification/DropDownPreference;
    invoke-virtual {v5}, Lcom/android/settings_ex/notification/DropDownPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 469
    .local v3, "keyPref":Ljava/lang/String;
    const/4 v4, 0x0

    .line 470
    .local v4, "mActCount":I
    const-string v10, "sim_calls"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "sim_sms"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    move v0, v9

    .line 472
    .local v0, "askFirst":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/sim/SimSettings;->isAdded()Z

    move-result v10

    if-nez v10, :cond_2

    .line 473
    const-string v9, "SimSettings"

    const-string v10, "Fragment not yet attached to Activity, EXIT!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :goto_1
    return-void

    .line 470
    .end local v0    # "askFirst":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 476
    .restart local v0    # "askFirst":Z
    :cond_2
    invoke-virtual {v5}, Lcom/android/settings_ex/notification/DropDownPreference;->clearItems()V

    .line 479
    iget-object v10, p0, Lcom/android/settings_ex/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    if-eqz v10, :cond_4

    .line 480
    iget-object v10, p0, Lcom/android/settings_ex/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/SubscriptionInfo;

    .line 481
    .local v8, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v8, :cond_3

    iget v10, v8, Landroid/telephony/SubscriptionInfo;->mStatus:I

    iget-object v11, p0, Lcom/android/settings_ex/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-ne v10, v9, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 485
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v8    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_4
    if-eqz v0, :cond_5

    if-le v4, v9, :cond_5

    .line 486
    invoke-virtual {p0}, Lcom/android/settings_ex/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090a79

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Lcom/android/settings_ex/notification/DropDownPreference;->addItem(Ljava/lang/CharSequence;Ljava/lang/Object;)V

    .line 490
    :cond_5
    iget-object v9, p0, Lcom/android/settings_ex/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    .line 491
    .local v7, "subAvailableSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v7, :cond_7

    .line 492
    iget-object v9, p0, Lcom/android/settings_ex/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    .line 493
    .local v6, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v6, :cond_6

    .line 494
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9, v6}, Lcom/android/settings_ex/notification/DropDownPreference;->addItem(Ljava/lang/CharSequence;Ljava/lang/Object;)V

    .line 491
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 498
    .end local v6    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_7
    new-instance v9, Lcom/android/settings_ex/sim/SimSettings$3;

    invoke-direct {v9, p0, v5}, Lcom/android/settings_ex/sim/SimSettings$3;-><init>(Lcom/android/settings_ex/sim/SimSettings;Lcom/android/settings_ex/notification/DropDownPreference;)V

    invoke-virtual {v5, v9}, Lcom/android/settings_ex/notification/DropDownPreference;->setCallback(Lcom/android/settings_ex/notification/DropDownPreference$Callback;)V

    goto :goto_1
.end method

.method public getCurrentPrimarySlot()I
    .locals 3

    .prologue
    .line 434
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    sget v2, Lcom/android/settings_ex/sim/SimSettings;->mNumSlots:I

    if-ge v1, v2, :cond_2

    .line 435
    invoke-direct {p0, v1}, Lcom/android/settings_ex/sim/SimSettings;->getPreferredNetwork(I)I

    move-result v0

    .line 436
    .local v0, "current":I
    const/16 v2, 0x14

    if-eq v0, v2, :cond_0

    const/16 v2, 0x12

    if-ne v0, v2, :cond_1

    .line 441
    .end local v0    # "current":I
    .end local v1    # "index":I
    :cond_0
    :goto_1
    return v1

    .line 434
    .restart local v0    # "current":I
    .restart local v1    # "index":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 441
    .end local v0    # "current":I
    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 118
    const-string v2, "SimSettings"

    const-string v3, "on onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {p0}, Lcom/android/settings_ex/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 121
    invoke-virtual {p0}, Lcom/android/settings_ex/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 124
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/settings_ex/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    if-nez v2, :cond_0

    .line 125
    iget-object v2, p0, Lcom/android/settings_ex/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    .line 128
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    sput v2, Lcom/android/settings_ex/sim/SimSettings;->mNumSlots:I

    .line 129
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/sim/SimSettings;->mPhoneCount:I

    .line 130
    iget v2, p0, Lcom/android/settings_ex/sim/SimSettings;->mPhoneCount:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/settings_ex/sim/SimSettings;->mCallState:[I

    .line 131
    iget v2, p0, Lcom/android/settings_ex/sim/SimSettings;->mPhoneCount:I

    new-array v2, v2, [Landroid/telephony/PhoneStateListener;

    iput-object v2, p0, Lcom/android/settings_ex/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 132
    invoke-direct {p0}, Lcom/android/settings_ex/sim/SimSettings;->listen()V

    .line 134
    iget-object v2, p0, Lcom/android/settings_ex/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/android/settings_ex/sim/SimSettings;->mPreferredDataSubscription:J

    .line 136
    invoke-direct {p0}, Lcom/android/settings_ex/sim/SimSettings;->createPreferences()V

    .line 137
    invoke-direct {p0}, Lcom/android/settings_ex/sim/SimSettings;->updateAllOptions()V

    .line 138
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/settings_ex/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings;->mDdsSwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 148
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onDestroy()V

    .line 149
    const-string v0, "SimSettings"

    const-string v1, "on onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p0}, Lcom/android/settings_ex/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/sim/SimSettings;->mDdsSwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 151
    invoke-direct {p0}, Lcom/android/settings_ex/sim/SimSettings;->unRegisterPhoneStateListener()V

    .line 152
    return-void
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 381
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onPause()V

    .line 382
    iput-boolean v4, p0, Lcom/android/settings_ex/sim/SimSettings;->inActivity:Z

    .line 383
    const-string v2, "SimSettings"

    const-string v3, "on Pause"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iput-boolean v4, p0, Lcom/android/settings_ex/sim/SimSettings;->dataDisableToastDisplayed:Z

    .line 385
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/android/settings_ex/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 386
    sget-object v2, Lcom/android/settings_ex/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

    .line 387
    .local v1, "simEnabler":Lcom/android/settings_ex/sim/MultiSimEnablerPreference;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->cleanUp()V

    .line 385
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    .end local v1    # "simEnabler":Lcom/android/settings_ex/sim/MultiSimEnablerPreference;
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 457
    instance-of v0, p2, Lcom/android/settings_ex/sim/SimSettings$SimPreference;

    if-eqz v0, :cond_1

    move-object v0, p2

    .line 458
    check-cast v0, Lcom/android/settings_ex/sim/SimSettings$SimPreference;

    check-cast p2, Lcom/android/settings_ex/sim/SimSettings$SimPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual {v0, p2}, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->createEditDialog(Lcom/android/settings_ex/sim/SimSettings$SimPreference;)V

    .line 463
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 459
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/android/settings_ex/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/sim/SimSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 393
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onResume()V

    .line 394
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/sim/SimSettings;->inActivity:Z

    .line 395
    const-string v0, "SimSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on Resume, number of slots = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/settings_ex/sim/SimSettings;->mNumSlots:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-direct {p0}, Lcom/android/settings_ex/sim/SimSettings;->initLTEPreference()V

    .line 397
    invoke-direct {p0}, Lcom/android/settings_ex/sim/SimSettings;->updateAllOptions()V

    .line 398
    return-void
.end method
