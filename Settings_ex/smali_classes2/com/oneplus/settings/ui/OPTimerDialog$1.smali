.class Lcom/oneplus/settings/ui/OPTimerDialog$1;
.super Landroid/os/Handler;
.source "OPTimerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ui/OPTimerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPTimerDialog;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/OPTimerDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/ui/OPTimerDialog;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPTimerDialog$1;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

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

    .line 144
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 146
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPTimerDialog$1;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPTimerDialog;->-get2(Lcom/oneplus/settings/ui/OPTimerDialog;)I

    move-result v1

    if-lez v1, :cond_2

    .line 147
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPTimerDialog$1;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPTimerDialog;->-get2(Lcom/oneplus/settings/ui/OPTimerDialog;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lcom/oneplus/settings/ui/OPTimerDialog;->-set0(Lcom/oneplus/settings/ui/OPTimerDialog;I)I

    .line 148
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPTimerDialog$1;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPTimerDialog;->-get4(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 149
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPTimerDialog$1;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPTimerDialog;->-get4(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 150
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPTimerDialog$1;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPTimerDialog;->-get4(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPTimerDialog$1;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    iget-object v3, p0, Lcom/oneplus/settings/ui/OPTimerDialog$1;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {v3}, Lcom/oneplus/settings/ui/OPTimerDialog;->-get2(Lcom/oneplus/settings/ui/OPTimerDialog;)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/oneplus/settings/ui/OPTimerDialog;->getTimeText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 153
    .end local v0    # "text":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPTimerDialog$1;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPTimerDialog;->-get1(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 157
    :cond_2
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPTimerDialog$1;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPTimerDialog;->-get4(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPTimerDialog$1;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPTimerDialog;->-get4(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 159
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPTimerDialog$1;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPTimerDialog;->-get4(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->performClick()Z

    goto :goto_0

    .line 161
    :cond_3
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPTimerDialog$1;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPTimerDialog;->-get4(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 167
    :pswitch_1
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPTimerDialog$1;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPTimerDialog;->-get3(Lcom/oneplus/settings/ui/OPTimerDialog;)I

    move-result v1

    if-lez v1, :cond_5

    .line 168
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPTimerDialog$1;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPTimerDialog;->-get3(Lcom/oneplus/settings/ui/OPTimerDialog;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lcom/oneplus/settings/ui/OPTimerDialog;->-set1(Lcom/oneplus/settings/ui/OPTimerDialog;I)I

    .line 169
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPTimerDialog$1;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPTimerDialog;->-get5(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 170
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPTimerDialog$1;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPTimerDialog;->-get5(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 171
    .restart local v0    # "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPTimerDialog$1;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u5df2\u7ecf\u8fbe\u5230\u5b9a\u65f6\u5173\u673a\u65f6\u95f4,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 172
    iget-object v3, p0, Lcom/oneplus/settings/ui/OPTimerDialog$1;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {v3}, Lcom/oneplus/settings/ui/OPTimerDialog;->-get3(Lcom/oneplus/settings/ui/OPTimerDialog;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 171
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 172
    const-string/jumbo v3, "s\u540e\u786e\u8ba4\u5173\u673a?"

    .line 171
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ui/OPTimerDialog;->setMessage(Ljava/lang/String;)V

    .line 174
    .end local v0    # "text":Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPTimerDialog$1;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPTimerDialog;->-get1(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPTimerDialog$1;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPTimerDialog;->-get1(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 180
    :cond_5
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPTimerDialog$1;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPTimerDialog;->-get5(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPTimerDialog$1;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPTimerDialog;->-get6(Lcom/oneplus/settings/ui/OPTimerDialog;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPTimerDialog$1;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPTimerDialog;->-get5(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 182
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPTimerDialog$1;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPTimerDialog;->-get5(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->performClick()Z

    goto/16 :goto_0

    .line 184
    :cond_6
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPTimerDialog$1;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPTimerDialog;->-get5(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
