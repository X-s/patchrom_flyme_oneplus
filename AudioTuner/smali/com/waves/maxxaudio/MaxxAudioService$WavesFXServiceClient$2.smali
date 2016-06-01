.class Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient$2;
.super Ljava/lang/Object;
.source "MaxxAudioService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;->setMediaType(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;I)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient$2;->this$1:Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;

    iput p2, p0, Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient$2;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient$2;->this$1:Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;

    iget-object v0, v0, Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;->this$0:Lcom/waves/maxxaudio/MaxxAudioService;

    iget v1, p0, Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient$2;->val$type:I

    # invokes: Lcom/waves/maxxaudio/MaxxAudioService;->SetMediaType(I)V
    invoke-static {v0, v1}, Lcom/waves/maxxaudio/MaxxAudioService;->access$000(Lcom/waves/maxxaudio/MaxxAudioService;I)V

    .line 100
    return-void
.end method
