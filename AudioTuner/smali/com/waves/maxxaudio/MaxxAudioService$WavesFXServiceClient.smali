.class public Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;
.super Lcom/waves/maxxaudio/IWavesFXClient$Stub;
.source "MaxxAudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waves/maxxaudio/MaxxAudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WavesFXServiceClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waves/maxxaudio/MaxxAudioService;


# direct methods
.method public constructor <init>(Lcom/waves/maxxaudio/MaxxAudioService;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;->this$0:Lcom/waves/maxxaudio/MaxxAudioService;

    invoke-direct {p0}, Lcom/waves/maxxaudio/IWavesFXClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public effectLoadPresets(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 165
    new-instance v0, Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient$5;

    invoke-direct {v0, p0, p1}, Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient$5;-><init>(Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/oneplus/tuner/manager/OppoTunerManager;->postSyncRunnable(Ljava/lang/Runnable;)V

    .line 173
    return-void
.end method

.method public effectSavePresets()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 153
    new-instance v0, Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient$4;

    invoke-direct {v0, p0}, Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient$4;-><init>(Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;)V

    invoke-static {v0}, Lcom/oneplus/tuner/manager/OppoTunerManager;->postSyncRunnable(Ljava/lang/Runnable;)V

    .line 161
    return-void
.end method

.method public getMaxxValues()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 190
    new-instance v0, Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient$7;

    invoke-direct {v0, p0}, Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient$7;-><init>(Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;)V

    invoke-static {v0}, Lcom/oneplus/tuner/manager/OppoTunerManager;->postSyncRunnable(Ljava/lang/Runnable;)V

    .line 200
    return-void
.end method

.method public isEnabled()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;->this$0:Lcom/waves/maxxaudio/MaxxAudioService;

    # getter for: Lcom/waves/maxxaudio/MaxxAudioService;->mSharedPreferences:Lcom/waves/maxxaudio/WavesFXSharedPreference;
    invoke-static {v0}, Lcom/waves/maxxaudio/MaxxAudioService;->access$200(Lcom/waves/maxxaudio/MaxxAudioService;)Lcom/waves/maxxaudio/WavesFXSharedPreference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;->this$0:Lcom/waves/maxxaudio/MaxxAudioService;

    new-instance v1, Lcom/waves/maxxaudio/WavesFXSharedPreference;

    iget-object v2, p0, Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;->this$0:Lcom/waves/maxxaudio/MaxxAudioService;

    # getter for: Lcom/waves/maxxaudio/MaxxAudioService;->mApplicationContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/waves/maxxaudio/MaxxAudioService;->access$300(Lcom/waves/maxxaudio/MaxxAudioService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "com_oneplus_tuner_wavesfx"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/waves/maxxaudio/WavesFXSharedPreference;-><init>(Landroid/content/SharedPreferences;)V

    # setter for: Lcom/waves/maxxaudio/MaxxAudioService;->mSharedPreferences:Lcom/waves/maxxaudio/WavesFXSharedPreference;
    invoke-static {v0, v1}, Lcom/waves/maxxaudio/MaxxAudioService;->access$202(Lcom/waves/maxxaudio/MaxxAudioService;Lcom/waves/maxxaudio/WavesFXSharedPreference;)Lcom/waves/maxxaudio/WavesFXSharedPreference;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;->this$0:Lcom/waves/maxxaudio/MaxxAudioService;

    # getter for: Lcom/waves/maxxaudio/MaxxAudioService;->mSharedPreferences:Lcom/waves/maxxaudio/WavesFXSharedPreference;
    invoke-static {v0}, Lcom/waves/maxxaudio/MaxxAudioService;->access$200(Lcom/waves/maxxaudio/MaxxAudioService;)Lcom/waves/maxxaudio/WavesFXSharedPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waves/maxxaudio/WavesFXSharedPreference;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public setEnabled(Z)Z
    .locals 1
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient$1;

    invoke-direct {v0, p0, p1}, Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient$1;-><init>(Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;Z)V

    invoke-static {v0}, Lcom/oneplus/tuner/manager/OppoTunerManager;->postSyncRunnable(Ljava/lang/Runnable;)V

    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method public setMediaType(I)V
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient$2;

    invoke-direct {v0, p0, p1}, Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient$2;-><init>(Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;I)V

    invoke-static {v0}, Lcom/oneplus/tuner/manager/OppoTunerManager;->postSyncRunnable(Ljava/lang/Runnable;)V

    .line 104
    return-void
.end method

.method public setOutputMode(I)V
    .locals 1
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 177
    new-instance v0, Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient$6;

    invoke-direct {v0, p0, p1}, Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient$6;-><init>(Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;I)V

    invoke-static {v0}, Lcom/oneplus/tuner/manager/OppoTunerManager;->postSyncRunnable(Ljava/lang/Runnable;)V

    .line 185
    return-void
.end method

.method public setParam(IF)Z
    .locals 1
    .param p1, "paramInt"    # I
    .param p2, "paramValue"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 109
    new-instance v0, Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient$3;-><init>(Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;IF)V

    invoke-static {v0}, Lcom/oneplus/tuner/manager/OppoTunerManager;->postSyncRunnable(Ljava/lang/Runnable;)V

    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public setParamSync(IF)Z
    .locals 4
    .param p1, "paramInt"    # I
    .param p2, "paramValue"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dsf MaxxAudioService.setParamSync paramInt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " paramValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/waves/maxxaudio/WavesFXLogger;->Log(Ljava/lang/String;)V

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "result":Z
    float-to-double v2, p2

    const/4 v1, -0x1

    # invokes: Lcom/waves/maxxaudio/MaxxAudioService;->EffectSetPresetParam(IDI)Z
    invoke-static {p1, v2, v3, v1}, Lcom/waves/maxxaudio/MaxxAudioService;->access$100(IDI)Z

    move-result v0

    .line 133
    return v0
.end method
