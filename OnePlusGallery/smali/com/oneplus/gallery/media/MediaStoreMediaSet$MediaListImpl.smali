.class final Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;
.super Lcom/oneplus/gallery/media/BasicMediaList;
.source "MediaStoreMediaSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/MediaStoreMediaSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaListImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/media/MediaStoreMediaSet;Lcom/oneplus/gallery/media/MediaComparator;I)V
    .locals 0
    .param p2, "comparator"    # Lcom/oneplus/gallery/media/MediaComparator;
    .param p3, "maxMediaCount"    # I

    .prologue
    .line 150
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    .line 151
    invoke-direct {p0, p2, p3}, Lcom/oneplus/gallery/media/BasicMediaList;-><init>(Lcom/oneplus/gallery/media/MediaComparator;I)V

    .line 152
    return-void
.end method


# virtual methods
.method public getAllContentUris(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, "result":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/Uri;>;"
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 157
    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;->get(I)Lcom/oneplus/gallery/media/Media;

    move-result-object v1

    invoke-interface {v1}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 158
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 163
    invoke-super {p0}, Lcom/oneplus/gallery/media/BasicMediaList;->release()V

    .line 164
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;->clearMedia()V

    .line 165
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    # invokes: Lcom/oneplus/gallery/media/MediaStoreMediaSet;->onMediaListReleased(Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;)V
    invoke-static {v0, p0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->access$100(Lcom/oneplus/gallery/media/MediaStoreMediaSet;Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;)V

    .line 166
    return-void
.end method

.method public removeMedia(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, "contentUris":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/Uri;>;"
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 172
    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;->get(I)Lcom/oneplus/gallery/media/Media;

    move-result-object v1

    .line 173
    .local v1, "media":Lcom/oneplus/gallery/media/Media;
    invoke-interface {v1}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;->removeMedia(Lcom/oneplus/gallery/media/Media;)Z

    .line 170
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 176
    .end local v1    # "media":Lcom/oneplus/gallery/media/Media;
    :cond_1
    return-void
.end method

.method protected verifyMediaToAdd(Lcom/oneplus/gallery/media/Media;)Z
    .locals 1
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 181
    invoke-super {p0, p1}, Lcom/oneplus/gallery/media/BasicMediaList;->verifyMediaToAdd(Lcom/oneplus/gallery/media/Media;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    invoke-virtual {v0, p1}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->verifyMediaToAdd(Lcom/oneplus/gallery/media/Media;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
