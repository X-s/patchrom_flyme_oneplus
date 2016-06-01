.class Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient$7;
.super Ljava/lang/Object;
.source "MaxxAudioService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;->getMaxxValues()V
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
    .line 190
    iput-object p1, p0, Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient$7;->this$1:Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 195
    invoke-static {}, Lcom/waves/maxxaudio/MaxxAudioService;->onGetMaxxValuePart()V

    .line 196
    return-void
.end method
