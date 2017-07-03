.class final Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;
.super Lcom/oneplus/gallery/media/MediaManagerImpl$CallbackHandle;
.source "MediaManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/MediaManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaDeletionHandle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/gallery/media/MediaManagerImpl$CallbackHandle",
        "<",
        "Lcom/oneplus/gallery/media/MediaDeletionCallback;",
        ">;"
    }
.end annotation


# instance fields
.field public final flags:I

.field public final media:Lcom/oneplus/gallery/media/Media;

.field public final mediaId:J


# direct methods
.method public constructor <init>(JLcom/oneplus/gallery/media/MediaDeletionCallback;Landroid/os/Handler;I)V
    .locals 1
    .param p1, "mediaId"    # J
    .param p3, "callback"    # Lcom/oneplus/gallery/media/MediaDeletionCallback;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "flags"    # I

    .prologue
    .line 709
    const-string v0, "MediaDeletion"

    invoke-direct {p0, v0, p3, p4}, Lcom/oneplus/gallery/media/MediaManagerImpl$CallbackHandle;-><init>(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Handler;)V

    .line 710
    iput p5, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;->flags:I

    .line 711
    iput-wide p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;->mediaId:J

    .line 712
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;->media:Lcom/oneplus/gallery/media/Media;

    .line 713
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/media/MediaDeletionCallback;Landroid/os/Handler;I)V
    .locals 4
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p2, "callback"    # Lcom/oneplus/gallery/media/MediaDeletionCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "flags"    # I

    .prologue
    .line 693
    const-string v1, "MediaDeletion"

    invoke-direct {p0, v1, p2, p3}, Lcom/oneplus/gallery/media/MediaManagerImpl$CallbackHandle;-><init>(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Handler;)V

    .line 694
    iput p4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;->flags:I

    .line 695
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;->media:Lcom/oneplus/gallery/media/Media;

    .line 699
    :try_start_0
    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 705
    .local v2, "mediaId":J
    :goto_0
    iput-wide v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;->mediaId:J

    .line 706
    return-void

    .line 701
    .end local v2    # "mediaId":J
    :catch_0
    move-exception v0

    .line 703
    .local v0, "ex":Ljava/lang/Throwable;
    const-wide/16 v2, 0x0

    .restart local v2    # "mediaId":J
    goto :goto_0
.end method


# virtual methods
.method public callOnDeletionCompleted(Z)V
    .locals 2
    .param p1, "success"    # Z

    .prologue
    .line 718
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;->callback:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 733
    :goto_0
    return-void

    .line 720
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;->callbackThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;->callbackThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 722
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle$1;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle$1;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 732
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/gallery/media/MediaDeletionCallback;

    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;->media:Lcom/oneplus/gallery/media/Media;

    invoke-interface {v0, v1, p1}, Lcom/oneplus/gallery/media/MediaDeletionCallback;->onDeletionCompleted(Lcom/oneplus/gallery/media/Media;Z)V

    goto :goto_0
.end method

.method public callOnDeletionStarted()V
    .locals 2

    .prologue
    .line 738
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;->callback:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 753
    :goto_0
    return-void

    .line 740
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;->callbackThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;->callbackThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 742
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle$2;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle$2;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 752
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/gallery/media/MediaDeletionCallback;

    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;->media:Lcom/oneplus/gallery/media/Media;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery/media/MediaDeletionCallback;->onDeletionStarted(Lcom/oneplus/gallery/media/Media;)V

    goto :goto_0
.end method

.method protected onClose(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 758
    return-void
.end method
