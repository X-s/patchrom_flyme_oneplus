.class Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;
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

    .prologue
    .line 159
    iput-object p1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

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

    .line 163
    iget-object v3, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    # getter for: Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/android/settings_ex/ui/OPTimerDialog;
    invoke-static {v3}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$200(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Lcom/android/settings_ex/ui/OPTimerDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings_ex/ui/OPTimerDialog;->getNButton()Landroid/widget/Button;

    move-result-object v0

    .line 164
    .local v0, "n":Landroid/widget/Button;
    iget-object v3, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    # getter for: Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/android/settings_ex/ui/OPTimerDialog;
    invoke-static {v3}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$200(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Lcom/android/settings_ex/ui/OPTimerDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings_ex/ui/OPTimerDialog;->getPButton()Landroid/widget/Button;

    move-result-object v1

    .line 166
    .local v1, "p":Landroid/widget/Button;
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 168
    :sswitch_0
    iget-object v3, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    # getter for: Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mResume:Z
    invoke-static {v3}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$300(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 173
    :sswitch_1
    iget-object v3, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    # getter for: Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mNegativeCount:I
    invoke-static {v3}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$400(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)I

    move-result v3

    if-lez v3, :cond_2

    .line 174
    iget-object v3, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    # operator-- for: Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mNegativeCount:I
    invoke-static {v3}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$410(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)I

    .line 175
    if-eqz v0, :cond_1

    .line 176
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 177
    .local v2, "text":Ljava/lang/String;
    iget-object v3, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    # getter for: Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/android/settings_ex/ui/OPTimerDialog;
    invoke-static {v3}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$200(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Lcom/android/settings_ex/ui/OPTimerDialog;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    # getter for: Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mNegativeCount:I
    invoke-static {v4}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$400(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/android/settings_ex/ui/OPTimerDialog;->getTimeText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 180
    .end local v2    # "text":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    # getter for: Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$500(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 184
    :cond_2
    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 186
    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    goto :goto_0

    .line 188
    :cond_3
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 194
    :sswitch_2
    iget-object v3, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    # getter for: Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mPositiveCount:I
    invoke-static {v3}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$600(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)I

    move-result v3

    if-lez v3, :cond_5

    .line 195
    iget-object v3, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    # operator-- for: Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mPositiveCount:I
    invoke-static {v3}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$610(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)I

    .line 196
    if-eqz v1, :cond_4

    .line 197
    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 198
    .restart local v2    # "text":Ljava/lang/String;
    iget-object v3, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    # getter for: Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/android/settings_ex/ui/OPTimerDialog;
    invoke-static {v3}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$200(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Lcom/android/settings_ex/ui/OPTimerDialog;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-virtual {v5}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0129

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    # getter for: Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mPositiveCount:I
    invoke-static {v5}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$600(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-virtual {v5}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c012a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/ui/OPTimerDialog;->setMessage(Ljava/lang/String;)V

    .line 204
    .end local v2    # "text":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    # getter for: Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$500(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 205
    iget-object v3, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    # getter for: Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$500(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 210
    :cond_5
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    # getter for: Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mStatus:Z
    invoke-static {v3}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$700(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 211
    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 212
    invoke-virtual {v1}, Landroid/widget/Button;->performClick()Z

    goto/16 :goto_0

    .line 214
    :cond_6
    invoke-virtual {v1, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 166
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method
