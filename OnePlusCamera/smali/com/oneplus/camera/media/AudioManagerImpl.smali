.class final Lcom/oneplus/camera/media/AudioManagerImpl;
.super Lcom/oneplus/camera/CameraComponent;
.source "AudioManagerImpl.java"

# interfaces
.implements Lcom/oneplus/camera/media/AudioManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;,
        Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;
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
.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 82
    const-string v0, "Camera Audio Manager"

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

    .line 83
    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraThread;)V
    .locals 2
    .param p1, "cameraThread"    # Lcom/oneplus/camera/CameraThread;

    .prologue
    .line 86
    const-string v0, "Camera Audio Manager"

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

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/camera/media/AudioManagerImpl;Landroid/media/SoundPool;II)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/media/AudioManagerImpl;
    .param p1, "x1"    # Landroid/media/SoundPool;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/media/AudioManagerImpl;->onSoundLoaded(Landroid/media/SoundPool;II)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/camera/media/AudioManagerImpl;Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/media/AudioManagerImpl;
    .param p1, "x1"    # Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/oneplus/camera/media/AudioManagerImpl;->unloadSound(Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/camera/media/AudioManagerImpl;Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/media/AudioManagerImpl;
    .param p1, "x1"    # Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/oneplus/camera/media/AudioManagerImpl;->stopSound(Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;)V

    return-void
.end method

