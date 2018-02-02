.class final Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;
.super Lcom/oneplus/gallery2/media/MediaHandle;
.source "MediaStoreMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/MediaStoreMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaDeletionHandle"
.end annotation


# instance fields
.field public final callback:Lcom/oneplus/gallery2/media/Media$DeletionCallback;

.field public volatile isCancellable:Z

.field public volatile isCancelled:Z

.field final synthetic this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)V
    .locals 1

    .prologue
    .line 177
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    const-string/jumbo v0, "DeleteMedia"

    .line 178
    invoke-direct {p0, v0, p2, p4}, Lcom/oneplus/gallery2/media/MediaHandle;-><init>(Ljava/lang/String;Lcom/oneplus/gallery2/media/Media;I)V

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;->isCancellable:Z

    .line 179
    iput-object p3, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;->callback:Lcom/oneplus/gallery2/media/Media$DeletionCallback;

    .line 180
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 5

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;->getFlags()I

    move-result v0

    sget v1, Lcom/oneplus/gallery2/media/Media;->FLAG_MOVE_TO_RECYCE_BIN:I

    or-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 194
    monitor-enter p0

    .line 196
    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;->isCancellable:Z

    if-nez v0, :cond_1

    .line 199
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-static {v0, p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$2(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;)V

    .line 190
    return-void

    .line 197
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;->isCancelled:Z

    .line 194
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;->callback:Lcom/oneplus/gallery2/media/Media$DeletionCallback;

    if-nez v0, :cond_2

    .line 205
    :goto_0
    return-void

    .line 194
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 204
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;->callback:Lcom/oneplus/gallery2/media/Media$DeletionCallback;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;->getMedia()Lcom/oneplus/gallery2/media/Media;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;->getFlags()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;->getMedia()Lcom/oneplus/gallery2/media/Media;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->prepareMediaFlagsForCallback(Lcom/oneplus/gallery2/media/Media;)I

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/media/Media$DeletionCallback;->onDeletionCancelled(Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_0
.end method
