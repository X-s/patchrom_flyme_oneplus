.class public abstract Lcom/android/internal/telephony/ServiceStateTracker;
.super Landroid/os/Handler;
.source "ServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ServiceStateTracker$1;,
        Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;,
        Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;
    }
.end annotation


# static fields
.field protected static final ACTION_RADIO_OFF:Ljava/lang/String; = "android.intent.action.ACTION_RADIO_OFF"

.field protected static final DBG:Z = true

.field public static final DEFAULT_GPRS_CHECK_PERIOD_MILLIS:I = 0xea60

.field protected static final EVENT_CDMA_PRL_VERSION_CHANGED:I = 0x28

.field protected static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0x27

.field protected static final EVENT_CHANGE_IMS_STATE:I = 0x2d

.field protected static final EVENT_CHECK_REPORT_GPRS:I = 0x16

.field protected static final EVENT_ERI_FILE_LOADED:I = 0x24

.field protected static final EVENT_FAKE_UI_TIMEOUT:I = 0x1f4

.field protected static final EVENT_GET_CELL_INFO_LIST:I = 0x2b

.field protected static final EVENT_GET_LOC_DONE:I = 0xf

.field protected static final EVENT_GET_LOC_DONE_CDMA:I = 0x1f

.field protected static final EVENT_GET_PREFERRED_NETWORK_TYPE:I = 0x13

.field protected static final EVENT_GET_SIGNAL_STRENGTH:I = 0x3

.field protected static final EVENT_GET_SIGNAL_STRENGTH_CDMA:I = 0x1d

.field public static final EVENT_ICC_CHANGED:I = 0x2a

.field protected static final EVENT_IMS_CAPABILITY_CHANGED:I = 0x30

.field protected static final EVENT_IMS_STATE_CHANGED:I = 0x2e

.field protected static final EVENT_IMS_STATE_DONE:I = 0x2f

.field protected static final EVENT_LOCATION_UPDATES_ENABLED:I = 0x12

.field protected static final EVENT_NETWORK_STATE_CHANGED:I = 0x2

.field protected static final EVENT_NETWORK_STATE_CHANGED_CDMA:I = 0x1e

.field protected static final EVENT_NITZ_TIME:I = 0xb

.field protected static final EVENT_NV_LOADED:I = 0x21

.field protected static final EVENT_NV_READY:I = 0x23

.field private static final EVENT_OEM_CHEATING_DATA_LVL:I = 0x66

.field private static final EVENT_OEM_CHEATING_VOICE_LVL:I = 0x65

.field protected static final EVENT_OTA_PROVISION_STATUS_CHANGE:I = 0x25

.field protected static final EVENT_OUT_OF_SERVICE_NOTIFY2UI:I = 0x64

.field protected static final EVENT_POLL_SIGNAL_STRENGTH:I = 0xa

.field protected static final EVENT_POLL_SIGNAL_STRENGTH_CDMA:I = 0x1c

.field protected static final EVENT_POLL_STATE_CDMA_SUBSCRIPTION:I = 0x22

.field protected static final EVENT_POLL_STATE_GPRS:I = 0x5

.field protected static final EVENT_POLL_STATE_NETWORK_SELECTION_MODE:I = 0xe

.field protected static final EVENT_POLL_STATE_OPERATOR:I = 0x6

.field protected static final EVENT_POLL_STATE_OPERATOR_CDMA:I = 0x19

.field protected static final EVENT_POLL_STATE_REGISTRATION:I = 0x4

.field protected static final EVENT_POLL_STATE_REGISTRATION_CDMA:I = 0x18

.field protected static final EVENT_RADIO_AVAILABLE:I = 0xd

.field protected static final EVENT_RADIO_ON:I = 0x29

.field protected static final EVENT_RADIO_POWER_OFF_DONE:I = 0x31

.field protected static final EVENT_RADIO_STATE_CHANGED:I = 0x1

.field protected static final EVENT_RESET_PREFERRED_NETWORK_TYPE:I = 0x15

.field protected static final EVENT_RESTRICTED_STATE_CHANGED:I = 0x17

.field protected static final EVENT_RUIM_READY:I = 0x1a

.field protected static final EVENT_RUIM_RECORDS_LOADED:I = 0x1b

.field protected static final EVENT_SET_PREFERRED_NETWORK_TYPE:I = 0x14

.field protected static final EVENT_SET_RADIO_POWER_OFF:I = 0x26

.field protected static final EVENT_SIGNAL_STRENGTH_UPDATE:I = 0xc

.field protected static final EVENT_SIM_READY:I = 0x11

.field protected static final EVENT_SIM_RECORDS_LOADED:I = 0x10

.field protected static final EVENT_UNSOL_CELL_INFO_LIST:I = 0x2c

