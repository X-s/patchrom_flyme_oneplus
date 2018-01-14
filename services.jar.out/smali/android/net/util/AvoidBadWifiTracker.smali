.class public Landroid/net/util/AvoidBadWifiTracker;
.super Ljava/lang/Object;
.source "AvoidBadWifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/util/AvoidBadWifiTracker$-void__init__android_content_Context_ctx_android_os_Handler_handler_java_lang_Runnable_cb_LambdaImpl0;,
        Landroid/net/util/AvoidBadWifiTracker$SettingObserver;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private volatile mAvoidBadWifi:Z

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mReevaluateRunnable:Ljava/lang/Runnable;

.field private final mSettingObserver:Landroid/net/util/AvoidBadWifiTracker$SettingObserver;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/net/util/AvoidBadWifiTracker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Landroid/net/util/AvoidBadWifiTracker;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/net/util/AvoidBadWifiTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Landroid/net/util/AvoidBadWifiTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/util/AvoidBadWifiTracker;->TAG:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/net/util/AvoidBadWifiTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "cb"    # Ljava/lang/Runnable;

    .prologue
    const/4 v4, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/util/AvoidBadWifiTracker;->mAvoidBadWifi:Z

    .line 68
    iput-object p1, p0, Landroid/net/util/AvoidBadWifiTracker;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Landroid/net/util/AvoidBadWifiTracker;->mHandler:Landroid/os/Handler;

    .line 70
    new-instance v0, Landroid/net/util/AvoidBadWifiTracker$-void__init__android_content_Context_ctx_android_os_Handler_handler_java_lang_Runnable_cb_LambdaImpl0;

    invoke-direct {v0, p0, p3}, Landroid/net/util/AvoidBadWifiTracker$-void__init__android_content_Context_ctx_android_os_Handler_handler_java_lang_Runnable_cb_LambdaImpl0;-><init>(Landroid/net/util/AvoidBadWifiTracker;Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroid/net/util/AvoidBadWifiTracker;->mReevaluateRunnable:Ljava/lang/Runnable;

    .line 71
    new-instance v0, Landroid/net/util/AvoidBadWifiTracker$SettingObserver;

    invoke-direct {v0, p0}, Landroid/net/util/AvoidBadWifiTracker$SettingObserver;-><init>(Landroid/net/util/AvoidBadWifiTracker;)V

    iput-object v0, p0, Landroid/net/util/AvoidBadWifiTracker;->mSettingObserver:Landroid/net/util/AvoidBadWifiTracker$SettingObserver;

    .line 73
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 74
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Landroid/net/util/AvoidBadWifiTracker;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/net/util/AvoidBadWifiTracker$1;

    invoke-direct {v1, p0}, Landroid/net/util/AvoidBadWifiTracker$1;-><init>(Landroid/net/util/AvoidBadWifiTracker;)V

    .line 79
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    .line 75
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 81
    invoke-virtual {p0}, Landroid/net/util/AvoidBadWifiTracker;->update()Z

    .line 67
    return-void
.end method


# virtual methods
.method synthetic -android_net_util_AvoidBadWifiTracker_lambda$1(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "cb"    # Ljava/lang/Runnable;

    .prologue
    .line 70
    invoke-virtual {p0}, Landroid/net/util/AvoidBadWifiTracker;->update()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 0
    :cond_0
    return-void
.end method

.method public configRestrictsAvoidBadWifi()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 93
    iget-object v1, p0, Landroid/net/util/AvoidBadWifiTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public currentValue()Z
    .locals 2

    .prologue
    .line 85
    sget-object v0, Landroid/net/util/AvoidBadWifiTracker;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "force disable bad wifi tracker"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public getSettingsValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    iget-object v1, p0, Landroid/net/util/AvoidBadWifiTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 105
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "network_avoid_bad_wifi"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public reevaluate()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Landroid/net/util/AvoidBadWifiTracker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/util/AvoidBadWifiTracker;->mReevaluateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    return-void
.end method

.method public shouldNotifyWifiUnvalidated()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-virtual {p0}, Landroid/net/util/AvoidBadWifiTracker;->configRestrictsAvoidBadWifi()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/net/util/AvoidBadWifiTracker;->getSettingsValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public update()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 114
    const-string/jumbo v2, "1"

    invoke-virtual {p0}, Landroid/net/util/AvoidBadWifiTracker;->getSettingsValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 115
    .local v1, "settingAvoidBadWifi":Z
    iget-boolean v0, p0, Landroid/net/util/AvoidBadWifiTracker;->mAvoidBadWifi:Z

    .line 116
    .local v0, "prev":Z
    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/net/util/AvoidBadWifiTracker;->configRestrictsAvoidBadWifi()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    :goto_0
    iput-boolean v2, p0, Landroid/net/util/AvoidBadWifiTracker;->mAvoidBadWifi:Z

    .line 117
    iget-boolean v2, p0, Landroid/net/util/AvoidBadWifiTracker;->mAvoidBadWifi:Z

    if-eq v2, v0, :cond_1

    :goto_1
    return v3

    :cond_0
    move v2, v3

    .line 116
    goto :goto_0

    :cond_1
    move v3, v4

    .line 117
    goto :goto_1
.end method
