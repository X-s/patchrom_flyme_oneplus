.class public Lcom/android/settings_ex/sim/OPSimSettings;
.super Landroid/preference/PreferenceActivity;
.source "OPSimSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;
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

.field private static final KEY_CALLS_AND_SMS:Ljava/lang/String; = "sim_calls_and_sms"

.field private static final KEY_CELLULAR_DATA:Ljava/lang/String; = "sim_cellular_data"

.field private static final KEY_PRIMARY_SUB_SELECT:Ljava/lang/String; = "select_primary_sub"

.field private static final KEY_SIM1_SETTING:Ljava/lang/String; = "sim_setting1"

.field private static final KEY_SIM2_SETTING:Ljava/lang/String; = "sim_setting2"

.field private static final KEY_SMS:Ljava/lang/String; = "sim_sms"

.field private static final OP_DISPLAYNAME_SEPARATOR:Ljava/lang/String; = " - "

.field private static final SIM_ACTIVITIES_CATEGORY:Ljava/lang/String; = "sim_activities"

.field private static final SIM_CARD_CATEGORY:Ljava/lang/String; = "sim_cards"

.field private static final SIM_ENABLER_CATEGORY:Ljava/lang/String; = "sim_enablers"

.field private static final TAG:Ljava/lang/String; = "OPSimSettings"

.field private static mNumSlots:I

.field private static mSTKPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

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

.field private static mSimPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private dataDisableToastDisplayed:Z

.field private inActivity:Z

.field private mActivity:Landroid/content/Context;

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

.field private mCount:I

.field private mDdsSwitchReceiver:Landroid/content/BroadcastReceiver;

