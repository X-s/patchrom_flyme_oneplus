.class final Lcom/oneplus/gallery/media/MediaManagerImpl$DirectoryRenameHandle;
.super Lcom/oneplus/gallery/media/MediaManagerImpl$CallbackHandle;
.source "MediaManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/MediaManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DirectoryRenameHandle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/gallery/media/MediaManagerImpl$CallbackHandle",
        "<",
        "Lcom/oneplus/gallery/media/OPMediaManager$MediaRenameCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;


# direct methods
.method protected constructor <init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/OPMediaManager$MediaRenameCallback;Landroid/os/Handler;)V
    .locals 1
    .param p2, "callback"    # Lcom/oneplus/gallery/media/OPMediaManager$MediaRenameCallback;
    .param p3, "callbackHandler"    # Landroid/os/Handler;

    .prologue
    .line 940
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$DirectoryRenameHandle;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    .line 941
    const-string v0, "DirectoryRenameHandle"

    invoke-direct {p0, v0, p2, p3}, Lcom/oneplus/gallery/media/MediaManagerImpl$CallbackHandle;-><init>(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Handler;)V

    .line 942
    return-void
.end method


# virtual methods
.method public callOnDirectoryRename(JLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "oldPath"    # Ljava/lang/String;
    .param p4, "newPath"    # Ljava/lang/String;

    .prologue
    .line 946
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$DirectoryRenameHandle;->callback:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 962
    :cond_0
    :goto_0
    return-void

    .line 948
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$DirectoryRenameHandle;->callbackThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$DirectoryRenameHandle;->callbackThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 950
    iget-object v6, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$DirectoryRenameHandle;->callbackHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/gallery/media/MediaManagerImpl$DirectoryRenameHandle$1;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/gallery/media/MediaManagerImpl$DirectoryRenameHandle$1;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl$DirectoryRenameHandle;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 960
    :cond_2
    invoke-static {p0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 961
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$DirectoryRenameHandle;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/gallery/media/OPMediaManager$MediaRenameCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/oneplus/gallery/media/OPMediaManager$MediaRenameCallback;->onRenamed(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 967
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$DirectoryRenameHandle;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # invokes: Lcom/oneplus/gallery/media/MediaManagerImpl;->unregisterDirectoryRenameCallback(Lcom/oneplus/gallery/media/MediaManagerImpl$DirectoryRenameHandle;)V
    invoke-static {v0, p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$2100(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/MediaManagerImpl$DirectoryRenameHandle;)V

    .line 968
    return-void
.end method
