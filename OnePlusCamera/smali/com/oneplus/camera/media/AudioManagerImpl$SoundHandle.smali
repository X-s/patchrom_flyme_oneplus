.class final Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;
.super Lcom/oneplus/base/Handle;
.source "AudioManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/media/AudioManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SoundHandle"
.end annotation


# instance fields
.field public isLoaded:Z

.field public pendingStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;",
            ">;"
        }
    .end annotation
.end field

.field public final resourceId:I

.field public soundId:I

.field public final streamType:I

.field final synthetic this$0:Lcom/oneplus/camera/media/AudioManagerImpl;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/media/AudioManagerImpl;III)V
    .locals 1
    .param p2, "resId"    # I
    .param p3, "streamType"    # I
    .param p4, "soundId"    # I

    .prologue
    .line 42
    iput-object p1, p0, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->this$0:Lcom/oneplus/camera/media/AudioManagerImpl;

    .line 43
    const-string v0, "Sound"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 44
    iput p2, p0, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->resourceId:I

    .line 45
    iput p3, p0, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->streamType:I

    .line 46
    iput p4, p0, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->soundId:I

    .line 47
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->this$0:Lcom/oneplus/camera/media/AudioManagerImpl;

    # invokes: Lcom/oneplus/camera/media/AudioManagerImpl;->unloadSound(Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;)V
    invoke-static {v0, p0}, Lcom/oneplus/camera/media/AudioManagerImpl;->access$100(Lcom/oneplus/camera/media/AudioManagerImpl;Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;)V

    .line 53
    return-void
.end method
