.class final Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;
.super Lcom/oneplus/gallery/media/MediaManagerImpl$CallbackHandle;
.source "MediaManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/MediaManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaObtainHandle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/gallery/media/MediaManagerImpl$CallbackHandle",
        "<",
        "Lcom/oneplus/gallery/media/MediaObtainCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/MediaObtainCallback;Landroid/os/Handler;)V
    .locals 1
    .param p2, "callback"    # Lcom/oneplus/gallery/media/MediaObtainCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 767
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    .line 768
    const-string v0, "MediaObtain"

    invoke-direct {p0, v0, p2, p3}, Lcom/oneplus/gallery/media/MediaManagerImpl$CallbackHandle;-><init>(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Handler;)V

    .line 769
    return-void
.end method


# virtual methods
.method public callOnObtained(JLcom/oneplus/gallery/media/Media;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 774
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;->callbackThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;->callbackThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 776
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle$1;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;JLcom/oneplus/gallery/media/Media;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 788
    :cond_0
    :goto_0
    return-void

    .line 786
    :cond_1
    invoke-static {p0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/gallery/media/MediaObtainCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/oneplus/gallery/media/MediaObtainCallback;->onObtained(JLcom/oneplus/gallery/media/Media;)V

    goto :goto_0
.end method

.method protected onClose(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 793
    return-void
.end method
