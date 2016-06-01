.class public Lcom/waves/maxxaudio/MaxxAudioManager;
.super Ljava/lang/Object;
.source "MaxxAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waves/maxxaudio/MaxxAudioManager$PendingOperations;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MaxxAudioManager"

.field private static mLock:Ljava/lang/Object;

.field private static mMaxxAudioManager:Lcom/waves/maxxaudio/MaxxAudioManager;


# instance fields
.field mPendingOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waves/maxxaudio/MaxxAudioManager$PendingOperations;",
            ">;"
        }
    .end annotation
.end field

.field private mWavesFXClient:Lcom/waves/maxxaudio/IWavesFXClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/waves/maxxaudio/MaxxAudioManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/waves/maxxaudio/MaxxAudioManager;->mPendingOperations:Ljava/util/ArrayList;

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waves/maxxaudio/MaxxAudioManager;->mWavesFXClient:Lcom/waves/maxxaudio/IWavesFXClient;

    .line 81
    return-void
.end method

.method private checkPendings()V
    .locals 5

    .prologue
    .line 104
    const-string v3, "MaxxAudioManager"

    const-string v4, "checkPendings start"

    invoke-static {v3, v4}, Lcom/oneplus/tuner/utillty/AudioTunerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v3, p0, Lcom/waves/maxxaudio/MaxxAudioManager;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 108
    .local v0, "count":I
    const/4 v2, 0x0

    .line 110
    .local v2, "pending":Lcom/waves/maxxaudio/MaxxAudioManager$PendingOperations;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 112
    iget-object v3, p0, Lcom/waves/maxxaudio/MaxxAudioManager;->mPendingOperations:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "pending":Lcom/waves/maxxaudio/MaxxAudioManager$PendingOperations;
    check-cast v2, Lcom/waves/maxxaudio/MaxxAudioManager$PendingOperations;

    .line 113
    .restart local v2    # "pending":Lcom/waves/maxxaudio/MaxxAudioManager$PendingOperations;
    invoke-virtual {v2}, Lcom/waves/maxxaudio/MaxxAudioManager$PendingOperations;->operation()V

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    :cond_0
    const-string v3, "MaxxAudioManager"

    const-string v4, "checkPendings end"

    invoke-static {v3, v4}, Lcom/oneplus/tuner/utillty/AudioTunerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public static getInstance()Lcom/waves/maxxaudio/MaxxAudioManager;
    .locals 2

    .prologue
    .line 85
    sget-object v1, Lcom/waves/maxxaudio/MaxxAudioManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 87
    :try_start_0
    sget-object v0, Lcom/waves/maxxaudio/MaxxAudioManager;->mMaxxAudioManager:Lcom/waves/maxxaudio/MaxxAudioManager;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/waves/maxxaudio/MaxxAudioManager;

    invoke-direct {v0}, Lcom/waves/maxxaudio/MaxxAudioManager;-><init>()V

    sput-object v0, Lcom/waves/maxxaudio/MaxxAudioManager;->mMaxxAudioManager:Lcom/waves/maxxaudio/MaxxAudioManager;

    .line 91
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    sget-object v0, Lcom/waves/maxxaudio/MaxxAudioManager;->mMaxxAudioManager:Lcom/waves/maxxaudio/MaxxAudioManager;

    return-object v0

    .line 91
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public effectLoadPresets(Ljava/lang/String;)V
    .locals 6
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 245
    iget-object v2, p0, Lcom/waves/maxxaudio/MaxxAudioManager;->mWavesFXClient:Lcom/waves/maxxaudio/IWavesFXClient;

    if-eqz v2, :cond_1

    .line 247
    :try_start_0
    sget-boolean v2, Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;->mHeadsetPlugged:Z

    if-eqz v2, :cond_0

    .line 248
    iget-object v2, p0, Lcom/waves/maxxaudio/MaxxAudioManager;->mWavesFXClient:Lcom/waves/maxxaudio/IWavesFXClient;

    invoke-interface {v2, p1}, Lcom/waves/maxxaudio/IWavesFXClient;->effectLoadPresets(Ljava/lang/String;)V

    .line 267
    :goto_0
    return-void

    .line 250
    :cond_0
    const-string v2, "MaxxAudioManager"

    const-string v3, "MaxxAudioManager effectLoadPresets error, HeadsetPlugReceiver.mHeadsetPlugged = false"

    invoke-static {v2, v3}, Lcom/oneplus/tuner/utillty/AudioTunerLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 254
    :catch_0
    move-exception v1

    .line 255
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 258
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    iget-object v2, p0, Lcom/waves/maxxaudio/MaxxAudioManager;->mPendingOperations:Ljava/util/ArrayList;

    new-instance v3, Lcom/waves/maxxaudio/MaxxAudioManager$PendingOperations;

    const/4 v4, 0x7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/waves/maxxaudio/MaxxAudioManager$PendingOperations;-><init>(Lcom/waves/maxxaudio/MaxxAudioManager;ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    const-string v2, "MaxxAudioManager"

    const-string v3, "MaxxAudioManager effectLoadPresets error, mWavesFXClient = null"

    invoke-static {v2, v3}, Lcom/oneplus/tuner/utillty/AudioTunerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public effectSavePresets()V
    .locals 6

    .prologue
    .line 221
    iget-object v2, p0, Lcom/waves/maxxaudio/MaxxAudioManager;->mWavesFXClient:Lcom/waves/maxxaudio/IWavesFXClient;

    if-eqz v2, :cond_1

    .line 223
    :try_start_0
    sget-boolean v2, Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;->mHeadsetPlugged:Z

    if-eqz v2, :cond_0

    .line 224
    iget-object v2, p0, Lcom/waves/maxxaudio/MaxxAudioManager;->mWavesFXClient:Lcom/waves/maxxaudio/IWavesFXClient;

    invoke-interface {v2}, Lcom/waves/maxxaudio/IWavesFXClient;->effectSavePresets()V

    .line 242
    :goto_0
    return-void

    .line 226
    :cond_0
    const-string v2, "MaxxAudioManager"

    const-string v3, "CommunityApplication effectSavePresets error, HeadsetPlugReceiver.mHeadsetPlugged = false"

    invoke-static {v2, v3}, Lcom/oneplus/tuner/utillty/AudioTunerLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    :catch_0
    move-exception v1

    .line 231
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 234
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/waves/maxxaudio/MaxxAudioManager;->mPendingOperations:Ljava/util/ArrayList;

    new-instance v3, Lcom/waves/maxxaudio/MaxxAudioManager$PendingOperations;

    const/4 v4, 0x6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/waves/maxxaudio/MaxxAudioManager$PendingOperations;-><init>(Lcom/waves/maxxaudio/MaxxAudioManager;ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    const-string v2, "MaxxAudioManager"

    const-string v3, "MaxxAudioManager effectSavePresets error, mWavesFXClient = null"

    invoke-static {v2, v3}, Lcom/oneplus/tuner/utillty/AudioTunerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMaxxValues()V
    .locals 6

    .prologue
    .line 289
    iget-object v2, p0, Lcom/waves/maxxaudio/MaxxAudioManager;->mWavesFXClient:Lcom/waves/maxxaudio/IWavesFXClient;

    if-eqz v2, :cond_0

    .line 291
    :try_start_0
    iget-object v2, p0, Lcom/waves/maxxaudio/MaxxAudioManager;->mWavesFXClient:Lcom/waves/maxxaudio/IWavesFXClient;

    invoke-interface {v2}, Lcom/waves/maxxaudio/IWavesFXClient;->getMaxxValues()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :goto_0
    return-void

    .line 292
    :catch_0
    move-exception v1

    .line 293
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 296
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 297
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/waves/maxxaudio/MaxxAudioManager;->mPendingOperations:Ljava/util/ArrayList;

    new-instance v3, Lcom/waves/maxxaudio/MaxxAudioManager$PendingOperations;

    const/16 v4, 0x9

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/waves/maxxaudio/MaxxAudioManager$PendingOperations;-><init>(Lcom/waves/maxxaudio/MaxxAudioManager;ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    const-string v2, "MaxxAudioManager"

    const-string v3, "MaxxAudioManager getMaxxValues error, mWavesFXClient = null"

    invoke-static {v2, v3}, Lcom/oneplus/tuner/utillty/AudioTunerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getWavesFXClient()Lcom/waves/maxxaudio/IWavesFXClient;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/waves/maxxaudio/MaxxAudioManager;->mWavesFXClient:Lcom/waves/maxxaudio/IWavesFXClient;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 5

    .prologue
    .line 176
    iget-object v2, p0, Lcom/waves/maxxaudio/MaxxAudioManager;->mWavesFXClient:Lcom/waves/maxxaudio/IWavesFXClient;

    if-eqz v2, :cond_0

    .line 178
    :try_start_0
    iget-object v2, p0, Lcom/waves/maxxaudio/MaxxAudioManager;->mWavesFXClient:Lcom/waves/maxxaudio/IWavesFXClient;

    invoke-interface {v2}, Lcom/waves/maxxaudio/IWavesFXClient;->isEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 190
    :goto_0
    return v2

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 190
    const/4 v2, 0x1

    goto :goto_0

    .line 183
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v1, Lcom/waves/maxxaudio/WavesFXSharedPreference;

    invoke-static {}, Lcom/oppo/tribune/CommunityApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com_oneplus_tuner_wavesfx"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/waves/maxxaudio/WavesFXSharedPreference;-><init>(Landroid/content/SharedPreferences;)V

    .line 187
    .local v1, "sharedPreferences":Lcom/waves/maxxaudio/WavesFXSharedPreference;
    invoke-virtual {v1}, Lcom/waves/maxxaudio/WavesFXSharedPreference;->isEnabled()Z

    move-result v2

    goto :goto_0
.end method

.method public setClient(Lcom/waves/maxxaudio/IWavesFXClient;)V
    .locals 0
    .param p1, "client"    # Lcom/waves/maxxaudio/IWavesFXClient;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/waves/maxxaudio/MaxxAudioManager;->mWavesFXClient:Lcom/waves/maxxaudio/IWavesFXClient;

    .line 99
    invoke-direct {p0}, Lcom/waves/maxxaudio/MaxxAudioManager;->checkPendings()V

    .line 100
    return-void
.end method

.method public setEnabled(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    .line 148
    iget-object v2, p0, Lcom/waves/maxxaudio/MaxxAudioManager;->mWavesFXClient:Lcom/waves/maxxaudio/IWavesFXClient;

    if-eqz v2, :cond_0

    .line 150
    :try_start_0
    iget-object v2, p0, Lcom/waves/maxxaudio/MaxxAudioManager;->mWavesFXClient:Lcom/waves/maxxaudio/IWavesFXClient;

    invoke-interface {v2, p1}, Lcom/waves/maxxaudio/IWavesFXClient;->setEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 155
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 157
    iget-object v2, p0, Lcom/waves/maxxaudio/MaxxAudioManager;->mPendingOperations:Ljava/util/ArrayList;

    new-instance v3, Lcom/waves/maxxaudio/MaxxAudioManager$PendingOperations;

    const/4 v4, 0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/waves/maxxaudio/MaxxAudioManager$PendingOperations;-><init>(Lcom/waves/maxxaudio/MaxxAudioManager;ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    const-string v2, "MaxxAudioManager"

    const-string v3, "MaxxAudioManager setEnabled error, mWavesFXClient = null"

    invoke-static {v2, v3}, Lcom/oneplus/tuner/utillty/AudioTunerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setMediaType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 166
    iget-object v1, p0, Lcom/waves/maxxaudio/MaxxAudioManager;->mWavesFXClient:Lcom/waves/maxxaudio/IWavesFXClient;

    if-eqz v1, :cond_0

    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/waves/maxxaudio/MaxxAudioManager;->mWavesFXClient:Lcom/waves/maxxaudio/IWavesFXClient;

    invoke-interface {v1, p1}, Lcom/waves/maxxaudio/IWavesFXClient;->setMediaType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setOutputMode(I)V
    .locals 6
    .param p1, "mode"    # I

    .prologue
    .line 270
    iget-object v2, p0, Lcom/waves/maxxaudio/MaxxAudioManager;->mWavesFXClient:Lcom/waves/maxxaudio/IWavesFXClient;

    if-eqz v2, :cond_0

    .line 272
    :try_start_0
    iget-object v2, p0, Lcom/waves/maxxaudio/MaxxAudioManager;->mWavesFXClient:Lcom/waves/maxxaudio/IWavesFXClient;

    invoke-interface {v2, p1}, Lcom/waves/maxxaudio/IWavesFXClient;->setOutputMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :goto_0
    return-void

    .line 273
    :catch_0
    move-exception v1

    .line 274
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 277
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 279
    iget-object v2, p0, Lcom/waves/maxxaudio/MaxxAudioManager;->mPendingOperations:Ljava/util/ArrayList;

    new-instance v3, Lcom/waves/maxxaudio/MaxxAudioManager$PendingOperations;

    const/16 v4, 0x8

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/waves/maxxaudio/MaxxAudioManager$PendingOperations;-><init>(Lcom/waves/maxxaudio/MaxxAudioManager;ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    const-string v2, "MaxxAudioManager"

    const-string v3, "MaxxAudioManager setOutputMode error, mWavesFXClient = null"

    invoke-static {v2, v3}, Lcom/oneplus/tuner/utillty/AudioTunerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setParam(IF)V
    .locals 6
    .param p1, "paramInt"    # I
    .param p2, "paramDouble"    # F

    .prologue
    .line 122
    iget-object v2, p0, Lcom/waves/maxxaudio/MaxxAudioManager;->mWavesFXClient:Lcom/waves/maxxaudio/IWavesFXClient;

    if-eqz v2, :cond_1

    .line 124
    :try_start_0
    sget-boolean v2, Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;->mHeadsetPlugged:Z

    if-eqz v2, :cond_0

    .line 125
    iget-object v2, p0, Lcom/waves/maxxaudio/MaxxAudioManager;->mWavesFXClient:Lcom/waves/maxxaudio/IWavesFXClient;

    invoke-interface {v2, p1, p2}, Lcom/waves/maxxaudio/IWavesFXClient;->setParam(IF)Z

    .line 145
    :goto_0
    return-void

    .line 127
    :cond_0
    const-string v2, "MaxxAudioManager"

    const-string v3, "MaxxAudioManager setParam error, HeadsetPlugReceiver.mHeadsetPlugged = false"

    invoke-static {v2, v3}, Lcom/oneplus/tuner/utillty/AudioTunerLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 135
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 139
    iget-object v2, p0, Lcom/waves/maxxaudio/MaxxAudioManager;->mPendingOperations:Ljava/util/ArrayList;

    new-instance v3, Lcom/waves/maxxaudio/MaxxAudioManager$PendingOperations;

    const/4 v4, 0x4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/waves/maxxaudio/MaxxAudioManager$PendingOperations;-><init>(Lcom/waves/maxxaudio/MaxxAudioManager;ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    const-string v2, "MaxxAudioManager"

    const-string v3, "MaxxAudioManager setParam error, mWavesFXClient = null"

    invoke-static {v2, v3}, Lcom/oneplus/tuner/utillty/AudioTunerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setParamSync(IF)V
    .locals 6
    .param p1, "paramInt"    # I
    .param p2, "paramDouble"    # F

    .prologue
    .line 194
    iget-object v2, p0, Lcom/waves/maxxaudio/MaxxAudioManager;->mWavesFXClient:Lcom/waves/maxxaudio/IWavesFXClient;

    if-eqz v2, :cond_1

    .line 196
    :try_start_0
    sget-boolean v2, Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;->mHeadsetPlugged:Z

    if-eqz v2, :cond_0

    .line 197
    iget-object v2, p0, Lcom/waves/maxxaudio/MaxxAudioManager;->mWavesFXClient:Lcom/waves/maxxaudio/IWavesFXClient;

    invoke-interface {v2, p1, p2}, Lcom/waves/maxxaudio/IWavesFXClient;->setParamSync(IF)Z

    .line 218
    :goto_0
    return-void

    .line 199
    :cond_0
    const-string v2, "MaxxAudioManager"

    const-string v3, "MaxxAudioManager setParamSync error, HeadsetPlugReceiver.mHeadsetPlugged = false"

    invoke-static {v2, v3}, Lcom/oneplus/tuner/utillty/AudioTunerLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v1

    .line 204
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 207
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 209
    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 211
    iget-object v2, p0, Lcom/waves/maxxaudio/MaxxAudioManager;->mPendingOperations:Ljava/util/ArrayList;

    new-instance v3, Lcom/waves/maxxaudio/MaxxAudioManager$PendingOperations;

    const/4 v4, 0x5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/waves/maxxaudio/MaxxAudioManager$PendingOperations;-><init>(Lcom/waves/maxxaudio/MaxxAudioManager;ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    const-string v2, "MaxxAudioManager"

    const-string v3, "MaxxAudioManager setParamSync error, mWavesFXClient = null"

    invoke-static {v2, v3}, Lcom/oneplus/tuner/utillty/AudioTunerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
