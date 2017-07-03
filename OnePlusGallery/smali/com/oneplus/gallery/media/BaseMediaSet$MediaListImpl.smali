.class final Lcom/oneplus/gallery/media/BaseMediaSet$MediaListImpl;
.super Lcom/oneplus/gallery/media/BasicMediaList;
.source "BaseMediaSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/BaseMediaSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MediaListImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/BaseMediaSet;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/media/BaseMediaSet;Lcom/oneplus/gallery/media/MediaComparator;I)V
    .locals 0
    .param p2, "comparator"    # Lcom/oneplus/gallery/media/MediaComparator;
    .param p3, "maxMediaCount"    # I

    .prologue
    .line 118
    iput-object p1, p0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaListImpl;->this$0:Lcom/oneplus/gallery/media/BaseMediaSet;

    .line 119
    invoke-direct {p0, p2, p3}, Lcom/oneplus/gallery/media/BasicMediaList;-><init>(Lcom/oneplus/gallery/media/MediaComparator;I)V

    .line 120
    return-void
.end method


# virtual methods
.method public findMedia(Landroid/net/Uri;)Lcom/oneplus/gallery/media/Media;
    .locals 4
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 124
    if-nez p1, :cond_1

    move-object v1, v2

    .line 132
    :cond_0
    :goto_0
    return-object v1

    .line 126
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseMediaSet$MediaListImpl;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 128
    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/media/BaseMediaSet$MediaListImpl;->get(I)Lcom/oneplus/gallery/media/Media;

    move-result-object v1

    .line 129
    .local v1, "media":Lcom/oneplus/gallery/media/Media;
    invoke-interface {v1}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 126
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v1    # "media":Lcom/oneplus/gallery/media/Media;
    :cond_2
    move-object v1, v2

    .line 132
    goto :goto_0
.end method

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
    .line 137
    .local p1, "result":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/Uri;>;"
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseMediaSet$MediaListImpl;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 138
    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/media/BaseMediaSet$MediaListImpl;->get(I)Lcom/oneplus/gallery/media/Media;

    move-result-object v1

    invoke-interface {v1}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 137
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 139
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Lcom/oneplus/gallery/media/BasicMediaList;->release()V

    .line 145
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseMediaSet$MediaListImpl;->clearMedia()V

    .line 146
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaListImpl;->this$0:Lcom/oneplus/gallery/media/BaseMediaSet;

    # invokes: Lcom/oneplus/gallery/media/BaseMediaSet;->onMediaListReleased(Lcom/oneplus/gallery/media/BaseMediaSet$MediaListImpl;)V
    invoke-static {v0, p0}, Lcom/oneplus/gallery/media/BaseMediaSet;->access$000(Lcom/oneplus/gallery/media/BaseMediaSet;Lcom/oneplus/gallery/media/BaseMediaSet$MediaListImpl;)V

    .line 147
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
    .line 151
    .local p1, "contentUris":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/Uri;>;"
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseMediaSet$MediaListImpl;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 153
    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/media/BaseMediaSet$MediaListImpl;->get(I)Lcom/oneplus/gallery/media/Media;

    move-result-object v1

    .line 154
    .local v1, "media":Lcom/oneplus/gallery/media/Media;
    invoke-interface {v1}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/media/BaseMediaSet$MediaListImpl;->removeMedia(Lcom/oneplus/gallery/media/Media;)Z

    .line 151
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 157
    .end local v1    # "media":Lcom/oneplus/gallery/media/Media;
    :cond_1
    return-void
.end method

.method protected verifyMediaToAdd(Lcom/oneplus/gallery/media/Media;)Z
    .locals 1
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 162
    invoke-super {p0, p1}, Lcom/oneplus/gallery/media/BasicMediaList;->verifyMediaToAdd(Lcom/oneplus/gallery/media/Media;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaListImpl;->this$0:Lcom/oneplus/gallery/media/BaseMediaSet;

    invoke-virtual {v0, p1}, Lcom/oneplus/gallery/media/BaseMediaSet;->verifyMediaToAdd(Lcom/oneplus/gallery/media/Media;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
