.class Lcom/android/server/audio/AudioService$AudioSystemThread;
.super Ljava/lang/Thread;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioSystemThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 1

    .prologue
    .line 4384
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioSystemThread;->this$0:Lcom/android/server/audio/AudioService;

    .line 4385
    const-string v0, "AudioService"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 4386
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 4391
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 4393
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioSystemThread;->this$0:Lcom/android/server/audio/AudioService;

    monitor-enter v1

    .line 4394
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioSystemThread;->this$0:Lcom/android/server/audio/AudioService;

    new-instance v2, Lcom/android/server/audio/AudioService$AudioHandler;

    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioSystemThread;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/audio/AudioService$AudioHandler;-><init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V

    # setter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v0, v2}, Lcom/android/server/audio/AudioService;->access$002(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$AudioHandler;)Lcom/android/server/audio/AudioService$AudioHandler;

    .line 4397
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioSystemThread;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 4398
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4401
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 4402
    return-void

    .line 4398
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
