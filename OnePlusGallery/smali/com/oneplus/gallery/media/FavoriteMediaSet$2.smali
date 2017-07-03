.class Lcom/oneplus/gallery/media/FavoriteMediaSet$2;
.super Ljava/lang/Object;
.source "FavoriteMediaSet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/FavoriteMediaSet;->deleteMedia(Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/FavoriteMediaSet;

.field final synthetic val$handle:Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/FavoriteMediaSet;Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet$2;->this$0:Lcom/oneplus/gallery/media/FavoriteMediaSet;

    iput-object p2, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet$2;->val$handle:Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet$2;->val$handle:Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;

    invoke-virtual {v0}, Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;->callOnDeletionStarted()V

    .line 115
    iget-object v0, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet$2;->this$0:Lcom/oneplus/gallery/media/FavoriteMediaSet;

    # getter for: Lcom/oneplus/gallery/media/FavoriteMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;
    invoke-static {v0}, Lcom/oneplus/gallery/media/FavoriteMediaSet;->access$000(Lcom/oneplus/gallery/media/FavoriteMediaSet;)Lcom/oneplus/gallery/media/OPMediaManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet$2;->val$handle:Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;

    iget-object v1, v1, Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;->media:Lcom/oneplus/gallery/media/Media;

    invoke-interface {v1}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery/media/OPMediaManager;->setFavorite(Landroid/net/Uri;Z)Z

    .line 118
    iget-object v0, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet$2;->val$handle:Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;->callOnDeletionCompleted(Z)V

    .line 121
    iget-object v0, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet$2;->this$0:Lcom/oneplus/gallery/media/FavoriteMediaSet;

    invoke-virtual {v0}, Lcom/oneplus/gallery/media/FavoriteMediaSet;->updateCoverHashCodeDelayed()V

    .line 122
    return-void
.end method
