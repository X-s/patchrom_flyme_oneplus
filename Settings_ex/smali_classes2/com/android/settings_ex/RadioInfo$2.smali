.class Lcom/android/settings_ex/RadioInfo$2;
.super Landroid/os/Handler;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/RadioInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/RadioInfo;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/settings_ex/RadioInfo$2;->this$0:Lcom/android/settings_ex/RadioInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 295
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 327
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 297
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 298
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 299
    iget-object v2, p0, Lcom/android/settings_ex/RadioInfo$2;->this$0:Lcom/android/settings_ex/RadioInfo;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    const/4 v3, 0x0

    aget v1, v1, v3

    invoke-static {v2, v1}, Lcom/android/settings_ex/RadioInfo;->-wrap19(Lcom/android/settings_ex/RadioInfo;I)V

    goto :goto_0

    .line 302
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo$2;->this$0:Lcom/android/settings_ex/RadioInfo;

    invoke-static {}, Lcom/android/settings_ex/RadioInfo;->-get12()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lcom/android/settings_ex/RadioInfo;->-wrap19(Lcom/android/settings_ex/RadioInfo;I)V

    goto :goto_0

    .line 306
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 307
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo$2;->this$0:Lcom/android/settings_ex/RadioInfo;

    const-string/jumbo v2, "Set preferred network type failed."

    invoke-static {v1, v2}, Lcom/android/settings_ex/RadioInfo;->-wrap2(Lcom/android/settings_ex/RadioInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 312
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 313
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    .line 314
    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo$2;->this$0:Lcom/android/settings_ex/RadioInfo;

    invoke-static {v1}, Lcom/android/settings_ex/RadioInfo;->-get16(Lcom/android/settings_ex/RadioInfo;)Landroid/widget/EditText;

    move-result-object v1

    const-string/jumbo v2, "refresh error"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 316
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo$2;->this$0:Lcom/android/settings_ex/RadioInfo;

    invoke-static {v1}, Lcom/android/settings_ex/RadioInfo;->-get16(Lcom/android/settings_ex/RadioInfo;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 320
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo$2;->this$0:Lcom/android/settings_ex/RadioInfo;

    invoke-static {v1}, Lcom/android/settings_ex/RadioInfo;->-get17(Lcom/android/settings_ex/RadioInfo;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 321
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 322
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo$2;->this$0:Lcom/android/settings_ex/RadioInfo;

    invoke-static {v1}, Lcom/android/settings_ex/RadioInfo;->-get16(Lcom/android/settings_ex/RadioInfo;)Landroid/widget/EditText;

    move-result-object v1

    const-string/jumbo v2, "update error"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 295
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