.method private getSoundPool(IZ)Landroid/media/SoundPool;
    .locals 7
    .param p1, "streamType"    # I
    .param p2, "createNew"    # Z

    .prologue
    const/4 v6, 0x4

    .line 93
    iget-object v3, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->m_SoundPools:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/SoundPool;

    .line 94
    .local v1, "soundPool":Landroid/media/SoundPool;
    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 96
    iget-object v3, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->TAG:Ljava/lang/String;

    const-string v4, "getSoundPool() - Create sound pool for stream type "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 98
    .local v0, "attrBuilder":Landroid/media/AudioAttributes$Builder;
    new-instance v2, Landroid/media/SoundPool$Builder;

    invoke-direct {v2}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 99
    .local v2, "soundPoolBuilder":Landroid/media/SoundPool$Builder;
    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    .line 100
    invoke-virtual {v0, v6}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 101
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 102
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    .line 103
    invoke-virtual {v2, v6}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    .line 104
    invoke-virtual {v2}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v1

    .line 105
    iget-object v3, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->m_LoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    invoke-virtual {v1, v3}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 106
    iget-object v3, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->m_SoundPools:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
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
    .line 176
    const/4 v6, 0x0

    .line 177
    .local v6, "streamType":Ljava/lang/Integer;
    iget-object v7, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->m_SoundPools:Ljava/util/Hashtable;

    invoke-virtual {v7}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 179
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/media/SoundPool;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, p1, :cond_0

    .line 181
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "streamType":Ljava/lang/Integer;
    check-cast v6, Ljava/lang/Integer;

    .line 185
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/media/SoundPool;>;"
    .restart local v6    # "streamType":Ljava/lang/Integer;
    :cond_1
    if-nez v6, :cond_3

    .line 187
    iget-object v7, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->TAG:Ljava/lang/String;

    const-string v8, "onSoundLoaded() - Unknown sound pool"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    if-eqz p2, :cond_2

    .line 189
    invoke-virtual {p1, p2}, Landroid/media/SoundPool;->unload(I)Z

    .line 228
    :cond_2
    :goto_0
    return-void

    .line 194
    :cond_3
    const/4 v5, 0x0

    .line 195
    .local v5, "soundHandle":Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;
    iget-object v7, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->m_SoundHandles:Ljava/util/Hashtable;

    invoke-virtual {v7, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 196
    .local v2, "handleList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;>;"
    if-eqz v2, :cond_4

    .line 198
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_4

    .line 200
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;

    .line 201
    .local v1, "handle":Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;
    iget v7, v1, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->soundId:I

    if-ne v7, p2, :cond_5

    .line 203
    move-object v5, v1

    .line 208
    .end local v1    # "handle":Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;
    .end local v3    # "i":I
    :cond_4
    if-nez v5, :cond_6

    .line 210
    iget-object v7, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onSoundLoaded() - Unknown sound ID : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    if-eqz p2, :cond_2

    .line 212
    invoke-virtual {p1, p2}, Landroid/media/SoundPool;->unload(I)Z

    goto :goto_0

    .line 198
    .restart local v1    # "handle":Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;
    .restart local v3    # "i":I
    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 216
    .end local v1    # "handle":Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;
    .end local v3    # "i":I
    :cond_6
    iget-object v7, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->TAG:Ljava/lang/String;

    const-string v8, "onSoundLoaded() - Handle : "

    invoke-static {v7, v8, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 219
    const/4 v7, 0x1

    iput-boolean v7, v5, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->isLoaded:Z

    .line 222
    iget-object v7, v5, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->pendingStreams:Ljava/util/List;

    if-eqz v7, :cond_2

    .line 224
    iget-object v7, v5, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->pendingStreams:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .restart local v3    # "i":I
    :goto_2
    if-ltz v3, :cond_7

    .line 225
    iget-object v7, v5, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->pendingStreams:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;

    invoke-direct {p0, v7}, Lcom/oneplus/camera/media/AudioManagerImpl;->playSound(Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;)Z

    .line 224
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 226
    :cond_7
    iget-object v7, v5, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->pendingStreams:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method private playSound(Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;)Z
    .locals 10
    .param p1, "handle"    # Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 282
    iget-object v1, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->TAG:Ljava/lang/String;

    const-string v3, "playSound() - Sound handle : "

    iget-object v4, p1, Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;->sound:Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;

    const-string v5, ", stream handle : "

    invoke-static {v1, v3, v4, v5, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 285
    iget-object v1, p1, Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;->sound:Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;

    iget v1, v1, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->streamType:I

    invoke-direct {p0, v1, v9}, Lcom/oneplus/camera/media/AudioManagerImpl;->getSoundPool(IZ)Landroid/media/SoundPool;

    move-result-object v0

    .line 293
    .local v0, "soundPool":Landroid/media/SoundPool;
    iget-object v1, p1, Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;->sound:Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;

    iget v1, v1, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->soundId:I

    const/4 v4, 0x2

    iget v3, p1, Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    move v5, v8

    :goto_0
    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v7

    .line 294
    .local v7, "streamId":I
    if-nez v7, :cond_1

    .line 296
    iget-object v1, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playSound() - Fail to play sound "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;->sound:Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :goto_1
    return v8

    .line 293
    .end local v7    # "streamId":I
    :cond_0
    const/4 v5, -0x1

    goto :goto_0

    .line 299
    .restart local v7    # "streamId":I
    :cond_1
    iput v7, p1, Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;->streamId:I

    move v8, v9

    .line 302
    goto :goto_1
.end method

.method private stopSound(Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;)V
    .locals 5
    .param p1, "handle"    # Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;

    .prologue
    const/4 v4, 0x0

    .line 310
    invoke-virtual {p0}, Lcom/oneplus/camera/media/AudioManagerImpl;->verifyAccess()V

    .line 312
    iget-object v2, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->TAG:Ljava/lang/String;

    const-string v3, "stopSound() - Handle : "

    invoke-static {v2, v3, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 315
    iget-object v0, p1, Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;->sound:Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;

    .line 316
    .local v0, "soundHandle":Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;
    iget-object v2, v0, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->pendingStreams:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->pendingStreams:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    iget-boolean v2, v0, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->isLoaded:Z

    if-eqz v2, :cond_0

    .line 324
    iget v2, v0, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->streamType:I

    invoke-direct {p0, v2, v4}, Lcom/oneplus/camera/media/AudioManagerImpl;->getSoundPool(IZ)Landroid/media/SoundPool;

    move-result-object v1

    .line 325
    .local v1, "soundPool":Landroid/media/SoundPool;
    if-nez v1, :cond_2

    .line 327
    iget-object v2, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->TAG:Ljava/lang/String;

    const-string v3, "stopSound() - No sound pool to stop"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 332
    :cond_2
    iget v2, p1, Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;->streamId:I

    if-eqz v2, :cond_0

    .line 334
    iget v2, p1, Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;->streamId:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->stop(I)V

    .line 335
    iput v4, p1, Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;->streamId:I

    goto :goto_0
.end method

.method private unloadSound(Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;)V
    .locals 5
    .param p1, "handle"    # Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;

    .prologue
    const/4 v4, 0x0

    .line 344
    invoke-virtual {p0}, Lcom/oneplus/camera/media/AudioManagerImpl;->verifyAccess()V

    .line 346
    iget-object v2, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->TAG:Ljava/lang/String;

    const-string v3, "unloadSound() - Handle : "

    invoke-static {v2, v3, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 349
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->pendingStreams:Ljava/util/List;

    .line 352
    iget v2, p1, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->streamType:I

    invoke-direct {p0, v2, v4}, Lcom/oneplus/camera/media/AudioManagerImpl;->getSoundPool(IZ)Landroid/media/SoundPool;

    move-result-object v1

    .line 355
    .local v1, "soundPool":Landroid/media/SoundPool;
    iget v2, p1, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->soundId:I

    if-eqz v2, :cond_0

    .line 357
    if-eqz v1, :cond_2

    .line 358
    iget v2, p1, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->soundId:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->unload(I)Z

    .line 361
    :goto_0
    iput v4, p1, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->soundId:I

    .line 363
    :cond_0
    iput-boolean v4, p1, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->isLoaded:Z

    .line 366
    iget-object v2, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->m_SoundHandles:Ljava/util/Hashtable;

    iget v3, p1, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->streamType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 367
    .local v0, "handleList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;>;"
    if-eqz v0, :cond_1

    .line 368
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 369
    :cond_1
    return-void

    .line 360
    .end local v0    # "handleList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;>;"
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->TAG:Ljava/lang/String;

    const-string v3, "unloadSound() - No sound pool to unload"

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
    const/4 v7, 0x1

    .line 117
    invoke-virtual {p0}, Lcom/oneplus/camera/media/AudioManagerImpl;->verifyAccess()V

    .line 118
    invoke-virtual {p0}, Lcom/oneplus/camera/media/AudioManagerImpl;->isRunningOrInitializing()Z

    move-result v5

    if-nez v5, :cond_1

    .line 120
    iget-object v5, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->TAG:Ljava/lang/String;

    const-string v6, "loadSound() - Component is not running"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const/4 v0, 0x0

    .line 151
    :cond_0
    :goto_0
    return-object v0

    .line 125
    :cond_1
    iget-object v5, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->m_SoundHandles:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 126
    .local v1, "handleList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;>;"
    if-eqz v1, :cond_2

    .line 128
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_2

    .line 130
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;

    .line 131
    .local v0, "handle":Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;
    iget v5, v0, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->resourceId:I

    if-eq v5, p1, :cond_0

    .line 128
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 137
    .end local v0    # "handle":Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;
    .end local v2    # "i":I
    :cond_2
    invoke-direct {p0, p2, v7}, Lcom/oneplus/camera/media/AudioManagerImpl;->getSoundPool(IZ)Landroid/media/SoundPool;

    move-result-object v4

    .line 140
    .local v4, "soundPool":Landroid/media/SoundPool;
    invoke-virtual {p0}, Lcom/oneplus/camera/media/AudioManagerImpl;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, p1, v7}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    .line 143
    .local v3, "soundId":I
    new-instance v0, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;

    invoke-direct {v0, p0, p1, p2, v3}, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;-><init>(Lcom/oneplus/camera/media/AudioManagerImpl;III)V

    .line 144
    .restart local v0    # "handle":Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;
    iget-object v5, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->TAG:Ljava/lang/String;

    const-string v6, "loadSound() - Resource : "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, ", handle : "

    invoke-static {v5, v6, v7, v8, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 145
    if-nez v1, :cond_3

    .line 147
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "handleList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .restart local v1    # "handleList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;>;"
    iget-object v5, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->m_SoundHandles:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onDeinitialize()V
    .locals 3

    .prologue
    .line 160
    iget-object v2, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->m_SoundPools:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/SoundPool;

    .line 161
    .local v1, "soundPool":Landroid/media/SoundPool;
    invoke-virtual {v1}, Landroid/media/SoundPool;->release()V

    goto :goto_0

    .line 162
    .end local v1    # "soundPool":Landroid/media/SoundPool;
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->m_SoundPools:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 165
    iget-object v2, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->m_SoundHandles:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 168
    invoke-super {p0}, Lcom/oneplus/camera/CameraComponent;->onDeinitialize()V

    .line 169
    return-void
.end method

.method public playSound(Lcom/oneplus/base/Handle;I)Lcom/oneplus/base/Handle;
    .locals 6
    .param p1, "sound"    # Lcom/oneplus/base/Handle;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x0

    .line 236
    if-nez p1, :cond_1

    .line 238
    iget-object v4, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->TAG:Ljava/lang/String;

    const-string v5, "playSound() - Null handle"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 275
    :cond_0
    :goto_0
    return-object v0

    .line 241
    :cond_1
    instance-of v4, p1, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;

    if-nez v4, :cond_2

    .line 243
    iget-object v4, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->TAG:Ljava/lang/String;

    const-string v5, "playSound() - Invalid handle"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 244
    goto :goto_0

    .line 248
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/camera/media/AudioManagerImpl;->verifyAccess()V

    move-object v2, p1

    .line 251
    check-cast v2, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;

    .line 252
    .local v2, "soundHandle":Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;
    iget-object v4, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->m_SoundHandles:Ljava/util/Hashtable;

    iget v5, v2, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->streamType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 253
    .local v1, "handleList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 255
    :cond_3
    iget-object v4, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->TAG:Ljava/lang/String;

    const-string v5, "playSound() - Invalid handle"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 256
    goto :goto_0

    .line 260
    :cond_4
    new-instance v0, Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;

    invoke-direct {v0, p0, v2, p2}, Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;-><init>(Lcom/oneplus/camera/media/AudioManagerImpl;Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;I)V

    .line 263
    .local v0, "handle":Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;
    iget-boolean v4, v2, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->isLoaded:Z

    if-nez v4, :cond_6

    .line 265
    iget-object v3, p0, Lcom/oneplus/camera/media/AudioManagerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playSound() - Sound "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not loaded yet, play later"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v3, v2, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->pendingStreams:Ljava/util/List;

    if-nez v3, :cond_5

    .line 267
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->pendingStreams:Ljava/util/List;

    .line 268
    :cond_5
    iget-object v3, v2, Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;->pendingStreams:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 273
    :cond_6
    invoke-direct {p0, v0}, Lcom/oneplus/camera/media/AudioManagerImpl;->playSound(Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v0, v3

    .line 274
    goto :goto_0
.end method
