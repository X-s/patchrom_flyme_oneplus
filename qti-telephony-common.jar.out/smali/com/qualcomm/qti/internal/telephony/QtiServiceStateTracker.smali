.class public Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;
.super Lcom/android/internal/telephony/ServiceStateTracker;
.source "QtiServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker$1;
    }
.end annotation


# static fields
.field private static final ACTION_MANAGED_ROAMING_IND:Ljava/lang/String; = "codeaurora.intent.action.ACTION_MANAGED_ROAMING_IND"

.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "QtiServiceStateTracker"

.field private static final VDBG:Z


# instance fields
.field private final ACTION_RAC_CHANGED:Ljava/lang/String;

.field private mConfigResUtil:Lcom/android/internal/telephony/ConfigResourceUtil;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mQtiPlmnOverride:Lcom/qti/internal/telephony/QtiPlmnOverride;

.field private mRac:I

.field private final mRacChange:Ljava/lang/String;

.field private mRat:I

.field private final mRatInfo:Ljava/lang/String;

.field private mTac:I


# direct methods
.method static synthetic -set0(Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;I)I
    .locals 0

    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mRac:I

    return p1
.end method

.method static synthetic -set1(Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;I)I
    .locals 0

    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mRat:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->enableBackgroundData()V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/GsmCdmaPhone;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 54
    const-string/jumbo v1, "qualcomm.intent.action.ACTION_RAC_CHANGED"

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->ACTION_RAC_CHANGED:Ljava/lang/String;

    .line 55
    const-string/jumbo v1, "rat"

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mRatInfo:Ljava/lang/String;

    .line 56
    const-string/jumbo v1, "rac"

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mRacChange:Ljava/lang/String;

    .line 59
    const/4 v1, -0x1

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mTac:I

    .line 61
    new-instance v1, Lcom/android/internal/telephony/ConfigResourceUtil;

    invoke-direct {v1}, Lcom/android/internal/telephony/ConfigResourceUtil;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mConfigResUtil:Lcom/android/internal/telephony/ConfigResourceUtil;

    .line 63
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker$1;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 79
    new-instance v1, Lcom/qti/internal/telephony/QtiPlmnOverride;

    invoke-direct {v1}, Lcom/qti/internal/telephony/QtiPlmnOverride;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mQtiPlmnOverride:Lcom/qti/internal/telephony/QtiPlmnOverride;

    .line 80
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 81
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "qualcomm.intent.action.ACTION_RAC_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    return-void
.end method

.method private enableBackgroundData()V
    .locals 3

    .prologue
    .line 86
    new-instance v0, Landroid/net/ZeroBalanceHelper;

    invoke-direct {v0}, Landroid/net/ZeroBalanceHelper;-><init>()V

    .line 87
    .local v0, "helper":Landroid/net/ZeroBalanceHelper;
    invoke-virtual {v0}, Landroid/net/ZeroBalanceHelper;->getFeatureConfigValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v0}, Landroid/net/ZeroBalanceHelper;->getBgDataProperty()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 87
    if-eqz v1, :cond_0

    .line 89
    const-string/jumbo v1, "zerobalance"

    const-string/jumbo v2, "Enabling the background data on LAU/RAU"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string/jumbo v1, "false"

    invoke-virtual {v0, v1}, Landroid/net/ZeroBalanceHelper;->setBgDataProperty(Ljava/lang/String;)V

    .line 85
    :cond_0
    return-void
.end method

