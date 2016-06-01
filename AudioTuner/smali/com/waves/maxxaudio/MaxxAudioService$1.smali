.class Lcom/waves/maxxaudio/MaxxAudioService$1;
.super Ljava/lang/Object;
.source "MaxxAudioService.java"

# interfaces
.implements Landroid/media/AudioSystem$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waves/maxxaudio/MaxxAudioService;->onCreate()V
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
    .line 346
    iput-object p1, p0, Lcom/waves/maxxaudio/MaxxAudioService$1;->this$0:Lcom/waves/maxxaudio/MaxxAudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 4
    .param p1, "error"    # I

    .prologue
    .line 349
    const-string v0, "MaxxAudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setErrorCallback error=  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 351
    new-instance v0, Lcom/waves/maxxaudio/MaxxAudioService$1$1;

    invoke-direct {v0, p0}, Lcom/waves/maxxaudio/MaxxAudioService$1$1;-><init>(Lcom/waves/maxxaudio/MaxxAudioService$1;)V

    const-wide/16 v2, 0x5dc

    invoke-static {v0, v2, v3}, Lcom/oneplus/tuner/manager/OppoTunerManager;->postSyncMainRunnableDelay(Ljava/lang/Runnable;J)V

    .line 367
    :cond_0
    return-void
.end method
