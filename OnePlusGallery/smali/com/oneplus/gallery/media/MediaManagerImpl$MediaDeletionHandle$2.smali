.class Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle$2;
.super Ljava/lang/Object;
.source "MediaManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;->callOnDeletionStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;)V
    .locals 0

    .prologue
    .line 743
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle$2;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 747
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle$2;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/gallery/media/MediaDeletionCallback;

    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle$2;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;

    iget-object v1, v1, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;->media:Lcom/oneplus/gallery/media/Media;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery/media/MediaDeletionCallback;->onDeletionStarted(Lcom/oneplus/gallery/media/Media;)V

    .line 748
    return-void
.end method
