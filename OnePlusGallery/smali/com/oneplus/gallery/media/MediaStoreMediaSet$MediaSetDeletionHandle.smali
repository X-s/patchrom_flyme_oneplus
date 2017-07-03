.class public final Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle;
.super Lcom/oneplus/base/Handle;
.source "MediaStoreMediaSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/MediaStoreMediaSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "MediaSetDeletionHandle"
.end annotation


# instance fields
.field public final callback:Lcom/oneplus/gallery/media/MediaSet$DeletionCallback;

.field public final callbackHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/media/MediaStoreMediaSet;Lcom/oneplus/gallery/media/MediaSet$DeletionCallback;Landroid/os/Handler;)V
    .locals 1
    .param p2, "callback"    # Lcom/oneplus/gallery/media/MediaSet$DeletionCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    .line 194
    const-string v0, "DeleteMediaSet"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 195
    iput-object p2, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle;->callback:Lcom/oneplus/gallery/media/MediaSet$DeletionCallback;

    .line 196
    iput-object p3, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle;->callbackHandler:Landroid/os/Handler;

    .line 197
    return-void
.end method


# virtual methods
.method public callOnDeletionCompleted(Z)V
    .locals 2
    .param p1, "success"    # Z

    .prologue
    .line 201
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle;->callback:Lcom/oneplus/gallery/media/MediaSet$DeletionCallback;

    if-nez v0, :cond_0

    .line 216
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle;->callbackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle;->callbackHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 205
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle$1;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle$1;-><init>(Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle;->callback:Lcom/oneplus/gallery/media/MediaSet$DeletionCallback;

    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    invoke-interface {v0, v1, p1}, Lcom/oneplus/gallery/media/MediaSet$DeletionCallback;->onDeletionCompleted(Lcom/oneplus/gallery/media/MediaSet;Z)V

    goto :goto_0
.end method

.method public callOnDeletionStarted()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle;->callback:Lcom/oneplus/gallery/media/MediaSet$DeletionCallback;

    if-nez v0, :cond_0

    .line 235
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle;->callbackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle;->callbackHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 224
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle$2;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle$2;-><init>(Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle;->callback:Lcom/oneplus/gallery/media/MediaSet$DeletionCallback;

    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery/media/MediaSet$DeletionCallback;->onDeletionStarted(Lcom/oneplus/gallery/media/MediaSet;)V

    goto :goto_0
.end method

.method protected onClose(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 239
    return-void
.end method
