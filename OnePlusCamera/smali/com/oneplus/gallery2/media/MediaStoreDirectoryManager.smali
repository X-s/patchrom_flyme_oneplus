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
.field private static final CONTENT_URI_FILE:Landroid/net/Uri;

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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "external"

    .line 35
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->CONTENT_URI_FILE:Landroid/net/Uri;

    .line 36
    return-void
.end method

.method constructor <init>(Lcom/oneplus/base/BaseApplication;)V
    .locals 2

    .prologue
    const-string/jumbo v0, "Media store directory manager"

    const-class v1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    .line 113
    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/gallery2/media/MediaSourceComponent;-><init>(Ljava/lang/String;Lcom/oneplus/base/component/ComponentOwner;Ljava/lang/Class;)V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoById:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoByPath:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_OpenedMediaSetLists:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_SystemDirectoryTable:Ljava/util/HashMap;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_SystemDirPathPrefixList:Ljava/util/List;

    .line 114
    return-void
.end method

.method static synthetic access$1(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;)V
    .locals 0

    .prologue
    .line 456
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->onDirectoryMediaSetListReleased(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;)V

    return-void
.end method

.method static synthetic access$2(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;)Z
    .locals 1

    .prologue
    .line 300
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->isDirectoryIdExistInTheDB(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addToDirectory(Lcom/oneplus/gallery2/media/MediaStoreItem;ZI)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    .line 121
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/MediaStoreItem;->getParentId()J

    move-result-wide v4

    .line 122
    cmp-long v0, v4, v8

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    .line 123
    return-void

    :cond_0
    move v0, v2

    .line 122
    goto :goto_0

    .line 124
    :cond_1
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/MediaStoreItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->isPathInSystemDirectory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoById:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;

    .line 128
    if-nez v0, :cond_3

    .line 146
    invoke-static {v1}, Lcom/oneplus/io/Path;->getDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_8

    .line 152
    new-instance v1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;

    invoke-direct {v1, v4, v5, v0}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;-><init>(JLjava/lang/String;)V

    .line 153
    iget-object v2, v1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->media:Ljava/util/Set;

    check-cast p1, Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoById:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoByPath:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    if-eqz p2, :cond_9

    .line 160
    :goto_1
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v0

    new-instance v1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$1;

    invoke-direct {v1, p0, v4, v5}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$1;-><init>(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;J)V

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    .line 168
    if-nez v0, :cond_a

    .line 173
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addToDirectory() - Fail to post to media content thread to query extra info"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :goto_2
    return-void

    .line 126
    :cond_2
    return-void

    .line 130
    :cond_3
    iget-object v3, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->media:Ljava/util/Set;

    move-object v1, p1

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 141
    :cond_4
    :goto_3
    iget-object v0, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->recycledMedia:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 142
    return-void

    .line 133
    :cond_5
    iget-object v1, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->extraInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    .line 134
    if-nez v1, :cond_7

    :cond_6
    :goto_4
    move-object v1, p1

    .line 137
    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    invoke-direct {p0, v0, v1, p3}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->notifyMediaCreated(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;Lcom/oneplus/gallery2/media/Media;I)V

    .line 138
    sget v1, Lcom/oneplus/gallery2/media/Media;->FLAG_RESTORE_FROM_RECYCLE_BIN:I

    and-int/2addr v1, p3

    if-eqz v1, :cond_4

    .line 139
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->createDefaultMediaSet(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;)V

    goto :goto_3

    .line 134
    :cond_7
    iget-wide v4, v1, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;->oneplusFlags:J

    const-wide/16 v6, 0x20

    and-long/2addr v4, v6

    cmp-long v1, v4, v8

    if-eqz v1, :cond_6

    .line 135
    invoke-interface {p1, v2}, Lcom/oneplus/gallery2/media/MediaStoreItem;->notifyParentVisibilityChanged(Z)V

    goto :goto_4

    .line 149
    :cond_8
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addToDirectory() - No directory path"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void

    .line 157
    :cond_9
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "addToDirectory() - New directory found : ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 170
    :cond_a
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_NumOfDirQueryingExtraInfo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_NumOfDirQueryingExtraInfo:I

    goto :goto_2
.end method

.method private createDefaultMediaSet(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;)V
    .locals 11

    .prologue
    const/4 v3, 0x1

    .line 180
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v10, v0

    :goto_0
    if-ltz v10, :cond_1

    .line 182
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;

    .line 183
    iget-object v8, v9, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;->targetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    .line 184
    iget-object v0, p1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    .line 185
    if-eqz v0, :cond_0

    .line 190
    :goto_1
    invoke-virtual {v9, v0, v3}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;->addMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)I

    .line 180
    add-int/lit8 v0, v10, -0x1

    move v10, v0

    goto :goto_0

    .line 187
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

    .line 188
    iget-object v1, p1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v1, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 192
    :cond_1
    return-void
