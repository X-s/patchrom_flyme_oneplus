.class public final Lcom/oneplus/gallery2/media/FavoriteMediaSet;
.super Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet;
.source "FavoriteMediaSet.java"


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/media/MediaType;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, v0, p1}, Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet;-><init>(Ljava/util/Collection;Lcom/oneplus/gallery2/media/MediaType;)V

    .line 19
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "Favorite"

    .line 26
    return-object v0
.end method

.method protected getNameResourceId()I
    .locals 4

    .prologue
    .line 34
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "media_set_name_favorite"

    const-string/jumbo v2, "string"

    const-string/jumbo v3, "com.oneplus.gallery"

    .line 35
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getType()Lcom/oneplus/gallery2/media/MediaSet$Type;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSet$Type;->SYSTEM:Lcom/oneplus/gallery2/media/MediaSet$Type;

    return-object v0
.end method

.method protected onMediaMovedToRecycleBin(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet;->onMediaMovedToRecycleBin(Lcom/oneplus/gallery2/media/Media;I)V

    .line 55
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->isFavoriteSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-interface {p1, v1}, Lcom/oneplus/gallery2/media/Media;->setFavorite(Z)Z

    goto :goto_0
.end method

.method protected onMediaRestoringFromRecycleBin(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 1

    .prologue
    .line 65
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->isFavoriteSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet;->onMediaRestoringFromRecycleBin(Lcom/oneplus/gallery2/media/Media;I)V

    .line 70
    return-void

    .line 66
    :cond_0
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/oneplus/gallery2/media/Media;->setFavorite(Z)Z

    goto :goto_0
.end method

.method protected removeMediaFromSet(Lcom/oneplus/gallery2/media/Media;)Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/oneplus/gallery2/media/Media;->setFavorite(Z)Z

    move-result v0

    return v0
.end method

.method protected shouldContainsMedia(Lcom/oneplus/gallery2/media/Media;I)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    sget v0, Lcom/oneplus/gallery2/media/Media;->FLAG_SUB_MEDIA:I

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    .line 87
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->isFavorite()Z

    move-result v0

    return v0

    .line 86
    :cond_0
    return v1
.end method

.method protected startDeletion(Lcom/oneplus/base/Handle;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 95
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/FavoriteMediaSet;->getMedia()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    .line 96
    invoke-interface {v0, v2}, Lcom/oneplus/gallery2/media/Media;->setFavorite(Z)Z

    goto :goto_0

    .line 97
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/oneplus/gallery2/media/FavoriteMediaSet;->completeDeletion(Lcom/oneplus/base/Handle;ZI)V

    .line 98
    return-void
.end method
