.class public Lcom/android/settings_ex/RadioInfo;
.super Landroid/app/Activity;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/RadioInfo$10;,
        Lcom/android/settings_ex/RadioInfo$11;,
        Lcom/android/settings_ex/RadioInfo$12;,
        Lcom/android/settings_ex/RadioInfo$13;,
        Lcom/android/settings_ex/RadioInfo$14;,
        Lcom/android/settings_ex/RadioInfo$15;,
        Lcom/android/settings_ex/RadioInfo$16;,
        Lcom/android/settings_ex/RadioInfo$17;,
        Lcom/android/settings_ex/RadioInfo$1;,
        Lcom/android/settings_ex/RadioInfo$2;,
        Lcom/android/settings_ex/RadioInfo$3;,
        Lcom/android/settings_ex/RadioInfo$4;,
        Lcom/android/settings_ex/RadioInfo$5;,
        Lcom/android/settings_ex/RadioInfo$6;,
        Lcom/android/settings_ex/RadioInfo$7;,
        Lcom/android/settings_ex/RadioInfo$8;,
        Lcom/android/settings_ex/RadioInfo$9;
    }
.end annotation


# static fields
.field private static final CELL_INFO_LIST_RATE_DISABLED:I = 0x7fffffff

.field private static final CELL_INFO_LIST_RATE_MAX:I = 0x0

.field private static final EVENT_CFI_CHANGED:I = 0x12e

.field private static final EVENT_QUERY_PREFERRED_TYPE_DONE:I = 0x3e8

.field private static final EVENT_QUERY_SMSC_DONE:I = 0x3ed

.field private static final EVENT_SET_PREFERRED_TYPE_DONE:I = 0x3e9

.field private static final EVENT_UPDATE_SMSC_DONE:I = 0x3ee

.field private static final MENU_ITEM_GET_PDP_LIST:I = 0x4

.field private static final MENU_ITEM_SELECT_BAND:I = 0x0

.field private static final MENU_ITEM_TOGGLE_DATA:I = 0x5

.field private static final MENU_ITEM_VIEW_ADN:I = 0x1

.field private static final MENU_ITEM_VIEW_FDN:I = 0x2

.field private static final MENU_ITEM_VIEW_SDN:I = 0x3

.field private static final TAG:Ljava/lang/String; = "RadioInfo"

