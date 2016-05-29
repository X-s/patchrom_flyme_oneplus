.class public Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;
.super Landroid/app/Activity;
.source "OPPowerOffPromptActivity.java"


# static fields
.field private static final MSG_CANCEL:I = 0x3e8

.field private static final TYPE_NEGATIVE:I = 0x2

.field private static final TYPE_POSITIVE:I = 0x1


# instance fields
.field private alertDialog:Lcom/android/settings_ex/ui/OPTimerDialog;

.field private mHandler:Landroid/os/Handler;

.field private mLock:Landroid/os/PowerManager$WakeLock;

.field private mNegativeCount:I

.field private mPositiveCount:I

.field private mResume:Z

.field private mStatus:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private pm:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->pm:Landroid/os/PowerManager;

    .line 27
    iput-object v0, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    .line 29
    iput-boolean v1, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->mStatus:Z

    .line 30
    iput-boolean v1, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->mResume:Z

    .line 189
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->mPositiveCount:I

    .line 190
    iput v1, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->mNegativeCount:I

    .line 195
    new-instance v0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity$3;-><init>(Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;)V

    iput-object v0, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->showDialog(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->cancel()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;)Lcom/android/settings_ex/ui/OPTimerDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/android/settings_ex/ui/OPTimerDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->mResume:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;

    .prologue
    .line 22
    iget v0, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->mNegativeCount:I

    return v0
.end method

.method static synthetic access$410(Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;

    .prologue
    .line 22
    iget v0, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->mNegativeCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->mNegativeCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;

    .prologue
    .line 22
    iget v0, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->mPositiveCount:I

    return v0
.end method

.method static synthetic access$610(Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;

    .prologue
    .line 22
    iget v0, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->mPositiveCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->mPositiveCount:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->mStatus:Z

    return v0
.end method

.method private acquireWakeLock()V
    .locals 3

    .prologue
    .line 264
    iget-object v1, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 265
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 266
    .local v0, "pm":Landroid/os/PowerManager;
    const v1, 0x20000001

    const-string v2, "TimepowerWakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 268
    iget-object v1, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 270
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    return-void
.end method

.method private cancel()V
    .locals 2

    .prologue
    .line 130
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings_ex.POWER_CANCEL_OP_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 142
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->mStatus:Z

    .line 143
    iget-object v1, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/android/settings_ex/ui/OPTimerDialog;

    invoke-virtual {v1}, Lcom/android/settings_ex/ui/OPTimerDialog;->dismiss()V

    .line 145
    invoke-virtual {p0}, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->finish()V

    .line 146
    return-void
.end method

.method private raiseScreenUp()V
    .locals 3

    .prologue
    .line 282
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->pm:Landroid/os/PowerManager;

    .line 284
    iget-object v0, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->pm:Landroid/os/PowerManager;

    const v1, 0x30000006

    const-string v2, "TimepowerWakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    .line 287
    iget-object v0, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 288
    iget-object v0, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    .line 291
    return-void
.end method

.method private releaseWakeLock()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 278
    :cond_0
    return-void
.end method

.method private showDialog(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 115
    .local v0, "d":Landroid/app/AlertDialog;
    invoke-virtual {p0}, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400b4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 116
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 117
    const v2, 0x7f0900ac

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 118
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 119
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 120
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 167
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 173
    invoke-direct {p0}, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->releaseWakeLock()V

    .line 176
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0x3c

    const/4 v5, 0x1

    .line 35
    const v0, 0x180400

    .line 38
    .local v0, "flags":I
    invoke-virtual {p0}, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->pm:Landroid/os/PowerManager;

    .line 55
    invoke-direct {p0}, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->raiseScreenUp()V

    .line 59
    new-instance v1, Lcom/android/settings_ex/ui/OPTimerDialog;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/ui/OPTimerDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/android/settings_ex/ui/OPTimerDialog;

    .line 61
    iget-object v1, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/android/settings_ex/ui/OPTimerDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/ui/OPTimerDialog;->setTitle(Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/android/settings_ex/ui/OPTimerDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/ui/OPTimerDialog;->setMessage(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/android/settings_ex/ui/OPTimerDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity$1;-><init>(Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;)V

    invoke-virtual {v1, v2, v3, v6}, Lcom/android/settings_ex/ui/OPTimerDialog;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;I)V

    .line 95
    iget-object v1, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/android/settings_ex/ui/OPTimerDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity$2;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity$2;-><init>(Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;)V

    const/16 v4, 0xa

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/settings_ex/ui/OPTimerDialog;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;I)V

    .line 105
    iget-object v1, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/android/settings_ex/ui/OPTimerDialog;

    invoke-virtual {v1}, Lcom/android/settings_ex/ui/OPTimerDialog;->show()V

    .line 106
    iget-object v1, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/android/settings_ex/ui/OPTimerDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v6, v5}, Lcom/android/settings_ex/ui/OPTimerDialog;->setButtonType(IIZ)V

    .line 108
    iget-object v1, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 111
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 180
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->mResume:Z

    .line 183
    iget-object v0, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/android/settings_ex/ui/OPTimerDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/android/settings_ex/ui/OPTimerDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/ui/OPTimerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 187
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 151
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->mResume:Z

    .line 159
    invoke-direct {p0}, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->acquireWakeLock()V

    .line 162
    return-void
.end method
