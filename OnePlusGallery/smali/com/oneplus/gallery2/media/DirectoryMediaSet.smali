.class public Lcom/oneplus/gallery2/media/DirectoryMediaSet;
.super Lcom/oneplus/gallery2/media/BaseMediaSet;
.source "DirectoryMediaSet.java"


# instance fields
.field private final m_DirectoryId:J

.field private m_DirectoryManager:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;

.field private m_DirectoryPath:Ljava/lang/String;

.field private final m_Id:Ljava/lang/String;

.field private final m_IsDefault:Z

.field private m_LastAddedTimeInMediaStore:J


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;JLcom/oneplus/gallery2/media/MediaType;)V
    .locals 9
    .param p1, "source"    # Lcom/oneplus/gallery2/media/MediaStoreMediaSource;
    .param p2, "dirManager"    # Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;
    .param p3, "id"    # J
    .param p5, "targetMediaType"    # Lcom/oneplus/gallery2/media/MediaType;

    .prologue
    const/4 v6, 0x0

    .line 42
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    move-object v7, v6

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;ZJLjava/lang/String;Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;Lcom/oneplus/gallery2/media/MediaType;)V

    .line 43
    return-void
.end method

.method constructor <init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;ZJLjava/lang/String;Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;Lcom/oneplus/gallery2/media/MediaType;)V
    .locals 10
    .param p1, "source"    # Lcom/oneplus/gallery2/media/MediaStoreMediaSource;
    .param p2, "dirManager"    # Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;
    .param p3, "isDefault"    # Z
    .param p4, "id"    # J
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "extraInfo"    # Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;
    .param p8, "targetMediaType"    # Lcom/oneplus/gallery2/media/MediaType;

    .prologue
    .line 58
    move-object/from16 v0, p8

    invoke-direct {p0, p1, v0}, Lcom/oneplus/gallery2/media/BaseMediaSet;-><init>(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/MediaType;)V

    .line 61
    if-nez p2, :cond_0

    .line 62
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "No directory manager"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 63
    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v6, p4, v6

    if-gez v6, :cond_1

    .line 64
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid ID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 67
    :cond_1
    iput-object p2, p0, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->m_DirectoryManager:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;

    .line 68
    iput-wide p4, p0, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->m_DirectoryId:J

    .line 69
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Directory:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->m_Id:Ljava/lang/String;

    .line 70
    iput-boolean p3, p0, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->m_IsDefault:Z

    .line 73
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->onMediaIterationStarted()V

    .line 74
    move-object/from16 v0, p8

    invoke-virtual {p2, p4, p5, v0}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->getMedia(JLcom/oneplus/gallery2/media/MediaType;)Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/media/Media;

    .line 75
    .local v3, "media":Lcom/oneplus/gallery2/media/Media;
    invoke-virtual {p0, v3}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->onIterateMedia(Lcom/oneplus/gallery2/media/Media;)V

    goto :goto_0

    .line 76
    .end local v3    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->onMediaIterationEnded()V

    .line 79
    if-nez p6, :cond_3

    .line 80
    invoke-virtual {p2, p4, p5}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->getDirectoryPath(J)Ljava/lang/String;

    move-result-object p6

    .line 81
    :cond_3
    if-eqz p6, :cond_4

    .line 82
    sget-object v6, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    invoke-static/range {p6 .. p6}, Lcom/oneplus/io/Path;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 83
    :cond_4
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->m_DirectoryPath:Ljava/lang/String;

    .line 86
    if-nez p7, :cond_5

    .line 87
    invoke-virtual {p2, p4, p5}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->getExtraDirectoryInfo(J)Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    move-result-object p7

    .line 90
    :cond_5
    iget-wide v4, p0, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->m_LastAddedTimeInMediaStore:J

    .line 91
    .local v4, "lastAddedTime":J
    if-eqz p7, :cond_6

    .line 92
    move-object/from16 v0, p7

    iget-wide v6, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;->mediaAddedTime:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 93
    :cond_6
    sget-object v6, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->PROP_LAST_MEDIA_ADDED_TIME:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 96
    invoke-virtual {p2, p4, p5, p0}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->onDirectoryMediaSetCreated(JLcom/oneplus/gallery2/media/DirectoryMediaSet;)V

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery2/media/DirectoryMediaSet;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->m_DirectoryPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/gallery2/media/DirectoryMediaSet;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/gallery2/media/DirectoryMediaSet;)J
    .locals 2
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->m_DirectoryId:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/oneplus/gallery2/media/DirectoryMediaSet;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected completeDeletion(Lcom/oneplus/base/Handle;ZI)V
    .locals 2
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "success"    # Z
    .param p3, "flags"    # I

    .prologue
    .line 105
    if-eqz p2, :cond_0

    .line 107
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v0

    new-instance v1, Lcom/oneplus/gallery2/media/DirectoryMediaSet$1;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery2/media/DirectoryMediaSet$1;-><init>(Lcom/oneplus/gallery2/media/DirectoryMediaSet;)V

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->TAG:Ljava/lang/String;

    const-string v1, "completeDeletion() - Fail to post to media content thread"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/gallery2/media/BaseMediaSet;->completeDeletion(Lcom/oneplus/base/Handle;ZI)V

    .line 137
    if-eqz p2, :cond_1

    .line 138
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->release()V

    .line 139
    :cond_1
    return-void