.field private mEntriesCallSms:[Ljava/lang/String;

.field private mEntriesData:[Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mNumSims:I

.field private mPhoneCount:I

.field private mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mPreferredDataSubscription:J

.field private mPrimarySubSelect:Landroid/preference/Preference;

.field private mSMS:Landroid/telephony/SubscriptionInfo;

.field private mSimPreferredCallSms:Landroid/preference/ListPreference;

.field private mSimPreferredData:Landroid/preference/ListPreference;

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

.field private mUpdateAvaiThread:Ljava/lang/Thread;

.field private startUpdateRunnable:Ljava/lang/Runnable;

.field private updateAvaiSubInfoRunnable:Ljava/lang/Runnable;

.field private updateHandler:Landroid/os/Handler;

.field private updatePreferenceRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    const/4 v0, 0x0

    sput v0, Lcom/android/settings_ex/sim/OPSimSettings;->mNumSlots:I

    .line 114
    sput-object v1, Lcom/android/settings_ex/sim/OPSimSettings;->mSimEnablers:Ljava/util/List;

    .line 116
    sput-object v1, Lcom/android/settings_ex/sim/OPSimSettings;->mSimPreferenceList:Ljava/util/List;

    .line 120
    sput-object v1, Lcom/android/settings_ex/sim/OPSimSettings;->mSTKPreferenceList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 142
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 107
    iput-object v1, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mAvailableSubInfos:Ljava/util/List;

    .line 108
    iput-object v1, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mSubInfoList:Ljava/util/List;

    .line 109
    iput-object v1, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/sim/OPSimSettings;->updateHandler:Landroid/os/Handler;

    .line 123
    iput-object v1, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mCellularData:Landroid/telephony/SubscriptionInfo;

    .line 124
    iput-object v1, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mCalls:Landroid/telephony/SubscriptionInfo;

    .line 125
    iput-object v1, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mSMS:Landroid/telephony/SubscriptionInfo;

    .line 133
    iput-boolean v2, p0, Lcom/android/settings_ex/sim/OPSimSettings;->dataDisableToastDisplayed:Z

    .line 139
    iput-object v1, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mEntriesCallSms:[Ljava/lang/String;

    .line 140
    iput-object v1, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mEntriesData:[Ljava/lang/String;

    .line 141
    iput-object v1, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mActivity:Landroid/content/Context;

    .line 212
    iput v2, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mCount:I

    .line 213
    new-instance v0, Lcom/android/settings_ex/sim/OPSimSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/sim/OPSimSettings$1;-><init>(Lcom/android/settings_ex/sim/OPSimSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mDdsSwitchReceiver:Landroid/content/BroadcastReceiver;

    .line 241
    new-instance v0, Lcom/android/settings_ex/sim/OPSimSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/sim/OPSimSettings$2;-><init>(Lcom/android/settings_ex/sim/OPSimSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/sim/OPSimSettings;->startUpdateRunnable:Ljava/lang/Runnable;

    .line 249
    new-instance v0, Lcom/android/settings_ex/sim/OPSimSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/sim/OPSimSettings$3;-><init>(Lcom/android/settings_ex/sim/OPSimSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/sim/OPSimSettings;->updatePreferenceRunnable:Ljava/lang/Runnable;

    .line 257
    new-instance v0, Lcom/android/settings_ex/sim/OPSimSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/sim/OPSimSettings$4;-><init>(Lcom/android/settings_ex/sim/OPSimSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/sim/OPSimSettings;->updateAvaiSubInfoRunnable:Ljava/lang/Runnable;

    .line 1069
    new-instance v0, Lcom/android/settings_ex/sim/OPSimSettings$9;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/sim/OPSimSettings$9;-><init>(Lcom/android/settings_ex/sim/OPSimSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mHandler:Landroid/os/Handler;

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/sim/OPSimSettings;)Landroid/telephony/SubscriptionManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/sim/OPSimSettings;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/sim/OPSimSettings;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/settings_ex/sim/OPSimSettings;

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mPreferredDataSubscription:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/sim/OPSimSettings;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/sim/OPSimSettings;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mEntriesCallSms:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings_ex/sim/OPSimSettings;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/sim/OPSimSettings;
    .param p1, "x1"    # J

    .prologue
    .line 71
    iput-wide p1, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mPreferredDataSubscription:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/sim/OPSimSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/sim/OPSimSettings;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mSimPreferredData:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/sim/OPSimSettings;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/sim/OPSimSettings;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mEntriesData:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/sim/OPSimSettings;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/sim/OPSimSettings;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mCallState:[I

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/sim/OPSimSettings;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/sim/OPSimSettings;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings_ex/sim/OPSimSettings;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/settings_ex/sim/OPSimSettings;J)Landroid/telephony/SubscriptionInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/sim/OPSimSettings;
    .param p1, "x1"    # J

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/sim/OPSimSettings;->findRecordBySubId(J)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings_ex/sim/OPSimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/sim/OPSimSettings;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings_ex/sim/OPSimSettings;->updateAllOptions()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings_ex/sim/OPSimSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/sim/OPSimSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings_ex/sim/OPSimSettings;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/sim/OPSimSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/sim/OPSimSettings;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mActivity:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/sim/OPSimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/sim/OPSimSettings;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings_ex/sim/OPSimSettings;->startUpdate()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/sim/OPSimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/sim/OPSimSettings;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings_ex/sim/OPSimSettings;->startUpdateAvaiInfoThread()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings_ex/sim/OPSimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/sim/OPSimSettings;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings_ex/sim/OPSimSettings;->updateAllOptionsWithoutGetList()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ex/sim/OPSimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/sim/OPSimSettings;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings_ex/sim/OPSimSettings;->updateAvailableSubInfos()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings_ex/sim/OPSimSettings;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/sim/OPSimSettings;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings_ex/sim/OPSimSettings;->updatePreferenceRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/sim/OPSimSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/sim/OPSimSettings;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings_ex/sim/OPSimSettings;->updateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/sim/OPSimSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/sim/OPSimSettings;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mSimPreferredCallSms:Landroid/preference/ListPreference;

    return-object v0
.end method

.method private createPreferences()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 314
    const v6, 0x7f060045

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/sim/OPSimSettings;->addPreferencesFromResource(I)V

    .line 315
    invoke-virtual {p0}, Lcom/android/settings_ex/sim/OPSimSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 316
    .local v1, "prefSet":Landroid/preference/PreferenceScreen;
    const-string v6, "select_primary_sub"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/sim/OPSimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    .line 319
    const-string v6, "sim_enablers"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/sim/OPSimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 322
    .local v4, "simEnablers":Landroid/preference/PreferenceCategory;
    const-string v6, "sim_setting1"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/sim/OPSimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 323
    .local v2, "sim1SettingCategory":Landroid/preference/PreferenceCategory;
    const-string v6, "sim_setting2"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/sim/OPSimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 326
    .local v3, "sim2SettingCategory":Landroid/preference/PreferenceCategory;
    new-instance v6, Ljava/util/ArrayList;

    sget v7, Lcom/android/settings_ex/sim/OPSimSettings;->mNumSlots:I

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mAvailableSubInfos:Ljava/util/List;

    .line 327
    new-instance v6, Ljava/util/ArrayList;

    sget v7, Lcom/android/settings_ex/sim/OPSimSettings;->mNumSlots:I

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v6, Lcom/android/settings_ex/sim/OPSimSettings;->mSimEnablers:Ljava/util/List;

    .line 330
    new-instance v6, Ljava/util/ArrayList;

    sget v7, Lcom/android/settings_ex/sim/OPSimSettings;->mNumSlots:I

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v6, Lcom/android/settings_ex/sim/OPSimSettings;->mSimPreferenceList:Ljava/util/List;

    .line 334
    new-instance v6, Ljava/util/ArrayList;

    sget v7, Lcom/android/settings_ex/sim/OPSimSettings;->mNumSlots:I

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v6, Lcom/android/settings_ex/sim/OPSimSettings;->mSTKPreferenceList:Ljava/util/List;

    .line 337
    sget v6, Lcom/android/settings_ex/sim/OPSimSettings;->mNumSlots:I

    add-int/lit8 v6, v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mEntriesCallSms:[Ljava/lang/String;

    .line 338
    sget v6, Lcom/android/settings_ex/sim/OPSimSettings;->mNumSlots:I

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mEntriesData:[Ljava/lang/String;

    .line 340
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v6, Lcom/android/settings_ex/sim/OPSimSettings;->mNumSlots:I

    if-ge v0, v6, :cond_4

    .line 341
    invoke-direct {p0, v0}, Lcom/android/settings_ex/sim/OPSimSettings;->findRecordBySlotId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v5

    .line 343
    .local v5, "sir":Landroid/telephony/SubscriptionInfo;
    sget v6, Lcom/android/settings_ex/sim/OPSimSettings;->mNumSlots:I

    if-le v6, v10, :cond_2

    .line 344
    sget-object v6, Lcom/android/settings_ex/sim/OPSimSettings;->mSimEnablers:Ljava/util/List;

    new-instance v7, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

    iget-object v8, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mActivity:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v7, v8, v5, v9, v0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;-><init>(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;Landroid/os/Handler;I)V

    invoke-interface {v6, v0, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 348
    if-nez v0, :cond_1

    .line 349
    sget-object v6, Lcom/android/settings_ex/sim/OPSimSettings;->mSimEnablers:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/preference/Preference;

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 359
    :goto_1
    sget-object v6, Lcom/android/settings_ex/sim/OPSimSettings;->mSimPreferenceList:Ljava/util/List;

    new-instance v7, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;

    iget-object v8, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mActivity:Landroid/content/Context;

    invoke-direct {v7, p0, v8, v5, v0}, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;-><init>(Lcom/android/settings_ex/sim/OPSimSettings;Landroid/content/Context;Landroid/telephony/SubscriptionInfo;I)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    if-nez v0, :cond_3

    .line 362
    sget-object v6, Lcom/android/settings_ex/sim/OPSimSettings;->mSimPreferenceList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/preference/Preference;

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 363
    invoke-direct {p0, v0}, Lcom/android/settings_ex/sim/OPSimSettings;->createSTKPreference(I)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 371
    :goto_2
    if-eqz v5, :cond_0

    iget v6, v5, Landroid/telephony/SubscriptionInfo;->mStatus:I

    iget-object v7, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-ne v6, v10, :cond_0

    .line 372
    iget v6, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mNumSims:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mNumSims:I

    .line 373
    iget-object v6, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 351
    :cond_1
    sget-object v6, Lcom/android/settings_ex/sim/OPSimSettings;->mSimEnablers:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/preference/Preference;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 355
    :cond_2
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 365
    :cond_3
    sget-object v6, Lcom/android/settings_ex/sim/OPSimSettings;->mSimPreferenceList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/preference/Preference;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 366
    invoke-direct {p0, v0}, Lcom/android/settings_ex/sim/OPSimSettings;->createSTKPreference(I)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 377
    .end local v5    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_4
    const-string v6, "sim_calls_and_sms"

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mSimPreferredCallSms:Landroid/preference/ListPreference;

    .line 378
    iget-object v6, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mSimPreferredCallSms:Landroid/preference/ListPreference;

    new-instance v7, Lcom/android/settings_ex/sim/OPSimSettings$5;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/sim/OPSimSettings$5;-><init>(Lcom/android/settings_ex/sim/OPSimSettings;)V

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 403
    const-string v6, "sim_cellular_data"

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mSimPreferredData:Landroid/preference/ListPreference;

    .line 404
    iget-object v6, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mSimPreferredData:Landroid/preference/ListPreference;

    new-instance v7, Lcom/android/settings_ex/sim/OPSimSettings$6;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/sim/OPSimSettings$6;-><init>(Lcom/android/settings_ex/sim/OPSimSettings;)V

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 424
    return-void
.end method

.method private createSTKPreference(I)Landroid/preference/Preference;
    .locals 5
    .param p1, "slotID"    # I

    .prologue
    const/4 v2, 0x1

    .line 433
    invoke-direct {p0, p1}, Lcom/android/settings_ex/sim/OPSimSettings;->findRecordBySlotId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 435
    .local v1, "sir":Landroid/telephony/SubscriptionInfo;
    new-instance v0, Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mActivity:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 436
    .local v0, "preference":Landroid/preference/Preference;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STK"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 437
    const v3, 0x7f0900a5

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 438
    if-eqz v1, :cond_0

    iget v3, v1, Landroid/telephony/SubscriptionInfo;->mStatus:I

    iget-object v4, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-ne v3, v2, :cond_0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 439
    new-instance v2, Lcom/android/settings_ex/sim/OPSimSettings$7;

    invoke-direct {v2, p0, p1}, Lcom/android/settings_ex/sim/OPSimSettings$7;-><init>(Lcom/android/settings_ex/sim/OPSimSettings;I)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 456
    sget-object v2, Lcom/android/settings_ex/sim/OPSimSettings;->mSTKPreferenceList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    return-object v0

    .line 438
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private findRecordBySlotId(I)Landroid/telephony/SubscriptionInfo;
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    .line 614
    iget-object v3, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mSubInfoList:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 615
    iget-object v3, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mSubInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 617
    .local v0, "availableSubInfoLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 618
    iget-object v3, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mSubInfoList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 619
    .local v2, "sir":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 626
    .end local v0    # "availableSubInfoLength":I
    .end local v1    # "i":I
    .end local v2    # "sir":Landroid/telephony/SubscriptionInfo;
    :goto_1
    return-object v2

    .line 617
    .restart local v0    # "availableSubInfoLength":I
    .restart local v1    # "i":I
    .restart local v2    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 626
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
    .line 598
    iget-object v3, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 600
    .local v0, "availableSubInfoLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 601
    iget-object v3, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 602
    .local v2, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    int-to-long v4, v3

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    .line 606
    .end local v2    # "sir":Landroid/telephony/SubscriptionInfo;
    :goto_1
    return-object v2

    .line 600
    .restart local v2    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 606
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
    .line 508
    move v0, p1

    .line 509
    .local v0, "i":I
    iget-object v1, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    new-instance v2, Lcom/android/settings_ex/sim/OPSimSettings$8;

    invoke-direct {v2, p0, p2, v0}, Lcom/android/settings_ex/sim/OPSimSettings$8;-><init>(Lcom/android/settings_ex/sim/OPSimSettings;II)V

    aput-object v2, v1, p1

    .line 517
    iget-object v1, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v1, v1, p1

    return-object v1
.end method

.method private getPreferredNetwork(I)I
    .locals 3
    .param p1, "sub"    # I

    .prologue
    .line 774
    const/4 v0, -0x1

    .line 776
    .local v0, "nwMode":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/sim/OPSimSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2, p1}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 780
    :goto_0
    return v0

    .line 778
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private initLTEPreference()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 730
    const-string v9, "persist.radio.primarycard"

    invoke-static {v9, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 733
    .local v1, "isPrimarySubFeatureEnable":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/sim/OPSimSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "config_primary_sub_setable"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v7, :cond_1

    move v3, v7

    .line 736
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

    invoke-direct {p0, v9}, Lcom/android/settings_ex/sim/OPSimSettings;->logd(Ljava/lang/String;)V

    .line 739
    if-eqz v1, :cond_0

    if-nez v3, :cond_2

    .line 740
    :cond_0
    const-string v7, "sim_activities"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/sim/OPSimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 742
    .local v5, "simActivities":Landroid/preference/PreferenceCategory;
    iget-object v7, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 760
    .end local v5    # "simActivities":Landroid/preference/PreferenceCategory;
    :goto_1
    return-void

    .end local v3    # "primarySetable":Z
    :cond_1
    move v3, v8

    .line 733
    goto :goto_0

    .line 746
    .restart local v3    # "primarySetable":Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/sim/OPSimSettings;->getCurrentPrimarySlot()I

    move-result v4

    .line 748
    .local v4, "primarySlot":I
    invoke-virtual {p0}, Lcom/android/settings_ex/sim/OPSimSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "config_lte_sub_select_mode"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_3

    move v0, v7

    .line 751
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

    invoke-direct {p0, v7}, Lcom/android/settings_ex/sim/OPSimSettings;->logd(Ljava/lang/String;)V

    .line 752
    const/4 v7, -0x1

    if-eq v7, v4, :cond_5

    .line 753
    invoke-direct {p0, v4}, Lcom/android/settings_ex/sim/OPSimSettings;->findRecordBySlotId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v6

    .line 754
    .local v6, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-nez v6, :cond_4

    const/4 v2, 0x0

    .line 755
    .local v2, "lteSummary":Ljava/lang/CharSequence;
    :goto_3
    iget-object v7, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    invoke-virtual {v7, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 759
    .end local v2    # "lteSummary":Ljava/lang/CharSequence;
    .end local v6    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :goto_4
    iget-object v7, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .end local v0    # "isManualMode":Z
    :cond_3
    move v0, v8

    .line 748
    goto :goto_2

    .line 754
    .restart local v0    # "isManualMode":Z
    .restart local v6    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_4
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_3

    .line 757
    .end local v6    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_5
    iget-object v7, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method private isEmpty(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 1091
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1092
    const/4 v0, 0x0

    .line 1094
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private listen()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 493
    iget-object v3, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mActivity:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 495
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mPhoneCount:I

    if-ge v0, v3, :cond_1

    .line 496
    iget-object v3, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 497
    .local v1, "subId":[I
    if-eqz v1, :cond_0

    .line 498
    aget v3, v1, v5

    if-lez v3, :cond_0

    .line 499
    iget-object v3, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mCallState:[I

    aget v4, v1, v5

    invoke-virtual {v2, v4}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v4

    aput v4, v3, v0

    .line 500
    aget v3, v1, v5

    invoke-direct {p0, v0, v3}, Lcom/android/settings_ex/sim/OPSimSettings;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 495
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 505
    .end local v1    # "subId":[I
    :cond_1
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1098
    const-string v0, "OPSimSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1102
    const-string v0, "OPSimSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    return-void
.end method

.method private setActivity(Landroid/preference/Preference;Landroid/telephony/SubscriptionInfo;)V
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "sir"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    .line 894
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 896
    .local v0, "key":Ljava/lang/String;
    const-string v1, "sim_cellular_data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 897
    iput-object p2, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mCellularData:Landroid/telephony/SubscriptionInfo;

    .line 904
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/sim/OPSimSettings;->updateActivitesCategory()V

    .line 905
    return-void

    .line 898
    :cond_1
    const-string v1, "sim_calls"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 899
    iput-object p2, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mCalls:Landroid/telephony/SubscriptionInfo;

    goto :goto_0

    .line 900
    :cond_2
    const-string v1, "sim_sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 901
    iput-object p2, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mSMS:Landroid/telephony/SubscriptionInfo;

    goto :goto_0
.end method

.method private startUpdate()V
    .locals 4

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/settings_ex/sim/OPSimSettings;->updateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/sim/OPSimSettings;->startUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 268
    iget-object v0, p0, Lcom/android/settings_ex/sim/OPSimSettings;->updateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/sim/OPSimSettings;->startUpdateRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 269
    return-void
.end method

.method private startUpdateAvaiInfoThread()V
    .locals 3

    .prologue
    .line 272
    iget-object v1, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mUpdateAvaiThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 274
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mUpdateAvaiThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 275
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mUpdateAvaiThread:Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/settings_ex/sim/OPSimSettings;->updateAvaiSubInfoRunnable:Ljava/lang/Runnable;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mUpdateAvaiThread:Ljava/lang/Thread;

    .line 282
    iget-object v1, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mUpdateAvaiThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 283
    :goto_0
    return-void

    .line 276
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method private stopUpdateAvaiInfo()V
    .locals 2

    .prologue
    .line 286
    iget-object v1, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mUpdateAvaiThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 288
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mUpdateAvaiThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 289
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mUpdateAvaiThread:Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 290
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method private unRegisterPhoneStateListener()V
    .locals 4

    .prologue
    .line 202
    iget-object v2, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mActivity:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 204
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mPhoneCount:I

    if-ge v0, v2, :cond_1

    .line 205
    iget-object v2, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 206
    iget-object v2, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 207
    iget-object v2, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 204
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    :cond_1
    return-void
.end method

.method private updateActivitesCategory()V
    .locals 15

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 553
    iget-object v10, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->isVoicePromptEnabled()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 554
    iget-object v10, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mSimPreferredCallSms:Landroid/preference/ListPreference;

    const-string v13, "0"

    invoke-virtual {v10, v13}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 564
    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    .line 565
    .local v1, "dataSubId":I
    iget-object v10, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    .line 566
    .local v0, "dataSlotId":I
    if-ltz v0, :cond_1

    .line 567
    iget-object v10, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mSimPreferredData:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 569
    :cond_1
    iget-object v10, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mEntriesCallSms:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings_ex/sim/OPSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f090a79

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v10, v12

    .line 570
    iget-object v10, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    .line 571
    .local v6, "subAvailableSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v6, :cond_4

    .line 572
    iget-object v10, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    .line 573
    .local v5, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v5, :cond_2

    .line 574
    iget-object v10, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mEntriesCallSms:[Ljava/lang/String;

    add-int/lit8 v13, v2, 0x1

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v10, v13

    .line 575
    iget-object v10, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mEntriesData:[Ljava/lang/String;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v10, v2

    .line 571
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 556
    .end local v0    # "dataSlotId":I
    .end local v1    # "dataSubId":I
    .end local v2    # "i":I
    .end local v5    # "sir":Landroid/telephony/SubscriptionInfo;
    .end local v6    # "subAvailableSize":I
    :cond_3
    iget-object v10, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v8

    .line 557
    .local v8, "voiceSubId":I
    iget-object v10, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v7

    .line 558
    .local v7, "voiceSlotId":I
    if-ltz v7, :cond_0

    .line 559
    add-int/lit8 v9, v7, 0x1

    .line 560
    .local v9, "voiceValue":I
    iget-object v10, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mSimPreferredCallSms:Landroid/preference/ListPreference;

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 579
    .end local v7    # "voiceSlotId":I
    .end local v8    # "voiceSubId":I
    .end local v9    # "voiceValue":I
    .restart local v0    # "dataSlotId":I
    .restart local v1    # "dataSubId":I
    .restart local v2    # "i":I
    .restart local v6    # "subAvailableSize":I
    :cond_4
    iget-object v10, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mSimPreferredCallSms:Landroid/preference/ListPreference;

    iget-object v13, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mEntriesCallSms:[Ljava/lang/String;

    invoke-virtual {v10, v13}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 580
    iget-object v10, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mSimPreferredData:Landroid/preference/ListPreference;

    iget-object v13, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mEntriesData:[Ljava/lang/String;

    invoke-virtual {v10, v13}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 582
    iget-object v10, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mSimPreferredCallSms:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 583
    .local v3, "nCallsms":I
    iget-object v10, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mSimPreferredCallSms:Landroid/preference/ListPreference;

    iget-object v13, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mEntriesCallSms:[Ljava/lang/String;

    aget-object v13, v13, v3

    invoke-virtual {v10, v13}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 585
    iget-object v10, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mSimPreferredData:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 586
    .local v4, "nData":I
    iget-object v10, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mSimPreferredData:Landroid/preference/ListPreference;

    iget-object v13, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mEntriesData:[Ljava/lang/String;

    aget-object v13, v13, v4

    invoke-virtual {v10, v13}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 588
    iget-object v13, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mSimPreferredCallSms:Landroid/preference/ListPreference;

    iget v10, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mNumSims:I

    if-le v10, v11, :cond_5

    move v10, v11

    :goto_2
    invoke-virtual {v13, v10}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 589
    iget-object v10, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mSimPreferredData:Landroid/preference/ListPreference;

    iget v13, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mNumSims:I

    if-le v13, v11, :cond_6

    :goto_3
    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 591
    return-void

    :cond_5
    move v10, v12

    .line 588
    goto :goto_2

    :cond_6
    move v11, v12

    .line 589
    goto :goto_3
.end method

.method private updateAllOptions()V
    .locals 2

    .prologue
    .line 472
    const-string v0, "OPSimSettings"

    const-string v1, "updateAllOptions"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v0, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mSubInfoList:Ljava/util/List;

    .line 474
    invoke-direct {p0}, Lcom/android/settings_ex/sim/OPSimSettings;->updateSimSlotValues()V

    .line 475
    invoke-direct {p0}, Lcom/android/settings_ex/sim/OPSimSettings;->updateActivitesCategory()V

    .line 476
    invoke-direct {p0}, Lcom/android/settings_ex/sim/OPSimSettings;->updateSimEnablers()V

    .line 478
    invoke-direct {p0}, Lcom/android/settings_ex/sim/OPSimSettings;->updateSTKPrefrerence()V

    .line 480
    return-void
.end method

.method private updateAllOptionsWithoutGetList()V
    .locals 2

    .prologue
    .line 483
    const-string v0, "OPSimSettings"

    const-string v1, "updateAllOptions without get list"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-direct {p0}, Lcom/android/settings_ex/sim/OPSimSettings;->updateSimSlotValues()V

    .line 485
    invoke-direct {p0}, Lcom/android/settings_ex/sim/OPSimSettings;->updateActivitesCategory()V

    .line 486
    invoke-direct {p0}, Lcom/android/settings_ex/sim/OPSimSettings;->updateSimEnablers()V

    .line 488
    invoke-direct {p0}, Lcom/android/settings_ex/sim/OPSimSettings;->updateSTKPrefrerence()V

    .line 490
    return-void
.end method

.method private updateAvailableSubInfos()V
    .locals 4

    .prologue
    .line 298
    iget-object v2, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 299
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mNumSims:I

    .line 300
    iget-object v2, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mSubInfoList:Ljava/util/List;

    .line 301
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/settings_ex/sim/OPSimSettings;->mNumSlots:I

    if-ge v0, v2, :cond_1

    .line 302
    invoke-direct {p0, v0}, Lcom/android/settings_ex/sim/OPSimSettings;->findRecordBySlotId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 304
    .local v1, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v1, :cond_0

    iget v2, v1, Landroid/telephony/SubscriptionInfo;->mStatus:I

    iget-object v3, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 305
    iget v2, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mNumSims:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mNumSims:I

    .line 306
    iget-object v2, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 309
    .end local v1    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_1
    return-void
.end method

.method private updateSTKPrefrerence()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 464
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/android/settings_ex/sim/OPSimSettings;->mSTKPreferenceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 465
    invoke-direct {p0, v0}, Lcom/android/settings_ex/sim/OPSimSettings;->findRecordBySlotId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 466
    .local v1, "sir":Landroid/telephony/SubscriptionInfo;
    sget-object v2, Lcom/android/settings_ex/sim/OPSimSettings;->mSTKPreferenceList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    if-eqz v1, :cond_0

    iget v3, v1, Landroid/telephony/SubscriptionInfo;->mStatus:I

    iget-object v5, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-ne v3, v4, :cond_0

    move v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 464
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 466
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 469
    .end local v1    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_1
    return-void
.end method

.method private updateSimEnablers()V
    .locals 3

    .prologue
    .line 1084
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/android/settings_ex/sim/OPSimSettings;->mSimEnablers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1085
    sget-object v2, Lcom/android/settings_ex/sim/OPSimSettings;->mSimEnablers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

    .line 1086
    .local v1, "simEnabler":Lcom/android/settings_ex/sim/MultiSimEnablerPreference;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->update()V

    .line 1084
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1088
    .end local v1    # "simEnabler":Lcom/android/settings_ex/sim/MultiSimEnablerPreference;
    :cond_1
    return-void
.end method

.method private updateSimSlotValues()V
    .locals 3

    .prologue
    .line 532
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/android/settings_ex/sim/OPSimSettings;->mSimPreferenceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 533
    sget-object v2, Lcom/android/settings_ex/sim/OPSimSettings;->mSimPreferenceList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;

    .line 534
    .local v1, "pref":Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;
    if-eqz v1, :cond_0

    .line 535
    invoke-virtual {v1}, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->update()V

    .line 532
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 539
    .end local v1    # "pref":Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;
    :cond_1
    return-void
.end method


# virtual methods
.method public getCurrentPrimarySlot()I
    .locals 3

    .prologue
    .line 763
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    sget v2, Lcom/android/settings_ex/sim/OPSimSettings;->mNumSlots:I

    if-ge v1, v2, :cond_2

    .line 764
    invoke-direct {p0, v1}, Lcom/android/settings_ex/sim/OPSimSettings;->getPreferredNetwork(I)I

    move-result v0

    .line 765
    .local v0, "current":I
    const/16 v2, 0x14

    if-eq v0, v2, :cond_0

    const/16 v2, 0x12

    if-ne v0, v2, :cond_1

    .line 770
    .end local v0    # "current":I
    .end local v1    # "index":I
    :cond_0
    :goto_1
    return v1

    .line 763
    .restart local v0    # "current":I
    .restart local v1    # "index":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 770
    .end local v0    # "current":I
    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 148
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 149
    const-string v3, "OPSimSettings"

    const-string v4, "on onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iput-object p0, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mActivity:Landroid/content/Context;

    .line 151
    iget-object v3, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mActivity:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 152
    iget-object v3, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mActivity:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 155
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mSubInfoList:Ljava/util/List;

    if-nez v3, :cond_0

    .line 156
    iget-object v3, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mSubInfoList:Ljava/util/List;

    .line 159
    :cond_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v3

    sput v3, Lcom/android/settings_ex/sim/OPSimSettings;->mNumSlots:I

    .line 160
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mPhoneCount:I

    .line 161
    iget v3, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mPhoneCount:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mCallState:[I

    .line 162
    iget v3, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mPhoneCount:I

    new-array v3, v3, [Landroid/telephony/PhoneStateListener;

    iput-object v3, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 163
    invoke-direct {p0}, Lcom/android/settings_ex/sim/OPSimSettings;->listen()V

    .line 165
    iget-object v3, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v3

    int-to-long v4, v3

    iput-wide v4, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mPreferredDataSubscription:J

    .line 167
    invoke-direct {p0}, Lcom/android/settings_ex/sim/OPSimSettings;->createPreferences()V

    .line 169
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 171
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    const-string v3, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    iget-object v3, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mActivity:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mDdsSwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 176
    invoke-virtual {p0}, Lcom/android/settings_ex/sim/OPSimSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 177
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 178
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 181
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 185
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 186
    const-string v0, "OPSimSettings"

    const-string v1, "on onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mActivity:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mDdsSwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 188
    invoke-direct {p0}, Lcom/android/settings_ex/sim/OPSimSettings;->unRegisterPhoneStateListener()V

    .line 189
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 193
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 194
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/android/settings_ex/sim/OPSimSettings;->finish()V

    .line 196
    const/4 v1, 0x1

    .line 198
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 707
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 708
    invoke-direct {p0}, Lcom/android/settings_ex/sim/OPSimSettings;->stopUpdateAvaiInfo()V

    .line 709
    iget-object v2, p0, Lcom/android/settings_ex/sim/OPSimSettings;->updateHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings_ex/sim/OPSimSettings;->startUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 710
    iget-object v2, p0, Lcom/android/settings_ex/sim/OPSimSettings;->updateHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings_ex/sim/OPSimSettings;->updatePreferenceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 711
    iput-boolean v4, p0, Lcom/android/settings_ex/sim/OPSimSettings;->inActivity:Z

    .line 712
    const-string v2, "OPSimSettings"

    const-string v3, "on Pause"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iput-boolean v4, p0, Lcom/android/settings_ex/sim/OPSimSettings;->dataDisableToastDisplayed:Z

    .line 714
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/android/settings_ex/sim/OPSimSettings;->mSimEnablers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 715
    sget-object v2, Lcom/android/settings_ex/sim/OPSimSettings;->mSimEnablers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

    .line 716
    .local v1, "simEnabler":Lcom/android/settings_ex/sim/MultiSimEnablerPreference;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->cleanUp()V

    .line 714
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 718
    .end local v1    # "simEnabler":Lcom/android/settings_ex/sim/MultiSimEnablerPreference;
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 786
    instance-of v0, p2, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;

    if-eqz v0, :cond_1

    move-object v0, p2

    .line 787
    check-cast v0, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;

    check-cast p2, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual {v0, p2}, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->createEditDialog(Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;)V

    .line 792
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 788
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/android/settings_ex/sim/OPSimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/sim/OPSimSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 722
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 723
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/sim/OPSimSettings;->inActivity:Z

    .line 724
    const-string v0, "OPSimSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on Resume, number of slots = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/settings_ex/sim/OPSimSettings;->mNumSlots:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    invoke-direct {p0}, Lcom/android/settings_ex/sim/OPSimSettings;->initLTEPreference()V

    .line 726
    invoke-direct {p0}, Lcom/android/settings_ex/sim/OPSimSettings;->updateAllOptions()V

    .line 727
    return-void
.end method
