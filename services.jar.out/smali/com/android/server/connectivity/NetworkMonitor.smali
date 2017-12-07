.class public Lcom/android/server/connectivity/NetworkMonitor;
.super Lcom/android/internal/util/StateMachine;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;,
        Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;,
        Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;,
        Lcom/android/server/connectivity/NetworkMonitor$DefaultState;,
        Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;,
        Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;,
        Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;
    }
.end annotation


# static fields
.field public static final ACTION_NETWORK_CONDITIONS_MEASURED:Ljava/lang/String; = "android.net.conn.NETWORK_CONDITIONS_MEASURED"

.field private static final BASE:I = 0x82000

.field private static final BLAME_FOR_EVALUATION_ATTEMPTS:I = 0x5

.field private static final CAPTIVE_PORTAL_REEVALUATE_DELAY_MS:I = 0x927c0

.field private static final CMD_CAPTIVE_PORTAL_APP_FINISHED:I = 0x82009

.field private static final CMD_CAPTIVE_PORTAL_RECHECK:I = 0x8200c

.field public static final CMD_FORCE_REEVALUATION:I = 0x82008

.field private static final CMD_LAUNCH_CAPTIVE_PORTAL_APP:I = 0x8200b

.field public static final CMD_NETWORK_CONNECTED:I = 0x82001

.field public static final CMD_NETWORK_DISCONNECTED:I = 0x82007

.field private static final CMD_REEVALUATE:I = 0x82006

.field private static final DBG:Z = false

.field private static final DEFAULT_CN_HTTP_URL:Ljava/lang/String; = "http://g.cn/generate_204"

.field private static final DEFAULT_FALLBACK_URL:Ljava/lang/String; = "http://www.google.com/gen_204"

.field private static final DEFAULT_HTTPS_URL:Ljava/lang/String; = "https://www.google.com/generate_204"

.field private static final DEFAULT_HTTP_URL:Ljava/lang/String; = "http://connectivitycheck.gstatic.com/generate_204"

.field private static final DEFAULT_USER_AGENT:Ljava/lang/String; = "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.82 Safari/537.36"

.field public static final EVENT_NETWORK_TESTED:I = 0x82002

.field public static final EVENT_PROVISIONING_NOTIFICATION:I = 0x8200a

.field public static final EXTRA_BSSID:Ljava/lang/String; = "extra_bssid"

.field public static final EXTRA_CELL_ID:Ljava/lang/String; = "extra_cellid"

.field public static final EXTRA_CONNECTIVITY_TYPE:Ljava/lang/String; = "extra_connectivity_type"

.field public static final EXTRA_IS_CAPTIVE_PORTAL:Ljava/lang/String; = "extra_is_captive_portal"

.field public static final EXTRA_NETWORK_TYPE:Ljava/lang/String; = "extra_network_type"

.field public static final EXTRA_REQUEST_TIMESTAMP_MS:Ljava/lang/String; = "extra_request_timestamp_ms"

.field public static final EXTRA_RESPONSE_RECEIVED:Ljava/lang/String; = "extra_response_received"

.field public static final EXTRA_RESPONSE_TIMESTAMP_MS:Ljava/lang/String; = "extra_response_timestamp_ms"

.field public static final EXTRA_SSID:Ljava/lang/String; = "extra_ssid"

.field private static final IGNORE_REEVALUATE_ATTEMPTS:I = 0x5

.field private static final INITIAL_REEVALUATE_DELAY_MS:I = 0x3e8

.field private static final INVALID_UID:I = -0x1

.field private static final MAX_REEVALUATE_DELAY_MS:I = 0x927c0

.field public static final NETWORK_TEST_RESULT_INVALID:I = 0x1

.field public static final NETWORK_TEST_RESULT_VALID:I = 0x0

.field private static final PERMISSION_ACCESS_NETWORK_CONDITIONS:Ljava/lang/String; = "android.permission.ACCESS_NETWORK_CONDITIONS"

.field private static final PROBE_TIMEOUT_MS:I = 0xbb8

.field private static final PROP_SIM_COUNTRY:Ljava/lang/String; = "gsm.sim.operator.iso-country"

.field private static final SOCKET_TIMEOUT_MS:I = 0x2710

.field private static final TAG:Ljava/lang/String;

.field private static mSucceedUrl:Ljava/lang/String;


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mCaptivePortalState:Lcom/android/internal/util/State;

.field private final mConnectivityServiceHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultRequest:Landroid/net/NetworkRequest;

.field private final mDefaultState:Lcom/android/internal/util/State;

.field private mDontDisplaySigninNotification:Z

.field private final mEvaluatingState:Lcom/android/internal/util/State;

.field private final mEvaluationTimer:Landroid/net/util/Stopwatch;

.field private mIsCaptivePortalCheckEnabled:Z

.field private mIsPortalNotificationEnabled:Z

.field private mLastPortalProbeResult:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

.field private mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

.field private final mMaybeNotifyState:Lcom/android/internal/util/State;

.field private final mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

.field private final mNetId:I

.field private final mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

.field private mReevaluateToken:I

.field private mRetryCount:I

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUidResponsibleForReeval:I

