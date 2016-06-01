.class Lcom/oneplus/tuner/fragment/CommonStyleFragment$1;
.super Landroid/os/Handler;
.source "CommonStyleFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/tuner/fragment/CommonStyleFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/fragment/CommonStyleFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/fragment/CommonStyleFragment;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment$1;->this$0:Lcom/oneplus/tuner/fragment/CommonStyleFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 114
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 123
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 124
    return-void

    .line 116
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment$1;->this$0:Lcom/oneplus/tuner/fragment/CommonStyleFragment;

    # invokes: Lcom/oneplus/tuner/fragment/CommonStyleFragment;->initData()V
    invoke-static {v0}, Lcom/oneplus/tuner/fragment/CommonStyleFragment;->access$000(Lcom/oneplus/tuner/fragment/CommonStyleFragment;)V

    .line 117
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment$1;->this$0:Lcom/oneplus/tuner/fragment/CommonStyleFragment;

    iget-object v0, v0, Lcom/oneplus/tuner/fragment/CommonStyleFragment;->mAdapter:Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;

    invoke-virtual {v0}, Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method
