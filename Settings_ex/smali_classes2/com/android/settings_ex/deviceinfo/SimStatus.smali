.class public Lcom/android/settings_ex/deviceinfo/SimStatus;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "SimStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/deviceinfo/SimStatus$1;,
        Lcom/android/settings_ex/deviceinfo/SimStatus$2;,
        Lcom/android/settings_ex/deviceinfo/SimStatus$3;,
        Lcom/android/settings_ex/deviceinfo/SimStatus$4;
    }
.end annotation


# static fields
.field static final CB_AREA_INFO_RECEIVED_ACTION:Ljava/lang/String; = "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

.field static final CB_AREA_INFO_SENDER_PERMISSION:Ljava/lang/String; = "android.permission.RECEIVE_EMERGENCY_BROADCAST"

.field private static final COUNTRY_ABBREVIATION_BRAZIL:Ljava/lang/String; = "br"

.field static final GET_LATEST_CB_AREA_INFO_ACTION:Ljava/lang/String; = "android.cellbroadcastreceiver.GET_LATEST_CB_AREA_INFO"

.field private static final KEY_DATA_STATE:Ljava/lang/String; = "data_state"

.field private static final KEY_ICCID:Ljava/lang/String; = "iccid"

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

.field private mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private mDefaultText:Ljava/lang/String;

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mListView:Landroid/widget/ListView;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRes:Landroid/content/res/Resources;

.field private mSS:Landroid/telephony/ServiceState;

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

.field private mShowICCID:Z

.field private mShowLatestAreaInfo:Z

.field private mSignalStrength:Landroid/support/v7/preference/Preference;

