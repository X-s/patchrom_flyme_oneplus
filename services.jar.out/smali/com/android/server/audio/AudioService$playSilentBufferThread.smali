.class Lcom/android/server/audio/AudioService$playSilentBufferThread;
.super Ljava/lang/Thread;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "playSilentBufferThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    .prologue
    .line 872
    iput-object p1, p0, Lcom/android/server/audio/AudioService$playSilentBufferThread;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/16 v9, 0x3e80

    const/16 v2, 0x1f40

    const/4 v3, 0x4

    const/4 v4, 0x2

    .line 875
    const-string v1, "AudioService"

    const-string v6, "playSilentBufferToInitPA"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    invoke-static {}, Lcom/android/server/audio/AudioService;->isASBluetoothA2dpOn()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/server/audio/AudioService;->isASWiredHeadsetOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 895
    :cond_0
    :goto_0
    return-void

    .line 879
    :cond_1
    invoke-static {v2, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v5

    .line 880
    .local v5, "bufferSize":I
    if-ltz v5, :cond_0

    .line 883
    new-array v7, v9, [B

    .line 884
    .local v7, "audioData":[B
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 886
    .local v0, "mAudioTrack":Landroid/media/AudioTrack;
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 887
    const/4 v1, 0x0

    invoke-virtual {v0, v7, v1, v9}, Landroid/media/AudioTrack;->write([BII)I

    .line 889
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v2, 0x4b0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 893
    :goto_1
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 894
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    goto :goto_0

    .line 890
    :catch_0
    move-exception v8

    .line 891
    .local v8, "e":Ljava/lang/InterruptedException;
    const-string v1, "AudioService"

    const-string v2, "Interrupted while waiting on playback compelete"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
