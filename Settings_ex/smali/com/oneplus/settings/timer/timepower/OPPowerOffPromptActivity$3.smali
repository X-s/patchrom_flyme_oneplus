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
    .line 158
    iput-object p1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v8, 0x1

    .line 162
    iget-object v3, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    # getter for: Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/oneplus/settings/ui/OPTimerDialog;
    invoke-static {v3}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$200(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Lcom/oneplus/settings/ui/OPTimerDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/settings/ui/OPTimerDialog;->getNButton()Landroid/widget/Button;

    move-result-object v0

    .line 163
    .local v0, "n":Landroid/widget/Button;
    iget-object v3, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    # getter for: Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/oneplus/settings/ui/OPTimerDialog;
    invoke-static {v3}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$200(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Lcom/oneplus/settings/ui/OPTimerDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/settings/ui/OPTimerDialog;->getPButton()Landroid/widget/Button;

    move-result-object v1

    .line 165
    .local v1, "p":Landroid/widget/Button;
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 167
    :sswitch_0
    iget-object v3, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    # getter for: Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mResume:Z
    invoke-static {v3}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$300(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 172
    :sswitch_1
    iget-object v3, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    # getter for: Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mNegativeCount:I
    invoke-static {v3}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$400(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)I

    move-result v3

    if-lez v3, :cond_2

    .line 173
    iget-object v3, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    # operator-- for: Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mNegativeCount:I
    invoke-static {v3}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$410(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)I

    .line 174
    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 176
    .local v2, "text":Ljava/lang/String;
    iget-object v3, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    # getter for: Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/oneplus/settings/ui/OPTimerDialog;
    invoke-static {v3}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$200(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Lcom/oneplus/settings/ui/OPTimerDialog;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    # getter for: Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mNegativeCount:I
    invoke-static {v4}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$400(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/oneplus/settings/ui/OPTimerDialog;->getTimeText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 179
    .end local v2    # "text":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    # getter for: Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$500(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 183
    :cond_2
    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 185
    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    goto :goto_0

    .line 187
    :cond_3
    invoke-virtual {v0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 193
    :sswitch_2
    iget-object v3, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    # getter for: Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mPositiveCount:I
    invoke-static {v3}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$600(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)I

    move-result v3

    if-lez v3, :cond_5

    .line 194
    iget-object v3, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    # operator-- for: Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mPositiveCount:I
    invoke-static {v3}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$610(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)I

    .line 195
    if-eqz v1, :cond_4

    .line 196
    iget-object v3, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    # getter for: Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->alertDialog:Lcom/oneplus/settings/ui/OPTimerDialog;
    invoke-static {v3}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$200(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Lcom/oneplus/settings/ui/OPTimerDialog;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-virtual {v4}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c01bd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    # getter for: Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mPositiveCount:I
    invoke-static {v7}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$600(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/settings/ui/OPTimerDialog;->setMessage(Ljava/lang/String;)V

    .line 199
    :cond_4
    iget-object v3, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    # getter for: Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$500(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 200
    iget-object v3, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    # getter for: Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$500(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v8, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 205
    :cond_5
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    # getter for: Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->mStatus:Z
    invoke-static {v3}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$700(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 206
    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 207
    invoke-virtual {v1}, Landroid/widget/Button;->performClick()Z

    goto/16 :goto_0

    .line 209
    :cond_6
    invoke-virtual {v1, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 165
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method
