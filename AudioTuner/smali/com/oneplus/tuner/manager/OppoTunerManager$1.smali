.class final Lcom/oneplus/tuner/manager/OppoTunerManager$1;
.super Ljava/lang/Object;
.source "OppoTunerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/tuner/manager/OppoTunerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 97
    invoke-static {}, Lcom/waves/maxxaudio/MaxxAudioManager;->getInstance()Lcom/waves/maxxaudio/MaxxAudioManager;

    move-result-object v0

    .line 99
    .local v0, "manager":Lcom/waves/maxxaudio/MaxxAudioManager;
    invoke-virtual {v0}, Lcom/waves/maxxaudio/MaxxAudioManager;->getWavesFXClient()Lcom/waves/maxxaudio/IWavesFXClient;

    move-result-object v1

    if-nez v1, :cond_1

    .line 100
    # getter for: Lcom/oneplus/tuner/manager/OppoTunerManager;->mMainHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->access$000()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 101
    # getter for: Lcom/oneplus/tuner/manager/OppoTunerManager;->mMainHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->access$000()Landroid/os/Handler;

    move-result-object v1

    # getter for: Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedDataChangeRunnable:Ljava/lang/Runnable;
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->access$100()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    # getter for: Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedDataChangeListener:Lcom/oneplus/tuner/listener/SoundEffectUsedDataChangeListener;
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->access$200()Lcom/oneplus/tuner/listener/SoundEffectUsedDataChangeListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 107
    # getter for: Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedDataChangeListener:Lcom/oneplus/tuner/listener/SoundEffectUsedDataChangeListener;
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->access$200()Lcom/oneplus/tuner/listener/SoundEffectUsedDataChangeListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/oneplus/tuner/listener/SoundEffectUsedDataChangeListener;->onEffectUsedDataChanged()V

    .line 112
    :goto_1
    sget-object v1, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget-boolean v1, v1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mIsDefault:Z

    if-eqz v1, :cond_3

    .line 113
    sget-object v1, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget-object v1, v1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mStyle:Ljava/lang/String;

    invoke-static {v1}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->putUsedEffectStyle(Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_2
    # invokes: Lcom/oneplus/tuner/manager/OppoTunerManager;->setEffectUsed()V
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->access$300()V

    goto :goto_1

    .line 116
    :cond_3
    const-string v1, ""

    invoke-static {v1}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->putUsedEffectStyle(Ljava/lang/String;)V

    goto :goto_0
.end method
