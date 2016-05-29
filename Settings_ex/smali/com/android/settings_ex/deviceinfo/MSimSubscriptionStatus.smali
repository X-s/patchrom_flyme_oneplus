.class public Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;
.super Landroid/preference/PreferenceActivity;
.source "MSimSubscriptionStatus.java"


# static fields
.field static final CB_AREA_INFO_RECEIVED_ACTION:Ljava/lang/String; = "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

.field static final CB_AREA_INFO_SENDER_PERMISSION:Ljava/lang/String; = "android.permission.RECEIVE_EMERGENCY_BROADCAST"

.field static final GET_LATEST_CB_AREA_INFO_ACTION:Ljava/lang/String; = "android.cellbroadcastreceiver.GET_LATEST_CB_AREA_INFO"

.field private static final KEY_DATA_STATE:Ljava/lang/String; = "data_state"

.field private static final KEY_ESN_NUMBER:Ljava/lang/String; = "esn_number"

.field private static final KEY_ICC_ID:Ljava/lang/String; = "icc_id"

.field private static final KEY_IMEI:Ljava/lang/String; = "imei"

.field private static final KEY_IMEI_SV:Ljava/lang/String; = "imei_sv"

.field private static final KEY_LATEST_AREA_INFO:Ljava/lang/String; = "latest_area_info"

.field private static final KEY_MEID_NUMBER:Ljava/lang/String; = "meid_number"

.field private static final KEY_MIN_NUMBER:Ljava/lang/String; = "min_number"

.field private static final KEY_NETWORK_TYPE:Ljava/lang/String; = "network_type"

.field private static final KEY_OPERATOR_NAME:Ljava/lang/String; = "operator_name"

.field private static final KEY_PHONE_NUMBER:Ljava/lang/String; = "number"

.field private static final KEY_PRL_VERSION:Ljava/lang/String; = "prl_version"

.field private static final KEY_ROAMING_STATE:Ljava/lang/String; = "roaming_state"

.field private static final KEY_SERVICE_STATE:Ljava/lang/String; = "service_state"

.field private static final KEY_SIGNAL_STRENGTH:Ljava/lang/String; = "signal_strength"

