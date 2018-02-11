.class public Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;
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
.method static synthetic -get0(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->mSecondsCountdown:I

    return v0
.end method

.method static synthetic -get1(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->mMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->mSecondsCountdown:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->cancelCountDownTimer()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->fireShutDown()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->sCountDownTimer:Landroid/os/CountDownTimer;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private cancelCountDownTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 96
    sget-object v0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->sCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 97
    const-string/jumbo v0, "ShutdownActivity"

    const-string/jumbo v1, "cancel sCountDownTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    sget-object v0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->sCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 99
    sput-object v2, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->sCountDownTimer:Landroid/os/CountDownTimer;

    .line 95
    :cond_0
    return-void
.end method

.method private fireShutDown()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 152
    const-string/jumbo v1, "sys.debug.watchdog"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.extra.KEY_CONFIRM"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 155
    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 156
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 157
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->startActivity(Landroid/content/Intent;)V

    .line 150
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    .line 32
    .local v8, "pm":Landroid/os/PowerManager;
    const-string/jumbo v0, "ShutdownActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "screen is on ? ----- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 35
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    .line 36
    .local v9, "win":Landroid/view/Window;
    const/high16 v0, 0x480000

    invoke-virtual {v9, v0}, Landroid/view/Window;->addFlags(I)V

    .line 39
    const/16 v6, 0xb

    .line 40
    .local v6, "countSeconds":I
    const/16 v7, 0x3e8

    .line 41
    .local v7, "millisSeconds":I
    if-nez p1, :cond_0

    .line 42
    const/16 v0, 0xb

    iput v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->mSecondsCountdown:I

    .line 47
    :goto_0
    new-instance v0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;

    iget v1, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->mSecondsCountdown:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    .line 48
    const-wide/16 v4, 0x3e8

    move-object v1, p0

    .line 47
    invoke-direct/range {v0 .. v5}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;-><init>(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;JJ)V

    sput-object v0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->sCountDownTimer:Landroid/os/CountDownTimer;

    .line 79
    const-string/jumbo v0, "ShutdownActivity"

    const-string/jumbo v1, "ShutdonwActivity onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sget-object v0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->sCountDownTimer:Landroid/os/CountDownTimer;

    if-nez v0, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->finish()V

    .line 28
    :goto_1
    return-void

    .line 44
    :cond_0
    const-string/jumbo v0, "lefttime"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->mSecondsCountdown:I

    .line 45
    const-string/jumbo v0, "message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->mMessage:Ljava/lang/String;

    goto :goto_0

    .line 84
    :cond_1
    sget-object v0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->sCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 105
    const-string/jumbo v1, "ShutdownActivity"

    const-string/jumbo v2, "onCreateDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 107
    const/4 v2, 0x0

    .line 106
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 108
    const v2, 0x1080027

    .line 106
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 110
    const-string/jumbo v2, "power off"

    .line 106
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 111
    iget-object v2, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->mMessage:Ljava/lang/String;

    .line 106
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 113
    new-instance v2, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$2;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$2;-><init>(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;)V

    .line 112
    const v3, 0x1040013

    .line 106
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 122
    new-instance v2, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$3;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$3;-><init>(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;)V

    .line 121
    const v3, 0x1040009

    .line 106
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 142
    .local v0, "dialog":Landroid/app/AlertDialog;
    return-object v0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 147
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2    # "dialog":Landroid/app/Dialog;
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->mMessage:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 146
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 91
    const-string/jumbo v0, "lefttime"

    iget v1, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->mSecondsCountdown:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 92
    const-string/jumbo v0, "message"

    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method