.field protected static final GMT_COUNTRY_CODES:[Ljava/lang/String;

.field private static IS_OEM_SMOOTH:Z = false

.field private static final LAST_CELL_INFO_LIST_MAX_AGE_MS:J = 0x7d0L

.field private static final LOG_TAG:Ljava/lang/String; = "SST"

.field protected static final NOTIFY_2_UI_DELAY_TIME:I = 0x7530

.field public static final OTASP_NEEDED:I = 0x2

.field public static final OTASP_NOT_NEEDED:I = 0x3

.field public static final OTASP_UNINITIALIZED:I = 0x0

.field public static final OTASP_UNKNOWN:I = 0x1

.field protected static final POLL_PERIOD_MILLIS:I = 0x4e20

.field protected static final PROP_FORCE_ROAMING:Ljava/lang/String; = "telephony.test.forceRoaming"

.field protected static final REGISTRATION_DENIED_AUTH:Ljava/lang/String; = "Authentication Failure"

.field protected static final REGISTRATION_DENIED_GEN:Ljava/lang/String; = "General"

.field private static final SIGNAL_SMOOTH_TIMER:I = 0x4e20

.field protected static final TIMEZONE_PROPERTY:Ljava/lang/String; = "persist.sys.timezone"

.field protected static final VDBG:Z


# instance fields
.field private final FAKE_UI_DELAY_TIMER:I

.field protected mAlarmSwitch:Z

.field protected mAttachedRegistrants:Landroid/os/RegistrantList;

.field protected final mCellInfo:Landroid/telephony/CellInfo;

.field protected mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected mCurDataSpn:Ljava/lang/String;

.field protected mCurPlmn:Ljava/lang/String;

.field protected mCurShowPlmn:Z

.field protected mCurShowSpn:Z

.field protected mCurSpn:Ljava/lang/String;

.field protected mDataRegStateOrRatChangedRegistrants:Landroid/os/RegistrantList;

.field protected mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

.field protected mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

.field protected mDesiredPowerState:Z

.field protected mDetachedRegistrants:Landroid/os/RegistrantList;

.field protected mDeviceShuttingDown:Z

.field protected mDontPollSignalStrength:Z

.field protected mFakeUIPeriod:Z

.field protected mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private mImsRegistered:Z

.field protected mImsRegistrationOnOff:Z

.field protected mIntentFilter:Landroid/content/IntentFilter;

.field private mIsPendingNotify_data_lvl:Z

.field private mIsPendingNotify_voice_lvl:Z

.field protected mLastCellInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mLastCellInfoListTime:J

.field private mLastSignalStrength:Landroid/telephony/SignalStrength;

.field protected mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

.field protected mNewSS:Landroid/telephony/ServiceState;

.field private mOEMCurLevel_data:I

.field private mOEMCurLevel_voice:I

.field private mOEMLastLevel_data:I

.field private mOEMLastLevel_voice:I

.field protected final mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;

.field private mOtherPhoneCallState:Lcom/android/internal/telephony/PhoneConstants$State;

.field protected mPendingRadioPowerOffAfterDataOff:Z

.field protected mPendingRadioPowerOffAfterDataOffTag:I

.field protected mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

.field protected mPollingContext:[I

.field protected mPowerOffDelayNeed:Z

.field protected mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

.field protected mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

.field protected mRadioOffIntent:Landroid/app/PendingIntent;

.field public mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

.field public mSS:Landroid/telephony/ServiceState;

.field protected mSignalStrength:Landroid/telephony/SignalStrength;

.field protected mSpnUpdatePending:Z

.field protected mSubId:I

.field protected mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

.field protected mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field protected mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field protected mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field protected mVoiceCapable:Z

.field protected mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

.field protected mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;

.field private mWantContinuousLocationUpdates:Z

.field private mWantSingleLocationUpdate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 216
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "bf"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ci"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "eh"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "fo"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "gb"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "gh"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "gm"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "gn"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "gw"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ie"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "lr"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "is"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ma"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "ml"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "mr"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "pt"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "sl"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "sn"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "st"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "tg"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/ServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    .line 1206
    const-string v0, "persist.sys.oem_smooth"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/ServiceStateTracker;->IS_OEM_SMOOTH:Z

    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CommandsInterface;Landroid/telephony/CellInfo;)V
    .locals 4
    .param p1, "phoneBase"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "cellInfo"    # Landroid/telephony/CellInfo;

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 346
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 79
    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 80
    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 81
    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 87
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 88
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 100
    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    .line 106
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 109
    new-instance v0, Lcom/android/internal/telephony/RestrictedState;

    invoke-direct {v0}, Lcom/android/internal/telephony/RestrictedState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    .line 130
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDontPollSignalStrength:Z

    .line 132
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;

    .line 133
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

    .line 134
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    .line 135
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    .line 136
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    .line 137
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    .line 138
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRegStateOrRatChangedRegistrants:Landroid/os/RegistrantList;

    .line 139
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    .line 140
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    .line 141
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    .line 144
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 145
    iput v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    .line 248
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistrationOnOff:Z

    .line 249
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAlarmSwitch:Z

    .line 250
    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIntentFilter:Landroid/content/IntentFilter;

    .line 251
    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPowerOffDelayNeed:Z

    .line 254
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    .line 256
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSpnUpdatePending:Z

    .line 257
    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurSpn:Ljava/lang/String;

    .line 258
    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurDataSpn:Ljava/lang/String;

    .line 259
    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    .line 260
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowPlmn:Z

    .line 261
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowSpn:Z

    .line 262
    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    .line 264
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistered:Z

    .line 267
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOtherPhoneCallState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 268
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mFakeUIPeriod:Z

    .line 269
    const/16 v0, 0x2ee0

    iput v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->FAKE_UI_DELAY_TIMER:I

    .line 275
    new-instance v0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;-><init>(Lcom/android/internal/telephony/ServiceStateTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;

    .line 386
    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastSignalStrength:Landroid/telephony/SignalStrength;

    .line 1200
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsPendingNotify_voice_lvl:Z

    .line 1201
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsPendingNotify_data_lvl:Z

    .line 1202
    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_voice:I

    .line 1203
    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_data:I

    .line 1204
    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_voice:I

    .line 1205
    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_data:I

    .line 347
    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    .line 348
    iput-object p3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    .line 349
    iput-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 350
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceCapable:Z

    .line 352
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 353
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 v1, 0x2a

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 354
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnSignalStrengthUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 355
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x2c

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForCellInfoList(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 357
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    .line 358
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 359
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 362
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gsm.network.type"

    invoke-static {v2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x2e

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 365
    return-void
.end method

.method private getNetworkModeBySS(I)I
    .locals 2
    .param p1, "nt"    # I

    .prologue
    .line 1290
    const/4 v0, 0x0

    .line 1292
    .local v0, "ret":I
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/16 v1, 0x10

    if-ne p1, v1, :cond_2

    .line 1294
    :cond_0
    const/4 v0, 0x1

    .line 1310
    :cond_1
    :goto_0
    return v0

    .line 1295
    :cond_2
    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/16 v1, 0x9

    if-eq p1, v1, :cond_3

    const/16 v1, 0xa

    if-eq p1, v1, :cond_3

    const/16 v1, 0xb

    if-eq p1, v1, :cond_3

    const/16 v1, 0xf

    if-ne p1, v1, :cond_4

    .line 1298
    :cond_3
    const/4 v0, 0x4

    goto :goto_0

    .line 1299
    :cond_4
    const/4 v1, 0x4

    if-eq p1, v1, :cond_5

    const/4 v1, 0x5

    if-eq p1, v1, :cond_5

    const/4 v1, 0x6

    if-ne p1, v1, :cond_6

    .line 1301
    :cond_5
    const/4 v0, 0x5

    goto :goto_0

    .line 1302
    :cond_6
    const/4 v1, 0x7

    if-eq p1, v1, :cond_7

    const/16 v1, 0x8

    if-eq p1, v1, :cond_7

    const/16 v1, 0xc

    if-eq p1, v1, :cond_7

    const/16 v1, 0xd

    if-ne p1, v1, :cond_8

    .line 1304
    :cond_7
    const/4 v0, 0x6

    goto :goto_0

    .line 1305
    :cond_8
    const/16 v1, 0x11

    if-ne p1, v1, :cond_9

    .line 1306
    const/4 v0, 0x2

    goto :goto_0

    .line 1307
    :cond_9
    const/16 v1, 0xe

    if-ne p1, v1, :cond_1

    .line 1308
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private handleOutOfService()V
    .locals 7

    .prologue
    .line 1566
    const-string v0, "intent.action.ACTION_MODEM_MANUAL_IND"

    .line 1567
    .local v0, "ACTION_MODEM_MANUAL_IND":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v4

    if-nez v4, :cond_2

    .line 1572
    :cond_0
    const-string v4, "SST"

    const-string v5, "handleOutOfService: now is in service return it "

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    :cond_1
    :goto_0
    return-void

    .line 1575
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 1576
    .local v3, "mTM":Landroid/telephony/TelephonyManager;
    if-eqz v3, :cond_1

    .line 1578
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    const/4 v2, 0x1

    .line 1581
    .local v2, "isCardReady":Z
    :goto_1
    if-eqz v2, :cond_1

    .line 1583
    const-string v4, "SST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleOutOfService: broadcast "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1585
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "subscription"

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1586
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1578
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "isCardReady":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isInNetwork(Landroid/os/BaseBundle;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "b"    # Landroid/os/BaseBundle;
    .param p2, "network"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 1485
    invoke-virtual {p1, p3}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1487
    .local v0, "networks":[Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1488
    const/4 v1, 0x1

    .line 1490
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private maybeUpdateHDTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "networkName"    # Ljava/lang/String;

    .prologue
    .line 1550
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVolteEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVideoCallEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1553
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10400e1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1555
    .local v0, "hdTag":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1556
    .local v1, "originalNwName":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1557
    const-string v2, "SST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "maybeUpdateHDTag: networkName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " original name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    .end local v0    # "hdTag":Ljava/lang/String;
    .end local v1    # "originalNwName":Ljava/lang/String;
    :cond_1
    return-object p1
.end method


# virtual methods
.method protected OEMnotifySignalStrength()Z
    .locals 5

    .prologue
    .line 1355
    const/4 v1, 0x0

    .line 1356
    .local v1, "notified":Z
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    monitor-enter v3

    .line 1358
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->notifySignalStrength()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1362
    const/4 v1, 0x1

    .line 1367
    :goto_0
    :try_start_1
    monitor-exit v3

    .line 1368
    return v1

    .line 1363
    :catch_0
    move-exception v0

    .line 1364
    .local v0, "ex":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OEMnotifySignalStrength() Phone already destroyed: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "SignalStrength not notified"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1367
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method protected final alwaysOnHomeNetwork(Landroid/os/BaseBundle;)Z
    .locals 1
    .param p1, "b"    # Landroid/os/BaseBundle;

    .prologue
    .line 1470
    const-string v0, "force_home_network_bool"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected cancelPollState()V
    .locals 1

    .prologue
    .line 1030
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    .line 1031
    return-void
.end method

.method protected checkCorrectThread()V
    .locals 2

    .prologue
    .line 1174
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1175
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ServiceStateTracker must be used from within one thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1178
    :cond_0
    return-void
.end method

.method public disableLocationUpdates()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 584
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    .line 585
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    if-nez v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setLocationUpdates(ZLandroid/os/Message;)V

    .line 588
    :cond_0
    return-void
.end method

.method protected disableSingleLocationUpdate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 577
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    .line 578
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    if-nez v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setLocationUpdates(ZLandroid/os/Message;)V

    .line 581
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSignalStrengthUpdate(Landroid/os/Handler;)V

    .line 376
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 377
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCellInfoList(Landroid/os/Handler;)V

    .line 378
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 380
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1149
    const-string v0, "ServiceStateTracker:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNewSS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCellInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRestrictedState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPollingContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDesiredPowerState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDontPollSignalStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDontPollSignalStrength:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPendingRadioPowerOffAfterDataOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPendingRadioPowerOffAfterDataOffTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1159
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 1160
    return-void
.end method

.method public enableLocationUpdates()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 571
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    if-eqz v0, :cond_1

    .line 574
    :cond_0
    :goto_0
    return-void

    .line 572
    :cond_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    .line 573
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setLocationUpdates(ZLandroid/os/Message;)V

    goto :goto_0
.end method

.method public enableSingleLocationUpdate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 565
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    if-eqz v0, :cond_1

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    .line 567
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setLocationUpdates(ZLandroid/os/Message;)V

    goto :goto_0
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1098
    new-instance v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;

    invoke-direct {v2, p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;-><init>(Lcom/android/internal/telephony/ServiceStateTracker;Lcom/android/internal/telephony/ServiceStateTracker$1;)V

    .line 1100
    .local v2, "result":Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRilVersion()I

    move-result v3

    .line 1101
    .local v3, "ver":I
    const/16 v5, 0x8

    if-lt v3, v5, :cond_2

    .line 1102
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->isCallerOnDifferentThread()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1103
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoListTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x7d0

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    .line 1105
    const/16 v5, 0x2b

    invoke-virtual {p0, v5, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1106
    .local v1, "msg":Landroid/os/Message;
    iget-object v5, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->lockObj:Ljava/lang/Object;

    monitor-enter v5

    .line 1107
    const/4 v6, 0x0

    :try_start_0
    iput-object v6, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    .line 1108
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCellInfoList(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1110
    :try_start_1
    iget-object v6, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->lockObj:Ljava/lang/Object;

    const-wide/16 v8, 0x1388

    invoke-virtual {v6, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1114
    :goto_0
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1127
    .end local v1    # "msg":Landroid/os/Message;
    :goto_1
    iget-object v5, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->lockObj:Ljava/lang/Object;

    monitor-enter v5

    .line 1128
    :try_start_3
    iget-object v6, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    if-eqz v6, :cond_3

    .line 1129
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SST.getAllCellInfo(): X size="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " list="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1131
    iget-object v4, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1134
    :goto_2
    return-object v4

    .line 1111
    .restart local v1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 1112
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1114
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 1116
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    const-string v5, "SST.getAllCellInfo(): return last, back to back calls"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1117
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    iput-object v5, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    goto :goto_1

    .line 1120
    :cond_1
    const-string v5, "SST.getAllCellInfo(): return last, same thread can\'t block"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1121
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    iput-object v5, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    goto :goto_1

    .line 1124
    :cond_2
    const-string v5, "SST.getAllCellInfo(): not implemented"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1125
    iput-object v4, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    goto :goto_1

    .line 1133
    :cond_3
    :try_start_5
    const-string v6, "SST.getAllCellInfo(): X size=0 list=null"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1134
    monitor-exit v5

    goto :goto_2

    .line 1136
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v4
.end method

.method protected getCombinedRegState()I
    .locals 3

    .prologue
    .line 1519
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    .line 1520
    .local v1, "regState":I
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    .line 1522
    .local v0, "dataRegState":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_0

    .line 1524
    const-string v2, "getCombinedRegState: return STATE_IN_SERVICE as Data is in service"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1525
    move v1, v0

    .line 1528
    :cond_0
    return v1
.end method

.method public abstract getCurrentDataConnectionState()I
.end method

.method public getDesiredPowerState()Z
    .locals 1

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    return v0
.end method

.method protected getHomeOperatorNumeric()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getOEMLevel(Landroid/telephony/ServiceState;Landroid/telephony/SignalStrength;)[I
    .locals 3
    .param p1, "st"    # Landroid/telephony/ServiceState;
    .param p2, "s"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 1315
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->getNetworkModeBySS(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/telephony/SignalStrength;->getOEMCheatingSignalLevel(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->getNetworkModeBySS(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/telephony/SignalStrength;->getOEMCheatingSignalLevel(I)I

    move-result v2

    aput v2, v0, v1

    return-object v0
.end method

.method protected abstract getPhone()Lcom/android/internal/telephony/Phone;
.end method

.method protected getPhoneId()I
    .locals 1

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    return v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 2

    .prologue
    .line 1143
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    monitor-enter v1

    .line 1144
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    monitor-exit v1

    return-object v0

    .line 1145
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x4

    const/4 v7, 0x1

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 592
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 759
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unhandled message with number: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 762
    :cond_0
    :goto_0
    return-void

    .line 594
    :sswitch_0
    monitor-enter p0

    .line 595
    :try_start_0
    iget-boolean v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    if-eqz v6, :cond_1

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    if-ne v6, v7, :cond_1

    .line 597
    const-string v6, "EVENT_SET_RADIO_OFF, turn radio off now."

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 598
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V

    .line 599
    iget v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    .line 600
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 605
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 602
    :cond_1
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EVENT_SET_RADIO_OFF is stale arg1="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "!= tag="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 609
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->onUpdateIccAvailability()V

    goto :goto_0

    .line 613
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 614
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;

    .line 615
    .local v5, "result":Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;
    iget-object v7, v5, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->lockObj:Ljava/lang/Object;

    monitor-enter v7

    .line 616
    :try_start_2
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_2

    .line 617
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT_GET_CELL_INFO_LIST: error ret null, e="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 618
    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    .line 627
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoListTime:J

    .line 628
    iget-object v6, v5, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    iput-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    .line 629
    iget-object v6, v5, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->lockObj:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notify()V

    .line 630
    monitor-exit v7

    goto/16 :goto_0

    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .line 620
    :cond_2
    :try_start_3
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    iput-object v6, v5, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 635
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "result":Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 636
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_3

    .line 637
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EVENT_UNSOL_CELL_INFO_LIST: error ignoring, e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 639
    :cond_3
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .line 641
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EVENT_UNSOL_CELL_INFO_LIST: size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " list="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 644
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoListTime:J

    .line 645
    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    .line 646
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyCellInfo(Ljava/util/List;)V

    goto/16 :goto_0

    .line 652
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :sswitch_4
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v7, 0x2f

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->getImsRegistrationState(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 656
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 657
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_0

    .line 659
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v6, :cond_0

    .line 664
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [I

    move-object v4, v6

    check-cast v4, [I

    .line 667
    .local v4, "responseArray":[I
    array-length v6, v4

    if-lt v6, v7, :cond_0

    .line 668
    aget v6, v4, v8

    if-ne v6, v7, :cond_4

    move v6, v7

    :goto_3
    iput-boolean v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistered:Z

    goto/16 :goto_0

    :cond_4
    move v6, v8

    goto :goto_3

    .line 675
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "responseArray":[I
    :sswitch_6
    const-string v6, "EVENT_RADIO_POWER_OFF_DONE"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 676
    iget-boolean v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 680
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, v11}, Lcom/android/internal/telephony/CommandsInterface;->requestShutdown(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 685
    :sswitch_7
    const-string v6, "EVENT_OUT_OF_SERVICE_NOTIFY2UI"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 686
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->handleOutOfService()V

    goto/16 :goto_0

    .line 694
    :sswitch_8
    iget v6, p1, Landroid/os/Message;->what:I

    add-int/lit8 v1, v6, -0x65

    .line 696
    .local v1, "index":I
    if-nez v1, :cond_9

    .line 697
    iget v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_voice:I

    iget v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_voice:I

    if-gt v6, v7, :cond_5

    .line 699
    iget v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_voice:I

    iput v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_voice:I

    .line 700
    iput-boolean v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsPendingNotify_voice_lvl:Z

    goto/16 :goto_0

    .line 704
    :cond_5
    iget v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_voice:I

    iget v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_voice:I

    if-le v6, v7, :cond_7

    .line 706
    iget v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_voice:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_voice:I

    .line 709
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->getNetworkModeBySS(I)I

    move-result v3

    .line 710
    .local v3, "rat":I
    if-eq v3, v10, :cond_6

    if-ne v3, v9, :cond_7

    :cond_6
    iget v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_voice:I

    if-ge v6, v9, :cond_7

    .line 711
    iput v9, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_voice:I

    .line 715
    .end local v3    # "rat":I
    :cond_7
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_voice:I

    iput v7, v6, Landroid/telephony/SignalStrength;->mCheating_lvl_with_voice_rat:I

    .line 742
    :cond_8
    :goto_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->OEMnotifySignalStrength()Z

    .line 745
    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->notifySmoothLevel(I)V

    .line 746
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EVENT_OEM_SMOOTH (last:("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_voice:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_data:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") current:("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_voice:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_data:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") ):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 716
    :cond_9
    if-ne v1, v7, :cond_8

    .line 717
    iget v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_data:I

    iget v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_data:I

    if-gt v6, v7, :cond_a

    .line 719
    iget v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_data:I

    iput v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_data:I

    .line 720
    iput-boolean v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsPendingNotify_data_lvl:Z

    goto/16 :goto_0

    .line 724
    :cond_a
    iget v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_data:I

    iget v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_data:I

    if-le v6, v7, :cond_c

    .line 726
    iget v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_data:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_data:I

    .line 728
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->getNetworkModeBySS(I)I

    move-result v3

    .line 729
    .restart local v3    # "rat":I
    if-eq v3, v10, :cond_b

    if-ne v3, v9, :cond_c

    :cond_b
    iget v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_data:I

    if-ge v6, v9, :cond_c

    .line 730
    iput v9, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_data:I

    .line 735
    .end local v3    # "rat":I
    :cond_c
    iget v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_data:I

    if-nez v6, :cond_d

    iget v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_data:I

    if-lez v6, :cond_d

    .line 736
    iput v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_data:I

    .line 739
    :cond_d
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_data:I

    iput v7, v6, Landroid/telephony/SignalStrength;->mCheating_lvl_with_data_rat:I

    goto/16 :goto_4

    .line 753
    .end local v1    # "index":I
    :sswitch_9
    const-string v6, "EVENT_FAKE_UI_TIMEOUT, stop fake UI"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 754
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->setFakeUIPeriod(Z)V

    .line 755
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    goto/16 :goto_0

    .line 592
    nop

    :sswitch_data_0
    .sparse-switch
        0x26 -> :sswitch_0
        0x2a -> :sswitch_1
        0x2b -> :sswitch_2
        0x2c -> :sswitch_3
        0x2e -> :sswitch_4
        0x2f -> :sswitch_5
        0x31 -> :sswitch_6
        0x64 -> :sswitch_7
        0x65 -> :sswitch_8
        0x66 -> :sswitch_8
        0x1f4 -> :sswitch_9
    .end sparse-switch
.end method

.method protected abstract handlePollStateResult(ILandroid/os/AsyncResult;)V
.end method

.method protected abstract hangupAndPowerOff()V
.end method

.method protected inSameCountry(Ljava/lang/String;)Z
    .locals 12
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x3

    const/4 v7, 0x0

    .line 1387
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v11, :cond_2

    :cond_0
    move v3, v7

    .line 1425
    :cond_1
    :goto_0
    return v3

    .line 1394
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getHomeOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 1395
    .local v2, "homeNumeric":Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 1396
    const-string v8, ","

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1397
    .local v6, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v8

    if-ltz v8, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v8

    array-length v9, v6

    if-ge v8, v9, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v8

    aget-object v8, v6, v8

    if-eqz v8, :cond_3

    .line 1398
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v8

    aget-object v2, v6, v8

    .line 1402
    .end local v6    # "values":[Ljava/lang/String;
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v11, :cond_5

    :cond_4
    move v3, v7

    .line 1404
    goto :goto_0

    .line 1406
    :cond_5
    const/4 v3, 0x1

    .line 1407
    .local v3, "inSameCountry":Z
    invoke-virtual {p1, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1408
    .local v5, "networkMCC":Ljava/lang/String;
    invoke-virtual {v2, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1409
    .local v1, "homeMCC":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v4

    .line 1410
    .local v4, "networkCountry":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v0

    .line 1411
    .local v0, "homeCountry":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_6
    move v3, v7

    .line 1413
    goto :goto_0

    .line 1415
    :cond_7
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1416
    if-nez v3, :cond_1

    .line 1420
    const-string v7, "us"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "vi"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1421
    const/4 v3, 0x1

    goto :goto_0

    .line 1422
    :cond_8
    const-string v7, "vi"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "us"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1423
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method protected isCallerOnDifferentThread()Z
    .locals 3

    .prologue
    .line 1181
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1183
    .local v0, "value":Z
    :goto_0
    return v0

    .line 1181
    .end local v0    # "value":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isConcurrentVoiceAndDataAllowed()Z
.end method

.method public final isDeviceShuttingDown()Z
    .locals 1

    .prologue
    .line 1511
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    return v0
.end method

.method protected isFakeUIPeriod()Z
    .locals 1

    .prologue
    .line 1613
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mFakeUIPeriod:Z

    return v0
.end method

.method public isImsRegistered()Z
    .locals 1

    .prologue
    .line 1163
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistered:Z

    return v0
.end method

.method protected final isNonRoamingInCdmaNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z
    .locals 1
    .param p1, "b"    # Landroid/os/BaseBundle;
    .param p2, "network"    # Ljava/lang/String;

    .prologue
    .line 1506
    const-string v0, "cdma_nonroaming_networks_string_array"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isInNetwork(Landroid/os/BaseBundle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected final isNonRoamingInGsmNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z
    .locals 1
    .param p1, "b"    # Landroid/os/BaseBundle;
    .param p2, "network"    # Ljava/lang/String;

    .prologue
    .line 1498
    const-string v0, "gsm_nonroaming_networks_string_array"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isInNetwork(Landroid/os/BaseBundle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isOtherPhoneOffhook()Z
    .locals 2

    .prologue
    .line 1605
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOtherPhoneCallState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneConstants$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isRatLte(I)Z
    .locals 1
    .param p1, "rat"    # I

    .prologue
    .line 1535
    const/16 v0, 0xe

    if-eq p1, v0, :cond_0

    const/16 v0, 0x13

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final isRoamingInCdmaNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z
    .locals 1
    .param p1, "b"    # Landroid/os/BaseBundle;
    .param p2, "network"    # Ljava/lang/String;

    .prologue
    .line 1502
    const-string v0, "cdma_roaming_networks_string_array"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isInNetwork(Landroid/os/BaseBundle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected final isRoamingInGsmNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z
    .locals 1
    .param p1, "b"    # Landroid/os/BaseBundle;
    .param p2, "network"    # Ljava/lang/String;

    .prologue
    .line 1494
    const-string v0, "gsm_roaming_networks_string_array"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isInNetwork(Landroid/os/BaseBundle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected abstract log(Ljava/lang/String;)V
.end method

.method protected abstract loge(Ljava/lang/String;)V
.end method

.method protected maybeUpdateHDTagForPlmn(ZLjava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "showPlmn"    # Z
    .param p2, "plmn"    # Ljava/lang/String;

    .prologue
    .line 1545
    if-nez p1, :cond_0

    .line 1546
    .end local p2    # "plmn":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "plmn":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->maybeUpdateHDTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method protected maybeUpdateHDTagForSpn(ZLjava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "showSpn"    # Z
    .param p2, "spn"    # Ljava/lang/String;

    .prologue
    .line 1540
    if-nez p1, :cond_0

    .line 1541
    .end local p2    # "spn":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "spn":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->maybeUpdateHDTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method protected notifyDataRegStateRilRadioTechnologyChanged()V
    .locals 6

    .prologue
    .line 409
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    .line 410
    .local v1, "rat":I
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    .line 411
    .local v0, "drs":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDataRegStateRilRadioTechnologyChanged: drs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 412
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    const-string v3, "gsm.network.type"

    invoke-static {v1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRegStateOrRatChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 415
    return-void
.end method

.method protected notifySignalStrength()Z
    .locals 5

    .prologue
    .line 388
    const/4 v1, 0x0

    .line 389
    .local v1, "notified":Z
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    monitor-enter v3

    .line 390
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2, v4}, Landroid/telephony/SignalStrength;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 392
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->notifySignalStrength()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 393
    const/4 v1, 0x1

    .line 399
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 400
    return v1

    .line 394
    :catch_0
    move-exception v0

    .line 395
    .local v0, "ex":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSignalStrength() Phone already destroyed: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "SignalStrength not notified"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 399
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method protected notifySmoothLevel(I)V
    .locals 6
    .param p1, "msg_type"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1325
    add-int/lit8 v0, p1, -0x65

    .line 1326
    .local v0, "index":I
    if-nez v0, :cond_1

    .line 1327
    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_voice:I

    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_voice:I

    if-gt v2, v3, :cond_0

    .line 1329
    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_voice:I

    iput v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_voice:I

    .line 1330
    iput-boolean v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsPendingNotify_voice_lvl:Z

    .line 1351
    :goto_0
    return-void

    .line 1334
    :cond_0
    iput-boolean v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsPendingNotify_voice_lvl:Z

    .line 1345
    :goto_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1346
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->what:I

    .line 1347
    const-wide/16 v2, 0x4e20

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1349
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifySmoothLevel (last:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_voice:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_data:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") current:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_voice:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_data:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") ) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1336
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_data:I

    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_data:I

    if-gt v2, v3, :cond_2

    .line 1338
    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_data:I

    iput v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_data:I

    .line 1339
    iput-boolean v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsPendingNotify_data_lvl:Z

    goto :goto_0

    .line 1343
    :cond_2
    iput-boolean v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsPendingNotify_data_lvl:Z

    goto :goto_1
.end method

.method protected oemCheckSignal()V
    .locals 1

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-nez v0, :cond_2

    .line 1379
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateOEMSmooth(Landroid/telephony/ServiceState;)Z

    .line 1381
    :cond_2
    return-void
.end method

.method public oem_get_new_SS()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method public onImsCapabilityChanged()V
    .locals 0

    .prologue
    .line 776
    return-void
.end method

.method public onOemSignalStrengthResult(Landroid/os/AsyncResult;ZZ)Z
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "isGsm"    # Z
    .param p3, "x_oemcheating"    # Z

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 1009
    .local v0, "oldSignalStrength":Landroid/telephony/SignalStrength;
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 1010
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/SignalStrength;

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 1011
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->validateInput()V

    .line 1012
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1, p2}, Landroid/telephony/SignalStrength;->setGsm(Z)V

    .line 1018
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v1, p3}, Lcom/android/internal/telephony/ServiceStateTracker;->updateOEMSmooth(Landroid/telephony/ServiceState;Z)Z

    move-result v1

    return v1

    .line 1014
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSignalStrengthResult() Exception from RIL : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1015
    new-instance v1, Landroid/telephony/SignalStrength;

    invoke-direct {v1, p2}, Landroid/telephony/SignalStrength;-><init>(Z)V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    goto :goto_0
.end method

.method public onOtherPhoneCallStateUpdated(Lcom/android/internal/telephony/PhoneConstants$State;)V
    .locals 4
    .param p1, "state"    # Lcom/android/internal/telephony/PhoneConstants$State;

    .prologue
    const/16 v2, 0x1f4

    .line 1592
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/PhoneConstants$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOtherPhoneCallState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneConstants$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1601
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOtherPhoneCallState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 1602
    return-void

    .line 1594
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/PhoneConstants$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1596
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->isFakeUIPeriod()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1597
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->removeMessages(I)V

    .line 1598
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x2ee0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method protected onSignalStrengthResult(Landroid/os/AsyncResult;Z)Z
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "isGsm"    # Z

    .prologue
    .line 965
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->isFakeUIPeriod()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 966
    const/4 v1, 0x0

    .line 988
    :goto_0
    return v1

    .line 970
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 975
    .local v0, "oldSignalStrength":Landroid/telephony/SignalStrength;
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 976
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/SignalStrength;

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 977
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->validateInput()V

    .line 978
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1, p2}, Landroid/telephony/SignalStrength;->setGsm(Z)V

    .line 988
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->updateOEMSmooth(Landroid/telephony/ServiceState;)Z

    move-result v1

    goto :goto_0

    .line 980
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSignalStrengthResult() Exception from RIL : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 981
    new-instance v1, Landroid/telephony/SignalStrength;

    invoke-direct {v1, p2}, Landroid/telephony/SignalStrength;-><init>(Z)V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    goto :goto_1
.end method

.method protected abstract onUpdateIccAvailability()V
.end method

.method public abstract pollState()V
.end method

.method public powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V
    .locals 6
    .param p1, "dcTracker"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .prologue
    .line 895
    monitor-enter p0

    .line 896
    :try_start_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    if-nez v4, :cond_2

    .line 901
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070041

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 903
    .local v3, "networkNotClearData":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 904
    .local v0, "currentNetwork":Ljava/lang/String;
    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 905
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 906
    aget-object v4, v3, v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 909
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not disconnecting data for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 910
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V

    .line 911
    monitor-exit p0

    .line 937
    .end local v0    # "currentNetwork":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v3    # "networkNotClearData":[Ljava/lang/String;
    :goto_1
    return-void

    .line 905
    .restart local v0    # "currentNetwork":Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v3    # "networkNotClearData":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 917
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDisconnected()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 919
    const-string v4, "radioTurnedOff"

    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 920
    const-string v4, "Data disconnected, turn off radio right away."

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 921
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V

    .line 936
    .end local v0    # "currentNetwork":Ljava/lang/String;
    .end local v3    # "networkNotClearData":[Ljava/lang/String;
    :cond_2
    :goto_2
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 923
    .restart local v0    # "currentNetwork":Ljava/lang/String;
    .restart local v3    # "networkNotClearData":[Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v4, "radioTurnedOff"

    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 924
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .line 925
    .local v2, "msg":Landroid/os/Message;
    const/16 v4, 0x26

    iput v4, v2, Landroid/os/Message;->what:I

    .line 926
    iget v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    iput v4, v2, Landroid/os/Message;->arg1:I

    .line 927
    const-wide/16 v4, 0x7530

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 928
    const-string v4, "Wait upto 30s for data to disconnect, then turn off radio."

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 929
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    goto :goto_2

    .line 931
    :cond_4
    const-string v4, "Cannot send delayed Msg, turn off radio right away."

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 932
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public processPendingRadioPowerOffAfterDataOff()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 945
    monitor-enter p0

    .line 946
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    if-eqz v1, :cond_0

    .line 947
    const-string v0, "Process pending request to turn radio off."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 948
    iget v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    .line 949
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V

    .line 950
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 951
    const/4 v0, 0x1

    monitor-exit p0

    .line 953
    :goto_0
    return v0

    :cond_0
    monitor-exit p0

    goto :goto_0

    .line 954
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reRegisterNetwork(Landroid/os/Message;)V
    .locals 2
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x13

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 542
    return-void
.end method

.method public registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 786
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 787
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 789
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v1

    if-nez v1, :cond_0

    .line 790
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 792
    :cond_0
    return-void
.end method

.method public registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 804
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 805
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 807
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 808
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 810
    :cond_0
    return-void
.end method

.method public registerForDataRegStateOrRatChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 825
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 826
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRegStateOrRatChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 827
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged()V

    .line 828
    return-void
.end method

.method public registerForDataRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 518
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 519
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 521
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v1

    if-nez v1, :cond_0

    .line 522
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 524
    :cond_0
    return-void
.end method

.method public registerForDataRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 497
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 498
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 500
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 501
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 503
    :cond_0
    return-void
.end method

.method public registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 840
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 842
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 843
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    if-nez v1, :cond_0

    .line 844
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 846
    :cond_0
    return-void
.end method

.method public registerForPsRestrictedDisabled(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 877
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 878
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 880
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 881
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 883
    :cond_0
    return-void
.end method

.method public registerForPsRestrictedEnabled(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 858
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 859
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 861
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 862
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 864
    :cond_0
    return-void
.end method

.method public registerForVoiceRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 476
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 477
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 479
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v1

    if-nez v1, :cond_0

    .line 480
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 482
    :cond_0
    return-void
.end method

.method public registerForVoiceRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 455
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 456
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 458
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 459
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 461
    :cond_0
    return-void
.end method

.method protected removeSmoothMessage()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1210
    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsPendingNotify_voice_lvl:Z

    .line 1211
    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsPendingNotify_data_lvl:Z

    .line 1212
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->removeMessages(I)V

    .line 1213
    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->removeMessages(I)V

    .line 1214
    return-void
.end method

.method requestShutdown()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 368
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    if-ne v0, v1, :cond_0

    .line 372
    :goto_0
    return-void

    .line 369
    :cond_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    .line 370
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    .line 371
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setPowerStateToDesired()V

    goto :goto_0
.end method

.method protected resetServiceStateInIwlanMode()V
    .locals 4

    .prologue
    const/16 v3, 0x12

    .line 1444
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v2, :cond_1

    .line 1445
    const/4 v0, 0x0

    .line 1446
    .local v0, "resetIwlanRatVal":Z
    const-string v1, "set service state as POWER_OFF"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1447
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    if-ne v3, v1, :cond_0

    .line 1449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pollStateDone: mNewSS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1450
    const-string v1, "pollStateDone: reset iwlan RAT value"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1451
    const/4 v0, 0x1

    .line 1453
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 1454
    if-eqz v0, :cond_1

    .line 1455
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v3}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    .line 1456
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    .line 1457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pollStateDone: mNewSS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1460
    .end local v0    # "resetIwlanRatVal":Z
    :cond_1
    return-void
.end method

.method protected setFakeUIPeriod(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 1609
    iput-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mFakeUIPeriod:Z

    .line 1610
    return-void
.end method

.method public abstract setImsRegistrationState(Z)V
.end method

.method protected abstract setPowerStateToDesired()V
.end method

.method public setRadioPower(Z)V
    .locals 0
    .param p1, "power"    # Z

    .prologue
    .line 546
    iput-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    .line 548
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setPowerStateToDesired()V

    .line 549
    return-void
.end method

.method protected abstract setRoamingType(Landroid/telephony/ServiceState;)V
.end method

.method protected shouldFixTimeZoneNow(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 11
    .param p1, "phoneBase"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "operatorNumeric"    # Ljava/lang/String;
    .param p3, "prevOperatorNumeric"    # Ljava/lang/String;
    .param p4, "needToFixTimeZone"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1052
    const/4 v9, 0x0

    const/4 v10, 0x3

    :try_start_0
    invoke-virtual {p2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 1065
    .local v4, "mcc":I
    const/4 v9, 0x0

    const/4 v10, 0x3

    :try_start_1
    invoke-virtual {p3, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    .line 1071
    .local v5, "prevMcc":I
    :goto_0
    const/4 v3, 0x0

    .line 1072
    .local v3, "iccCardExist":Z
    iget-object v9, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v9, :cond_0

    .line 1073
    iget-object v9, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v9, v10, :cond_3

    move v3, v7

    .line 1077
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    if-ne v4, v5, :cond_2

    :cond_1
    if-eqz p4, :cond_4

    :cond_2
    move v6, v7

    .line 1079
    .local v6, "retVal":Z
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1080
    .local v0, "ctm":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "shouldFixTimeZoneNow: retVal="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " iccCardExist="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " operatorNumeric="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mcc="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " prevOperatorNumeric="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " prevMcc="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " needToFixTimeZone="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ltod="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0, v1}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1087
    .end local v0    # "ctm":J
    .end local v3    # "iccCardExist":Z
    .end local v4    # "mcc":I
    .end local v5    # "prevMcc":I
    .end local v6    # "retVal":Z
    :goto_3
    return v6

    .line 1053
    :catch_0
    move-exception v2

    .line 1055
    .local v2, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "shouldFixTimeZoneNow: no mcc, operatorNumeric="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " retVal=false"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    move v6, v8

    .line 1058
    goto :goto_3

    .line 1066
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "mcc":I
    :catch_1
    move-exception v2

    .line 1067
    .restart local v2    # "e":Ljava/lang/Exception;
    add-int/lit8 v5, v4, 0x1

    .restart local v5    # "prevMcc":I
    goto/16 :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "iccCardExist":Z
    :cond_3
    move v3, v8

    .line 1073
    goto/16 :goto_1

    :cond_4
    move v6, v8

    .line 1077
    goto/16 :goto_2
.end method

.method public unregisterForDataConnectionAttached(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 794
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 795
    return-void
.end method

.method public unregisterForDataConnectionDetached(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 812
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 813
    return-void
.end method

.method public unregisterForDataRegStateOrRatChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 830
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRegStateOrRatChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 831
    return-void
.end method

.method public unregisterForDataRoamingOff(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 528
    return-void
.end method

.method public unregisterForDataRoamingOn(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 507
    return-void
.end method

.method public unregisterForNetworkAttached(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 848
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 849
    return-void
.end method

.method public unregisterForPsRestrictedDisabled(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 886
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 887
    return-void
.end method

.method public unregisterForPsRestrictedEnabled(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 867
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 868
    return-void
.end method

.method public unregisterForVoiceRoamingOff(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 486
    return-void
.end method

.method public unregisterForVoiceRoamingOn(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 465
    return-void
.end method

.method protected updateCarrierMccMncConfiguration(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p1, "newOp"    # Ljava/lang/String;
    .param p2, "oldOp"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 1188
    if-nez p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1190
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update mccmnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fromServiceState=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1191
    const/4 v0, 0x1

    invoke-static {p3, p1, v0}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1193
    :cond_2
    return-void
.end method

.method protected updateOEMSmooth(Landroid/telephony/ServiceState;)Z
    .locals 1
    .param p1, "st"    # Landroid/telephony/ServiceState;

    .prologue
    .line 1218
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateOEMSmooth(Landroid/telephony/ServiceState;Z)Z

    move-result v0

    return v0
.end method

.method protected updateOEMSmooth(Landroid/telephony/ServiceState;Z)Z
    .locals 6
    .param p1, "st"    # Landroid/telephony/ServiceState;
    .param p2, "x_oemcheating"    # Z

    .prologue
    const/16 v5, 0x66

    const/16 v4, 0x65

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1224
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getOEMLevel(Landroid/telephony/ServiceState;Landroid/telephony/SignalStrength;)[I

    move-result-object v0

    .line 1225
    .local v0, "levels":[I
    aget v1, v0, v3

    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_voice:I

    .line 1226
    aget v1, v0, v2

    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_data:I

    .line 1229
    if-eqz p2, :cond_0

    .line 1230
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->removeSmoothMessage()V

    .line 1231
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_voice:I

    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_voice:I

    .line 1232
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_data:I

    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_data:I

    .line 1233
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_voice:I

    iput v2, v1, Landroid/telephony/SignalStrength;->mCheating_lvl_with_voice_rat:I

    .line 1234
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_data:I

    iput v2, v1, Landroid/telephony/SignalStrength;->mCheating_lvl_with_data_rat:I

    .line 1235
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->OEMnotifySignalStrength()Z

    move-result v1

    .line 1285
    :goto_0
    return v1

    .line 1239
    :cond_0
    sget-boolean v1, Lcom/android/internal/telephony/ServiceStateTracker;->IS_OEM_SMOOTH:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_data:I

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_voice:I

    if-nez v1, :cond_1

    .line 1240
    iput v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_voice:I

    .line 1241
    iput v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_data:I

    .line 1249
    :cond_1
    sget-boolean v1, Lcom/android/internal/telephony/ServiceStateTracker;->IS_OEM_SMOOTH:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_voice:I

    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_voice:I

    if-gt v1, v2, :cond_3

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_data:I

    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_data:I

    if-gt v1, v2, :cond_3

    .line 1251
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->removeSmoothMessage()V

    .line 1253
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_voice:I

    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_voice:I

    .line 1254
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_data:I

    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_data:I

    .line 1255
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_voice:I

    iput v2, v1, Landroid/telephony/SignalStrength;->mCheating_lvl_with_voice_rat:I

    .line 1256
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_data:I

    iput v2, v1, Landroid/telephony/SignalStrength;->mCheating_lvl_with_data_rat:I

    .line 1257
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->OEMnotifySignalStrength()Z

    move-result v1

    goto :goto_0

    .line 1263
    :cond_3
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_voice:I

    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_voice:I

    if-gt v1, v2, :cond_4

    .line 1264
    iput-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsPendingNotify_voice_lvl:Z

    .line 1265
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_voice:I

    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_voice:I

    .line 1266
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->removeMessages(I)V

    .line 1268
    :cond_4
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsPendingNotify_voice_lvl:Z

    if-nez v1, :cond_5

    .line 1269
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->notifySmoothLevel(I)V

    .line 1272
    :cond_5
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_data:I

    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_data:I

    if-gt v1, v2, :cond_6

    .line 1273
    iput-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsPendingNotify_data_lvl:Z

    .line 1274
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMCurLevel_data:I

    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_data:I

    .line 1275
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->removeMessages(I)V

    .line 1277
    :cond_6
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsPendingNotify_data_lvl:Z

    if-nez v1, :cond_7

    .line 1278
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->notifySmoothLevel(I)V

    .line 1282
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_voice:I

    iput v2, v1, Landroid/telephony/SignalStrength;->mCheating_lvl_with_voice_rat:I

    .line 1283
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOEMLastLevel_data:I

    iput v2, v1, Landroid/telephony/SignalStrength;->mCheating_lvl_with_data_rat:I

    .line 1285
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->OEMnotifySignalStrength()Z

    move-result v1

    goto :goto_0
.end method

.method protected updatePhoneObject()V
    .locals 3

    .prologue
    .line 433
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120098

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 436
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 438
    .local v0, "isRegistered":Z
    :goto_0
    if-nez v0, :cond_3

    .line 439
    const-string v1, "SST"

    const-string v2, "updatePhoneObject: Ignore update"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    .end local v0    # "isRegistered":Z
    :cond_1
    :goto_1
    return-void

    .line 436
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 442
    .restart local v0    # "isRegistered":Z
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneBase;->updatePhoneObject(I)V

    goto :goto_1
.end method

.method protected abstract updateSpnDisplay()V
.end method

.method protected useDataRegStateForDataOnlyDevices()V
    .locals 2

    .prologue
    .line 422
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceCapable:Z

    if-nez v0, :cond_0

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "useDataRegStateForDataOnlyDevice: VoiceRegState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DataRegState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    .line 430
    :cond_0
    return-void
.end method
