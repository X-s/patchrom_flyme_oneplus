.class public Lcom/oneplus/gl/ExternalOESTexture;
.super Lcom/oneplus/gl/Texture;
.source "ExternalOESTexture.java"


# instance fields
.field private final m_Lock:Ljava/lang/Object;

.field private m_Surface:Landroid/view/Surface;

.field private volatile m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private m_TextureId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/gl/ExternalOESTexture;-><init>(Z)V

    .line 30
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "createNow"    # Z

    .prologue
    .line 39
    const v0, 0x8d65

    invoke-direct {p0, v0}, Lcom/oneplus/gl/Texture;-><init>(I)V

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_Lock:Ljava/lang/Object;

    .line 40
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/gl/ExternalOESTexture;->isEglContextReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/oneplus/gl/ExternalOESTexture;->getObjectId()I

    .line 42
    :cond_0
    return-void
.end method


# virtual methods
.method public getObjectId()I
    .locals 4

    .prologue
    const v3, 0x812f

    const/16 v2, 0x2601

    const v1, 0x8d65

    .line 74
    invoke-virtual {p0}, Lcom/oneplus/gl/ExternalOESTexture;->throwIfNotAccessible()V

    .line 75
    iget v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_TextureId:I

    if-gtz v0, :cond_0

    .line 77
    invoke-static {}, Lcom/oneplus/gl/ExternalOESTexture;->createNativeTexture()I

    move-result v0

    iput v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_TextureId:I

    .line 78
    iget v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_TextureId:I

    if-lez v0, :cond_1

    .line 80
    iget v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_TextureId:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 81
    const/16 v0, 0x2802

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 82
    const/16 v0, 0x2803

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 83
    const/16 v0, 0x2801

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 84
    const/16 v0, 0x2800

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 85
    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 92
    :cond_0
    :goto_0
    iget v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_TextureId:I

    return v0

    .line 90
    :cond_1
    const-string v0, "Fail to create texture"

    invoke-static {v0}, Lcom/oneplus/gl/EglContextManager;->throwEglError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_Surface:Landroid/view/Surface;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Landroid/view/Surface;

    invoke-virtual {p0}, Lcom/oneplus/gl/ExternalOESTexture;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_Surface:Landroid/view/Surface;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_Surface:Landroid/view/Surface;

    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 5

    .prologue
    .line 114
    iget-object v2, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_Lock:Ljava/lang/Object;

    monitor-enter v2

    .line 116
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/gl/ExternalOESTexture;->isDependencyThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/oneplus/gl/ExternalOESTexture;->getObjectId()I

    .line 127
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    monitor-exit v2

    return-object v1

    .line 120
    :cond_1
    iget v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_TextureId:I

    .line 121
    .local v0, "textureId":I
    if-eqz v0, :cond_0

    .line 123
    new-instance v1, Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v1, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 124
    iget-object v1, p0, Lcom/oneplus/gl/ExternalOESTexture;->TAG:Ljava/lang/String;

    const-string v3, "getSurfaceTexture() - Create SurfaceTexture : "

    iget-object v4, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-static {v1, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 114
    .end local v0    # "textureId":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    .line 53
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getTransformMatrix([F)V
    .locals 1
    .param p1, "matrix"    # [F

    .prologue
    .line 63
    iget-object v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 67
    :goto_0
    return-void

    .line 66
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    goto :goto_0
.end method

.method public isAvailable()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 138
    invoke-virtual {p0}, Lcom/oneplus/gl/ExternalOESTexture;->isDependencyThread()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 139
    iget v2, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_TextureId:I

    if-gtz v2, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/gl/ExternalOESTexture;->isEglContextReady()Z

    move-result v2

    if-nez v2, :cond_1

    .line 140
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 139
    goto :goto_0

    .line 140
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method protected onEglContextDestroying()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 149
    iget v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_TextureId:I

    if-lez v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_Surface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_Surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 154
    iput-object v1, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_Surface:Landroid/view/Surface;

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 159
    iput-object v1, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 161
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_TextureId:I

    .line 165
    :cond_2
    invoke-super {p0}, Lcom/oneplus/gl/Texture;->onEglContextDestroying()V

    .line 166
    return-void
.end method

.method protected onRelease()V
    .locals 0

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/oneplus/gl/ExternalOESTexture;->releaseInternalResources()V

    .line 177
    invoke-super {p0}, Lcom/oneplus/gl/Texture;->onRelease()V

    .line 178
    return-void
.end method

.method public refresh()Lcom/oneplus/gl/ExternalOESTexture;
    .locals 6

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/oneplus/gl/ExternalOESTexture;->throwIfNotAccessible()V

    .line 188
    invoke-virtual {p0}, Lcom/oneplus/gl/ExternalOESTexture;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 189
    .local v0, "surfaceTexture":Landroid/graphics/SurfaceTexture;
    invoke-static {}, Lcom/oneplus/gl/EglContextManager;->isGLProfilingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 190
    .local v2, "time":J
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 191
    invoke-static {}, Lcom/oneplus/gl/EglContextManager;->isGLProfilingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 194
    const-wide/16 v4, 0x14

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/oneplus/gl/ExternalOESTexture;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "refresh() - Take "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms to call updateTexImage(), SurfaceTexture : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_0
    return-object p0

    .line 189
    .end local v2    # "time":J
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public releaseInternalResources()V
    .locals 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/oneplus/gl/ExternalOESTexture;->verifyAccess()V

    .line 207
    iget-object v1, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_Lock:Ljava/lang/Object;

    monitor-enter v1

    .line 209
    :try_start_0
    iget v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_TextureId:I

    if-lez v0, :cond_2

    .line 211
    iget-object v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_Surface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_Surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_Surface:Landroid/view/Surface;

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 221
    :cond_1
    iget v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_TextureId:I

    invoke-static {v0}, Lcom/oneplus/gl/ExternalOESTexture;->destroyNativeTexture(I)V

    .line 222
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/gl/ExternalOESTexture;->m_TextureId:I

    .line 207
    :cond_2
    monitor-exit v1

    .line 225
    return-void

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
