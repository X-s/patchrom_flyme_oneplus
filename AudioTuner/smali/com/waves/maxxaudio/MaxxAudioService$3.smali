.class Lcom/waves/maxxaudio/MaxxAudioService$3;
.super Ljava/lang/Object;
.source "MaxxAudioService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waves/maxxaudio/MaxxAudioService;->onLoadPresets()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waves/maxxaudio/MaxxAudioService;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/waves/maxxaudio/MaxxAudioService;Z)V
    .locals 0

    .prologue
    .line 646
    iput-object p1, p0, Lcom/waves/maxxaudio/MaxxAudioService$3;->this$0:Lcom/waves/maxxaudio/MaxxAudioService;

    iput-boolean p2, p0, Lcom/waves/maxxaudio/MaxxAudioService$3;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 650
    iget-object v1, p0, Lcom/waves/maxxaudio/MaxxAudioService$3;->this$0:Lcom/waves/maxxaudio/MaxxAudioService;

    iget-boolean v2, p0, Lcom/waves/maxxaudio/MaxxAudioService$3;->val$enabled:Z

    invoke-virtual {v1, v2}, Lcom/waves/maxxaudio/MaxxAudioService;->setEnabled(Z)Z

    move-result v0

    .line 651
    .local v0, "ret":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MaxxAudioService.this.onLoadPresets ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/waves/maxxaudio/WavesFXLogger;->Log(Ljava/lang/String;)V

    .line 654
    return-void
.end method
