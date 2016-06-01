.class Lcom/waves/maxxaudio/MaxxAudioService$1$1;
.super Ljava/lang/Object;
.source "MaxxAudioService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waves/maxxaudio/MaxxAudioService$1;->onError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waves/maxxaudio/MaxxAudioService$1;


# direct methods
.method constructor <init>(Lcom/waves/maxxaudio/MaxxAudioService$1;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/waves/maxxaudio/MaxxAudioService$1$1;->this$1:Lcom/waves/maxxaudio/MaxxAudioService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 354
    # invokes: Lcom/waves/maxxaudio/MaxxAudioService;->EffectRelease()Z
    invoke-static {}, Lcom/waves/maxxaudio/MaxxAudioService;->access$500()Z

    .line 355
    # invokes: Lcom/waves/maxxaudio/MaxxAudioService;->EffectCreate()Z
    invoke-static {}, Lcom/waves/maxxaudio/MaxxAudioService;->access$600()Z

    move-result v0

    .line 356
    .local v0, "retVal":Z
    const-string v1, "Effect create failed!"

    invoke-static {v0, v1}, Lcom/waves/maxxaudio/WavesFXLogger;->Assert(ZLjava/lang/String;)V

    .line 358
    if-eqz v0, :cond_0

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Running on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/waves/maxxaudio/WavesFXLogger;->Log(Ljava/lang/String;)V

    .line 363
    :cond_0
    iget-object v1, p0, Lcom/waves/maxxaudio/MaxxAudioService$1$1;->this$1:Lcom/waves/maxxaudio/MaxxAudioService$1;

    iget-object v1, v1, Lcom/waves/maxxaudio/MaxxAudioService$1;->this$0:Lcom/waves/maxxaudio/MaxxAudioService;

    # invokes: Lcom/waves/maxxaudio/MaxxAudioService;->StartService()V
    invoke-static {v1}, Lcom/waves/maxxaudio/MaxxAudioService;->access$700(Lcom/waves/maxxaudio/MaxxAudioService;)V

    .line 364
    return-void
.end method