.field private static final PHONE_RELATED_ENTRIES:[Ljava/lang/String;

.field private static sUnknown:Ljava/lang/String;


# instance fields
.field private mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mDataState:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRes:Landroid/content/res/Resources;

.field mServiceState:Landroid/telephony/ServiceState;

.field private mSigStrength:Landroid/preference/Preference;

.field mSignalStrength:Landroid/telephony/SignalStrength;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 84
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data_state"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "service_state"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "operator_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "roaming_state"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "network_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "imei"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "imei_sv"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "prl_version"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "min_number"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "esn_number"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "meid_number"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "signal_strength"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "icc_id"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "latest_area_info"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mDataState:I

    .line 123
    new-instance v0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus$1;-><init>(Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->updateAreaInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->updateServiceState()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mDataState:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->updateDataState()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->updateNetworkType()V

    return-void
.end method

.method private getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 275
    new-instance v0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus$2;

    invoke-direct {v0, p0, p1}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus$2;-><init>(Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;I)V

    .line 293
    .local v0, "phoneStateListener":Landroid/telephony/PhoneStateListener;
    return-object v0
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 268
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 269
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 272
    :cond_0
    return-void
.end method

.method private setSummary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "property"    # Ljava/lang/String;
    .param p3, "alt"    # Ljava/lang/String;

    .prologue
    .line 302
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {p2, p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 310
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f09012b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 317
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 318
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 320
    :cond_1
    return-void
.end method

.method private updateAreaInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "areaInfo"    # Ljava/lang/String;

    .prologue
    .line 384
    if-eqz p1, :cond_0

    .line 385
    const-string v0, "latest_area_info"

    invoke-direct {p0, v0, p1}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :cond_0
    return-void
.end method

.method private updateDataState()V
    .locals 3

    .prologue
    .line 333
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f09014f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "display":Ljava/lang/String;
    iget v1, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mDataState:I

    packed-switch v1, :pswitch_data_0

    .line 350
    :goto_0
    const-string v1, "data_state"

    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    return-void

    .line 337
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f09014d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 338
    goto :goto_0

    .line 340
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f09014e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 341
    goto :goto_0

    .line 343
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f09014c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 344
    goto :goto_0

    .line 346
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f09014b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 335
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNetworkType()V
    .locals 4

    .prologue
    .line 324
    const/4 v1, 0x0

    .line 325
    .local v1, "networktype":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I

    move-result v0

    .line 326
    .local v0, "networkType":I
    if-eqz v0, :cond_0

    .line 327
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 329
    :cond_0
    const-string v2, "network_type"

    invoke-direct {p0, v2, v1}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method private updateServiceState()V
    .locals 5

    .prologue
    .line 354
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09014f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "display":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v2, :cond_0

    .line 357
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 359
    .local v1, "state":I
    packed-switch v1, :pswitch_data_0

    .line 372
    :goto_0
    const-string v2, "service_state"

    invoke-direct {p0, v2, v0}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 375
    const-string v2, "roaming_state"

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f090146

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :goto_1
    const-string v2, "operator_name"

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    .end local v1    # "state":I
    :cond_0
    return-void

    .line 361
    .restart local v1    # "state":I
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090142

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 362
    goto :goto_0

    .line 365
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090143

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 366
    goto :goto_0

    .line 368
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090145

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 377
    :cond_1
    const-string v2, "roaming_state"

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f090147

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 359
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
    .locals 10
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 147
    const-string v7, "phone"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    iput-object v7, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 149
    const v7, 0x7f060022

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->addPreferencesFromResource(I)V

    .line 155
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "phone"

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v9

    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 157
    .local v5, "phoneId":I
    invoke-static {v5}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 158
    const-string v7, "Status"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OnCreate phoneId ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 161
    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v9, 0x141

    invoke-virtual {v7, v8, v9}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 165
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    .line 166
    sget-object v7, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->sUnknown:Ljava/lang/String;

    if-nez v7, :cond_0

    .line 167
    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v8, 0x7f09012b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->sUnknown:Ljava/lang/String;

    .line 170
    :cond_0
    const-string v7, "signal_strength"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mSigStrength:Landroid/preference/Preference;

    .line 172
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 173
    sget-object v0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_5

    aget-object v3, v0, v2

    .line 174
    .local v3, "key":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 173
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 178
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "len$":I
    :cond_1
    const-string v7, "ro.config.multimode_cdma"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "CDMA"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 180
    :cond_2
    const-string v7, "prl_version"

    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :goto_1
    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "CDMA"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 189
    const-string v7, "esn_number"

    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getEsn()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v7, "meid_number"

    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v7, "min_number"

    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0009

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 193
    const-string v7, "min_number"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    const v8, 0x7f0904c0

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setTitle(I)V

    .line 196
    :cond_3
    const-string v7, "imei_sv"

    invoke-direct {p0, v7}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 198
    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_7

    .line 200
    const-string v7, "icc_id"

    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v7, "imei"

    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :goto_2
    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v6

    .line 222
    .local v6, "rawNumber":Ljava/lang/String;
    const/4 v1, 0x0

    .line 223
    .local v1, "formattedNumber":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 224
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 227
    :cond_4
    const-string v7, "number"

    invoke-direct {p0, v7, v1}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .end local v1    # "formattedNumber":Ljava/lang/String;
    .end local v6    # "rawNumber":Ljava/lang/String;
    :cond_5
    return-void

    .line 183
    :cond_6
    const-string v7, "prl_version"

    invoke-direct {p0, v7}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 205
    :cond_7
    const-string v7, "imei"

    invoke-direct {p0, v7}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 206
    const-string v7, "icc_id"

    invoke-direct {p0, v7}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_2

    .line 209
    :cond_8
    const-string v7, "imei"

    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v7, "imei_sv"

    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v7, "esn_number"

    invoke-direct {p0, v7}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 216
    const-string v7, "meid_number"

    invoke-direct {p0, v7}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 217
    const-string v7, "min_number"

    invoke-direct {p0, v7}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 218
    const-string v7, "icc_id"

    invoke-direct {p0, v7}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 255
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 257
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 259
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 261
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 233
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 235
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x141

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 239
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->updateSignalStrength()V

    .line 240
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->updateServiceState()V

    .line 241
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->updateDataState()V

    .line 242
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 245
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.cellbroadcastreceiver.GET_LATEST_CB_AREA_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    .local v0, "getLatestIntent":Landroid/content/Intent;
    const-string v1, "phone"

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 247
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 251
    .end local v0    # "getLatestIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method updateSignalStrength()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 390
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v4, :cond_4

    .line 391
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 392
    .local v3, "state":I
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 394
    .local v0, "r":Landroid/content/res/Resources;
    const/4 v4, 0x1

    if-eq v4, v3, :cond_0

    const/4 v4, 0x3

    if-ne v4, v3, :cond_1

    .line 396
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mSigStrength:Landroid/preference/Preference;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 399
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v2

    .line 400
    .local v2, "signalDbm":I
    if-ne v6, v2, :cond_2

    const/4 v2, 0x0

    .line 404
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getAsuLevel()I

    move-result v1

    .line 405
    .local v1, "signalAsu":I
    if-ne v6, v1, :cond_3

    .line 406
    const/4 v1, 0x0

    .line 408
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mSigStrength:Landroid/preference/Preference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090152

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090153

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 411
    .end local v0    # "r":Landroid/content/res/Resources;
    .end local v1    # "signalAsu":I
    .end local v2    # "signalDbm":I
    .end local v3    # "state":I
    :cond_4
    return-void
.end method
