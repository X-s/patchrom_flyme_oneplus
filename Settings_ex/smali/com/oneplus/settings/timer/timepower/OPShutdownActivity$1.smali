.class Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;
.super Landroid/os/CountDownTimer;
.source "OPShutdownActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;JJ)V
    .locals 0
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 47
    iput-object p1, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    # getter for: Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->access$200(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const-string v0, "ShutdownActivity"

    const-string v1, "phone is incall, countdown end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    invoke-virtual {v0}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->finish()V

    .line 75
    :goto_0
    return-void

    .line 71
    :cond_0
    const-string v0, "ShutdownActivity"

    const-string v1, "count down timer arrived, shutdown phone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    # invokes: Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->fireShutDown()V
    invoke-static {v0}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->access$300(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;)V

    .line 73
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->sCountDownTimer:Landroid/os/CountDownTimer;

    goto :goto_0
.end method

.method public onTick(J)V
    .locals 11
    .param p1, "millisUntilFinished"    # J

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 50
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    div-long v2, p1, v8

    long-to-int v1, v2

    # setter for: Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->mSecondsCountdown:I
    invoke-static {v0, v1}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->access$002(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;I)I

    .line 51
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    # getter for: Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->mSecondsCountdown:I
    invoke-static {v0}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->access$000(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;)I

    move-result v0

    if-le v0, v5, :cond_0

    .line 52
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    const v2, 0x7f0c029a

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    # getter for: Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->mSecondsCountdown:I
    invoke-static {v4}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->access$000(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->mMessage:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->access$102(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    :goto_0
    const-string v0, "ShutdownActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showDialog time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-long v2, p1, v8

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    invoke-virtual {v0, v5}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->showDialog(I)V

    .line 62
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    const v2, 0x7f0c029b

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    # getter for: Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->mSecondsCountdown:I
    invoke-static {v4}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->access$000(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->mMessage:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->access$102(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
