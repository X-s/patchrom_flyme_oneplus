.class public final Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;
.super Lcom/oneplus/base/Handle;
.source "BaseMediaSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/BaseMediaSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "MediaDeletionHandle"
.end annotation


# instance fields
.field public final callback:Lcom/oneplus/gallery/media/MediaDeletionCallback;

.field public final callbackHandler:Landroid/os/Handler;

.field public final flags:I

.field public final media:Lcom/oneplus/gallery/media/Media;

.field final synthetic this$0:Lcom/oneplus/gallery/media/BaseMediaSet;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/media/BaseMediaSet;Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/media/MediaDeletionCallback;Landroid/os/Handler;I)V
    .locals 1
    .param p2, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p3, "callback"    # Lcom/oneplus/gallery/media/MediaDeletionCallback;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "flags"    # I

    .prologue
    .line 176
    iput-object p1, p0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;->this$0:Lcom/oneplus/gallery/media/BaseMediaSet;

    .line 177
    const-string v0, "DeleteMedia"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 178
    iput-object p3, p0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;->callback:Lcom/oneplus/gallery/media/MediaDeletionCallback;

    .line 179
    iput-object p4, p0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;->callbackHandler:Landroid/os/Handler;

    .line 180
    iput p5, p0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;->flags:I

    .line 181
    iput-object p2, p0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;->media:Lcom/oneplus/gallery/media/Media;

    .line 182
    return-void
.end method


# virtual methods
.method public callOnDeletionCompleted(Z)V
    .locals 2
    .param p1, "success"    # Z

    .prologue
    .line 186
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;->callback:Lcom/oneplus/gallery/media/MediaDeletionCallback;

    if-nez v0, :cond_0

    .line 201
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;->callbackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;->callbackHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 190
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle$1;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle$1;-><init>(Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;->callback:Lcom/oneplus/gallery/media/MediaDeletionCallback;

    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;->media:Lcom/oneplus/gallery/media/Media;

    invoke-interface {v0, v1, p1}, Lcom/oneplus/gallery/media/MediaDeletionCallback;->onDeletionCompleted(Lcom/oneplus/gallery/media/Media;Z)V

    goto :goto_0
.end method

.method public callOnDeletionStarted()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;->callback:Lcom/oneplus/gallery/media/MediaDeletionCallback;

    if-nez v0, :cond_0

    .line 220
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;->callbackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;->callbackHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 209
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle$2;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle$2;-><init>(Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;->callback:Lcom/oneplus/gallery/media/MediaDeletionCallback;

    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;->media:Lcom/oneplus/gallery/media/Media;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery/media/MediaDeletionCallback;->onDeletionStarted(Lcom/oneplus/gallery/media/Media;)V

    goto :goto_0
.end method

.method protected onClose(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 224
    return-void
.end method
