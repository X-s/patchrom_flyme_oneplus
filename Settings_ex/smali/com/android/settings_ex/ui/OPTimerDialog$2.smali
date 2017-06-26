.class Lcom/android/settings_ex/ui/OPTimerDialog$2;
.super Landroid/os/Handler;
.source "OPTimerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ui/OPTimerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ui/OPTimerDialog;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ui/OPTimerDialog;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPTimerDialog$2;->this$0:Lcom/android/settings_ex/ui/OPTimerDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v4, 0x1

    .line 141
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 143
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPTimerDialog$2;->this$0:Lcom/android/settings_ex/ui/OPTimerDialog;

    # getter for: Lcom/android/settings_ex/ui/OPTimerDialog;->mNegativeCount:I
    invoke-static {v1}, Lcom/android/settings_ex/ui/OPTimerDialog;->access$100(Lcom/android/settings_ex/ui/OPTimerDialog;)I

    move-result v1

    if-lez v1, :cond_2

    .line 144
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPTimerDialog$2;->this$0:Lcom/android/settings_ex/ui/OPTimerDialog;

    # operator-- for: Lcom/android/settings_ex/ui/OPTimerDialog;->mNegativeCount:I
    invoke-static {v1}, Lcom/android/settings_ex/ui/OPTimerDialog;->access$110(Lcom/android/settings_ex/ui/OPTimerDialog;)I

    .line 145
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPTimerDialog$2;->this$0:Lcom/android/settings_ex/ui/OPTimerDialog;

    # getter for: Lcom/android/settings_ex/ui/OPTimerDialog;->n:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings_ex/ui/OPTimerDialog;->access$200(Lcom/android/settings_ex/ui/OPTimerDialog;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 146
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPTimerDialog$2;->this$0:Lcom/android/settings_ex/ui/OPTimerDialog;

    # getter for: Lcom/android/settings_ex/ui/OPTimerDialog;->n:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings_ex/ui/OPTimerDialog;->access$200(Lcom/android/settings_ex/ui/OPTimerDialog;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 147
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPTimerDialog$2;->this$0:Lcom/android/settings_ex/ui/OPTimerDialog;

    # getter for: Lcom/android/settings_ex/ui/OPTimerDialog;->n:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings_ex/ui/OPTimerDialog;->access$200(Lcom/android/settings_ex/ui/OPTimerDialog;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/ui/OPTimerDialog$2;->this$0:Lcom/android/settings_ex/ui/OPTimerDialog;

    iget-object v3, p0, Lcom/android/settings_ex/ui/OPTimerDialog$2;->this$0:Lcom/android/settings_ex/ui/OPTimerDialog;

    # getter for: Lcom/android/settings_ex/ui/OPTimerDialog;->mNegativeCount:I
    invoke-static {v3}, Lcom/android/settings_ex/ui/OPTimerDialog;->access$100(Lcom/android/settings_ex/ui/OPTimerDialog;)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/android/settings_ex/ui/OPTimerDialog;->getTimeText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 150
    .end local v0    # "text":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPTimerDialog$2;->this$0:Lcom/android/settings_ex/ui/OPTimerDialog;

    # getter for: Lcom/android/settings_ex/ui/OPTimerDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings_ex/ui/OPTimerDialog;->access$300(Lcom/android/settings_ex/ui/OPTimerDialog;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 154
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPTimerDialog$2;->this$0:Lcom/android/settings_ex/ui/OPTimerDialog;

    # getter for: Lcom/android/settings_ex/ui/OPTimerDialog;->n:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings_ex/ui/OPTimerDialog;->access$200(Lcom/android/settings_ex/ui/OPTimerDialog;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPTimerDialog$2;->this$0:Lcom/android/settings_ex/ui/OPTimerDialog;

    # getter for: Lcom/android/settings_ex/ui/OPTimerDialog;->n:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings_ex/ui/OPTimerDialog;->access$200(Lcom/android/settings_ex/ui/OPTimerDialog;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 156
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPTimerDialog$2;->this$0:Lcom/android/settings_ex/ui/OPTimerDialog;

    # getter for: Lcom/android/settings_ex/ui/OPTimerDialog;->n:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings_ex/ui/OPTimerDialog;->access$200(Lcom/android/settings_ex/ui/OPTimerDialog;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->performClick()Z

    goto :goto_0

    .line 158
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPTimerDialog$2;->this$0:Lcom/android/settings_ex/ui/OPTimerDialog;

    # getter for: Lcom/android/settings_ex/ui/OPTimerDialog;->n:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings_ex/ui/OPTimerDialog;->access$200(Lcom/android/settings_ex/ui/OPTimerDialog;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 164
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPTimerDialog$2;->this$0:Lcom/android/settings_ex/ui/OPTimerDialog;

    # getter for: Lcom/android/settings_ex/ui/OPTimerDialog;->mPositiveCount:I
    invoke-static {v1}, Lcom/android/settings_ex/ui/OPTimerDialog;->access$400(Lcom/android/settings_ex/ui/OPTimerDialog;)I

    move-result v1

    if-lez v1, :cond_5

    .line 165
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPTimerDialog$2;->this$0:Lcom/android/settings_ex/ui/OPTimerDialog;

    # operator-- for: Lcom/android/settings_ex/ui/OPTimerDialog;->mPositiveCount:I
    invoke-static {v1}, Lcom/android/settings_ex/ui/OPTimerDialog;->access$410(Lcom/android/settings_ex/ui/OPTimerDialog;)I

    .line 166
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPTimerDialog$2;->this$0:Lcom/android/settings_ex/ui/OPTimerDialog;

    # getter for: Lcom/android/settings_ex/ui/OPTimerDialog;->p:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings_ex/ui/OPTimerDialog;->access$500(Lcom/android/settings_ex/ui/OPTimerDialog;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 167
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPTimerDialog$2;->this$0:Lcom/android/settings_ex/ui/OPTimerDialog;

    # getter for: Lcom/android/settings_ex/ui/OPTimerDialog;->p:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings_ex/ui/OPTimerDialog;->access$500(Lcom/android/settings_ex/ui/OPTimerDialog;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 168
    .restart local v0    # "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPTimerDialog$2;->this$0:Lcom/android/settings_ex/ui/OPTimerDialog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5df2\u7ecf\u8fbe\u5230\u5b9a\u65f6\u5173\u673a\u65f6\u95f4,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/ui/OPTimerDialog$2;->this$0:Lcom/android/settings_ex/ui/OPTimerDialog;

    # getter for: Lcom/android/settings_ex/ui/OPTimerDialog;->mPositiveCount:I
    invoke-static {v3}, Lcom/android/settings_ex/ui/OPTimerDialog;->access$400(Lcom/android/settings_ex/ui/OPTimerDialog;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s\u540e\u786e\u8ba4\u5173\u673a?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/ui/OPTimerDialog;->setMessage(Ljava/lang/String;)V

    .line 171
    .end local v0    # "text":Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPTimerDialog$2;->this$0:Lcom/android/settings_ex/ui/OPTimerDialog;

    # getter for: Lcom/android/settings_ex/ui/OPTimerDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings_ex/ui/OPTimerDialog;->access$300(Lcom/android/settings_ex/ui/OPTimerDialog;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPTimerDialog$2;->this$0:Lcom/android/settings_ex/ui/OPTimerDialog;

    # getter for: Lcom/android/settings_ex/ui/OPTimerDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings_ex/ui/OPTimerDialog;->access$300(Lcom/android/settings_ex/ui/OPTimerDialog;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 177
    :cond_5
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPTimerDialog$2;->this$0:Lcom/android/settings_ex/ui/OPTimerDialog;

    # getter for: Lcom/android/settings_ex/ui/OPTimerDialog;->p:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings_ex/ui/OPTimerDialog;->access$500(Lcom/android/settings_ex/ui/OPTimerDialog;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPTimerDialog$2;->this$0:Lcom/android/settings_ex/ui/OPTimerDialog;

    # getter for: Lcom/android/settings_ex/ui/OPTimerDialog;->status:Z
    invoke-static {v1}, Lcom/android/settings_ex/ui/OPTimerDialog;->access$600(Lcom/android/settings_ex/ui/OPTimerDialog;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPTimerDialog$2;->this$0:Lcom/android/settings_ex/ui/OPTimerDialog;

    # getter for: Lcom/android/settings_ex/ui/OPTimerDialog;->p:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings_ex/ui/OPTimerDialog;->access$500(Lcom/android/settings_ex/ui/OPTimerDialog;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 179
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPTimerDialog$2;->this$0:Lcom/android/settings_ex/ui/OPTimerDialog;

    # getter for: Lcom/android/settings_ex/ui/OPTimerDialog;->p:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings_ex/ui/OPTimerDialog;->access$500(Lcom/android/settings_ex/ui/OPTimerDialog;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->performClick()Z

    goto/16 :goto_0

    .line 181
    :cond_6
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPTimerDialog$2;->this$0:Lcom/android/settings_ex/ui/OPTimerDialog;

    # getter for: Lcom/android/settings_ex/ui/OPTimerDialog;->p:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings_ex/ui/OPTimerDialog;->access$500(Lcom/android/settings_ex/ui/OPTimerDialog;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