.end method

.method private deleteDefaultMediaSet(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 198
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_0
    if-ltz v3, :cond_1

    .line 200
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;

    .line 201
    iget-object v1, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;->targetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    .line 202
    iget-object v4, p1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    .line 203
    if-nez v1, :cond_0

    .line 198
    :goto_1
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_0

    .line 204
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;->removeMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)Z

    goto :goto_1

    .line 207
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

    .line 208
    array-length v3, v0

    move v1, v2

    :goto_2
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 209
    invoke-virtual {v2}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->release()V

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 210
    :cond_2
    iget-object v0, p1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 211
    return-void
.end method

.method private isDirectoryIdExistInTheDB(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;)Z
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 303
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->CONTENT_URI_FILE:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 304
    if-eqz v0, :cond_0

    .line 309
    :try_start_0
    sget-object v1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->CONTENT_URI_FILE:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "_data"

    aput-object v4, v2, v3

    const-string/jumbo v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v10, p1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->id:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result-object v0

    .line 311
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-nez v1, :cond_1

    move v1, v7

    .line 313
    :goto_0
    if-nez v0, :cond_2

    .line 318
    :goto_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isDirectoryIdExistInTheDB() - id:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", exist: :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    return v1

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "isDirectoryIdExistInTheDB() - client is null"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    return v7

    :cond_1
    move v1, v8

    .line 312
    goto :goto_0

    .line 313
    :cond_2
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move v2, v1

    move-object v1, v6

    :goto_2
    if-eqz v1, :cond_4

    if-ne v1, v0, :cond_5

    :goto_3
    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    move v7, v2

    .line 316
    :goto_4
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isDirectoryIdExistInTheDB() - ex:"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v1, v7

    goto :goto_1

    .line 313
    :catchall_1
    move-exception v1

    if-nez v0, :cond_3

    :goto_5
    :try_start_4
    throw v1

    :catchall_2
    move-exception v0

    move v2, v7

    goto :goto_2

    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_5

    move-exception v0

    goto :goto_4

    :cond_4
    move-object v1, v0

    goto :goto_3

    :cond_5
    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    move-exception v0

    move v7, v1

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v1, v6

    move v2, v7

    goto :goto_2
.end method

