.class Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "PowerOffPromptActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity$2;->this$0:Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 67
    const-string/jumbo v1, "state"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "state":Ljava/lang/String;
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity$2;->this$0:Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;

    invoke-static {v1}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->-get0(Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;)Landroid/os/Handler;

    move-result-object v1

    .line 71
    const-wide/32 v2, 0xea60

    .line 70
    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 74
    :cond_0
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 75
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 74
    if-eqz v1, :cond_2

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity$2;->this$0:Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;

    invoke-static {v1}, Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;->-get0(Lcom/oneplus/settings/timer/timepower/PowerOffPromptActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 66
    :cond_2
    return-void
.end method
