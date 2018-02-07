.class public Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;
.super Landroid/app/Activity;
.source "OPPowerOffPromptActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$1;
    }
.end annotation


# static fields
.field private static final MSG_CANCEL:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "OPPowerOffPromptActivity"

.field private static final TYPE_NEGATIVE:I = 0x2

.field private static final TYPE_POSITIVE:I = 0x1


# instance fields
.field private alertDialog:Lcom/oneplus/settings/ui/OPTimerDialog;

.field private mHandler:Landroid/os/Handler;

.field private mLock:Landroid/os/PowerManager$WakeLock;

.field private mNegativeCount:I

.field private mPositiveCount:I

.field private mResume:Z

.field private mStatus:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private pm:Landroid/os/PowerManager;


# direct methods
.method static synthetic -get0(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Lcom/oneplus/settings/ui/OPTimerDialog;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/oneplus/settings/ui/OPTimerDialog;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mNegativeCount:I

    return v0
.end method

.method static synthetic -get3(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mPositiveCount:I

    return v0
.end method

.method static synthetic -get4(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mResume:Z

    return v0
.end method

.method static synthetic -get5(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mStatus:Z

    return v0
.end method

.method static synthetic -get6(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;Lcom/oneplus/settings/ui/OPTimerDialog;)Lcom/oneplus/settings/ui/OPTimerDialog;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/oneplus/settings/ui/OPTimerDialog;

    return-object p1
.end method

.method static synthetic -set1(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mNegativeCount:I

    return p1
.end method

.method static synthetic -set2(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mPositiveCount:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->cancel()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->showDialog(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->pm:Landroid/os/PowerManager;

    .line 30
    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    .line 32
    iput-boolean v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mStatus:Z

    .line 33
    iput-boolean v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mResume:Z

    .line 177
    const/16 v0, 0x3c

    iput v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mPositiveCount:I

    .line 178
    iput v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mNegativeCount:I

    .line 183
    new-instance v0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$1;-><init>(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)V

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mHandler:Landroid/os/Handler;

    .line 24
    return-void
.end method

.method private acquireWakeLock()V
    .locals 3

    .prologue
    .line 258
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 259
    const-string/jumbo v1, "power"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 263
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v1, "TimepowerWakeLock"

    .line 261
    const v2, 0x20000001

    .line 260
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 264
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 257
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    return-void
.end method

.method private cancel()V
    .locals 2

    .prologue
    .line 130
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.settings_ex.POWER_CANCEL_OP_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 133
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mStatus:Z

    .line 134
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-virtual {v1}, Lcom/oneplus/settings/ui/OPTimerDialog;->dismiss()V

    .line 136
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->finish()V

    .line 128
    return-void
.end method

.method private raiseScreenUp()V
    .locals 3

    .prologue
    .line 279
    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->pm:Landroid/os/PowerManager;

    .line 281
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->pm:Landroid/os/PowerManager;

    .line 283
    const-string/jumbo v1, "TimepowerWakeLock"

    .line 281
    const v2, 0x30000006

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    .line 284
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 285
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    .line 277
    return-void
.end method

.method private releaseWakeLock()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 270
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 272
    iput-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 269
    :cond_0
    return-void
.end method

.method private showDialog(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    :cond_0
    return-void

    .line 120
    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 121
    .local v0, "d":Landroid/app/AlertDialog;
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040104

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 122
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 123
    const v2, 0x1040131

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 124
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 125
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 116
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 156
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 161
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->releaseWakeLock()V

    .line 154
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 45
    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 46
    if-eqz p1, :cond_0

    .line 47
    const-string/jumbo v1, "time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mPositiveCount:I

    .line 51
    :cond_0
    const v0, 0x180480

    .line 55
    .local v0, "flags":I
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const-string/jumbo v1, "power"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->pm:Landroid/os/PowerManager;

    .line 61
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->raiseScreenUp()V

    .line 65
    new-instance v1, Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/ui/OPTimerDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/oneplus/settings/ui/OPTimerDialog;

    .line 67
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 68
    const v3, 0x7f0e0478

    .line 67
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ui/OPTimerDialog;->setTitle(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 70
    const v3, 0x7f0e030a

    .line 69
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    .line 70
    iget v4, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mPositiveCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 69
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ui/OPTimerDialog;->setMessage(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/oneplus/settings/ui/OPTimerDialog;

    .line 73
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 74
    const v3, 0x7f0e0479

    .line 73
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 75
    new-instance v3, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$2;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$2;-><init>(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)V

    .line 94
    const/16 v4, 0x3c

    .line 72
    invoke-virtual {v1, v2, v3, v4}, Lcom/oneplus/settings/ui/OPTimerDialog;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;I)V

    .line 96
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/oneplus/settings/ui/OPTimerDialog;

    .line 97
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 98
    const v3, 0x7f0e047a

    .line 97
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 99
    new-instance v3, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;-><init>(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)V

    .line 107
    const/16 v4, 0xa

    .line 96
    invoke-virtual {v1, v2, v3, v4}, Lcom/oneplus/settings/ui/OPTimerDialog;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;I)V

    .line 109
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-virtual {v1}, Lcom/oneplus/settings/ui/OPTimerDialog;->show()V

    .line 110
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/oneplus/settings/ui/OPTimerDialog;

    iget v2, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mPositiveCount:I

    const/4 v3, -0x1

    invoke-virtual {v1, v3, v2, v6}, Lcom/oneplus/settings/ui/OPTimerDialog;->setButtonType(IIZ)V

    .line 112
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 44
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 168
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 169
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mResume:Z

    .line 171
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/oneplus/settings/ui/OPTimerDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-virtual {v1}, Lcom/oneplus/settings/ui/OPTimerDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 167
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 39
    const-string/jumbo v0, "time"

    iget v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mPositiveCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 37
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mResume:Z

    .line 149
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->acquireWakeLock()V

    .line 141
    return-void
.end method
