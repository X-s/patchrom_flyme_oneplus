.class Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$1;
.super Landroid/os/Handler;
.source "OPPowerOffPromptActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 186
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {v4}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->-get0(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Lcom/oneplus/settings/ui/OPTimerDialog;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 187
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {v4}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->-get0(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Lcom/oneplus/settings/ui/OPTimerDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/settings/ui/OPTimerDialog;->getNButton()Landroid/widget/Button;

    move-result-object v0

    .line 188
    .local v0, "n":Landroid/widget/Button;
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {v4}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->-get0(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Lcom/oneplus/settings/ui/OPTimerDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/settings/ui/OPTimerDialog;->getPButton()Landroid/widget/Button;

    move-result-object v1

    .line 190
    .local v1, "p":Landroid/widget/Button;
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 185
    .end local v0    # "n":Landroid/widget/Button;
    .end local v1    # "p":Landroid/widget/Button;
    :cond_0
    :goto_0
    return-void

    .line 192
    .restart local v0    # "n":Landroid/widget/Button;
    .restart local v1    # "p":Landroid/widget/Button;
    :sswitch_0
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {v4}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->-get4(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 197
    :sswitch_1
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {v4}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->-get2(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)I

    move-result v4

    if-lez v4, :cond_2

    .line 198
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {v4}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->-get2(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->-set1(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;I)I

    .line 199
    if-eqz v0, :cond_1

    .line 200
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 201
    .local v3, "text":Ljava/lang/String;
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {v4}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->-get0(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Lcom/oneplus/settings/ui/OPTimerDialog;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {v5}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->-get2(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lcom/oneplus/settings/ui/OPTimerDialog;->getTimeText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 204
    .end local v3    # "text":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {v4}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->-get1(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 208
    :cond_2
    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 210
    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    goto :goto_0

    .line 212
    :cond_3
    invoke-virtual {v0, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 218
    :sswitch_2
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {v4}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->-get3(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)I

    move-result v4

    if-lez v4, :cond_5

    .line 219
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {v4}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->-get3(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->-set2(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;I)I

    .line 220
    if-eqz v1, :cond_4

    .line 221
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {v4}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->-get0(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Lcom/oneplus/settings/ui/OPTimerDialog;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-virtual {v5}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 222
    const v6, 0x7f0e030a

    .line 221
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    .line 222
    iget-object v7, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {v7}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->-get3(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    .line 221
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/oneplus/settings/ui/OPTimerDialog;->setMessage(Ljava/lang/String;)V

    .line 224
    :cond_4
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {v4}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->-get1(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 225
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {v4}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->-get1(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 230
    :cond_5
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {v4}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->-get5(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 231
    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 232
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {v4}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->-get6(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    .line 233
    .local v2, "phoneState":I
    if-eqz v2, :cond_6

    .line 234
    const-string/jumbo v4, "OPPowerOffPromptActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cancel auto shutdown while phone state is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {v4}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->-wrap0(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)V

    goto/16 :goto_0

    .line 237
    :cond_6
    const-string/jumbo v4, "OPPowerOffPromptActivity"

    const-string/jumbo v5, "Perform auto shutdown"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {v1}, Landroid/widget/Button;->performClick()Z

    goto/16 :goto_0

    .line 241
    .end local v2    # "phoneState":I
    :cond_7
    invoke-virtual {v1, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 190
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method
