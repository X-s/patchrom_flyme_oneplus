.class public Lcom/android/settings_ex/timer/timepower/ReceiverPowerOff;
.super Landroid/content/BroadcastReceiver;
.source "ReceiverPowerOff.java"


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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    sput-boolean v0, Lcom/android/settings_ex/timer/timepower/ReceiverPowerOff;->mIsPoweroff:Z

    .line 33
    sput-boolean v0, Lcom/android/settings_ex/timer/timepower/ReceiverPowerOff;->mIsCalling:Z

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

    iput-object v0, p0, Lcom/android/settings_ex/timer/timepower/ReceiverPowerOff;->mHandler:Landroid/os/Handler;

    .line 35
    iput-object v1, p0, Lcom/android/settings_ex/timer/timepower/ReceiverPowerOff;->mPoweroffAction:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/android/settings_ex/timer/timepower/ReceiverPowerOff;->mContext:Landroid/content/Context;

    .line 99
    new-instance v0, Lcom/android/settings_ex/timer/timepower/ReceiverPowerOff$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/timer/timepower/ReceiverPowerOff$1;-><init>(Lcom/android/settings_ex/timer/timepower/ReceiverPowerOff;)V

    iput-object v0, p0, Lcom/android/settings_ex/timer/timepower/ReceiverPowerOff;->mPowerOffPromptRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/timer/timepower/ReceiverPowerOff;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/timer/timepower/ReceiverPowerOff;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings_ex/timer/timepower/ReceiverPowerOff;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/timer/timepower/ReceiverPowerOff;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/timer/timepower/ReceiverPowerOff;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings_ex/timer/timepower/ReceiverPowerOff;->mPoweroffAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/timer/timepower/ReceiverPowerOff;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/timer/timepower/ReceiverPowerOff;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings_ex/timer/timepower/ReceiverPowerOff;->mPowerOffPromptRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/timer/timepower/ReceiverPowerOff;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/timer/timepower/ReceiverPowerOff;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings_ex/timer/timepower/ReceiverPowerOff;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private isUsingTheme(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_is_using_theme"

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
    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_shutdown_request_missed"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 132
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
    if-nez v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    const-string v5, "com.android.settings_ex.Shutdown"

    .line 48
    .local v5, "poweroffAction":Ljava/lang/String;
    const-string v7, "keyguard"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    .line 50
    .local v4, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 51
    const-string v5, "com.android.settings_ex.ShutdownWhenLocked"

    .line 54
    :cond_2
    const-string v7, "com.android.settings_ex.POWER_OFF"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 56
    .local v2, "currentTime":J
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "trigger_time"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    sub-long v8, v2, v8

    const-wide/32 v10, 0xea60

    cmp-long v7, v8, v10

    if-gez v7, :cond_0

    .line 61
    sget-boolean v7, Lcom/android/settings_ex/timer/timepower/ReceiverPowerOff;->mIsCalling:Z

    if-eqz v7, :cond_3

    .line 62
    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/settings_ex/timer/timepower/ReceiverPowerOff;->mIsPoweroff:Z

    goto :goto_0

    .line 66
    :cond_3
    const-string v7, "phone want to turn off now !"

    const/4 v8, 0x0

    invoke-static {p1, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings_ex/timer/timepower/ReceiverPowerOff;->isUsingTheme(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 70
    const-string v7, "ReceiverPowerOff"

    const-string v8, "time to shutdown when changing theme, so delay shutdown"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings_ex/timer/timepower/ReceiverPowerOff;->rememberShutdownRequestMissed(Landroid/content/Context;)V

    goto :goto_0

    .line 76
    :cond_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v7, 0x10000000

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 78
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 79
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "currentTime":J
    :cond_5
    const-string v7, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 80
    const-string v7, "state"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 81
    .local v6, "state":Ljava/lang/String;
    sget-object v7, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    sget-object v7, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 83
    :cond_6
    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/settings_ex/timer/timepower/ReceiverPowerOff;->mIsCalling:Z

    .line 86
    :cond_7
    sget-object v7, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 87
    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/settings_ex/timer/timepower/ReceiverPowerOff;->mIsCalling:Z

    .line 88
    sget-boolean v7, Lcom/android/settings_ex/timer/timepower/ReceiverPowerOff;->mIsPoweroff:Z

    if-eqz v7, :cond_0

    .line 89
    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/settings_ex/timer/timepower/ReceiverPowerOff;->mIsPoweroff:Z

    .line 90
    iput-object p1, p0, Lcom/android/settings_ex/timer/timepower/ReceiverPowerOff;->mContext:Landroid/content/Context;

    .line 91
    iput-object v5, p0, Lcom/android/settings_ex/timer/timepower/ReceiverPowerOff;->mPoweroffAction:Ljava/lang/String;

    .line 92
    iget-object v7, p0, Lcom/android/settings_ex/timer/timepower/ReceiverPowerOff;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/settings_ex/timer/timepower/ReceiverPowerOff;->mPowerOffPromptRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 93
    iget-object v7, p0, Lcom/android/settings_ex/timer/timepower/ReceiverPowerOff;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/settings_ex/timer/timepower/ReceiverPowerOff;->mPowerOffPromptRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0x1f4

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
