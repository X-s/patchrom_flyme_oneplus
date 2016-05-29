.class public Lcom/android/settings_ex/deviceinfo/SimStatus;
.super Landroid/preference/PreferenceActivity;
.source "SimStatus.java"


# static fields
.field static final CB_AREA_INFO_RECEIVED_ACTION:Ljava/lang/String; = "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

.field static final CB_AREA_INFO_SENDER_PERMISSION:Ljava/lang/String; = "android.permission.RECEIVE_EMERGENCY_BROADCAST"

.field private static final COUNTRY_ABBREVIATION_BRAZIL:Ljava/lang/String; = "br"

.field static final GET_LATEST_CB_AREA_INFO_ACTION:Ljava/lang/String; = "android.cellbroadcastreceiver.GET_LATEST_CB_AREA_INFO"

.field private static final KEY_DATA_STATE:Ljava/lang/String; = "data_state"

.field private static final KEY_IMEI:Ljava/lang/String; = "imei"

.field private static final KEY_IMEI_SV:Ljava/lang/String; = "imei_sv"

.field private static final KEY_LATEST_AREA_INFO:Ljava/lang/String; = "latest_area_info"

.field private static final KEY_NETWORK_TYPE:Ljava/lang/String; = "network_type"

.field private static final KEY_OPERATOR_NAME:Ljava/lang/String; = "operator_name"

.field private static final KEY_PHONE_NUMBER:Ljava/lang/String; = "number"

.field private static final KEY_ROAMING_STATE:Ljava/lang/String; = "roaming_state"

.field private static final KEY_SERVICE_STATE:Ljava/lang/String; = "service_state"

.field private static final KEY_SIGNAL_STRENGTH:Ljava/lang/String; = "signal_strength"

.field private static final TAG:Ljava/lang/String; = "SimStatus"


# instance fields
.field private mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mDefaultText:Ljava/lang/String;

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mListView:Landroid/widget/ListView;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRes:Landroid/content/res/Resources;

.field private mSelectableSubInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mShowLatestAreaInfo:Z

.field private mSignalStrength:Landroid/preference/Preference;

.field private mSir:Landroid/telephony/SubscriptionInfo;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabWidget:Landroid/widget/TabWidget;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 115
    new-instance v0, Lcom/android/settings_ex/deviceinfo/SimStatus$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/SimStatus$1;-><init>(Lcom/android/settings_ex/deviceinfo/SimStatus;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 394
    new-instance v0, Lcom/android/settings_ex/deviceinfo/SimStatus$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/SimStatus$3;-><init>(Lcom/android/settings_ex/deviceinfo/SimStatus;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 412
    new-instance v0, Lcom/android/settings_ex/deviceinfo/SimStatus$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/SimStatus$4;-><init>(Lcom/android/settings_ex/deviceinfo/SimStatus;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/deviceinfo/SimStatus;)Landroid/telephony/SubscriptionInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/SimStatus;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/deviceinfo/SimStatus;Landroid/telephony/SubscriptionInfo;)Landroid/telephony/SubscriptionInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/SimStatus;
    .param p1, "x1"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/deviceinfo/SimStatus;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/SimStatus;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings_ex/deviceinfo/SimStatus;->updateAreaInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/deviceinfo/SimStatus;)Landroid/widget/TabHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/SimStatus;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/deviceinfo/SimStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/SimStatus;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->updateDataState()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/deviceinfo/SimStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/SimStatus;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/deviceinfo/SimStatus;Landroid/telephony/ServiceState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/SimStatus;
    .param p1, "x1"    # Landroid/telephony/ServiceState;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings_ex/deviceinfo/SimStatus;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings_ex/deviceinfo/SimStatus;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/SimStatus;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/deviceinfo/SimStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/SimStatus;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->updatePhoneInfos()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings_ex/deviceinfo/SimStatus;)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/SimStatus;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/deviceinfo/SimStatus;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/SimStatus;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/deviceinfo/SimStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/SimStatus;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->updatePreference()V

    return-void
.end method

.method private buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 219
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/SimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 220
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 223
    :cond_0
    return-void
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 226
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    iget-object p2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mDefaultText:Ljava/lang/String;

    .line 230
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/SimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 231
    .local v0, "preference":Landroid/preference/Preference;
    if-eqz v0, :cond_1

    .line 232
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 234
    :cond_1
    return-void
.end method

.method private updateAreaInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "areaInfo"    # Ljava/lang/String;

    .prologue
    .line 305
    if-eqz p1, :cond_0

    .line 306
    const-string v0, "latest_area_info"

    invoke-direct {p0, v0, p1}, Lcom/android/settings_ex/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_0
    return-void
.end method

