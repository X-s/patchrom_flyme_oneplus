.class Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient$6;
.super Ljava/lang/Object;
.source "MaxxAudioService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;->setOutputMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;I)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient$6;->this$1:Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;

    iput p2, p0, Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient$6;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient$6;->val$mode:I

    # invokes: Lcom/waves/maxxaudio/MaxxAudioService;->EffectSetOutputMode(I)Z
    invoke-static {v0}, Lcom/waves/maxxaudio/MaxxAudioService;->access$400(I)Z

    .line 182
    return-void
.end method
