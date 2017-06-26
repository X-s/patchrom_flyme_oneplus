.class public Lcom/oneplus/settings/opfinger/OPScreenListener;
.super Ljava/lang/Object;
.source "OPScreenListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/opfinger/OPScreenListener$1;,
        Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenStateListener;,
        Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenBroadcastReceiver;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mScreenReceiver:Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenBroadcastReceiver;

.field private mScreenStateListener:Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenStateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPScreenListener;->mContext:Landroid/content/Context;

    .line 16
    new-instance v0, Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenBroadcastReceiver;-><init>(Lcom/oneplus/settings/opfinger/OPScreenListener;Lcom/oneplus/settings/opfinger/OPScreenListener$1;)V

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPScreenListener;->mScreenReceiver:Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenBroadcastReceiver;

    .line 17
    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/settings/opfinger/OPScreenListener;)Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/opfinger/OPScreenListener;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPScreenListener;->mScreenStateListener:Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenStateListener;

    return-object v0
.end method

.method private getScreenState()V
    .locals 3

    .prologue
    .line 53
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPScreenListener;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 55
    .local v0, "manager":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPScreenListener;->mScreenStateListener:Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenStateListener;

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPScreenListener;->mScreenStateListener:Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenStateListener;

    invoke-interface {v1}, Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenStateListener;->onScreenOn()V

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPScreenListener;->mScreenStateListener:Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenStateListener;

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPScreenListener;->mScreenStateListener:Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenStateListener;

    invoke-interface {v1}, Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenStateListener;->onScreenOff()V

    goto :goto_0
.end method

.method private registerListener()V
    .locals 3

    .prologue
    .line 77
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 78
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPScreenListener;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/settings/opfinger/OPScreenListener;->mScreenReceiver:Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 82
    return-void
.end method


# virtual methods
.method public begin(Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenStateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenStateListener;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPScreenListener;->mScreenStateListener:Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenStateListener;

    .line 45
    invoke-direct {p0}, Lcom/oneplus/settings/opfinger/OPScreenListener;->registerListener()V

    .line 46
    invoke-direct {p0}, Lcom/oneplus/settings/opfinger/OPScreenListener;->getScreenState()V

    .line 47
    return-void
.end method

.method public unregisterListener()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPScreenListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPScreenListener;->mScreenReceiver:Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 71
    return-void
.end method
