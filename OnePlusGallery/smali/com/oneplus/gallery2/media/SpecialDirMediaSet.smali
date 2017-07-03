.class public abstract Lcom/oneplus/gallery2/media/SpecialDirMediaSet;
.super Lcom/oneplus/gallery2/media/BaseMediaSet;
.source "SpecialDirMediaSet.java"


# instance fields
.field private final m_DirectoryPaths:[Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/MediaType;Ljava/util/Collection;)V
    .locals 7
    .param p1, "source"    # Lcom/oneplus/gallery2/media/MediaSource;
    .param p2, "targetMediaType"    # Lcom/oneplus/gallery2/media/MediaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery2/media/MediaSource;",
            "Lcom/oneplus/gallery2/media/MediaType;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p3, "dirPaths":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/media/BaseMediaSet;-><init>(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/MediaType;)V

    .line 34
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->m_DirectoryPaths:[Ljava/lang/String;

    .line 35
    const/4 v2, 0x0

    .line 36
    .local v2, "index":I
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 38
    .local v0, "dirPath":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_1

    .line 39
    :cond_0
    iget-object v4, p0, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->m_DirectoryPaths:[Ljava/lang/String;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .local v3, "index":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    move v2, v3

    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_0

    .line 41
    :cond_1
    iget-object v4, p0, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->m_DirectoryPaths:[Ljava/lang/String;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    aput-object v0, v4, v2

    move v2, v3

    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_0

    .line 43
    .end local v0    # "dirPath":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public deleteMedia(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;
    .locals 3
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "callback"    # Lcom/oneplus/gallery2/media/Media$DeletionCallback;
    .param p3, "flags"    # I

    .prologue
    .line 50
    if-nez p1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->TAG:Ljava/lang/String;

    const-string v2, "delete() - No media to delete"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const/4 v1, 0x0

    .line 60
    :goto_0
    return-object v1

    .line 55
    :cond_0
    const/4 v0, 0x0

    .line 56
    .local v0, "mediaFlags":I
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->shouldDeleteRawFiles()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    sget v1, Lcom/oneplus/gallery2/media/Media;->FLAG_INCLUDE_RAW_PHOTO:I

    or-int/2addr v0, v1

    .line 58
    :cond_1
    sget v1, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->FLAG_MOVE_TO_RECYCE_BIN:I

    and-int/2addr v1, p3

    if-eqz v1, :cond_2

    .line 59
    sget v1, Lcom/oneplus/gallery2/media/Media;->FLAG_MOVE_TO_RECYCE_BIN:I

    or-int/2addr v0, v1

    .line 60
    :cond_2
    invoke-interface {p1, p2, v0}, Lcom/oneplus/gallery2/media/Media;->delete(Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    goto :goto_0
.end method

.method public getType()Lcom/oneplus/gallery2/media/MediaSet$Type;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSet$Type;->SYSTEM:Lcom/oneplus/gallery2/media/MediaSet$Type;

    return-object v0
.end method

.method public isVirtual()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method protected onDeletionCompleted(ZI)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "flags"    # I

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    .line 86
    .local v0, "source":Lcom/oneplus/gallery2/media/MediaSource;
    instance-of v1, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    if-eqz v1, :cond_0

    .line 87
    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    .end local v0    # "source":Lcom/oneplus/gallery2/media/MediaSource;
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->getMedia()Ljava/lang/Iterable;

    move-result-object v1

    const-class v2, Lcom/oneplus/gallery2/media/Media;

    invoke-static {v1, v2}, Lcom/oneplus/util/CollectionUtils;->toArray(Ljava/lang/Iterable;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/oneplus/gallery2/media/Media;

    invoke-virtual {v0, p0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->notifyMediaSetDeleted(Lcom/oneplus/gallery2/media/MediaSet;[Lcom/oneplus/gallery2/media/Media;)V

    .line 90
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery2/media/BaseMediaSet;->onDeletionCompleted(ZI)V

    .line 91
    return-void
.end method

.method public shouldContainsMedia(Lcom/oneplus/gallery2/media/Media;I)Z
    .locals 4
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 98
    sget v3, Lcom/oneplus/gallery2/media/Media;->FLAG_SUB_MEDIA:I

    and-int/2addr v3, p2

    if-eqz v3, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v2

    .line 100
    :cond_1
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "filePath":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 103
    iget-object v3, p0, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->m_DirectoryPaths:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_0

    .line 105
    iget-object v3, p0, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->m_DirectoryPaths:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 106
    const/4 v2, 0x1

    goto :goto_0

    .line 103
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method protected shouldDeleteRawFiles()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method protected startDeletion(Lcom/oneplus/base/Handle;I)V
    .locals 7
    .param p1, "deletionHandle"    # Lcom/oneplus/base/Handle;
    .param p2, "flags"    # I

    .prologue
    const/4 v6, 0x0

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .local v1, "selection":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v2, "selectionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "((media_type=1 OR media_type=3) AND ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->m_DirectoryPaths:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 133
    if-lez v0, :cond_0

    .line 134
    const-string v4, " OR "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    :cond_0
    const-string v4, "_data LIKE ?"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->m_DirectoryPaths:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_1
    const-string v4, "))"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->shouldDeleteRawFiles()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 141
    const-string v4, " OR ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->m_DirectoryPaths:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_3

    .line 144
    if-lez v0, :cond_2

    .line 145
    const-string v4, " OR "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_2
    const-string v4, "_data LIKE ?"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->m_DirectoryPaths:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%.dng"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 149
    :cond_3
    const/16 v4, 0x29

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    :cond_4
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v4

    const-class v5, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-virtual {v4, v5}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    .line 154
    .local v3, "source":Lcom/oneplus/gallery2/media/MediaStoreMediaSource;
    if-nez v3, :cond_6

    .line 156
    iget-object v4, p0, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->TAG:Ljava/lang/String;

    const-string v5, "startDeletion() - Cannot find MediaStoreMediaSource"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0, p1, v6, p2}, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->completeDeletion(Lcom/oneplus/base/Handle;ZI)V

    .line 172
    :cond_5
    :goto_2
    return-void

    .line 160
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    new-instance v5, Lcom/oneplus/gallery2/media/SpecialDirMediaSet$1;

    invoke-direct {v5, p0, p1}, Lcom/oneplus/gallery2/media/SpecialDirMediaSet$1;-><init>(Lcom/oneplus/gallery2/media/SpecialDirMediaSet;Lcom/oneplus/base/Handle;)V

    invoke-virtual {v3, v1, v4, v5}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->deleteFromMediaStore(Ljava/lang/CharSequence;[Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;)Lcom/oneplus/base/Handle;

    move-result-object v4

    invoke-static {v4}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 169
    iget-object v4, p0, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->TAG:Ljava/lang/String;

    const-string v5, "startDeletion() - Fail to delete data from media store"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0, p1, v6, p2}, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->completeDeletion(Lcom/oneplus/base/Handle;ZI)V

    goto :goto_2
.end method
