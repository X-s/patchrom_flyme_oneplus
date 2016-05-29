.class Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity$3;
.super Landroid/os/Handler;
.source "OPPowerOffPromptActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v7, 0x1

    .line 199
    iget-object v3, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;

    # getter for: Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/android/settings_ex/ui/OPTimerDialog;
    invoke-static {v3}, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->access$200(Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;)Lcom/android/settings_ex/ui/OPTimerDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings_ex/ui/OPTimerDialog;->getNButton()Landroid/widget/Button;

    move-result-object v0

    .line 200
    .local v0, "n":Landroid/widget/Button;
    iget-object v3, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;

    # getter for: Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/android/settings_ex/ui/OPTimerDialog;
    invoke-static {v3}, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->access$200(Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;)Lcom/android/settings_ex/ui/OPTimerDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings_ex/ui/OPTimerDialog;->getPButton()Landroid/widget/Button;

    move-result-object v1

    .line 202
    .local v1, "p":Landroid/widget/Button;
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 204
    :sswitch_0
    iget-object v3, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;

    # getter for: Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->mResume:Z
    invoke-static {v3}, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->access$300(Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 209
    :sswitch_1
    iget-object v3, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;

    # getter for: Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->mNegativeCount:I
    invoke-static {v3}, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->access$400(Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;)I

    move-result v3

    if-lez v3, :cond_2

    .line 210
    iget-object v3, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;

    # operator-- for: Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->mNegativeCount:I
    invoke-static {v3}, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->access$410(Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;)I

    .line 211
    if-eqz v0, :cond_1

    .line 212
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 213
    .local v2, "text":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;

    # getter for: Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/android/settings_ex/ui/OPTimerDialog;
    invoke-static {v3}, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->access$200(Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;)Lcom/android/settings_ex/ui/OPTimerDialog;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;

    # getter for: Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->mNegativeCount:I
    invoke-static {v4}, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->access$400(Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/android/settings_ex/ui/OPTimerDialog;->getTimeText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 216
    .end local v2    # "text":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;

    # getter for: Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->access$500(Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 221
    :cond_2
    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 223
    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    goto :goto_0

    .line 225
    :cond_3
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 231
    :sswitch_2
    iget-object v3, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;

    # getter for: Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->mPositiveCount:I
    invoke-static {v3}, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->access$600(Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;)I

    move-result v3

    if-lez v3, :cond_5

    .line 232
    iget-object v3, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;

    # operator-- for: Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->mPositiveCount:I
    invoke-static {v3}, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->access$610(Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;)I

    .line 233
    if-eqz v1, :cond_4

    .line 234
    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 235
    .restart local v2    # "text":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;

    # getter for: Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/android/settings_ex/ui/OPTimerDialog;
    invoke-static {v3}, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->access$200(Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;)Lcom/android/settings_ex/ui/OPTimerDialog;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;

    invoke-virtual {v5}, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900aa

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;

    # getter for: Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->mPositiveCount:I
    invoke-static {v5}, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->access$600(Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;

    invoke-virtual {v5}, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900ab

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/ui/OPTimerDialog;->setMessage(Ljava/lang/String;)V

    .line 237
    .end local v2    # "text":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;

    # getter for: Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->access$500(Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 238
    iget-object v3, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;

    # getter for: Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->access$500(Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 243
    :cond_5
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;

    # getter for: Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->mStatus:Z
    invoke-static {v3}, Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;->access$700(Lcom/android/settings_ex/timer/timepower/OPPowerOffPromptActivity;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 244
    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 245
    invoke-virtual {v1}, Landroid/widget/Button;->performClick()Z

    goto/16 :goto_0

    .line 247
    :cond_6
    invoke-virtual {v1, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 202
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method