.method private setOperatorConsideredDomesticRoaming(Landroid/telephony/ServiceState;)V
    .locals 11
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v10, 0x3

    const/4 v6, 0x0

    .line 180
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v5

    .line 181
    .local v5, "subId":I
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    .line 183
    .local v4, "operatorNumeric":Ljava/lang/String;
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v5}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v7

    .line 184
    const v8, 0x107005e

    .line 183
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, "numericArray":[Ljava/lang/String;
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v5}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v7

    .line 188
    const v8, 0x107005f

    .line 187
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, "numericExceptionsArray":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v7, v2

    if-nez v7, :cond_1

    .line 194
    :cond_0
    return-void

    .line 192
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 191
    if-nez v7, :cond_0

    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, "isDomestic":Z
    array-length v8, v2

    move v7, v6

    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v1, v2, v7

    .line 199
    .local v1, "numeric":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 201
    const/4 v7, 0x2

    invoke-virtual {p1, v7}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    .line 202
    const/4 v0, 0x1

    .line 207
    .end local v1    # "numeric":Ljava/lang/String;
    :cond_2
    array-length v7, v3

    if-eqz v7, :cond_3

    if-eqz v0, :cond_3

    .line 208
    array-length v7, v3

    :goto_1
    if-ge v6, v7, :cond_3

    aget-object v1, v3, v6

    .line 209
    .restart local v1    # "numeric":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 211
    invoke-virtual {p1, v10}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    .line 218
    .end local v1    # "numeric":Ljava/lang/String;
    :cond_3
    if-nez v0, :cond_4

    .line 219
    invoke-virtual {p1, v10}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    .line 179
    :cond_4
    return-void

    .line 198
    .restart local v1    # "numeric":Ljava/lang/String;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 208
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected handlePollStateResultMessage(ILandroid/os/AsyncResult;)V
    .locals 13
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v9, 0x0

    const/4 v0, 0x0

    const/4 v10, 0x2

    .line 96
    packed-switch p1, :pswitch_data_0

    .line 164
    :pswitch_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->handlePollStateResultMessage(ILandroid/os/AsyncResult;)V

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 98
    :pswitch_1
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->handlePollStateResultMessage(ILandroid/os/AsyncResult;)V

    .line 100
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 101
    iget-object v5, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    .line 102
    .local v5, "states":[Ljava/lang/String;
    const/4 v3, 0x4

    .line 103
    .local v3, "regState":I
    array-length v7, v5

    if-lez v7, :cond_1

    .line 105
    const/4 v7, 0x0

    :try_start_0
    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 111
    :cond_1
    :goto_1
    if-eq v3, v12, :cond_2

    .line 112
    const/16 v7, 0xd

    if-ne v3, v7, :cond_0

    .line 113
    :cond_2
    array-length v7, v5

    const/16 v8, 0xe

    if-lt v7, v8, :cond_0

    .line 115
    const/16 v7, 0xd

    :try_start_1
    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 117
    .local v4, "rejCode":I
    const/16 v7, 0xa

    if-ne v4, v7, :cond_0

    .line 118
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " Posting Managed roaming intent sub = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 119
    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v8

    .line 118
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 128
    .end local v4    # "rejCode":I
    :catch_0
    move-exception v1

    .line 129
    .local v1, "ex":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "error parsing regCode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 107
    .restart local v1    # "ex":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "error parsing RegistrationState: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 136
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    .end local v3    # "regState":I
    .end local v5    # "states":[Ljava/lang/String;
    :pswitch_2
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->handlePollStateResultMessage(ILandroid/os/AsyncResult;)V

    .line 137
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 138
    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    .line 140
    .local v2, "opNames":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v7, v2

    if-lt v7, v12, :cond_0

    .line 142
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->getPhoneId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 143
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->getPhoneId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccCard;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "brandOverride":Ljava/lang/String;
    :cond_3
    if-eqz v0, :cond_4

    .line 146
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "EVENT_POLL_STATE_OPERATOR: use brandOverride="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->log(Ljava/lang/String;)V

    .line 147
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    aget-object v8, v2, v10

    invoke-virtual {v7, v0, v0, v8}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 148
    :cond_4
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mQtiPlmnOverride:Lcom/qti/internal/telephony/QtiPlmnOverride;

    aget-object v8, v2, v10

    invoke-virtual {v7, v8}, Lcom/qti/internal/telephony/QtiPlmnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 149
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mConfigResUtil:Lcom/android/internal/telephony/ConfigResourceUtil;

    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 150
    const-string/jumbo v8, "config_plmn_name_override_enabled"

    .line 149
    invoke-static {v7, v8}, Lcom/android/internal/telephony/ConfigResourceUtil;->getBooleanValue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    .line 148
    if-eqz v7, :cond_5

    .line 151
    const/4 v6, 0x0

    .line 152
    .local v6, "strOperatorLong":Ljava/lang/String;
    const-string/jumbo v7, "EVENT_POLL_STATE_OPERATOR: use plmnOverride"

    invoke-virtual {p0, v7}, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->log(Ljava/lang/String;)V

    .line 153
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mQtiPlmnOverride:Lcom/qti/internal/telephony/QtiPlmnOverride;

    aget-object v8, v2, v10

    invoke-virtual {v7, v8}, Lcom/qti/internal/telephony/QtiPlmnOverride;->getPlmn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 154
    .local v6, "strOperatorLong":Ljava/lang/String;
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    aget-object v8, v2, v11

    aget-object v9, v2, v10

    invoke-virtual {v7, v6, v8, v9}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 156
    .end local v6    # "strOperatorLong":Ljava/lang/String;
    :cond_5
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    aget-object v8, v2, v9

    aget-object v9, v2, v11

    aget-object v10, v2, v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected setRoamingType(Landroid/telephony/ServiceState;)V
    .locals 2
    .param p1, "currentServiceState"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v0, 0x0

    .line 170
    invoke-super {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->setRoamingType(Landroid/telephony/ServiceState;)V

    .line 172
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 173
    .local v0, "isVoiceInService":Z
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    .line 173
    if-eqz v1, :cond_1

    .line 175
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->setOperatorConsideredDomesticRoaming(Landroid/telephony/ServiceState;)V

    .line 169
    :cond_1
    return-void
.end method
