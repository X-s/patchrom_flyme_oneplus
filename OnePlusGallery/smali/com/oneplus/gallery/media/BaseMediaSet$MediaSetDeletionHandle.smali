.class public final Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;
.super Lcom/oneplus/base/Handle;
.source "BaseMediaSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/BaseMediaSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "MediaSetDeletionHandle"
.end annotation


# instance fields
.field public final callback:Lcom/oneplus/gallery/media/MediaSet$DeletionCallback;

.field public final callbackHandler:Landroid/os/Handler;

.field public final flags:I

.field final synthetic this$0:Lcom/oneplus/gallery/media/BaseMediaSet;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/media/BaseMediaSet;Lcom/oneplus/gallery/media/MediaSet$DeletionCallback;Landroid/os/Handler;I)V
    .locals 1
    .param p2, "callback"    # Lcom/oneplus/gallery/media/MediaSet$DeletionCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "flags"    # I

    .prologue
    .line 236
    iput-object p1, p0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;->this$0:Lcom/oneplus/gallery/media/BaseMediaSet;

    .line 237
    const-string v0, "DeleteMediaSet"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 238
    iput-object p2, p0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;->callback:Lcom/oneplus/gallery/media/MediaSet$DeletionCallback;

    .line 239
    iput-object p3, p0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;->callbackHandler:Landroid/os/Handler;

    .line 240
    iput p4, p0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;->flags:I

    .line 241
    return-void
.end method


# virtual methods
.method public callOnDeletionCompleted(Z)V
    .locals 2
    .param p1, "success"    # Z

    .prologue
    .line 245
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;->callback:Lcom/oneplus/gallery/media/MediaSet$DeletionCallback;

    if-nez v0, :cond_0

    .line 260
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;->callbackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;->callbackHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 249
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle$1;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle$1;-><init>(Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;->callback:Lcom/oneplus/gallery/media/MediaSet$DeletionCallback;

    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;->this$0:Lcom/oneplus/gallery/media/BaseMediaSet;

    invoke-interface {v0, v1, p1}, Lcom/oneplus/gallery/media/MediaSet$DeletionCallback;->onDeletionCompleted(Lcom/oneplus/gallery/media/MediaSet;Z)V

    goto :goto_0
.end method

.method public callOnDeletionStarted()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;->callback:Lcom/oneplus/gallery/media/MediaSet$DeletionCallback;

    if-nez v0, :cond_0

    .line 279
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;->callbackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;->callbackHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 268
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle$2;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle$2;-><init>(Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;->callback:Lcom/oneplus/gallery/media/MediaSet$DeletionCallback;

    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;->this$0:Lcom/oneplus/gallery/media/BaseMediaSet;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery/media/MediaSet$DeletionCallback;->onDeletionStarted(Lcom/oneplus/gallery/media/MediaSet;)V

    goto :goto_0
.end method

.method protected onClose(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 283
    return-void
.end method
