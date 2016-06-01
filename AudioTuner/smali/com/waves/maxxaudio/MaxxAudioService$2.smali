.class Lcom/waves/maxxaudio/MaxxAudioService$2;
.super Landroid/os/Handler;
.source "MaxxAudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waves/maxxaudio/MaxxAudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waves/maxxaudio/MaxxAudioService;


# direct methods
.method constructor <init>(Lcom/waves/maxxaudio/MaxxAudioService;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lcom/waves/maxxaudio/MaxxAudioService$2;->this$0:Lcom/waves/maxxaudio/MaxxAudioService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 462
    iget v0, p1, Landroid/os/Message;->what:I

    .line 466
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 467
    return-void
.end method
