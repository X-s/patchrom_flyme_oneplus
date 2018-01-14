.class public Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;
.super Ljava/lang/Object;
.source "DdsCardSelectionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$1;,
        Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$2;,
        Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$3;,
        Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$4;,
        Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$5;,
        Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;,
        Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$TetherStateChange;
    }
.end annotation


# static fields
.field private static final ACTION_MCFG_MBN_ACTIVATED_DONE:Ljava/lang/String; = "qualcomm.intent.action.ACTION_MCFG_MBN_DONE"

.field private static final BACKUP_DDS_ICCID:Ljava/lang/String; = "persist.radio.bksim.iccid"

.field private static final CONFIG_CURRENT_PRIMARY_SUB:Ljava/lang/String; = "config_current_primary_sub"

.field private static final DDS_ICCID:Ljava/lang/String; = "persist.radio.ddssim.iccid"

.field private static final DDS_NETWORK_TYPE:Ljava/lang/String; = "persist.radio.ddssim.rat"

.field private static final DEBUG:Z = true

.field private static final EVENT_ADD_SUBINFO_RECORD_FOR_MULTIMODE:I = 0xa

.field private static final EVENT_ANTENNA_SWITCH_RETRY:I = 0x14

.field private static final EVENT_CARD_ABSENT_FOR_MULTIMODE:I = 0xb

.field private static final EVENT_GET_ANTENNA_POS:I = 0x15

.field private static final EVENT_GET_ICC_STATUS_DONE:I = 0xe

.field private static final EVENT_GET_RADIO_CAPABILITY:I = 0x11

.field private static final EVENT_MBN_ACTIVATED_DONE:I = 0x17

.field private static final EVENT_PHONE_OBJECT_SWITCH:I = 0x1a

.field private static final EVENT_PRI_PERF_DONE:I = 0x12

.field private static final EVENT_RADIO_AVAILABLE:I = 0xc

.field private static final EVENT_RADIO_NOT_AVAILABLE:I = 0xd

.field private static final EVENT_RESET_DDS:I = 0x1c

.field private static final EVENT_SET_GW_PERF_DONE:I = 0x10

.field private static final EVENT_SIM_LOADED_DONE:I = 0x18

.field private static final EVENT_SIM_STATUS_CHANGE:I = 0x16

.field private static final EVENT_SOFTSIM_SETTING_CHANGE:I = 0x1b

.field private static final EVENT_TEST_CARD_DETECT:I = 0x13

.field private static final EVENT_WAITING_TIME_OUT:I = 0xf

.field private static final FIRST_BOOT:Ljava/lang/String; = "persist.radio.firstboot"

.field static final LOG_TAG:Ljava/lang/String; = "DdsCardSelectionController"

.field private static final NOT_PROVISIONED:I = 0x0

.field private static final OEM_CMD_RF_SAR_STATUS_CLOSE:I = 0x3

.field private static final OEM_CMD_RF_SAR_STATUS_OPEN:I = 0x2

.field private static final OEM_EVENT_TETHER_STATE_CHANGE:I = 0x19

.field private static final OEM_RF_SAR_CALLING_ONLY:I = 0x2

.field private static final OEM_RF_SAR_WIFIHOT_AND_CALLING:I = 0x3

.field private static final OEM_RF_SAR_WIFIHOT_ONLY:I = 0x1

.field private static final PROVISIONED:I = 0x1

.field private static final SOFTSIM_DISABLE_EVENT_DELAY:I = 0xfa0

.field private static final SOFT_SIM:Ljava/lang/String; = "softsim_iccid"

.field private static final VDBG:Z = false

.field private static final WAITING_OTHER_CARD_INSERT_DELAY:I = 0x1770

.field private static final WAITING_OTHER_CARD_READY_DELAY:I = 0xbb8

.field private static isAmVersion:Z

.field private static isCMCCVersion:Z

.field private static isCardPlugIn2Out:Z

.field private static isEUVersion:Z

.field private static mIccidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mNumPhones:I

.field private static mQtiRadioCapabilityController:Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

.field private static mTMOIccidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static needRecoverSar:Z

.field private static retry_times:I

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