.end method

.method public deleteMedia(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;
    .locals 3
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "callback"    # Lcom/oneplus/gallery2/media/Media$DeletionCallback;
    .param p3, "flags"    # I

    .prologue
    .line 146
    if-nez p1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->TAG:Ljava/lang/String;

    const-string v2, "delete() - No media to delete"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const/4 v1, 0x0

    .line 154
    :goto_0
    return-object v1

    .line 151
    :cond_0
    const/4 v0, 0x0

    .line 152
    .local v0, "mediaFlags":I
    sget v1, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->FLAG_MOVE_TO_RECYCE_BIN:I

    and-int/2addr v1, p3

    if-eqz v1, :cond_1

    .line 153
    sget v1, Lcom/oneplus/gallery2/media/Media;->FLAG_MOVE_TO_RECYCE_BIN:I

    or-int/2addr v0, v1

    .line 154
    :cond_1
    invoke-interface {p1, p2, v0}, Lcom/oneplus/gallery2/media/Media;->delete(Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    goto :goto_0
.end method

.method public final getDirectoryId()J
    .locals 2

    .prologue
    .line 164
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->m_DirectoryId:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->m_Id:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/oneplus/gallery2/media/MediaSet$Type;
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSet$Type;->APPLICATION:Lcom/oneplus/gallery2/media/MediaSet$Type;

    return-object v0
.end method

.method final isDefault()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->m_IsDefault:Z

    return v0
.end method

.method public isVirtual()Z
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method protected onDeletionCompleted(ZI)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "flags"    # I

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->getMedia()Ljava/lang/Iterable;

    move-result-object v1

    const-class v2, Lcom/oneplus/gallery2/media/Media;

    invoke-static {v1, v2}, Lcom/oneplus/util/CollectionUtils;->toArray(Ljava/lang/Iterable;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/oneplus/gallery2/media/Media;

    invoke-virtual {v0, p0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->notifyMediaSetDeleted(Lcom/oneplus/gallery2/media/MediaSet;[Lcom/oneplus/gallery2/media/Media;)V

    .line 207
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery2/media/BaseMediaSet;->onDeletionCompleted(ZI)V

    .line 208
    return-void
.end method

.method protected onDirectoryRenamed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "oldPath"    # Ljava/lang/String;
    .param p2, "newPath"    # Ljava/lang/String;

    .prologue
    .line 218
    iput-object p2, p0, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->m_DirectoryPath:Ljava/lang/String;

    .line 219
    sget-object v0, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    invoke-static {p2}, Lcom/oneplus/io/Path;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 220
    return-void
.end method

.method final onExtraDirectoryInfoUpdated(Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;)V
    .locals 6
    .param p1, "extraInfo"    # Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    .prologue
    .line 229
    if-eqz p1, :cond_0

    .line 230
    sget-object v0, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->PROP_LAST_MEDIA_ADDED_TIME:Lcom/oneplus/base/PropertyKey;

    iget-wide v2, p0, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->m_LastAddedTimeInMediaStore:J

    iget-wide v4, p1, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;->mediaAddedTime:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 231
    :cond_0
    return-void
.end method

.method protected onIterateMedia(Lcom/oneplus/gallery2/media/Media;)V
    .locals 4
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 238
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSet;->onIterateMedia(Lcom/oneplus/gallery2/media/Media;)V

    .line 239
    instance-of v2, p1, Lcom/oneplus/gallery2/media/MediaStoreItem;

    if-eqz v2, :cond_0

    .line 241
    check-cast p1, Lcom/oneplus/gallery2/media/MediaStoreItem;

    .end local p1    # "media":Lcom/oneplus/gallery2/media/Media;
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/MediaStoreItem;->getAddedTime()J

    move-result-wide v0

    .line 242
    .local v0, "addedTime":J
    iget-wide v2, p0, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->m_LastAddedTimeInMediaStore:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 243
    iput-wide v0, p0, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->m_LastAddedTimeInMediaStore:J

    .line 245
    .end local v0    # "addedTime":J
    :cond_0
    return-void
.end method

.method protected onMediaCreated(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 4
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "flags"    # I

    .prologue
    .line 253
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery2/media/BaseMediaSet;->onMediaCreated(Lcom/oneplus/gallery2/media/Media;I)V

    .line 256
    const-wide/16 v0, 0x0

    .line 257
    .local v0, "addedTime":J
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v2

    sget-object v3, Lcom/oneplus/gallery2/media/MediaSource;->PROP_IS_MEDIA_TABLE_READY:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/oneplus/gallery2/media/MediaSource;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 265
    .end local p1    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_0
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 267
    sget-object v2, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->PROP_LAST_MEDIA_ADDED_TIME:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 268
    iget-object v2, p0, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->m_DirectoryManager:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;

    invoke-virtual {v2, p0, v0, v1}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->updateLastMediaAddedTime(Lcom/oneplus/gallery2/media/DirectoryMediaSet;J)V

    .line 270
    :cond_1
    return-void

    .line 259
    .restart local p1    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_2
    instance-of v2, p1, Lcom/oneplus/gallery2/media/MediaStoreItem;

    if-eqz v2, :cond_0

    .line 261
    check-cast p1, Lcom/oneplus/gallery2/media/MediaStoreItem;

    .end local p1    # "media":Lcom/oneplus/gallery2/media/Media;
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/MediaStoreItem;->getAddedTime()J

    move-result-wide v0

    .line 262
    sget-object v2, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->PROP_LAST_MEDIA_ADDED_TIME:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 263
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected onMediaIterationStarted()V
    .locals 2

    .prologue
    .line 277
    invoke-super {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->onMediaIterationStarted()V

    .line 278
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->m_LastAddedTimeInMediaStore:J

    .line 279
    return-void
.end method

.method protected onPrepareLocaleChangedCallback()Lcom/oneplus/base/PropertyChangedCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPrepareMediaChangeCallback()Lcom/oneplus/base/Handle;
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPrepareMediaIterationClient()Lcom/oneplus/base/Handle;
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onRelease()V
    .locals 4

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->verifyAccess()V

    .line 312
    iget-object v0, p0, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->m_DirectoryManager:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;

    iget-wide v2, p0, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->m_DirectoryId:J

    invoke-virtual {v0, v2, v3, p0}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->onDirectoryMediaSetReleased(JLcom/oneplus/gallery2/media/DirectoryMediaSet;)V

    .line 315
    invoke-super {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->onRelease()V

    .line 316
    return-void
.end method

.method protected shouldContainsMedia(Lcom/oneplus/gallery2/media/Media;I)Z
    .locals 6
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 323
    sget v1, Lcom/oneplus/gallery2/media/Media;->FLAG_SUB_MEDIA:I

    and-int/2addr v1, p2

    if-eqz v1, :cond_1

    .line 327
    .end local p1    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_0
    :goto_0
    return v0

    .line 325
    .restart local p1    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_1
    instance-of v1, p1, Lcom/oneplus/gallery2/media/MediaStoreItem;

    if-eqz v1, :cond_0

    .line 327
    check-cast p1, Lcom/oneplus/gallery2/media/MediaStoreItem;

    .end local p1    # "media":Lcom/oneplus/gallery2/media/Media;
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/MediaStoreItem;->getParentId()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->m_DirectoryId:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected startDeletion(Lcom/oneplus/base/Handle;I)V
    .locals 4
    .param p1, "deletionHandle"    # Lcom/oneplus/base/Handle;
    .param p2, "flags"    # I

    .prologue
    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(media_type=1 OR media_type=3) AND parent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->m_DirectoryId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "selection":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->m_DirectoryManager:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->getMediaSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    const/4 v2, 0x0

    new-instance v3, Lcom/oneplus/gallery2/media/DirectoryMediaSet$2;

    invoke-direct {v3, p0, p1}, Lcom/oneplus/gallery2/media/DirectoryMediaSet$2;-><init>(Lcom/oneplus/gallery2/media/DirectoryMediaSet;Lcom/oneplus/base/Handle;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->deleteFromMediaStore(Ljava/lang/CharSequence;[Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 349
    iget-object v1, p0, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->TAG:Ljava/lang/String;

    const-string v2, "startDeletion() - Fail to delete data from media store"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p2}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->completeDeletion(Lcom/oneplus/base/Handle;ZI)V

    .line 353
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->m_DirectoryId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->m_DirectoryPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