.field private static final mCellInfoRefreshRateLabels:[Ljava/lang/String;

.field private static final mCellInfoRefreshRates:[I

.field private static final mPreferredNetworkLabels:[Ljava/lang/String;


# instance fields
.field private callState:Landroid/widget/TextView;

.field private cellInfoRefreshRateButton:Landroid/widget/Button;

.field private cellInfoRefreshRateSpinner:Landroid/widget/Spinner;

.field private dBm:Landroid/widget/TextView;

.field private dataNetwork:Landroid/widget/TextView;

.field private dnsCheckState:Landroid/widget/TextView;

.field private dnsCheckToggleButton:Landroid/widget/Button;

.field private gprsState:Landroid/widget/TextView;

.field private gsmState:Landroid/widget/TextView;

.field private imsVoLteProvisionedSwitch:Landroid/widget/Switch;

.field private mCellInfo:Landroid/widget/TextView;

.field mCellInfoRefreshRateHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mCellInfoRefreshRateIndex:I

.field private mCellInfoResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCellLocationResult:Landroid/telephony/CellLocation;

.field private mCfi:Landroid/widget/TextView;

.field private mCfiValue:Z

.field private mDcRtInfoTv:Landroid/widget/TextView;

.field private mDeviceId:Landroid/widget/TextView;

.field mDnsCheckButtonHandler:Landroid/view/View$OnClickListener;

.field private mGetPdpList:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mHttpClientTest:Landroid/widget/TextView;

.field private mHttpClientTestResult:Ljava/lang/String;

.field private mImsManager:Lcom/android/ims/ImsManager;

.field mImsVoLteCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mLocation:Landroid/widget/TextView;

.field private mMwi:Landroid/widget/TextView;

.field private mMwiValue:Z

.field private mNeighboringCellResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNeighboringCids:Landroid/widget/TextView;

.field mOemInfoButtonHandler:Landroid/view/View$OnClickListener;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mPingButtonHandler:Landroid/view/View$OnClickListener;

.field private mPingHostnameResultV4:Ljava/lang/String;

.field private mPingHostnameResultV6:Ljava/lang/String;

.field private mPingHostnameV4:Landroid/widget/TextView;

.field private mPingHostnameV6:Landroid/widget/TextView;

.field mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mPreferredNetworkTypeResult:I

.field mRadioPowerOnChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field mRefreshSmscButtonHandler:Landroid/view/View$OnClickListener;

.field private mSelectBandCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mToggleData:Landroid/view/MenuItem$OnMenuItemClickListener;

.field mUpdateSmscButtonHandler:Landroid/view/View$OnClickListener;

.field private mViewADNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mViewFDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mViewSDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private number:Landroid/widget/TextView;

.field private oemInfoButton:Landroid/widget/Button;

.field private operatorName:Landroid/widget/TextView;

.field private phone:Lcom/android/internal/telephony/Phone;

.field private pingTestButton:Landroid/widget/Button;

.field private preferredNetworkType:Landroid/widget/Spinner;

.field private radioPowerOnSwitch:Landroid/widget/Switch;

.field private received:Landroid/widget/TextView;

.field private refreshSmscButton:Landroid/widget/Button;

.field private roamingState:Landroid/widget/TextView;

.field private sent:Landroid/widget/TextView;

.field private smsc:Landroid/widget/EditText;

.field private updateSmscButton:Landroid/widget/Button;

.field private voiceNetwork:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0()[I
    .locals 1

    sget-object v0, Lcom/android/settings_ex/RadioInfo;->mCellInfoRefreshRates:[I

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/RadioInfo;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mCellInfoResult:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/settings_ex/RadioInfo;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mPingHostnameV4:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/settings_ex/RadioInfo;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mPingHostnameV6:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get12()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings_ex/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/settings_ex/RadioInfo;)I
    .locals 1

    iget v0, p0, Lcom/android/settings_ex/RadioInfo;->mPreferredNetworkTypeResult:I

    return v0
.end method

.method static synthetic -get14(Lcom/android/settings_ex/RadioInfo;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/settings_ex/RadioInfo;)Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/settings_ex/RadioInfo;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->smsc:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/settings_ex/RadioInfo;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->updateSmscButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/RadioInfo;)Landroid/telephony/CellLocation;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mCellLocationResult:Landroid/telephony/CellLocation;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings_ex/RadioInfo;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings_ex/RadioInfo;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings_ex/RadioInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings_ex/RadioInfo;)Lcom/android/ims/ImsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mImsManager:Lcom/android/ims/ImsManager;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settings_ex/RadioInfo;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mNeighboringCellResult:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/settings_ex/RadioInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/settings_ex/RadioInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings_ex/RadioInfo;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings_ex/RadioInfo;->mCellInfoRefreshRateIndex:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings_ex/RadioInfo;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/android/settings_ex/RadioInfo;->mCellInfoResult:Ljava/util/List;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/settings_ex/RadioInfo;Landroid/telephony/CellLocation;)Landroid/telephony/CellLocation;
    .locals 0

    iput-object p1, p0, Lcom/android/settings_ex/RadioInfo;->mCellLocationResult:Landroid/telephony/CellLocation;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/settings_ex/RadioInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings_ex/RadioInfo;->mCfiValue:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/settings_ex/RadioInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings_ex/RadioInfo;->mMwiValue:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/settings_ex/RadioInfo;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/android/settings_ex/RadioInfo;->mNeighboringCellResult:Ljava/util/List;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/settings_ex/RadioInfo;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings_ex/RadioInfo;->mPreferredNetworkTypeResult:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/RadioInfo;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->isRadioOn()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/RadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->httpClientTest()V

    return-void
.end method

.method static synthetic -wrap10(Lcom/android/settings_ex/RadioInfo;Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 0
    .param p1, "dcRtInfo"    # Landroid/telephony/DataConnectionRealTimeInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/RadioInfo;->updateDcRtInfoTv(Landroid/telephony/DataConnectionRealTimeInfo;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/settings_ex/RadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updateDnsCheckState()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/settings_ex/RadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updateImsVoLteProvisionedState()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/settings_ex/RadioInfo;Landroid/telephony/CellLocation;)V
    .locals 0
    .param p1, "location"    # Landroid/telephony/CellLocation;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/RadioInfo;->updateLocation(Landroid/telephony/CellLocation;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/settings_ex/RadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updateMessageWaiting()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/settings_ex/RadioInfo;Ljava/util/List;)V
    .locals 0
    .param p1, "cids"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/RadioInfo;->updateNeighboringCids(Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/settings_ex/RadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updateNetworkType()V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/settings_ex/RadioInfo;I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/RadioInfo;->updatePhoneState(I)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/settings_ex/RadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updatePingState()V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/settings_ex/RadioInfo;I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/RadioInfo;->updatePreferredNetworkType(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings_ex/RadioInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/RadioInfo;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap20(Lcom/android/settings_ex/RadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updateRadioPowerState()V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/settings_ex/RadioInfo;Landroid/telephony/ServiceState;)V
    .locals 0
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/RadioInfo;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/settings_ex/RadioInfo;Landroid/telephony/SignalStrength;)V
    .locals 0
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/RadioInfo;->updateSignalStrength(Landroid/telephony/SignalStrength;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings_ex/RadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->pingHostname()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings_ex/RadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->refreshSmsc()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings_ex/RadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updateAllCellInfo()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/settings_ex/RadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updateCallRedirect()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/settings_ex/RadioInfo;Ljava/util/List;)V
    .locals 0
    .param p1, "arrayCi"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/RadioInfo;->updateCellInfo(Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/settings_ex/RadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updateDataState()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/settings_ex/RadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updateDataStats2()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 94
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    .line 95
    const-string/jumbo v1, "WCDMA preferred"

    aput-object v1, v0, v4

    .line 96
    const-string/jumbo v1, "GSM only"

    aput-object v1, v0, v3

    .line 97
    const-string/jumbo v1, "WCDMA only"

    aput-object v1, v0, v5

    .line 98
    const-string/jumbo v1, "GSM auto (PRL)"

    aput-object v1, v0, v6

    .line 99
    const-string/jumbo v1, "CDMA auto (PRL)"

    aput-object v1, v0, v7

    .line 100
    const-string/jumbo v1, "CDMA only"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 101
    const-string/jumbo v1, "EvDo only"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 102
    const-string/jumbo v1, "Global auto (PRL)"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 103
    const-string/jumbo v1, "LTE/CDMA auto (PRL)"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 104
    const-string/jumbo v1, "LTE/UMTS auto (PRL)"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 105
    const-string/jumbo v1, "LTE/CDMA/UMTS auto (PRL)"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 106
    const-string/jumbo v1, "LTE only"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 107
    const-string/jumbo v1, "LTE/WCDMA"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 108
    const-string/jumbo v1, "TD-SCDMA only"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 109
    const-string/jumbo v1, "TD-SCDMA/WCDMA"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 110
    const-string/jumbo v1, "LTE/TD-SCDMA"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 111
    const-string/jumbo v1, "TD-SCDMA/GSM"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 112
    const-string/jumbo v1, "TD-SCDMA/UMTS"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 113
    const-string/jumbo v1, "LTE/TD-SCDMA/WCDMA"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 114
    const-string/jumbo v1, "LTE/TD-SCDMA/UMTS"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 115
    const-string/jumbo v1, "TD-SCDMA/CDMA/UMTS"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 116
    const-string/jumbo v1, "Global/TD-SCDMA"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 117
    const-string/jumbo v1, "Unknown"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 94
    sput-object v0, Lcom/android/settings_ex/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    .line 125
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 126
    const-string/jumbo v1, "Disabled"

    aput-object v1, v0, v4

    .line 127
    const-string/jumbo v1, "Immediate"

    aput-object v1, v0, v3

    .line 128
    const-string/jumbo v1, "Min 5s"

    aput-object v1, v0, v5

    .line 129
    const-string/jumbo v1, "Min 10s"

    aput-object v1, v0, v6

    .line 130
    const-string/jumbo v1, "Min 60s"

    aput-object v1, v0, v7

    .line 125
    sput-object v0, Lcom/android/settings_ex/RadioInfo;->mCellInfoRefreshRateLabels:[Ljava/lang/String;

    .line 135
    const v0, 0x7fffffff

    .line 137
    const/16 v1, 0x1388

    .line 138
    const/16 v2, 0x2710

    .line 139
    const v3, 0xea60

    .line 134
    filled-new-array {v0, v4, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/RadioInfo;->mCellInfoRefreshRates:[I

    .line 91
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 195
    iput-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mImsManager:Lcom/android/ims/ImsManager;

    .line 196
    iput-object v0, p0, Lcom/android/settings_ex/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    .line 201
    iput-boolean v1, p0, Lcom/android/settings_ex/RadioInfo;->mMwiValue:Z

    .line 202
    iput-boolean v1, p0, Lcom/android/settings_ex/RadioInfo;->mCfiValue:Z

    .line 204
    iput-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mCellInfoResult:Ljava/util/List;

    .line 205
    iput-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mCellLocationResult:Landroid/telephony/CellLocation;

    .line 206
    iput-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mNeighboringCellResult:Ljava/util/List;

    .line 211
    new-instance v0, Lcom/android/settings_ex/RadioInfo$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/RadioInfo$1;-><init>(Lcom/android/settings_ex/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 291
    new-instance v0, Lcom/android/settings_ex/RadioInfo$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/RadioInfo$2;-><init>(Lcom/android/settings_ex/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mHandler:Landroid/os/Handler;

    .line 1010
    new-instance v0, Lcom/android/settings_ex/RadioInfo$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/RadioInfo$3;-><init>(Lcom/android/settings_ex/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mViewADNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1030
    new-instance v0, Lcom/android/settings_ex/RadioInfo$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/RadioInfo$4;-><init>(Lcom/android/settings_ex/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mViewFDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1052
    new-instance v0, Lcom/android/settings_ex/RadioInfo$5;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/RadioInfo$5;-><init>(Lcom/android/settings_ex/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mViewSDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1073
    new-instance v0, Lcom/android/settings_ex/RadioInfo$6;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/RadioInfo$6;-><init>(Lcom/android/settings_ex/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mGetPdpList:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1081
    new-instance v0, Lcom/android/settings_ex/RadioInfo$7;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/RadioInfo$7;-><init>(Lcom/android/settings_ex/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mSelectBandCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1090
    new-instance v0, Lcom/android/settings_ex/RadioInfo$8;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/RadioInfo$8;-><init>(Lcom/android/settings_ex/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mToggleData:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1123
    new-instance v0, Lcom/android/settings_ex/RadioInfo$9;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/RadioInfo$9;-><init>(Lcom/android/settings_ex/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mRadioPowerOnChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 1157
    new-instance v0, Lcom/android/settings_ex/RadioInfo$10;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/RadioInfo$10;-><init>(Lcom/android/settings_ex/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mImsVoLteCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 1173
    new-instance v0, Lcom/android/settings_ex/RadioInfo$11;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/RadioInfo$11;-><init>(Lcom/android/settings_ex/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mDnsCheckButtonHandler:Landroid/view/View$OnClickListener;

    .line 1181
    new-instance v0, Lcom/android/settings_ex/RadioInfo$12;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/RadioInfo$12;-><init>(Lcom/android/settings_ex/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mOemInfoButtonHandler:Landroid/view/View$OnClickListener;

    .line 1194
    new-instance v0, Lcom/android/settings_ex/RadioInfo$13;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/RadioInfo$13;-><init>(Lcom/android/settings_ex/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mPingButtonHandler:Landroid/view/View$OnClickListener;

    .line 1200
    new-instance v0, Lcom/android/settings_ex/RadioInfo$14;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/RadioInfo$14;-><init>(Lcom/android/settings_ex/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mUpdateSmscButtonHandler:Landroid/view/View$OnClickListener;

    .line 1208
    new-instance v0, Lcom/android/settings_ex/RadioInfo$15;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/RadioInfo$15;-><init>(Lcom/android/settings_ex/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mRefreshSmscButtonHandler:Landroid/view/View$OnClickListener;

    .line 1215
    new-instance v0, Lcom/android/settings_ex/RadioInfo$16;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/RadioInfo$16;-><init>(Lcom/android/settings_ex/RadioInfo;)V

    .line 1214
    iput-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1231
    new-instance v0, Lcom/android/settings_ex/RadioInfo$17;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/RadioInfo$17;-><init>(Lcom/android/settings_ex/RadioInfo;)V

    .line 1230
    iput-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mCellInfoRefreshRateHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 91
    return-void
.end method

.method private final buildCdmaInfoString(Landroid/telephony/CellInfoCdma;)Ljava/lang/String;
    .locals 6
    .param p1, "ci"    # Landroid/telephony/CellInfoCdma;

    .prologue
    .line 641
    invoke-virtual {p1}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v0

    .line 642
    .local v0, "cidCdma":Landroid/telephony/CellIdentityCdma;
    invoke-virtual {p1}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v1

    .line 644
    .local v1, "ssCdma":Landroid/telephony/CellSignalStrengthCdma;
    const-string/jumbo v3, "%-3.3s %-5.5s %-5.5s %-5.5s %-6.6s %-6.6s %-6.6s %-6.6s %-5.5s"

    const/16 v2, 0x9

    new-array v4, v2, [Ljava/lang/Object;

    .line 645
    invoke-virtual {p1}, Landroid/telephony/CellInfoCdma;->isRegistered()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "S  "

    :goto_0
    const/4 v5, 0x0

    aput-object v2, v4, v5

    .line 646
    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v4, v5

    .line 647
    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v4, v5

    .line 648
    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v4, v5

    .line 649
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    aput-object v2, v4, v5

    .line 650
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaEcio()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x5

    aput-object v2, v4, v5

    .line 651
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoDbm()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    aput-object v2, v4, v5

    .line 652
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoEcio()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x7

    aput-object v2, v4, v5

    .line 653
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoSnr()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x8

    aput-object v2, v4, v5

    .line 644
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 645
    :cond_0
    const-string/jumbo v2, "   "

    goto :goto_0
.end method

.method private final buildCellInfoString(Ljava/util/List;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 705
    .local p1, "arrayCi":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 706
    .local v5, "value":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 707
    .local v0, "cdmaCells":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 708
    .local v3, "gsmCells":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 709
    .local v4, "lteCells":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 711
    .local v6, "wcdmaCells":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_9

    .line 712
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "ci$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellInfo;

    .line 714
    .local v1, "ci":Landroid/telephony/CellInfo;
    instance-of v7, v1, Landroid/telephony/CellInfoLte;

    if-eqz v7, :cond_1

    .line 715
    check-cast v1, Landroid/telephony/CellInfoLte;

    .end local v1    # "ci":Landroid/telephony/CellInfo;
    invoke-direct {p0, v1}, Lcom/android/settings_ex/RadioInfo;->buildLteInfoString(Landroid/telephony/CellInfoLte;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 716
    .restart local v1    # "ci":Landroid/telephony/CellInfo;
    :cond_1
    instance-of v7, v1, Landroid/telephony/CellInfoWcdma;

    if-eqz v7, :cond_2

    .line 717
    check-cast v1, Landroid/telephony/CellInfoWcdma;

    .end local v1    # "ci":Landroid/telephony/CellInfo;
    invoke-direct {p0, v1}, Lcom/android/settings_ex/RadioInfo;->buildWcdmaInfoString(Landroid/telephony/CellInfoWcdma;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 718
    .restart local v1    # "ci":Landroid/telephony/CellInfo;
    :cond_2
    instance-of v7, v1, Landroid/telephony/CellInfoGsm;

    if-eqz v7, :cond_3

    .line 719
    check-cast v1, Landroid/telephony/CellInfoGsm;

    .end local v1    # "ci":Landroid/telephony/CellInfo;
    invoke-direct {p0, v1}, Lcom/android/settings_ex/RadioInfo;->buildGsmInfoString(Landroid/telephony/CellInfoGsm;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 720
    .restart local v1    # "ci":Landroid/telephony/CellInfo;
    :cond_3
    instance-of v7, v1, Landroid/telephony/CellInfoCdma;

    if-eqz v7, :cond_0

    .line 721
    check-cast v1, Landroid/telephony/CellInfoCdma;

    .end local v1    # "ci":Landroid/telephony/CellInfo;
    invoke-direct {p0, v1}, Lcom/android/settings_ex/RadioInfo;->buildCdmaInfoString(Landroid/telephony/CellInfoCdma;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 724
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_5

    .line 725
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 726
    const-string/jumbo v8, "LTE\n%-3.3s %-3.3s %-3.3s %-5.5s %-5.5s %-3.3s %-6.6s %-4.4s %-4.4s %-2.2s\n"

    .line 725
    const/16 v9, 0xa

    new-array v9, v9, [Ljava/lang/Object;

    .line 727
    const-string/jumbo v10, "SRV"

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const-string/jumbo v10, "MCC"

    const/4 v11, 0x1

    aput-object v10, v9, v11

    const-string/jumbo v10, "MNC"

    const/4 v11, 0x2

    aput-object v10, v9, v11

    const-string/jumbo v10, "TAC"

    const/4 v11, 0x3

    aput-object v10, v9, v11

    const-string/jumbo v10, "CID"

    const/4 v11, 0x4

    aput-object v10, v9, v11

    const-string/jumbo v10, "PCI"

    const/4 v11, 0x5

    aput-object v10, v9, v11

    const-string/jumbo v10, "EARFCN"

    const/4 v11, 0x6

    aput-object v10, v9, v11

    const-string/jumbo v10, "RSRP"

    const/4 v11, 0x7

    aput-object v10, v9, v11

    const-string/jumbo v10, "RSRQ"

    const/16 v11, 0x8

    aput-object v10, v9, v11

    const-string/jumbo v10, "TA"

    const/16 v11, 0x9

    aput-object v10, v9, v11

    .line 725
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 728
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 730
    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_6

    .line 731
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "WCDMA\n%-3.3s %-3.3s %-3.3s %-5.5s %-5.5s %-6.6s %-3.3s %-4.4s\n"

    const/16 v9, 0x8

    new-array v9, v9, [Ljava/lang/Object;

    .line 732
    const-string/jumbo v10, "SRV"

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const-string/jumbo v10, "MCC"

    const/4 v11, 0x1

    aput-object v10, v9, v11

    const-string/jumbo v10, "MNC"

    const/4 v11, 0x2

    aput-object v10, v9, v11

    const-string/jumbo v10, "LAC"

    const/4 v11, 0x3

    aput-object v10, v9, v11

    const-string/jumbo v10, "CID"

    const/4 v11, 0x4

    aput-object v10, v9, v11

    const-string/jumbo v10, "UARFCN"

    const/4 v11, 0x5

    aput-object v10, v9, v11

    const-string/jumbo v10, "PSC"

    const/4 v11, 0x6

    aput-object v10, v9, v11

    const-string/jumbo v10, "RSCP"

    const/4 v11, 0x7

    aput-object v10, v9, v11

    .line 731
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 733
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 735
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_7

    .line 736
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "GSM\n%-3.3s %-3.3s %-3.3s %-5.5s %-5.5s %-6.6s %-4.4s %-4.4s\n"

    const/16 v9, 0x8

    new-array v9, v9, [Ljava/lang/Object;

    .line 737
    const-string/jumbo v10, "SRV"

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const-string/jumbo v10, "MCC"

    const/4 v11, 0x1

    aput-object v10, v9, v11

    const-string/jumbo v10, "MNC"

    const/4 v11, 0x2

    aput-object v10, v9, v11

    const-string/jumbo v10, "LAC"

    const/4 v11, 0x3

    aput-object v10, v9, v11

    const-string/jumbo v10, "CID"

    const/4 v11, 0x4

    aput-object v10, v9, v11

    const-string/jumbo v10, "ARFCN"

    const/4 v11, 0x5

    aput-object v10, v9, v11

    const-string/jumbo v10, "BSIC"

    const/4 v11, 0x6

    aput-object v10, v9, v11

    const-string/jumbo v10, "RSSI"

    const/4 v11, 0x7

    aput-object v10, v9, v11

    .line 736
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 738
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 740
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_8

    .line 741
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 742
    const-string/jumbo v8, "CDMA/EVDO\n%-3.3s %-5.5s %-5.5s %-5.5s %-6.6s %-6.6s %-6.6s %-6.6s %-5.5s\n"

    .line 741
    const/16 v9, 0x9

    new-array v9, v9, [Ljava/lang/Object;

    .line 743
    const-string/jumbo v10, "SRV"

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const-string/jumbo v10, "SID"

    const/4 v11, 0x1

    aput-object v10, v9, v11

    const-string/jumbo v10, "NID"

    const/4 v11, 0x2

    aput-object v10, v9, v11

    const-string/jumbo v10, "BSID"

    const/4 v11, 0x3

    aput-object v10, v9, v11

    const-string/jumbo v10, "C-RSSI"

    const/4 v11, 0x4

    aput-object v10, v9, v11

    const-string/jumbo v10, "C-ECIO"

    const/4 v11, 0x5

    aput-object v10, v9, v11

    const-string/jumbo v10, "E-RSSI"

    const/4 v11, 0x6

    aput-object v10, v9, v11

    const-string/jumbo v10, "E-ECIO"

    const/4 v11, 0x7

    aput-object v10, v9, v11

    const-string/jumbo v10, "E-SNR"

    const/16 v11, 0x8

    aput-object v10, v9, v11

    .line 741
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 744
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 750
    .end local v2    # "ci$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 747
    :cond_9
    const-string/jumbo v5, "unknown"

    goto :goto_1
.end method

.method private final buildGsmInfoString(Landroid/telephony/CellInfoGsm;)Ljava/lang/String;
    .locals 6
    .param p1, "ci"    # Landroid/telephony/CellInfoGsm;

    .prologue
    .line 657
    invoke-virtual {p1}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v0

    .line 658
    .local v0, "cidGsm":Landroid/telephony/CellIdentityGsm;
    invoke-virtual {p1}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v1

    .line 660
    .local v1, "ssGsm":Landroid/telephony/CellSignalStrengthGsm;
    const-string/jumbo v3, "%-3.3s %-3.3s %-3.3s %-5.5s %-5.5s %-6.6s %-4.4s %-4.4s\n"

    const/16 v2, 0x8

    new-array v4, v2, [Ljava/lang/Object;

    .line 661
    invoke-virtual {p1}, Landroid/telephony/CellInfoGsm;->isRegistered()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "S  "

    :goto_0
    const/4 v5, 0x0

    aput-object v2, v4, v5

    .line 662
    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v4, v5

    .line 663
    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v4, v5

    .line 664
    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v4, v5

    .line 665
    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    aput-object v2, v4, v5

    .line 666
    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getArfcn()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x5

    aput-object v2, v4, v5

    .line 667
    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getBsic()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    aput-object v2, v4, v5

    .line 668
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthGsm;->getDbm()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x7

    aput-object v2, v4, v5

    .line 660
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 661
    :cond_0
    const-string/jumbo v2, "   "

    goto :goto_0
.end method

.method private final buildLteInfoString(Landroid/telephony/CellInfoLte;)Ljava/lang/String;
    .locals 6
    .param p1, "ci"    # Landroid/telephony/CellInfoLte;

    .prologue
    .line 672
    invoke-virtual {p1}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v0

    .line 673
    .local v0, "cidLte":Landroid/telephony/CellIdentityLte;
    invoke-virtual {p1}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v1

    .line 676
    .local v1, "ssLte":Landroid/telephony/CellSignalStrengthLte;
    const-string/jumbo v3, "%-3.3s %-3.3s %-3.3s %-5.5s %-5.5s %-3.3s %-6.6s %-4.4s %-4.4s %-2.2s\n"

    .line 675
    const/16 v2, 0xa

    new-array v4, v2, [Ljava/lang/Object;

    .line 677
    invoke-virtual {p1}, Landroid/telephony/CellInfoLte;->isRegistered()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "S  "

    :goto_0
    const/4 v5, 0x0

    aput-object v2, v4, v5

    .line 678
    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v4, v5

    .line 679
    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v4, v5

    .line 680
    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v4, v5

    .line 681
    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    aput-object v2, v4, v5

    .line 682
    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x5

    aput-object v2, v4, v5

    .line 683
    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getEarfcn()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    aput-object v2, v4, v5

    .line 684
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x7

    aput-object v2, v4, v5

    .line 685
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthLte;->getRsrq()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x8

    aput-object v2, v4, v5

    .line 686
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthLte;->getTimingAdvance()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x9

    aput-object v2, v4, v5

    .line 675
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 677
    :cond_0
    const-string/jumbo v2, "   "

    goto :goto_0
.end method

.method private final buildWcdmaInfoString(Landroid/telephony/CellInfoWcdma;)Ljava/lang/String;
    .locals 6
    .param p1, "ci"    # Landroid/telephony/CellInfoWcdma;

    .prologue
    .line 690
    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v0

    .line 691
    .local v0, "cidWcdma":Landroid/telephony/CellIdentityWcdma;
    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v1

    .line 693
    .local v1, "ssWcdma":Landroid/telephony/CellSignalStrengthWcdma;
    const-string/jumbo v3, "%-3.3s %-3.3s %-3.3s %-5.5s %-5.5s %-6.6s %-3.3s %-4.4s\n"

    const/16 v2, 0x8

    new-array v4, v2, [Ljava/lang/Object;

    .line 694
    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->isRegistered()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "S  "

    :goto_0
    const/4 v5, 0x0

    aput-object v2, v4, v5

    .line 695
    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v4, v5

    .line 696
    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v4, v5

    .line 697
    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v4, v5

    .line 698
    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    aput-object v2, v4, v5

    .line 699
    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getUarfcn()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x5

    aput-object v2, v4, v5

    .line 700
    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getPsc()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    aput-object v2, v4, v5

    .line 701
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x7

    aput-object v2, v4, v5

    .line 693
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 694
    :cond_0
    const-string/jumbo v2, "   "

    goto :goto_0
.end method

.method private final getCellInfoDisplayString(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 633
    const v0, 0x7fffffff

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private final getCellInfoDisplayString(J)Ljava/lang/String;
    .locals 3
    .param p1, "i"    # J

    .prologue
    .line 637
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private httpClientTest()V
    .locals 6

    .prologue
    .line 922
    const/4 v3, 0x0

    .line 925
    .local v3, "urlConnection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    const-string/jumbo v4, "https://www.google.com"

    invoke-direct {v2, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 926
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 927
    .local v3, "urlConnection":Ljava/net/HttpURLConnection;
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_1

    .line 928
    const-string/jumbo v4, "Pass"

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 935
    :goto_0
    if-eqz v3, :cond_0

    .line 936
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 921
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_0
    :goto_1
    return-void

    .line 930
    .restart local v2    # "url":Ljava/net/URL;
    .restart local v3    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Fail: Code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 932
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "urlConnection":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v1

    .line 933
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v4, "Fail: IOException"

    iput-object v4, p0, Lcom/android/settings_ex/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 935
    if-eqz v3, :cond_0

    .line 936
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 934
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 935
    if-eqz v3, :cond_2

    .line 936
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 934
    :cond_2
    throw v4
.end method

.method private isImsVoLteProvisioned()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1150
    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v1, :cond_1

    .line 1151
    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1152
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isVolteProvisionedOnDevice(Landroid/content/Context;)Z

    move-result v0

    .line 1151
    :cond_0
    return v0

    .line 1154
    :cond_1
    return v0
.end method

.method private isRadioOn()Z
    .locals 2

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 143
    const-string/jumbo v0, "RadioInfo"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void
.end method

.method private final pingHostname()V
    .locals 10

    .prologue
    .line 892
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const-string/jumbo v7, "ping -c 1 www.google.com"

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 893
    .local v2, "p4":Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v4

    .line 894
    .local v4, "status4":I
    if-nez v4, :cond_0

    .line 895
    const-string/jumbo v6, "Pass"

    iput-object v6, p0, Lcom/android/settings_ex/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 903
    .end local v2    # "p4":Ljava/lang/Process;
    .end local v4    # "status4":I
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const-string/jumbo v7, "ping6 -c 1 www.google.com"

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 904
    .local v3, "p6":Ljava/lang/Process;
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    move-result v5

    .line 905
    .local v5, "status6":I
    if-nez v5, :cond_1

    .line 906
    const-string/jumbo v6, "Pass"

    iput-object v6, p0, Lcom/android/settings_ex/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 889
    .end local v3    # "p6":Ljava/lang/Process;
    .end local v5    # "status6":I
    :goto_1
    return-void

    .line 897
    .restart local v2    # "p4":Ljava/lang/Process;
    .restart local v4    # "status4":I
    :cond_0
    :try_start_2
    const-string/jumbo v6, "Fail(%d)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 899
    .end local v2    # "p4":Ljava/lang/Process;
    .end local v4    # "status4":I
    :catch_0
    move-exception v0

    .line 900
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v6, "Fail: IOException"

    iput-object v6, p0, Lcom/android/settings_ex/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 913
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 914
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v6, "Fail: InterruptedException"

    iput-object v6, p0, Lcom/android/settings_ex/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/settings_ex/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;

    goto :goto_1

    .line 908
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v3    # "p6":Ljava/lang/Process;
    .restart local v5    # "status6":I
    :cond_1
    :try_start_4
    const-string/jumbo v6, "Fail(%d)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 910
    .end local v3    # "p6":Ljava/lang/Process;
    .end local v5    # "status6":I
    :catch_2
    move-exception v0

    .line 911
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_5
    const-string/jumbo v6, "Fail: IOException"

    iput-object v6, p0, Lcom/android/settings_ex/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1
.end method

.method private refreshSmsc()V
    .locals 3

    .prologue
    .line 943
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ed

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    .line 941
    return-void
.end method

.method private restoreFromBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 484
    if-nez p1, :cond_0

    .line 485
    return-void

    .line 488
    :cond_0
    const-string/jumbo v0, "mPingHostnameResultV4"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;

    .line 489
    const-string/jumbo v0, "mPingHostnameResultV6"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;

    .line 490
    const-string/jumbo v0, "mHttpClientTestResult"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    .line 492
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mPingHostnameV4:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mPingHostnameV6:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    const-string/jumbo v0, "mPreferredNetworkTypeResult"

    .line 497
    sget-object v1, Lcom/android/settings_ex/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 496
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/RadioInfo;->mPreferredNetworkTypeResult:I

    .line 499
    const-string/jumbo v0, "mCellInfoRefreshRateIndex"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/RadioInfo;->mCellInfoRefreshRateIndex:I

    .line 483
    return-void
.end method

.method private final updateAllCellInfo()V
    .locals 4

    .prologue
    .line 948
    iget-object v2, p0, Lcom/android/settings_ex/RadioInfo;->mCellInfo:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 949
    iget-object v2, p0, Lcom/android/settings_ex/RadioInfo;->mNeighboringCids:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 950
    iget-object v2, p0, Lcom/android/settings_ex/RadioInfo;->mLocation:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 952
    new-instance v1, Lcom/android/settings_ex/RadioInfo$18;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/RadioInfo$18;-><init>(Lcom/android/settings_ex/RadioInfo;)V

    .line 960
    .local v1, "updateAllCellInfoResults":Ljava/lang/Runnable;
    new-instance v0, Lcom/android/settings_ex/RadioInfo$19;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/RadioInfo$19;-><init>(Lcom/android/settings_ex/RadioInfo;Ljava/lang/Runnable;)V

    .line 970
    .local v0, "locThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 946
    return-void
.end method

.method private final updateCallRedirect()V
    .locals 2

    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mCfi:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/settings_ex/RadioInfo;->mCfiValue:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 767
    return-void
.end method

.method private final updateCellInfo(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 754
    .local p1, "arrayCi":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mCellInfo:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/settings_ex/RadioInfo;->buildCellInfoString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 753
    return-void
.end method

.method private final updateDataState()V
    .locals 4

    .prologue
    .line 824
    iget-object v3, p0, Lcom/android/settings_ex/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v2

    .line 825
    .local v2, "state":I
    invoke-virtual {p0}, Lcom/android/settings_ex/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 826
    .local v1, "r":Landroid/content/res/Resources;
    const v3, 0x7f0e04e3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 828
    .local v0, "display":Ljava/lang/String;
    packed-switch v2, :pswitch_data_0

    .line 843
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/RadioInfo;->gprsState:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 823
    return-void

    .line 830
    :pswitch_0
    const v3, 0x7f0e04e1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 833
    :pswitch_1
    const v3, 0x7f0e04e0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 836
    :pswitch_2
    const v3, 0x7f0e04df

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 839
    :pswitch_3
    const v3, 0x7f0e04e2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 828
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private final updateDataStats2()V
    .locals 14

    .prologue
    .line 872
    invoke-virtual {p0}, Lcom/android/settings_ex/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 874
    .local v2, "r":Landroid/content/res/Resources;
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v10

    .line 875
    .local v10, "txPackets":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v6

    .line 876
    .local v6, "rxPackets":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v8

    .line 877
    .local v8, "txBytes":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v4

    .line 879
    .local v4, "rxBytes":J
    const v3, 0x7f0e04e4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 880
    .local v1, "packets":Ljava/lang/String;
    const v3, 0x7f0e04e5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 882
    .local v0, "bytes":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/RadioInfo;->sent:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 883
    iget-object v3, p0, Lcom/android/settings_ex/RadioInfo;->received:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 871
    return-void
.end method

.method private final updateDcRtInfoTv(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 2
    .param p1, "dcRtInfo"    # Landroid/telephony/DataConnectionRealTimeInfo;

    .prologue
    .line 758
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mDcRtInfoTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/telephony/DataConnectionRealTimeInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 757
    return-void
.end method

.method private updateDnsCheckState()V
    .locals 2

    .prologue
    .line 556
    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->dnsCheckState:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    const-string/jumbo v0, "0.0.0.0 allowed"

    .line 556
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 554
    return-void

    .line 557
    :cond_0
    const-string/jumbo v0, "0.0.0.0 not allowed"

    goto :goto_0
.end method

.method private updateImsVoLteProvisionedState()V
    .locals 2

    .prologue
    .line 1165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateImsVoLteProvisionedState isImsVoLteProvisioned()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->isImsVoLteProvisioned()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/RadioInfo;->log(Ljava/lang/String;)V

    .line 1168
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->imsVoLteProvisionedSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1169
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->imsVoLteProvisionedSwitch:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->isImsVoLteProvisioned()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1170
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->imsVoLteProvisionedSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->mImsVoLteCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1164
    return-void
.end method

.method private final updateLocation(Landroid/telephony/CellLocation;)V
    .locals 14
    .param p1, "location"    # Landroid/telephony/CellLocation;

    .prologue
    const/4 v13, -0x1

    .line 577
    invoke-virtual {p0}, Lcom/android/settings_ex/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 578
    .local v8, "r":Landroid/content/res/Resources;
    instance-of v10, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v10, :cond_2

    move-object v5, p1

    .line 579
    check-cast v5, Landroid/telephony/gsm/GsmCellLocation;

    .line 580
    .local v5, "loc":Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v5}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    .line 581
    .local v2, "lac":I
    invoke-virtual {v5}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    .line 582
    .local v1, "cid":I
    iget-object v11, p0, Lcom/android/settings_ex/RadioInfo;->mLocation:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const v12, 0x7f0e04e8

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, " = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 583
    if-ne v2, v13, :cond_0

    const-string/jumbo v10, "unknown"

    .line 582
    :goto_0
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 584
    const-string/jumbo v12, "   "

    .line 582
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 585
    const v12, 0x7f0e04e9

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 582
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 585
    const-string/jumbo v12, " = "

    .line 582
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 586
    if-ne v1, v13, :cond_1

    const-string/jumbo v10, "unknown"

    .line 582
    :goto_1
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 576
    .end local v1    # "cid":I
    .end local v2    # "lac":I
    .end local v5    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :goto_2
    return-void

    .line 583
    .restart local v1    # "cid":I
    .restart local v2    # "lac":I
    .restart local v5    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 586
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 587
    .end local v1    # "cid":I
    .end local v2    # "lac":I
    .end local v5    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :cond_2
    instance-of v10, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v10, :cond_8

    move-object v4, p1

    .line 588
    check-cast v4, Landroid/telephony/cdma/CdmaCellLocation;

    .line 589
    .local v4, "loc":Landroid/telephony/cdma/CdmaCellLocation;
    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    .line 590
    .local v0, "bid":I
    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v9

    .line 591
    .local v9, "sid":I
    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v7

    .line 592
    .local v7, "nid":I
    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v3

    .line 593
    .local v3, "lat":I
    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v6

    .line 594
    .local v6, "lon":I
    iget-object v11, p0, Lcom/android/settings_ex/RadioInfo;->mLocation:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "BID = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 595
    if-ne v0, v13, :cond_3

    const-string/jumbo v10, "unknown"

    .line 594
    :goto_3
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 596
    const-string/jumbo v12, "   "

    .line 594
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 597
    const-string/jumbo v12, "SID = "

    .line 594
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 598
    if-ne v9, v13, :cond_4

    const-string/jumbo v10, "unknown"

    .line 594
    :goto_4
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 599
    const-string/jumbo v12, "   "

    .line 594
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 600
    const-string/jumbo v12, "NID = "

    .line 594
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 601
    if-ne v7, v13, :cond_5

    const-string/jumbo v10, "unknown"

    .line 594
    :goto_5
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 602
    const-string/jumbo v12, "\n"

    .line 594
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 603
    const-string/jumbo v12, "LAT = "

    .line 594
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 604
    if-ne v3, v13, :cond_6

    const-string/jumbo v10, "unknown"

    .line 594
    :goto_6
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 605
    const-string/jumbo v12, "   "

    .line 594
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 606
    const-string/jumbo v12, "LONG = "

    .line 594
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 607
    if-ne v6, v13, :cond_7

    const-string/jumbo v10, "unknown"

    .line 594
    :goto_7
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 595
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    .line 598
    :cond_4
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    .line 601
    :cond_5
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    .line 604
    :cond_6
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_6

    .line 607
    :cond_7
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_7

    .line 609
    .end local v0    # "bid":I
    .end local v3    # "lat":I
    .end local v4    # "loc":Landroid/telephony/cdma/CdmaCellLocation;
    .end local v6    # "lon":I
    .end local v7    # "nid":I
    .end local v9    # "sid":I
    :cond_8
    iget-object v10, p0, Lcom/android/settings_ex/RadioInfo;->mLocation:Landroid/widget/TextView;

    const-string/jumbo v11, "unknown"

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method private final updateMessageWaiting()V
    .locals 2

    .prologue
    .line 763
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mMwi:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/settings_ex/RadioInfo;->mMwiValue:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 762
    return-void
.end method

.method private final updateNeighboringCids(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 616
    .local p1, "cids":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 618
    .local v2, "sb":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_2

    .line 619
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 620
    const-string/jumbo v3, "no neighboring cells"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/RadioInfo;->mNeighboringCids:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    return-void

    .line 622
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cell$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    .line 623
    .local v0, "cell":Landroid/telephony/NeighboringCellInfo;
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 627
    .end local v0    # "cell":Landroid/telephony/NeighboringCellInfo;
    .end local v1    # "cell$iterator":Ljava/util/Iterator;
    :cond_2
    const-string/jumbo v3, "unknown"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private final updateNetworkType()V
    .locals 3

    .prologue
    .line 847
    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    .line 848
    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 849
    .local v0, "ss":Landroid/telephony/ServiceState;
    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->dataNetwork:Landroid/widget/TextView;

    .line 850
    iget-object v2, p0, Lcom/android/settings_ex/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    .line 849
    invoke-static {v2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 851
    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->voiceNetwork:Landroid/widget/TextView;

    .line 852
    iget-object v2, p0, Lcom/android/settings_ex/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v2

    .line 851
    invoke-static {v2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 846
    .end local v0    # "ss":Landroid/telephony/ServiceState;
    :cond_0
    return-void
.end method

.method private final updatePhoneState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 804
    invoke-virtual {p0}, Lcom/android/settings_ex/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 805
    .local v1, "r":Landroid/content/res/Resources;
    const v2, 0x7f0e04e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 807
    .local v0, "display":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 819
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/RadioInfo;->callState:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 803
    return-void

    .line 809
    :pswitch_0
    const v2, 0x7f0e04dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 812
    :pswitch_1
    const v2, 0x7f0e04dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 815
    :pswitch_2
    const v2, 0x7f0e04de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 807
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final updatePingState()V
    .locals 5

    .prologue
    const v4, 0x7f0e04e3

    .line 975
    invoke-virtual {p0}, Lcom/android/settings_ex/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;

    .line 976
    invoke-virtual {p0}, Lcom/android/settings_ex/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;

    .line 977
    invoke-virtual {p0}, Lcom/android/settings_ex/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    .line 979
    iget-object v3, p0, Lcom/android/settings_ex/RadioInfo;->mPingHostnameV4:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings_ex/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 980
    iget-object v3, p0, Lcom/android/settings_ex/RadioInfo;->mPingHostnameV6:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings_ex/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 981
    iget-object v3, p0, Lcom/android/settings_ex/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings_ex/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 983
    new-instance v2, Lcom/android/settings_ex/RadioInfo$20;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/RadioInfo$20;-><init>(Lcom/android/settings_ex/RadioInfo;)V

    .line 991
    .local v2, "updatePingResults":Ljava/lang/Runnable;
    new-instance v0, Lcom/android/settings_ex/RadioInfo$21;

    invoke-direct {v0, p0, v2}, Lcom/android/settings_ex/RadioInfo$21;-><init>(Lcom/android/settings_ex/RadioInfo;Ljava/lang/Runnable;)V

    .line 998
    .local v0, "hostname":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1000
    new-instance v1, Lcom/android/settings_ex/RadioInfo$22;

    invoke-direct {v1, p0, v2}, Lcom/android/settings_ex/RadioInfo$22;-><init>(Lcom/android/settings_ex/RadioInfo;Ljava/lang/Runnable;)V

    .line 1007
    .local v1, "httpClient":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 973
    return-void
.end method

.method private updatePreferredNetworkType(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 281
    sget-object v0, Lcom/android/settings_ex/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 282
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "EVENT_QUERY_PREFERRED_TYPE_DONE: unknown type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/RadioInfo;->log(Ljava/lang/String;)V

    .line 284
    sget-object v0, Lcom/android/settings_ex/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 p1, v0, -0x1

    .line 286
    :cond_1
    iput p1, p0, Lcom/android/settings_ex/RadioInfo;->mPreferredNetworkTypeResult:I

    .line 288
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    iget v1, p0, Lcom/android/settings_ex/RadioInfo;->mPreferredNetworkTypeResult:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 280
    return-void
.end method

.method private final updateProperties()V
    .locals 4

    .prologue
    const v3, 0x7f0e04e3

    .line 859
    invoke-virtual {p0}, Lcom/android/settings_ex/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 861
    .local v0, "r":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/settings_ex/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 862
    .local v1, "s":Ljava/lang/String;
    if-nez v1, :cond_0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 863
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/RadioInfo;->mDeviceId:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 866
    iget-object v2, p0, Lcom/android/settings_ex/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 867
    if-nez v1, :cond_1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 868
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/RadioInfo;->number:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 857
    return-void
.end method

.method private updateRadioPowerState()V
    .locals 2

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->radioPowerOnSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1119
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->radioPowerOnSwitch:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->isRadioOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1120
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->radioPowerOnSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->mRadioPowerOnChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1115
    return-void
.end method

.method private final updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 5
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 774
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 775
    .local v2, "state":I
    invoke-virtual {p0}, Lcom/android/settings_ex/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 776
    .local v1, "r":Landroid/content/res/Resources;
    const v3, 0x7f0e04e3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 778
    .local v0, "display":Ljava/lang/String;
    packed-switch v2, :pswitch_data_0

    .line 791
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/RadioInfo;->gsmState:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 793
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 794
    iget-object v3, p0, Lcom/android/settings_ex/RadioInfo;->roamingState:Landroid/widget/TextView;

    const v4, 0x7f0e04da

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 799
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/RadioInfo;->operatorName:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 773
    return-void

    .line 780
    :pswitch_0
    const v3, 0x7f0e04d6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 784
    :pswitch_1
    const v3, 0x7f0e04d8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 787
    :pswitch_2
    const v3, 0x7f0e04d9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 796
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/RadioInfo;->roamingState:Landroid/widget/TextView;

    const v4, 0x7f0e04db

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 778
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final updateSignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 6
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/android/settings_ex/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 564
    .local v0, "r":Landroid/content/res/Resources;
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v2

    .line 566
    .local v2, "signalDbm":I
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getAsuLevel()I

    move-result v1

    .line 568
    .local v1, "signalAsu":I
    const/4 v3, -0x1

    if-ne v3, v1, :cond_0

    const/4 v1, 0x0

    .line 570
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/RadioInfo;->dBm:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 571
    const v5, 0x7f0e04e6

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 570
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 571
    const-string/jumbo v5, "   "

    .line 570
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 572
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 570
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 572
    const-string/jumbo v5, " "

    .line 570
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 573
    const v5, 0x7f0e04e7

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 570
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 561
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const v9, 0x1090009

    const v8, 0x1090008

    const/4 v7, 0x0

    .line 336
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 338
    const v5, 0x7f040161

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/RadioInfo;->setContentView(I)V

    .line 340
    const-string/jumbo v5, "Started onCreate"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/RadioInfo;->log(Ljava/lang/String;)V

    .line 342
    const-string/jumbo v5, "phone"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/RadioInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iput-object v5, p0, Lcom/android/settings_ex/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 343
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    .line 347
    invoke-virtual {p0}, Lcom/android/settings_ex/RadioInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 348
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v6

    .line 347
    invoke-static {v5, v6}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/RadioInfo;->mImsManager:Lcom/android/ims/ImsManager;

    .line 350
    const v5, 0x7f11028d

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/RadioInfo;->mDeviceId:Landroid/widget/TextView;

    .line 351
    const v5, 0x7f1101a4

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/RadioInfo;->number:Landroid/widget/TextView;

    .line 352
    const v5, 0x7f110294

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/RadioInfo;->callState:Landroid/widget/TextView;

    .line 353
    const v5, 0x7f11028e

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/RadioInfo;->operatorName:Landroid/widget/TextView;

    .line 354
    const v5, 0x7f110295

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/RadioInfo;->roamingState:Landroid/widget/TextView;

    .line 355
    const v5, 0x7f110290

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/RadioInfo;->gsmState:Landroid/widget/TextView;

    .line 356
    const v5, 0x7f110291

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/RadioInfo;->gprsState:Landroid/widget/TextView;

    .line 357
    const v5, 0x7f110292

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/RadioInfo;->voiceNetwork:Landroid/widget/TextView;

    .line 358
    const v5, 0x7f110293

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/RadioInfo;->dataNetwork:Landroid/widget/TextView;

    .line 359
    const v5, 0x7f11028f

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/RadioInfo;->dBm:Landroid/widget/TextView;

    .line 360
    const v5, 0x7f11029c

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/RadioInfo;->mMwi:Landroid/widget/TextView;

    .line 361
    const v5, 0x7f11029d

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/RadioInfo;->mCfi:Landroid/widget/TextView;

    .line 362
    const v5, 0x7f1102ab

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/RadioInfo;->mLocation:Landroid/widget/TextView;

    .line 363
    const v5, 0x7f1102ac

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/RadioInfo;->mNeighboringCids:Landroid/widget/TextView;

    .line 364
    const v5, 0x7f1102ad

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/RadioInfo;->mCellInfo:Landroid/widget/TextView;

    .line 367
    const v5, 0x7f11029b

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/RadioInfo;->mDcRtInfoTv:Landroid/widget/TextView;

    .line 369
    const v5, 0x7f11029e

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/RadioInfo;->sent:Landroid/widget/TextView;

    .line 370
    const v5, 0x7f11029f

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/RadioInfo;->received:Landroid/widget/TextView;

    .line 371
    const v5, 0x7f1102a6

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/settings_ex/RadioInfo;->smsc:Landroid/widget/EditText;

    .line 372
    const v5, 0x7f1102a8

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/RadioInfo;->dnsCheckState:Landroid/widget/TextView;

    .line 373
    const v5, 0x7f110298

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/RadioInfo;->mPingHostnameV4:Landroid/widget/TextView;

    .line 374
    const v5, 0x7f110299

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/RadioInfo;->mPingHostnameV6:Landroid/widget/TextView;

    .line 375
    const v5, 0x7f11029a

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    .line 377
    const v5, 0x7f110296

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/android/settings_ex/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    .line 378
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 379
    sget-object v5, Lcom/android/settings_ex/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    .line 378
    invoke-direct {v0, p0, v8, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 380
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 381
    iget-object v5, p0, Lcom/android/settings_ex/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 383
    const v5, 0x7f1102aa

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/android/settings_ex/RadioInfo;->cellInfoRefreshRateSpinner:Landroid/widget/Spinner;

    .line 384
    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 385
    sget-object v5, Lcom/android/settings_ex/RadioInfo;->mCellInfoRefreshRateLabels:[Ljava/lang/String;

    .line 384
    invoke-direct {v1, p0, v8, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 386
    .local v1, "cellInfoAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v1, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 387
    iget-object v5, p0, Lcom/android/settings_ex/RadioInfo;->cellInfoRefreshRateSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 389
    const v5, 0x7f1102a2

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Switch;

    iput-object v5, p0, Lcom/android/settings_ex/RadioInfo;->imsVoLteProvisionedSwitch:Landroid/widget/Switch;

    .line 391
    const v5, 0x7f1102a1

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Switch;

    iput-object v5, p0, Lcom/android/settings_ex/RadioInfo;->radioPowerOnSwitch:Landroid/widget/Switch;

    .line 393
    const v5, 0x7f110297

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/settings_ex/RadioInfo;->pingTestButton:Landroid/widget/Button;

    .line 394
    iget-object v5, p0, Lcom/android/settings_ex/RadioInfo;->pingTestButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/settings_ex/RadioInfo;->mPingButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    const v5, 0x7f1102a4

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/settings_ex/RadioInfo;->updateSmscButton:Landroid/widget/Button;

    .line 396
    iget-object v5, p0, Lcom/android/settings_ex/RadioInfo;->updateSmscButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/settings_ex/RadioInfo;->mUpdateSmscButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    const v5, 0x7f1102a5

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/settings_ex/RadioInfo;->refreshSmscButton:Landroid/widget/Button;

    .line 398
    iget-object v5, p0, Lcom/android/settings_ex/RadioInfo;->refreshSmscButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/settings_ex/RadioInfo;->mRefreshSmscButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    const v5, 0x7f1102a7

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/settings_ex/RadioInfo;->dnsCheckToggleButton:Landroid/widget/Button;

    .line 400
    iget-object v5, p0, Lcom/android/settings_ex/RadioInfo;->dnsCheckToggleButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/settings_ex/RadioInfo;->mDnsCheckButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    const v5, 0x7f1102a9

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/settings_ex/RadioInfo;->oemInfoButton:Landroid/widget/Button;

    .line 403
    iget-object v5, p0, Lcom/android/settings_ex/RadioInfo;->oemInfoButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/settings_ex/RadioInfo;->mOemInfoButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    invoke-virtual {p0}, Lcom/android/settings_ex/RadioInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 405
    .local v4, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "com.android.settings_ex.OEM_RADIO_INFO"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 406
    .local v2, "oemInfoIntent":Landroid/content/Intent;
    invoke-virtual {v4, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 407
    .local v3, "oemInfoIntentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 408
    iget-object v5, p0, Lcom/android/settings_ex/RadioInfo;->oemInfoButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 411
    :cond_0
    iput v7, p0, Lcom/android/settings_ex/RadioInfo;->mCellInfoRefreshRateIndex:I

    .line 412
    sget-object v5, Lcom/android/settings_ex/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/settings_ex/RadioInfo;->mPreferredNetworkTypeResult:I

    .line 415
    iget-object v5, p0, Lcom/android/settings_ex/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    .line 416
    iget-object v6, p0, Lcom/android/settings_ex/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 415
    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 418
    invoke-direct {p0, p1}, Lcom/android/settings_ex/RadioInfo;->restoreFromBundle(Landroid/os/Bundle;)V

    .line 335
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 515
    const v0, 0x7f0e055f

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 516
    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->mSelectBandCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 515
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    .line 517
    const/16 v1, 0x62

    .line 515
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 519
    const v0, 0x7f0e04d2

    .line 518
    invoke-interface {p1, v3, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 519
    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->mViewADNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 518
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 520
    const/4 v0, 0x2

    .line 521
    const v1, 0x7f0e04d3

    .line 520
    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 521
    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->mViewFDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 520
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 522
    const/4 v0, 0x3

    .line 523
    const v1, 0x7f0e04d4

    .line 522
    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 523
    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->mViewSDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 522
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 524
    const/4 v0, 0x4

    .line 525
    const v1, 0x7f0e04d5

    .line 524
    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 525
    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->mGetPdpList:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 524
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 526
    const/4 v0, 0x5

    .line 527
    const v1, 0x7f0e04cd

    .line 526
    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 527
    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->mToggleData:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 526
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 528
    return v3
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 475
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 477
    const-string/jumbo v0, "onPause: unregister phone & data intents"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/RadioInfo;->log(Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 480
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->setCellInfoListRate(I)V

    .line 474
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 534
    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 535
    .local v0, "item":Landroid/view/MenuItem;
    iget-object v3, p0, Lcom/android/settings_ex/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    .line 536
    .local v1, "state":I
    const/4 v2, 0x1

    .line 538
    .local v2, "visible":Z
    packed-switch v1, :pswitch_data_0

    .line 547
    :pswitch_0
    const/4 v2, 0x0

    .line 550
    :goto_0
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 551
    const/4 v3, 0x1

    return v3

    .line 541
    :pswitch_1
    const v3, 0x7f0e04cd

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 544
    :pswitch_2
    const v3, 0x7f0e04cc

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 538
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 423
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 425
    const-string/jumbo v0, "Started onResume"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/RadioInfo;->log(Ljava/lang/String;)V

    .line 427
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updateMessageWaiting()V

    .line 428
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updateCallRedirect()V

    .line 429
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updateDataState()V

    .line 430
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updateDataStats2()V

    .line 431
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updateRadioPowerState()V

    .line 432
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updateImsVoLteProvisionedState()V

    .line 433
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updateProperties()V

    .line 434
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updateDnsCheckState()V

    .line 435
    invoke-direct {p0}, Lcom/android/settings_ex/RadioInfo;->updateNetworkType()V

    .line 437
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mNeighboringCellResult:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/RadioInfo;->updateNeighboringCids(Ljava/util/List;)V

    .line 438
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mCellLocationResult:Landroid/telephony/CellLocation;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/RadioInfo;->updateLocation(Landroid/telephony/CellLocation;)V

    .line 439
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mCellInfoResult:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/RadioInfo;->updateCellInfo(Ljava/util/List;)V

    .line 441
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mPingHostnameV4:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mPingHostnameV6:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->cellInfoRefreshRateSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->mCellInfoRefreshRateHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 447
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->cellInfoRefreshRateSpinner:Landroid/widget/Spinner;

    iget v1, p0, Lcom/android/settings_ex/RadioInfo;->mCellInfoRefreshRateIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 450
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    iget v1, p0, Lcom/android/settings_ex/RadioInfo;->mPreferredNetworkTypeResult:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 451
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 453
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->radioPowerOnSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->mRadioPowerOnChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 454
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->imsVoLteProvisionedSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->mImsVoLteCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 456
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 457
    const/16 v2, 0x25fd

    .line 456
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 470
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->smsc:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 422
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 504
    const-string/jumbo v0, "mPingHostnameResultV4"

    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const-string/jumbo v0, "mPingHostnameResultV6"

    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string/jumbo v0, "mHttpClientTestResult"

    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    const-string/jumbo v0, "mPreferredNetworkTypeResult"

    iget v1, p0, Lcom/android/settings_ex/RadioInfo;->mPreferredNetworkTypeResult:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 509
    const-string/jumbo v0, "mCellInfoRefreshRateIndex"

    iget v1, p0, Lcom/android/settings_ex/RadioInfo;->mCellInfoRefreshRateIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 503
    return-void
.end method

.method setImsVoLteProvisionedState(Z)V
    .locals 4
    .param p1, "state"    # Z

    .prologue
    .line 1132
    const-string/jumbo v1, "toggle VoLTE provisioned: %s"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    if-eqz p1, :cond_1

    const-string/jumbo v0, "on"

    :goto_0
    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/RadioInfo;->log(Ljava/lang/String;)V

    .line 1134
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v0, :cond_0

    .line 1135
    invoke-static {}, Landroid/app/QueuedWork;->singleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/android/settings_ex/RadioInfo$23;

    invoke-direct {v1, p0, p1}, Lcom/android/settings_ex/RadioInfo$23;-><init>(Lcom/android/settings_ex/RadioInfo;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1131
    :cond_0
    return-void

    .line 1132
    :cond_1
    const-string/jumbo v0, "off"

    goto :goto_0
.end method