.method private updateDataState()V
    .locals 4

    .prologue
    .line 254
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(Lcom/android/internal/telephony/PhoneConstants$DataState;)I

    move-result v1

    .line 257
    .local v1, "state":I
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09014f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "display":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 274
    :goto_0
    const-string v2, "data_state"

    invoke-direct {p0, v2, v0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    return-void

    .line 261
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09014d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 262
    goto :goto_0

    .line 264
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09014e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 265
    goto :goto_0

    .line 267
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09014c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 268
    goto :goto_0

    .line 270
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09014b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 259
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNetworkType()V
    .locals 6

    .prologue
    .line 238
    const/4 v2, 0x0

    .line 239
    .local v2, "networktype":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    .line 240
    .local v3, "subId":I
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v0

    .line 242
    .local v0, "actualDataNetworkType":I
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v1

    .line 244
    .local v1, "actualVoiceNetworkType":I
    if-eqz v0, :cond_1

    .line 245
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v2

    .line 250
    :cond_0
    :goto_0
    const-string v4, "network_type"

    invoke-direct {p0, v4, v2}, Lcom/android/settings_ex/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    return-void

    .line 246
    :cond_1
    if-eqz v1, :cond_0

    .line 247
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private updatePhoneInfos()V
    .locals 3

    .prologue
    .line 363
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_0

    .line 364
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 366
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    if-nez v0, :cond_1

    .line 369
    const-string v1, "SimStatus"

    const-string v2, "Unable to locate a phone object for the given Subscription ID."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    :goto_0
    return-void

    .line 373
    .restart local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 374
    new-instance v1, Lcom/android/settings_ex/deviceinfo/SimStatus$2;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings_ex/deviceinfo/SimStatus$2;-><init>(Lcom/android/settings_ex/deviceinfo/SimStatus;I)V

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    goto :goto_0
.end method

.method private updatePreference()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 337
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-eq v3, v6, :cond_0

    .line 339
    const-string v3, "br"

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getSimCountryIso(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 341
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mShowLatestAreaInfo:Z

    .line 345
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v2

    .line 346
    .local v2, "rawNumber":Ljava/lang/String;
    const/4 v0, 0x0

    .line 347
    .local v0, "formattedNumber":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 348
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    :cond_1
    const-string v3, "number"

    invoke-direct {p0, v3, v0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v3, v6, :cond_3

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v1

    .line 354
    .local v1, "imei":Ljava/lang/String;
    :goto_0
    const-string v3, "imei"

    invoke-direct {p0, v3, v1}, Lcom/android/settings_ex/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v3, "imei_sv"

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings_ex/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-boolean v3, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mShowLatestAreaInfo:Z

    if-nez v3, :cond_2

    .line 358
    const-string v3, "latest_area_info"

    invoke-direct {p0, v3}, Lcom/android/settings_ex/deviceinfo/SimStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 360
    :cond_2
    return-void

    .line 352
    .end local v1    # "imei":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 5
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 278
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 279
    .local v1, "state":I
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09014f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "display":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 294
    :goto_0
    const-string v2, "service_state"

    invoke-direct {p0, v2, v0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 297
    const-string v2, "roaming_state"

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f090146

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :goto_1
    const-string v2, "operator_name"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    return-void

    .line 283
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090142

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 284
    goto :goto_0

    .line 287
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090143

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 288
    goto :goto_0

    .line 290
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090145

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 299
    :cond_0
    const-string v2, "roaming_state"

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f090147

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 281
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 139
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    .line 140
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/SimStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 142
    const v2, 0x7f060020

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/SimStatus;->addPreferencesFromResource(I)V

    .line 144
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    .line 145
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09012b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mDefaultText:Ljava/lang/String;

    .line 147
    const-string v2, "signal_strength"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/SimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSignalStrength:Landroid/preference/Preference;

    .line 149
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 150
    invoke-static {p0, v0}, Lcom/android/settings_ex/Utils;->findRecordBySlotId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 151
    .local v1, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v1, :cond_0

    .line 152
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    .end local v1    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    :goto_1
    iput-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    .line 157
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    .line 158
    const v2, 0x7f0400d5

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/SimStatus;->setContentView(I)V

    .line 160
    const v2, 0x1020012

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/SimStatus;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TabHost;

    iput-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    .line 161
    const v2, 0x1020013

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/SimStatus;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TabWidget;

    iput-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTabWidget:Landroid/widget/TabWidget;

    .line 162
    const v2, 0x102000a

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/SimStatus;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mListView:Landroid/widget/ListView;

    .line 164
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->setup()V

    .line 165
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 166
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 168
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 169
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v2}, Lcom/android/settings_ex/deviceinfo/SimStatus;->buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 156
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 174
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->updatePhoneInfos()V

    .line 175
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 203
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 205
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 209
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mShowLatestAreaInfo:Z

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 212
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 179
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 180
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->updatePreference()V

    .line 183
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/SimStatus;->updateSignalStrength(Landroid/telephony/SignalStrength;)V

    .line 184
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/SimStatus;->updateServiceState(Landroid/telephony/ServiceState;)V

    .line 185
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->updateDataState()V

    .line 186
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x141

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 190
    iget-boolean v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mShowLatestAreaInfo:Z

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/settings_ex/deviceinfo/SimStatus;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 194
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.cellbroadcastreceiver.GET_LATEST_CB_AREA_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 195
    .local v0, "getLatestIntent":Landroid/content/Intent;
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/SimStatus;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 199
    .end local v0    # "getLatestIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method updateSignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 10
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    const/4 v9, 0x1

    const/4 v6, -0x1

    .line 311
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSignalStrength:Landroid/preference/Preference;

    if-eqz v4, :cond_4

    .line 312
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 313
    .local v3, "state":I
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 315
    .local v0, "r":Landroid/content/res/Resources;
    if-eq v9, v3, :cond_0

    const/4 v4, 0x3

    if-ne v4, v3, :cond_1

    .line 317
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSignalStrength:Landroid/preference/Preference;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 320
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v2

    .line 321
    .local v2, "signalDbm":I
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getAsuLevel()I

    move-result v1

    .line 323
    .local v1, "signalAsu":I
    if-ne v6, v2, :cond_2

    .line 324
    const/4 v2, 0x0

    .line 327
    :cond_2
    if-ne v6, v1, :cond_3

    .line 328
    const/4 v1, 0x0

    .line 331
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSignalStrength:Landroid/preference/Preference;

    const v5, 0x7f090a75

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v0, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 334
    .end local v0    # "r":Landroid/content/res/Resources;
    .end local v1    # "signalAsu":I
    .end local v2    # "signalDbm":I
    .end local v3    # "state":I
    :cond_4
    return-void
.end method
