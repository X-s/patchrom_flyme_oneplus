.class public Lcom/android/internal/telephony/SubscriptionController;
.super Lcom/android/internal/telephony/ISub$Stub;
.source "SubscriptionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SubscriptionController$OnDemandDdsLockNotifier;,
        Lcom/android/internal/telephony/SubscriptionController$OEMNetworkModeHandler;,
        Lcom/android/internal/telephony/SubscriptionController$DataConnectionHandler;,
        Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;
    }
.end annotation


# static fields
.field static final DBG:Z = true

.field private static final DUMMY_SUB_ID_BASE:I = 0x7ffffffb

.field private static final EVENT_SET_DEFAULT_DATA_DONE:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "SubscriptionController"

.field static final MAX_LOCAL_LOG_LINES:I = 0x1f4

.field public static final OEM_DEFAULT_DATA_CARD_ICCID:Ljava/lang/String; = "oem_default_primary_iccid"

.field public static final OEM_DEFAULT_DATA_CARD_SLOT:Ljava/lang/String; = "oem_default_primary_slot"

.field public static final OEM_DEFAULT_SMS_CARD_ICCID:Ljava/lang/String; = "oem_default_sms_iccid"

.field public static final OEM_DEFAULT_VOICE_CARD_ICCID:Ljava/lang/String; = "oem_default_voice_iccid"

.field private static final OEM_EVENT_CONFIG_DDS_DONE:I = 0x65

.field private static final OEM_EVENT_CONFIG_LTE_DONE:I = 0x64

.field private static final OEM_EVENT_MODEM_STACK_READY:I = 0x66

.field static final VDBG:Z

.field private static mDefaultFallbackSubId:I

.field private static mDefaultPhoneId:I

.field private static mSlotIdxToSubId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/internal/telephony/SubscriptionController;

.field protected static sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;


