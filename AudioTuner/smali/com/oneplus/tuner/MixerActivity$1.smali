.class Lcom/oneplus/tuner/MixerActivity$1;
.super Landroid/os/Handler;
.source "MixerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/tuner/MixerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/MixerActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/MixerActivity;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/oneplus/tuner/MixerActivity$1;->this$0:Lcom/oneplus/tuner/MixerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 87
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 96
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 97
    return-void

    .line 89
    :pswitch_0
    const-string v0, "shuqi"

    const-string v1, "MSG_REFRESH_UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity$1;->this$0:Lcom/oneplus/tuner/MixerActivity;

    iget-object v1, v0, Lcom/oneplus/tuner/MixerActivity;->mSaveButton:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity$1;->this$0:Lcom/oneplus/tuner/MixerActivity;

    # getter for: Lcom/oneplus/tuner/MixerActivity;->mStatus:I
    invoke-static {v0}, Lcom/oneplus/tuner/MixerActivity;->access$000(Lcom/oneplus/tuner/MixerActivity;)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity$1;->this$0:Lcom/oneplus/tuner/MixerActivity;

    const v2, 0x7f0c0596

    # invokes: Lcom/oneplus/tuner/MixerActivity;->getStr(I)Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/oneplus/tuner/MixerActivity;->access$100(Lcom/oneplus/tuner/MixerActivity;I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity$1;->this$0:Lcom/oneplus/tuner/MixerActivity;

    # setter for: Lcom/oneplus/tuner/MixerActivity;->mClickableFlag:Z
    invoke-static {v0, v3}, Lcom/oneplus/tuner/MixerActivity;->access$202(Lcom/oneplus/tuner/MixerActivity;Z)Z

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity$1;->this$0:Lcom/oneplus/tuner/MixerActivity;

    const v2, 0x7f0c0595

    # invokes: Lcom/oneplus/tuner/MixerActivity;->getStr(I)Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/oneplus/tuner/MixerActivity;->access$100(Lcom/oneplus/tuner/MixerActivity;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
