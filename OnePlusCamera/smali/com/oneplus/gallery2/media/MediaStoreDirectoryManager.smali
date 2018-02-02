.class public final Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;
.super Lcom/oneplus/gallery2/media/MediaSourceComponent;
.source "MediaStoreDirectoryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;,
        Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;,
        Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/gallery2/media/MediaSourceComponent",
        "<",
        "Lcom/oneplus/gallery2/media/MediaStoreMediaSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final MSG_EXTRA_DIR_INFO_GET:I = 0x2710


# instance fields
.field private m_DirectoriesReady:Z

.field private final m_DirectoryInfoById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final m_DirectoryInfoByPath:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final m_MediaCountChangedCB:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_NumOfDirQueryingExtraInfo:I

.field private final m_OpenedMediaSetLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;",
            ">;"
        }
    .end annotation
.end field

.field private final m_SystemDirPathPrefixList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final m_SystemDirectoryTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/oneplus/base/BaseApplication;)V
    .locals 2

    .prologue
    const-string/jumbo v0, "Media store directory manager"

    const-class v1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    .line 128
    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/gallery2/media/MediaSourceComponent;-><init>(Ljava/lang/String;Lcom/oneplus/base/component/ComponentOwner;Ljava/lang/Class;)V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoById:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoByPath:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_OpenedMediaSetLists:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_SystemDirectoryTable:Ljava/util/HashMap;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_SystemDirPathPrefixList:Ljava/util/List;

    .line 48
    new-instance v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$1;-><init>(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_MediaCountChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    .line 129
    return-void
.end method

.method static synthetic access$1(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;Lcom/oneplus/gallery2/media/DirectoryMediaSet;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 583
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->onMediaSetMediaCountChanged(Lcom/oneplus/gallery2/media/DirectoryMediaSet;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$2(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;)V
    .locals 0

    .prologue
    .line 447
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->onDirectoryMediaSetListReleased(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;)V

    return-void
.end method

.method static synthetic access$3(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addToDirectory(Lcom/oneplus/gallery2/media/MediaStoreItem;ZI)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 136
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/MediaStoreItem;->getParentId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    .line 137
    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    .line 138
    return-void

    .line 139
    :cond_1
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/MediaStoreItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->isPathInSystemDirectory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 142
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoById:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;

    .line 143
    if-nez v0, :cond_3

    .line 156
    invoke-static {v1}, Lcom/oneplus/io/Path;->getDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_6

    .line 162
    new-instance v1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;

    invoke-direct {v1, v2, v3, v0}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;-><init>(JLjava/lang/String;)V

    .line 163
    iget-object v4, v1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->media:Ljava/util/Set;

    check-cast p1, Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v4, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoById:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v4, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoByPath:Ljava/util/Map;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    if-eqz p2, :cond_7

    .line 170
    :goto_0
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v0

    new-instance v1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$2;

    invoke-direct {v1, p0, v2, v3}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$2;-><init>(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;J)V

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    .line 178
    if-nez v0, :cond_8

    .line 183
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addToDirectory() - Fail to post to media content thread to query extra info"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :goto_1
    return-void

    .line 141
    :cond_2
    return-void

    .line 145
    :cond_3
    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->media:Ljava/util/Set;

    move-object v1, p1

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 151
    :cond_4
    :goto_2
    iget-object v0, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->recycledMedia:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 152
    return-void

    :cond_5
    move-object v1, p1

    .line 147
    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    invoke-direct {p0, v0, v1, p3}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->notifyMediaCreated(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;Lcom/oneplus/gallery2/media/Media;I)V

    .line 148
    sget v1, Lcom/oneplus/gallery2/media/Media;->FLAG_RESTORE_FROM_RECYCLE_BIN:I

    and-int/2addr v1, p3

    if-eqz v1, :cond_4

    .line 149
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->createDefaultMediaSet(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;)V

    goto :goto_2

    .line 159
    :cond_6
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addToDirectory() - No directory path"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void

    .line 167
    :cond_7
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "addToDirectory() - New directory found : ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_8
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_NumOfDirQueryingExtraInfo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_NumOfDirQueryingExtraInfo:I

    goto :goto_1
.end method

.method private createDefaultMediaSet(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;)V
    .locals 11

    .prologue
    const/4 v3, 0x1

    .line 190
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v10, v0

    :goto_0
    if-ltz v10, :cond_2

    .line 192
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;

    .line 193
    iget-object v8, v9, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;->targetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    .line 194
    iget-object v0, p1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    .line 195
    if-eqz v0, :cond_0

    .line 201
    :goto_1
    invoke-static {v0}, Lcom/oneplus/gallery2/media/MediaSets;->isEmpty(Lcom/oneplus/gallery2/media/MediaSet;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    :goto_2
    add-int/lit8 v0, v10, -0x1

    move v10, v0

    goto :goto_0

    .line 197
    :cond_0
    new-instance v0, Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->getMediaSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    iget-wide v4, p1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->id:J

    iget-object v6, p1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->path:Ljava/lang/String;

    iget-object v7, p1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->extraInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;ZJLjava/lang/String;Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;Lcom/oneplus/gallery2/media/MediaType;)V

    .line 198
    sget-object v1, Lcom/oneplus/gallery2/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_MediaCountChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 199
    iget-object v1, p1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v1, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 202
    :cond_1
    invoke-virtual {v9, v0, v3}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;->addMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)I

    goto :goto_2

    .line 204
    :cond_2
    return-void
.end method

.method private deleteDefaultMediaSet(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 210
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_0
    if-ltz v3, :cond_1

    .line 212
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;

    .line 213
    iget-object v1, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;->targetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    .line 214
    iget-object v4, p1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    .line 215
    if-nez v1, :cond_0

    .line 210
    :goto_1
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_0

    .line 216
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;->removeMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)Z

    goto :goto_1

    .line 219
    :cond_1
    iget-object v0, p1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    .line 220
    array-length v3, v0

    move v1, v2

    :goto_2
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 222
    sget-object v4, Lcom/oneplus/gallery2/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v5, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_MediaCountChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v2, v4, v5}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 223
    invoke-virtual {v2}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->release()V

    .line 220
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 225
    :cond_2
    iget-object v0, p1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 226
    return-void
.end method

.method private notifyDirectoryRenamed(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 335
    iget-object v0, p1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    .line 336
    invoke-virtual {v0, p2, p3}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->onDirectoryRenamed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 337
    :cond_0
    iget-object v0, p1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->mediaSets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 339
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_1
    if-ltz v2, :cond_1

    .line 340
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    invoke-virtual {v1, p2, p3}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->onDirectoryRenamed(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_1

    .line 342
    :cond_2
    return-void
.end method

.method private notifyExtraDirectoryInfoUpdated(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;)V
    .locals 4

    .prologue
    .line 348
    iget-object v0, p1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    .line 349
    invoke-virtual {v0, p2}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->onExtraDirectoryInfoUpdated(Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;)V

    goto :goto_0

    .line 350
    :cond_0
    iget-object v0, p1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->mediaSets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 352
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_1
    if-ltz v2, :cond_1

    .line 353
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    invoke-virtual {v1, p2}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->onExtraDirectoryInfoUpdated(Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;)V

    .line 352
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_1

    .line 355
    :cond_2
    return-void
.end method

.method private notifyMediaCreated(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;Lcom/oneplus/gallery2/media/Media;I)V
    .locals 4

    .prologue
    .line 361
    iget-object v0, p1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    .line 362
    invoke-virtual {v0, p2, p3}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->onMediaCreated(Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_0

    .line 363
    :cond_0
    iget-object v0, p1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->mediaSets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 365
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_1
    if-ltz v2, :cond_1

    .line 366
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    invoke-virtual {v1, p2, p3}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->onMediaCreated(Lcom/oneplus/gallery2/media/Media;I)V

    .line 365
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_1

    .line 368
    :cond_2
    return-void
.end method

.method private notifyMediaDeleted(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;Lcom/oneplus/gallery2/media/Media;I)V
    .locals 4

    .prologue
    .line 374
    iget-object v0, p1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    .line 375
    invoke-virtual {v0, p2, p3}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->onMediaDeleted(Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_0

    .line 376
    :cond_0
    iget-object v0, p1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->mediaSets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 378
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_1
    if-ltz v2, :cond_1

    .line 379
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    invoke-virtual {v1, p2, p3}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->onMediaDeleted(Lcom/oneplus/gallery2/media/Media;I)V

    .line 378
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_1

    .line 381
    :cond_2
    return-void
.end method

.method private notifyMediaUpdated(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;Lcom/oneplus/gallery2/media/Media;I)V
    .locals 4

    .prologue
    .line 387
    iget-object v0, p1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    .line 388
    invoke-virtual {v0, p2, p3}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->onMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_0

    .line 389
    :cond_0
    iget-object v0, p1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->mediaSets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 391
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_1
    if-ltz v2, :cond_1

    .line 392
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    invoke-virtual {v1, p2, p3}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->onMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V

    .line 391
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_1

    .line 394
    :cond_2
    return-void
.end method

.method private onDirectoriesReady()V
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDirectoriesReady()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoriesReady:Z

    .line 411
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 412
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;->ready()V

    .line 411
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 413
    :cond_0
    return-void
.end method

.method private onDirectoryInfoReady(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;)V
    .locals 0

    .prologue
    .line 420
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->createDefaultMediaSet(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;)V

    .line 421
    return-void
.end method

.method private onDirectoryMediaSetListReleased(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;)V
    .locals 4

    .prologue
    .line 449
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 456
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDirectoryMediaSetListReleased() - All lists released"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;

    .line 459
    iget-object v1, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v3, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    .line 460
    iget-object v0, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 461
    array-length v0, v1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 462
    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->release()V

    goto :goto_0

    .line 450
    :cond_1
    return-void

    .line 453
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDirectoryMediaSetListReleased() - "

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, " list(s) opened"

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 454
    return-void

    .line 464
    :cond_3
    return-void
.end method

.method private onExtraDirectoryInfoGet(JLcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;)V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 498
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_NumOfDirQueryingExtraInfo:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_NumOfDirQueryingExtraInfo:I

    .line 501
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoById:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;

    .line 502
    if-eqz v0, :cond_2

    .line 504
    iget-object v3, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->extraInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    if-nez v3, :cond_3

    .line 508
    :cond_0
    iput-object p3, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->extraInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    .line 511
    invoke-direct {p0, v0, p3}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->notifyExtraDirectoryInfoUpdated(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;)V

    .line 514
    iget-boolean v1, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->isReady:Z

    if-eqz v1, :cond_5

    .line 519
    :goto_0
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoriesReady:Z

    if-eqz v0, :cond_6

    .line 521
    :cond_1
    :goto_1
    return-void

    .line 503
    :cond_2
    return-void

    .line 504
    :cond_3
    iget-object v3, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->extraInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    iget-wide v4, v3, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;->mediaAddedTime:J

    iget-wide v6, p3, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;->mediaAddedTime:J

    cmp-long v3, v4, v6

    if-gtz v3, :cond_4

    move v1, v2

    :cond_4
    if-nez v1, :cond_0

    .line 505
    return-void

    .line 516
    :cond_5
    iput-boolean v2, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->isReady:Z

    .line 517
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->onDirectoryInfoReady(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;)V

    goto :goto_0

    .line 519
    :cond_6
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_NumOfDirQueryingExtraInfo:I

    if-gtz v0, :cond_1

    .line 520
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->onDirectoriesReady()V

    goto :goto_1
.end method

.method private onMediaFileMoved(Lcom/oneplus/gallery2/media/MediaStoreItem;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 577
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/MediaStoreItem;->getPreviousParentId()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->removeFromDirectory(Lcom/oneplus/gallery2/media/MediaStoreItem;JI)V

    .line 578
    invoke-direct {p0, p1, v2, v2}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->addToDirectory(Lcom/oneplus/gallery2/media/MediaStoreItem;ZI)V

    .line 579
    return-void
.end method

.method private onMediaSetMediaCountChanged(Lcom/oneplus/gallery2/media/DirectoryMediaSet;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 585
    invoke-static {p2}, Lcom/oneplus/gallery2/media/MediaSets;->isEmpty(Ljava/lang/Integer;)Z

    move-result v0

    .line 586
    invoke-static {p3}, Lcom/oneplus/gallery2/media/MediaSets;->isEmpty(Ljava/lang/Integer;)Z

    move-result v1

    .line 587
    if-eq v0, v1, :cond_0

    .line 589
    if-nez v1, :cond_1

    .line 599
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 601
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;

    .line 602
    invoke-virtual {v0, p1, v2}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;->addMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)I

    .line 599
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 588
    :cond_0
    return-void

    .line 591
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_2

    .line 593
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;

    .line 594
    invoke-virtual {v0, p1, v2}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;->removeMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)Z

    .line 591
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 605
    :cond_2
    return-void
.end method

.method private removeFromDirectory(Lcom/oneplus/gallery2/media/MediaStoreItem;I)V
    .locals 2

    .prologue
    .line 723
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/MediaStoreItem;->getParentId()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->removeFromDirectory(Lcom/oneplus/gallery2/media/MediaStoreItem;JI)V

    .line 724
    return-void
.end method

.method private removeFromDirectory(Lcom/oneplus/gallery2/media/MediaStoreItem;JI)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    .line 727
    cmp-long v0, p2, v4

    if-ltz v0, :cond_0

    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    .line 728
    return-void

    :cond_0
    move v0, v1

    .line 727
    goto :goto_0

    .line 729
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoById:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;

    .line 730
    if-nez v0, :cond_3

    .line 770
    :cond_2
    :goto_1
    return-void

    .line 732
    :cond_3
    iget-object v3, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->media:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 733
    sget v4, Lcom/oneplus/gallery2/media/Media;->FLAG_MOVE_TO_RECYCE_BIN:I

    and-int/2addr v4, p4

    if-nez v4, :cond_5

    .line 734
    :goto_2
    if-eqz v1, :cond_6

    .line 741
    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->recycledMedia:Ljava/util/Set;

    move-object v1, p1

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 744
    :cond_4
    check-cast p1, Lcom/oneplus/gallery2/media/Media;

    invoke-direct {p0, v0, p1, p4}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->notifyMediaDeleted(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;Lcom/oneplus/gallery2/media/Media;I)V

    .line 745
    iget-object v1, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->media:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 748
    iget-object v1, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->recycledMedia:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 764
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "removeFromDirectory() - All media in directory ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " has been recycled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    :goto_3
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->deleteDefaultMediaSet(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;)V

    goto :goto_1

    :cond_5
    move v1, v2

    .line 733
    goto :goto_2

    .line 736
    :cond_6
    if-nez v3, :cond_4

    iget-object v1, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->recycledMedia:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 737
    return-void

    .line 742
    :cond_7
    return-void

    .line 750
    :cond_8
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "removeFromDirectory() - Directory ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " becomes empty"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoById:Ljava/util/Map;

    iget-wide v2, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoByPath:Ljava/util/Map;

    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->path:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$3;

    invoke-direct {v2, p0, p2, p3}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$3;-><init>(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;J)V

    invoke-static {v1, v2}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    goto :goto_3
.end method

.method private setupSystemDirTable()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 777
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 778
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 779
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_SystemDirectoryTable:Ljava/util/HashMap;

    sget-object v2, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;->CAMERA:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 783
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_SystemDirectoryTable:Ljava/util/HashMap;

    sget-object v2, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;->SCREENSHOTS:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;

    new-array v3, v6, [Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    .line 784
    aput-object v0, v4, v5

    const-string/jumbo v0, "Screenshots"

    aput-object v0, v4, v6

    invoke-static {v4}, Lcom/oneplus/io/Path;->combine([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    .line 783
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_SystemDirectoryTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 790
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_0
    if-ltz v2, :cond_0

    .line 791
    iget-object v4, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_SystemDirPathPrefixList:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "/"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 790
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_0

    .line 793
    :cond_1
    return-void
.end method


# virtual methods
.method public getDirectoryPath(J)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 236
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoById:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;

    .line 237
    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->path:Ljava/lang/String;

    goto :goto_0
.end method

.method getExtraDirectoryInfo(J)Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 248
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoById:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;

    .line 249
    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->extraInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    goto :goto_0
.end method

.method public getMedia(JLcom/oneplus/gallery2/media/MediaType;)Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/oneplus/gallery2/media/MediaType;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->verifyAccess()V

    .line 263
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoById:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;

    .line 264
    if-nez v0, :cond_0

    .line 266
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 265
    :cond_0
    new-instance v1, Lcom/oneplus/gallery2/media/MediaIterable;

    iget-object v0, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->media:Ljava/util/Set;

    invoke-direct {v1, p3, v0}, Lcom/oneplus/gallery2/media/MediaIterable;-><init>(Lcom/oneplus/gallery2/media/MediaType;Ljava/lang/Iterable;)V

    return-object v1
.end method

.method public getSystemDirectoryPaths(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_SystemDirectoryTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getSystemDirectoryPaths(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_SystemDirectoryTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 289
    if-nez v0, :cond_0

    .line 291
    :goto_0
    return-void

    .line 290
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 298
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 308
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/media/MediaSourceComponent;->handleMessage(Landroid/os/Message;)V

    .line 311
    :goto_0
    return-void

    .line 302
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 303
    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    invoke-direct {p0, v2, v3, v0}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->onExtraDirectoryInfoGet(JLcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;)V

    goto :goto_0

    .line 298
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method

.method public isPathInSystemDirectory(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 321
    if-eqz p1, :cond_0

    .line 323
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_SystemDirPathPrefixList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 325
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_SystemDirPathPrefixList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 323
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 322
    :cond_0
    return v2

    .line 326
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 328
    :cond_2
    return v2
.end method

.method protected bridge synthetic onBindToMediaSource(Lcom/oneplus/gallery2/media/MediaSource;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->onBindToMediaSource(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)V

    return-void
.end method

.method protected onBindToMediaSource(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)V
    .locals 0

    .prologue
    .line 402
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/media/MediaSourceComponent;->onBindToMediaSource(Lcom/oneplus/gallery2/media/MediaSource;)V

    .line 403
    return-void
.end method

.method onDirectoryMediaSetCreated(JLcom/oneplus/gallery2/media/DirectoryMediaSet;)V
    .locals 3

    .prologue
    .line 427
    invoke-virtual {p3}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    :goto_0
    return-void

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoById:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;

    .line 430
    if-nez v0, :cond_1

    .line 441
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onDirectoryMediaSetCreated() - No directory info for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 432
    :cond_1
    iget-object v1, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->mediaSets:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->getTargetMediaType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 433
    if-eqz v1, :cond_2

    .line 438
    :goto_1
    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 435
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 436
    iget-object v0, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->mediaSets:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->getTargetMediaType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method onDirectoryMediaSetReleased(JLcom/oneplus/gallery2/media/DirectoryMediaSet;)V
    .locals 5

    .prologue
    .line 470
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoById:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;

    .line 471
    if-nez v0, :cond_1

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    invoke-virtual {p3}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->getTargetMediaType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v2

    .line 474
    invoke-virtual {p3}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->isDefault()Z

    move-result v1

    if-nez v1, :cond_2

    .line 486
    iget-object v1, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->mediaSets:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 487
    if-eqz v1, :cond_0

    invoke-interface {v1, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    iget-object v0, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->mediaSets:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->getTargetMediaType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 476
    :cond_2
    iget-object v0, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_0

    .line 479
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;

    .line 480
    iget-object v3, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;->targetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    if-eq v3, v2, :cond_3

    .line 477
    :goto_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 481
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {v0, p3, v3}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;->removeMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)Z

    goto :goto_2
.end method

.method protected onInitialize()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 529
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v0

    .line 530
    if-eqz v0, :cond_1

    .line 534
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->setupSystemDirTable()V

    .line 537
    invoke-super {p0}, Lcom/oneplus/gallery2/media/MediaSourceComponent;->onInitialize()V

    .line 540
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->enableMediaChangeCallback()V

    .line 543
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 544
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->getMediaSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-virtual {v0, v1, v5}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia(Lcom/oneplus/gallery2/media/MediaType;I)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    .line 546
    instance-of v4, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    if-eqz v4, :cond_0

    .line 547
    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    const/4 v4, 0x1

    invoke-direct {p0, v0, v4, v5}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->addToDirectory(Lcom/oneplus/gallery2/media/MediaStoreItem;ZI)V

    goto :goto_0

    .line 531
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "No media content thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 549
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v2

    .line 550
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onInitialize() - Take "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ms to find "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoById:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " directories"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    return-void
.end method

.method protected onMediaCreated(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 558
    instance-of v0, p1, Lcom/oneplus/gallery2/media/MediaStoreItem;

    if-nez v0, :cond_1

    .line 559
    :cond_0
    return-void

    .line 558
    :cond_1
    sget v0, Lcom/oneplus/gallery2/media/Media;->FLAG_SUB_MEDIA:I

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    .line 560
    check-cast p1, Lcom/oneplus/gallery2/media/MediaStoreItem;

    invoke-direct {p0, p1, v1, p2}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->addToDirectory(Lcom/oneplus/gallery2/media/MediaStoreItem;ZI)V

    .line 561
    return-void
.end method

.method protected onMediaDeleted(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 1

    .prologue
    .line 568
    instance-of v0, p1, Lcom/oneplus/gallery2/media/MediaStoreItem;

    if-nez v0, :cond_1

    .line 569
    :cond_0
    return-void

    .line 568
    :cond_1
    sget v0, Lcom/oneplus/gallery2/media/Media;->FLAG_SUB_MEDIA:I

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    .line 570
    check-cast p1, Lcom/oneplus/gallery2/media/MediaStoreItem;

    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->removeFromDirectory(Lcom/oneplus/gallery2/media/MediaStoreItem;I)V

    .line 571
    return-void
.end method

.method protected onMediaTableReady()V
    .locals 1

    .prologue
    .line 613
    invoke-super {p0}, Lcom/oneplus/gallery2/media/MediaSourceComponent;->onMediaTableReady()V

    .line 616
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoriesReady:Z

    if-eqz v0, :cond_1

    .line 618
    :cond_0
    :goto_0
    return-void

    .line 616
    :cond_1
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_NumOfDirQueryingExtraInfo:I

    if-gtz v0, :cond_0

    .line 617
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->onDirectoriesReady()V

    goto :goto_0
.end method

.method protected onMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 8

    .prologue
    .line 626
    sget v0, Lcom/oneplus/gallery2/media/Media;->FLAG_FILE_PATH_CHANGED:I

    and-int/2addr v0, p2

    if-nez v0, :cond_1

    .line 627
    :cond_0
    return-void

    .line 626
    :cond_1
    sget v0, Lcom/oneplus/gallery2/media/Media;->FLAG_SUB_MEDIA:I

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    .line 628
    instance-of v0, p1, Lcom/oneplus/gallery2/media/MediaStoreItem;

    if-eqz v0, :cond_2

    .line 630
    sget v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_PARENT_ID_CHANGED:I

    and-int/2addr v0, p2

    if-nez v0, :cond_3

    move-object v0, p1

    .line 637
    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreItem;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaStoreItem;->getParentId()J

    move-result-wide v0

    .line 638
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoById:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;

    .line 639
    if-eqz v0, :cond_4

    .line 645
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getPreviousFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->isPathInSystemDirectory(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 654
    invoke-direct {p0, v0, p1, p2}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->notifyMediaUpdated(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;Lcom/oneplus/gallery2/media/Media;I)V

    .line 657
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/io/Path;->getDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 658
    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->path:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 662
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->isPathInSystemDirectory(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 669
    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->path:Ljava/lang/String;

    .line 670
    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onMediaUpdated() - Directory ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->id:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") renamed from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoByPath:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoByPath:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    iput-object v1, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->path:Ljava/lang/String;

    .line 674
    invoke-direct {p0, v0, v2, v1}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->notifyDirectoryRenamed(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    return-void

    .line 629
    :cond_2
    return-void

    .line 632
    :cond_3
    check-cast p1, Lcom/oneplus/gallery2/media/MediaStoreItem;

    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->onMediaFileMoved(Lcom/oneplus/gallery2/media/MediaStoreItem;I)V

    .line 633
    return-void

    .line 641
    :cond_4
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->isPathInSystemDirectory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 643
    :goto_0
    return-void

    .line 642
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->onMediaCreated(Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_0

    .line 649
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->onMediaCreated(Lcom/oneplus/gallery2/media/Media;I)V

    .line 650
    return-void

    .line 659
    :cond_7
    return-void

    .line 664
    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->onMediaDeleted(Lcom/oneplus/gallery2/media/Media;I)V

    .line 665
    return-void
.end method

.method public openDirectoryMediaSetList(Lcom/oneplus/gallery2/media/MediaType;)Lcom/oneplus/gallery2/media/MediaSetList;
    .locals 13

    .prologue
    const/4 v3, 0x1

    const/4 v12, 0x0

    .line 686
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->verifyAccess()V

    .line 687
    invoke-virtual {p0, v3}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->isRunningOrInitializing(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 691
    new-instance v10, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;

    invoke-direct {v10, p0, p1}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;-><init>(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;Lcom/oneplus/gallery2/media/MediaType;)V

    .line 692
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "openDirectoryMediaSetList() - "

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, " list(s) opened"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 696
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;

    .line 698
    iget-object v0, v9, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    .line 699
    if-eqz v0, :cond_2

    .line 707
    :goto_1
    invoke-static {v0}, Lcom/oneplus/gallery2/media/MediaSets;->isEmpty(Lcom/oneplus/gallery2/media/MediaSet;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 708
    invoke-virtual {v10, v0, v12}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;->addMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)I

    goto :goto_0

    .line 688
    :cond_1
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSetList;->EMPTY:Lcom/oneplus/gallery2/media/MediaSetList;

    return-object v0

    .line 701
    :cond_2
    iget-boolean v0, v9, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->isReady:Z

    if-eqz v0, :cond_0

    .line 703
    new-instance v0, Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->getMediaSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    iget-wide v4, v9, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->id:J

    iget-object v6, v9, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->path:Ljava/lang/String;

    iget-object v7, v9, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->extraInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    move-object v2, p0

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;ZJLjava/lang/String;Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;Lcom/oneplus/gallery2/media/MediaType;)V

    .line 704
    sget-object v1, Lcom/oneplus/gallery2/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_MediaCountChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 705
    iget-object v1, v9, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 712
    :cond_3
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoriesReady:Z

    if-nez v0, :cond_4

    .line 716
    :goto_2
    return-object v10

    .line 713
    :cond_4
    invoke-virtual {v10}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;->ready()V

    goto :goto_2
.end method

.method updateLastMediaAddedTime(Lcom/oneplus/gallery2/media/DirectoryMediaSet;J)V
    .locals 6

    .prologue
    .line 803
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->getDirectoryId()J

    move-result-wide v2

    .line 804
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoById:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;

    .line 805
    if-eqz v0, :cond_0

    .line 810
    iget-object v1, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->extraInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    if-eqz v1, :cond_1

    .line 812
    :goto_0
    iget-object v1, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->extraInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    iput-wide p2, v1, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;->mediaAddedTime:J

    .line 813
    iget-object v0, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->extraInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    move-result-object v0

    .line 814
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$4;

    invoke-direct {v2, p0, v0}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$4;-><init>(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;)V

    invoke-static {v1, v2}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 822
    return-void

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateLastMediaAddedTime() - No directory info for "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    return-void

    .line 811
    :cond_1
    new-instance v1, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    invoke-direct {v1, v2, v3}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;-><init>(J)V

    iput-object v1, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->extraInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    goto :goto_0
.end method
