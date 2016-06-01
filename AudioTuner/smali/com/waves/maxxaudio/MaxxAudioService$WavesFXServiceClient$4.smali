.class Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient$4;
.super Ljava/lang/Object;
.source "MaxxAudioService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;->effectSavePresets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;


# direct methods
.method constructor <init>(Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient$4;->this$1:Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient$4;->this$1:Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;

    iget-object v0, v0, Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;->this$0:Lcom/waves/maxxaudio/MaxxAudioService;

    invoke-virtual {v0}, Lcom/waves/maxxaudio/MaxxAudioService;->onSavePresets()V

    .line 158
    return-void
.end method
