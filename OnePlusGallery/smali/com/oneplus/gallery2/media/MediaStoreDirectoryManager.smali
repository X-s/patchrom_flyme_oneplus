.class public final Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;
.super Lcom/oneplus/gallery2/media/MediaSourceComponent;
.source "MediaStoreDirectoryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;,
        Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;,
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
    .param p1, "app"    # Lcom/oneplus/base/BaseApplication;

    .prologue
    .line 128
    const-string v0, "Media store directory manager"

    const-class v1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

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

.method static synthetic access$000(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;Lcom/oneplus/gallery2/media/DirectoryMediaSet;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/DirectoryMediaSet;
    .param p2, "x2"    # Ljava/lang/Integer;
    .param p3, "x3"    # Ljava/lang/Integer;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->onMediaSetMediaCountChanged(Lcom/oneplus/gallery2/media/DirectoryMediaSet;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->onDirectoryMediaSetListReleased(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addToDirectory(Lcom/oneplus/gallery2/media/MediaStoreItem;ZI)V
    .locals 8
    .param p1, "media"    # Lcom/oneplus/gallery2/media/MediaStoreItem;
    .param p2, "isInit"    # Z
    .param p3, "flags"    # I

    .prologue
    .line 136
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/MediaStoreItem;->getParentId()J

    move-result-wide v0

    .line 137
    .local v0, "dirId":J
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-gez v5, :cond_1

    .line 184
    .end local p1    # "media":Lcom/oneplus/gallery2/media/MediaStoreItem;
    :cond_0
    :goto_0
    return-void

    .line 139
    .restart local p1    # "media":Lcom/oneplus/gallery2/media/MediaStoreItem;
    :cond_1
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/MediaStoreItem;->getFilePath()Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, "filePath":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->isPathInSystemDirectory(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 142
    iget-object v5, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoById:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;

    .line 143
    .local v2, "dirInfo":Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;
    if-eqz v2, :cond_3

    .line 145
    iget-object v6, v2, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->media:Ljava/util/Set;

    move-object v5, p1

    check-cast v5, Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, p1

    .line 147
    check-cast v5, Lcom/oneplus/gallery2/media/Media;

    invoke-direct {p0, v2, v5, p3}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->notifyMediaCreated(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;Lcom/oneplus/gallery2/media/Media;I)V

    .line 148
    sget v5, Lcom/oneplus/gallery2/media/Media;->FLAG_RESTORE_FROM_RECYCLE_BIN:I

    and-int/2addr v5, p3

    if-eqz v5, :cond_2

    .line 149
    invoke-direct {p0, v2}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->createDefaultMediaSet(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;)V

    .line 151
    :cond_2
    iget-object v5, v2, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->recycledMedia:Ljava/util/Set;

    invoke-interface {v5, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 156
    :cond_3
    invoke-static {v4}, Lcom/oneplus/io/Path;->getDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, "dirPath":Ljava/lang/String;
    if-nez v3, :cond_4

    .line 159
    iget-object v5, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->TAG:Ljava/lang/String;

    const-string v6, "addToDirectory() - No directory path"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_4
    new-instance v2, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;

    .end local v2    # "dirInfo":Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;
    invoke-direct {v2, v0, v1, v3}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;-><init>(JLjava/lang/String;)V

    .line 163
    .restart local v2    # "dirInfo":Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;
    iget-object v5, v2, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->media:Ljava/util/Set;

    check-cast p1, Lcom/oneplus/gallery2/media/Media;

    .end local p1    # "media":Lcom/oneplus/gallery2/media/MediaStoreItem;
    invoke-interface {v5, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v5, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoById:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v5, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoByPath:Ljava/util/Map;

    invoke-interface {v5, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    if-nez p2, :cond_5

    .line 167
    iget-object v5, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addToDirectory() - New directory found : ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_5
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v5

    new-instance v6, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$2;

    invoke-direct {v6, p0, v0, v1}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$2;-><init>(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;J)V

    invoke-static {v5, v6}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 180
    iget v5, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_NumOfDirQueryingExtraInfo:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_NumOfDirQueryingExtraInfo:I

    goto/16 :goto_0

    .line 183
    :cond_6
    iget-object v5, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->TAG:Ljava/lang/String;

    const-string v6, "addToDirectory() - Fail to post to media content thread to query extra info"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private createDefaultMediaSet(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;)V
    .locals 11
    .param p1, "dirInfo"    # Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;

    .prologue
    const/4 v3, 0x1

    .line 190
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v9, v1, -0x1

    .local v9, "i":I
    :goto_0
    if-ltz v9, :cond_2

    .line 192
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;

    .line 193
    .local v10, "mediaSetList":Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;
    iget-object v8, v10, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;->targetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    .line 194
    .local v8, "mediaType":Lcom/oneplus/gallery2/media/MediaType;
    iget-object v1, p1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    .line 195
    .local v0, "mediaSet":Lcom/oneplus/gallery2/media/DirectoryMediaSet;
    if-nez v0, :cond_0

    .line 197
    new-instance v0, Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    .end local v0    # "mediaSet":Lcom/oneplus/gallery2/media/DirectoryMediaSet;
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->getMediaSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    iget-wide v4, p1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->id:J

    iget-object v6, p1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->path:Ljava/lang/String;

    iget-object v7, p1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->extraInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;ZJLjava/lang/String;Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;Lcom/oneplus/gallery2/media/MediaType;)V

    .line 198
    .restart local v0    # "mediaSet":Lcom/oneplus/gallery2/media/DirectoryMediaSet;
    sget-object v1, Lcom/oneplus/gallery2/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_MediaCountChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 199
    iget-object v1, p1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v1, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_0
    invoke-static {v0}, Lcom/oneplus/gallery2/media/MediaSets;->isEmpty(Lcom/oneplus/gallery2/media/MediaSet;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 202
    invoke-virtual {v10, v0, v3}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;->addMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)I

    .line 190
    :cond_1
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 204
    .end local v0    # "mediaSet":Lcom/oneplus/gallery2/media/DirectoryMediaSet;
    .end local v8    # "mediaType":Lcom/oneplus/gallery2/media/MediaType;
    .end local v10    # "mediaSetList":Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;
    :cond_2
    return-void
.end method

.method private deleteDefaultMediaSet(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;)V
    .locals 10
    .param p1, "dirInfo"    # Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;

    .prologue
    .line 210
    iget-object v8, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 212
    iget-object v8, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;

    .line 213
    .local v6, "mediaSetList":Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;
    iget-object v7, v6, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;->targetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    .line 214
    .local v7, "mediaType":Lcom/oneplus/gallery2/media/MediaType;
    iget-object v8, p1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    .line 215
    .local v5, "mediaSet":Lcom/oneplus/gallery2/media/DirectoryMediaSet;
    if-eqz v5, :cond_0

    .line 216
    const/4 v8, 0x1

    invoke-virtual {v6, v5, v8}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;->removeMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)Z

    .line 210
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 219
    .end local v5    # "mediaSet":Lcom/oneplus/gallery2/media/DirectoryMediaSet;
    .end local v6    # "mediaSetList":Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;
    .end local v7    # "mediaType":Lcom/oneplus/gallery2/media/MediaType;
    :cond_1
    iget-object v8, p1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    iget-object v9, p1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    new-array v9, v9, [Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    invoke-interface {v8, v9}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    .line 220
    .local v1, "defaultMediaSets":[Lcom/oneplus/gallery2/media/DirectoryMediaSet;
    move-object v0, v1

    .local v0, "arr$":[Lcom/oneplus/gallery2/media/DirectoryMediaSet;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v5, v0, v3

    .line 222
    .restart local v5    # "mediaSet":Lcom/oneplus/gallery2/media/DirectoryMediaSet;
    sget-object v8, Lcom/oneplus/gallery2/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v9, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_MediaCountChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v5, v8, v9}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 223
    invoke-virtual {v5}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->release()V

    .line 220
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 225
    .end local v5    # "mediaSet":Lcom/oneplus/gallery2/media/DirectoryMediaSet;
    :cond_2
    iget-object v8, p1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->clear()V

    .line 226
    return-void
.end method

.method private notifyDirectoryRenamed(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "dirInfo"    # Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;
    .param p2, "oldPath"    # Ljava/lang/String;
    .param p3, "newPath"    # Ljava/lang/String;

    .prologue
    .line 335
    iget-object v4, p1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    .line 336
    .local v3, "mediaSet":Lcom/oneplus/gallery2/media/DirectoryMediaSet;
    invoke-virtual {v3, p2, p3}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->onDirectoryRenamed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 337
    .end local v3    # "mediaSet":Lcom/oneplus/gallery2/media/DirectoryMediaSet;
    :cond_0
    iget-object v4, p1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->mediaSets:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 339
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/DirectoryMediaSet;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 340
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    invoke-virtual {v4, p2, p3}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->onDirectoryRenamed(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 342
    .end local v0    # "i":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/DirectoryMediaSet;>;"
    :cond_2
    return-void
.end method

.method private notifyExtraDirectoryInfoUpdated(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;)V
    .locals 5
    .param p1, "dirInfo"    # Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;
    .param p2, "extraInfo"    # Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    .prologue
    .line 348
    iget-object v4, p1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    .line 349
    .local v3, "mediaSet":Lcom/oneplus/gallery2/media/DirectoryMediaSet;
    invoke-virtual {v3, p2}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->onExtraDirectoryInfoUpdated(Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;)V

    goto :goto_0

    .line 350
    .end local v3    # "mediaSet":Lcom/oneplus/gallery2/media/DirectoryMediaSet;
    :cond_0
    iget-object v4, p1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->mediaSets:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 352
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/DirectoryMediaSet;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 353
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    invoke-virtual {v4, p2}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->onExtraDirectoryInfoUpdated(Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;)V

    .line 352
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 355
    .end local v0    # "i":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/DirectoryMediaSet;>;"
    :cond_2
    return-void
.end method

.method private notifyMediaCreated(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;Lcom/oneplus/gallery2/media/Media;I)V
    .locals 5
    .param p1, "dirInfo"    # Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;
    .param p2, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p3, "flags"    # I

    .prologue
    .line 361
    iget-object v4, p1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    .line 362
    .local v3, "mediaSet":Lcom/oneplus/gallery2/media/DirectoryMediaSet;
    invoke-virtual {v3, p2, p3}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->onMediaCreated(Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_0

    .line 363
    .end local v3    # "mediaSet":Lcom/oneplus/gallery2/media/DirectoryMediaSet;
    :cond_0
    iget-object v4, p1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->mediaSets:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 365
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/DirectoryMediaSet;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 366
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    invoke-virtual {v4, p2, p3}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->onMediaCreated(Lcom/oneplus/gallery2/media/Media;I)V

    .line 365
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 368
    .end local v0    # "i":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/DirectoryMediaSet;>;"
    :cond_2
    return-void
.end method

.method private notifyMediaDeleted(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;Lcom/oneplus/gallery2/media/Media;I)V
    .locals 5
    .param p1, "dirInfo"    # Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;
    .param p2, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p3, "flags"    # I

    .prologue
    .line 374
    iget-object v4, p1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    .line 375
    .local v3, "mediaSet":Lcom/oneplus/gallery2/media/DirectoryMediaSet;
    invoke-virtual {v3, p2, p3}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->onMediaDeleted(Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_0

    .line 376
    .end local v3    # "mediaSet":Lcom/oneplus/gallery2/media/DirectoryMediaSet;
    :cond_0
    iget-object v4, p1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->mediaSets:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 378
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/DirectoryMediaSet;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 379
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    invoke-virtual {v4, p2, p3}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->onMediaDeleted(Lcom/oneplus/gallery2/media/Media;I)V

    .line 378
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 381
    .end local v0    # "i":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/DirectoryMediaSet;>;"
    :cond_2
    return-void
.end method

.method private notifyMediaUpdated(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;Lcom/oneplus/gallery2/media/Media;I)V
    .locals 5
    .param p1, "dirInfo"    # Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;
    .param p2, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p3, "flags"    # I

    .prologue
    .line 387
    iget-object v4, p1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    .line 388
    .local v3, "mediaSet":Lcom/oneplus/gallery2/media/DirectoryMediaSet;
    invoke-virtual {v3, p2, p3}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->onMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_0

    .line 389
    .end local v3    # "mediaSet":Lcom/oneplus/gallery2/media/DirectoryMediaSet;
    :cond_0
    iget-object v4, p1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->mediaSets:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 391
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/DirectoryMediaSet;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 392
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    invoke-virtual {v4, p2, p3}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->onMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V

    .line 391
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 394
    .end local v0    # "i":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/DirectoryMediaSet;>;"
    :cond_2
    return-void
.end method

.method private onDirectoriesReady()V
    .locals 3

    .prologue
    .line 409
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->TAG:Ljava/lang/String;

    const-string v2, "onDirectoriesReady()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoriesReady:Z

    .line 411
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 412
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;->ready()V

    .line 411
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 413
    :cond_0
    return-void
.end method

.method private onDirectoryInfoReady(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;)V
    .locals 0
    .param p1, "dirInfo"    # Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;

    .prologue
    .line 420
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->createDefaultMediaSet(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;)V

    .line 421
    return-void
.end method

.method private onDirectoryMediaSetListReleased(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;)V
    .locals 8
    .param p1, "mediaSetList"    # Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;

    .prologue
    .line 449
    iget-object v4, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    iget-object v4, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 453
    iget-object v4, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->TAG:Ljava/lang/String;

    const-string v5, "onDirectoryMediaSetListReleased() - "

    iget-object v6, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, " list(s) opened"

    invoke-static {v4, v5, v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 456
    :cond_2
    iget-object v4, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->TAG:Ljava/lang/String;

    const-string v5, "onDirectoryMediaSetListReleased() - All lists released"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iget-object v4, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoById:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;

    .line 459
    .local v1, "dirInfo":Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;
    iget-object v4, v1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    iget-object v5, v1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    new-array v5, v5, [Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    .line 460
    .local v0, "defaultMediaSets":[Lcom/oneplus/gallery2/media/DirectoryMediaSet;
    iget-object v4, v1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 461
    array-length v4, v0

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_3

    .line 462
    aget-object v4, v0, v2

    invoke-virtual {v4}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->release()V

    .line 461
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method private onExtraDirectoryInfoGet(JLcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;)V
    .locals 7
    .param p1, "dirId"    # J
    .param p3, "extraInfo"    # Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    .prologue
    .line 498
    iget v1, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_NumOfDirQueryingExtraInfo:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_NumOfDirQueryingExtraInfo:I

    .line 501
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoById:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;

    .line 502
    .local v0, "dirInfo":Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;
    if-nez v0, :cond_1

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    iget-object v1, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->extraInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->extraInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    iget-wide v2, v1, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;->mediaAddedTime:J

    iget-wide v4, p3, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;->mediaAddedTime:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 508
    :cond_2
    iput-object p3, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->extraInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    .line 511
    invoke-direct {p0, v0, p3}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->notifyExtraDirectoryInfoUpdated(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;)V

    .line 514
    iget-boolean v1, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->isReady:Z

    if-nez v1, :cond_3

    .line 516
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->isReady:Z

    .line 517
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->onDirectoryInfoReady(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;)V

    .line 519
    :cond_3
    iget-boolean v1, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoriesReady:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_NumOfDirQueryingExtraInfo:I

    if-gtz v1, :cond_0

    .line 520
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->onDirectoriesReady()V

    goto :goto_0
.end method

.method private onMediaFileMoved(Lcom/oneplus/gallery2/media/MediaStoreItem;I)V
    .locals 3
    .param p1, "media"    # Lcom/oneplus/gallery2/media/MediaStoreItem;
    .param p2, "flags"    # I

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
    .locals 6
    .param p1, "mediaSet"    # Lcom/oneplus/gallery2/media/DirectoryMediaSet;
    .param p2, "prevMediaCount"    # Ljava/lang/Integer;
    .param p3, "mediaCount"    # Ljava/lang/Integer;

    .prologue
    const/4 v5, 0x1

    .line 585
    invoke-static {p2}, Lcom/oneplus/gallery2/media/MediaSets;->isEmpty(Ljava/lang/Integer;)Z

    move-result v2

    .line 586
    .local v2, "isPrevEmpty":Z
    invoke-static {p3}, Lcom/oneplus/gallery2/media/MediaSets;->isEmpty(Ljava/lang/Integer;)Z

    move-result v1

    .line 587
    .local v1, "isEmpty":Z
    if-ne v2, v1, :cond_1

    .line 605
    :cond_0
    return-void

    .line 589
    :cond_1
    if-eqz v1, :cond_2

    .line 591
    iget-object v4, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 593
    iget-object v4, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;

    .line 594
    .local v3, "mediaSetList":Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;
    invoke-virtual {v3, p1, v5}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;->removeMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)Z

    .line 591
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 599
    .end local v0    # "i":I
    .end local v3    # "mediaSetList":Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;
    :cond_2
    iget-object v4, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_0

    .line 601
    iget-object v4, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;

    .line 602
    .restart local v3    # "mediaSetList":Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;
    invoke-virtual {v3, p1, v5}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;->addMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)I

    .line 599
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private removeFromDirectory(Lcom/oneplus/gallery2/media/MediaStoreItem;I)V
    .locals 2
    .param p1, "media"    # Lcom/oneplus/gallery2/media/MediaStoreItem;
    .param p2, "flags"    # I

    .prologue
    .line 723
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/MediaStoreItem;->getParentId()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->removeFromDirectory(Lcom/oneplus/gallery2/media/MediaStoreItem;JI)V

    .line 724
    return-void
.end method

.method private removeFromDirectory(Lcom/oneplus/gallery2/media/MediaStoreItem;JI)V
    .locals 8
    .param p1, "media"    # Lcom/oneplus/gallery2/media/MediaStoreItem;
    .param p2, "dirId"    # J
    .param p4, "flags"    # I

    .prologue
    .line 727
    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-gez v3, :cond_1

    .line 770
    .end local p1    # "media":Lcom/oneplus/gallery2/media/MediaStoreItem;
    :cond_0
    :goto_0
    return-void

    .line 729
    .restart local p1    # "media":Lcom/oneplus/gallery2/media/MediaStoreItem;
    :cond_1
    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoById:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;

    .line 730
    .local v0, "dirInfo":Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;
    if-eqz v0, :cond_0

    .line 732
    iget-object v3, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->media:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 733
    .local v1, "mediaFound":Z
    sget v3, Lcom/oneplus/gallery2/media/Media;->FLAG_MOVE_TO_RECYCE_BIN:I

    and-int/2addr v3, p4

    if-eqz v3, :cond_3

    const/4 v2, 0x1

    .line 734
    .local v2, "recycled":Z
    :goto_1
    if-nez v2, :cond_4

    .line 736
    if-nez v1, :cond_2

    iget-object v3, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->recycledMedia:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 744
    :cond_2
    check-cast p1, Lcom/oneplus/gallery2/media/Media;

    .end local p1    # "media":Lcom/oneplus/gallery2/media/MediaStoreItem;
    invoke-direct {p0, v0, p1, p4}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->notifyMediaDeleted(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;Lcom/oneplus/gallery2/media/Media;I)V

    .line 745
    iget-object v3, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->media:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 748
    iget-object v3, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->recycledMedia:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 750
    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeFromDirectory() - Directory ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->id:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " becomes empty"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoById:Ljava/util/Map;

    iget-wide v4, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoByPath:Ljava/util/Map;

    iget-object v4, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->path:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v3

    new-instance v4, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$3;

    invoke-direct {v4, p0, p2, p3}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$3;-><init>(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;J)V

    invoke-static {v3, v4}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 767
    :goto_2
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->deleteDefaultMediaSet(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;)V

    goto/16 :goto_0

    .line 733
    .end local v2    # "recycled":Z
    .restart local p1    # "media":Lcom/oneplus/gallery2/media/MediaStoreItem;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 741
    .restart local v2    # "recycled":Z
    :cond_4
    iget-object v4, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->recycledMedia:Ljava/util/Set;

    move-object v3, p1

    check-cast v3, Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_0

    .line 764
    .end local p1    # "media":Lcom/oneplus/gallery2/media/MediaStoreItem;
    :cond_5
    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeFromDirectory() - All media in directory ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->id:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has been recycled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private setupSystemDirTable()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 777
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 778
    .local v0, "dcimPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v5, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v5}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 779
    iget-object v5, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_SystemDirectoryTable:Ljava/util/HashMap;

    sget-object v6, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;->CAMERA:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    sget-object v5, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v5}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 783
    .local v4, "picturesPath":Ljava/lang/String;
    iget-object v5, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_SystemDirectoryTable:Ljava/util/HashMap;

    sget-object v6, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;->SCREENSHOTS:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;

    new-array v7, v11, [Ljava/lang/String;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    aput-object v4, v8, v10

    const-string v9, "Screenshots"

    aput-object v9, v8, v11

    invoke-static {v8}, Lcom/oneplus/io/Path;->combine([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    iget-object v5, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_SystemDirectoryTable:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 790
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 791
    iget-object v6, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_SystemDirPathPrefixList:Ljava/util/List;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 790
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 793
    .end local v1    # "i":I
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method public getDirectoryPath(J)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 236
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoById:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;

    .line 237
    .local v0, "dirInfo":Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->path:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getExtraDirectoryInfo(J)Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 248
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoById:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;

    .line 249
    .local v0, "dirInfo":Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->extraInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMedia(JLcom/oneplus/gallery2/media/MediaType;)Ljava/lang/Iterable;
    .locals 3
    .param p1, "directoryId"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery2/media/MediaType;
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
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoById:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;

    .line 264
    .local v0, "dirInfo":Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;
    if-eqz v0, :cond_0

    .line 265
    new-instance v1, Lcom/oneplus/gallery2/media/MediaIterable;

    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->media:Ljava/util/Set;

    invoke-direct {v1, p3, v2}, Lcom/oneplus/gallery2/media/MediaIterable;-><init>(Lcom/oneplus/gallery2/media/MediaType;Ljava/lang/Iterable;)V

    .line 266
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0
.end method

.method public getSystemDirectoryPaths(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;)Ljava/util/List;
    .locals 1
    .param p1, "type"    # Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;
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
    .locals 2
    .param p1, "type"    # Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;
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
    .local p2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_SystemDirectoryTable:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 289
    .local v0, "pathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 290
    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 291
    :cond_0
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 298
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 308
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/media/MediaSourceComponent;->handleMessage(Landroid/os/Message;)V

    .line 311
    :goto_0
    return-void

    .line 302
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 303
    .local v0, "params":[Ljava/lang/Object;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    invoke-direct {p0, v2, v3, v1}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->onExtraDirectoryInfoGet(JLcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;)V

    goto :goto_0

    .line 298
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method

.method public isPathInSystemDirectory(Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 321
    if-nez p1, :cond_0

    move v1, v2

    .line 328
    :goto_0
    return v1

    .line 323
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_SystemDirPathPrefixList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 325
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_SystemDirPathPrefixList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 326
    const/4 v1, 0x1

    goto :goto_0

    .line 323
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 328
    goto :goto_0
.end method

.method protected bridge synthetic onBindToMediaSource(Lcom/oneplus/gallery2/media/MediaSource;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/gallery2/media/MediaSource;

    .prologue
    .line 31
    check-cast p1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    .end local p1    # "x0":Lcom/oneplus/gallery2/media/MediaSource;
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->onBindToMediaSource(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)V

    return-void
.end method

.method protected onBindToMediaSource(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)V
    .locals 0
    .param p1, "source"    # Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    .prologue
    .line 402
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/media/MediaSourceComponent;->onBindToMediaSource(Lcom/oneplus/gallery2/media/MediaSource;)V

    .line 403
    return-void
.end method

.method onDirectoryMediaSetCreated(JLcom/oneplus/gallery2/media/DirectoryMediaSet;)V
    .locals 5
    .param p1, "dirId"    # J
    .param p3, "mediaSet"    # Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    .prologue
    .line 427
    invoke-virtual {p3}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->isDefault()Z

    move-result v2

    if-nez v2, :cond_1

    .line 429
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoById:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;

    .line 430
    .local v0, "dirInfo":Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;
    if-eqz v0, :cond_2

    .line 432
    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->mediaSets:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->getTargetMediaType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 433
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/DirectoryMediaSet;>;"
    if-nez v1, :cond_0

    .line 435
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/DirectoryMediaSet;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 436
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/DirectoryMediaSet;>;"
    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->mediaSets:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->getTargetMediaType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    :cond_0
    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    .end local v0    # "dirInfo":Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/DirectoryMediaSet;>;"
    :cond_1
    :goto_0
    return-void

    .line 441
    .restart local v0    # "dirInfo":Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDirectoryMediaSetCreated() - No directory info for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method onDirectoryMediaSetReleased(JLcom/oneplus/gallery2/media/DirectoryMediaSet;)V
    .locals 7
    .param p1, "dirId"    # J
    .param p3, "mediaSet"    # Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    .prologue
    .line 470
    iget-object v5, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoById:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;

    .line 471
    .local v0, "dirInfo":Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;
    if-eqz v0, :cond_2

    .line 473
    invoke-virtual {p3}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->getTargetMediaType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v4

    .line 474
    .local v4, "mediaType":Lcom/oneplus/gallery2/media/MediaType;
    invoke-virtual {p3}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->isDefault()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 476
    iget-object v5, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    iget-object v5, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 479
    iget-object v5, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;

    .line 480
    .local v3, "mediaSetList":Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;
    iget-object v5, v3, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;->targetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    if-ne v5, v4, :cond_0

    .line 481
    const/4 v5, 0x1

    invoke-virtual {v3, p3, v5}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;->removeMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)Z

    .line 477
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 486
    .end local v1    # "i":I
    .end local v3    # "mediaSetList":Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;
    :cond_1
    iget-object v5, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->mediaSets:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 487
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/DirectoryMediaSet;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 488
    iget-object v5, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->mediaSets:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->getTargetMediaType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/DirectoryMediaSet;>;"
    .end local v4    # "mediaType":Lcom/oneplus/gallery2/media/MediaType;
    :cond_2
    return-void
.end method

.method protected onInitialize()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 529
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v0

    .line 530
    .local v0, "contentThread":Lcom/oneplus/gallery2/MediaContentThread;
    if-nez v0, :cond_0

    .line 531
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v6, "No media content thread"

    invoke-direct {v3, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 534
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->setupSystemDirTable()V

    .line 537
    invoke-super {p0}, Lcom/oneplus/gallery2/media/MediaSourceComponent;->onInitialize()V

    .line 540
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->enableMediaChangeCallback()V

    .line 543
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 544
    .local v4, "time":J
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->getMediaSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    const/4 v6, 0x0

    check-cast v6, Lcom/oneplus/gallery2/media/MediaType;

    invoke-virtual {v3, v6, v7}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia(Lcom/oneplus/gallery2/media/MediaType;I)Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/Media;

    .line 546
    .local v2, "media":Lcom/oneplus/gallery2/media/Media;
    instance-of v3, v2, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    if-eqz v3, :cond_1

    .line 547
    check-cast v2, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    .end local v2    # "media":Lcom/oneplus/gallery2/media/Media;
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3, v7}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->addToDirectory(Lcom/oneplus/gallery2/media/MediaStoreItem;ZI)V

    goto :goto_0

    .line 549
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v4, v6, v4

    .line 550
    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onInitialize() - Take "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms to find "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoById:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " directories"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    return-void
.end method

.method protected onMediaCreated(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 1
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "flags"    # I

    .prologue
    .line 558
    instance-of v0, p1, Lcom/oneplus/gallery2/media/MediaStoreItem;

    if-eqz v0, :cond_0

    sget v0, Lcom/oneplus/gallery2/media/Media;->FLAG_SUB_MEDIA:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_1

    .line 561
    .end local p1    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_0
    :goto_0
    return-void

    .line 560
    .restart local p1    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_1
    check-cast p1, Lcom/oneplus/gallery2/media/MediaStoreItem;

    .end local p1    # "media":Lcom/oneplus/gallery2/media/Media;
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->addToDirectory(Lcom/oneplus/gallery2/media/MediaStoreItem;ZI)V

    goto :goto_0
.end method

.method protected onMediaDeleted(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 1
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "flags"    # I

    .prologue
    .line 568
    instance-of v0, p1, Lcom/oneplus/gallery2/media/MediaStoreItem;

    if-eqz v0, :cond_0

    sget v0, Lcom/oneplus/gallery2/media/Media;->FLAG_SUB_MEDIA:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_1

    .line 571
    .end local p1    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_0
    :goto_0
    return-void

    .line 570
    .restart local p1    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_1
    check-cast p1, Lcom/oneplus/gallery2/media/MediaStoreItem;

    .end local p1    # "media":Lcom/oneplus/gallery2/media/Media;
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->removeFromDirectory(Lcom/oneplus/gallery2/media/MediaStoreItem;I)V

    goto :goto_0
.end method

.method protected onMediaTableReady()V
    .locals 1

    .prologue
    .line 613
    invoke-super {p0}, Lcom/oneplus/gallery2/media/MediaSourceComponent;->onMediaTableReady()V

    .line 616
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoriesReady:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_NumOfDirQueryingExtraInfo:I

    if-gtz v0, :cond_0

    .line 617
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->onDirectoriesReady()V

    .line 618
    :cond_0
    return-void
.end method

.method protected onMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 10
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "flags"    # I

    .prologue
    .line 626
    sget v5, Lcom/oneplus/gallery2/media/Media;->FLAG_FILE_PATH_CHANGED:I

    and-int/2addr v5, p2

    if-eqz v5, :cond_0

    sget v5, Lcom/oneplus/gallery2/media/Media;->FLAG_SUB_MEDIA:I

    and-int/2addr v5, p2

    if-eqz v5, :cond_1

    .line 675
    .end local p1    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_0
    :goto_0
    return-void

    .line 628
    .restart local p1    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_1
    instance-of v5, p1, Lcom/oneplus/gallery2/media/MediaStoreItem;

    if-eqz v5, :cond_0

    .line 630
    sget v5, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_PARENT_ID_CHANGED:I

    and-int/2addr v5, p2

    if-eqz v5, :cond_2

    .line 632
    check-cast p1, Lcom/oneplus/gallery2/media/MediaStoreItem;

    .end local p1    # "media":Lcom/oneplus/gallery2/media/Media;
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->onMediaFileMoved(Lcom/oneplus/gallery2/media/MediaStoreItem;I)V

    goto :goto_0

    .restart local p1    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_2
    move-object v5, p1

    .line 637
    check-cast v5, Lcom/oneplus/gallery2/media/MediaStoreItem;

    invoke-interface {v5}, Lcom/oneplus/gallery2/media/MediaStoreItem;->getParentId()J

    move-result-wide v0

    .line 638
    .local v0, "dirId":J
    iget-object v5, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoById:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;

    .line 639
    .local v2, "dirInfo":Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;
    if-nez v2, :cond_3

    .line 641
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->isPathInSystemDirectory(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 642
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->onMediaCreated(Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_0

    .line 645
    :cond_3
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getPreviousFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->isPathInSystemDirectory(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 649
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->onMediaCreated(Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_0

    .line 654
    :cond_4
    invoke-direct {p0, v2, p1, p2}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->notifyMediaUpdated(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;Lcom/oneplus/gallery2/media/Media;I)V

    .line 657
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/oneplus/io/Path;->getDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 658
    .local v3, "dirPath":Ljava/lang/String;
    iget-object v5, v2, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->path:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 662
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->isPathInSystemDirectory(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 664
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->onMediaDeleted(Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_0

    .line 669
    :cond_5
    iget-object v4, v2, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->path:Ljava/lang/String;

    .line 670
    .local v4, "oldPath":Ljava/lang/String;
    iget-object v5, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onMediaUpdated() - Directory ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v2, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->id:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") renamed from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->path:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    iget-object v5, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoByPath:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    iget-object v5, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoByPath:Ljava/util/Map;

    invoke-interface {v5, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    iput-object v3, v2, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->path:Ljava/lang/String;

    .line 674
    invoke-direct {p0, v2, v4, v3}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->notifyDirectoryRenamed(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public openDirectoryMediaSetList(Lcom/oneplus/gallery2/media/MediaType;)Lcom/oneplus/gallery2/media/MediaSetList;
    .locals 12
    .param p1, "targetMediaType"    # Lcom/oneplus/gallery2/media/MediaType;

    .prologue
    const/4 v3, 0x1

    .line 686
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->verifyAccess()V

    .line 687
    invoke-virtual {p0, v3}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->isRunningOrInitializing(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 688
    sget-object v11, Lcom/oneplus/gallery2/media/MediaSetList;->EMPTY:Lcom/oneplus/gallery2/media/MediaSetList;

    .line 716
    :cond_0
    :goto_0
    return-object v11

    .line 691
    :cond_1
    new-instance v11, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;

    invoke-direct {v11, p0, p1}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;-><init>(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;Lcom/oneplus/gallery2/media/MediaType;)V

    .line 692
    .local v11, "mediaSetList":Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->TAG:Ljava/lang/String;

    const-string v2, "openDirectoryMediaSetList() - "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " list(s) opened"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 696
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoById:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;

    .line 698
    .local v9, "dirInfo":Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;
    iget-object v1, v9, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    .line 699
    .local v0, "mediaSet":Lcom/oneplus/gallery2/media/DirectoryMediaSet;
    if-nez v0, :cond_3

    .line 701
    iget-boolean v1, v9, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->isReady:Z

    if-eqz v1, :cond_2

    .line 703
    new-instance v0, Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    .end local v0    # "mediaSet":Lcom/oneplus/gallery2/media/DirectoryMediaSet;
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
    .restart local v0    # "mediaSet":Lcom/oneplus/gallery2/media/DirectoryMediaSet;
    sget-object v1, Lcom/oneplus/gallery2/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_MediaCountChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 705
    iget-object v1, v9, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    :cond_3
    invoke-static {v0}, Lcom/oneplus/gallery2/media/MediaSets;->isEmpty(Lcom/oneplus/gallery2/media/MediaSet;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 708
    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;->addMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)I

    goto :goto_1

    .line 712
    .end local v0    # "mediaSet":Lcom/oneplus/gallery2/media/DirectoryMediaSet;
    .end local v9    # "dirInfo":Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;
    :cond_4
    iget-boolean v1, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoriesReady:Z

    if-eqz v1, :cond_0

    .line 713
    invoke-virtual {v11}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;->ready()V

    goto :goto_0
.end method

.method updateLastMediaAddedTime(Lcom/oneplus/gallery2/media/DirectoryMediaSet;J)V
    .locals 8
    .param p1, "mediaSet"    # Lcom/oneplus/gallery2/media/DirectoryMediaSet;
    .param p2, "time"    # J

    .prologue
    .line 803
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->getDirectoryId()J

    move-result-wide v0

    .line 804
    .local v0, "dirId":J
    iget-object v4, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoById:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;

    .line 805
    .local v2, "dirInfo":Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;
    if-nez v2, :cond_0

    .line 807
    iget-object v4, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateLastMediaAddedTime() - No directory info for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    :goto_0
    return-void

    .line 810
    :cond_0
    iget-object v4, v2, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->extraInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    if-nez v4, :cond_1

    .line 811
    new-instance v4, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    invoke-direct {v4, v0, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;-><init>(J)V

    iput-object v4, v2, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->extraInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    .line 812
    :cond_1
    iget-object v4, v2, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->extraInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    iput-wide p2, v4, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;->mediaAddedTime:J

    .line 813
    iget-object v4, v2, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->extraInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    invoke-virtual {v4}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    move-result-object v3

    .line 814
    .local v3, "extraInfoToUpdate":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v4

    new-instance v5, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$4;

    invoke-direct {v5, p0, v3}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$4;-><init>(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;)V

    invoke-static {v4, v5}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