.field private mSir:Landroid/telephony/SubscriptionInfo;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabWidget:Landroid/widget/TabWidget;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/deviceinfo/SimStatus;)Landroid/telephony/PhoneStateListener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/deviceinfo/SimStatus;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/deviceinfo/SimStatus;)Landroid/telephony/SubscriptionInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings_ex/deviceinfo/SimStatus;)Landroid/widget/TabHost;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings_ex/deviceinfo/SimStatus;)Landroid/widget/TabHost$OnTabChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings_ex/deviceinfo/SimStatus;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings_ex/deviceinfo/SimStatus;Landroid/telephony/SubscriptionInfo;)Landroid/telephony/SubscriptionInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/deviceinfo/SimStatus;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/deviceinfo/SimStatus;->buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/deviceinfo/SimStatus;Ljava/lang/String;)V
    .locals 0
    .param p1, "areaInfo"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/deviceinfo/SimStatus;->updateAreaInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings_ex/deviceinfo/SimStatus;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->updateDataState()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings_ex/deviceinfo/SimStatus;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->updateNetworkType()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings_ex/deviceinfo/SimStatus;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->updatePhoneInfos()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings_ex/deviceinfo/SimStatus;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->updatePreference()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/settings_ex/deviceinfo/SimStatus;Landroid/telephony/ServiceState;)V
    .locals 0
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/deviceinfo/SimStatus;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 115
    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 131
    new-instance v0, Lcom/android/settings_ex/deviceinfo/SimStatus$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/SimStatus$1;-><init>(Lcom/android/settings_ex/deviceinfo/SimStatus;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 151
    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSS:Landroid/telephony/ServiceState;

    .line 188
    new-instance v0, Lcom/android/settings_ex/deviceinfo/SimStatus$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/SimStatus$2;-><init>(Lcom/android/settings_ex/deviceinfo/SimStatus;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 561
    new-instance v0, Lcom/android/settings_ex/deviceinfo/SimStatus$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/SimStatus$3;-><init>(Lcom/android/settings_ex/deviceinfo/SimStatus;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 582
    new-instance v0, Lcom/android/settings_ex/deviceinfo/SimStatus$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/SimStatus$4;-><init>(Lcom/android/settings_ex/deviceinfo/SimStatus;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    .line 86
    return-void
.end method

.method private buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 591
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    .line 590
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 300
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/SimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 301
    .local v0, "pref":Landroid/support/v7/preference/Preference;
    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 299
    :cond_0
    return-void
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 307
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    iget-object p2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mDefaultText:Ljava/lang/String;

    .line 311
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/SimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 312
    .local v0, "preference":Landroid/support/v7/preference/Preference;
    if-eqz v0, :cond_1

    .line 313
    invoke-virtual {v0, p2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 306
    :cond_1
    return-void
.end method

.method private updateAreaInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "areaInfo"    # Ljava/lang/String;

    .prologue
    .line 437
    if-eqz p1, :cond_0

    .line 438
    const-string/jumbo v0, "latest_area_info"

    invoke-direct {p0, v0, p1}, Lcom/android/settings_ex/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :cond_0
    return-void
.end method

.method private updateDataState()V
    .locals 4

    .prologue
    .line 378
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(Lcom/android/internal/telephony/PhoneConstants$DataState;)I

    move-result v1

    .line 380
    .local v1, "state":I
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0e04e3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, "display":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 397
    :goto_0
    const-string/jumbo v2, "data_state"

    invoke-direct {p0, v2, v0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    return-void

    .line 384
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0e04e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 387
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0e04e2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 390
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0e04e0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 393
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0e04df

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 382
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNetworkType()V
    .locals 13

    .prologue
    const/16 v12, 0xd

    .line 319
    const/4 v5, 0x0

    .line 320
    .local v5, "networktype":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    .line 321
    .local v7, "subId":I
    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 322
    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    .line 321
    invoke-virtual {v8, v9}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v0

    .line 323
    .local v0, "actualDataNetworkType":I
    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 324
    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    .line 323
    invoke-virtual {v8, v9}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v1

    .line 325
    .local v1, "actualVoiceNetworkType":I
    if-eqz v0, :cond_5

    .line 326
    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v5

    .line 331
    .end local v5    # "networktype":Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v6, 0x0

    .line 335
    .local v6, "show4GForLTE":Z
    :try_start_0
    sget-object v8, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    const-string/jumbo v9, "com.android.systemui"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/app/Application;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 337
    .local v2, "con":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string/jumbo v9, "config_show4GForLTE"

    .line 338
    const-string/jumbo v10, "bool"

    const-string/jumbo v11, "com.android.systemui"

    .line 337
    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 339
    .local v4, "id":I
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 345
    .end local v2    # "con":Landroid/content/Context;
    .end local v4    # "id":I
    .end local v6    # "show4GForLTE":Z
    :goto_1
    if-eqz v5, :cond_1

    if-eqz v6, :cond_1

    .line 346
    const-string/jumbo v8, "LTE"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 347
    const-string/jumbo v5, "4G"

    .line 354
    :cond_1
    :goto_2
    invoke-static {}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierOneSupported()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 355
    if-eq v12, v0, :cond_2

    .line 356
    if-ne v12, v1, :cond_3

    .line 357
    :cond_2
    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8, v7}, Landroid/telephony/TelephonyManager;->isImsRegisteredForSubscriber(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 358
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 359
    const v9, 0x7f0e1084

    .line 358
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 367
    :cond_3
    :goto_3
    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSS:Landroid/telephony/ServiceState;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->isUsingCarrierAggregation()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 368
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string/jumbo v8, "4G"

    invoke-static {v8, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 369
    const-string/jumbo v5, "4G+"

    .line 373
    :cond_4
    const-string/jumbo v8, "network_type"

    invoke-direct {p0, v8, v5}, Lcom/android/settings_ex/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    return-void

    .line 327
    .restart local v5    # "networktype":Ljava/lang/String;
    :cond_5
    if-eqz v1, :cond_0

    .line 328
    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "networktype":Ljava/lang/String;
    goto :goto_0

    .line 340
    .end local v5    # "networktype":Ljava/lang/String;
    .restart local v6    # "show4GForLTE":Z
    :catch_0
    move-exception v3

    .line 341
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v8, "SimStatus"

    const-string/jumbo v9, "NameNotFoundException for show4GFotLTE"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 348
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6    # "show4GForLTE":Z
    :cond_6
    const-string/jumbo v8, "LTE_CA"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 349
    const-string/jumbo v5, "4G_CA"

    .restart local v5    # "networktype":Ljava/lang/String;
    goto :goto_2

    .line 361
    .end local v5    # "networktype":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e1085

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "networktype":Ljava/lang/String;
    goto :goto_3
.end method

.method private updatePhoneInfos()V
    .locals 4

    .prologue
    .line 523
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_2

    .line 526
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 525
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 527
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 528
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    .line 527
    if-eqz v1, :cond_2

    .line 529
    if-nez v0, :cond_0

    .line 530
    const-string/jumbo v1, "SimStatus"

    const-string/jumbo v2, "Unable to locate a phone object for the given Subscription ID."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    return-void

    .line 534
    :cond_0
    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 536
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1

    .line 537
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 538
    const/4 v3, 0x0

    .line 537
    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 541
    :cond_1
    new-instance v1, Lcom/android/settings_ex/deviceinfo/SimStatus$5;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings_ex/deviceinfo/SimStatus$5;-><init>(Lcom/android/settings_ex/deviceinfo/SimStatus;I)V

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 522
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_2
    return-void
.end method

.method private updatePreference()V
    .locals 5

    .prologue
    .line 490
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 492
    const-string/jumbo v2, "br"

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 493
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    .line 492
    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getSimCountryIso(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 494
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mShowLatestAreaInfo:Z

    .line 497
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 498
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    .line 497
    invoke-virtual {v2, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 500
    .local v0, "carrierConfig":Landroid/os/PersistableBundle;
    const-string/jumbo v2, "show_iccid_in_sim_status_bool"

    .line 499
    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mShowICCID:Z

    .line 504
    const-string/jumbo v2, "number"

    .line 505
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-static {v3, v4}, Lcom/android/settings_exlib/DeviceInfoUtils;->getFormattedPhoneNumber(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v3

    .line 504
    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string/jumbo v2, "imei"

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const-string/jumbo v2, "imei_sv"

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-boolean v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mShowICCID:Z

    if-nez v2, :cond_2

    .line 510
    const-string/jumbo v2, "iccid"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/deviceinfo/SimStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 517
    :goto_0
    iget-boolean v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mShowLatestAreaInfo:Z

    if-nez v2, :cond_1

    .line 518
    const-string/jumbo v2, "latest_area_info"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/deviceinfo/SimStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 489
    :cond_1
    return-void

    .line 513
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v1

    .line 514
    .local v1, "iccid":Ljava/lang/String;
    const-string/jumbo v2, "iccid"

    invoke-direct {p0, v2, v1}, Lcom/android/settings_ex/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 5
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 402
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSS:Landroid/telephony/ServiceState;

    .line 404
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 405
    .local v1, "state":I
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0e04e3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "display":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 426
    :goto_0
    const-string/jumbo v2, "service_state"

    invoke-direct {p0, v2, v0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 429
    const-string/jumbo v2, "roaming_state"

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0e04da

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    :goto_1
    const-string/jumbo v2, "operator_name"

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/settings/utils/OPSNSUtils;->getLocalString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    return-void

    .line 409
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0e04d6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 413
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSignalStrength:Landroid/support/v7/preference/Preference;

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 417
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0e04d7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 420
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0e04d9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 422
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSignalStrength:Landroid/support/v7/preference/Preference;

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 431
    :cond_0
    const-string/jumbo v2, "roaming_state"

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0e04db

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 407
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 254
    const/16 v0, 0x2b

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 157
    const/4 v2, 0x0

    .line 156
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 158
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 159
    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/SimStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 160
    const-string/jumbo v1, "carrier_config"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/SimStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 162
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    .line 165
    const v1, 0x7f080027

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/SimStatus;->addPreferencesFromResource(I)V

    .line 167
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    .line 168
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0e04c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mDefaultText:Ljava/lang/String;

    .line 170
    const-string/jumbo v1, "signal_strength"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/SimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSignalStrength:Landroid/support/v7/preference/Preference;

    .line 172
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 173
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 155
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 211
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    if-nez v5, :cond_1

    .line 212
    iput-object v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    .line 242
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v4

    return-object v4

    .line 214
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    :cond_2
    iput-object v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    .line 216
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 217
    const v4, 0x7f040099

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 219
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f11008c

    .line 218
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 220
    .local v2, "prefs_container":Landroid/view/ViewGroup;
    invoke-static {p2, v3, v2, v6}, Lcom/android/settings_ex/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 221
    invoke-super {p0, p1, v2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 222
    .local v1, "prefs":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 224
    const v4, 0x1020012

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TabHost;

    iput-object v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    .line 225
    const v4, 0x1020013

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TabWidget;

    iput-object v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTabWidget:Landroid/widget/TabWidget;

    .line 226
    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mListView:Landroid/widget/ListView;

    .line 228
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->setup()V

    .line 229
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 230
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 232
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 233
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 236
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/oneplus/settings/utils/OPSNSUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 233
    invoke-direct {p0, v5, v6}, Lcom/android/settings_ex/deviceinfo/SimStatus;->buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 239
    :cond_3
    return-object v3
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 180
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 182
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 284
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 286
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 288
    const/4 v2, 0x0

    .line 287
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 290
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mShowLatestAreaInfo:Z

    if-eqz v0, :cond_1

    .line 291
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 283
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 259
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 260
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    .line 261
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->updatePreference()V

    .line 263
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/SimStatus;->updateSignalStrength(Landroid/telephony/SignalStrength;)V

    .line 264
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/SimStatus;->updateServiceState(Landroid/telephony/ServiceState;)V

    .line 265
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->updateDataState()V

    .line 266
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 267
    const/16 v3, 0x141

    .line 266
    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 270
    iget-boolean v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mShowLatestAreaInfo:Z

    if-eqz v1, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 272
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 273
    const-string/jumbo v4, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    .line 271
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 275
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.cellbroadcastreceiver.GET_LATEST_CB_AREA_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 276
    .local v0, "getLatestIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 277
    const-string/jumbo v3, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    .line 276
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 258
    .end local v0    # "getLatestIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 247
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 249
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->updatePhoneInfos()V

    .line 246
    return-void
.end method

.method updateSignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 10
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    const/4 v9, 0x0

    const/4 v6, -0x1

    const/4 v8, 0x1

    .line 443
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSignalStrength:Landroid/support/v7/preference/Preference;

    if-eqz v5, :cond_5

    .line 444
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    .line 447
    .local v4, "state":I
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->isAdded()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 448
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 459
    .local v1, "r":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    .line 460
    .local v0, "dataState":I
    if-ne v8, v4, :cond_2

    if-ne v8, v0, :cond_2

    .line 463
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSignalStrength:Landroid/support/v7/preference/Preference;

    const-string/jumbo v6, "0"

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 464
    return-void

    .line 450
    .end local v0    # "dataState":I
    .end local v1    # "r":Landroid/content/res/Resources;
    :cond_1
    const-string/jumbo v5, "SimStatus"

    const-string/jumbo v6, "fragment not attached to activity"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    return-void

    .line 461
    .restart local v0    # "dataState":I
    .restart local v1    # "r":Landroid/content/res/Resources;
    :cond_2
    const/4 v5, 0x3

    if-eq v5, v4, :cond_0

    .line 468
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v5

    if-nez v5, :cond_6

    .line 469
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v3

    .line 474
    .local v3, "signalDbm":I
    :goto_0
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getAsuLevel()I

    move-result v2

    .line 476
    .local v2, "signalAsu":I
    if-ne v6, v3, :cond_3

    .line 477
    const/4 v3, 0x0

    .line 480
    :cond_3
    if-ne v6, v2, :cond_4

    .line 481
    const/4 v2, 0x0

    .line 484
    :cond_4
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/SimStatus;->mSignalStrength:Landroid/support/v7/preference/Preference;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 485
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    .line 484
    const v7, 0x7f0e0dd6

    invoke-virtual {v1, v7, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 442
    .end local v0    # "dataState":I
    .end local v1    # "r":Landroid/content/res/Resources;
    .end local v2    # "signalAsu":I
    .end local v3    # "signalDbm":I
    .end local v4    # "state":I
    :cond_5
    return-void

    .line 471
    .restart local v0    # "dataState":I
    .restart local v1    # "r":Landroid/content/res/Resources;
    .restart local v4    # "state":I
    :cond_6
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v3

    .restart local v3    # "signalDbm":I
    goto :goto_0
.end method
