.class Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient$5;
.super Ljava/lang/Object;
.source "MaxxAudioService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;->effectLoadPresets(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient$5;->this$1:Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;

    iput-object p2, p0, Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient$5;->val$type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient$5;->this$1:Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;

    iget-object v0, v0, Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;->this$0:Lcom/waves/maxxaudio/MaxxAudioService;

    iget-object v1, p0, Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient$5;->val$type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/waves/maxxaudio/MaxxAudioService;->onTypeChanged(Ljava/lang/String;)V

    .line 170
    return-void
.end method
