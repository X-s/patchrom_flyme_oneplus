.class Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient$1;
.super Ljava/lang/Object;
.source "MaxxAudioService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;->setEnabled(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;Z)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient$1;->this$1:Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;

    iput-boolean p2, p0, Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient$1;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 79
    iget-object v1, p0, Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient$1;->this$1:Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;

    iget-object v1, v1, Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;->this$0:Lcom/waves/maxxaudio/MaxxAudioService;

    iget-boolean v2, p0, Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient$1;->val$enabled:Z

    invoke-virtual {v1, v2}, Lcom/waves/maxxaudio/MaxxAudioService;->setEnabled(Z)Z

    move-result v0

    .line 80
    .local v0, "ret":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MaxxAudioService.this.setEnabled ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/waves/maxxaudio/WavesFXLogger;->Log(Ljava/lang/String;)V

    .line 82
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0509--MaxxAudioService--setEnabled(*)--ret "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void
.end method
