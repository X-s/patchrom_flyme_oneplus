.class Lcom/oneplus/gallery/media/AlbumMediaSet$4;
.super Ljava/lang/Object;
.source "AlbumMediaSet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/AlbumMediaSet;->delete(Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

.field final synthetic val$handle:Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/AlbumMediaSet;Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$4;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    iput-object p2, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$4;->val$handle:Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 173
    iget-object v0, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$4;->val$handle:Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;

    invoke-virtual {v0}, Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;->callOnDeletionStarted()V

    .line 176
    iget-object v0, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$4;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    # getter for: Lcom/oneplus/gallery/media/AlbumMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;
    invoke-static {v0}, Lcom/oneplus/gallery/media/AlbumMediaSet;->access$300(Lcom/oneplus/gallery/media/AlbumMediaSet;)Lcom/oneplus/gallery/media/OPMediaManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$4;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    # getter for: Lcom/oneplus/gallery/media/AlbumMediaSet;->m_AlbumId:J
    invoke-static {v1}, Lcom/oneplus/gallery/media/AlbumMediaSet;->access$400(Lcom/oneplus/gallery/media/AlbumMediaSet;)J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/oneplus/gallery/media/OPMediaManager;->deleteAlbum(J)Z

    .line 179
    iget-object v0, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$4;->val$handle:Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;->callOnDeletionCompleted(Z)V

    .line 180
    return-void
.end method