.field private mUseHttps:Z

.field private mUserDoesNotWant:Z

.field private final mValidatedState:Lcom/android/internal/util/State;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field public systemReady:Z

.field private final validationLogs:Landroid/util/LocalLog;


# direct methods
.method static synthetic -get0(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    return v0
.end method

.method static synthetic -get13(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I

    return v0
.end method

.method static synthetic -get14(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserDoesNotWant:Z

    return v0
.end method

.method static synthetic -get15(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/NetworkRequest;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultRequest:Landroid/net/NetworkRequest;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDontDisplaySigninNotification:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/util/Stopwatch;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluationTimer:Landroid/net/util/Stopwatch;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalCheckEnabled:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLastPortalProbeResult:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDontDisplaySigninNotification:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLastPortalProbeResult:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/connectivity/NetworkMonitor;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/connectivity/NetworkMonitor;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mRetryCount:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/connectivity/NetworkMonitor;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I

    return p1
.end method

.method static synthetic -set6(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUseHttps:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserDoesNotWant:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->isCountryChina()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/connectivity/NetworkMonitor;I)V
    .locals 0
    .param p1, "evtype"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->logNetworkEvent(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/connectivity/NetworkMonitor;I)V
    .locals 0
    .param p1, "evtype"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->maybeLogEvaluationResult(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/connectivity/NetworkMonitor;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor;->quit()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/connectivity/NetworkMonitor;I)V
    .locals 0
    .param p1, "what"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->removeMessages(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const-class v0, Lcom/android/server/connectivity/NetworkMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    .line 100
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/connectivity/NetworkMonitor;->mSucceedUrl:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "networkAgentInfo"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p4, "defaultRequest"    # Landroid/net/NetworkRequest;

    .prologue
    .line 253
    new-instance v5, Landroid/net/metrics/IpConnectivityLog;

    invoke-direct {v5}, Landroid/net/metrics/IpConnectivityLog;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/connectivity/NetworkMonitor;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;Landroid/net/metrics/IpConnectivityLog;)V

    .line 252
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;Landroid/net/metrics/IpConnectivityLog;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "networkAgentInfo"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p4, "defaultRequest"    # Landroid/net/NetworkRequest;
    .param p5, "logger"    # Landroid/net/metrics/IpConnectivityLog;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 203
    iput v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    .line 205
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I

    .line 225
    iput v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mRetryCount:I

    .line 226
    iput-boolean v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsPortalNotificationEnabled:Z

    .line 230
    iput-boolean v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserDoesNotWant:Z

    .line 232
    iput-boolean v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDontDisplaySigninNotification:Z

    .line 234
    iput-boolean v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    .line 236
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;

    invoke-direct {v0, p0, v4}, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$DefaultState;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    .line 237
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;

    invoke-direct {v0, p0, v4}, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;

    .line 238
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;

    invoke-direct {v0, p0, v4}, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    .line 239
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;

    invoke-direct {v0, p0, v4}, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;

    .line 240
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;

    invoke-direct {v0, p0, v4}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;

    .line 242
    iput-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    .line 244
    new-instance v0, Landroid/util/LocalLog;

    const/16 v3, 0x14

    invoke-direct {v0, v3}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->validationLogs:Landroid/util/LocalLog;

    .line 246
    new-instance v0, Landroid/net/util/Stopwatch;

    invoke-direct {v0}, Landroid/net/util/Stopwatch;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluationTimer:Landroid/net/util/Stopwatch;

    .line 249
    sget-object v0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->FAILED:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLastPortalProbeResult:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    .line 262
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    .line 263
    iput-object p5, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    .line 264
    iput-object p2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;

    .line 265
    iput-object p3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 266
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v0, v0, Landroid/net/Network;->netId:I

    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    .line 267
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 268
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 269
    const-string/jumbo v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    .line 270
    iput-object p4, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultRequest:Landroid/net/NetworkRequest;

    .line 272
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;)V

    .line 273
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 274
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 275
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 276
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 277
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->setInitialState(Lcom/android/internal/util/State;)V

    .line 279
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 280
    const-string/jumbo v3, "captive_portal_detection_enabled"

    .line 279
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalCheckEnabled:Z

    .line 281
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 282
    const-string/jumbo v3, "captive_portal_use_https"

    .line 281
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUseHttps:Z

    .line 285
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 286
    const-string/jumbo v3, "portal_notification_enable"

    .line 285
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsPortalNotificationEnabled:Z

    .line 288
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor;->start()V

    .line 258
    return-void

    :cond_0
    move v0, v2

    .line 279
    goto :goto_0

    :cond_1
    move v0, v2

    .line 281
    goto :goto_1

    :cond_2
    move v1, v2

    .line 285
    goto :goto_2
.end method

.method private static getCaptivePortalFallbackUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 677
    const-string/jumbo v0, "captive_portal_fallback_url"

    const-string/jumbo v1, "http://www.google.com/gen_204"

    .line 676
    invoke-static {p0, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCaptivePortalServerCnHttpUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 664
    const-string/jumbo v0, "captive_portal_cn_http_url"

    const-string/jumbo v1, "http://g.cn/generate_204"

    invoke-static {p0, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCaptivePortalServerGlobalHttpUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 672
    const-string/jumbo v0, "captive_portal_http_url"

    const-string/jumbo v1, "http://connectivitycheck.gstatic.com/generate_204"

    invoke-static {p0, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCaptivePortalServerHttpUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 659
    sget-object v0, Lcom/android/server/connectivity/NetworkMonitor;->mSucceedUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/connectivity/NetworkMonitor;->mSucceedUrl:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 660
    :cond_0
    const-string/jumbo v0, "captive_portal_http_url"

    const-string/jumbo v1, "http://connectivitycheck.gstatic.com/generate_204"

    invoke-static {p0, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getCaptivePortalServerHttpsUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 668
    const-string/jumbo v0, "captive_portal_https_url"

    const-string/jumbo v1, "https://www.google.com/generate_204"

    invoke-static {p0, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCaptivePortalUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 681
    const-string/jumbo v0, "captive_portal_user_agent"

    const-string/jumbo v1, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.82 Safari/537.36"

    invoke-static {p0, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "symbol"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 685
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 686
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "value":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/String;
    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method private isCountryChina()Z
    .locals 3

    .prologue
    .line 1005
    const-string/jumbo v1, "gsm.sim.operator.iso-country"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1006
    .local v0, "countryCode":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 1007
    const-string/jumbo v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 1006
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private logNetworkEvent(I)V
    .locals 3
    .param p1, "evtype"    # I

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    new-instance v1, Landroid/net/metrics/NetworkEvent;

    iget v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    invoke-direct {v1, v2, p1}, Landroid/net/metrics/NetworkEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/os/Parcelable;)V

    .line 1104
    return-void
.end method

.method private logValidationProbe(JII)V
    .locals 7
    .param p1, "durationMs"    # J
    .param p3, "probeType"    # I
    .param p4, "probeResult"    # I

    .prologue
    .line 1116
    iget-object v6, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    new-instance v0, Landroid/net/metrics/ValidationProbeEvent;

    iget v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/net/metrics/ValidationProbeEvent;-><init>(IJII)V

    invoke-virtual {v6, v0}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/os/Parcelable;)V

    .line 1115
    return-void
.end method

.method private makeURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1012
    if-eqz p1, :cond_0

    .line 1014
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1015
    :catch_0
    move-exception v0

    .line 1016
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1019
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :cond_0
    return-object v3
.end method

.method private maybeLogEvaluationResult(I)V
    .locals 6
    .param p1, "evtype"    # I

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluationTimer:Landroid/net/util/Stopwatch;

    invoke-virtual {v0}, Landroid/net/util/Stopwatch;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1110
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    new-instance v1, Landroid/net/metrics/NetworkEvent;

    iget v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluationTimer:Landroid/net/util/Stopwatch;

    invoke-virtual {v3}, Landroid/net/util/Stopwatch;->stop()J

    move-result-wide v4

    invoke-direct {v1, v2, p1, v4, v5}, Landroid/net/metrics/NetworkEvent;-><init>(IIJ)V

    invoke-virtual {v0, v1}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/os/Parcelable;)V

    .line 1111
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluationTimer:Landroid/net/util/Stopwatch;

    invoke-virtual {v0}, Landroid/net/util/Stopwatch;->reset()V

    .line 1108
    :cond_0
    return-void
.end method

.method private sendNetworkConditionsBroadcast(ZZJJ)V
    .locals 15
    .param p1, "responseReceived"    # Z
    .param p2, "isCaptivePortal"    # Z
    .param p3, "requestTimestampMs"    # J
    .param p5, "responseTimestampMs"    # J

    .prologue
    .line 1031
    iget-object v12, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 1032
    const-string/jumbo v13, "wifi_scan_always_enabled"

    const/4 v14, 0x0

    .line 1031
    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-nez v12, :cond_0

    .line 1033
    return-void

    .line 1036
    :cond_0
    iget-boolean v12, p0, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    if-nez v12, :cond_1

    return-void

    .line 1038
    :cond_1
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v12, "android.net.conn.NETWORK_CONDITIONS_MEASURED"

    invoke-direct {v10, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1039
    .local v10, "latencyBroadcast":Landroid/content/Intent;
    iget-object v12, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v12, v12, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getType()I

    move-result v12

    packed-switch v12, :pswitch_data_0

    .line 1090
    return-void

    .line 1041
    :pswitch_0
    iget-object v12, p0, Lcom/android/server/connectivity/NetworkMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v8

    .line 1042
    .local v8, "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v8, :cond_4

    .line 1050
    const-string/jumbo v12, "extra_ssid"

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1051
    const-string/jumbo v12, "extra_bssid"

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1092
    .end local v8    # "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_2
    const-string/jumbo v12, "extra_connectivity_type"

    iget-object v13, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v13, v13, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getType()I

    move-result v13

    invoke-virtual {v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1093
    const-string/jumbo v12, "extra_response_received"

    move/from16 v0, p1

    invoke-virtual {v10, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1094
    const-string/jumbo v12, "extra_request_timestamp_ms"

    move-wide/from16 v0, p3

    invoke-virtual {v10, v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1096
    if-eqz p1, :cond_3

    .line 1097
    const-string/jumbo v12, "extra_is_captive_portal"

    move/from16 v0, p2

    invoke-virtual {v10, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1098
    const-string/jumbo v12, "extra_response_timestamp_ms"

    move-wide/from16 v0, p5

    invoke-virtual {v10, v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1100
    :cond_3
    iget-object v12, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    sget-object v13, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 1101
    const-string/jumbo v14, "android.permission.ACCESS_NETWORK_CONDITIONS"

    .line 1100
    invoke-virtual {v12, v10, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1030
    return-void

    .line 1054
    .restart local v8    # "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_4
    return-void

    .line 1058
    .end local v8    # "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    :pswitch_1
    const-string/jumbo v12, "extra_network_type"

    iget-object v13, p0, Lcom/android/server/connectivity/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v13

    invoke-virtual {v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1059
    iget-object v12, p0, Lcom/android/server/connectivity/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v9

    .line 1060
    .local v9, "info":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    if-nez v9, :cond_5

    return-void

    .line 1061
    :cond_5
    const/4 v11, 0x0

    .line 1062
    .local v11, "numRegisteredCellInfo":I
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "cellInfo$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/CellInfo;

    .line 1063
    .local v6, "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v6}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1064
    add-int/lit8 v11, v11, 0x1

    .line 1065
    const/4 v12, 0x1

    if-le v11, v12, :cond_7

    .line 1066
    const-string/jumbo v12, "more than one registered CellInfo.  Can\'t tell which is active.  Bailing."

    invoke-virtual {p0, v12}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 1068
    return-void

    .line 1070
    :cond_7
    instance-of v12, v6, Landroid/telephony/CellInfoCdma;

    if-eqz v12, :cond_8

    .line 1071
    check-cast v6, Landroid/telephony/CellInfoCdma;

    .end local v6    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v6}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v2

    .line 1072
    .local v2, "cellId":Landroid/telephony/CellIdentityCdma;
    const-string/jumbo v12, "extra_cellid"

    invoke-virtual {v10, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 1073
    .end local v2    # "cellId":Landroid/telephony/CellIdentityCdma;
    .restart local v6    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_8
    instance-of v12, v6, Landroid/telephony/CellInfoGsm;

    if-eqz v12, :cond_9

    .line 1074
    check-cast v6, Landroid/telephony/CellInfoGsm;

    .end local v6    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v6}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v3

    .line 1075
    .local v3, "cellId":Landroid/telephony/CellIdentityGsm;
    const-string/jumbo v12, "extra_cellid"

    invoke-virtual {v10, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 1076
    .end local v3    # "cellId":Landroid/telephony/CellIdentityGsm;
    .restart local v6    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_9
    instance-of v12, v6, Landroid/telephony/CellInfoLte;

    if-eqz v12, :cond_a

    .line 1077
    check-cast v6, Landroid/telephony/CellInfoLte;

    .end local v6    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v6}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v4

    .line 1078
    .local v4, "cellId":Landroid/telephony/CellIdentityLte;
    const-string/jumbo v12, "extra_cellid"

    invoke-virtual {v10, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 1079
    .end local v4    # "cellId":Landroid/telephony/CellIdentityLte;
    .restart local v6    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_a
    instance-of v12, v6, Landroid/telephony/CellInfoWcdma;

    if-eqz v12, :cond_b

    .line 1080
    check-cast v6, Landroid/telephony/CellInfoWcdma;

    .end local v6    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v6}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v5

    .line 1081
    .local v5, "cellId":Landroid/telephony/CellIdentityWcdma;
    const-string/jumbo v12, "extra_cellid"

    invoke-virtual {v10, v12, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 1084
    .end local v5    # "cellId":Landroid/telephony/CellIdentityWcdma;
    .restart local v6    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_b
    return-void

    .line 1039
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sendParallelHttpProbes(Ljava/net/URL;Ljava/net/URL;Ljava/net/URL;Ljava/net/URL;)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    .locals 23
    .param p1, "httpsUrl"    # Ljava/net/URL;
    .param p2, "httpUrl"    # Ljava/net/URL;
    .param p3, "httpChinaUrl"    # Ljava/net/URL;
    .param p4, "fallbackUrl"    # Ljava/net/URL;

    .prologue
    .line 895
    if-nez p1, :cond_2

    const/16 v22, 0x2

    .line 896
    .local v22, "threadCount":I
    :goto_0
    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    move/from16 v0, v22

    invoke-direct {v8, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 946
    .local v8, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;

    const/4 v4, 0x0

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;-><init>(Lcom/android/server/connectivity/NetworkMonitor;ILjava/net/URL;Ljava/net/URL;Ljava/net/URL;Ljava/util/concurrent/CountDownLatch;)V

    .line 947
    .local v2, "httpsProbe":Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;
    new-instance v9, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;

    const/4 v11, 0x1

    move-object/from16 v10, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p3

    move-object/from16 v14, p2

    move-object v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;-><init>(Lcom/android/server/connectivity/NetworkMonitor;ILjava/net/URL;Ljava/net/URL;Ljava/net/URL;Ljava/util/concurrent/CountDownLatch;)V

    .line 948
    .local v9, "httpProbe":Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;
    new-instance v10, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;

    const/4 v12, 0x2

    move-object/from16 v11, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p3

    move-object/from16 v15, p2

    move-object/from16 v16, v8

    invoke-direct/range {v10 .. v16}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;-><init>(Lcom/android/server/connectivity/NetworkMonitor;ILjava/net/URL;Ljava/net/URL;Ljava/net/URL;Ljava/util/concurrent/CountDownLatch;)V

    .line 951
    .local v10, "httpChinaProbe":Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;
    if-eqz p1, :cond_0

    .line 952
    :try_start_0
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->start()V

    .line 954
    :cond_0
    invoke-virtual {v9}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->start()V

    .line 955
    invoke-virtual {v10}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->start()V

    .line 956
    const-wide/16 v4, 0xbb8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 962
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->result()Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    move-result-object v20

    .line 963
    .local v20, "httpsResult":Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    invoke-virtual {v9}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->result()Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    move-result-object v19

    .line 964
    .local v19, "httpResult":Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    invoke-virtual {v10}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->result()Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    move-result-object v18

    .line 967
    .local v18, "httpChinaResult":Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->isPortal()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 968
    :cond_1
    const-string/jumbo v3, "use g.cn result"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 969
    invoke-virtual/range {p3 .. p3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/server/connectivity/NetworkMonitor;->mSucceedUrl:Ljava/lang/String;

    .line 970
    return-object v18

    .line 895
    .end local v2    # "httpsProbe":Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;
    .end local v8    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v9    # "httpProbe":Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;
    .end local v10    # "httpChinaProbe":Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;
    .end local v18    # "httpChinaResult":Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    .end local v19    # "httpResult":Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    .end local v20    # "httpsResult":Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    .end local v22    # "threadCount":I
    :cond_2
    const/16 v22, 0x3

    .restart local v22    # "threadCount":I
    goto :goto_0

    .line 957
    .restart local v2    # "httpsProbe":Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;
    .restart local v8    # "latch":Ljava/util/concurrent/CountDownLatch;
    .restart local v9    # "httpProbe":Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;
    .restart local v10    # "httpChinaProbe":Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;
    :catch_0
    move-exception v17

    .line 958
    .local v17, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v3, "Error: probes wait interrupted!"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 959
    sget-object v3, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->FAILED:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    return-object v3

    .line 973
    .end local v17    # "e":Ljava/lang/InterruptedException;
    .restart local v18    # "httpChinaResult":Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    .restart local v19    # "httpResult":Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    .restart local v20    # "httpsResult":Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    :cond_3
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->isPortal()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 974
    const-string/jumbo v3, "use connectivitycheck.gstatic.com result"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 975
    invoke-virtual/range {p2 .. p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/server/connectivity/NetworkMonitor;->mSucceedUrl:Ljava/lang/String;

    .line 976
    return-object v19

    .line 979
    :cond_4
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->isPortal()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 980
    :cond_5
    const-string/jumbo v3, "use https result"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 981
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/server/connectivity/NetworkMonitor;->mSucceedUrl:Ljava/lang/String;

    .line 982
    return-object v20

    .line 985
    :cond_6
    if-eqz p4, :cond_7

    .line 987
    const/4 v3, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v3}, Lcom/android/server/connectivity/NetworkMonitor;->sendHttpProbe(Ljava/net/URL;I)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    move-result-object v21

    .line 988
    .local v21, "result":Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->isPortal()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 989
    invoke-virtual/range {p4 .. p4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/server/connectivity/NetworkMonitor;->mSucceedUrl:Ljava/lang/String;

    .line 990
    return-object v21

    .line 995
    .end local v21    # "result":Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    :cond_7
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1000
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->result()Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    move-result-object v3

    return-object v3

    .line 996
    :catch_1
    move-exception v17

    .line 997
    .restart local v17    # "e":Ljava/lang/InterruptedException;
    const-string/jumbo v3, "Error: https probe wait interrupted!"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 998
    sget-object v3, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->FAILED:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    return-object v3
.end method

.method private validationLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->validationLogs:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 296
    return-void
.end method


# virtual methods
.method public getValidationLogs()Landroid/util/LocalLog$ReadOnlyLocalLog;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->validationLogs:Landroid/util/LocalLog;

    invoke-virtual {v0}, Landroid/util/LocalLog;->readOnlyLocalLog()Landroid/util/LocalLog$ReadOnlyLocalLog;

    move-result-object v0

    return-object v0
.end method

.method protected isCaptivePortal()Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    .locals 33

    .prologue
    .line 692
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalCheckEnabled:Z

    if-nez v7, :cond_1

    .line 693
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/connectivity/NetworkMonitor;->mIsPortalNotificationEnabled:Z

    if-nez v7, :cond_0

    .line 694
    new-instance v7, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    const/16 v8, 0xcc

    invoke-direct {v7, v8}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;-><init>(I)V

    return-object v7

    .line 699
    :cond_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;

    .line 700
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    .line 699
    const v9, 0x82002

    .line 700
    const/16 v31, 0x0

    const/16 v32, 0x0

    .line 699
    move-object/from16 v0, p0

    move/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v9, v1, v8, v2}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 705
    :cond_1
    const/16 v26, 0x0

    .local v26, "pacUrl":Ljava/net/URL;
    const/16 v25, 0x0

    .local v25, "httpsUrl":Ljava/net/URL;
    const/16 v24, 0x0

    .local v24, "httpUrl":Ljava/net/URL;
    const/16 v21, 0x0

    .local v21, "fallbackUrl":Ljava/net/URL;
    const/16 v23, 0x0

    .line 724
    .local v23, "httpChinaUrl":Ljava/net/URL;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v7, v7, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v28

    .line 725
    .local v28, "proxyInfo":Landroid/net/ProxyInfo;
    if-eqz v28, :cond_2

    sget-object v7, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual/range {v28 .. v28}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 732
    .end local v26    # "pacUrl":Ljava/net/URL;
    :cond_2
    if-nez v26, :cond_8

    .line 733
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalServerHttpsUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v25

    .line 734
    .local v25, "httpsUrl":Ljava/net/URL;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalServerGlobalHttpUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v24

    .line 735
    .local v24, "httpUrl":Ljava/net/URL;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalServerCnHttpUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v23

    .line 736
    .local v23, "httpChinaUrl":Ljava/net/URL;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalFallbackUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v21

    .line 738
    .local v21, "fallbackUrl":Ljava/net/URL;
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    if-eqz v7, :cond_3

    .line 739
    if-eqz v24, :cond_3

    .line 740
    invoke-virtual/range {v24 .. v24}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "qualcomm"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 738
    if-eqz v7, :cond_3

    .line 741
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 742
    const/high16 v8, 0x50a0000

    .line 741
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 743
    .local v29, "res":Ljava/lang/String;
    if-nez v29, :cond_6

    const-string/jumbo v7, "http://connectivitycheck.gstatic.com/generate_204"

    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v24

    .line 744
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "replace qualcomm server to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v24 .. v24}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 747
    .end local v29    # "res":Ljava/lang/String;
    :cond_3
    if-eqz v24, :cond_4

    if-nez v25, :cond_7

    .line 748
    :cond_4
    sget-object v7, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->FAILED:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    return-object v7

    .line 726
    .local v21, "fallbackUrl":Ljava/net/URL;
    .local v23, "httpChinaUrl":Ljava/net/URL;
    .local v24, "httpUrl":Ljava/net/URL;
    .local v25, "httpsUrl":Ljava/net/URL;
    .restart local v26    # "pacUrl":Ljava/net/URL;
    :cond_5
    invoke-virtual/range {v28 .. v28}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v26

    .line 727
    .local v26, "pacUrl":Ljava/net/URL;
    if-nez v26, :cond_2

    .line 728
    sget-object v7, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->FAILED:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    return-object v7

    .line 743
    .end local v26    # "pacUrl":Ljava/net/URL;
    .local v21, "fallbackUrl":Ljava/net/URL;
    .local v23, "httpChinaUrl":Ljava/net/URL;
    .local v24, "httpUrl":Ljava/net/URL;
    .local v25, "httpsUrl":Ljava/net/URL;
    .restart local v29    # "res":Ljava/lang/String;
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "http://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/generate_204"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 747
    .end local v29    # "res":Ljava/lang/String;
    :cond_7
    if-eqz v23, :cond_4

    .line 752
    .end local v21    # "fallbackUrl":Ljava/net/URL;
    .end local v23    # "httpChinaUrl":Ljava/net/URL;
    .end local v24    # "httpUrl":Ljava/net/URL;
    .end local v25    # "httpsUrl":Ljava/net/URL;
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 757
    .local v10, "startTime":J
    const/16 v22, 0x0

    .line 758
    .local v22, "hostToResolve":Ljava/lang/String;
    if-eqz v26, :cond_a

    .line 759
    invoke-virtual/range {v26 .. v26}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v22

    .line 769
    .local v22, "hostToResolve":Ljava/lang/String;
    :goto_1
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 770
    const/4 v7, 0x0

    invoke-static {v7}, Landroid/net/metrics/ValidationProbeEvent;->getProbeName(I)Ljava/lang/String;

    move-result-object v27

    .line 771
    .local v27, "probeName":Ljava/lang/String;
    new-instance v7, Landroid/net/util/Stopwatch;

    invoke-direct {v7}, Landroid/net/util/Stopwatch;-><init>()V

    invoke-virtual {v7}, Landroid/net/util/Stopwatch;->start()Landroid/net/util/Stopwatch;

    move-result-object v19

    .line 775
    .local v19, "dnsTimer":Landroid/net/util/Stopwatch;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v7, v7, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v14

    .line 776
    .local v14, "addresses":[Ljava/net/InetAddress;
    const/16 v18, 0x1

    .line 777
    .local v18, "dnsResult":I
    invoke-virtual/range {v19 .. v19}, Landroid/net/util/Stopwatch;->stop()J

    move-result-wide v16

    .line 778
    .local v16, "dnsLatency":J
    new-instance v15, Ljava/lang/StringBuffer;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v15, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 779
    .local v15, "connectInfo":Ljava/lang/StringBuffer;
    const/4 v7, 0x0

    array-length v8, v14

    :goto_2
    if-ge v7, v8, :cond_d

    aget-object v6, v14, v7

    .line 780
    .local v6, "address":Ljava/net/InetAddress;
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 781
    array-length v9, v14

    add-int/lit8 v9, v9, -0x1

    aget-object v9, v14, v9

    if-eq v6, v9, :cond_9

    const-string/jumbo v9, ","

    invoke-virtual {v15, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 779
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 760
    .end local v6    # "address":Ljava/net/InetAddress;
    .end local v14    # "addresses":[Ljava/net/InetAddress;
    .end local v15    # "connectInfo":Ljava/lang/StringBuffer;
    .end local v16    # "dnsLatency":J
    .end local v18    # "dnsResult":I
    .end local v19    # "dnsTimer":Landroid/net/util/Stopwatch;
    .end local v27    # "probeName":Ljava/lang/String;
    .local v22, "hostToResolve":Ljava/lang/String;
    :cond_a
    if-eqz v28, :cond_b

    .line 761
    invoke-virtual/range {v28 .. v28}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v22

    .local v22, "hostToResolve":Ljava/lang/String;
    goto :goto_1

    .line 763
    .local v22, "hostToResolve":Ljava/lang/String;
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/NetworkMonitor;->isCountryChina()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 764
    invoke-virtual/range {v23 .. v23}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v22

    .local v22, "hostToResolve":Ljava/lang/String;
    goto :goto_1

    .line 766
    .local v22, "hostToResolve":Ljava/lang/String;
    :cond_c
    invoke-virtual/range {v24 .. v24}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v22

    .local v22, "hostToResolve":Ljava/lang/String;
    goto :goto_1

    .line 783
    .restart local v14    # "addresses":[Ljava/net/InetAddress;
    .restart local v15    # "connectInfo":Ljava/lang/StringBuffer;
    .restart local v16    # "dnsLatency":J
    .restart local v18    # "dnsResult":I
    .restart local v19    # "dnsTimer":Landroid/net/util/Stopwatch;
    .restart local v27    # "probeName":Ljava/lang/String;
    :cond_d
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " OK "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    .line 789
    .end local v14    # "addresses":[Ljava/net/InetAddress;
    .end local v15    # "connectInfo":Ljava/lang/StringBuffer;
    :goto_3
    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v7, v3}, Lcom/android/server/connectivity/NetworkMonitor;->logValidationProbe(JII)V

    .line 793
    .end local v16    # "dnsLatency":J
    .end local v18    # "dnsResult":I
    .end local v19    # "dnsTimer":Landroid/net/util/Stopwatch;
    .end local v27    # "probeName":Ljava/lang/String;
    :cond_e
    if-eqz v26, :cond_f

    .line 794
    const/4 v7, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v7}, Lcom/android/server/connectivity/NetworkMonitor;->sendHttpProbe(Ljava/net/URL;I)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    move-result-object v30

    .line 802
    .local v30, "result":Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 805
    .local v12, "endTime":J
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->isPortal()Z

    move-result v9

    .line 804
    const/4 v8, 0x1

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/server/connectivity/NetworkMonitor;->sendNetworkConditionsBroadcast(ZZJJ)V

    .line 808
    return-object v30

    .line 784
    .end local v12    # "endTime":J
    .end local v30    # "result":Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    .restart local v19    # "dnsTimer":Landroid/net/util/Stopwatch;
    .restart local v27    # "probeName":Ljava/lang/String;
    :catch_0
    move-exception v20

    .line 785
    .local v20, "e":Ljava/net/UnknownHostException;
    const/16 v18, 0x0

    .line 786
    .restart local v18    # "dnsResult":I
    invoke-virtual/range {v19 .. v19}, Landroid/net/util/Stopwatch;->stop()J

    move-result-wide v16

    .line 787
    .restart local v16    # "dnsLatency":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " FAIL "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    goto :goto_3

    .line 795
    .end local v16    # "dnsLatency":J
    .end local v18    # "dnsResult":I
    .end local v19    # "dnsTimer":Landroid/net/util/Stopwatch;
    .end local v20    # "e":Ljava/net/UnknownHostException;
    .end local v27    # "probeName":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/connectivity/NetworkMonitor;->mUseHttps:Z

    if-eqz v7, :cond_10

    .line 796
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    move-object/from16 v3, v23

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/connectivity/NetworkMonitor;->sendParallelHttpProbes(Ljava/net/URL;Ljava/net/URL;Ljava/net/URL;Ljava/net/URL;)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    move-result-object v30

    .restart local v30    # "result":Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    goto :goto_4

    .line 799
    .end local v30    # "result":Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    :cond_10
    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    move-object/from16 v3, v21

    invoke-direct {v0, v7, v1, v2, v3}, Lcom/android/server/connectivity/NetworkMonitor;->sendParallelHttpProbes(Ljava/net/URL;Ljava/net/URL;Ljava/net/URL;Ljava/net/URL;)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    move-result-object v30

    .restart local v30    # "result":Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    goto :goto_4
.end method

.method protected log(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 292
    return-void
.end method

.method protected sendHttpProbe(Ljava/net/URL;I)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    .locals 16
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "probeType"    # I

    .prologue
    .line 817
    const/4 v10, 0x0

    .line 818
    .local v10, "urlConnection":Ljava/net/HttpURLConnection;
    const/16 v3, 0x257

    .line 819
    .local v3, "httpResponseCode":I
    const/4 v5, 0x0

    .line 820
    .local v5, "redirectUrl":Ljava/lang/String;
    new-instance v12, Landroid/net/util/Stopwatch;

    invoke-direct {v12}, Landroid/net/util/Stopwatch;-><init>()V

    invoke-virtual {v12}, Landroid/net/util/Stopwatch;->start()Landroid/net/util/Stopwatch;

    move-result-object v4

    .line 822
    .local v4, "probeTimer":Landroid/net/util/Stopwatch;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v12, v12, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v10, v0

    .line 823
    .local v10, "urlConnection":Ljava/net/HttpURLConnection;
    const/4 v12, 0x3

    move/from16 v0, p2

    if-ne v0, v12, :cond_4

    const/4 v12, 0x1

    :goto_0
    invoke-virtual {v10, v12}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 824
    const/16 v12, 0x2710

    invoke-virtual {v10, v12}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 825
    const/16 v12, 0x2710

    invoke-virtual {v10, v12}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 826
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 827
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 828
    .local v11, "userAgent":Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 829
    const-string/jumbo v12, "User-Agent"

    invoke-virtual {v10, v12, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 835
    .local v6, "requestTimestamp":J
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 836
    const-string/jumbo v12, "location"

    invoke-virtual {v10, v12}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 839
    .local v5, "redirectUrl":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 841
    .local v8, "responseTimestamp":J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p2 .. p2}, Landroid/net/metrics/ValidationProbeEvent;->getProbeName(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 842
    const-string/jumbo v13, " time="

    .line 841
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 842
    sub-long v14, v8, v6

    .line 841
    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 842
    const-string/jumbo v13, "ms"

    .line 841
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 843
    const-string/jumbo v13, " ret="

    .line 841
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 844
    const-string/jumbo v13, " headers="

    .line 841
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 844
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v13

    .line 841
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 856
    const/16 v12, 0xc8

    if-ne v3, v12, :cond_1

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v12

    if-nez v12, :cond_1

    .line 857
    const-string/jumbo v12, "Empty 200 response interpreted as 204 response."

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 858
    const/16 v3, 0xcc

    .line 861
    :cond_1
    const/16 v12, 0xc8

    if-ne v3, v12, :cond_2

    const/4 v12, 0x3

    move/from16 v0, p2

    if-ne v0, v12, :cond_2

    .line 862
    const-string/jumbo v12, "PAC fetch 200 response interpreted as 204 response."

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 863
    const/16 v3, 0xcc

    .line 882
    :cond_2
    if-eqz v10, :cond_3

    .line 883
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 886
    .end local v5    # "redirectUrl":Ljava/lang/String;
    .end local v6    # "requestTimestamp":J
    .end local v8    # "responseTimestamp":J
    .end local v10    # "urlConnection":Ljava/net/HttpURLConnection;
    .end local v11    # "userAgent":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-virtual {v4}, Landroid/net/util/Stopwatch;->stop()J

    move-result-wide v12

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v12, v13, v1, v3}, Lcom/android/server/connectivity/NetworkMonitor;->logValidationProbe(JII)V

    .line 887
    new-instance v12, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v3, v5, v13}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v12

    .line 823
    .local v5, "redirectUrl":Ljava/lang/String;
    .restart local v10    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 865
    .end local v5    # "redirectUrl":Ljava/lang/String;
    .end local v10    # "urlConnection":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v2

    .line 866
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Probably not a portal: exception "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 867
    const/16 v12, 0x257

    if-ne v3, v12, :cond_5

    .line 871
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "CaptivePortal = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalCheckEnabled:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 872
    const-string/jumbo v13, ", PortalNotification = "

    .line 871
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 872
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/connectivity/NetworkMonitor;->mIsPortalNotificationEnabled:Z

    .line 871
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 873
    const-string/jumbo v13, ", mRetryCount = "

    .line 871
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 873
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/connectivity/NetworkMonitor;->mRetryCount:I

    .line 871
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 874
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalCheckEnabled:Z

    if-nez v12, :cond_5

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/connectivity/NetworkMonitor;->mIsPortalNotificationEnabled:Z

    if-eqz v12, :cond_5

    .line 875
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/connectivity/NetworkMonitor;->mRetryCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v13, 0x5

    if-lt v12, v13, :cond_5

    .line 876
    const/16 v3, 0xcc

    .line 882
    :cond_5
    if-eqz v10, :cond_3

    .line 883
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_1

    .line 881
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    .line 882
    if-eqz v10, :cond_6

    .line 883
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 881
    :cond_6
    throw v12
.end method
