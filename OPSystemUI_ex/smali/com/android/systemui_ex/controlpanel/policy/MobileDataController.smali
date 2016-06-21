.class public Lcom/android/systemui_ex/controlpanel/policy/MobileDataController;
.super Ljava/lang/Object;
.source "MobileDataController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/controlpanel/policy/MobileDataController$Callback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final PERIOD_BUILDER:Ljava/lang/StringBuilder;

.field private static final PERIOD_FORMATTER:Ljava/util/Formatter;


# instance fields
.field private mCallback:Lcom/android/systemui_ex/controlpanel/policy/MobileDataController$Callback;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private final mStatsService:Landroid/net/INetworkStatsService;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    const-string v0, "MobileDataController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui_ex/controlpanel/policy/MobileDataController;->DEBUG:Z

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/systemui_ex/controlpanel/policy/MobileDataController;->PERIOD_BUILDER:Ljava/lang/StringBuilder;

    .line 53
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/systemui_ex/controlpanel/policy/MobileDataController;->PERIOD_BUILDER:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/systemui_ex/controlpanel/policy/MobileDataController;->PERIOD_FORMATTER:Ljava/util/Formatter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/policy/MobileDataController;->mContext:Landroid/content/Context;

    .line 67
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/MobileDataController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 68
    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/MobileDataController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 69
    const-string v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/MobileDataController;->mStatsService:Landroid/net/INetworkStatsService;

    .line 71
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/MobileDataController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/MobileDataController;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 72
    return-void
.end method


# virtual methods
.method public setCallback(Lcom/android/systemui_ex/controlpanel/policy/MobileDataController$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui_ex/controlpanel/policy/MobileDataController$Callback;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/policy/MobileDataController;->mCallback:Lcom/android/systemui_ex/controlpanel/policy/MobileDataController$Callback;

    .line 89
    return-void
.end method
