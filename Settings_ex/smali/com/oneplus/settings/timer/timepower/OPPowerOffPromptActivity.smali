.class public Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;
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
    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->pm:Landroid/os/PowerManager;

    .line 27
    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    .line 29
    iput-boolean v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mStatus:Z

    .line 30
    iput-boolean v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mResume:Z

    .line 153
    const/16 v0, 0x3c

    iput v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mPositiveCount:I

    .line 154
    iput v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mNegativeCount:I

    .line 159
    new-instance v0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;-><init>(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)V

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->showDialog(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->cancel()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Lcom/android/settings_ex/ui/OPTimerDialog;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/android/settings_ex/ui/OPTimerDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mResume:Z

    return v0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    .prologue
    .line 22
    iget v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mNegativeCount:I

    return v0
.end method

.method static synthetic access$410(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    .prologue
    .line 22
    iget v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mNegativeCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mNegativeCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    .prologue
    .line 22
    iget v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mPositiveCount:I

    return v0
.end method

.method static synthetic access$610(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    .prologue
    .line 22
    iget v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mPositiveCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mPositiveCount:I

    return v0
.end method

.method static synthetic access$700(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mStatus:Z

    return v0
.end method

.method private acquireWakeLock()V
    .locals 3

    .prologue
    .line 230
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 231
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 232
    .local v0, "pm":Landroid/os/PowerManager;
    const v1, 0x20000001

    const-string v2, "TimepowerWakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 236
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 238
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    return-void
.end method

.method private cancel()V
    .locals 2

    .prologue
    .line 105
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.POWER_CANCEL_OP_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 108
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mStatus:Z

    .line 109
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/android/settings_ex/ui/OPTimerDialog;

    invoke-virtual {v1}, Lcom/android/settings_ex/ui/OPTimerDialog;->dismiss()V

    .line 111
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->finish()V

    .line 112
    return-void
.end method

.method private raiseScreenUp()V
    .locals 3

    .prologue
    .line 251
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->pm:Landroid/os/PowerManager;

    .line 253
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->pm:Landroid/os/PowerManager;

    const v1, 0x30000006

    const-string v2, "TimepowerWakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    .line 256
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 257
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mLock:Landroid/os/PowerManager$WakeLock;

    .line 260
    return-void
.end method

.method private releaseWakeLock()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 246
    :cond_0
    return-void
.end method

.method private showDialog(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    new-instance v2, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-direct {v2, p1}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->create()Lcom/oneplus/app/OPAlertDialog;

    move-result-object v0

    .line 96
    .local v0, "d":Lcom/oneplus/app/OPAlertDialog;
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400ae

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 97
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v0, v1}, Lcom/oneplus/app/OPAlertDialog;->setView(Landroid/view/View;)V

    .line 98
    const v2, 0x7f0c012b

    invoke-virtual {v0, v2}, Lcom/oneplus/app/OPAlertDialog;->setTitle(I)V

    .line 99
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/oneplus/app/OPAlertDialog;->setCancelable(Z)V

    .line 100
    invoke-virtual {v0}, Lcom/oneplus/app/OPAlertDialog;->show()V

    .line 101
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 132
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 137
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->releaseWakeLock()V

    .line 140
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0x3c

    const/4 v5, 0x1

    .line 35
    const v0, 0x180480

    .line 39
    .local v0, "flags":I
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->pm:Landroid/os/PowerManager;

    .line 45
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->raiseScreenUp()V

    .line 49
    new-instance v1, Lcom/android/settings_ex/ui/OPTimerDialog;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/ui/OPTimerDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/android/settings_ex/ui/OPTimerDialog;

    .line 51
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/android/settings_ex/ui/OPTimerDialog;

    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0125

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/ui/OPTimerDialog;->setTitle(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/android/settings_ex/ui/OPTimerDialog;

    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0126

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/ui/OPTimerDialog;->setMessage(Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/android/settings_ex/ui/OPTimerDialog;

    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0127

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$1;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$1;-><init>(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)V

    invoke-virtual {v1, v2, v3, v6}, Lcom/android/settings_ex/ui/OPTimerDialog;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;I)V

    .line 74
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/android/settings_ex/ui/OPTimerDialog;

    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0128

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$2;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$2;-><init>(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)V

    const/16 v4, 0xa

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/settings_ex/ui/OPTimerDialog;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;I)V

    .line 87
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/android/settings_ex/ui/OPTimerDialog;

    invoke-virtual {v1}, Lcom/android/settings_ex/ui/OPTimerDialog;->show()V

    .line 88
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/android/settings_ex/ui/OPTimerDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v6, v5}, Lcom/android/settings_ex/ui/OPTimerDialog;->setButtonType(IIZ)V

    .line 90
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 92
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 144
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mResume:Z

    .line 147
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/android/settings_ex/ui/OPTimerDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/android/settings_ex/ui/OPTimerDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/ui/OPTimerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 151
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mResume:Z

    .line 124
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->acquireWakeLock()V

    .line 127
    return-void
.end method
