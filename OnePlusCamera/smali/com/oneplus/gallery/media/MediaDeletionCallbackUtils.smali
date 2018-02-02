.class public final Lcom/oneplus/gallery/media/MediaDeletionCallbackUtils;
.super Ljava/lang/Object;
.source "MediaDeletionCallbackUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static callOnDeletionCompleted(Lcom/oneplus/gallery/media/MediaDeletionCallback;Lcom/oneplus/gallery/media/Media;ZLandroid/os/Handler;)V
    .locals 2

    .prologue
    .line 24
    if-eqz p0, :cond_1

    .line 26
    if-nez p3, :cond_2

    .line 27
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/oneplus/gallery/media/MediaDeletionCallback;->onDeletionCompleted(Lcom/oneplus/gallery/media/Media;Z)V

    .line 39
    :goto_0
    return-void

    .line 25
    :cond_1
    return-void

    .line 26
    :cond_2
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 30
    new-instance v0, Lcom/oneplus/gallery/media/MediaDeletionCallbackUtils$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/gallery/media/MediaDeletionCallbackUtils$1;-><init>(Lcom/oneplus/gallery/media/MediaDeletionCallback;Lcom/oneplus/gallery/media/Media;Z)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static callOnDeletionStarted(Lcom/oneplus/gallery/media/MediaDeletionCallback;Lcom/oneplus/gallery/media/Media;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 51
    if-eqz p0, :cond_1

    .line 53
    if-nez p2, :cond_2

    .line 54
    :cond_0
    invoke-interface {p0, p1}, Lcom/oneplus/gallery/media/MediaDeletionCallback;->onDeletionStarted(Lcom/oneplus/gallery/media/Media;)V

    .line 66
    :goto_0
    return-void

    .line 52
    :cond_1
    return-void

    .line 53
    :cond_2
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 57
    new-instance v0, Lcom/oneplus/gallery/media/MediaDeletionCallbackUtils$2;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/gallery/media/MediaDeletionCallbackUtils$2;-><init>(Lcom/oneplus/gallery/media/MediaDeletionCallback;Lcom/oneplus/gallery/media/Media;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
