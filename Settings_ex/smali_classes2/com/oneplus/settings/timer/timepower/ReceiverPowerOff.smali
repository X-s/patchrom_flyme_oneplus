.class public Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;
.super Landroid/content/BroadcastReceiver;
.source "ReceiverPowerOff.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ReceiverPowerOff"

.field private static mIsCalling:Z

.field private static mIsPoweroff:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPowerOffPromptRunnable:Ljava/lang/Runnable;

.field private mPoweroffAction:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mPowerOffPromptRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get3(Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mPoweroffAction:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    sput-boolean v0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mIsPoweroff:Z

    .line 33
    sput-boolean v0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mIsCalling:Z

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mHandler:Landroid/os/Handler;

    .line 35
    iput-object v1, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mPoweroffAction:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mContext:Landroid/content/Context;

    .line 102
    new-instance v0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff$1;-><init>(Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;)V

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mPowerOffPromptRunnable:Ljava/lang/Runnable;

    .line 28
    return-void
.end method

.method private isUsingTheme(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 132
    const-string/jumbo v3, "oem_is_using_theme"

    .line 131
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private rememberShutdownRequestMissed(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 138
    const-string/jumbo v1, "oem_shutdown_request_missed"

    .line 139
    const/4 v2, 0x1

    .line 136
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 135
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "arg"    # Landroid/content/Intent;

    .prologue
    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 43
    return-void

    .line 46
    :cond_0
    const-string/jumbo v5, "com.android.settings_ex.Shutdown"

    .line 49
    .local v5, "poweroffAction":Ljava/lang/String;
    const-string/jumbo v7, "keyguard"

    .line 48
    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    .line 50
    .local v4, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 51
    const-string/jumbo v5, "com.android.settings_ex.ShutdownWhenLocked"

    .line 54
    :cond_1
    const-string/jumbo v7, "com.android.settings_ex.POWER_OFF"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 57
    .local v2, "currentTime":J
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "trigger_time"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 56
    sub-long v8, v2, v8

    .line 57
    const-wide/32 v10, 0xea60

    .line 56
    cmp-long v7, v8, v10

    if-ltz v7, :cond_2

    .line 58
    return-void

    .line 61
    :cond_2
    sget-boolean v7, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mIsCalling:Z

    if-eqz v7, :cond_3

    .line 62
    const/4 v7, 0x1

    sput-boolean v7, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mIsPoweroff:Z

    .line 63
    return-void

    .line 66
    :cond_3
    const-string/jumbo v7, "phone want to turn off now !"

    .line 67
    const/4 v8, 0x0

    .line 66
    invoke-static {p1, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 70
    invoke-direct {p0, p1}, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->isUsingTheme(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 71
    const-string/jumbo v7, "ReceiverPowerOff"

    .line 72
    const-string/jumbo v8, "time to shutdown when changing theme, so delay shutdown"

    .line 71
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-direct {p0, p1}, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->rememberShutdownRequestMissed(Landroid/content/Context;)V

    .line 74
    return-void

    .line 78
    :cond_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v7, 0x10000000

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 80
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 39
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "currentTime":J
    :cond_5
    :goto_0
    return-void

    .line 81
    :cond_6
    const-string/jumbo v7, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 82
    const-string/jumbo v7, "state"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 83
    .local v6, "state":Ljava/lang/String;
    sget-object v7, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 84
    sget-object v7, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    .line 83
    if-eqz v7, :cond_8

    .line 85
    :cond_7
    const/4 v7, 0x1

    sput-boolean v7, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mIsCalling:Z

    .line 88
    :cond_8
    sget-object v7, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 89
    const/4 v7, 0x0

    sput-boolean v7, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mIsCalling:Z

    .line 90
    sget-boolean v7, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mIsPoweroff:Z

    if-eqz v7, :cond_5

    .line 91
    const/4 v7, 0x0

    sput-boolean v7, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mIsPoweroff:Z

    .line 92
    iput-object p1, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mContext:Landroid/content/Context;

    .line 93
    iput-object v5, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mPoweroffAction:Ljava/lang/String;

    .line 94
    iget-object v7, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mPowerOffPromptRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 95
    iget-object v7, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/oneplus/settings/timer/timepower/ReceiverPowerOff;->mPowerOffPromptRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0x1f4

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
