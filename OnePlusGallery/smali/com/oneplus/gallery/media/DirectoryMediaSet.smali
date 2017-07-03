.class public Lcom/oneplus/gallery/media/DirectoryMediaSet;
.super Lcom/oneplus/gallery/media/MediaStoreMediaSet;
.source "DirectoryMediaSet.java"


# static fields
.field private static final MSG_UPDATE_EXTRA_DIRECTORY_INFO:I = 0x4e20


# instance fields
.field private m_DirectoryMediaSetManager:Lcom/oneplus/gallery/media/DirectoryMediaSetManager;

.field private m_DirectoryMediaSetManagerHandle:Lcom/oneplus/base/Handle;

.field private m_DirectoryPath:Ljava/lang/String;

.field private final m_Id:J

.field private m_IsExtraDirInfoUpdateScheduled:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;JLcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;Lcom/oneplus/gallery/media/MediaType;)V
    .locals 6
    .param p1, "directoryPath"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "extraInfo"    # Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;
    .param p5, "targetMediaType"    # Lcom/oneplus/gallery/media/MediaType;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 48
    sget-object v0, Lcom/oneplus/gallery/media/MediaSet$Type;->APPLICATION:Lcom/oneplus/gallery/media/MediaSet$Type;

    invoke-direct {p0, v0, p5, v5}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;-><init>(Lcom/oneplus/gallery/media/MediaSet$Type;Lcom/oneplus/gallery/media/MediaType;I)V

    .line 51
    sget-object v0, Lcom/oneplus/gallery/media/DirectoryMediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Lcom/oneplus/io/Path;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 54
    if-eqz p4, :cond_0

    .line 55
    sget-object v0, Lcom/oneplus/gallery/media/DirectoryMediaSet;->PROP_DATE_MEDIA_ADDED:Lcom/oneplus/base/PropertyKey;

    iget-wide v2, p4, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;->mediaAddedTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/media/DirectoryMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 58
    :cond_0
    iput-wide p2, p0, Lcom/oneplus/gallery/media/DirectoryMediaSet;->m_Id:J

    .line 59
    iput-object p1, p0, Lcom/oneplus/gallery/media/DirectoryMediaSet;->m_DirectoryPath:Ljava/lang/String;

    .line 60
    const-string v0, "parent=?"

    new-array v1, v5, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/media/DirectoryMediaSet;->setQueryCondition(Ljava/lang/String;[Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v0

    const-class v1, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GalleryApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;

    iput-object v0, p0, Lcom/oneplus/gallery/media/DirectoryMediaSet;->m_DirectoryMediaSetManager:Lcom/oneplus/gallery/media/DirectoryMediaSetManager;

    .line 64
    iget-object v0, p0, Lcom/oneplus/gallery/media/DirectoryMediaSet;->m_DirectoryMediaSetManager:Lcom/oneplus/gallery/media/DirectoryMediaSetManager;

    invoke-virtual {v0, p0, v4}, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->registerDirectoryMediaSet(Lcom/oneplus/gallery/media/DirectoryMediaSet;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/media/DirectoryMediaSet;->m_DirectoryMediaSetManagerHandle:Lcom/oneplus/base/Handle;

    .line 65
    return-void
.end method


# virtual methods
.method final createExtraDirectoryInfo()Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;
    .locals 6

    .prologue
    .line 74
    new-instance v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;

    iget-wide v2, p0, Lcom/oneplus/gallery/media/DirectoryMediaSet;->m_Id:J

    sget-object v0, Lcom/oneplus/gallery/media/DirectoryMediaSet;->PROP_DATE_MEDIA_ADDED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/media/DirectoryMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;-><init>(JJ)V

    return-object v1
.end method

.method protected delete(Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentProviderClient;)V
    .locals 14
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
    .line 83
    iget-object v2, p0, Lcom/oneplus/gallery/media/DirectoryMediaSet;->TAG:Ljava/lang/String;

    const-string v3, "delete() - Remove all files in the directory"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v2, "parent=? AND (media_type=1 OR media_type=3)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-wide v6, p0, Lcom/oneplus/gallery/media/DirectoryMediaSet;->m_Id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 88
    iget-wide v2, p0, Lcom/oneplus/gallery/media/DirectoryMediaSet;->m_Id:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/oneplus/gallery/media/DirectoryMediaSet;->TAG:Ljava/lang/String;

    const-string v3, "delete() - Root folder in internal storage, complete deletion"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/oneplus/gallery/media/DirectoryMediaSet;->completeDeletion(Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle;Z)V

    .line 142
    :goto_0
    return-void

    .line 96
    :cond_0
    const-string v10, ""

    .line 97
    .local v10, "directoryPath":Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/gallery/media/MediaStoreMedia;->getMediaColumns()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "_id=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-wide v12, p0, Lcom/oneplus/gallery/media/DirectoryMediaSet;->m_Id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v7, 0x0

    move-object/from16 v2, p4

    move-object/from16 v3, p3

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 100
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    const-string v2, "_data"

    invoke-static {v8, v2}, Lcom/oneplus/database/CursorUtils;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 111
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 115
    iget-object v2, p0, Lcom/oneplus/gallery/media/DirectoryMediaSet;->TAG:Ljava/lang/String;

    const-string v3, "delete() - Directory path: "

    invoke-static {v2, v3, v10}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    .local v9, "directory":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 119
    iget-object v2, p0, Lcom/oneplus/gallery/media/DirectoryMediaSet;->TAG:Ljava/lang/String;

    const-string v3, "delete() - Directory is not existed"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/oneplus/gallery/media/DirectoryMediaSet;->completeDeletion(Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle;Z)V

    goto :goto_0

    .line 103
    .end local v9    # "directory":Ljava/io/File;
    :catch_0
    move-exception v11

    .line 105
    .local v11, "tr":Ljava/lang/Throwable;
    :try_start_1
    iget-object v2, p0, Lcom/oneplus/gallery/media/DirectoryMediaSet;->TAG:Ljava/lang/String;

    const-string v3, "delete() - Failed to get directory path"

    invoke-static {v2, v3, v11}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/oneplus/gallery/media/DirectoryMediaSet;->completeDeletion(Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v11    # "tr":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2

    .line 123
    .restart local v9    # "directory":Ljava/io/File;
    :cond_2
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_3

    .line 125
    iget-object v2, p0, Lcom/oneplus/gallery/media/DirectoryMediaSet;->TAG:Ljava/lang/String;

    const-string v3, "delete() - Directory is not legal"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/oneplus/gallery/media/DirectoryMediaSet;->completeDeletion(Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle;Z)V

    goto :goto_0

    .line 131
    :cond_3
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 134
    iget-object v2, p0, Lcom/oneplus/gallery/media/DirectoryMediaSet;->TAG:Ljava/lang/String;

    const-string v3, "delete() - Remove directory"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-wide v6, p0, Lcom/oneplus/gallery/media/DirectoryMediaSet;->m_Id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 141
    :goto_1
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/oneplus/gallery/media/DirectoryMediaSet;->completeDeletion(Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle;Z)V

    goto/16 :goto_0

    .line 138
    :cond_4
    iget-object v2, p0, Lcom/oneplus/gallery/media/DirectoryMediaSet;->TAG:Ljava/lang/String;

    const-string v3, "delete() - Directory is not empty"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final getDirectoryId()J
    .locals 2

    .prologue
    .line 151
    iget-wide v0, p0, Lcom/oneplus/gallery/media/DirectoryMediaSet;->m_Id:J

    return-wide v0
.end method

.method public final getDirectoryPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/oneplus/gallery/media/DirectoryMediaSet;->m_DirectoryPath:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Directory/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/oneplus/gallery/media/DirectoryMediaSet;->m_Id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 177
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 195
    invoke-super {p0, p1}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->handleMessage(Landroid/os/Message;)V

    .line 198
    :goto_0
    return-void

    .line 181
    :pswitch_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/gallery/media/DirectoryMediaSet;->m_IsExtraDirInfoUpdateScheduled:Z

    .line 182
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/DirectoryMediaSet;->createExtraDirectoryInfo()Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;

    move-result-object v0

    .line 183
    .local v0, "extraInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/DirectoryMediaSet;->getMediaManager()Lcom/oneplus/gallery/media/OPMediaManager;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery/media/DirectoryMediaSet$1;

    invoke-direct {v2, p0, v0}, Lcom/oneplus/gallery/media/DirectoryMediaSet$1;-><init>(Lcom/oneplus/gallery/media/DirectoryMediaSet;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;)V

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Lcom/oneplus/gallery/media/OPMediaManager;->postToContentThread(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x4e20
        :pswitch_0
    .end packed-switch
.end method

.method protected isOwnedByMediaSet(Lcom/oneplus/gallery/media/Media;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    const/4 v2, 0x0

    .line 204
    if-nez p1, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-object v2

    .line 206
    :cond_1
    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "mediaPath":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 209
    invoke-static {v1}, Lcom/oneplus/io/Path;->getDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "directoryPath":Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/gallery/media/DirectoryMediaSet;->m_DirectoryPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 211
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 213
    :cond_2
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method protected onDirectoryRenamed(JLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "id"    # J
    .param p3, "oldPath"    # Ljava/lang/String;
    .param p4, "newPath"    # Ljava/lang/String;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/oneplus/gallery/media/DirectoryMediaSet;->TAG:Ljava/lang/String;

    const-string v1, "onDirectoryRenamed() - Id: "

    iget-wide v2, p0, Lcom/oneplus/gallery/media/DirectoryMediaSet;->m_Id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, ", renamed id: "

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 221
    iget-wide v0, p0, Lcom/oneplus/gallery/media/DirectoryMediaSet;->m_Id:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 223
    iput-object p4, p0, Lcom/oneplus/gallery/media/DirectoryMediaSet;->m_DirectoryPath:Ljava/lang/String;

    .line 224
    sget-object v0, Lcom/oneplus/gallery/media/DirectoryMediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    invoke-static {p4}, Lcom/oneplus/io/Path;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/media/DirectoryMediaSet;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 226
    :cond_0
    return-void
.end method

.method protected onMediaCreated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 11
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    const/4 v3, 0x0

    .line 233
    instance-of v0, p4, Lcom/oneplus/gallery/media/MediaStoreMedia;

    if-eqz v0, :cond_0

    move-object v0, p4

    .line 235
    check-cast v0, Lcom/oneplus/gallery/media/MediaStoreMedia;

    invoke-virtual {v0}, Lcom/oneplus/gallery/media/MediaStoreMedia;->getDateAdded()J

    move-result-wide v8

    .line 236
    .local v8, "addedTime":J
    sget-object v0, Lcom/oneplus/gallery/media/DirectoryMediaSet;->PROP_DATE_MEDIA_ADDED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/media/DirectoryMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v8, v0

    if-lez v0, :cond_0

    .line 238
    sget-object v0, Lcom/oneplus/gallery/media/DirectoryMediaSet;->PROP_DATE_MEDIA_ADDED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/media/DirectoryMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 239
    iget-boolean v0, p0, Lcom/oneplus/gallery/media/DirectoryMediaSet;->m_IsExtraDirInfoUpdateScheduled:Z

    if-nez v0, :cond_0

    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery/media/DirectoryMediaSet;->m_IsExtraDirInfoUpdateScheduled:Z

    .line 242
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/DirectoryMediaSet;->getPeriodicMessageDispatcher()Lcom/oneplus/base/PeriodicMessageDispatcher;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/gallery/media/DirectoryMediaSet;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x4e20

    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    invoke-interface/range {v0 .. v6}, Lcom/oneplus/base/PeriodicMessageDispatcher;->scheduleMessage(Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 246
    .end local v8    # "addedTime":J
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->onMediaCreated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    .line 247
    return-void
.end method

.method protected onRelease()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/oneplus/gallery/media/DirectoryMediaSet;->m_DirectoryMediaSetManagerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/media/DirectoryMediaSet;->m_DirectoryMediaSetManagerHandle:Lcom/oneplus/base/Handle;

    .line 258
    invoke-super {p0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->onRelease()V

    .line 259
    return-void
.end method
