.class Lcom/oneplus/gallery/media/AlbumMediaSet$5;
.super Ljava/lang/Object;
.source "AlbumMediaSet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/AlbumMediaSet;->deleteMedia(Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

.field final synthetic val$handle:Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/AlbumMediaSet;Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$5;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    iput-object p2, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$5;->val$handle:Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 204
    iget-object v0, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$5;->val$handle:Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;

    invoke-virtual {v0}, Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;->callOnDeletionStarted()V

    .line 207
    iget-object v0, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$5;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    # getter for: Lcom/oneplus/gallery/media/AlbumMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;
    invoke-static {v0}, Lcom/oneplus/gallery/media/AlbumMediaSet;->access$300(Lcom/oneplus/gallery/media/AlbumMediaSet;)Lcom/oneplus/gallery/media/OPMediaManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$5;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    # getter for: Lcom/oneplus/gallery/media/AlbumMediaSet;->m_AlbumId:J
    invoke-static {v1}, Lcom/oneplus/gallery/media/AlbumMediaSet;->access$400(Lcom/oneplus/gallery/media/AlbumMediaSet;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$5;->val$handle:Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;

    iget-object v1, v1, Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;->media:Lcom/oneplus/gallery/media/Media;

    invoke-interface {v1}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/oneplus/gallery/media/OPMediaManager;->removeMediaFromAlbum(JJ)Z

    .line 210
    iget-object v0, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$5;->val$handle:Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;->callOnDeletionCompleted(Z)V

    .line 211
    return-void
.end method