.method private notifyDirectoryRenamed(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 344
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

    .line 345
    invoke-virtual {v0, p2, p3}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->onDirectoryRenamed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 346
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

    .line 348
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_1
    if-ltz v2, :cond_1

    .line 349
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    invoke-virtual {v1, p2, p3}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->onDirectoryRenamed(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_1

    .line 351
    :cond_2
    return-void
.end method

.method private notifyExtraDirectoryInfoUpdated(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;)V
    .locals 4

    .prologue
    .line 357
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

    .line 358
    invoke-virtual {v0, p2}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->onExtraDirectoryInfoUpdated(Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;)V

    goto :goto_0

    .line 359
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

    .line 361
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_1
    if-ltz v2, :cond_1

    .line 362
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    invoke-virtual {v1, p2}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->onExtraDirectoryInfoUpdated(Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;)V

    .line 361
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_1

    .line 364
    :cond_2
    return-void
.end method

.method private notifyMediaCreated(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;Lcom/oneplus/gallery2/media/Media;I)V
    .locals 4

    .prologue
    .line 370
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

    .line 371
    invoke-virtual {v0, p2, p3}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->onMediaCreated(Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_0

    .line 372
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

    .line 374
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_1
    if-ltz v2, :cond_1

    .line 375
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    invoke-virtual {v1, p2, p3}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->onMediaCreated(Lcom/oneplus/gallery2/media/Media;I)V

    .line 374
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_1

    .line 377
    :cond_2
    return-void
.end method

.method private notifyMediaDeleted(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;Lcom/oneplus/gallery2/media/Media;I)V
    .locals 4

    .prologue
    .line 383
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

    .line 384
    invoke-virtual {v0, p2, p3}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->onMediaDeleted(Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_0

    .line 385
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

    .line 387
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_1
    if-ltz v2, :cond_1

    .line 388
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    invoke-virtual {v1, p2, p3}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->onMediaDeleted(Lcom/oneplus/gallery2/media/Media;I)V

    .line 387
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_1

    .line 390
    :cond_2
    return-void
.end method

.method private notifyMediaUpdated(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;Lcom/oneplus/gallery2/media/Media;I)V
    .locals 4

    .prologue
    .line 396
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

    .line 397
    invoke-virtual {v0, p2, p3}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->onMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_0

    .line 398
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

    .line 400
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_1
    if-ltz v2, :cond_1

    .line 401
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    invoke-virtual {v1, p2, p3}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->onMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V

    .line 400
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_1

    .line 403
    :cond_2
    return-void
.end method

.method private onDirectoriesReady()V
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDirectoriesReady()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoriesReady:Z

    .line 420
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 421
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;->ready()V

    .line 420
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 422
    :cond_0
    return-void
.end method

.method private onDirectoryInfoReady(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;)V
    .locals 0

    .prologue
    .line 429
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->createDefaultMediaSet(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;)V

    .line 430
    return-void
.end method

.method private onDirectoryMediaSetListReleased(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;)V
    .locals 4

    .prologue
    .line 458
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 465
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDirectoryMediaSetListReleased() - All lists released"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
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

    .line 468
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

    .line 469
    iget-object v0, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 470
    array-length v0, v1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 471
    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->release()V

    goto :goto_0

    .line 459
    :cond_1
    return-void

    .line 462
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

    .line 463
    return-void

    .line 473
    :cond_3
    return-void
.end method

.method private onExtraDirectoryInfoGet(JLcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;)V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 507
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_NumOfDirQueryingExtraInfo:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_NumOfDirQueryingExtraInfo:I

    .line 510
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoById:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;

    .line 511
    if-eqz v0, :cond_2

    .line 513
    iget-object v3, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->extraInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    if-nez v3, :cond_3

    .line 517
    :cond_0
    iput-object p3, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->extraInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    .line 520
    invoke-direct {p0, v0, p3}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->notifyExtraDirectoryInfoUpdated(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;)V

    .line 523
    iget-boolean v1, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->isReady:Z

    if-eqz v1, :cond_5

    .line 528
    :goto_0
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoriesReady:Z

    if-eqz v0, :cond_6

    .line 530
    :cond_1
    :goto_1
    return-void

    .line 512
    :cond_2
    return-void

    .line 513
    :cond_3
    iget-object v3, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->extraInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    iget-wide v4, v3, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;->mediaAddedTime:J

    iget-wide v6, p3, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;->mediaAddedTime:J

    cmp-long v3, v4, v6

    if-gtz v3, :cond_4

    move v1, v2

    :cond_4
    if-nez v1, :cond_0

    .line 514
    return-void

    .line 525
    :cond_5
    iput-boolean v2, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->isReady:Z

    .line 526
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->onDirectoryInfoReady(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;)V

    goto :goto_0

    .line 528
    :cond_6
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_NumOfDirQueryingExtraInfo:I

    if-gtz v0, :cond_1

    .line 529
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->onDirectoriesReady()V

    goto :goto_1
.end method

.method private onMediaFileMoved(Lcom/oneplus/gallery2/media/MediaStoreItem;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 586
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/MediaStoreItem;->getPreviousParentId()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->removeFromDirectory(Lcom/oneplus/gallery2/media/MediaStoreItem;JI)V

    .line 587
    invoke-direct {p0, p1, v2, v2}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->addToDirectory(Lcom/oneplus/gallery2/media/MediaStoreItem;ZI)V

    .line 588
    return-void
.end method

.method private removeFromDirectory(Lcom/oneplus/gallery2/media/MediaStoreItem;I)V
    .locals 2

    .prologue
    .line 709
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/MediaStoreItem;->getParentId()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->removeFromDirectory(Lcom/oneplus/gallery2/media/MediaStoreItem;JI)V

    .line 710
    return-void
.end method

.method private removeFromDirectory(Lcom/oneplus/gallery2/media/MediaStoreItem;JI)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    .line 713
    cmp-long v0, p2, v4

    if-ltz v0, :cond_0

    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    .line 714
    return-void

    :cond_0
    move v0, v1

    .line 713
    goto :goto_0

    .line 715
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoById:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;

    .line 716
    if-nez v0, :cond_3

    .line 759
    :cond_2
    :goto_1
    return-void

    .line 718
    :cond_3
    iget-object v3, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->media:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 719
    sget v4, Lcom/oneplus/gallery2/media/Media;->FLAG_MOVE_TO_RECYCE_BIN:I

    and-int/2addr v4, p4

    if-nez v4, :cond_5

    .line 720
    :goto_2
    if-eqz v1, :cond_6

    .line 727
    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->recycledMedia:Ljava/util/Set;

    move-object v1, p1

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 730
    :cond_4
    check-cast p1, Lcom/oneplus/gallery2/media/Media;

    invoke-direct {p0, v0, p1, p4}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->notifyMediaDeleted(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;Lcom/oneplus/gallery2/media/Media;I)V

    .line 731
    iget-object v1, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->media:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 734
    iget-object v1, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->recycledMedia:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 753
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

    .line 756
    :goto_3
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->deleteDefaultMediaSet(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;)V

    goto :goto_1

    :cond_5
    move v1, v2

    .line 719
    goto :goto_2

    .line 722
    :cond_6
    if-nez v3, :cond_4

    iget-object v1, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->recycledMedia:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 723
    return-void

    .line 728
    :cond_7
    return-void

    .line 736
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

    .line 737
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoById:Ljava/util/Map;

    iget-wide v2, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoByPath:Ljava/util/Map;

    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->path:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$2;

    invoke-direct {v2, p0, v0, p2, p3}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$2;-><init>(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;J)V

    invoke-static {v1, v2}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    goto :goto_3
.end method

.method private setupSystemDirTable()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 766
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 767
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 768
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_SystemDirectoryTable:Ljava/util/HashMap;

    sget-object v2, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;->CAMERA:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 772
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_SystemDirectoryTable:Ljava/util/HashMap;

    sget-object v2, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;->SCREENSHOTS:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$SystemDirectoryType;

    new-array v3, v6, [Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    .line 773
    aput-object v0, v4, v5

    const-string/jumbo v0, "Screenshots"

    aput-object v0, v4, v6

    invoke-static {v4}, Lcom/oneplus/io/Path;->combine([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    .line 772
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
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

    .line 779
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_0
    if-ltz v2, :cond_0

    .line 780
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

    .line 779
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_0

    .line 782
    :cond_1
    return-void
.end method


# virtual methods
.method public getDirectoryPath(J)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 221
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoById:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;

    .line 222
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

    .line 233
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoById:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;

    .line 234
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
    .line 247
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->verifyAccess()V

    .line 248
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoById:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;

    .line 249
    if-nez v0, :cond_0

    .line 251
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 250
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
    .line 262
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
    .line 273
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_SystemDirectoryTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 274
    if-nez v0, :cond_0

    .line 276
    :goto_0
    return-void

    .line 275
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 283
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 293
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/media/MediaSourceComponent;->handleMessage(Landroid/os/Message;)V

    .line 296
    :goto_0
    return-void

    .line 287
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 288
    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    invoke-direct {p0, v2, v3, v0}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->onExtraDirectoryInfoGet(JLcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;)V

    goto :goto_0

    .line 283
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

    .line 330
    if-eqz p1, :cond_0

    .line 332
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_SystemDirPathPrefixList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 334
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_SystemDirPathPrefixList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 332
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 331
    :cond_0
    return v2

    .line 335
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 337
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
    .line 411
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/media/MediaSourceComponent;->onBindToMediaSource(Lcom/oneplus/gallery2/media/MediaSource;)V

    .line 412
    return-void
.end method

.method onDirectoryMediaSetCreated(JLcom/oneplus/gallery2/media/DirectoryMediaSet;)V
    .locals 3

    .prologue
    .line 436
    invoke-virtual {p3}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    :goto_0
    return-void

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoById:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;

    .line 439
    if-nez v0, :cond_1

    .line 450
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

    .line 441
    :cond_1
    iget-object v1, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->mediaSets:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->getTargetMediaType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 442
    if-eqz v1, :cond_2

    .line 447
    :goto_1
    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 444
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 445
    iget-object v0, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->mediaSets:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->getTargetMediaType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method onDirectoryMediaSetReleased(JLcom/oneplus/gallery2/media/DirectoryMediaSet;)V
    .locals 5

    .prologue
    .line 479
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoById:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;

    .line 480
    if-nez v0, :cond_1

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    invoke-virtual {p3}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->getTargetMediaType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v2

    .line 483
    invoke-virtual {p3}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->isDefault()Z

    move-result v1

    if-nez v1, :cond_2

    .line 495
    iget-object v1, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->mediaSets:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 496
    if-eqz v1, :cond_0

    invoke-interface {v1, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 497
    iget-object v0, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->mediaSets:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->getTargetMediaType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 485
    :cond_2
    iget-object v0, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_0

    .line 488
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;

    .line 489
    iget-object v3, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;->targetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    if-eq v3, v2, :cond_3

    .line 486
    :goto_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 490
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

    .line 538
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v0

    .line 539
    if-eqz v0, :cond_1

    .line 543
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->setupSystemDirTable()V

    .line 546
    invoke-super {p0}, Lcom/oneplus/gallery2/media/MediaSourceComponent;->onInitialize()V

    .line 549
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->enableMediaChangeCallback()V

    .line 552
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 553
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

    .line 555
    instance-of v4, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    if-eqz v4, :cond_0

    .line 556
    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    const/4 v4, 0x1

    invoke-direct {p0, v0, v4, v5}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->addToDirectory(Lcom/oneplus/gallery2/media/MediaStoreItem;ZI)V

    goto :goto_0

    .line 540
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "No media content thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 558
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v2

    .line 559
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

    .line 560
    return-void
.end method

.method protected onMediaCreated(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 567
    instance-of v0, p1, Lcom/oneplus/gallery2/media/MediaStoreItem;

    if-nez v0, :cond_1

    .line 568
    :cond_0
    return-void

    .line 567
    :cond_1
    sget v0, Lcom/oneplus/gallery2/media/Media;->FLAG_SUB_MEDIA:I

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    .line 569
    check-cast p1, Lcom/oneplus/gallery2/media/MediaStoreItem;

    invoke-direct {p0, p1, v1, p2}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->addToDirectory(Lcom/oneplus/gallery2/media/MediaStoreItem;ZI)V

    .line 570
    return-void
.end method

.method protected onMediaDeleted(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 1

    .prologue
    .line 577
    instance-of v0, p1, Lcom/oneplus/gallery2/media/MediaStoreItem;

    if-nez v0, :cond_1

    .line 578
    :cond_0
    return-void

    .line 577
    :cond_1
    sget v0, Lcom/oneplus/gallery2/media/Media;->FLAG_SUB_MEDIA:I

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    .line 579
    check-cast p1, Lcom/oneplus/gallery2/media/MediaStoreItem;

    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->removeFromDirectory(Lcom/oneplus/gallery2/media/MediaStoreItem;I)V

    .line 580
    return-void
.end method

.method protected onMediaTableReady()V
    .locals 1

    .prologue
    .line 596
    invoke-super {p0}, Lcom/oneplus/gallery2/media/MediaSourceComponent;->onMediaTableReady()V

    .line 599
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoriesReady:Z

    if-eqz v0, :cond_1

    .line 601
    :cond_0
    :goto_0
    return-void

    .line 599
    :cond_1
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_NumOfDirQueryingExtraInfo:I

    if-gtz v0, :cond_0

    .line 600
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->onDirectoriesReady()V

    goto :goto_0
.end method

.method protected onMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 609
    sget v0, Lcom/oneplus/gallery2/media/Media;->FLAG_VISIBILITY_CHANGED:I

    and-int/2addr v0, p2

    if-nez v0, :cond_1

    move v0, v1

    .line 610
    :goto_0
    sget v3, Lcom/oneplus/gallery2/media/Media;->FLAG_FILE_PATH_CHANGED:I

    and-int/2addr v3, p2

    if-nez v3, :cond_2

    move v3, v1

    .line 611
    :goto_1
    sget v4, Lcom/oneplus/gallery2/media/Media;->FLAG_SUB_MEDIA:I

    and-int/2addr v4, p2

    if-nez v4, :cond_3

    .line 612
    :goto_2
    if-nez v1, :cond_4

    .line 614
    if-eqz v3, :cond_5

    .line 616
    :cond_0
    instance-of v0, p1, Lcom/oneplus/gallery2/media/MediaStoreItem;

    if-eqz v0, :cond_6

    .line 618
    sget v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_PARENT_ID_CHANGED:I

    and-int/2addr v0, p2

    if-nez v0, :cond_7

    move-object v0, p1

    .line 625
    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreItem;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaStoreItem;->getParentId()J

    move-result-wide v0

    .line 626
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoById:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;

    .line 627
    if-eqz v0, :cond_8

    .line 633
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getPreviousFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->isPathInSystemDirectory(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 642
    invoke-direct {p0, v0, p1, p2}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->notifyMediaUpdated(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;Lcom/oneplus/gallery2/media/Media;I)V

    .line 645
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/io/Path;->getDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 646
    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->path:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 650
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->isPathInSystemDirectory(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 657
    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->path:Ljava/lang/String;

    .line 658
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

    .line 659
    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoByPath:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoByPath:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    iput-object v1, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->path:Ljava/lang/String;

    .line 662
    invoke-direct {p0, v0, v2, v1}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->notifyDirectoryRenamed(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    return-void

    :cond_1
    move v0, v2

    .line 609
    goto/16 :goto_0

    :cond_2
    move v3, v2

    .line 610
    goto/16 :goto_1

    :cond_3
    move v1, v2

    .line 611
    goto/16 :goto_2

    .line 613
    :cond_4
    return-void

    .line 614
    :cond_5
    if-nez v0, :cond_0

    .line 615
    return-void

    .line 617
    :cond_6
    return-void

    .line 620
    :cond_7
    check-cast p1, Lcom/oneplus/gallery2/media/MediaStoreItem;

    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->onMediaFileMoved(Lcom/oneplus/gallery2/media/MediaStoreItem;I)V

    .line 621
    return-void

    .line 629
    :cond_8
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->isPathInSystemDirectory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 631
    :goto_3
    return-void

    .line 630
    :cond_9
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->onMediaCreated(Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_3

    .line 637
    :cond_a
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->onMediaCreated(Lcom/oneplus/gallery2/media/Media;I)V

    .line 638
    return-void

    .line 647
    :cond_b
    return-void

    .line 652
    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->onMediaDeleted(Lcom/oneplus/gallery2/media/Media;I)V

    .line 653
    return-void
.end method

.method public openDirectoryMediaSetList(Lcom/oneplus/gallery2/media/MediaType;)Lcom/oneplus/gallery2/media/MediaSetList;
    .locals 13

    .prologue
    const/4 v3, 0x1

    const/4 v12, 0x0

    .line 674
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->verifyAccess()V

    .line 675
    invoke-virtual {p0, v3}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->isRunningOrInitializing(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 679
    new-instance v10, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;

    invoke-direct {v10, p0, p1}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;-><init>(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;Lcom/oneplus/gallery2/media/MediaType;)V

    .line 680
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_OpenedMediaSetLists:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 681
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

    .line 684
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

    .line 686
    iget-object v0, v9, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/DirectoryMediaSet;

    .line 687
    if-eqz v0, :cond_2

    .line 694
    :goto_1
    invoke-virtual {v10, v0, v12}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;->addMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)I

    goto :goto_0

    .line 676
    :cond_1
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSetList;->EMPTY:Lcom/oneplus/gallery2/media/MediaSetList;

    return-object v0

    .line 689
    :cond_2
    iget-boolean v0, v9, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->isReady:Z

    if-eqz v0, :cond_0

    .line 691
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

    .line 692
    iget-object v1, v9, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->defaultMediaSets:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 698
    :cond_3
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoriesReady:Z

    if-nez v0, :cond_4

    .line 702
    :goto_2
    return-object v10

    .line 699
    :cond_4
    invoke-virtual {v10}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryMediaSetList;->ready()V

    goto :goto_2
.end method

.method updateLastMediaAddedTime(Lcom/oneplus/gallery2/media/DirectoryMediaSet;J)V
    .locals 6

    .prologue
    .line 792
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->getDirectoryId()J

    move-result-wide v2

    .line 793
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoById:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;

    .line 794
    if-eqz v0, :cond_0

    .line 799
    iget-object v1, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->extraInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    if-eqz v1, :cond_1

    .line 801
    :goto_0
    iget-object v1, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->extraInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    iput-wide p2, v1, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;->mediaAddedTime:J

    .line 802
    iget-object v0, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->extraInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    move-result-object v0

    .line 803
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$3;

    invoke-direct {v2, p0, v0}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$3;-><init>(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;)V

    invoke-static {v1, v2}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 811
    return-void

    .line 796
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

    .line 797
    return-void

    .line 800
    :cond_1
    new-instance v1, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    invoke-direct {v1, v2, v3}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;-><init>(J)V

    iput-object v1, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->extraInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    goto :goto_0
.end method

.method updateVisibility(Lcom/oneplus/gallery2/media/DirectoryMediaSet;Z)V
    .locals 6

    .prologue
    .line 821
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/DirectoryMediaSet;->getDirectoryId()J

    move-result-wide v2

    .line 822
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->m_DirectoryInfoById:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;

    .line 823
    if-eqz v0, :cond_1

    .line 828
    iget-object v1, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->extraInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    if-eqz v1, :cond_2

    .line 830
    :goto_0
    if-eqz p2, :cond_3

    .line 833
    iget-object v1, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->extraInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    iget-wide v2, v1, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;->oneplusFlags:J

    const-wide/16 v4, -0x21

    and-long/2addr v2, v4

    iput-wide v2, v1, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;->oneplusFlags:J

    .line 834
    :goto_1
    iget-object v1, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->extraInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    move-result-object v1

    .line 835
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v2

    new-instance v3, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$4;

    invoke-direct {v3, p0, v1}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$4;-><init>(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;)V

    invoke-static {v2, v3}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 845
    iget-object v1, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->media:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    .line 847
    instance-of v3, v1, Lcom/oneplus/gallery2/media/MediaStoreItem;

    if-eqz v3, :cond_0

    .line 848
    check-cast v1, Lcom/oneplus/gallery2/media/MediaStoreItem;

    invoke-interface {v1, p2}, Lcom/oneplus/gallery2/media/MediaStoreItem;->notifyParentVisibilityChanged(Z)V

    goto :goto_2

    .line 825
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateVisibility() - No directory info for "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    return-void

    .line 829
    :cond_2
    new-instance v1, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    invoke-direct {v1, v2, v3}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;-><init>(J)V

    iput-object v1, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->extraInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    goto :goto_0

    .line 831
    :cond_3
    iget-object v1, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->extraInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    iget-wide v2, v1, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;->oneplusFlags:J

    const-wide/16 v4, 0x20

    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;->oneplusFlags:J

    goto :goto_1

    .line 850
    :cond_4
    iget-object v0, v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->recycledMedia:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    .line 852
    instance-of v2, v0, Lcom/oneplus/gallery2/media/MediaStoreItem;

    if-eqz v2, :cond_5

    .line 853
    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreItem;

    invoke-interface {v0, p2}, Lcom/oneplus/gallery2/media/MediaStoreItem;->notifyParentVisibilityChanged(Z)V

    goto :goto_3

    .line 855
    :cond_6
    return-void
.end method