# instance fields
.field private colorArr:[I

.field private inSwitchDefaultDataCardproess:Z

.field protected mCM:Lcom/android/internal/telephony/CallManager;

.field protected mContext:Landroid/content/Context;

.field private mDataConnectionHandler:Lcom/android/internal/telephony/SubscriptionController$DataConnectionHandler;

.field private mDctController:Lcom/android/internal/telephony/dataconnection/DctController;

.field private mLocalLog:Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

.field protected final mLock:Ljava/lang/Object;

.field private mOEMModemStackController:Lcom/android/internal/telephony/ModemStackController;

.field private mOEMNetworkModeHandler:Lcom/android/internal/telephony/SubscriptionController$OEMNetworkModeHandler;

.field private mOemDctController:Lcom/android/internal/telephony/dataconnection/DctController;

.field private mOnDemandDdsLockNotificationRegistrants:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/SubscriptionController$OnDemandDdsLockNotifier;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScheduler:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

.field private mSchedulerAc:Lcom/android/internal/telephony/dataconnection/DdsSchedulerAc;

.field protected mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private waitModemStackReady_SubId:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SubscriptionController;->mSlotIdxToSubId:Ljava/util/HashMap;

    .line 155
    const v0, 0x7ffffffb

    sput v0, Lcom/android/internal/telephony/SubscriptionController;->mDefaultFallbackSubId:I

    .line 156
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/SubscriptionController;->mDefaultPhoneId:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 237
    invoke-direct {p0}, Lcom/android/internal/telephony/ISub$Stub;-><init>()V

    .line 99
    new-instance v0, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mLocalLog:Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

    .line 139
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mLock:Ljava/lang/Object;

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mOnDemandDdsLockNotificationRegistrants:Ljava/util/HashMap;

    .line 179
    new-instance v0, Lcom/android/internal/telephony/SubscriptionController$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SubscriptionController$1;-><init>(Lcom/android/internal/telephony/SubscriptionController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1805
    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionController;->waitModemStackReady_SubId:Ljava/lang/Object;

    .line 1806
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SubscriptionController;->inSwitchDefaultDataCardproess:Z

    .line 238
    const-string v0, "SubscriptionController init by Context"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 239
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    .line 240
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 241
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 243
    const-string v0, "isub"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 244
    const-string v0, "isub"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 253
    :cond_0
    const-string v0, "[SubscriptionController] init by Context"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 254
    new-instance v0, Lcom/android/internal/telephony/SubscriptionController$DataConnectionHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/internal/telephony/SubscriptionController$DataConnectionHandler;-><init>(Lcom/android/internal/telephony/SubscriptionController;Lcom/android/internal/telephony/SubscriptionController$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mDataConnectionHandler:Lcom/android/internal/telephony/SubscriptionController$DataConnectionHandler;

    .line 257
    new-instance v0, Lcom/android/internal/telephony/SubscriptionController$OEMNetworkModeHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/internal/telephony/SubscriptionController$OEMNetworkModeHandler;-><init>(Lcom/android/internal/telephony/SubscriptionController;Lcom/android/internal/telephony/SubscriptionController$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mOEMNetworkModeHandler:Lcom/android/internal/telephony/SubscriptionController$OEMNetworkModeHandler;

    .line 258
    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionController;->mOEMModemStackController:Lcom/android/internal/telephony/ModemStackController;

    .line 261
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->getInstance()Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mScheduler:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    .line 263
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DdsSchedulerAc;

    invoke-direct {v0}, Lcom/android/internal/telephony/dataconnection/DdsSchedulerAc;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mSchedulerAc:Lcom/android/internal/telephony/dataconnection/DdsSchedulerAc;

    .line 264
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mSchedulerAc:Lcom/android/internal/telephony/dataconnection/DdsSchedulerAc;

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController;->mDataConnectionHandler:Lcom/android/internal/telephony/SubscriptionController$DataConnectionHandler;

    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mScheduler:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DdsSchedulerAc;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 266
    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/android/internal/telephony/ISub$Stub;-><init>()V

    .line 99
    new-instance v0, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mLocalLog:Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

    .line 139
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mLock:Ljava/lang/Object;

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mOnDemandDdsLockNotificationRegistrants:Ljava/util/HashMap;

    .line 179
    new-instance v0, Lcom/android/internal/telephony/SubscriptionController$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SubscriptionController$1;-><init>(Lcom/android/internal/telephony/SubscriptionController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1805
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->waitModemStackReady_SubId:Ljava/lang/Object;

    .line 1806
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SubscriptionController;->inSwitchDefaultDataCardproess:Z

    .line 300
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    .line 301
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 303
    const-string v0, "isub"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 304
    const-string v0, "isub"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 313
    :cond_0
    const-string v0, "[SubscriptionController] init by Phone"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method private OEMsetDefaultSMSSubIdinDB(I)V
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 1396
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 1397
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "OEMsetDefaultSMSSubIdinDB called with DEFAULT_SUB_ID"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1399
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OEMsetDefaultSMSSubIdinDB] subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1400
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "multi_sim_sms"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1402
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->broadcastDefaultSmsSubIdChanged(I)V

    .line 1403
    return-void
.end method

.method private OEMsetDefaultVoiceSubIdinDB(I)V
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 1451
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 1452
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setDefaultVoiceSubId called with DEFAULT_SUB_ID"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1454
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OEMsetDefaultVoiceSubIdinDB] subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1455
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "multi_sim_voice_call"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1457
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->broadcastDefaultVoiceSubIdChanged(I)V

    .line 1458
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/SubscriptionController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/SubscriptionController;)Lcom/android/internal/telephony/ModemStackController;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionController;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mOEMModemStackController:Lcom/android/internal/telephony/ModemStackController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/SubscriptionController;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionController;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->updateDataSubId(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/SubscriptionController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionController;

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/internal/telephony/SubscriptionController;->inSwitchDefaultDataCardproess:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/SubscriptionController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionController;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/internal/telephony/SubscriptionController;->inSwitchDefaultDataCardproess:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/SubscriptionController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/SubscriptionController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionController;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->regDdsSwitchInfo()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/SubscriptionController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionController;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->unregDdsSwitchInfo()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/SubscriptionController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionController;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->waitModemStackReady_SubId:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/internal/telephony/SubscriptionController;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionController;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionController;->waitModemStackReady_SubId:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/SubscriptionController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionController;
    .param p1, "x1"    # I

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->oem_setLTEandDds(I)V

    return-void
.end method

.method private broadcastDefaultDataSubIdChanged(I)V
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 1694
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[broadcastDefaultDataSubIdChanged] subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1695
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1696
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1697
    const-string v1, "subscription"

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1698
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1699
    return-void
.end method

.method private broadcastDefaultSmsSubIdChanged(I)V
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 1408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[broadcastDefaultSmsSubIdChanged] subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1409
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_DEFAULT_SMS_SUBSCRIPTION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1410
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1411
    const-string v1, "subscription"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1412
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1413
    return-void
.end method

.method private broadcastDefaultVoiceSubIdChanged(I)V
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 1463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[broadcastDefaultVoiceSubIdChanged] subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1464
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1465
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1466
    const-string v1, "subscription"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1467
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1468
    return-void
.end method

.method private broadcastSimInfoContentChanged()V
    .locals 2

    .prologue
    .line 344
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 345
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 346
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 347
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 348
    return-void
.end method

.method private checkNotifyPermission(Ljava/lang/String;)Z
    .locals 2
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 353
    const/4 v0, 0x1

    .line 359
    :goto_0
    return v0

    .line 356
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkNotifyPermission Permission Denial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 359
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private do_oem_switch_dds(I)Z
    .locals 8
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x1

    .line 1645
    iget-boolean v4, p0, Lcom/android/internal/telephony/SubscriptionController;->inSwitchDefaultDataCardproess:Z

    if-eqz v4, :cond_0

    .line 1646
    const-string v4, "do_oem_switch_dds: already switching data card and ignore this request."

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->loge(Ljava/lang/String;)V

    .line 1673
    :goto_0
    return v3

    .line 1649
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/SubscriptionController;->inSwitchDefaultDataCardproess:Z

    .line 1651
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 1652
    .local v0, "phoneId":I
    if-ltz v0, :cond_3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 1653
    sget-boolean v4, Lcom/android/internal/telephony/OemUtils;->Disable_Crossbinding_oemDCS:Z

    if-eqz v4, :cond_2

    .line 1655
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 1656
    .local v2, "subinfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_2

    .line 1657
    invoke-static {}, Lcn/oneplus/telephony/OemTelephonyServiceManager;->getInstance()Lcn/oneplus/telephony/OemTelephonyServiceManager;

    move-result-object v4

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/oneplus/telephony/OemTelephonyServiceManager;->activeQueriedMbnIfNeeded(Ljava/lang/String;)Z

    move-result v1

    .line 1658
    .local v1, "ret":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "activeQueriedMbnIfNeeded return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1659
    if-eqz v1, :cond_2

    .line 1660
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->mOEMModemStackController:Lcom/android/internal/telephony/ModemStackController;

    if-nez v4, :cond_1

    .line 1661
    invoke-static {}, Lcom/android/internal/telephony/ModemStackController;->getInstance()Lcom/android/internal/telephony/ModemStackController;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->mOEMModemStackController:Lcom/android/internal/telephony/ModemStackController;

    .line 1663
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->mOEMModemStackController:Lcom/android/internal/telephony/ModemStackController;

    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionController;->mOEMNetworkModeHandler:Lcom/android/internal/telephony/SubscriptionController$OEMNetworkModeHandler;

    const/16 v6, 0x66

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/internal/telephony/ModemStackController;->OEMregisterForStackReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1664
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->waitModemStackReady_SubId:Ljava/lang/Object;

    goto :goto_0

    .line 1669
    .end local v1    # "ret":Z
    .end local v2    # "subinfo":Landroid/telephony/SubscriptionInfo;
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SubscriptionController;->oem_setLTEandDds(II)V

    goto :goto_0

    .line 1673
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private enforceSubscriptionPermission()V
    .locals 3

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/SubscriptionController;
    .locals 2

    .prologue
    .line 229
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    if-nez v0, :cond_0

    .line 231
    const-string v0, "SubscriptionController"

    const-string v1, "getInstance null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    return-object v0
.end method

.method private getSubInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;
    .locals 10
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "queryKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selection:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 479
    const/4 v4, 0x0

    .line 480
    .local v4, "selectionArgs":[Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 481
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .end local v4    # "selectionArgs":[Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 483
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    :cond_0
    const/4 v8, 0x0

    .line 484
    .local v8, "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, p1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 487
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    move-object v9, v8

    .line 488
    .end local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .local v9, "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 489
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfoRecord(Landroid/database/Cursor;)Landroid/telephony/SubscriptionInfo;

    move-result-object v7

    .line 490
    .local v7, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v7, :cond_5

    .line 492
    if-nez v9, :cond_4

    .line 494
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    .end local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :goto_1
    :try_start_1
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    move-object v9, v8

    .line 498
    .end local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    goto :goto_0

    .line 500
    .end local v7    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :cond_1
    const-string v0, "Query fail"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 503
    :goto_3
    if-eqz v6, :cond_2

    .line 504
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 508
    :cond_2
    return-object v8

    .line 503
    .end local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_0
    move-exception v0

    move-object v8, v9

    .end local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :goto_4
    if-eqz v6, :cond_3

    .line 504
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 503
    :catchall_1
    move-exception v0

    goto :goto_4

    .end local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v7    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .restart local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :cond_4
    move-object v8, v9

    .end local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    goto :goto_1

    .end local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :cond_5
    move-object v8, v9

    .end local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    goto :goto_2

    .end local v7    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :cond_6
    move-object v8, v9

    .end local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    goto :goto_3
.end method

.method private getSubInfoRecord(Landroid/database/Cursor;)Landroid/telephony/SubscriptionInfo;
    .locals 19
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 404
    const-string v1, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 406
    .local v2, "id":I
    const-string v1, "icc_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 408
    .local v3, "iccId":Ljava/lang/String;
    const-string v1, "sim_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 410
    .local v4, "simSlotIndex":I
    const-string v1, "display_name"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 412
    .local v5, "displayName":Ljava/lang/String;
    const-string v1, "carrier_name"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 414
    .local v6, "carrierName":Ljava/lang/String;
    const-string v1, "name_source"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 416
    .local v7, "nameSource":I
    const-string v1, "color"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 418
    .local v8, "iconTint":I
    const-string v1, "number"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 420
    .local v9, "number":Ljava/lang/String;
    const-string v1, "data_roaming"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 423
    .local v10, "dataRoaming":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v18, 0x1080443

    move/from16 v0, v18

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 425
    .local v11, "iconBitmap":Landroid/graphics/Bitmap;
    const-string v1, "mcc"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 427
    .local v12, "mcc":I
    const-string v1, "mnc"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 430
    .local v13, "mnc":I
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSubscriptionCountryIso(I)Ljava/lang/String;

    move-result-object v14

    .line 431
    .local v14, "countryIso":Ljava/lang/String;
    const-string v1, "sub_state"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 433
    .local v15, "status":I
    const-string v1, "network_mode"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 437
    .local v16, "nwMode":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[getSubInfoRecord] id:"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v18, " iccid:"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v18, " simSlotIndex:"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v18, " displayName:"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v18, " nameSource:"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v18, " iconTint:"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v18, " dataRoaming:"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v18, " mcc:"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v18, " mnc:"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v18, " countIso:"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v18, " status:"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v18, " nwMode:"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 444
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v17

    .line 445
    .local v17, "line1Number":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Line1Number is different: "

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 447
    move-object/from16 v9, v17

    .line 449
    :cond_0
    new-instance v1, Landroid/telephony/SubscriptionInfo;

    invoke-direct/range {v1 .. v16}, Landroid/telephony/SubscriptionInfo;-><init>(ILjava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILandroid/graphics/Bitmap;IILjava/lang/String;II)V

    return-object v1
.end method

.method private getSubscriptionCountryIso(I)Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 461
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 462
    .local v0, "phoneId":I
    if-gez v0, :cond_0

    .line 463
    const-string v1, ""

    .line 466
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "gsm.sim.operator.iso-country"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getUnusedColor()I
    .locals 6

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 517
    .local v0, "availableSubInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->colorArr:[I

    .line 518
    const/4 v1, 0x0

    .line 520
    .local v1, "colorIdx":I
    if-eqz v0, :cond_4

    .line 521
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->colorArr:[I

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 523
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 524
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->colorArr:[I

    aget v5, v4, v2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v4

    if-ne v5, v4, :cond_1

    .line 528
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 529
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->colorArr:[I

    aget v4, v4, v2

    .line 534
    .end local v2    # "i":I
    .end local v3    # "j":I
    :goto_2
    return v4

    .line 523
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 521
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 532
    .end local v3    # "j":I
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionController;->colorArr:[I

    array-length v5, v5

    rem-int v1, v4, v5

    .line 534
    .end local v2    # "i":I
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->colorArr:[I

    aget v4, v4, v1

    goto :goto_2
.end method

.method public static init(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/SubscriptionController;
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 218
    const-class v1, Lcom/android/internal/telephony/SubscriptionController;

    monitor-enter v1

    .line 219
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    if-nez v0, :cond_0

    .line 220
    new-instance v0, Lcom/android/internal/telephony/SubscriptionController;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SubscriptionController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    .line 224
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    monitor-exit v1

    return-object v0

    .line 222
    :cond_0
    const-string v0, "SubscriptionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static init(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/SubscriptionController;
    .locals 4
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 207
    const-class v1, Lcom/android/internal/telephony/SubscriptionController;

    monitor-enter v1

    .line 208
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Lcom/android/internal/telephony/SubscriptionController;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SubscriptionController;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    .line 213
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    monitor-exit v1

    return-object v0

    .line 211
    :cond_0
    const-string v0, "SubscriptionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isActiveSubId(I)Z
    .locals 5
    .param p1, "subId"    # I

    .prologue
    .line 2257
    const/4 v2, 0x0

    .line 2259
    .local v2, "retVal":Z
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2260
    sget-object v4, Lcom/android/internal/telephony/SubscriptionController;->mSlotIdxToSubId:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 2263
    .local v3, "simInfoSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2264
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne p1, v4, :cond_0

    .line 2265
    const/4 v2, 0x1

    .line 2272
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "simInfoSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    :cond_1
    return v2
.end method

.method private isSubInfoReady()Z
    .locals 1

    .prologue
    .line 296
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->mSlotIdxToSubId:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1337
    const-string v0, "SubscriptionController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    return-void
.end method

.method private logdl(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1328
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1329
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mLocalLog:Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->log(Ljava/lang/String;)V

    .line 1330
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1346
    const-string v0, "SubscriptionController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    return-void
.end method

.method private logel(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1341
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->loge(Ljava/lang/String;)V

    .line 1342
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mLocalLog:Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->log(Ljava/lang/String;)V

    .line 1343
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1324
    const-string v0, "SubscriptionController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    return-void
.end method

.method private logvl(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1319
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logv(Ljava/lang/String;)V

    .line 1320
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mLocalLog:Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->log(Ljava/lang/String;)V

    .line 1321
    return-void
.end method

.method private oem_setLTEandDds(I)V
    .locals 6
    .param p1, "subId"    # I

    .prologue
    .line 1629
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v2

    .line 1630
    .local v2, "phoneId":I
    if-ltz v2, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 1631
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 1632
    .local v3, "subIdobj":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->mOEMNetworkModeHandler:Lcom/android/internal/telephony/SubscriptionController$OEMNetworkModeHandler;

    const/16 v5, 0x64

    invoke-virtual {v4, v5, v3}, Lcom/android/internal/telephony/SubscriptionController$OEMNetworkModeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1633
    .local v0, "callback":Landroid/os/Message;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "oem_setLTEandDds(1): set LTE preferred to phone id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->loge(Ljava/lang/String;)V

    .line 1634
    const-string v4, "ro.telephony.default_network"

    const/16 v5, 0x9

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1635
    .local v1, "nwmode":I
    new-instance v4, Lcom/android/internal/telephony/OemPrefNetworkRequest;

    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v2, v1, v0}, Lcom/android/internal/telephony/OemPrefNetworkRequest;-><init>(Landroid/content/Context;IILandroid/os/Message;)V

    invoke-virtual {v4}, Lcom/android/internal/telephony/OemPrefNetworkRequest;->loop()V

    .line 1637
    .end local v0    # "callback":Landroid/os/Message;
    .end local v1    # "nwmode":I
    .end local v3    # "subIdobj":Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method private oem_setLTEandDds(II)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "phoneId"    # I

    .prologue
    .line 1620
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 1621
    .local v2, "subIdobj":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mOEMNetworkModeHandler:Lcom/android/internal/telephony/SubscriptionController$OEMNetworkModeHandler;

    const/16 v4, 0x64

    invoke-virtual {v3, v4, v2}, Lcom/android/internal/telephony/SubscriptionController$OEMNetworkModeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1622
    .local v0, "callback":Landroid/os/Message;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "oem_setLTEandDds(2): set LTE preferred to phone id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->loge(Ljava/lang/String;)V

    .line 1623
    const-string v3, "ro.telephony.default_network"

    const/16 v4, 0x9

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1624
    .local v1, "nwmode":I
    new-instance v3, Lcom/android/internal/telephony/OemPrefNetworkRequest;

    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p2, v1, v0}, Lcom/android/internal/telephony/OemPrefNetworkRequest;-><init>(Landroid/content/Context;IILandroid/os/Message;)V

    invoke-virtual {v3}, Lcom/android/internal/telephony/OemPrefNetworkRequest;->loop()V

    .line 1625
    return-void
.end method

.method private static printStackTrace(Ljava/lang/String;)V
    .locals 9
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 2309
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    .line 2310
    .local v4, "re":Ljava/lang/RuntimeException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "StackTrace - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/SubscriptionController;->slogd(Ljava/lang/String;)V

    .line 2311
    invoke-virtual {v4}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    .line 2312
    .local v5, "st":[Ljava/lang/StackTraceElement;
    const/4 v1, 0x1

    .line 2313
    .local v1, "first":Z
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v6, v0, v2

    .line 2314
    .local v6, "ste":Ljava/lang/StackTraceElement;
    if-eqz v1, :cond_0

    .line 2315
    const/4 v1, 0x0

    .line 2313
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2317
    :cond_0
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/SubscriptionController;->slogd(Ljava/lang/String;)V

    goto :goto_1

    .line 2320
    .end local v6    # "ste":Ljava/lang/StackTraceElement;
    :cond_1
    return-void
.end method

.method private regDdsSwitchInfo()V
    .locals 4

    .prologue
    .line 1809
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mOemDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    if-nez v0, :cond_0

    .line 1810
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mOemDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    .line 1813
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mOemDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    if-eqz v0, :cond_1

    .line 1815
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mOemDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mOEMNetworkModeHandler:Lcom/android/internal/telephony/SubscriptionController$OEMNetworkModeHandler;

    const/16 v2, 0x65

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DctController;->registerForDefaultDataSwitchInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1817
    :cond_1
    return-void
.end method

.method private registerReceiverIfNeeded()V
    .locals 4

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 323
    const-string v0, "registering SPN updated receiver"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 327
    :cond_0
    return-void
.end method

.method private setDefaultFallbackSubId(I)V
    .locals 5
    .param p1, "subId"    # I

    .prologue
    .line 1706
    const v3, 0x7fffffff

    if-ne p1, v3, :cond_0

    .line 1707
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "setDefaultSubId called with DEFAULT_SUB_ID"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1709
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setDefaultFallbackSubId] subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1710
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1711
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v2

    .line 1712
    .local v2, "phoneId":I
    if-ltz v2, :cond_3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-lt v2, v3, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 1714
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setDefaultFallbackSubId] set mDefaultFallbackSubId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1715
    sput p1, Lcom/android/internal/telephony/SubscriptionController;->mDefaultFallbackSubId:I

    .line 1717
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 1718
    .local v0, "defaultMccMnc":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1721
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.ACTION_DEFAULT_SUBSCRIPTION_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1722
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x20000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1723
    invoke-static {v1, v2, p1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;II)V

    .line 1725
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setDefaultFallbackSubId] broadcast default subId changed phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1728
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1736
    .end local v0    # "defaultMccMnc":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "phoneId":I
    :cond_2
    :goto_0
    return-void

    .line 1731
    .restart local v2    # "phoneId":I
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setDefaultFallbackSubId] not set invalid phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private shouldDefaultBeCleared(Ljava/util/List;I)Z
    .locals 7
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1849
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[shouldDefaultBeCleared: subId] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1850
    if-nez p1, :cond_0

    .line 1851
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[shouldDefaultBeCleared] return true no records subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1868
    :goto_0
    return v3

    .line 1854
    :cond_0
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1856
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[shouldDefaultBeCleared] return false only one subId, subId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    move v3, v4

    .line 1857
    goto :goto_0

    .line 1859
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 1860
    .local v2, "record":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 1861
    .local v1, "id":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[shouldDefaultBeCleared] Record.id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1862
    if-ne v1, p2, :cond_2

    .line 1863
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[shouldDefaultBeCleared] return false subId is active, subId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    move v3, v4

    .line 1864
    goto :goto_0

    .line 1867
    .end local v1    # "id":I
    .end local v2    # "record":Landroid/telephony/SubscriptionInfo;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[shouldDefaultBeCleared] return true not active subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static slogd(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1333
    const-string v0, "SubscriptionController"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    return-void
.end method

.method private unregDdsSwitchInfo()V
    .locals 2

    .prologue
    .line 1820
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mOemDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    if-eqz v0, :cond_0

    .line 1822
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mOemDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mOEMNetworkModeHandler:Lcom/android/internal/telephony/SubscriptionController$OEMNetworkModeHandler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->unregisterForDefaultDataSwitchInfo(Landroid/os/Handler;)V

    .line 1824
    :cond_0
    return-void
.end method

.method private updateAllDataConnectionTrackers()V
    .locals 4

    .prologue
    .line 1684
    sget-object v2, Lcom/android/internal/telephony/SubscriptionController;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v0, v2

    .line 1685
    .local v0, "len":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateAllDataConnectionTrackers] sProxyPhones.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1686
    const/4 v1, 0x0

    .local v1, "phoneId":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1687
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateAllDataConnectionTrackers] phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1688
    sget-object v2, Lcom/android/internal/telephony/SubscriptionController;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->updateDataConnectionTracker()V

    .line 1686
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1690
    :cond_0
    return-void
.end method

.method private updateDataSubId(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1521
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 1522
    .local v2, "subId":Ljava/lang/Integer;
    const/4 v1, 0x1

    .line 1524
    .local v1, "reqStatus":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " updateDataSubId,  subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1526
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 1527
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->setDataSubId(I)V

    .line 1528
    const/4 v1, 0x0

    .line 1529
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mScheduler:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->updateCurrentDds(Landroid/net/NetworkRequest;)V

    .line 1530
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->broadcastDefaultDataSubIdChanged(I)V

    .line 1532
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->updateAllDataConnectionTrackers()V

    .line 1540
    :goto_0
    return-void

    .line 1536
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v0

    .line 1537
    .local v0, "defaultDds":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DDS switch failed, enforce last dds = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1538
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    goto :goto_0
.end method

.method private validateSubId(I)V
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 1931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "validateSubId subId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1932
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1933
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid sub id passed as parameter"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1934
    :cond_0
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_1

    .line 1935
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Default sub id passed as parameter"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1937
    :cond_1
    return-void
.end method


# virtual methods
.method public OEMnotifySubscriptionInfoChanged()V
    .locals 2

    .prologue
    .line 384
    const-string v1, "notifySubscriptionInfoChanged"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 395
    :goto_0
    return-void

    .line 387
    :cond_0
    const-string v1, "telephony.registry"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    .line 390
    .local v0, "tr":Lcom/android/internal/telephony/ITelephonyRegistry;
    :try_start_0
    const-string v1, "OEMnotifySubscriptionInfoChanged:"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 391
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifySubscriptionInfoChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 392
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public OEMsetDefaultDataSubId(I)V
    .locals 7
    .param p1, "subId"    # I

    .prologue
    .line 1579
    const v3, 0x7fffffff

    if-ne p1, v3, :cond_0

    .line 1580
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "setDefaultDataSubId called with DEFAULT_SUB_ID"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1582
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OEMsetDefaultDataSubId] subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1584
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1585
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " call setDefaultDataSubId with invalid subid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->loge(Ljava/lang/String;)V

    .line 1617
    :goto_0
    return-void

    .line 1589
    :cond_1
    iget-boolean v3, p0, Lcom/android/internal/telephony/SubscriptionController;->inSwitchDefaultDataCardproess:Z

    if-eqz v3, :cond_2

    .line 1590
    const-string v3, "already switching data card and ignore this request."

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1593
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/SubscriptionController;->inSwitchDefaultDataCardproess:Z

    .line 1594
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 1595
    .local v0, "phoneId":I
    if-ltz v0, :cond_5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 1596
    sget-boolean v3, Lcom/android/internal/telephony/OemUtils;->Disable_Crossbinding_oemDCS:Z

    if-eqz v3, :cond_4

    .line 1598
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 1599
    .local v2, "subinfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_4

    .line 1600
    invoke-static {}, Lcn/oneplus/telephony/OemTelephonyServiceManager;->getInstance()Lcn/oneplus/telephony/OemTelephonyServiceManager;

    move-result-object v3

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/oneplus/telephony/OemTelephonyServiceManager;->activeQueriedMbnIfNeeded(Ljava/lang/String;)Z

    move-result v1

    .line 1601
    .local v1, "ret":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "activeQueriedMbnIfNeeded return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1602
    if-eqz v1, :cond_4

    .line 1603
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mOEMModemStackController:Lcom/android/internal/telephony/ModemStackController;

    if-nez v3, :cond_3

    .line 1604
    invoke-static {}, Lcom/android/internal/telephony/ModemStackController;->getInstance()Lcom/android/internal/telephony/ModemStackController;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mOEMModemStackController:Lcom/android/internal/telephony/ModemStackController;

    .line 1606
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mOEMModemStackController:Lcom/android/internal/telephony/ModemStackController;

    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->mOEMNetworkModeHandler:Lcom/android/internal/telephony/SubscriptionController$OEMNetworkModeHandler;

    const/16 v5, 0x66

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/telephony/ModemStackController;->OEMregisterForStackReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1607
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->waitModemStackReady_SubId:Ljava/lang/Object;

    goto :goto_0

    .line 1612
    .end local v1    # "ret":Z
    .end local v2    # "subinfo":Landroid/telephony/SubscriptionInfo;
    :cond_4
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SubscriptionController;->oem_setLTEandDds(II)V

    goto :goto_0

    .line 1615
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    goto :goto_0
.end method

.method public activateSubId(I)V
    .locals 3
    .param p1, "subId"    # I

    .prologue
    const/4 v2, 0x1

    .line 1965
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubState(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 1966
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activateSubId: subscription already active, subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1972
    :goto_0
    return-void

    .line 1970
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSlotId(I)I

    move-result v0

    .line 1971
    .local v0, "slotId":I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->getInstance()Lcom/android/internal/telephony/SubscriptionHelper;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/SubscriptionHelper;->setUiccSubscription(II)V

    goto :goto_0
.end method

.method public addSubInfoRecord(Ljava/lang/String;I)I
    .locals 22
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    .line 746
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[addSubInfoRecord]+ iccId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " slotId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 747
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionController;->enforceSubscriptionPermission()V

    .line 749
    if-nez p1, :cond_0

    .line 750
    const-string v3, "[addSubInfoRecord]- null iccId"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 751
    const/4 v3, -0x1

    .line 883
    :goto_0
    return v3

    .line 754
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v18

    .line 755
    .local v18, "subIds":[I
    if-eqz v18, :cond_1

    move-object/from16 v0, v18

    array-length v3, v0

    if-nez v3, :cond_2

    .line 757
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[addSubInfoRecord]- getSubId failed subIds == null || length == 0 subIds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 760
    const/4 v3, -0x1

    goto :goto_0

    .line 764
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v4, 0x0

    aget v4, v18, v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v15

    .line 766
    .local v15, "simCarrierName":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 767
    move-object v13, v15

    .line 771
    .local v13, "nameToSet":Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[addSubInfoRecord] sim name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 772
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[addSubInfoRecord] carrier name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 774
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 775
    .local v2, "resolver":Landroid/content/ContentResolver;
    sget-object v3, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "sim_id"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "name_source"

    aput-object v6, v4, v5

    const-string v5, "icc_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 780
    .local v10, "cursor":Landroid/database/Cursor;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionController;->getUnusedColor()I

    move-result v8

    .line 783
    .local v8, "color":I
    if-eqz v10, :cond_3

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_d

    .line 784
    :cond_3
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 785
    .local v20, "value":Landroid/content/ContentValues;
    const-string v3, "icc_id"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    const-string v3, "color"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 788
    const-string v3, "sim_id"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 789
    const-string v3, "display_name"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    const-string v3, "carrier_name"

    const-string v4, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    sget-object v3, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v19

    .line 792
    .local v19, "uri":Landroid/net/Uri;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[addSubInfoRecord] New record created: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 816
    .end local v19    # "uri":Landroid/net/Uri;
    :goto_2
    if-eqz v10, :cond_4

    .line 817
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 821
    :cond_4
    sget-object v3, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "sim_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 825
    if-eqz v10, :cond_a

    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 827
    :cond_5
    const-string v3, "_id"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 831
    .local v16, "subId":I
    sget-object v3, Lcom/android/internal/telephony/SubscriptionController;->mSlotIdxToSubId:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 832
    .local v9, "currentSubId":Ljava/lang/Integer;
    if-eqz v9, :cond_6

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-nez v3, :cond_12

    .line 839
    :cond_6
    sget-object v3, Lcom/android/internal/telephony/SubscriptionController;->mSlotIdxToSubId:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubInfoCountMax()I

    move-result v17

    .line 841
    .local v17, "subIdCountMax":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result v11

    .line 843
    .local v11, "defaultSubId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[addSubInfoRecord] mSlotIdxToSubId.size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/SubscriptionController;->mSlotIdxToSubId:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " slotId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " defaultSubId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " simCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 850
    invoke-static {v11}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_8

    .line 852
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultFallbackSubId(I)V

    .line 855
    :cond_8
    const/4 v3, 0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_9

    .line 857
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[addSubInfoRecord] one sim set defaults to subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 860
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDataSubId(I)V

    .line 861
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultSmsSubId(I)V

    .line 862
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(I)V

    .line 870
    .end local v11    # "defaultSubId":I
    .end local v17    # "subIdCountMax":I
    :cond_9
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[addSubInfoRecord] hashmap("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 871
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-nez v3, :cond_5

    .line 874
    .end local v9    # "currentSubId":Ljava/lang/Integer;
    .end local v16    # "subId":I
    :cond_a
    if-eqz v10, :cond_b

    .line 875
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 880
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionController;->updateAllDataConnectionTrackers()V

    .line 882
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[addSubInfoRecord]- info size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/SubscriptionController;->mSlotIdxToSubId:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 883
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 769
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v8    # "color":I
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v13    # "nameToSet":Ljava/lang/String;
    .end local v20    # "value":Landroid/content/ContentValues;
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CARD "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "nameToSet":Ljava/lang/String;
    goto/16 :goto_1

    .line 794
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v8    # "color":I
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :cond_d
    const/4 v3, 0x0

    :try_start_2
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 795
    .restart local v16    # "subId":I
    const/4 v3, 0x1

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 796
    .local v14, "oldSimInfoId":I
    const/4 v3, 0x2

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 797
    .local v12, "nameSource":I
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 799
    .restart local v20    # "value":Landroid/content/ContentValues;
    move/from16 v0, p2

    if-eq v0, v14, :cond_e

    .line 800
    const-string v3, "sim_id"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 803
    :cond_e
    const/4 v3, 0x2

    if-eq v12, v3, :cond_f

    .line 804
    const-string v3, "display_name"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    :cond_f
    invoke-virtual/range {v20 .. v20}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-lez v3, :cond_10

    .line 808
    sget-object v3, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 813
    :cond_10
    const-string v3, "[addSubInfoRecord] Record already exists"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 816
    .end local v12    # "nameSource":I
    .end local v14    # "oldSimInfoId":I
    .end local v16    # "subId":I
    .end local v20    # "value":Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    if-eqz v10, :cond_11

    .line 817
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_11
    throw v3

    .line 866
    .restart local v9    # "currentSubId":Ljava/lang/Integer;
    .restart local v16    # "subId":I
    .restart local v20    # "value":Landroid/content/ContentValues;
    :cond_12
    :try_start_3
    const-string v3, "[addSubInfoRecord] currentSubId != null && currentSubId is valid, IGNORE"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_3

    .line 874
    .end local v9    # "currentSubId":Ljava/lang/Integer;
    .end local v16    # "subId":I
    :catchall_1
    move-exception v3

    if-eqz v10, :cond_13

    .line 875
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_13
    throw v3
.end method

.method public clearDefaultsForInactiveSubIds()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 1828
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 1829
    .local v0, "records":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[clearDefaultsForInactiveSubIds] records: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1830
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->shouldDefaultBeCleared(Ljava/util/List;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1831
    const-string v1, "[clearDefaultsForInactiveSubIds] clearing default data sub id"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1832
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    .line 1834
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSmsSubId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->shouldDefaultBeCleared(Ljava/util/List;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1835
    const-string v1, "[clearDefaultsForInactiveSubIds] clearing default sms sub id"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1836
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultSmsSubId(I)V

    .line 1838
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultVoiceSubId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->shouldDefaultBeCleared(Ljava/util/List;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1839
    const-string v1, "[clearDefaultsForInactiveSubIds] clearing default voice sub id"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1842
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->OEMsetDefaultVoiceSubIdinDB(I)V

    .line 1846
    :cond_2
    return-void
.end method

.method public clearSubInfo()I
    .locals 3

    .prologue
    .line 1303
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->enforceSubscriptionPermission()V

    .line 1304
    const-string v1, "[clearSubInfo]+"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1306
    sget-object v1, Lcom/android/internal/telephony/SubscriptionController;->mSlotIdxToSubId:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 1308
    .local v0, "size":I
    if-nez v0, :cond_0

    .line 1309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[clearSubInfo]- no simInfo size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1310
    const/4 v0, 0x0

    .line 1315
    .end local v0    # "size":I
    :goto_0
    return v0

    .line 1313
    .restart local v0    # "size":I
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/SubscriptionController;->mSlotIdxToSubId:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[clearSubInfo]- clear size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deactivateSubId(I)V
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 1976
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubState(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 1977
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activateSubId: subscription already deactivated, subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1983
    :goto_0
    return-void

    .line 1981
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSlotId(I)I

    move-result v0

    .line 1982
    .local v0, "slotId":I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->getInstance()Lcom/android/internal/telephony/SubscriptionHelper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/SubscriptionHelper;->setUiccSubscription(II)V

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2343
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.DUMP"

    const-string v8, "Requires DUMP"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2345
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2347
    .local v4, "token":J
    :try_start_0
    const-string v6, "SubscriptionController:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2348
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " defaultSubId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2349
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " defaultDataSubId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2350
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " defaultVoiceSubId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultVoiceSubId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2351
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " defaultSmsSubId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSmsSubId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2353
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " defaultDataPhoneId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2355
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " defaultVoicePhoneId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2356
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " defaultSmsPhoneId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/SubscriptionManager;->getDefaultSmsPhoneId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2358
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2360
    sget-object v6, Lcom/android/internal/telephony/SubscriptionController;->mSlotIdxToSubId:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2361
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mSlotIdToSubIdMap["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]: subId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2395
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 2363
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2364
    const-string v6, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2366
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    .line 2367
    .local v3, "sirl":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v3, :cond_1

    .line 2368
    const-string v6, " ActiveSubInfoList:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2369
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 2370
    .local v0, "entry":Landroid/telephony/SubscriptionInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 2373
    .end local v0    # "entry":Landroid/telephony/SubscriptionInfo;
    :cond_1
    const-string v6, " ActiveSubInfoList: is null"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2375
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2376
    const-string v6, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2378
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getAllSubInfoList()Ljava/util/List;

    move-result-object v3

    .line 2379
    if-eqz v3, :cond_3

    .line 2380
    const-string v6, " AllSubInfoList:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2381
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 2382
    .restart local v0    # "entry":Landroid/telephony/SubscriptionInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 2385
    .end local v0    # "entry":Landroid/telephony/SubscriptionInfo;
    :cond_3
    const-string v6, " AllSubInfoList: is null"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2387
    :cond_4
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2388
    const-string v6, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2390
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionController;->mLocalLog:Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

    invoke-virtual {v6, p1, p2, p3}, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2391
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2392
    const-string v6, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2393
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2395
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2397
    return-void
.end method

.method public fetchOEMDefaultDataCardIccid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2420
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2421
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "oem_default_primary_iccid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public fetchOEMDefaultDataCardSlot()I
    .locals 3

    .prologue
    .line 2432
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2433
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "oem_default_primary_slot"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public fetchOEMDefaultSMSCardIccid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2456
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2457
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "oem_default_sms_iccid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public fetchOEMDefaultVoiceCardIccid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2444
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2445
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "oem_default_voice_iccid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getActivatedSubIdList()[I
    .locals 8

    .prologue
    .line 2326
    sget-object v6, Lcom/android/internal/telephony/SubscriptionController;->mSlotIdxToSubId:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 2327
    .local v3, "simInfoSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getActivatedSubIdList: simInfoSet="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 2329
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v6

    new-array v5, v6, [I

    .line 2330
    .local v5, "subIdArr":[I
    const/4 v1, 0x0

    .line 2331
    .local v1, "i":I
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2332
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2333
    .local v4, "sub":I
    aput v4, v5, v1

    .line 2334
    add-int/lit8 v1, v1, 0x1

    .line 2335
    goto :goto_0

    .line 2337
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v4    # "sub":I
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getActivatedSubIdList: X subIdArr.length="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 2338
    return-object v5
.end method

.method public getActiveSubIdList()[I
    .locals 8

    .prologue
    .line 1948
    sget-object v6, Lcom/android/internal/telephony/SubscriptionController;->mSlotIdxToSubId:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 1949
    .local v3, "simInfoSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getActiveSubIdList] simInfoSet="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1951
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v6

    new-array v5, v6, [I

    .line 1952
    .local v5, "subIdArr":[I
    const/4 v1, 0x0

    .line 1953
    .local v1, "i":I
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1954
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1955
    .local v4, "sub":I
    aput v4, v5, v1

    .line 1956
    add-int/lit8 v1, v1, 0x1

    .line 1957
    goto :goto_0

    .line 1959
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v4    # "sub":I
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getActiveSubIdList] X subIdArr.length="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1960
    return-object v5
.end method

.method public getActiveSubInfoCount()I
    .locals 3

    .prologue
    .line 691
    const-string v1, "[getActiveSubInfoCount]+"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 692
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 693
    .local v0, "records":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v0, :cond_0

    .line 694
    const-string v1, "[getActiveSubInfoCount] records null"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 695
    const/4 v1, 0x0

    .line 698
    :goto_0
    return v1

    .line 697
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getActiveSubInfoCount]- count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 698
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0
.end method

.method public getActiveSubInfoCountMax()I
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    return v0
.end method

.method public getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;
    .locals 6
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 544
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->enforceSubscriptionPermission()V

    .line 545
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->isSubInfoReady()Z

    move-result v4

    if-nez v4, :cond_1

    .line 546
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getSubInfoUsingSubIdx]- invalid subId or not ready = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    move-object v1, v3

    .line 563
    :goto_0
    return-object v1

    .line 550
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    .line 551
    .local v2, "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v2, :cond_3

    .line 552
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 553
    .local v1, "si":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    if-ne v4, p1, :cond_2

    .line 554
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getActiveSubInfoForSubscriber]+ subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " subInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 560
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "si":Landroid/telephony/SubscriptionInfo;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getActiveSubInfoForSubscriber]- subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " subList="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " subInfo=null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    move-object v1, v3

    .line 563
    goto :goto_0
.end method

.method public getActiveSubscriptionInfoForIccId(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;
    .locals 5
    .param p1, "iccId"    # Ljava/lang/String;

    .prologue
    .line 573
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->enforceSubscriptionPermission()V

    .line 575
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    .line 576
    .local v2, "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v2, :cond_1

    .line 577
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 578
    .local v1, "si":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 579
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getActiveSubInfoUsingIccId]+ iccId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " subInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 588
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "si":Landroid/telephony/SubscriptionInfo;
    :goto_0
    return-object v1

    .line 585
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getActiveSubInfoUsingIccId]+ iccId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " subList="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " subInfo=null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 588
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;
    .locals 5
    .param p1, "slotIdx"    # I

    .prologue
    .line 598
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->enforceSubscriptionPermission()V

    .line 600
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    .line 601
    .local v2, "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v2, :cond_2

    .line 602
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 603
    .local v1, "si":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 605
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getActiveSubscriptionInfoForSimSlotIndex]+ slotIdx="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 620
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "si":Landroid/telephony/SubscriptionInfo;
    :goto_0
    return-object v1

    .line 612
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getActiveSubscriptionInfoForSimSlotIndex]+ slotIdx="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " subId=null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 620
    .end local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 617
    :cond_2
    const-string v3, "[getActiveSubscriptionInfoForSimSlotIndex]+ subList=null"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getActiveSubscriptionInfoList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 651
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->enforceSubscriptionPermission()V

    .line 652
    const-string v2, "[getActiveSubInfoList]+"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 654
    const/4 v0, 0x0

    .line 656
    .local v0, "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->isSubInfoReady()Z

    move-result v2

    if-nez v2, :cond_0

    .line 657
    const-string v2, "[getActiveSubInfoList] Sub Controller not ready"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    move-object v1, v0

    .line 682
    .end local v0    # "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .local v1, "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :goto_0
    return-object v1

    .line 661
    .end local v1    # "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v0    # "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_0
    const-string v2, "sim_id>=0"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 662
    if-eqz v0, :cond_1

    .line 664
    new-instance v2, Lcom/android/internal/telephony/SubscriptionController$2;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/SubscriptionController$2;-><init>(Lcom/android/internal/telephony/SubscriptionController;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 677
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getActiveSubInfoList]- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " infos return"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    :goto_1
    move-object v1, v0

    .line 682
    .end local v0    # "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v1    # "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    goto :goto_0

    .line 679
    .end local v1    # "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v0    # "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_1
    const-string v2, "[getActiveSubInfoList]- no info return"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getAllSubInfoCount()I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 707
    const-string v0, "[getAllSubInfoCount]+"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 708
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->enforceSubscriptionPermission()V

    .line 710
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 713
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 714
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 715
    .local v6, "count":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getAllSubInfoCount]- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " SUB(s) in DB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 719
    if-eqz v7, :cond_0

    .line 720
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 725
    .end local v6    # "count":I
    :cond_0
    :goto_0
    return v6

    .line 719
    :cond_1
    if-eqz v7, :cond_2

    .line 720
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 723
    :cond_2
    const-string v0, "[getAllSubInfoCount]- no SUB in DB"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 725
    const/4 v6, 0x0

    goto :goto_0

    .line 719
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 720
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public getAllSubInfoList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 630
    const-string v1, "[getAllSubInfoList]+"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 631
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->enforceSubscriptionPermission()V

    .line 633
    const/4 v0, 0x0

    .line 634
    .local v0, "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-direct {p0, v2, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 635
    if-eqz v0, :cond_0

    .line 636
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getAllSubInfoList]- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " infos return"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 641
    :goto_0
    return-object v0

    .line 638
    :cond_0
    const-string v1, "[getAllSubInfoList]- no info return"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCurrentDds()I
    .locals 1

    .prologue
    .line 1516
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mScheduler:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->getCurrentDds()I

    move-result v0

    return v0
.end method

.method public getDefaultDataSubId()I
    .locals 4

    .prologue
    .line 1508
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "multi_sim_data_call"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1512
    .local v0, "subId":I
    return v0
.end method

.method public getDefaultSmsSubId()I
    .locals 4

    .prologue
    .line 1417
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "multi_sim_sms"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1421
    .local v0, "subId":I
    return v0
.end method

.method public getDefaultSubId()I
    .locals 4

    .prologue
    .line 1352
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120052

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1354
    .local v0, "isVoiceCapable":Z
    if-eqz v0, :cond_1

    .line 1355
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultVoiceSubId()I

    move-result v1

    .line 1361
    .local v1, "subId":I
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1362
    sget v1, Lcom/android/internal/telephony/SubscriptionController;->mDefaultFallbackSubId:I

    .line 1366
    :cond_0
    return v1

    .line 1358
    .end local v1    # "subId":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v1

    .restart local v1    # "subId":I
    goto :goto_0
.end method

.method public getDefaultVoiceSubId()I
    .locals 4

    .prologue
    .line 1472
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "multi_sim_voice_call"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1476
    .local v0, "subId":I
    return v0
.end method

.method public getDummySubIds(I)[I
    .locals 5
    .param p1, "slotIdx"    # I

    .prologue
    .line 1283
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubInfoCountMax()I

    move-result v2

    .line 1284
    .local v2, "numSubs":I
    if-lez v2, :cond_1

    .line 1285
    new-array v0, v2, [I

    .line 1286
    .local v0, "dummyValues":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1287
    const v3, 0x7ffffffb

    add-int/2addr v3, p1

    aput v3, v0, v1

    .line 1286
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1290
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDummySubIds: slotIdx="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " DummySubIds with each subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1295
    .end local v0    # "dummyValues":[I
    .end local v1    # "i":I
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getNwMode(I)I
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 1994
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 1995
    .local v0, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v0, :cond_0

    .line 1996
    iget v1, v0, Landroid/telephony/SubscriptionInfo;->mNwMode:I

    .line 1999
    :goto_0
    return v1

    .line 1998
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSubState: invalid subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->loge(Ljava/lang/String;)V

    .line 1999
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getOnDemandDataSubId()I
    .locals 1

    .prologue
    .line 2221
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getCurrentDds()I

    move-result v0

    return v0
.end method

.method public getPhoneId(I)I
    .locals 9
    .param p1, "subId"    # I

    .prologue
    const v8, 0x7ffffffb

    .line 1225
    const v6, 0x7fffffff

    if-ne p1, v6, :cond_0

    .line 1226
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result p1

    .line 1227
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getPhoneId] asked for default subId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1230
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1232
    const-string v6, "[getPhoneId]- invalid subId return=-1"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1238
    const/4 v2, 0x0

    .line 1269
    :goto_0
    return v2

    .line 1242
    :cond_1
    if-lt p1, v8, :cond_2

    .line 1243
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPhoneId,  received dummy subId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1244
    sub-int v2, p1, v8

    goto :goto_0

    .line 1247
    :cond_2
    sget-object v6, Lcom/android/internal/telephony/SubscriptionController;->mSlotIdxToSubId:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v4

    .line 1248
    .local v4, "size":I
    if-nez v4, :cond_3

    .line 1249
    sget v2, Lcom/android/internal/telephony/SubscriptionController;->mDefaultPhoneId:I

    .line 1250
    .local v2, "phoneId":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getPhoneId]- no sims, returning default phoneId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    goto :goto_0

    .line 1255
    .end local v2    # "phoneId":I
    :cond_3
    sget-object v6, Lcom/android/internal/telephony/SubscriptionController;->mSlotIdxToSubId:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1256
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1257
    .local v3, "sim":I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1259
    .local v5, "sub":I
    if-ne p1, v5, :cond_4

    .line 1260
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getPhoneId]- return ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    move v2, v3

    .line 1261
    goto :goto_0

    .line 1265
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v3    # "sim":I
    .end local v5    # "sub":I
    :cond_5
    sget v2, Lcom/android/internal/telephony/SubscriptionController;->mDefaultPhoneId:I

    .line 1267
    .restart local v2    # "phoneId":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getPhoneId]- subId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not found return default phoneId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getSimStateForSubscriber(I)I
    .locals 7
    .param p1, "subId"    # I

    .prologue
    .line 2283
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v3

    .line 2284
    .local v3, "phoneIdx":I
    if-gez v3, :cond_0

    .line 2285
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 2286
    .local v4, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    const-string v0, "invalid PhoneIdx"

    .line 2303
    .local v0, "err":Ljava/lang/String;
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSimStateForSubscriber: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " simState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ordinal="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 2305
    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v5

    return v5

    .line 2288
    .end local v0    # "err":Ljava/lang/String;
    .end local v4    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_0
    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 2289
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v2, :cond_1

    .line 2290
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 2291
    .restart local v4    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    const-string v0, "phone == null"

    .restart local v0    # "err":Ljava/lang/String;
    goto :goto_0

    .line 2293
    .end local v0    # "err":Ljava/lang/String;
    .end local v4    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_1
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    .line 2294
    .local v1, "icc":Lcom/android/internal/telephony/IccCard;
    if-nez v1, :cond_2

    .line 2295
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 2296
    .restart local v4    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    const-string v0, "icc == null"

    .restart local v0    # "err":Ljava/lang/String;
    goto :goto_0

    .line 2298
    .end local v0    # "err":Ljava/lang/String;
    .end local v4    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_2
    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v4

    .line 2299
    .restart local v4    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    const-string v0, ""

    .restart local v0    # "err":Ljava/lang/String;
    goto :goto_0
.end method

.method public getSlotId(I)I
    .locals 8
    .param p1, "subId"    # I

    .prologue
    const v7, 0x7ffffffb

    const/4 v6, -0x1

    .line 1125
    const v5, 0x7fffffff

    if-ne p1, v5, :cond_0

    .line 1126
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result p1

    .line 1128
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1129
    const-string v5, "[getSlotId]- subId invalid"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    move v2, v6

    .line 1158
    :goto_0
    return v2

    .line 1133
    :cond_1
    if-lt p1, v7, :cond_2

    .line 1134
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSlotId,  received dummy subId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1135
    sub-int v2, p1, v7

    goto :goto_0

    .line 1138
    :cond_2
    sget-object v5, Lcom/android/internal/telephony/SubscriptionController;->mSlotIdxToSubId:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v3

    .line 1140
    .local v3, "size":I
    if-nez v3, :cond_3

    .line 1142
    const-string v5, "[getSlotId]- size == 0, return SIM_NOT_INSERTED instead"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    move v2, v6

    .line 1143
    goto :goto_0

    .line 1146
    :cond_3
    sget-object v5, Lcom/android/internal/telephony/SubscriptionController;->mSlotIdxToSubId:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1147
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1148
    .local v2, "sim":I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1150
    .local v4, "sub":I
    if-ne p1, v4, :cond_4

    goto :goto_0

    .line 1157
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v2    # "sim":I
    .end local v4    # "sub":I
    :cond_5
    const-string v5, "[getSlotId]- return fail"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    move v2, v6

    .line 1158
    goto :goto_0
.end method

.method public getSubId(I)[I
    .locals 11
    .param p1, "slotIdx"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1174
    const v9, 0x7fffffff

    if-ne p1, v9, :cond_0

    .line 1175
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/SubscriptionController;->getSlotId(I)I

    move-result p1

    .line 1176
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[getSubId] map default slotIdx="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1180
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1181
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[getSubId]- invalid slotIdx="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1182
    const/4 v7, 0x0

    .line 1216
    :cond_1
    :goto_0
    return-object v7

    .line 1186
    :cond_2
    sget-object v9, Lcom/android/internal/telephony/SubscriptionController;->mSlotIdxToSubId:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v4

    .line 1187
    .local v4, "size":I
    if-nez v4, :cond_3

    .line 1189
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[getSubId]- mSlotIdToSubIdMap.size == 0, return DummySubIds slotIdx="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1192
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getDummySubIds(I)[I

    move-result-object v7

    goto :goto_0

    .line 1196
    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1197
    .local v8, "subIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v9, Lcom/android/internal/telephony/SubscriptionController;->mSlotIdxToSubId:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1198
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1199
    .local v5, "slot":I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1200
    .local v6, "sub":I
    if-ne p1, v5, :cond_4

    .line 1201
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1206
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v5    # "slot":I
    .end local v6    # "sub":I
    :cond_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1207
    .local v3, "numSubIds":I
    if-lez v3, :cond_6

    .line 1208
    new-array v7, v3, [I

    .line 1209
    .local v7, "subIdArr":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v3, :cond_1

    .line 1210
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v7, v1

    .line 1209
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1215
    .end local v1    # "i":I
    .end local v7    # "subIdArr":[I
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[getSubId]- numSubIds == 0, return DummySubIds slotIdx="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1216
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getDummySubIds(I)[I

    move-result-object v7

    goto/16 :goto_0
.end method

.method public getSubIdFromNetworkRequest(Landroid/net/NetworkRequest;)I
    .locals 5
    .param p1, "n"    # Landroid/net/NetworkRequest;

    .prologue
    .line 270
    if-nez p1, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v2

    .line 282
    :goto_0
    return v2

    .line 274
    :cond_0
    iget-object v3, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, "str":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .local v2, "subId":I
    goto :goto_0

    .line 277
    .end local v2    # "subId":I
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->loge(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v2

    .restart local v2    # "subId":I
    goto :goto_0
.end method

.method public getSubIdUsingPhoneId(I)I
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 1874
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v0

    .line 1875
    .local v0, "subIds":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 1876
    :cond_0
    const/4 v1, -0x1

    .line 1878
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    aget v1, v0, v1

    goto :goto_0
.end method

.method public getSubIdUsingSlotId(I)[I
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 1882
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getSubInfoUsingSlotIdWithCheck(IZ)Ljava/util/List;
    .locals 11
    .param p1, "slotId"    # I
    .param p2, "needCheck"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getSubInfoUsingSlotIdWithCheck]+ slotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1887
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->enforceSubscriptionPermission()V

    .line 1889
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 1890
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->getSlotId(I)I

    move-result p1

    .line 1892
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1893
    const-string v0, "[getSubInfoUsingSlotIdWithCheck]- invalid slotId"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1927
    :goto_0
    return-object v2

    .line 1897
    :cond_1
    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->isSubInfoReady()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1898
    const-string v0, "[getSubInfoUsingSlotIdWithCheck]- not ready"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 1902
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "sim_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1905
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 1907
    .local v8, "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v6, :cond_4

    move-object v9, v8

    .line 1908
    .end local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .local v9, "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :goto_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1909
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfoRecord(Landroid/database/Cursor;)Landroid/telephony/SubscriptionInfo;

    move-result-object v7

    .line 1910
    .local v7, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v7, :cond_8

    .line 1912
    if-nez v9, :cond_7

    .line 1914
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1916
    .end local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :goto_2
    :try_start_1
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_3
    move-object v9, v8

    .line 1918
    .end local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    goto :goto_1

    .end local v7    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_3
    move-object v8, v9

    .line 1921
    .end local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :cond_4
    if-eqz v6, :cond_5

    .line 1922
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1925
    :cond_5
    const-string v0, "[getSubInfoUsingSlotId]- null info return"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    move-object v2, v8

    .line 1927
    goto :goto_0

    .line 1921
    .end local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_0
    move-exception v0

    move-object v8, v9

    .end local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :goto_4
    if-eqz v6, :cond_6

    .line 1922
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 1921
    .restart local v7    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :catchall_1
    move-exception v0

    goto :goto_4

    .end local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :cond_7
    move-object v8, v9

    .end local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    goto :goto_2

    .end local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :cond_8
    move-object v8, v9

    .end local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    goto :goto_3
.end method

.method public getSubState(I)I
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 2028
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 2029
    .local v0, "subInfo":Landroid/telephony/SubscriptionInfo;
    const/4 v1, 0x0

    .line 2033
    .local v1, "subStatus":I
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    if-ltz v2, :cond_0

    .line 2034
    iget v1, v0, Landroid/telephony/SubscriptionInfo;->mStatus:I

    .line 2036
    :cond_0
    return v1
.end method

.method public isSMSPromptEnabled()Z
    .locals 5

    .prologue
    .line 1482
    const/4 v0, 0x0

    .line 1483
    .local v0, "prompt":Z
    const/4 v2, 0x0

    .line 1485
    .local v2, "value":I
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "multi_sim_sms_prompt"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1490
    :goto_0
    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 1493
    :goto_1
    return v0

    .line 1487
    :catch_0
    move-exception v1

    .line 1488
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "Settings Exception Reading Dual Sim SMS Prompt Values"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1490
    .end local v1    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public isVoicePromptEnabled()Z
    .locals 11

    .prologue
    const/4 v8, 0x1

    .line 2168
    const/4 v3, 0x0

    .line 2169
    .local v3, "prompt":Z
    const/4 v0, 0x0

    .line 2171
    .local v0, "activecount":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubInfoCountMax()I

    move-result v2

    .line 2172
    .local v2, "max_subs":I
    packed-switch v2, :pswitch_data_0

    .line 2207
    :goto_0
    return v3

    .line 2175
    :pswitch_0
    const/4 v3, 0x0

    .line 2176
    goto :goto_0

    .line 2179
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v6

    .line 2180
    .local v6, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v6, :cond_1

    .line 2181
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    .line 2182
    .local v5, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getStatus()I

    move-result v9

    if-ne v9, v8, :cond_0

    .line 2183
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2187
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_1
    if-gt v0, v8, :cond_2

    .line 2189
    const/4 v3, 0x0

    goto :goto_0

    .line 2193
    :cond_2
    const/4 v7, 0x0

    .line 2195
    .local v7, "value":I
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "multi_sim_voice_prompt"

    invoke-static {v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 2200
    :goto_2
    if-nez v7, :cond_3

    const/4 v3, 0x0

    :goto_3
    goto :goto_0

    .line 2197
    :catch_0
    move-exception v4

    .line 2198
    .local v4, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v9, "Settings Exception Reading Dual Sim Voice Prompt Values"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SubscriptionController;->loge(Ljava/lang/String;)V

    goto :goto_2

    .end local v4    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_3
    move v3, v8

    .line 2200
    goto :goto_3

    .line 2172
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public notifyOnDemandDataSubIdChanged(Landroid/net/NetworkRequest;)V
    .locals 3
    .param p1, "n"    # Landroid/net/NetworkRequest;

    .prologue
    .line 2233
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mOnDemandDdsLockNotificationRegistrants:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdFromNetworkRequest(Landroid/net/NetworkRequest;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SubscriptionController$OnDemandDdsLockNotifier;

    .line 2235
    .local v0, "notifier":Lcom/android/internal/telephony/SubscriptionController$OnDemandDdsLockNotifier;
    if-eqz v0, :cond_0

    .line 2236
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/SubscriptionController$OnDemandDdsLockNotifier;->notifyOnDemandDdsLockGranted(Landroid/net/NetworkRequest;)V

    .line 2241
    :goto_0
    return-void

    .line 2238
    :cond_0
    const-string v1, "No registrants for OnDemandDdsLockGranted event  and re-registrants"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 2239
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdFromNetworkRequest(Landroid/net/NetworkRequest;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->broadcastDefaultDataSubIdChanged(I)V

    goto :goto_0
.end method

.method public notifySubscriptionInfoChanged()V
    .locals 2

    .prologue
    .line 363
    const-string v1, "notifySubscriptionInfoChanged"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 377
    :goto_0
    return-void

    .line 366
    :cond_0
    const-string v1, "telephony.registry"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    .line 369
    .local v0, "tr":Lcom/android/internal/telephony/ITelephonyRegistry;
    :try_start_0
    const-string v1, "notifySubscriptionInfoChanged:"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 370
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifySubscriptionInfoChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->broadcastSimInfoContentChanged()V

    goto :goto_0

    .line 371
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public registerForOnDemandDdsLockNotification(ILcom/android/internal/telephony/SubscriptionController$OnDemandDdsLockNotifier;)V
    .locals 2
    .param p1, "clientSubId"    # I
    .param p2, "callback"    # Lcom/android/internal/telephony/SubscriptionController$OnDemandDdsLockNotifier;

    .prologue
    .line 2226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerForOnDemandDdsLockNotification for client="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 2227
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mOnDemandDdsLockNotificationRegistrants:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2229
    return-void
.end method

.method public removeStaleSubPreferences(Ljava/lang/String;)V
    .locals 7
    .param p1, "prefKey"    # Ljava/lang/String;

    .prologue
    .line 2247
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getAllSubInfoList()Ljava/util/List;

    move-result-object v3

    .line 2248
    .local v3, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2249
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 2250
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 2251
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 2254
    .end local v2    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_1
    return-void
.end method

.method public setCarrierText(Ljava/lang/String;I)I
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "subId"    # I

    .prologue
    .line 938
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setCarrierText]+ text:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " subId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 939
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->enforceSubscriptionPermission()V

    .line 941
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 942
    .local v1, "value":Landroid/content/ContentValues;
    const-string v2, "carrier_name"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 947
    .local v0, "result":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V

    .line 949
    return v0
.end method

.method public setDataRoaming(II)I
    .locals 6
    .param p1, "roaming"    # I
    .param p2, "subId"    # I

    .prologue
    .line 1073
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setDataRoaming]+ roaming:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " subId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1074
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->enforceSubscriptionPermission()V

    .line 1076
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SubscriptionController;->validateSubId(I)V

    .line 1077
    if-gez p1, :cond_0

    .line 1078
    const-string v2, "[setDataRoaming]- fail"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1079
    const/4 v0, -0x1

    .line 1090
    :goto_0
    return v0

    .line 1081
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1082
    .local v1, "value":Landroid/content/ContentValues;
    const-string v2, "data_roaming"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1083
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setDataRoaming]- roaming:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1085
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1088
    .local v0, "result":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V

    goto :goto_0
.end method

.method public setDataSubId(I)V
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 1678
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "multi_sim_data_call"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1680
    return-void
.end method

.method public setDefaultDataSubId(I)V
    .locals 6
    .param p1, "subId"    # I

    .prologue
    .line 1543
    const v2, 0x7fffffff

    if-ne p1, v2, :cond_0

    .line 1544
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "setDefaultDataSubId called with DEFAULT_SUB_ID"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1546
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setDefaultDataSubId] subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1551
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1552
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " call setDefaultDataSubId with invalid subid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionController;->loge(Ljava/lang/String;)V

    .line 1575
    :cond_1
    :goto_0
    return-void

    .line 1557
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController;->mDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    if-nez v2, :cond_3

    .line 1558
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionController;->mDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    .line 1559
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController;->mDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mDataConnectionHandler:Lcom/android/internal/telephony/SubscriptionController$DataConnectionHandler;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DctController;->registerForDefaultDataSwitchInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1563
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1564
    .local v0, "caller":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 1565
    .local v1, "current":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "caller pid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", phone pid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1566
    if-eq v0, v1, :cond_4

    .line 1568
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->do_oem_switch_dds(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1571
    const-string v2, "fallback to original set dds."

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionController;->loge(Ljava/lang/String;)V

    .line 1574
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController;->mDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->setDefaultDataSubId(I)V

    goto :goto_0
.end method

.method public setDefaultSmsSubId(I)V
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 1371
    const v1, 0x7fffffff

    if-ne p1, v1, :cond_0

    .line 1372
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "setDefaultSmsSubId called with DEFAULT_SUB_ID"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1374
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setDefaultSmsSubId] subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1375
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "multi_sim_sms"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1377
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->broadcastDefaultSmsSubIdChanged(I)V

    .line 1381
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 1382
    .local v0, "subinfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v0, :cond_1

    .line 1383
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->storeOEMDefaultSMSCardIccid(Ljava/lang/String;)V

    .line 1386
    :cond_1
    return-void
.end method

.method public setDefaultVoiceSubId(I)V
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 1426
    const v1, 0x7fffffff

    if-ne p1, v1, :cond_0

    .line 1427
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "setDefaultVoiceSubId called with DEFAULT_SUB_ID"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1429
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setDefaultVoiceSubId] subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1430
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "multi_sim_voice_call"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1432
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->broadcastDefaultVoiceSubIdChanged(I)V

    .line 1436
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 1437
    .local v0, "subinfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v0, :cond_1

    .line 1438
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->storeOEMDefaultVoiceCardIccid(Ljava/lang/String;)V

    .line 1441
    :cond_1
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;I)I
    .locals 2
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "subId"    # I

    .prologue
    .line 985
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDisplayNameUsingSrc(Ljava/lang/String;IJ)I

    move-result v0

    return v0
.end method

.method public setDisplayNameUsingSrc(Ljava/lang/String;IJ)I
    .locals 7
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .param p3, "nameSource"    # J

    .prologue
    .line 999
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setDisplayName]+  displayName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " subId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " nameSource:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1002
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->enforceSubscriptionPermission()V

    .line 1004
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SubscriptionController;->validateSubId(I)V

    .line 1006
    if-nez p1, :cond_1

    .line 1007
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    const v4, 0x104000e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1011
    .local v0, "nameToSet":Ljava/lang/String;
    :goto_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 1012
    .local v2, "value":Landroid/content/ContentValues;
    const-string v3, "display_name"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    const-wide/16 v4, 0x0

    cmp-long v3, p3, v4

    if-ltz v3, :cond_0

    .line 1014
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set nameSource="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1015
    const-string v3, "name_source"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1017
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setDisplayName]- mDisplayName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1019
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1022
    .local v1, "result":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V

    .line 1024
    return v1

    .line 1009
    .end local v0    # "nameToSet":Ljava/lang/String;
    .end local v1    # "result":I
    .end local v2    # "value":Landroid/content/ContentValues;
    :cond_1
    move-object v0, p1

    .restart local v0    # "nameToSet":Ljava/lang/String;
    goto :goto_0
.end method

.method public setDisplayNumber(Ljava/lang/String;I)I
    .locals 7
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "subId"    # I

    .prologue
    .line 1036
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setDisplayNumber]+ number:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " subId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1037
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->enforceSubscriptionPermission()V

    .line 1039
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SubscriptionController;->validateSubId(I)V

    .line 1041
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 1043
    .local v0, "phoneId":I
    if-eqz p1, :cond_0

    if-ltz v0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 1045
    :cond_0
    const-string v3, "[setDispalyNumber]- fail"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1046
    const/4 v1, -0x1

    .line 1061
    :goto_0
    return v1

    .line 1048
    :cond_1
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 1049
    .local v2, "value":Landroid/content/ContentValues;
    const-string v3, "number"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1058
    .local v1, "result":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setDisplayNumber]- number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " update result :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1059
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V

    goto :goto_0
.end method

.method public setIconTint(II)I
    .locals 6
    .param p1, "tint"    # I
    .param p2, "subId"    # I

    .prologue
    .line 960
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setIconTint]+ tint:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " subId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 961
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->enforceSubscriptionPermission()V

    .line 963
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SubscriptionController;->validateSubId(I)V

    .line 964
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 965
    .local v1, "value":Landroid/content/ContentValues;
    const-string v2, "color"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 966
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setIconTint]- tint:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 968
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 971
    .local v0, "result":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V

    .line 973
    return v0
.end method

.method public setMccMnc(Ljava/lang/String;I)I
    .locals 9
    .param p1, "mccMnc"    # Ljava/lang/String;
    .param p2, "subId"    # I

    .prologue
    .line 1100
    const/4 v1, 0x0

    .line 1101
    .local v1, "mcc":I
    const/4 v2, 0x0

    .line 1103
    .local v2, "mnc":I
    const/4 v5, 0x0

    const/4 v6, 0x3

    :try_start_0
    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1104
    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1108
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setMccMnc]+ mcc/mnc:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " subId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1109
    new-instance v4, Landroid/content/ContentValues;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 1110
    .local v4, "value":Landroid/content/ContentValues;
    const-string v5, "mcc"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1111
    const-string v5, "mnc"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1113
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1116
    .local v3, "result":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V

    .line 1118
    return v3

    .line 1105
    .end local v3    # "result":I
    .end local v4    # "value":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 1106
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setMccMnc] - couldn\'t parse mcc/mnc: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->loge(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setNwMode(II)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "nwMode"    # I

    .prologue
    .line 1986
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNwMode, nwMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1987
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1988
    .local v0, "value":Landroid/content/ContentValues;
    const-string v1, "network_mode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1989
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1991
    return-void
.end method

.method public setPlmnSpn(IZLjava/lang/String;ZLjava/lang/String;)Z
    .locals 7
    .param p1, "slotId"    # I
    .param p2, "showPlmn"    # Z
    .param p3, "plmn"    # Ljava/lang/String;
    .param p4, "showSpn"    # Z
    .param p5, "spn"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 896
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v3

    .line 897
    .local v3, "subIds":[I
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    sget-object v6, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    aget v5, v3, v4

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 905
    :cond_0
    const-string v5, "[setPlmnSpn] No valid subscription to store info"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 906
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V

    .line 925
    :goto_0
    return v4

    .line 909
    :cond_1
    const-string v0, ""

    .line 910
    .local v0, "carrierText":Ljava/lang/String;
    if-eqz p2, :cond_3

    .line 911
    move-object v0, p3

    .line 912
    if-eqz p4, :cond_2

    .line 914
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    const v5, 0x1040651

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 916
    .local v2, "separator":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 922
    .end local v2    # "separator":Ljava/lang/String;
    :cond_2
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v4, v3

    if-ge v1, v4, :cond_4

    .line 923
    aget v4, v3, v1

    invoke-virtual {p0, v0, v4}, Lcom/android/internal/telephony/SubscriptionController;->setCarrierText(Ljava/lang/String;I)I

    .line 922
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 919
    .end local v1    # "i":I
    :cond_3
    if-eqz p4, :cond_2

    .line 920
    move-object v0, p5

    goto :goto_1

    .line 925
    .restart local v1    # "i":I
    :cond_4
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public setSMSPromptEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1499
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 1500
    .local v0, "value":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "multi_sim_sms_prompt"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSMSPromptOption to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1503
    return-void

    .line 1499
    .end local v0    # "value":I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setSubState(II)I
    .locals 7
    .param p1, "subId"    # I
    .param p2, "subStatus"    # I

    .prologue
    .line 2005
    const/4 v1, 0x0

    .line 2006
    .local v1, "result":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSubState, subStatus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " subId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 2007
    invoke-static {}, Lcom/android/internal/telephony/ModemStackController;->getInstance()Lcom/android/internal/telephony/ModemStackController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/ModemStackController;->isStackReady()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2008
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 2009
    .local v2, "value":Landroid/content/ContentValues;
    const-string v3, "sub_state"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2010
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 2014
    .end local v2    # "value":Landroid/content/ContentValues;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2015
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "_id"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2016
    const-string v3, "columnName"

    const-string v4, "sub_state"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2017
    const-string v3, "intContent"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2018
    const-string v3, "stringContent"

    const-string v4, "None"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2019
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2020
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2021
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2023
    return v1
.end method

.method public setVoicePromptEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 2213
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 2214
    .local v0, "value":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "multi_sim_voice_prompt"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVoicePromptOption to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 2217
    return-void

    .line 2213
    .end local v0    # "value":I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public startOnDemandDataSubscriptionRequest(Landroid/net/NetworkRequest;)V
    .locals 2
    .param p1, "n"    # Landroid/net/NetworkRequest;

    .prologue
    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startOnDemandDataSubscriptionRequest = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mSchedulerAc:Lcom/android/internal/telephony/dataconnection/DdsSchedulerAc;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DdsSchedulerAc;->allocateDds(Landroid/net/NetworkRequest;)V

    .line 288
    return-void
.end method

.method public stopOnDemandDataSubscriptionRequest(Landroid/net/NetworkRequest;)V
    .locals 2
    .param p1, "n"    # Landroid/net/NetworkRequest;

    .prologue
    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopOnDemandDataSubscriptionRequest = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mSchedulerAc:Lcom/android/internal/telephony/dataconnection/DdsSchedulerAc;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DdsSchedulerAc;->freeDds(Landroid/net/NetworkRequest;)V

    .line 293
    return-void
.end method

.method public storeOEMDefaultDataCardIccid(Ljava/lang/String;)V
    .locals 3
    .param p1, "iccid"    # Ljava/lang/String;

    .prologue
    .line 2413
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2414
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2415
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "oem_default_primary_iccid"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2416
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2417
    return-void
.end method

.method public storeOEMDefaultDataCardSlot(I)V
    .locals 3
    .param p1, "slot"    # I

    .prologue
    .line 2425
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2426
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2427
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "oem_default_primary_slot"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2428
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2429
    return-void
.end method

.method public storeOEMDefaultSMSCardIccid(Ljava/lang/String;)V
    .locals 3
    .param p1, "iccid"    # Ljava/lang/String;

    .prologue
    .line 2449
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2450
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2451
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "oem_default_sms_iccid"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2452
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2453
    return-void
.end method

.method public storeOEMDefaultVoiceCardIccid(Ljava/lang/String;)V
    .locals 3
    .param p1, "iccid"    # Ljava/lang/String;

    .prologue
    .line 2437
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2438
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2439
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "oem_default_voice_iccid"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2440
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2441
    return-void
.end method

.method public updatePhonesAvailability([Lcom/android/internal/telephony/PhoneProxy;)V
    .locals 0
    .param p1, "phones"    # [Lcom/android/internal/telephony/PhoneProxy;

    .prologue
    .line 1940
    sput-object p1, Lcom/android/internal/telephony/SubscriptionController;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    .line 1941
    return-void
.end method

.method public updateUserPrefs(Z)V
    .locals 13
    .param p1, "setDds"    # Z

    .prologue
    .line 2042
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v10

    .line 2043
    .local v10, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v5, 0x0

    .line 2044
    .local v5, "mActCount":I
    const/4 v6, 0x0

    .line 2046
    .local v6, "mNextActivatedSub":Landroid/telephony/SubscriptionInfo;
    if-nez v10, :cond_1

    .line 2047
    sget v11, Lcom/android/internal/telephony/SubscriptionController;->mDefaultPhoneId:I

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/SubscriptionController;->getDummySubIds(I)[I

    move-result-object v3

    .line 2048
    .local v3, "dummySubId":[I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateUserPrefs: subscription are not avaiable dds = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " voice = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultVoiceSubId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " sms = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSmsSubId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " setDDs = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 2053
    const/4 v11, 0x0

    aget v11, v3, v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultFallbackSubId(I)V

    .line 2057
    const/4 v11, 0x0

    aget v11, v3, v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionController;->OEMsetDefaultSMSSubIdinDB(I)V

    .line 2058
    const/4 v11, 0x0

    aget v11, v3, v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionController;->OEMsetDefaultVoiceSubIdinDB(I)V

    .line 2062
    invoke-static {}, Lcom/android/internal/telephony/OemUtils;->isOemDataCardSelectionEnable()Z

    move-result v11

    if-nez v11, :cond_0

    .line 2063
    const/4 v11, 0x0

    aget v11, v3, v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/SubscriptionController;->setDataSubId(I)V

    .line 2163
    .end local v3    # "dummySubId":[I
    :cond_0
    :goto_0
    return-void

    .line 2070
    :cond_1
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/SubscriptionInfo;

    .line 2071
    .local v9, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/SubscriptionController;->getSubState(I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 2072
    add-int/lit8 v5, v5, 0x1

    .line 2073
    if-nez v6, :cond_2

    move-object v6, v9

    goto :goto_1

    .line 2077
    .end local v9    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateUserPrefs: active sub count = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " dds = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " voice = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultVoiceSubId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " sms = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSmsSubId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " setDDs = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 2081
    const/4 v11, 0x2

    if-ge v5, v11, :cond_4

    .line 2090
    :cond_4
    if-eqz v6, :cond_0

    .line 2092
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/SubscriptionController;->getSubState(I)I

    move-result v11

    if-nez v11, :cond_5

    .line 2093
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultFallbackSubId(I)V

    .line 2096
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v0

    .line 2097
    .local v0, "ddsSubId":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->getSubState(I)I

    move-result v1

    .line 2099
    .local v1, "ddsSubState":I
    if-nez p1, :cond_6

    if-nez v1, :cond_8

    .line 2100
    :cond_6
    if-nez v1, :cond_7

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 2104
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/OemUtils;->isOemDataCardSelectionEnable()Z

    move-result v11

    if-nez v11, :cond_8

    .line 2105
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    .line 2116
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultVoiceSubId()I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/SubscriptionController;->getSubState(I)I

    move-result v11

    if-eqz v11, :cond_9

    const/4 v11, 0x2

    if-lt v5, v11, :cond_c

    .line 2119
    :cond_9
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    .line 2122
    .local v2, "dest_subId":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->fetchOEMDefaultVoiceCardIccid()Ljava/lang/String;

    move-result-object v8

    .line 2123
    .local v8, "oem_default_voice_iccid":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b

    if-eqz v10, :cond_b

    .line 2124
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/SubscriptionInfo;

    .line 2125
    .restart local v9    # "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/SubscriptionController;->getSubState(I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_a

    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 2127
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "find sub info(id"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") match iccid in oem info "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 2129
    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    goto :goto_2

    .line 2134
    .end local v9    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_b
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionController;->OEMsetDefaultVoiceSubIdinDB(I)V

    .line 2139
    .end local v2    # "dest_subId":I
    .end local v8    # "oem_default_voice_iccid":Ljava/lang/String;
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSmsSubId()I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/SubscriptionController;->getSubState(I)I

    move-result v11

    if-eqz v11, :cond_d

    const/4 v11, 0x2

    if-lt v5, v11, :cond_10

    .line 2142
    :cond_d
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    .line 2145
    .restart local v2    # "dest_subId":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->fetchOEMDefaultSMSCardIccid()Ljava/lang/String;

    move-result-object v7

    .line 2146
    .local v7, "oem_default_sms_iccid":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_f

    if-eqz v10, :cond_f

    .line 2147
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_e
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/SubscriptionInfo;

    .line 2148
    .restart local v9    # "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/SubscriptionController;->getSubState(I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_e

    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 2150
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "find sms sub info(id"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") match iccid in oem info "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 2152
    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    goto :goto_3

    .line 2156
    .end local v9    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_f
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionController;->OEMsetDefaultSMSSubIdinDB(I)V

    .line 2159
    .end local v2    # "dest_subId":I
    .end local v7    # "oem_default_sms_iccid":Ljava/lang/String;
    :cond_10
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateUserPrefs: after currentDds = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " voice = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultVoiceSubId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " sms = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSmsSubId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " newDds = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
