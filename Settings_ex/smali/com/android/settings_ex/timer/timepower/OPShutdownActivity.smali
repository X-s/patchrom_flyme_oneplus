.class public Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;
.super Landroid/app/Activity;
.source "OPShutdownActivity.java"


# static fields
.field private static final DIALOG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ShutdownActivity"

.field public static sCountDownTimer:Landroid/os/CountDownTimer;


# instance fields
.field private mMessage:Ljava/lang/String;

.field private mSecondsCountdown:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;->sCountDownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;

    .prologue
    .line 18
    iget v0, p0, Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;->mSecondsCountdown:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;->mSecondsCountdown:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;->mMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;->fireShutDown()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;->cancelCountDownTimer()V

    return-void
.end method

.method private cancelCountDownTimer()V
    .locals 2

    .prologue
    .line 89
    sget-object v0, Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;->sCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 90
    const-string v0, "ShutdownActivity"

    const-string v1, "cancel sCountDownTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    sget-object v0, Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;->sCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 92
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;->sCountDownTimer:Landroid/os/CountDownTimer;

    .line 94
    :cond_0
    return-void
.end method

.method private fireShutDown()V
    .locals 3

    .prologue
    .line 132
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 134
    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 135
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 136
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;->startActivity(Landroid/content/Intent;)V

    .line 137
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    .line 31
    .local v8, "pm":Landroid/os/PowerManager;
    const-string v0, "ShutdownActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screen is on ? ----- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 34
    invoke-virtual {p0}, Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    .line 35
    .local v9, "win":Landroid/view/Window;
    const/high16 v0, 0x480000

    invoke-virtual {v9, v0}, Landroid/view/Window;->addFlags(I)V

    .line 37
    const/16 v6, 0xb

    .line 38
    .local v6, "countSeconds":I
    const/16 v7, 0x3e8

    .line 39
    .local v7, "millisSeconds":I
    if-nez p1, :cond_0

    .line 40
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;->mSecondsCountdown:I

    .line 45
    :goto_0
    new-instance v0, Lcom/android/settings_ex/timer/timepower/OPShutdownActivity$1;

    iget v1, p0, Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;->mSecondsCountdown:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/timer/timepower/OPShutdownActivity$1;-><init>(Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;JJ)V

    sput-object v0, Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;->sCountDownTimer:Landroid/os/CountDownTimer;

    .line 72
    const-string v0, "ShutdownActivity"

    const-string v1, "ShutdonwActivity onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    sget-object v0, Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;->sCountDownTimer:Landroid/os/CountDownTimer;

    if-nez v0, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;->finish()V

    .line 79
    :goto_1
    return-void

    .line 42
    :cond_0
    const-string v0, "lefttime"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;->mSecondsCountdown:I

    .line 43
    const-string v0, "message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;->mMessage:Ljava/lang/String;

    goto :goto_0

    .line 77
    :cond_1
    sget-object v0, Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;->sCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 98
    const-string v1, "ShutdownActivity"

    const-string v2, "onCreateDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "power off"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;->mMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    new-instance v3, Lcom/android/settings_ex/timer/timepower/OPShutdownActivity$3;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/timer/timepower/OPShutdownActivity$3;-><init>(Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    new-instance v3, Lcom/android/settings_ex/timer/timepower/OPShutdownActivity$2;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/timer/timepower/OPShutdownActivity$2;-><init>(Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 123
    .local v0, "dialog":Landroid/app/AlertDialog;
    return-object v0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 128
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2    # "dialog":Landroid/app/Dialog;
    iget-object v0, p0, Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;->mMessage:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 129
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 84
    const-string v0, "lefttime"

    iget v1, p0, Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;->mSecondsCountdown:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 85
    const-string v0, "message"

    iget-object v1, p0, Lcom/android/settings_ex/timer/timepower/OPShutdownActivity;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method
