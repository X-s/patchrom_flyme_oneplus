.class Lcom/waves/maxxaudio/MaxxaudioReceiver$1;
.super Landroid/os/Handler;
.source "MaxxaudioReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waves/maxxaudio/MaxxaudioReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waves/maxxaudio/MaxxaudioReceiver;


# direct methods
.method constructor <init>(Lcom/waves/maxxaudio/MaxxaudioReceiver;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/waves/maxxaudio/MaxxaudioReceiver$1;->this$0:Lcom/waves/maxxaudio/MaxxaudioReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 18
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 27
    :goto_0
    return-void

    .line 20
    :pswitch_0
    iget-object v0, p0, Lcom/waves/maxxaudio/MaxxaudioReceiver$1;->this$0:Lcom/waves/maxxaudio/MaxxaudioReceiver;

    # getter for: Lcom/waves/maxxaudio/MaxxaudioReceiver;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/waves/maxxaudio/MaxxaudioReceiver;->access$000(Lcom/waves/maxxaudio/MaxxaudioReceiver;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/waves/maxxaudio/MaxxaudioReceiver$1;->this$0:Lcom/waves/maxxaudio/MaxxaudioReceiver;

    # getter for: Lcom/waves/maxxaudio/MaxxaudioReceiver;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/waves/maxxaudio/MaxxaudioReceiver;->access$000(Lcom/waves/maxxaudio/MaxxaudioReceiver;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/waves/maxxaudio/MaxxAudioService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 18
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
