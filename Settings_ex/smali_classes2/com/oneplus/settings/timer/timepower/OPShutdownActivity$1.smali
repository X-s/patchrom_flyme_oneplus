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
    .param p1, "this$0"    # Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;
    .param p2, "$anonymous0"    # J
    .param p4, "$anonymous1"    # J

    .prologue
    .line 47
    iput-object p1, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 48
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    invoke-static {v0}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->-get1(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const-string/jumbo v0, "ShutdownActivity"

    const-string/jumbo v1, "phone is incall, countdown end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    invoke-virtual {v0}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->finish()V

    .line 66
    :goto_0
    return-void

    .line 72
    :cond_0
    const-string/jumbo v0, "ShutdownActivity"

    const-string/jumbo v1, "count down timer arrived, shutdown phone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    invoke-static {v0}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->-wrap1(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;)V

    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->sCountDownTimer:Landroid/os/CountDownTimer;

    goto :goto_0
.end method

.method public onTick(J)V
    .locals 9
    .param p1, "millisUntilFinished"    # J

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 51
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    div-long v2, p1, v6

    long-to-int v1, v2

    invoke-static {v0, v1}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->-set1(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;I)I

    .line 52
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    invoke-static {v0}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->-get0(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;)I

    move-result v0

    if-le v0, v4, :cond_0

    .line 53
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    new-array v2, v4, [Ljava/lang/Object;

    .line 54
    iget-object v3, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    invoke-static {v3}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->-get0(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 53
    const v3, 0x7f0e04b2

    invoke-virtual {v1, v3, v2}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->-set0(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    :goto_0
    const-string/jumbo v0, "ShutdownActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showDialog time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-long v2, p1, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    invoke-virtual {v0, v4}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->showDialog(I)V

    .line 50
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    new-array v2, v4, [Ljava/lang/Object;

    .line 58
    iget-object v3, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    invoke-static {v3}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->-get0(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 57
    const v3, 0x7f0e04b3

    .line 56
    invoke-virtual {v1, v3, v2}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->-set0(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
