.class public abstract Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;
.super Lcom/oneplus/gallery/media/MediaStoreMediaSet;
.source "SpecialDirectoryMediaSet.java"


# static fields
.field private static final DELETION_WINDOW_SIZE:I = 0xa

.field public static final FLAG_DELETE_RAW_FILES:I = 0x1


# instance fields
.field private m_DirectoryPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_DirectoryRenameCallbackHandle:Lcom/oneplus/base/Handle;


# direct methods
.method protected constructor <init>(Lcom/oneplus/gallery/media/MediaSet$Type;Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;Lcom/oneplus/gallery/media/MediaType;)V
    .locals 6
    .param p1, "type"    # Lcom/oneplus/gallery/media/MediaSet$Type;
    .param p2, "dirType"    # Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;
    .param p3, "targetMediaType"    # Lcom/oneplus/gallery/media/MediaType;

    .prologue
    .line 49
    invoke-direct {p0, p1, p3}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;-><init>(Lcom/oneplus/gallery/media/MediaSet$Type;Lcom/oneplus/gallery/media/MediaType;)V

    .line 52
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v2, "dirPathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p2, v2}, Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;->prepareDirectoryPaths(Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;Ljava/util/List;)V

    .line 54
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;->m_DirectoryPaths:Ljava/util/List;

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .local v1, "condBuilder":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v0, "condArgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1, v0}, Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;->prepareConditions(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {p0, v4, v3}, Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;->setQueryCondition(Ljava/lang/String;[Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;->getMediaManager()Lcom/oneplus/gallery/media/OPMediaManager;

    move-result-object v3

    new-instance v4, Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet$1;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet$1;-><init>(Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;)V

    invoke-virtual {p0}, Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/oneplus/gallery/media/OPMediaManager;->registerDirectoryRenameCallback(Lcom/oneplus/gallery/media/OPMediaManager$MediaRenameCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;->m_DirectoryRenameCallbackHandle:Lcom/oneplus/base/Handle;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;->onDirectoryRenamed(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private deleteRawFile(Ljava/lang/String;)V
    .locals 6
    .param p1, "targetPath"    # Ljava/lang/String;

    .prologue
    .line 153
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    .local v4, "path":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 156
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 157
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;->deleteRawFile(Ljava/lang/String;)V

    .line 156
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/oneplus/io/FileUtils;->isRawFilePath(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 162
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 164
    :cond_1
    return-void
.end method

.method private onDirectoryRenamed(JLjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "oldPath"    # Ljava/lang/String;
    .param p4, "newPath"    # Ljava/lang/String;

    .prologue
    .line 196
    iget-object v3, p0, Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;->TAG:Ljava/lang/String;

    const-string v4, "onDirectoryRenamed() - Directory paths: "

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;->m_DirectoryPaths:Ljava/util/List;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, ", old path: "

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    const/4 v6, 0x3

    const-string v7, ", new path: "

    aput-object v7, v5, v6

    const/4 v6, 0x4

    aput-object p4, v5, v6

    const/4 v6, 0x5

    const-string v7, ", renamed id: "

    aput-object v7, v5, v6

    const/4 v6, 0x6

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    const/4 v2, 0x0

    .line 198
    .local v2, "needToRefresh":Z
    iget-object v3, p0, Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;->m_DirectoryPaths:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 200
    .local v0, "directoryPath":Ljava/lang/String;
    if-eqz p3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 202
    const/4 v2, 0x1

    .line 211
    .end local v0    # "directoryPath":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 212
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;->updateMediaIdTable()V

    .line 213
    :cond_2
    return-void

    .line 205
    .restart local v0    # "directoryPath":Ljava/lang/String;
    :cond_3
    if-eqz p4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 207
    const/4 v2, 0x1

    .line 208
    goto :goto_0
.end method


# virtual methods
.method protected delete(Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentProviderClient;)V
    .locals 6
    .param p1, "handle"    # Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle;
    .param p2, "contentResolver"    # Landroid/content/ContentResolver;
    .param p3, "contentUri"    # Landroid/net/Uri;
    .param p4, "client"    # Landroid/content/ContentProviderClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 78
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;->delete(Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentProviderClient;I)V

    .line 79
    return-void
.end method

.method protected delete(Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentProviderClient;I)V
    .locals 19
    .param p1, "handle"    # Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle;
    .param p2, "contentResolver"    # Landroid/content/ContentResolver;
    .param p3, "contentUri"    # Landroid/net/Uri;
    .param p4, "client"    # Landroid/content/ContentProviderClient;
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 96
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v8, "photoIdTable":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v14, "videoIdTable":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v7, "photoGroupIdTable":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v13, "videoGroupIdTable":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v14, v7, v13}, Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;->getMediaIdTables(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;->getMediaManager()Lcom/oneplus/gallery/media/OPMediaManager;

    move-result-object v6

    .line 107
    .local v6, "mediaManager":Lcom/oneplus/gallery/media/OPMediaManager;
    and-int/lit8 v15, p5, 0x1

    if-nez v15, :cond_0

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;->getQueryCondition()Ljava/lang/String;

    move-result-object v10

    .line 110
    .local v10, "queryCondition":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;->getQueryConditionArgs()[Ljava/lang/String;

    move-result-object v9

    .line 125
    .local v9, "queryArgs":[Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v10, v9}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 126
    .local v12, "result":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;->TAG:Ljava/lang/String;

    const-string v16, "delete() - "

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const-string v18, " media deleted"

    invoke-static/range {v15 .. v18}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 129
    and-int/lit8 v15, p5, 0x1

    if-eqz v15, :cond_1

    .line 131
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;->m_DirectoryPaths:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 132
    .local v3, "folderPath":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;->deleteRawFile(Ljava/lang/String;)V

    goto :goto_1

    .line 115
    .end local v3    # "folderPath":Ljava/lang/String;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v9    # "queryArgs":[Ljava/lang/String;
    .end local v10    # "queryCondition":Ljava/lang/String;
    .end local v12    # "result":I
    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v15, "(media_type=1 OR media_type=3 OR _data LIKE ? )"

    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .local v11, "queryConditionBuilder":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v2, "condArgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v15, "%.dng"

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v2}, Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;->prepareConditions(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 120
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 121
    .restart local v10    # "queryCondition":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v15

    new-array v15, v15, [Ljava/lang/String;

    invoke-interface {v2, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    .restart local v9    # "queryArgs":[Ljava/lang/String;
    goto :goto_0

    .line 136
    .end local v2    # "condArgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "queryConditionBuilder":Ljava/lang/StringBuilder;
    .restart local v12    # "result":I
    :cond_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v15

    add-int/lit8 v4, v15, -0x1

    .local v4, "i":I
    :goto_2
    if-ltz v4, :cond_2

    .line 137
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const/4 v15, 0x0

    move-wide/from16 v0, v16

    invoke-interface {v6, v0, v1, v15}, Lcom/oneplus/gallery/media/OPMediaManager;->notifyMediaDeleted(JI)V

    .line 136
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 138
    :cond_2
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    add-int/lit8 v4, v15, -0x1

    :goto_3
    if-ltz v4, :cond_3

    .line 139
    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const/4 v15, 0x0

    move-wide/from16 v0, v16

    invoke-interface {v6, v0, v1, v15}, Lcom/oneplus/gallery/media/OPMediaManager;->notifyMediaDeleted(JI)V

    .line 138
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 140
    :cond_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v15

    add-int/lit8 v4, v15, -0x1

    :goto_4
    if-ltz v4, :cond_4

    .line 141
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v6, v15, v0}, Lcom/oneplus/gallery/media/OPMediaManager;->notifyGroupMediaDeleted(Ljava/lang/String;I)V

    .line 140
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 142
    :cond_4
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    add-int/lit8 v4, v15, -0x1

    :goto_5
    if-ltz v4, :cond_5

    .line 143
    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v6, v15, v0}, Lcom/oneplus/gallery/media/OPMediaManager;->notifyGroupMediaDeleted(Ljava/lang/String;I)V

    .line 142
    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    .line 146
    :cond_5
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;->completeDeletion(Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle;Z)V

    .line 147
    return-void
.end method

.method protected final getDirectoryPaths()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;->m_DirectoryPaths:Ljava/util/List;

    return-object v0
.end method

.method protected isOwnedByMediaSet(Lcom/oneplus/gallery/media/Media;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    const/4 v3, 0x0

    .line 179
    if-nez p1, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-object v3

    .line 181
    :cond_1
    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "mediaPath":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 184
    iget-object v3, p0, Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;->m_DirectoryPaths:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 186
    .local v0, "directoryPath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 187
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 189
    .end local v0    # "directoryPath":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0
.end method

.method protected onRelease()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;->m_DirectoryRenameCallbackHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;->m_DirectoryRenameCallbackHandle:Lcom/oneplus/base/Handle;

    .line 224
    invoke-super {p0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->onRelease()V

    .line 225
    return-void
.end method

.method protected prepareConditions(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 4
    .param p1, "condBuilder"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p2, "condArgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;->m_DirectoryPaths:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 237
    if-lez v0, :cond_0

    .line 238
    const-string v2, " OR "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    :goto_1
    const-string v2, "_data LIKE ?"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;->m_DirectoryPaths:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 239
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 240
    const-string v2, " AND ("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 242
    :cond_1
    const-string v2, "("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 246
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;->m_DirectoryPaths:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 247
    const/16 v2, 0x29

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 248
    :cond_3
    return-void
.end method

.method protected prepareDirectoryPaths(Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;Ljava/util/List;)V
    .locals 1
    .param p1, "dirType"    # Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 258
    .local p2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;->getMediaManager()Lcom/oneplus/gallery/media/OPMediaManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/oneplus/gallery/media/OPMediaManager;->getSpecialDirectoryPaths(Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;Ljava/util/List;)V

    .line 259
    return-void
.end method
