.class final Lcom/oneplus/camera/media/AudioManagerImpl;
.super Lcom/oneplus/camera/CameraComponent;
.source "AudioManagerImpl.java"

# interfaces
.implements Lcom/oneplus/camera/media/AudioManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/media/AudioManagerImpl$1;,
        Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;,
        Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;
    }
.end annotation


# instance fields
.field private final m_LoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

.field private final m_SoundHandles:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;",
            ">;>;"
        }
    .end annotation
.end field

.field private final m_SoundPools:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/media/SoundPool;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/oneplus/camera/media/AudioManagerImpl;Landroid/media/SoundPool;II)V
    .locals 0
    .param p1, "soundPool"    # Landroid/media/SoundPool;
    .param p2, "soundId"    # I
    .param p3, "status"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/media/AudioManagerImpl;->onSoundLoaded(Landroid/media/SoundPool;II)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/media/AudioManagerImpl;Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/media/AudioManagerImpl;->stopSound(Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/media/AudioManagerImpl;Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/media/AudioManagerImpl;->unloadSound(Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;)V

    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 81
    const-string/jumbo v0, "Camera Audio Manager"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/CameraComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 20
    new-instance v0, Lcom/oneplus/camera/media/AudioManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/media/AudioManagerImpl$1;-><init>(Lcom/oneplus/camera/media/AudioManagerImpl;)V

    iput-object v0, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->m_LoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    .line 28
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->m_SoundHandles:Ljava/util/Hashtable;

    .line 29
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->m_SoundPools:Ljava/util/Hashtable;

    .line 79
    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraThread;)V
    .locals 2
    .param p1, "cameraThread"    # Lcom/oneplus/camera/CameraThread;

    .prologue
    .line 85
    const-string/jumbo v0, "Camera Audio Manager"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/CameraComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraThread;Z)V

    .line 20
    new-instance v0, Lcom/oneplus/camera/media/AudioManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/media/AudioManagerImpl$1;-><init>(Lcom/oneplus/camera/media/AudioManagerImpl;)V

    iput-object v0, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->m_LoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    .line 28
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->m_SoundHandles:Ljava/util/Hashtable;

    .line 29
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->m_SoundPools:Ljava/util/Hashtable;

    .line 83
    return-void
.end method

.method private getSoundPool(IZ)Landroid/media/SoundPool;
    .locals 7
    .param p1, "streamType"    # I
    .param p2, "createNew"    # Z

    .prologue
    const/4 v6, 0x4

    .line 92
    iget-object v3, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->m_SoundPools:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/SoundPool;

    .line 93
    .local v1, "soundPool":Landroid/media/SoundPool;
    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 95
    iget-object v3, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "getSoundPool() - Create sound pool for stream type "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 97
    .local v0, "attrBuilder":Landroid/media/AudioAttributes$Builder;
    new-instance v2, Landroid/media/SoundPool$Builder;

    invoke-direct {v2}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 98
    .local v2, "soundPoolBuilder":Landroid/media/SoundPool$Builder;
    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    .line 99
    invoke-virtual {v0, v6}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 100
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    .line 101
    invoke-virtual {v2, v6}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    .line 102
    invoke-virtual {v2}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v1

    .line 103
    iget-object v3, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->m_LoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    invoke-virtual {v1, v3}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 104
    iget-object v3, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->m_SoundPools:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .end local v0    # "attrBuilder":Landroid/media/AudioAttributes$Builder;
    .end local v2    # "soundPoolBuilder":Landroid/media/SoundPool$Builder;
    :cond_0
    return-object v1
.end method

