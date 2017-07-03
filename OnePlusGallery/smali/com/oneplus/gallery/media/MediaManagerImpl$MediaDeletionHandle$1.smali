.class Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle$1;
.super Ljava/lang/Object;
.source "MediaManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;->callOnDeletionCompleted(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;Z)V
    .locals 0

    .prologue
    .line 723
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle$1;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;

    iput-boolean p2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle$1;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 727
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle$1;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/gallery/media/MediaDeletionCallback;

    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle$1;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;

    iget-object v1, v1, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;->media:Lcom/oneplus/gallery/media/Media;

    iget-boolean v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle$1;->val$success:Z

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery/media/MediaDeletionCallback;->onDeletionCompleted(Lcom/oneplus/gallery/media/Media;Z)V

    .line 728
    return-void
.end method
