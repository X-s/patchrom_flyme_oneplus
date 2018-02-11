.class public Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "PowerOffPromptActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity$1;,
        Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity$2;,
        Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity$3;,
        Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity$NewStylePowerOffPromptActivity;
    }
.end annotation


# static fields
.field static final ACTION_TIMER_SHUTDOWN:Ljava/lang/String; = "com.android.settings_ex.Shutdown"

.field static final ACTION_TIMER_SHUTDOWN_LOCKED:Ljava/lang/String; = "com.android.settings_ex.ShutdownWhenLocked"

.field private static final EXTRA_IS_MISSED_REQUEST:Ljava/lang/String; = "isMissedRequest"

.field private static final MSG_SHUTDOWN_NOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PowerOffPromptActivity"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIsCurrentLocked:Z

.field private mLock:Landroid/os/PowerManager$WakeLock;

.field private final mMoveToFrontRunnable:Ljava/lang/Runnable;

.field private mStateReceiver:Landroid/content/BroadcastReceiver;

.field private pm:Landroid/os/PowerManager;


# direct methods
.method static synthetic -get0(Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->beginShutdown()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->pm:Landroid/os/PowerManager;

    .line 45
    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mIsCurrentLocked:Z

    .line 52
    new-instance v0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity$1;-><init>(Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;)V

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mHandler:Landroid/os/Handler;

    .line 64
    new-instance v0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity$2;-><init>(Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;)V

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 203
    new-instance v0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity$3;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity$3;-><init>(Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;)V

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mMoveToFrontRunnable:Ljava/lang/Runnable;

    .line 34
    return-void
.end method

.method private beginShutdown()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 169
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 171
    iput-object v2, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->pm:Landroid/os/PowerManager;

    .line 175
    const-string/jumbo v2, "TimepowerWakeLock"

    .line 174
    const v3, 0x1000000a

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    .line 176
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 178
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 180
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 181
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->startActivity(Landroid/content/Intent;)V

    .line 182
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->finish()V

    .line 168
    return-void
.end method

.method private lightScreen()V
    .locals 4

    .prologue
    .line 221
    const v0, 0x780480

    .line 227
    .local v0, "flags":I
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    .line 228
    const/16 v2, 0x7d4

    .line 227
    invoke-direct {v1, v2, v0}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 229
    .local v1, "win_params":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 230
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 232
    iget-boolean v2, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mIsCurrentLocked:Z

    if-eqz v2, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 234
    const v3, 0x106000d

    .line 233
    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 220
    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .prologue
    .line 196
    const-string/jumbo v0, "PowerOffPromptActivity"

    const-string/jumbo v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mMoveToFrontRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 198
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mMoveToFrontRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 195
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    .line 127
    packed-switch p2, :pswitch_data_0

    .line 126
    :goto_0
    return-void

    .line 129
    :pswitch_0
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->beginShutdown()V

    goto :goto_0

    .line 132
    :pswitch_1
    const/4 v1, 0x0

    .line 134
    .local v1, "isMissedRequest":Z
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 135
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "isMissedRequest"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    const-string/jumbo v2, "isMissedRequest"

    .line 136
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 140
    .end local v1    # "isMissedRequest":Z
    :cond_0
    if-eqz v1, :cond_1

    .line 141
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 143
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->finish()V

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 83
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "com.android.settings_ex.Shutdown"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 87
    iput-boolean v6, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mIsCurrentLocked:Z

    .line 92
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mIsCurrentLocked:Z

    if-eqz v3, :cond_1

    .line 93
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->lightScreen()V

    .line 96
    :cond_1
    const-string/jumbo v3, "power"

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->pm:Landroid/os/PowerManager;

    .line 100
    iget-object v3, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->pm:Landroid/os/PowerManager;

    .line 102
    const-string/jumbo v4, "TimepowerWakeLock"

    .line 100
    const v5, 0x30000001

    invoke-virtual {v3, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    .line 103
    iget-object v3, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 105
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 106
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.PHONE_STATE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    iget-object v3, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 109
    iget-object v2, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 110
    .local v2, "params":Lcom/android/internal/app/AlertController$AlertParams;
    const-string/jumbo v3, "Power off"

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 111
    const v3, 0x104000a

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 112
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 113
    const/high16 v3, 0x1040000

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 114
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 115
    const v3, 0x7f0e04a6

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 117
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->setupAlert()V

    .line 119
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 121
    iget-object v3, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mHandler:Landroid/os/Handler;

    .line 122
    const-wide/32 v4, 0xea60

    .line 121
    invoke-virtual {v3, v7, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 82
    return-void

    .line 88
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "params":Lcom/android/internal/app/AlertController$AlertParams;
    :cond_2
    const-string/jumbo v3, "com.android.settings_ex.ShutdownWhenLocked"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    iput-boolean v7, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mIsCurrentLocked:Z

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 151
    const-string/jumbo v0, "PowerOffPromptActivity"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 153
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.settings_ex.SET_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 155
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 156
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mMoveToFrontRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 158
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 160
    iput-object v2, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 150
    :cond_1
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 4

    .prologue
    .line 187
    const-string/jumbo v0, "PowerOffPromptActivity"

    const-string/jumbo v1, "onUserLeaveHint"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onUserLeaveHint()V

    .line 190
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mMoveToFrontRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 191
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->mMoveToFrontRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 186
    return-void
.end method