.method private onSoundLoaded(Landroid/media/SoundPool;II)V
    .locals 10
    .param p1, "soundPool"    # Landroid/media/SoundPool;
    .param p2, "soundId"    # I
    .param p3, "status"    # I

    .prologue
    .line 188
    const/4 v6, 0x0

    .line 189
    .local v6, "streamType":Ljava/lang/Integer;
    iget-object v7, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->m_SoundPools:Ljava/util/Hashtable;

    invoke-virtual {v7}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 191
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/media/SoundPool;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, p1, :cond_0

    .line 193
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "streamType":Ljava/lang/Integer;
    check-cast v6, Ljava/lang/Integer;

    .line 197
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/media/SoundPool;>;"
    :cond_1
    if-nez v6, :cond_3

    .line 199
    iget-object v7, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "onSoundLoaded() - Unknown sound pool"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    if-eqz p2, :cond_2

    .line 201
    invoke-virtual {p1, p2}, Landroid/media/SoundPool;->unload(I)Z

    .line 202
    :cond_2
    return-void

    .line 206
    :cond_3
    const/4 v5, 0x0

    .line 207
    .local v5, "soundHandle":Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;
    iget-object v7, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->m_SoundHandles:Ljava/util/Hashtable;

    invoke-virtual {v7, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 208
    .local v3, "handleList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;>;"
    if-eqz v3, :cond_4

    .line 210
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_4

    .line 212
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;

    .line 213
    .local v2, "handle":Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;
    iget v7, v2, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->soundId:I

    if-ne v7, p2, :cond_6

    .line 215
    move-object v5, v2

    .line 220
    .end local v2    # "handle":Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;
    .end local v4    # "i":I
    .end local v5    # "soundHandle":Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;
    :cond_4
    if-nez v5, :cond_7

    .line 222
    iget-object v7, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onSoundLoaded() - Unknown sound ID : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    if-eqz p2, :cond_5

    .line 224
    invoke-virtual {p1, p2}, Landroid/media/SoundPool;->unload(I)Z

    .line 225
    :cond_5
    return-void

    .line 210
    .restart local v2    # "handle":Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;
    .restart local v4    # "i":I
    .restart local v5    # "soundHandle":Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;
    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 228
    .end local v2    # "handle":Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;
    .end local v4    # "i":I
    .end local v5    # "soundHandle":Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;
    :cond_7
    iget-object v7, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "onSoundLoaded() - Handle : "

    invoke-static {v7, v8, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 231
    const/4 v7, 0x1

    iput-boolean v7, v5, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->isLoaded:Z

    .line 234
    iget-object v7, v5, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->pendingStreams:Ljava/util/List;

    if-eqz v7, :cond_9

    .line 236
    iget-object v7, v5, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->pendingStreams:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .restart local v4    # "i":I
    :goto_1
    if-ltz v4, :cond_8

    .line 237
    iget-object v7, v5, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->pendingStreams:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;

    invoke-direct {p0, v7}, Lcom/oneplus/camera/media/AudioManagerImpl;->playSound(Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;)Z

    .line 236
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 238
    :cond_8
    iget-object v7, v5, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->pendingStreams:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 185
    .end local v4    # "i":I
    :cond_9
    return-void
.end method

.method private playSound(Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;)Z
    .locals 10
    .param p1, "handle"    # Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;

    .prologue
    const/4 v9, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 294
    iget-object v1, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "playSound() - Sound handle : "

    iget-object v4, p1, Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;->sound:Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;

    const-string/jumbo v5, ", stream handle : "

    invoke-static {v1, v3, v4, v5, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 297
    iget-object v1, p1, Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;->sound:Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;

    iget v1, v1, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->streamType:I

    invoke-direct {p0, v1, v9}, Lcom/oneplus/camera/media/AudioManagerImpl;->getSoundPool(IZ)Landroid/media/SoundPool;

    move-result-object v0

    .line 305
    .local v0, "soundPool":Landroid/media/SoundPool;
    iget-object v1, p1, Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;->sound:Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;

    iget v1, v1, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->soundId:I

    iget v3, p1, Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    move v5, v8

    :goto_0
    const/4 v4, 0x2

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v7

    .line 306
    .local v7, "streamId":I
    if-nez v7, :cond_1

    .line 308
    iget-object v1, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "playSound() - Fail to play sound "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;->sound:Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    return v8

    .line 305
    .end local v7    # "streamId":I
    :cond_0
    const/4 v5, -0x1

    goto :goto_0

    .line 311
    .restart local v7    # "streamId":I
    :cond_1
    iput v7, p1, Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;->streamId:I

    .line 314
    return v9
.end method

.method private stopSound(Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;)V
    .locals 5
    .param p1, "handle"    # Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;

    .prologue
    const/4 v4, 0x0

    .line 322
    invoke-virtual {p0}, Lcom/oneplus/camera/media/AudioManagerImpl;->verifyAccess()V

    .line 324
    iget-object v2, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "stopSound() - Handle : "

    invoke-static {v2, v3, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 327
    iget-object v0, p1, Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;->sound:Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;

    .line 328
    .local v0, "soundHandle":Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;
    iget-object v2, v0, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->pendingStreams:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->pendingStreams:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 329
    return-void

    .line 332
    :cond_0
    iget-boolean v2, v0, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->isLoaded:Z

    if-nez v2, :cond_1

    .line 333
    return-void

    .line 336
    :cond_1
    iget v2, v0, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->streamType:I

    invoke-direct {p0, v2, v4}, Lcom/oneplus/camera/media/AudioManagerImpl;->getSoundPool(IZ)Landroid/media/SoundPool;

    move-result-object v1

    .line 337
    .local v1, "soundPool":Landroid/media/SoundPool;
    if-nez v1, :cond_2

    .line 339
    iget-object v2, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "stopSound() - No sound pool to stop"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    return-void

    .line 344
    :cond_2
    iget v2, p1, Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;->streamId:I

    if-eqz v2, :cond_3

    .line 346
    iget v2, p1, Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;->streamId:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->stop(I)V

    .line 347
    iput v4, p1, Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;->streamId:I

    .line 319
    :cond_3
    return-void
.end method

.method private unloadSound(Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;)V
    .locals 6
    .param p1, "handle"    # Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 356
    invoke-virtual {p0}, Lcom/oneplus/camera/media/AudioManagerImpl;->verifyAccess()V

    .line 358
    iget-object v2, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "unloadSound() - Handle : "

    invoke-static {v2, v3, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 361
    iput-object v5, p1, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->pendingStreams:Ljava/util/List;

    .line 364
    iget v2, p1, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->streamType:I

    invoke-direct {p0, v2, v4}, Lcom/oneplus/camera/media/AudioManagerImpl;->getSoundPool(IZ)Landroid/media/SoundPool;

    move-result-object v1

    .line 367
    .local v1, "soundPool":Landroid/media/SoundPool;
    iget v2, p1, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->soundId:I

    if-eqz v2, :cond_0

    .line 369
    if-eqz v1, :cond_2

    .line 370
    iget v2, p1, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->soundId:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->unload(I)Z

    .line 373
    :goto_0
    iput v4, p1, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->soundId:I

    .line 375
    :cond_0
    iput-boolean v4, p1, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->isLoaded:Z

    .line 378
    iget-object v2, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->m_SoundHandles:Ljava/util/Hashtable;

    iget v3, p1, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->streamType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 379
    .local v0, "handleList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;>;"
    if-eqz v0, :cond_1

    .line 380
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 353
    :cond_1
    return-void

    .line 372
    .end local v0    # "handleList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;>;"
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "unloadSound() - No sound pool to unload"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public loadSound(III)Lcom/oneplus/base/Handle;
    .locals 9
    .param p1, "resId"    # I
    .param p2, "streamType"    # I
    .param p3, "flags"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 115
    invoke-virtual {p0}, Lcom/oneplus/camera/media/AudioManagerImpl;->verifyAccess()V

    .line 116
    invoke-virtual {p0}, Lcom/oneplus/camera/media/AudioManagerImpl;->isRunningOrInitializing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 118
    iget-object v5, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "loadSound() - Component is not running"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-object v7

    .line 123
    :cond_0
    iget-object v5, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->m_SoundHandles:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 124
    .local v1, "handleList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;>;"
    if-eqz v1, :cond_2

    .line 126
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 128
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;

    .line 129
    .local v0, "handle":Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;
    iget v5, v0, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->resourceId:I

    if-ne v5, p1, :cond_1

    .line 130
    return-object v0

    .line 126
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 135
    .end local v0    # "handle":Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;
    .end local v2    # "i":I
    :cond_2
    invoke-direct {p0, p2, v8}, Lcom/oneplus/camera/media/AudioManagerImpl;->getSoundPool(IZ)Landroid/media/SoundPool;

    move-result-object v4

    .line 138
    .local v4, "soundPool":Landroid/media/SoundPool;
    invoke-virtual {p0}, Lcom/oneplus/camera/media/AudioManagerImpl;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, p1, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    .line 141
    .local v3, "soundId":I
    new-instance v0, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;

    invoke-direct {v0, p0, p1, p2, v3}, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;-><init>(Lcom/oneplus/camera/media/AudioManagerImpl;III)V

    .line 142
    .restart local v0    # "handle":Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;
    iget-object v5, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "loadSound() - Resource : "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string/jumbo v8, ", handle : "

    invoke-static {v5, v6, v7, v8, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 143
    if-nez v1, :cond_3

    .line 145
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "handleList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .restart local v1    # "handleList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;>;"
    iget-object v5, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->m_SoundHandles:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    return-object v0
.end method

.method protected onDeinitialize()V
    .locals 7

    .prologue
    .line 158
    iget-object v6, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->m_SoundHandles:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 160
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 161
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;>;"
    if-eqz v2, :cond_0

    .line 163
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 165
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;

    .line 166
    .local v3, "soundHandle":Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;
    invoke-static {v3}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 168
    invoke-static {v3}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 173
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;>;>;"
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;>;"
    .end local v3    # "soundHandle":Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;
    :cond_2
    iget-object v6, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->m_SoundHandles:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->clear()V

    .line 175
    iget-object v6, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->m_SoundPools:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "soundPool$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/SoundPool;

    .line 176
    .local v4, "soundPool":Landroid/media/SoundPool;
    invoke-virtual {v4}, Landroid/media/SoundPool;->release()V

    goto :goto_1

    .line 177
    .end local v4    # "soundPool":Landroid/media/SoundPool;
    :cond_3
    iget-object v6, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->m_SoundPools:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->clear()V

    .line 180
    invoke-super {p0}, Lcom/oneplus/camera/CameraComponent;->onDeinitialize()V

    .line 155
    return-void
.end method

.method public playSound(Lcom/oneplus/base/Handle;I)Lcom/oneplus/base/Handle;
    .locals 6
    .param p1, "sound"    # Lcom/oneplus/base/Handle;
    .param p2, "flags"    # I

    .prologue
    const/4 v5, 0x0

    .line 248
    if-nez p1, :cond_0

    .line 250
    iget-object v3, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "playSound() - Null handle"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    return-object v5

    .line 253
    :cond_0
    instance-of v3, p1, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;

    if-nez v3, :cond_1

    .line 255
    iget-object v3, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "playSound() - Invalid handle"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    return-object v5

    .line 260
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/media/AudioManagerImpl;->verifyAccess()V

    move-object v2, p1

    .line 263
    check-cast v2, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;

    .line 264
    .local v2, "soundHandle":Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;
    iget-object v3, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->m_SoundHandles:Ljava/util/Hashtable;

    iget v4, v2, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->streamType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 265
    .local v1, "handleList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 272
    new-instance v0, Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;

    invoke-direct {v0, p0, v2, p2}, Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;-><init>(Lcom/oneplus/camera/media/AudioManagerImpl;Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;I)V

    .line 275
    .local v0, "handle":Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;
    iget-boolean v3, v2, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->isLoaded:Z

    if-nez v3, :cond_4

    .line 277
    iget-object v3, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "playSound() - Sound "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is not loaded yet, play later"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v3, v2, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->pendingStreams:Ljava/util/List;

    if-nez v3, :cond_2

    .line 279
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->pendingStreams:Ljava/util/List;

    .line 280
    :cond_2
    iget-object v3, v2, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->pendingStreams:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    return-object v0

    .line 267
    .end local v0    # "handle":Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;
    :cond_3
    iget-object v3, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "playSound() - Invalid handle"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    return-object v5

    .line 285
    .restart local v0    # "handle":Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;
    :cond_4
    invoke-direct {p0, v0}, Lcom/oneplus/camera/media/AudioManagerImpl;->playSound(Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 286
    return-object v5

    .line 287
    :cond_5
    return-object v0
.end method
