.class public Lcom/oneplus/gallery/media/BurstMedia;
.super Lcom/oneplus/gallery/media/BaseGroupMedia;
.source "BurstMedia.java"

# interfaces
.implements Lcom/oneplus/gallery/media/PhotoMedia;


# instance fields
.field private m_Orientation:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/media/BaseGroupMedia;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected evaluateGroupIndex(Lcom/oneplus/gallery/media/Media;)I
    .locals 4
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    const/4 v1, -0x1

    .line 26
    instance-of v2, p1, Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;

    if-nez v2, :cond_1

    .line 31
    :cond_0
    :goto_0
    return v1

    .line 28
    :cond_1
    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/io/Path;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x17

    if-ne v2, v3, :cond_0

    .line 30
    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getOrientation()I
    .locals 2

    .prologue
    .line 39
    iget-object v1, p0, Lcom/oneplus/gallery/media/BurstMedia;->m_Orientation:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 41
    invoke-super {p0}, Lcom/oneplus/gallery/media/BaseGroupMedia;->getCoverMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v0

    .line 42
    .local v0, "media":Lcom/oneplus/gallery/media/Media;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;

    if-eqz v1, :cond_0

    .line 43
    check-cast v0, Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;

    .end local v0    # "media":Lcom/oneplus/gallery/media/Media;
    invoke-virtual {v0}, Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;->getOrientation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery/media/BurstMedia;->m_Orientation:Ljava/lang/Integer;

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/media/BurstMedia;->m_Orientation:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public getType()Lcom/oneplus/gallery/media/MediaType;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/oneplus/gallery/media/MediaType;->PHOTO:Lcom/oneplus/gallery/media/MediaType;

    return-object v0
.end method

.method public isPanorama()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method protected refreshCover(Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/media/Media;)Z
    .locals 12
    .param p1, "added"    # Lcom/oneplus/gallery/media/Media;
    .param p2, "removed"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 70
    const/4 v4, 0x0

    .line 71
    .local v4, "isCoverChanged":Z
    if-eqz p1, :cond_2

    .line 73
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BurstMedia;->isUserCoverFound()Z

    move-result v10

    if-nez v10, :cond_2

    .line 76
    instance-of v10, p1, Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;

    if-nez v10, :cond_0

    .line 77
    const/4 v10, 0x0

    .line 127
    :goto_0
    return v10

    :cond_0
    move-object v7, p1

    .line 80
    check-cast v7, Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;

    .line 81
    .local v7, "photoMediaAdded":Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;
    invoke-virtual {p0, v7}, Lcom/oneplus/gallery/media/BurstMedia;->evaluateGroupIndex(Lcom/oneplus/gallery/media/Media;)I

    move-result v2

    .line 82
    .local v2, "groupIndex":I
    invoke-virtual {v7}, Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->getExtraMediaInfo(J)Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;

    move-result-object v1

    .line 83
    .local v1, "extraInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;
    if-eqz v1, :cond_4

    iget v10, v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;->oneplusFlags:I

    const/high16 v11, 0x10000

    and-int/2addr v10, v11

    if-eqz v10, :cond_4

    const/4 v5, 0x1

    .line 84
    .local v5, "isUserCover":Z
    :goto_1
    if-eqz v5, :cond_5

    .line 86
    invoke-virtual {p0, v7, v2}, Lcom/oneplus/gallery/media/BurstMedia;->setCoverMedia(Lcom/oneplus/gallery/media/Media;I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 87
    const/4 v4, 0x1

    .line 88
    :cond_1
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/oneplus/gallery/media/BurstMedia;->setIsUserCoverFound(Z)Z

    .line 103
    .end local v1    # "extraInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;
    .end local v2    # "groupIndex":I
    .end local v5    # "isUserCover":Z
    .end local v7    # "photoMediaAdded":Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;
    :cond_2
    :goto_2
    if-eqz p2, :cond_a

    .line 106
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BurstMedia;->getCoverMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v10

    if-ne p2, v10, :cond_a

    .line 109
    const/4 v6, -0x1

    .line 110
    .local v6, "newCoverIndex":I
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BurstMedia;->getSubMedia()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/gallery/media/Media;

    .line 112
    .local v8, "subMedia":Lcom/oneplus/gallery/media/Media;
    instance-of v10, v8, Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;

    if-nez v10, :cond_7

    .line 113
    const/4 v10, 0x0

    goto :goto_0

    .line 83
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "newCoverIndex":I
    .end local v8    # "subMedia":Lcom/oneplus/gallery/media/Media;
    .restart local v1    # "extraInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;
    .restart local v2    # "groupIndex":I
    .restart local v7    # "photoMediaAdded":Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 92
    .restart local v5    # "isUserCover":Z
    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BurstMedia;->getCoverIndex()I

    move-result v0

    .line 93
    .local v0, "coverIndex":I
    if-ltz v0, :cond_6

    if-ge v2, v0, :cond_2

    .line 95
    :cond_6
    invoke-virtual {p0, v7, v2}, Lcom/oneplus/gallery/media/BurstMedia;->setCoverMedia(Lcom/oneplus/gallery/media/Media;I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 96
    const/4 v4, 0x1

    goto :goto_2

    .end local v0    # "coverIndex":I
    .end local v1    # "extraInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;
    .end local v2    # "groupIndex":I
    .end local v5    # "isUserCover":Z
    .end local v7    # "photoMediaAdded":Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v6    # "newCoverIndex":I
    .restart local v8    # "subMedia":Lcom/oneplus/gallery/media/Media;
    :cond_7
    move-object v9, v8

    .line 114
    check-cast v9, Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;

    .line 115
    .local v9, "subPhotoMedia":Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;
    invoke-virtual {p0, v9}, Lcom/oneplus/gallery/media/BurstMedia;->evaluateGroupIndex(Lcom/oneplus/gallery/media/Media;)I

    move-result v0

    .line 116
    .restart local v0    # "coverIndex":I
    if-ltz v6, :cond_8

    if-ge v0, v6, :cond_3

    .line 118
    :cond_8
    invoke-virtual {p0, v9, v6}, Lcom/oneplus/gallery/media/BurstMedia;->setCoverMedia(Lcom/oneplus/gallery/media/Media;I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 119
    const/4 v4, 0x1

    goto :goto_3

    .line 122
    .end local v0    # "coverIndex":I
    .end local v8    # "subMedia":Lcom/oneplus/gallery/media/Media;
    .end local v9    # "subPhotoMedia":Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;
    :cond_9
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BurstMedia;->isUserCoverFound()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 123
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/oneplus/gallery/media/BurstMedia;->setIsUserCoverFound(Z)Z

    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "newCoverIndex":I
    :cond_a
    move v10, v4

    .line 127
    goto :goto_0
.end method
