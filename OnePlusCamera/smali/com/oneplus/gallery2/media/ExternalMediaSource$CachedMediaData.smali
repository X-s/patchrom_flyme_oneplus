.class public final Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;
.super Ljava/lang/Object;
.source "ExternalMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/ExternalMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "CachedMediaData"
.end annotation


# instance fields
.field public final key:Ljava/io/Serializable;

.field private final m_File:Ljava/io/File;

.field private volatile m_IsValid:Z

.field private volatile m_ReadingCounter:I

.field private volatile m_Size:J

.field private volatile m_WritingCounter:I

.field private volatile nextData:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

.field private volatile prevData:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

.field final synthetic this$0:Lcom/oneplus/gallery2/media/ExternalMediaSource;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/ExternalMediaSource;Ljava/io/Serializable;Ljava/io/File;)V
    .locals 2

    .prologue
    .line 179
    iput-object p1, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->this$0:Lcom/oneplus/gallery2/media/ExternalMediaSource;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->m_IsValid:Z

    .line 180
    iput-object p2, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->key:Ljava/io/Serializable;

    .line 181
    iput-object p3, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->m_File:Ljava/io/File;

    .line 182
    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->m_Size:J

    .line 183
    return-void
.end method

.method static synthetic access$0(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->completeRead()V

    return-void
.end method

.method static synthetic access$1(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)V
    .locals 0

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->completeWrite()V

    return-void
.end method

.method static synthetic access$2(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->prevData:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    return-void
.end method

.method static synthetic access$3(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->nextData:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    return-void
.end method

.method static synthetic access$4(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->prevData:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    return-object v0
.end method

.method static synthetic access$5(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->nextData:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    return-object v0
.end method

.method static synthetic access$6(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)Ljava/io/File;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->m_File:Ljava/io/File;

    return-object v0
.end method

.method private beginRead()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 188
    monitor-enter p0

    .line 190
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->m_WritingCounter:I

    if-lez v0, :cond_0

    .line 191
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 192
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->m_IsValid:Z

    if-eqz v0, :cond_1

    .line 194
    iget v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->m_ReadingCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->m_ReadingCounter:I

    .line 188
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->this$0:Lcom/oneplus/gallery2/media/ExternalMediaSource;

    invoke-static {v0, p0}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->access$0(Lcom/oneplus/gallery2/media/ExternalMediaSource;Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)V

    .line 197
    return-void

    .line 193
    :cond_1
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Invalid cached data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private beginWrite()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 202
    monitor-enter p0

    .line 204
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->m_WritingCounter:I

    if-lez v0, :cond_1

    .line 205
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 204
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->m_ReadingCounter:I

    if-gtz v0, :cond_0

    .line 206
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->m_IsValid:Z

    if-eqz v0, :cond_2

    .line 208
    iget v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->m_WritingCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->m_WritingCounter:I

    .line 202
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->this$0:Lcom/oneplus/gallery2/media/ExternalMediaSource;

    invoke-static {v0, p0}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->access$0(Lcom/oneplus/gallery2/media/ExternalMediaSource;Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)V

    .line 211
    return-void

    .line 207
    :cond_2
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Invalid cached data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private completeRead()V
    .locals 3

    .prologue
    .line 216
    monitor-enter p0

    .line 218
    :try_start_0
    iget v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->m_ReadingCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->m_ReadingCounter:I

    .line 219
    iget v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->m_ReadingCounter:I

    if-lez v0, :cond_0

    .line 221
    :goto_0
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->m_IsValid:Z

    if-eqz v0, :cond_1

    .line 216
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->this$0:Lcom/oneplus/gallery2/media/ExternalMediaSource;

    invoke-static {v0, p0}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->access$0(Lcom/oneplus/gallery2/media/ExternalMediaSource;Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)V

    .line 229
    return-void

    .line 220
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    goto :goto_0

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 223
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->isAccessing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 225
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 223
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->m_File:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->m_File:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2

    .line 224
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->this$0:Lcom/oneplus/gallery2/media/ExternalMediaSource;

    invoke-static {v0}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->access$1(Lcom/oneplus/gallery2/media/ExternalMediaSource;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Fail to delete cached file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->m_File:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private completeWrite()V
    .locals 6

    .prologue
    .line 235
    monitor-enter p0

    .line 237
    :try_start_0
    iget v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->m_WritingCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->m_WritingCounter:I

    .line 238
    iget-wide v2, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->m_Size:J

    .line 239
    iget v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->m_WritingCounter:I

    if-lez v0, :cond_1

    move-wide v4, v2

    .line 247
    :goto_0
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->m_IsValid:Z

    if-eqz v0, :cond_2

    .line 235
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->this$0:Lcom/oneplus/gallery2/media/ExternalMediaSource;

    invoke-static {v0, p0}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->access$0(Lcom/oneplus/gallery2/media/ExternalMediaSource;Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)V

    .line 255
    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->this$0:Lcom/oneplus/gallery2/media/ExternalMediaSource;

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->access$2(Lcom/oneplus/gallery2/media/ExternalMediaSource;Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;JJ)V

    .line 257
    :cond_0
    return-void

    .line 241
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 242
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->m_File:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 243
    iput-wide v4, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->m_Size:J

    goto :goto_0

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 249
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->isAccessing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 251
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    .line 249
    :cond_4
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->m_File:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->m_File:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_3

    .line 250
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->this$0:Lcom/oneplus/gallery2/media/ExternalMediaSource;

    invoke-static {v0}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->access$1(Lcom/oneplus/gallery2/media/ExternalMediaSource;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Fail to delete cached file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->m_File:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method getSize()J
    .locals 2

    .prologue
    .line 262
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->m_Size:J

    return-wide v0
.end method

.method declared-synchronized invalidate()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 268
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->m_IsValid:Z

    .line 269
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->isAccessing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->m_File:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    monitor-exit p0

    .line 273
    return-void

    :cond_1
    monitor-exit p0

    .line 270
    return-void

    .line 271
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->m_File:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->this$0:Lcom/oneplus/gallery2/media/ExternalMediaSource;

    invoke-static {v0}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->access$1(Lcom/oneplus/gallery2/media/ExternalMediaSource;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Fail to delete cached file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->m_File:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isAccessing()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 281
    iget v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->m_ReadingCounter:I

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->m_WritingCounter:I

    if-gtz v0, :cond_0

    return v1
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->m_IsValid:Z

    return v0
.end method

.method moveFileTo(Ljava/io/File;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 297
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->beginRead()V

    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->m_File:Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 304
    if-nez v0, :cond_0

    .line 306
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->completeRead()V

    .line 308
    return v0

    .line 301
    :catchall_0
    move-exception v0

    .line 306
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->completeRead()V

    .line 307
    throw v0

    .line 305
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->invalidate()V

    goto :goto_0
.end method

.method public openInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->beginRead()V

    .line 320
    :try_start_0
    new-instance v0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData$1;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->m_File:Ljava/io/File;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData$1;-><init>(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 332
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->completeRead()V

    .line 333
    instance-of v1, v0, Ljava/io/IOException;

    if-nez v1, :cond_0

    .line 335
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Fail to open stream for cached data"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 334
    :cond_0
    check-cast v0, Ljava/io/IOException;

    throw v0
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->beginWrite()V

    .line 348
    :try_start_0
    new-instance v0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData$2;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->m_File:Ljava/io/File;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData$2;-><init>(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 360
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->completeWrite()V

    .line 361
    instance-of v1, v0, Ljava/io/IOException;

    if-nez v1, :cond_0

    .line 363
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Fail to open stream for cached data"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 362
    :cond_0
    check-cast v0, Ljava/io/IOException;

    throw v0
.end method