.field private static sProxyPhones:[Lcom/android/internal/telephony/Phone;


# instance fields
.field private RF_AM_VERSION:Ljava/lang/String;

.field private RF_EU_VERSION:Ljava/lang/String;

.field private isCtaSwitchNotOn:Z

.field isWifiHotOpen:Z

.field isWifiHotOpenOld:Z

.field mAudioManager:Landroid/media/AudioManager;

.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

.field private mHandler:Landroid/os/Handler;

.field private mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mObserver:Landroid/database/ContentObserver;

.field private mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

.field private mQcRilHookCallback:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

.field private mQcRilHookReady:Z

.field private mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

.field private mRadioCapability:[Lcom/android/internal/telephony/RadioCapability;

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private switchSmartAntennal:Z


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isAmVersion:Z

    return v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isEUVersion:Z

    return v0
.end method

.method static synthetic -get10()I
    .locals 1

    sget v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->retry_times:I

    return v0
.end method

.method static synthetic -get2(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)[Lcom/android/internal/telephony/CommandsInterface;
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic -get3(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    return-object v0
.end method

.method static synthetic -get4(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Lcom/qualcomm/qcrilhook/QcRilHook;
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    return-object v0
.end method

.method static synthetic -get6(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQcRilHookReady:Z

    return v0
.end method

.method static synthetic -get7()Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;
    .locals 1

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQtiRadioCapabilityController:Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    return-object v0
.end method

.method static synthetic -get8(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)[Lcom/android/internal/telephony/RadioCapability;
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mRadioCapability:[Lcom/android/internal/telephony/RadioCapability;

    return-object v0
.end method

.method static synthetic -get9()Z
    .locals 1

    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->needRecoverSar:Z

    return v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isCardPlugIn2Out:Z

    return p0
.end method

.method static synthetic -set1(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQcRilHookReady:Z

    return p1
.end method

.method static synthetic -set2(Z)Z
    .locals 0

    sput-boolean p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->needRecoverSar:Z

    return p0
.end method

.method static synthetic -set3(I)I
    .locals 0

    sput p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->retry_times:I

    return p0
.end method

.method static synthetic -wrap0(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->checkAllCardInsert()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isOnlyOneCardInsert()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Landroid/os/Message;)V
    .locals 0
    .param p1, "rsp"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->notifyOnlyWifiHotStatus2Modem(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;ZLandroid/os/Message;)V
    .locals 0
    .param p1, "screen_off"    # Z
    .param p2, "rsp"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->notifyWifiHotAndIncallingOnScreenStatus2Modem(ZLandroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->oemSendSubscriptionSettings()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Landroid/os/AsyncResult;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "index"    # Ljava/lang/Integer;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->processMbnActivatedDone()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;I)V
    .locals 0
    .param p1, "phoneId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->processSimStatusChange(I)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->processSoftSimIccidChange()V

    return-void
.end method

.method static synthetic -wrap17(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;IILjava/lang/String;)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "status"    # I
    .param p3, "iccid"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->updateCurrentCardStatus(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isTestCard()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/util/ArrayList;)Z
    .locals 1
    .param p1, "active"    # Ljava/util/ArrayList;

    .prologue
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isWifiTethered(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getPhoneMatchImei()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;ILjava/lang/String;)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "iccId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->handleAddSubInfoRecordforSelectMultiMode(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->handleTimeOut()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;ZLandroid/os/Message;)V
    .locals 0
    .param p1, "screen_off"    # Z
    .param p2, "rsp"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->notifyOnlyIncallingOnScreenStatus2Modem(ZLandroid/os/Message;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x0

    .line 135
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    .line 142
    sput-boolean v1, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isEUVersion:Z

    .line 143
    sput-boolean v1, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isAmVersion:Z

    .line 148
    sput v1, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->retry_times:I

    .line 151
    sput-boolean v1, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->needRecoverSar:Z

    .line 152
    const/4 v0, 0x1

    sput-boolean v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isCardPlugIn2Out:Z

    .line 154
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$1;

    invoke-direct {v0, v2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$1;-><init>(I)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mIccidList:Ljava/util/ArrayList;

    .line 164
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$2;

    invoke-direct {v0, v2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$2;-><init>(I)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mTMOIccidList:Ljava/util/ArrayList;

    .line 77
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;[Lcom/android/internal/telephony/CommandsInterface;[Lcom/android/internal/telephony/Phone;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "qRCC"    # Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;
    .param p4, "phoneProxy"    # [Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    sget v3, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    new-array v3, v3, [Lcom/android/internal/telephony/RadioCapability;

    iput-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mRadioCapability:[Lcom/android/internal/telephony/RadioCapability;

    .line 138
    sget v3, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    new-array v3, v3, [Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    iput-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    .line 140
    const-string/jumbo v3, "TDD_FDD_Eu"

    iput-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->RF_EU_VERSION:Ljava/lang/String;

    .line 141
    const-string/jumbo v3, "TDD_FDD_Am"

    iput-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->RF_AM_VERSION:Ljava/lang/String;

    .line 144
    iput-boolean v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isCtaSwitchNotOn:Z

    .line 145
    iput-boolean v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->switchSmartAntennal:Z

    .line 146
    iput-boolean v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQcRilHookReady:Z

    .line 149
    iput-object v8, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 275
    new-instance v3, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$3;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$3;-><init>(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mObserver:Landroid/database/ContentObserver;

    .line 283
    new-instance v3, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$4;

    invoke-direct {v3, p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$4;-><init>(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V

    iput-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 370
    iput-object v8, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCm:Landroid/net/ConnectivityManager;

    .line 371
    iput-boolean v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isWifiHotOpen:Z

    .line 372
    iput-boolean v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isWifiHotOpenOld:Z

    .line 584
    new-instance v3, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$5;

    invoke-direct {v3, p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$5;-><init>(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V

    iput-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQcRilHookCallback:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    .line 226
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    .line 227
    iput-object p3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 228
    sput-object p4, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 229
    sput-object p2, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQtiRadioCapabilityController:Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    .line 230
    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "DdsCardSelectionController"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 231
    .local v2, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 232
    new-instance v3, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, p0, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;-><init>(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    .line 234
    invoke-static {p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getInstance(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    move-result-object v3

    iput-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .line 235
    invoke-static {p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v3

    iput-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 237
    const-string/jumbo v3, "persist.radio.cmcc"

    const-string/jumbo v5, "true"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "true"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sput-boolean v3, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isCMCCVersion:Z

    .line 238
    const-string/jumbo v3, "ro.rf_version"

    const-string/jumbo v5, "TDD_FDD_All"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->RF_EU_VERSION:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sput-boolean v3, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isEUVersion:Z

    .line 239
    const-string/jumbo v3, "ro.rf_version"

    const-string/jumbo v5, "TDD_FDD_All"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->RF_AM_VERSION:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sput-boolean v3, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isAmVersion:Z

    .line 240
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v5, "oem.ctaSwitch.support"

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isCtaSwitchNotOn:Z

    .line 241
    sget-boolean v3, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isEUVersion:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isAmVersion:Z

    if-eqz v3, :cond_2

    :cond_0
    iget-boolean v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isCtaSwitchNotOn:Z

    :goto_1
    iput-boolean v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->switchSmartAntennal:Z

    .line 242
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "audio"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mAudioManager:Landroid/media/AudioManager;

    .line 244
    new-instance v3, Lcom/qualcomm/qcrilhook/QcRilHook;

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQcRilHookCallback:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    invoke-direct {v3, v5, v6}, Lcom/qualcomm/qcrilhook/QcRilHook;-><init>(Landroid/content/Context;Lcom/qualcomm/qcrilhook/QcRilHookCallback;)V

    iput-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    .line 246
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    sget v3, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v1, v3, :cond_3

    .line 249
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    new-instance v5, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v8}, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;-><init>(ILjava/lang/String;)V

    aput-object v5, v3, v1

    .line 250
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v3, v3, v1

    iput-boolean v4, v3, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCardReady:Z

    .line 251
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v3, v3, v1

    iput-boolean v4, v3, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCDMACard:Z

    .line 252
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mRadioCapability:[Lcom/android/internal/telephony/RadioCapability;

    aput-object v8, v3, v1

    .line 253
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v1

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v1}, Ljava/lang/Integer;-><init>(I)V

    const/16 v7, 0xc

    invoke-interface {v3, v5, v7, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 254
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v1

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v1}, Ljava/lang/Integer;-><init>(I)V

    const/16 v7, 0xd

    invoke-interface {v3, v5, v7, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 255
    sget-object v3, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v1

    .line 256
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x1a

    .line 255
    invoke-virtual {v3, v5, v6, v8}, Lcom/android/internal/telephony/Phone;->registerForPhoneObjectSwitch(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 259
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 260
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "softsim_iccid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 261
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mObserver:Landroid/database/ContentObserver;

    .line 259
    invoke-virtual {v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 246
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 240
    .end local v1    # "i":I
    :cond_1
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_2
    move v3, v4

    .line 241
    goto/16 :goto_1

    .line 264
    .restart local v1    # "i":I
    :cond_3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 265
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 266
    const-string/jumbo v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 267
    const-string/jumbo v3, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 268
    const-string/jumbo v3, "qualcomm.intent.action.ACTION_MCFG_MBN_DONE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    const-string/jumbo v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 272
    const-string/jumbo v3, "Constructor - Exit"

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method private backupDdsIccid(Ljava/lang/String;)V
    .locals 1
    .param p1, "iccid"    # Ljava/lang/String;

    .prologue
    .line 1495
    const-string/jumbo v0, "persist.radio.bksim.iccid"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1493
    return-void
.end method

.method private checkAllCardInsert()Z
    .locals 4

    .prologue
    .line 1286
    const/4 v0, 0x1

    .line 1287
    .local v0, "hasAllSimInsert":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v1, v2, :cond_1

    .line 1289
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->cardStatus:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 1287
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1289
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 1292
    :cond_1
    return v0
.end method

.method private checkAllCardIsReady()Z
    .locals 3

    .prologue
    .line 742
    const/4 v0, 0x1

    .line 743
    .local v0, "hasAllSimReady":Z
    const/4 v1, 0x0

    .end local v0    # "hasAllSimReady":Z
    .local v1, "i":I
    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v1, v2, :cond_1

    .line 745
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v2, v2, v1

    iget-boolean v0, v2, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCardReady:Z

    .line 743
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 745
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "hasAllSimReady":Z
    goto :goto_1

    .line 748
    .end local v0    # "hasAllSimReady":Z
    :cond_1
    return v0
.end method

.method private checkAndSetConnectivityInstance()V
    .locals 2

    .prologue
    .line 1419
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 1420
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCm:Landroid/net/ConnectivityManager;

    .line 1418
    :cond_0
    return-void
.end method

.method private doFlexMapping(I)V
    .locals 9
    .param p1, "subId"    # I

    .prologue
    .line 1566
    sget v7, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    new-array v6, v7, [Landroid/telephony/RadioAccessFamily;

    .line 1567
    .local v6, "rafs":[Landroid/telephony/RadioAccessFamily;
    const/4 v0, 0x0

    .line 1568
    .local v0, "atLeastOneMatch":Z
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v4

    .line 1569
    .local v4, "proxyController":Lcom/android/internal/telephony/ProxyController;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v7, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v1, v7, :cond_1

    .line 1570
    sget-object v7, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v7, v1

    .line 1572
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    .line 1573
    .local v2, "id":I
    if-ne v2, p1, :cond_0

    .line 1574
    invoke-virtual {v4}, Lcom/android/internal/telephony/ProxyController;->getMaxRafSupported()I

    move-result v5

    .line 1575
    .local v5, "raf":I
    const/4 v0, 0x1

    .line 1579
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[doFlexMapping] phoneId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " subId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " RAF="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1580
    new-instance v7, Landroid/telephony/RadioAccessFamily;

    invoke-direct {v7, v1, v5}, Landroid/telephony/RadioAccessFamily;-><init>(II)V

    aput-object v7, v6, v1

    .line 1569
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1577
    .end local v5    # "raf":I
    :cond_0
    invoke-virtual {v4}, Lcom/android/internal/telephony/ProxyController;->getMinRafSupported()I

    move-result v5

    .restart local v5    # "raf":I
    goto :goto_1

    .line 1582
    .end local v2    # "id":I
    .end local v3    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v5    # "raf":I
    :cond_1
    if-eqz v0, :cond_3

    .line 1583
    sget-boolean v7, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isEUVersion:Z

    if-eqz v7, :cond_2

    .line 1585
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/internal/telephony/ProxyController;->euSetRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    .line 1564
    :goto_2
    return-void

    .line 1589
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/internal/telephony/ProxyController;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    goto :goto_2

    .line 1592
    :cond_3
    const-string/jumbo v7, "[doFlexMapping] no valid subId\'s found - not updating."

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static getInstance()Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;
    .locals 2

    .prologue
    .line 217
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sInstance:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    if-nez v0, :cond_0

    .line 218
    const-string/jumbo v0, "DdsCardSelectionController"

    const-string/jumbo v1, "DdsCardSelectionController.getInstance called before make"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sInstance:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    return-object v0
.end method

.method private getMainStackPhoneId()I
    .locals 6

    .prologue
    .line 1532
    const/4 v1, 0x0

    .line 1533
    .local v1, "modemUuId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1534
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v3, -0x1

    .line 1536
    .local v3, "primayStackPhoneId":I
    const/4 v0, 0x0

    .end local v1    # "modemUuId":Ljava/lang/String;
    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    .local v0, "i":I
    :goto_0
    sget v4, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v0, v4, :cond_2

    .line 1538
    sget-object v4, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v4, v0

    .line 1539
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v2, :cond_1

    .line 1536
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1541
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getModemUuId()Ljava/lang/String;

    move-result-object v1

    .line 1542
    .local v1, "modemUuId":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Logical Modem id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " phoneId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logv(Ljava/lang/String;)V

    .line 1543
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 1544
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    .line 1543
    if-nez v4, :cond_0

    .line 1548
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 1549
    move v3, v0

    .line 1550
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Primay Stack phone id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " selected"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logv(Ljava/lang/String;)V

    .line 1556
    .end local v1    # "modemUuId":Ljava/lang/String;
    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_2
    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 1557
    const-string/jumbo v4, "Returning default phone id"

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logv(Ljava/lang/String;)V

    .line 1558
    const/4 v3, 0x0

    .line 1561
    :cond_3
    return v3
.end method

.method private getNetworkModeFromDB(I)I
    .locals 8
    .param p1, "phoneId"    # I

    .prologue
    const/4 v7, 0x0

    .line 700
    const/4 v0, 0x0

    .line 701
    .local v0, "mQtiSubscriptionController":Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v0

    .line 702
    .local v0, "mQtiSubscriptionController":Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;
    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v3

    .line 706
    .local v3, "subId":[I
    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    .line 707
    aget v4, v3, v7

    invoke-virtual {v0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v4

    .line 706
    if-eqz v4, :cond_0

    .line 708
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 709
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "preferred_network_mode"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v3, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 710
    sget v6, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    .line 708
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 711
    .local v1, "networkMode":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " get sub based N/W mode, val["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logv(Ljava/lang/String;)V

    .line 722
    :goto_0
    return v1

    .line 714
    .end local v1    # "networkMode":I
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 715
    const-string/jumbo v5, "preferred_network_mode"

    .line 714
    invoke-static {v4, v5, p1}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 720
    .restart local v1    # "networkMode":I
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " get slot based N/W mode, val["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logv(Ljava/lang/String;)V

    goto :goto_0

    .line 716
    .end local v1    # "networkMode":I
    :catch_0
    move-exception v2

    .line 717
    .local v2, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v4, "getPreferredNetworkMode: Could not find PREFERRED_NETWORK_MODE!!!"

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->loge(Ljava/lang/String;)V

    .line 718
    sget v1, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    .restart local v1    # "networkMode":I
    goto :goto_1
.end method

.method private getPhoneMatchImei()V
    .locals 0

    .prologue
    .line 1355
    return-void
.end method

.method private getPrimaryICCID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1015
    const/4 v0, 0x0

    .line 1016
    .local v0, "iccid":Ljava/lang/String;
    const-string/jumbo v1, "persist.radio.ddssim.iccid"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1017
    .local v0, "iccid":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " getPrimaryICCID,DDS_ICCId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1018
    return-object v0
.end method

.method private getPrimaryNetworkType()I
    .locals 3

    .prologue
    .line 1033
    const-string/jumbo v1, "persist.radio.ddssim.rat"

    const/16 v2, 0x14

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1034
    .local v0, "network_type":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " getPrimaryNetworkType  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1035
    return v0
.end method

.method private getPrimarySlot()I
    .locals 4

    .prologue
    .line 1000
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1001
    const-string/jumbo v2, "config_current_primary_sub"

    const/4 v3, -0x1

    .line 1000
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1003
    .local v0, "slotId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " getPrimarySlot,CONFIG_CURRENT_PRIMARY_SUB="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1005
    return v0
.end method

.method private getUiccProvisionStatus(I)I
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 1110
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->getInstance()Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    move-result-object v0

    .line 1111
    .local v0, "extTelService":Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;
    if-eqz v0, :cond_0

    .line 1112
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->getInstance()Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v1

    return v1

    .line 1115
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private handleAddSubInfoRecordforSelectMultiMode(ILjava/lang/String;)V
    .locals 10
    .param p1, "slotId"    # I
    .param p2, "iccId"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 602
    const/4 v2, 0x0

    .line 605
    .local v2, "isAllSimInsert":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "detect iccid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  slotId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 606
    if-eqz p2, :cond_0

    .line 608
    invoke-direct {p0, p1, v8, p2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->updateCurrentCardStatus(IILjava/lang/String;)V

    .line 609
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, p1

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0xe

    invoke-virtual {v4, v6, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 610
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v3, v3, p1

    iput-boolean v7, v3, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCardReady:Z

    .line 613
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->checkAllCardInsert()Z

    move-result v2

    .line 615
    .local v2, "isAllSimInsert":Z
    const-string/jumbo v3, "fasle"

    const-string/jumbo v4, "persist.radio.firstboot"

    invoke-static {v4, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 617
    const-string/jumbo v3, "this time is first boot up"

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 618
    const-string/jumbo v3, "persist.radio.firstboot"

    const-string/jumbo v4, "fasle"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    sget-object v3, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, p1

    invoke-virtual {v3, v7}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 620
    sget-object v3, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    rsub-int/lit8 v4, p1, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3, v7}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 622
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    :goto_0
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 628
    const-string/jumbo v4, "airplane_mode_on"

    .line 627
    invoke-static {v3, v4, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 629
    .local v0, "airplaneModeOn":I
    if-nez v0, :cond_1

    .line 630
    sget-object v3, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, p1

    invoke-virtual {v3, v8}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 631
    sget-object v3, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    rsub-int/lit8 v4, p1, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3, v8}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 600
    .end local v0    # "airplaneModeOn":I
    :cond_1
    return-void

    .line 623
    :catch_0
    move-exception v1

    .line 624
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleTimeOut()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 808
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getPrevPrimaryPhoneId()I

    move-result v1

    .line 809
    .local v1, "phoneId":I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v2

    .line 810
    .local v2, "subId":[I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    aget v4, v2, v5

    invoke-virtual {v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v0

    .line 811
    .local v0, "isSubActive":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleTimeOut isSubActive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  phoneId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 812
    if-eqz v0, :cond_0

    .line 814
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    aget v4, v2, v5

    invoke-virtual {v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setDefaultDataSubId(I)V

    .line 817
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->hasCdmaCardInsert()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 819
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->setPreferredCdmaNetworkType()V

    .line 802
    :goto_0
    return-void

    .line 823
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->setPreferredGWNetworkType()V

    goto :goto_0
.end method

.method private hasCdmaCardInsert()Z
    .locals 4

    .prologue
    .line 930
    const/4 v0, 0x0

    .line 931
    .local v0, "cdmaCardInsert":Z
    const/4 v1, 0x0

    .line 932
    .local v1, "index":I
    const/4 v1, 0x0

    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v1, v2, :cond_0

    .line 934
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 936
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCDMACard:Z

    if-eqz v2, :cond_1

    .line 938
    const/4 v0, 0x1

    .line 942
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hasCdmaCardInsert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  phoneId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 943
    return v0

    .line 932
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private hasTwoCdmaCardInsert()Z
    .locals 4

    .prologue
    .line 947
    const/4 v1, 0x1

    .line 949
    .local v1, "twoCdmaCardInsert":Z
    const/4 v0, 0x0

    .end local v1    # "twoCdmaCardInsert":Z
    .local v0, "index":I
    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v0, v2, :cond_2

    .line 950
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 951
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v2, v2, v0

    iget-boolean v1, v2, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCDMACard:Z

    .line 949
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 951
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "twoCdmaCardInsert":Z
    goto :goto_1

    .line 953
    .end local v1    # "twoCdmaCardInsert":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "twoCdmaCardInsert":Z
    goto :goto_1

    .line 956
    .end local v1    # "twoCdmaCardInsert":Z
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hasTwoCdmaCardInsert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 957
    return v1
.end method

.method private informDdsToRil(I)V
    .locals 4
    .param p1, "ddsSubId"    # I

    .prologue
    .line 1652
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 1653
    .local v0, "ddsPhoneId":I
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->isServiceReady()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1654
    const-string/jumbo v2, "Oem hook service is not ready yet"

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1655
    return-void

    .line 1658
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v1, v2, :cond_1

    .line 1659
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "InformDdsToRil rild= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", DDS="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1660
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v2, v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->qcRilSendDDSInfo(II)V

    .line 1658
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1651
    :cond_1
    return-void
.end method

.method private isCdmaRat(II)Z
    .locals 3
    .param p1, "network_type"    # I
    .param p2, "phoneId"    # I

    .prologue
    .line 1213
    const/4 v0, 0x0

    .line 1214
    .local v0, "iscdmarat":Z
    const/4 v1, 0x5

    if-eq v1, p1, :cond_0

    .line 1215
    const/4 v1, 0x7

    if-ne v1, p1, :cond_2

    .line 1223
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 1225
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isCdmaRat  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "   phoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1226
    return v0

    .line 1216
    :cond_2
    const/16 v1, 0xa

    if-eq v1, p1, :cond_0

    .line 1217
    const/4 v1, 0x6

    if-eq v1, p1, :cond_0

    .line 1218
    const/16 v1, 0x8

    if-eq v1, p1, :cond_0

    .line 1219
    const/4 v1, 0x4

    if-eq v1, p1, :cond_0

    .line 1220
    const/16 v1, 0x15

    if-eq v1, p1, :cond_0

    .line 1221
    const/16 v1, 0x16

    if-ne v1, p1, :cond_1

    goto :goto_0
.end method

.method private isOnlyOneCardInsert()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1297
    const/4 v1, 0x0

    .line 1298
    .local v1, "onlyOneCard":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v4, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v0, v4, :cond_3

    .line 1300
    if-nez v1, :cond_0

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->cardStatus:I

    if-ne v4, v3, :cond_2

    .line 1301
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 1298
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1300
    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    .line 1301
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 1300
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1304
    :cond_3
    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->checkAllCardInsert()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    :goto_2
    return v2

    :cond_5
    move v2, v3

    goto :goto_2
.end method

.method private isRadioAvailable(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 737
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v0

    return v0
.end method

.method private isSubProvisioned(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 1122
    const/4 v0, 0x1

    .line 1124
    .local v0, "isSubIdUsable":Z
    if-eqz v0, :cond_0

    .line 1125
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " Invalid phoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->loge(Ljava/lang/String;)V

    .line 1127
    const/4 v0, 0x0

    .line 1135
    :cond_0
    :goto_0
    return v0

    .line 1129
    :cond_1
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getUiccProvisionStatus(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 1130
    const/4 v0, 0x0

    .line 1132
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isSubProvisioned, state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isTestCard()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 1442
    const/4 v1, 0x0

    .line 1443
    .local v1, "isTestCard":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 1444
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v3

    :cond_0
    if-nez v3, :cond_1

    .line 1445
    return v1

    .line 1447
    :cond_1
    const/4 v0, 0x0

    .end local v1    # "isTestCard":Z
    .local v0, "i":I
    :goto_0
    if-nez v1, :cond_3

    sget v3, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v0, v3, :cond_3

    .line 1449
    sget-object v3, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    iput-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1450
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v3, :cond_2

    .line 1452
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccRecords;->is_test_card()Z

    move-result v1

    .line 1447
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1456
    :cond_3
    return v1
.end method

.method private isWifiTethered(Ljava/util/ArrayList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 1426
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->checkAndSetConnectivityInstance()V

    .line 1428
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v3

    .line 1429
    .local v3, "wifiRegexs":[Ljava/lang/String;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "intf$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1430
    .local v0, "intf":Ljava/lang/String;
    array-length v6, v3

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v2, v3, v4

    .line 1431
    .local v2, "regex":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1432
    const/4 v4, 0x1

    return v4

    .line 1430
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1437
    .end local v0    # "intf":Ljava/lang/String;
    .end local v2    # "regex":Ljava/lang/String;
    :cond_2
    return v5
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1636
    const-string/jumbo v0, "DdsCardSelectionController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1644
    const-string/jumbo v0, "DdsCardSelectionController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1640
    const-string/jumbo v0, "DdsCardSelectionController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1647
    return-void
.end method

.method public static make(Landroid/content/Context;Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;[Lcom/android/internal/telephony/CommandsInterface;[Lcom/android/internal/telephony/Phone;)Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "qRCC"    # Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "phoneProxy"    # [Lcom/android/internal/telephony/Phone;

    .prologue
    .line 206
    const-string/jumbo v0, "DdsCardSelectionController"

    const-string/jumbo v1, "make and getInstance"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sInstance:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;-><init>(Landroid/content/Context;Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;[Lcom/android/internal/telephony/CommandsInterface;[Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sInstance:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    .line 212
    :goto_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sInstance:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    return-object v0

    .line 210
    :cond_0
    const-string/jumbo v0, "DdsCardSelectionController"

    const-string/jumbo v1, "DdsCardSelectionController.make() should be called once"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private notifyOnlyIncallingOnScreenStatus2Modem(ZLandroid/os/Message;)V
    .locals 4
    .param p1, "screen_off"    # Z
    .param p2, "rsp"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x2

    .line 1363
    const/4 v0, 0x0

    .local v0, "i":I
    sget v1, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-lez v1, :cond_0

    .line 1366
    if-eqz p1, :cond_1

    .line 1368
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3, v3, p2}, Lcom/android/internal/telephony/Phone;->setFactoryModeModemGPIO(IILandroid/os/Message;)V

    .line 1360
    :cond_0
    :goto_0
    return-void

    .line 1372
    :cond_1
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v3, p2}, Lcom/android/internal/telephony/Phone;->setFactoryModeModemGPIO(IILandroid/os/Message;)V

    goto :goto_0
.end method

.method private notifyOnlyWifiHotStatus2Modem(Landroid/os/Message;)V
    .locals 4
    .param p1, "rsp"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 1382
    const/4 v0, 0x0

    .local v0, "i":I
    sget v1, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-lez v1, :cond_0

    .line 1385
    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isWifiHotOpen:Z

    if-eqz v1, :cond_1

    .line 1387
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/internal/telephony/Phone;->setFactoryModeModemGPIO(IILandroid/os/Message;)V

    .line 1379
    :cond_0
    :goto_0
    return-void

    .line 1391
    :cond_1
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/internal/telephony/Phone;->setFactoryModeModemGPIO(IILandroid/os/Message;)V

    goto :goto_0
.end method

.method private notifyUiDdsChanaged(Z)V
    .locals 2
    .param p1, "dds_chanage"    # Z

    .prologue
    .line 1501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyUiDdsChanaged  dds_chanage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1498
    return-void
.end method

.method private notifyWifiHotAndIncallingOnScreenStatus2Modem(ZLandroid/os/Message;)V
    .locals 4
    .param p1, "screen_off"    # Z
    .param p2, "rsp"    # Landroid/os/Message;

    .prologue
    .line 1401
    const/4 v0, 0x0

    .local v0, "i":I
    sget v1, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-lez v1, :cond_0

    .line 1405
    if-eqz p1, :cond_1

    .line 1407
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3, p2}, Lcom/android/internal/telephony/Phone;->setFactoryModeModemGPIO(IILandroid/os/Message;)V

    .line 1398
    :cond_0
    :goto_0
    return-void

    .line 1411
    :cond_1
    invoke-direct {p0, p2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->notifyOnlyWifiHotStatus2Modem(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private oemSendSubscriptionSettings()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1253
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultDataSubId()I

    move-result v0

    .line 1254
    .local v0, "ddsSubId":I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getPhoneId(I)I

    move-result v3

    .line 1256
    .local v3, "phoneId":I
    if-gez v3, :cond_0

    .line 1258
    const-string/jumbo v5, "phoneId is invalid,maybe SIM card plug out, return"

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1259
    return-void

    .line 1261
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->oemGetPhoneSwitcher()Lcom/android/internal/telephony/PhoneSwitcher;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    .line 1262
    .local v1, "mPhoneSwitcher":Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;
    if-eqz v1, :cond_1

    .line 1264
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "re-config dds info phoneId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1265
    invoke-virtual {v1, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->oemSendDdsSettingConfig(I)V

    .line 1268
    :cond_1
    sget-object v5, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v5, v3

    .line 1269
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v4

    .line 1270
    .local v4, "subId":[I
    if-eqz v4, :cond_2

    array-length v5, v4

    if-lez v5, :cond_2

    .line 1271
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v5

    aget v6, v4, v7

    invoke-virtual {v5, v6}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v5

    .line 1270
    if-eqz v5, :cond_2

    .line 1272
    iget-object v5, v2, Lcom/android/internal/telephony/Phone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 1273
    iget-object v6, v2, Lcom/android/internal/telephony/Phone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataEnabled()Z

    move-result v6

    .line 1272
    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setDataEnabled(Z)V

    .line 1275
    :cond_2
    sget-boolean v5, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isCardPlugIn2Out:Z

    if-eqz v5, :cond_3

    .line 1276
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->processCmccDemand()V

    .line 1278
    :cond_3
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->hasCdmaCardInsert()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1280
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->processTMOCardAsdds()V

    .line 1251
    :cond_4
    return-void
.end method

.method private oemSetDefaultDataSubId(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .prologue
    const/4 v4, 0x0

    .line 379
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v1

    .line 380
    .local v1, "subId":[I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    aget v3, v1, v4

    invoke-virtual {v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v0

    .line 381
    .local v0, "isSubActive":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "oemSetDefaultDataSubId isSubActive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  phoneId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 382
    if-eqz v0, :cond_0

    .line 384
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    aget v3, v1, v4

    invoke-virtual {v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setDefaultDataSubId(I)V

    .line 374
    :cond_0
    return-void
.end method

.method private onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;)V
    .locals 7
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "index"    # Ljava/lang/Integer;

    .prologue
    const/4 v6, 0x0

    .line 752
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    .line 753
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error getting ICC status. RIL_REQUEST_GET_ICC_STATUS should never return an error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 755
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 753
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->loge(Ljava/lang/String;)V

    .line 756
    return-void

    .line 759
    :cond_0
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/uicc/IccCardStatus;

    .line 761
    .local v2, "ics":Lcom/android/internal/telephony/uicc/IccCardStatus;
    const/4 v3, 0x0

    .line 762
    .local v3, "isCDMACard":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " applications"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 763
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, v2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    array-length v4, v4

    if-ge v1, v4, :cond_3

    .line 764
    iget-object v4, v2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aget-object v4, v4, v1

    iget-object v0, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 766
    .local v0, "app_type":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v0, v4, :cond_1

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v4, :cond_2

    .line 768
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CDMA card insert app_type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  phoneId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 769
    const/4 v3, 0x1

    .line 763
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 772
    .end local v0    # "app_type":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    :cond_3
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    iput-boolean v3, v4, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCDMACard:Z

    .line 774
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    iget-boolean v4, v4, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCardReady:Z

    if-nez v4, :cond_4

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->checkAllCardInsert()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 779
    :cond_4
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->checkAllCardIsReady()Z

    move-result v4

    if-nez v4, :cond_7

    .line 781
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isOnlyOneCardInsert()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 782
    invoke-direct {p0, v6}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sendSetNetWorkTypeMsg(I)V

    .line 783
    return-void

    .line 776
    :cond_5
    const/16 v4, 0x1770

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sendSetNetWorkTypeMsg(I)V

    .line 777
    return-void

    .line 785
    :cond_6
    const/16 v4, 0xbb8

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sendSetNetWorkTypeMsg(I)V

    .line 786
    return-void

    .line 790
    :cond_7
    invoke-direct {p0, v6}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sendSetNetWorkTypeMsg(I)V

    .line 751
    return-void
.end method

.method private processCmccDemand()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 1461
    const/4 v3, 0x0

    .line 1462
    .local v3, "hasCmccCardInsert":Z
    const-string/jumbo v7, "persist.radio.bksim.iccid"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1463
    .local v0, "bk_iccid":Ljava/lang/String;
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getPrimaryICCID()Ljava/lang/String;

    move-result-object v2

    .line 1464
    .local v2, "ddsIccid":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v5, 0x0

    .line 1466
    .local v5, "isDdschanaged":Z
    :goto_0
    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->backupDdsIccid(Ljava/lang/String;)V

    .line 1468
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->checkAllCardInsert()Z

    move-result v7

    if-eqz v7, :cond_1

    sget-boolean v7, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isCMCCVersion:Z

    :goto_1
    if-nez v7, :cond_2

    .line 1470
    return-void

    .line 1464
    .end local v5    # "isDdschanaged":Z
    :cond_0
    const/4 v5, 0x1

    .restart local v5    # "isDdschanaged":Z
    goto :goto_0

    :cond_1
    move v7, v8

    .line 1468
    goto :goto_1

    .line 1473
    :cond_2
    sput-boolean v8, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isCardPlugIn2Out:Z

    .line 1475
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    sget v7, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v4, v7, :cond_5

    .line 1477
    sget-object v7, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mIccidList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1478
    .local v6, "it":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1479
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1480
    .local v1, "cmcciccid":Ljava/lang/String;
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v7, v7, v4

    iget-object v7, v7, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1482
    const/4 v3, 0x1

    .line 1475
    .end local v1    # "cmcciccid":Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1487
    .end local v6    # "it":Ljava/util/Iterator;
    :cond_5
    if-nez v3, :cond_6

    .line 1488
    return-void

    .line 1490
    :cond_6
    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->notifyUiDdsChanaged(Z)V

    .line 1459
    return-void
.end method

.method private processMbnActivatedDone()V
    .locals 4

    .prologue
    .line 1348
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v0, v2, :cond_0

    .line 1349
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getNetworkModeFromDB(I)I

    move-result v1

    .line 1351
    .local v1, "type":I
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1348
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1345
    .end local v1    # "type":I
    :cond_0
    return-void
.end method

.method private processSimStatusChange(I)V
    .locals 7
    .param p1, "phoneId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 1309
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v2, v2, p1

    iput-boolean v0, v2, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCardReady:Z

    .line 1310
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v2, v2, p1

    iput v0, v2, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->cardStatus:I

    .line 1311
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1313
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v3, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getUiccIccId(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    .line 1317
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    rsub-int/lit8 v3, p1, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 1319
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    rsub-int/lit8 v3, p1, 0x1

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    rsub-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getUiccIccId(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    .line 1320
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    rsub-int/lit8 v3, p1, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1322
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    rsub-int/lit8 v3, p1, 0x1

    aget-object v2, v2, v3

    iput v0, v2, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->cardStatus:I

    .line 1326
    :cond_1
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xe

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 1328
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isOnlyOneCardInsert()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1330
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->oemSetDefaultDataSubId(I)V

    .line 1331
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->savePrimarySlot(I)V

    .line 1333
    :cond_2
    const-string/jumbo v2, "true"

    const-string/jumbo v3, "persist.radio.ptcrb.enable"

    const-string/jumbo v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    .line 1334
    .local v0, "isNotPtcrb":Z
    :cond_3
    if-eqz v0, :cond_4

    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->switchSmartAntennal:Z

    if-eqz v2, :cond_4

    .line 1336
    sget-object v2, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v2, p1

    .line 1337
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1338
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v2, :cond_4

    .line 1340
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x13

    invoke-virtual {v2, v3, v4, v6}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForTestCard(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1307
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_4
    return-void
.end method

.method private processSoftSimIccidChange()V
    .locals 8

    .prologue
    .line 1598
    const/4 v2, 0x0

    .line 1599
    .local v2, "isSoftSimIn":Z
    const/4 v1, 0x0

    .line 1601
    .local v1, "iccid":Ljava/lang/String;
    const/4 v0, 0x0

    .end local v1    # "iccid":Ljava/lang/String;
    .local v0, "i":I
    :goto_0
    sget v3, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v0, v3, :cond_0

    .line 1603
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getVirtualIccid(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1604
    .local v1, "iccid":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1606
    const/4 v2, 0x1

    .line 1610
    .end local v1    # "iccid":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "is_softsim insert "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1612
    if-eqz v2, :cond_2

    return-void

    .line 1601
    .restart local v1    # "iccid":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1614
    .end local v1    # "iccid":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x1c

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1615
    const-wide/16 v6, 0xfa0

    .line 1614
    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1596
    return-void
.end method

.method private processTMOCardAsdds()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1506
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getPrevPrimaryPhoneId()I

    move-result v0

    .line 1507
    .local v0, "ddsPhoneId":I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v5

    .line 1508
    .local v5, "subId":[I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v7

    aget v8, v5, v9

    invoke-virtual {v7, v8}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v2

    .line 1509
    .local v2, "isSubActive":Z
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getMainStackPhoneId()I

    move-result v4

    .line 1510
    .local v4, "mainStackPhoneId":I
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v7, v7, v0

    iget-object v1, v7, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    .line 1512
    .local v1, "iccid":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processTMOCardAsDDS mstackphoneId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " iccid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " ddsphoneId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1513
    if-eq v4, v0, :cond_2

    if-eqz v2, :cond_2

    .line 1516
    if-eqz v1, :cond_1

    .line 1518
    sget-object v7, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mTMOIccidList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1519
    .local v3, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1520
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1521
    .local v6, "tmpiccid":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1523
    aget v7, v5, v9

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->doFlexMapping(I)V

    .line 1504
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v6    # "tmpiccid":Ljava/lang/String;
    :cond_1
    return-void

    .line 1514
    :cond_2
    return-void
.end method

.method private savePrefNetworkInDb(II)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "networkMode"    # I

    .prologue
    const/4 v5, 0x0

    .line 686
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v1

    .line 687
    .local v1, "subId":[I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    aget v3, v1, v5

    invoke-virtual {v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v0

    .line 688
    .local v0, "isSubActive":Z
    if-eqz v0, :cond_0

    .line 690
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 691
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "preferred_network_mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 690
    invoke-static {v2, v3, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 694
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 695
    const-string/jumbo v3, "preferred_network_mode"

    .line 694
    invoke-static {v2, v3, p1, p2}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 685
    return-void
.end method

.method private savePrimaryICCID(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 1023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " savePrimaryICCID ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1024
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1026
    const-string/jumbo v0, "persist.radio.ddssim.iccid"

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    :cond_0
    return-void
.end method

.method private savePrimarySlot(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1010
    const-string/jumbo v1, "config_current_primary_sub"

    .line 1009
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1007
    return-void
.end method

.method private sendSetNetWorkTypeMsg(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    const/16 v3, 0xf

    .line 796
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendSetNetWorkTypeMsg delay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 797
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 798
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 799
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 794
    return-void
.end method

.method private setPreferredCdmaNetworkType()V
    .locals 9

    .prologue
    .line 830
    const/4 v0, 0x0

    .line 831
    .local v0, "cdmaPhoneId":I
    const/4 v2, 0x1

    .line 832
    .local v2, "gwPhoneId":I
    const/16 v1, 0x16

    .line 833
    .local v1, "cdma_network_type":I
    const/16 v3, 0x14

    .line 834
    .local v3, "gw_network_type":I
    const/4 v5, -0x1

    .line 835
    .local v5, "primaryPhoneId":I
    const/4 v4, 0x0

    .line 837
    .local v4, "primaryNetworkType":I
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getPrevPrimaryPhoneId()I

    move-result v5

    .line 838
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getPrimaryNetworkType()I

    move-result v4

    .line 841
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v7, v7, v5

    iget-boolean v7, v7, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCDMACard:Z

    if-eqz v7, :cond_1

    .line 843
    const-string/jumbo v7, "setPreferredCdmaNetworkType cdma card on dds"

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 844
    move v0, v5

    .line 845
    rsub-int/lit8 v2, v5, 0x1

    .line 847
    invoke-direct {p0, v4, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isCdmaRat(II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 849
    move v1, v4

    .line 855
    :goto_0
    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->setPrimaryNetworkType(I)V

    .line 880
    :goto_1
    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->savePrimarySlot(I)V

    .line 881
    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->savePrimaryICCID(I)V

    .line 883
    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->savePrefNetworkInDb(II)V

    .line 884
    invoke-direct {p0, v2, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->savePrefNetworkInDb(II)V

    .line 885
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x10

    invoke-virtual {v7, v8, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    .line 886
    .local v6, "response":Landroid/os/Message;
    sget-object v7, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQtiRadioCapabilityController:Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    invoke-virtual {v7, v2, v3, v6}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->setPreferredNetworkType(IILandroid/os/Message;)V

    .line 828
    return-void

    .line 853
    .end local v6    # "response":Landroid/os/Message;
    :cond_0
    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->switchGW2CDMARat(I)I

    move-result v1

    goto :goto_0

    .line 859
    :cond_1
    const-string/jumbo v7, "setPreferredCdmaNetworkType GW card on dds"

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 860
    move v2, v5

    .line 861
    rsub-int/lit8 v0, v5, 0x1

    .line 863
    invoke-direct {p0, v4, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isCdmaRat(II)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 865
    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->switchCDMA2GWRat(I)I

    move-result v3

    .line 872
    :goto_2
    sget-boolean v7, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isEUVersion:Z

    if-eqz v7, :cond_2

    .line 874
    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->switchAll2EURat(I)I

    move-result v3

    .line 877
    :cond_2
    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->setPrimaryNetworkType(I)V

    goto :goto_1

    .line 869
    :cond_3
    move v3, v4

    goto :goto_2
.end method

.method private setPreferredGWNetworkType()V
    .locals 8

    .prologue
    .line 891
    const/4 v0, 0x0

    .line 892
    .local v0, "gwOtherPhoneId":I
    const/16 v1, 0x14

    .line 893
    .local v1, "gw_dds_network_type":I
    const/16 v2, 0x14

    .line 894
    .local v2, "gw_non_network_type":I
    const/4 v4, -0x1

    .line 895
    .local v4, "primaryPhoneId":I
    const/4 v3, 0x0

    .line 897
    .local v3, "primaryNetworkType":I
    const-string/jumbo v6, "setPreferredGWNetworkType all card is GW"

    invoke-direct {p0, v6}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 898
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getPrevPrimaryPhoneId()I

    move-result v4

    .line 899
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getPrimaryNetworkType()I

    move-result v3

    .line 901
    invoke-direct {p0, v3, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isCdmaRat(II)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 903
    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->switchCDMA2GWRat(I)I

    move-result v1

    .line 910
    :goto_0
    sget-boolean v6, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isEUVersion:Z

    if-eqz v6, :cond_0

    .line 912
    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->switchAll2EURat(I)I

    move-result v1

    .line 913
    const/16 v2, 0x9

    .line 916
    :cond_0
    rsub-int/lit8 v0, v4, 0x1

    .line 918
    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->savePrimarySlot(I)V

    .line 919
    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->savePrimaryICCID(I)V

    .line 920
    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->setPrimaryNetworkType(I)V

    .line 922
    invoke-direct {p0, v4, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->savePrefNetworkInDb(II)V

    .line 923
    invoke-direct {p0, v0, v2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->savePrefNetworkInDb(II)V

    .line 924
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x10

    invoke-virtual {v6, v7, v4, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    .line 925
    .local v5, "response":Landroid/os/Message;
    sget-object v6, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQtiRadioCapabilityController:Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    invoke-virtual {v6, v0, v2, v5}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->setPreferredNetworkType(IILandroid/os/Message;)V

    .line 889
    return-void

    .line 907
    .end local v5    # "response":Landroid/os/Message;
    :cond_1
    move v1, v3

    goto :goto_0
.end method

.method private subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;
    .locals 5
    .param p1, "subId"    # I

    .prologue
    .line 1237
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 1239
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 1241
    .local v2, "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1242
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 1243
    .local v1, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v4, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 1244
    .local v0, "phoneAccount":Landroid/telecom/PhoneAccount;
    invoke-virtual {v3, v0}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v4

    if-ne p1, v4, :cond_0

    .line 1245
    return-object v1

    .line 1248
    .end local v0    # "phoneAccount":Landroid/telecom/PhoneAccount;
    .end local v1    # "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method

.method private switchAll2EURat(I)I
    .locals 3
    .param p1, "network_type"    # I

    .prologue
    .line 1189
    const/16 v0, 0x9

    .line 1190
    .local v0, "type":I
    sparse-switch p1, :sswitch_data_0

    .line 1204
    const/16 v0, 0x9

    .line 1207
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchAll2EURat  rat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1208
    return v0

    .line 1194
    :sswitch_0
    const/16 v0, 0x9

    .line 1195
    goto :goto_0

    .line 1198
    :sswitch_1
    const/4 v0, 0x3

    .line 1199
    goto :goto_0

    .line 1201
    :sswitch_2
    const/4 v0, 0x1

    .line 1202
    goto :goto_0

    .line 1190
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x3 -> :sswitch_1
        0x9 -> :sswitch_0
        0x12 -> :sswitch_1
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method private switchCDMA2GWRat(I)I
    .locals 3
    .param p1, "network_type"    # I

    .prologue
    .line 1164
    const/16 v0, 0x14

    .line 1165
    .local v0, "type":I
    sparse-switch p1, :sswitch_data_0

    .line 1180
    const/16 v0, 0x14

    .line 1183
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchCDMA2GWRat  rat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1184
    return v0

    .line 1170
    :sswitch_0
    const/16 v0, 0x14

    .line 1171
    goto :goto_0

    .line 1174
    :sswitch_1
    const/16 v0, 0x12

    .line 1175
    goto :goto_0

    .line 1177
    :sswitch_2
    const/4 v0, 0x1

    .line 1178
    goto :goto_0

    .line 1165
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_2
        0x7 -> :sswitch_1
        0x8 -> :sswitch_0
        0xa -> :sswitch_0
        0x15 -> :sswitch_1
        0x16 -> :sswitch_0
    .end sparse-switch
.end method

.method private switchGW2CDMARat(I)I
    .locals 3
    .param p1, "network_type"    # I

    .prologue
    .line 1141
    const/16 v0, 0xa

    .line 1142
    .local v0, "type":I
    sparse-switch p1, :sswitch_data_0

    .line 1155
    const/16 v0, 0xa

    .line 1158
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchGW2CDMARat  rat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1159
    return v0

    .line 1146
    :sswitch_0
    const/16 v0, 0x16

    .line 1147
    goto :goto_0

    .line 1152
    :sswitch_1
    const/16 v0, 0x15

    .line 1153
    goto :goto_0

    .line 1142
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_1
        0x3 -> :sswitch_1
        0x9 -> :sswitch_0
        0x12 -> :sswitch_1
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method private updateCurrentCardStatus(IILjava/lang/String;)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "status"    # I
    .param p3, "iccid"    # Ljava/lang/String;

    .prologue
    .line 728
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->cardStatus:I

    .line 729
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v1, v1, p1

    iput-object p3, v1, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 725
    :goto_0
    return-void

    .line 730
    :catch_0
    move-exception v0

    .line 731
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getPrevPrimaryPhoneId()I
    .locals 7

    .prologue
    .line 1049
    const/4 v3, 0x0

    .line 1051
    .local v3, "phoneId":I
    const/4 v2, 0x0

    .line 1053
    .local v2, "isSubActive":Z
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getPrimaryICCID()Ljava/lang/String;

    move-result-object v0

    .line 1055
    .local v0, "iccid":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1057
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    sget v5, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v1, v5, :cond_1

    .line 1059
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 1061
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1059
    if-eqz v5, :cond_0

    .line 1063
    return v1

    .line 1057
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1068
    .end local v1    # "index":I
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getPrimarySlot()I

    move-result v3

    .line 1069
    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    .line 1071
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 1073
    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isSubProvisioned(I)Z

    move-result v5

    .line 1069
    if-eqz v5, :cond_2

    .line 1076
    return v3

    .line 1080
    :cond_2
    const/4 v3, 0x0

    .line 1081
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v4

    .line 1083
    .local v4, "subId":[I
    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 1085
    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isSubProvisioned(I)Z

    move-result v5

    .line 1083
    if-eqz v5, :cond_3

    .line 1088
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " getPrevPrimaryPhoneId 1 phoneId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1089
    return v3

    .line 1092
    :cond_3
    const/4 v3, 0x1

    .line 1093
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v4

    .line 1095
    if-eqz v4, :cond_4

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 1097
    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isSubProvisioned(I)Z

    move-result v5

    .line 1095
    if-eqz v5, :cond_4

    .line 1100
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " getPrevPrimaryPhoneId 2 phoneId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1101
    return v3

    .line 1104
    :cond_4
    const-string/jumbo v5, " getPrevPrimaryPhoneId  default phoneId 0 "

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1105
    const/4 v5, 0x0

    return v5
.end method

.method public getVirtualIccid(ILandroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "slot"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1620
    const/4 v1, 0x0

    .line 1621
    .local v1, "virtual_iccid":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1623
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1624
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "softsim_iccid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1623
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1631
    .end local v1    # "virtual_iccid":Ljava/lang/String;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "softsim_iccid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  slot=  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1632
    return-object v1

    .line 1627
    .restart local v1    # "virtual_iccid":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1628
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "exc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSimAbsentforSelectMultiMode(I)V
    .locals 10
    .param p1, "slotId"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 644
    const/4 v3, 0x0

    .line 645
    .local v3, "maxNumRafBit":I
    const/4 v2, -0x1

    .line 646
    .local v2, "mainStackPhoneId":I
    const/4 v4, 0x0

    .line 647
    .local v4, "numRafSupported":I
    const/4 v1, 0x0

    .line 649
    .local v1, "isNotPtcrb":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "card absent phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 651
    sget-object v5, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v5

    iput-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 652
    const-string/jumbo v5, "true"

    const-string/jumbo v6, "persist.radio.ptcrb.enable"

    const-string/jumbo v7, "false"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v1, 0x0

    .line 654
    :goto_0
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v5, v5, p1

    iget-object v5, v5, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-eqz v5, :cond_0

    if-eqz v1, :cond_0

    .line 658
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v5, :cond_0

    .line 659
    if-eqz v1, :cond_0

    iget-boolean v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->switchSmartAntennal:Z

    .line 654
    if-eqz v5, :cond_0

    .line 661
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForTestCard(Landroid/os/Handler;)V

    .line 664
    :cond_0
    invoke-direct {p0, p1, v9, v8}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->updateCurrentCardStatus(IILjava/lang/String;)V

    .line 665
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v5, v5, p1

    iput-boolean v9, v5, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCardReady:Z

    .line 666
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v5, v5, p1

    iput-boolean v9, v5, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCDMACard:Z

    .line 667
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    rsub-int/lit8 v6, p1, 0x1

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-nez v5, :cond_4

    .line 669
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string/jumbo v6, "oem.ctaSwitch.support"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    .line 667
    if-eqz v5, :cond_4

    .line 671
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "card absent phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 672
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    sget v5, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v0, v5, :cond_3

    .line 675
    sget-object v5, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->bitCount(I)I

    move-result v4

    .line 676
    if-ge v3, v4, :cond_1

    .line 677
    move v3, v4

    .line 678
    move v2, v0

    .line 672
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 652
    .end local v0    # "index":I
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 681
    .restart local v0    # "index":I
    :cond_3
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v2

    const/16 v6, 0x8

    invoke-interface {v5, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 641
    .end local v0    # "index":I
    :cond_4
    return-void
.end method

.method public oemDdsSwitch(IZ)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "autoSwitch"    # Z

    .prologue
    const/4 v5, 0x0

    .line 964
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v2

    .line 966
    .local v2, "subId":[I
    if-nez v2, :cond_0

    .line 968
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "oemDdsSwitch subId is null  phoneId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 969
    return-void

    .line 971
    :cond_0
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    aget v4, v2, v5

    invoke-virtual {v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v0

    .line 973
    .local v0, "isSubActive":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "oemDdsSwitch isSubActive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  phoneId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 975
    if-eqz v0, :cond_3

    .line 977
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->savePrimaryICCID(I)V

    .line 978
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->savePrimarySlot(I)V

    .line 979
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getNetworkModeFromDB(I)I

    move-result v1

    .line 980
    .local v1, "primaryNetWork":I
    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->setPrimaryNetworkType(I)V

    .line 981
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    aget v4, v2, v5

    invoke-virtual {v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setDefaultDataSubId(I)V

    .line 982
    if-eqz p2, :cond_1

    .line 984
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    aget v4, v2, v5

    invoke-virtual {v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setDefaultSmsSubId(I)V

    .line 985
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    aget v4, v2, v5

    invoke-virtual {v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setDefaultVoiceSubId(I)V

    .line 986
    aget v3, v2, v5

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->setConfigOfChangeDefaultVoiceSub(I)V

    .line 989
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->hasTwoCdmaCardInsert()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 991
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->setPreferredCdmaNetworkType()V

    .line 993
    :cond_2
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->backupDdsIccid(Ljava/lang/String;)V

    .line 994
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->oemSendSubscriptionSettings()V

    .line 961
    .end local v1    # "primaryNetWork":I
    :cond_3
    return-void
.end method

.method public sendAddSubInfoRecordforSelectMultiMode(ILjava/lang/String;)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "iccId"    # Ljava/lang/String;

    .prologue
    .line 597
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 595
    return-void
.end method

.method public sendSimAbsentforSelectMultiMode(I)V
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    .line 638
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 636
    return-void
.end method

.method public setConfigOfChangeDefaultVoiceSub(I)V
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 1232
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 1233
    .local v0, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v1, v0}, Landroid/telecom/TelecomManager;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 1230
    return-void
.end method

.method public setPrimaryNetworkType(I)V
    .locals 2
    .param p1, "network_type"    # I

    .prologue
    .line 1041
    const-string/jumbo v0, "persist.radio.ddssim.rat"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " setPrimaryNetworkType ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1039
    return-void
.end method
