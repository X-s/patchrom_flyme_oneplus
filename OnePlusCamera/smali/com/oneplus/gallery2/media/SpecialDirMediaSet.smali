.class public abstract Lcom/oneplus/gallery2/media/SpecialDirMediaSet;
.super Lcom/oneplus/gallery2/media/BaseMediaSet;
.source "SpecialDirMediaSet.java"


# instance fields
.field private final m_DirectoryPaths:[Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/MediaType;Ljava/util/Collection;)V
    .locals 6
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
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/media/BaseMediaSet;-><init>(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/MediaType;)V

    .line 34
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->m_DirectoryPaths:[Ljava/lang/String;

    .line 36
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 38
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 39
    :cond_0
    iget-object v4, p0, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->m_DirectoryPaths:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "/"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    move v1, v2

    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x2f

    if-ne v2, v4, :cond_0

    .line 41
    iget-object v4, p0, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->m_DirectoryPaths:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    aput-object v0, v4, v1

    move v1, v2

    goto :goto_0

    .line 43
    :cond_2
    return-void
.end method


# virtual methods
.method public deleteMedia(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 50
    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->shouldDeleteRawFiles()Z

    move-result v1

    if-nez v1, :cond_1

    .line 58
    :goto_0
    sget v1, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->FLAG_MOVE_TO_RECYCE_BIN:I

    and-int/2addr v1, p3

    if-nez v1, :cond_2

    .line 60
    :goto_1
    invoke-interface {p1, p2, v0}, Lcom/oneplus/gallery2/media/Media;->delete(Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "delete() - No media to delete"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-object v2

    .line 57
    :cond_1
    sget v0, Lcom/oneplus/gallery2/media/Media;->FLAG_INCLUDE_RAW_PHOTO:I

    or-int/lit8 v0, v0, 0x0

    goto :goto_0

    .line 59
    :cond_2
    sget v1, Lcom/oneplus/gallery2/media/Media;->FLAG_MOVE_TO_RECYCE_BIN:I

    or-int/2addr v0, v1

    goto :goto_1
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

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    .line 86
    instance-of v1, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    if-nez v1, :cond_0

    .line 90
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery2/media/BaseMediaSet;->onDeletionCompleted(ZI)V

    .line 91
    return-void

    .line 87
    :cond_0
    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->getMedia()Ljava/lang/Iterable;

    move-result-object v1

    const-class v2, Lcom/oneplus/gallery2/media/Media;

    invoke-static {v1, v2}, Lcom/oneplus/util/CollectionUtils;->toArray(Ljava/lang/Iterable;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/oneplus/gallery2/media/Media;

    invoke-virtual {v0, p0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->notifyMediaSetDeleted(Lcom/oneplus/gallery2/media/MediaSet;[Lcom/oneplus/gallery2/media/Media;)V

    goto :goto_0
.end method

.method public shouldContainsMedia(Lcom/oneplus/gallery2/media/Media;I)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 98
    sget v0, Lcom/oneplus/gallery2/media/Media;->FLAG_SUB_MEDIA:I

    and-int/2addr v0, p2

    if-nez v0, :cond_1

    .line 100
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 101
    if-nez v1, :cond_2

    .line 109
    :cond_0
    return v3

    .line 99
    :cond_1
    return v3

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->m_DirectoryPaths:[Ljava/lang/String;

    array-length v0, v0

    :cond_3
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 105
    iget-object v2, p0, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->m_DirectoryPaths:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldDeleteRawFiles()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method protected startDeletion(Lcom/oneplus/base/Handle;I)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v0, "((media_type=1 OR media_type=3) AND ("

    .line 130
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    .line 131
    :goto_0
    iget-object v4, p0, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->m_DirectoryPaths:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 133
    if-gtz v0, :cond_0

    :goto_1
    const-string/jumbo v4, "_data LIKE ?"

    .line 135
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->m_DirectoryPaths:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v4, " OR "

    .line 134
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "))"

    .line 138
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->shouldDeleteRawFiles()Z

    move-result v0

    if-nez v0, :cond_2

    .line 153
    :goto_2
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    const-class v4, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-virtual {v0, v4}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    .line 154
    if-eqz v0, :cond_5

    .line 160
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    new-instance v4, Lcom/oneplus/gallery2/media/SpecialDirMediaSet$1;

    invoke-direct {v4, p0, p1}, Lcom/oneplus/gallery2/media/SpecialDirMediaSet$1;-><init>(Lcom/oneplus/gallery2/media/SpecialDirMediaSet;Lcom/oneplus/base/Handle;)V

    invoke-virtual {v0, v3, v1, v4}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->deleteFromMediaStore(Ljava/lang/CharSequence;[Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;)Lcom/oneplus/base/Handle;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    .line 167
    if-eqz v0, :cond_6

    .line 172
    :goto_3
    return-void

    :cond_2
    const-string/jumbo v0, " OR ("

    .line 141
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    .line 142
    :goto_4
    iget-object v4, p0, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->m_DirectoryPaths:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_4

    .line 144
    if-gtz v0, :cond_3

    :goto_5
    const-string/jumbo v4, "_data LIKE ?"

    .line 146
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->m_DirectoryPaths:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "%.dng"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_3
    const-string/jumbo v4, " OR "

    .line 145
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 149
    :cond_4
    const/16 v0, 0x29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 156
    :cond_5
    iget-object v0, p0, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startDeletion() - Cannot find MediaStoreMediaSource"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0, p1, v2, p2}, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->completeDeletion(Lcom/oneplus/base/Handle;ZI)V

    .line 158
    return-void

    .line 169
    :cond_6
    iget-object v0, p0, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startDeletion() - Fail to delete data from media store"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0, p1, v2, p2}, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->completeDeletion(Lcom/oneplus/base/Handle;ZI)V

    goto :goto_3
.end method
