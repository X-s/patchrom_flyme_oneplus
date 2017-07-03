.class public abstract Lcom/oneplus/cache/DiskLruCache;
.super Lcom/oneplus/cache/AsyncLruCache;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TKey::",
        "Ljava/io/Serializable;",
        "TValue:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/oneplus/cache/AsyncLruCache",
        "<TTKey;TTValue;>;"
    }
.end annotation


# static fields
.field private static final MAX_TEMP_FILE_STAYS_DURATION:I = 0x3e8

.field private static final MSG_BUILD_CACHE_FROM_SNAPSHOT:I = 0x2710

.field private static final MSG_CLEAR_TEMP_FILES:I = 0x271a

.field private static final MSG_CREATE_SNAPSHOT:I = 0x2711

.field private static final PRINT_TRACE_LOGS:Z = false

.field private static final SNAPSHOT_FILE_NAME:Ljava/lang/String; = "__snapshot"

.field private static final THRESHOLD_OP_COUNT_TO_CREATE_SNAPSHOT:I = 0x40


# instance fields
.field private final m_CacheFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TTKey;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final m_Directory:Ljava/io/File;

.field private volatile m_NewOperationCount:I

.field private final m_SnapshotFile:Ljava/io/File;

.field private final m_TempFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TTKey;",
            "Landroid/util/Pair",
            "<",
            "Ljava/io/File;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "capacity"    # J

    .prologue
    .line 58
    .local p0, "this":Lcom/oneplus/cache/DiskLruCache;, "Lcom/oneplus/cache/DiskLruCache<TTKey;TTValue;>;"
    invoke-direct {p0, p3, p4}, Lcom/oneplus/cache/AsyncLruCache;-><init>(J)V

    .line 42
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/oneplus/cache/DiskLruCache;->m_CacheFiles:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/oneplus/cache/DiskLruCache;->m_TempFiles:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/cache/DiskLruCache;->m_Directory:Ljava/io/File;

    .line 62
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/oneplus/cache/DiskLruCache;->m_Directory:Ljava/io/File;

    const-string v2, "__snapshot"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/cache/DiskLruCache;->m_SnapshotFile:Ljava/io/File;

    .line 67
    const/4 v0, 0x0

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/cache/DiskLruCache;->sendMessageToWorkerThread(Landroid/os/Message;)Z

    .line 68
    return-void
.end method

.method private buildCacheFromSnapshot()V
    .locals 21

    .prologue
    .line 115
    .local p0, "this":Lcom/oneplus/cache/DiskLruCache;, "Lcom/oneplus/cache/DiskLruCache<TTKey;TTValue;>;"
    invoke-super/range {p0 .. p0}, Lcom/oneplus/cache/AsyncLruCache;->clear()V

    .line 120
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/cache/DiskLruCache;->m_Directory:Ljava/io/File;

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/cache/DiskLruCache;->m_Directory:Ljava/io/File;

    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

    move-result v15

    if-nez v15, :cond_1

    .line 122
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/cache/DiskLruCache;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "buildCacheFromSnapshot() - Fail to create "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/cache/DiskLruCache;->m_Directory:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v5

    .line 128
    .local v5, "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/cache/DiskLruCache;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "buildCacheFromSnapshot() - Fail to create "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/cache/DiskLruCache;->m_Directory:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 133
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_1
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 136
    .local v4, "allFileNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/cache/DiskLruCache;->m_Directory:Ljava/io/File;

    invoke-virtual {v15}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v9

    .line 137
    .local v9, "filePaths":[Ljava/lang/String;
    array-length v15, v9
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    add-int/lit8 v11, v15, -0x1

    .local v11, "i":I
    :goto_1
    if-gez v11, :cond_4

    .line 155
    .end local v9    # "filePaths":[Ljava/lang/String;
    .end local v11    # "i":I
    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/cache/DiskLruCache;->m_SnapshotFile:Ljava/io/File;

    invoke-virtual {v15}, Ljava/io/File;->exists()Z
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    move-result v15

    if-eqz v15, :cond_3

    .line 157
    const/16 v16, 0x0

    :try_start_3
    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/cache/DiskLruCache;->m_SnapshotFile:Ljava/io/File;

    invoke-direct {v10, v15}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .local v10, "fileStream":Ljava/io/FileInputStream;
    :try_start_4
    new-instance v14, Ljava/io/ObjectInputStream;

    invoke-direct {v14, v10}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 159
    .local v14, "stream":Ljava/io/ObjectInputStream;
    :try_start_5
    invoke-virtual {v14}, Ljava/io/ObjectInputStream;->readInt()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v11

    .restart local v11    # "i":I
    :goto_3
    if-gtz v11, :cond_6

    .line 173
    if-eqz v14, :cond_2

    :try_start_6
    invoke-virtual {v14}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_2
    if-eqz v10, :cond_3

    :try_start_7
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 188
    .end local v10    # "fileStream":Ljava/io/FileInputStream;
    .end local v11    # "i":I
    .end local v14    # "stream":Ljava/io/ObjectInputStream;
    :cond_3
    :goto_4
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_0

    .line 192
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 196
    .local v13, "name":Ljava/lang/String;
    :try_start_8
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/cache/DiskLruCache;->m_Directory:Ljava/io/File;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_5

    .line 198
    :catch_1
    move-exception v16

    goto :goto_5

    .line 139
    .end local v13    # "name":Ljava/lang/String;
    .restart local v9    # "filePaths":[Ljava/lang/String;
    .restart local v11    # "i":I
    :cond_4
    :try_start_9
    aget-object v8, v9, v11

    .line 140
    .local v8, "filePath":Ljava/lang/String;
    invoke-static {v8}, Lcom/oneplus/io/Path;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 141
    .restart local v13    # "name":Ljava/lang/String;
    const-string v15, "__snapshot"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 142
    invoke-virtual {v4, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    .line 137
    :cond_5
    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    .line 145
    .end local v8    # "filePath":Ljava/lang/String;
    .end local v9    # "filePaths":[Ljava/lang/String;
    .end local v11    # "i":I
    .end local v13    # "name":Ljava/lang/String;
    :catch_2
    move-exception v5

    .line 147
    .restart local v5    # "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/cache/DiskLruCache;->TAG:Ljava/lang/String;

    const-string v16, "buildCacheFromSnapshot() - Fail to list all files"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 161
    .end local v5    # "ex":Ljava/lang/Throwable;
    .restart local v10    # "fileStream":Ljava/io/FileInputStream;
    .restart local v11    # "i":I
    .restart local v14    # "stream":Ljava/io/ObjectInputStream;
    :cond_6
    :try_start_a
    invoke-virtual {v14}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/io/Serializable;

    .line 162
    .local v12, "key":Ljava/io/Serializable;, "TTKey;"
    invoke-virtual {v14}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 163
    .local v7, "fileName":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 165
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/cache/DiskLruCache;->m_Directory:Ljava/io/File;

    invoke-direct {v6, v15, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 166
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 168
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/cache/DiskLruCache;->m_CacheFiles:Ljava/util/Map;

    invoke-interface {v15, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v12, v12, v1, v2}, Lcom/oneplus/cache/DiskLruCache;->addEntryDirectly(Ljava/lang/Object;Ljava/lang/Object;J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 159
    .end local v6    # "file":Ljava/io/File;
    :cond_7
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_3

    .line 173
    .end local v7    # "fileName":Ljava/lang/String;
    .end local v11    # "i":I
    .end local v12    # "key":Ljava/io/Serializable;, "TTKey;"
    :catchall_0
    move-exception v15

    if-eqz v14, :cond_8

    :try_start_b
    invoke-virtual {v14}, Ljava/io/ObjectInputStream;->close()V

    :cond_8
    throw v15
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catchall_1
    move-exception v16

    move-object/from16 v20, v16

    move-object/from16 v16, v15

    move-object/from16 v15, v20

    .end local v14    # "stream":Ljava/io/ObjectInputStream;
    :goto_6
    if-nez v16, :cond_c

    move-object/from16 v16, v15

    :cond_9
    :goto_7
    if-eqz v10, :cond_a

    :try_start_c
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    :cond_a
    throw v16
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .end local v10    # "fileStream":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v15

    if-nez v16, :cond_d

    move-object/from16 v16, v15

    :cond_b
    :goto_8
    :try_start_d
    throw v16
    :try_end_d
    .catch Ljava/io/EOFException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4

    .line 176
    :catch_3
    move-exception v5

    .line 178
    .local v5, "ex":Ljava/io/EOFException;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/cache/DiskLruCache;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "buildCacheFromSnapshot() - Inconsistent data in snapshot file "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/cache/DiskLruCache;->m_SnapshotFile:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 173
    .end local v5    # "ex":Ljava/io/EOFException;
    .restart local v10    # "fileStream":Ljava/io/FileInputStream;
    :cond_c
    move-object/from16 v0, v16

    if-eq v0, v15, :cond_9

    :try_start_e
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto :goto_7

    .end local v10    # "fileStream":Ljava/io/FileInputStream;
    :cond_d
    move-object/from16 v0, v16

    if-eq v0, v15, :cond_b

    :try_start_f
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_f
    .catch Ljava/io/EOFException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_4

    goto :goto_8

    .line 180
    :catch_4
    move-exception v5

    .line 182
    .local v5, "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/cache/DiskLruCache;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "buildCacheFromSnapshot() - Fail to read snapshot file "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/cache/DiskLruCache;->m_SnapshotFile:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 173
    .end local v5    # "ex":Ljava/lang/Throwable;
    .restart local v10    # "fileStream":Ljava/io/FileInputStream;
    :catchall_3
    move-exception v15

    goto :goto_6
.end method

.method private clearTempFiles()V
    .locals 10

    .prologue
    .line 218
    .local p0, "this":Lcom/oneplus/cache/DiskLruCache;, "Lcom/oneplus/cache/DiskLruCache<TTKey;TTValue;>;"
    iget-object v5, p0, Lcom/oneplus/cache/DiskLruCache;->m_TempFiles:Ljava/util/Map;

    monitor-enter v5

    .line 220
    :try_start_0
    iget-object v4, p0, Lcom/oneplus/cache/DiskLruCache;->m_TempFiles:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 221
    monitor-exit v5

    .line 242
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v4, p0, Lcom/oneplus/cache/DiskLruCache;->m_TempFiles:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/util/Map$Entry;

    invoke-interface {v4, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    .line 223
    .local v0, "entries":[Ljava/util/Map$Entry;
    array-length v4, v0

    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_1
    if-gez v3, :cond_2

    .line 239
    iget-object v4, p0, Lcom/oneplus/cache/DiskLruCache;->m_TempFiles:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 240
    const/4 v4, 0x0

    const/16 v6, 0x271a

    invoke-static {v4, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oneplus/cache/DiskLruCache;->sendMessageToWorkerThread(Landroid/os/Message;)Z

    .line 218
    :cond_1
    monitor-exit v5

    goto :goto_0

    .end local v0    # "entries":[Ljava/util/Map$Entry;
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 225
    .restart local v0    # "entries":[Ljava/util/Map$Entry;
    .restart local v3    # "i":I
    :cond_2
    :try_start_1
    aget-object v4, v0, v3

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 226
    .local v2, "fileInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/io/File;Ljava/lang/Long;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    cmp-long v4, v6, v8

    if-ltz v4, :cond_3

    .line 230
    :try_start_2
    iget-object v4, p0, Lcom/oneplus/cache/DiskLruCache;->m_TempFiles:Ljava/util/Map;

    aget-object v6, v0, v3

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 223
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 233
    :catch_0
    move-exception v1

    .line 235
    .local v1, "ex":Ljava/lang/Throwable;
    :try_start_3
    iget-object v4, p0, Lcom/oneplus/cache/DiskLruCache;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "clearTempFiles() - Fail to delete file "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method private createSnapshot()V
    .locals 13

    .prologue
    .line 258
    .local p0, "this":Lcom/oneplus/cache/DiskLruCache;, "Lcom/oneplus/cache/DiskLruCache<TTKey;TTValue;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v6, "keys":Ljava/util/List;, "Ljava/util/List<TTKey;>;"
    iget-object v9, p0, Lcom/oneplus/cache/DiskLruCache;->syncLock:Ljava/lang/Object;

    monitor-enter v9

    .line 261
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/cache/DiskLruCache;->listKeys()Ljava/util/Iterator;

    move-result-object v4

    .line 262
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TTKey;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 259
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    iget-object v8, p0, Lcom/oneplus/cache/DiskLruCache;->m_SnapshotFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/oneplus/cache/DiskLruCache;->m_SnapshotFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_2

    .line 269
    iget-object v8, p0, Lcom/oneplus/cache/DiskLruCache;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "createSnapshot() - Fail to delete snapshot file "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/oneplus/cache/DiskLruCache;->m_SnapshotFile:Ljava/io/File;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :cond_0
    :goto_1
    return-void

    .line 263
    :cond_1
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/Serializable;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 259
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TTKey;>;"
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 274
    .restart local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TTKey;>;"
    :cond_2
    const/4 v9, 0x0

    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v8, p0, Lcom/oneplus/cache/DiskLruCache;->m_SnapshotFile:Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .local v2, "fileStream":Ljava/io/FileOutputStream;
    :try_start_3
    new-instance v7, Ljava/io/ObjectOutputStream;

    invoke-direct {v7, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 276
    .local v7, "objectStream":Ljava/io/ObjectOutputStream;
    :try_start_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 277
    invoke-interface {v6}, Ljava/util/List;->size()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, "i":I
    :goto_2
    if-gez v3, :cond_4

    .line 296
    if-eqz v7, :cond_3

    :try_start_5
    invoke-virtual {v7}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :cond_3
    if-eqz v2, :cond_0

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .end local v2    # "fileStream":Ljava/io/FileOutputStream;
    .end local v3    # "i":I
    .end local v7    # "objectStream":Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v8

    if-nez v9, :cond_b

    :goto_3
    :try_start_7
    throw v8
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    .line 297
    :catch_0
    move-exception v0

    .line 299
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v8, p0, Lcom/oneplus/cache/DiskLruCache;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "createSnapshot() - Fail to create snapshot file "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/oneplus/cache/DiskLruCache;->m_SnapshotFile:Ljava/io/File;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 279
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v3    # "i":I
    .restart local v7    # "objectStream":Ljava/io/ObjectOutputStream;
    :cond_4
    :try_start_8
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/Serializable;

    .line 281
    .local v5, "key":Ljava/io/Serializable;, "TTKey;"
    iget-object v10, p0, Lcom/oneplus/cache/DiskLruCache;->m_CacheFiles:Ljava/util/Map;

    monitor-enter v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 283
    :try_start_9
    iget-object v8, p0, Lcom/oneplus/cache/DiskLruCache;->m_CacheFiles:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 281
    .local v1, "file":Ljava/io/File;
    monitor-exit v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 285
    if-nez v1, :cond_8

    .line 287
    :try_start_a
    iget-object v8, p0, Lcom/oneplus/cache/DiskLruCache;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "createSnapshot() - Missing cache file for "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 277
    :goto_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 281
    .end local v1    # "file":Ljava/io/File;
    :catchall_2
    move-exception v8

    :try_start_b
    monitor-exit v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 296
    .end local v3    # "i":I
    .end local v5    # "key":Ljava/io/Serializable;, "TTKey;"
    :catchall_3
    move-exception v8

    if-eqz v7, :cond_5

    :try_start_d
    invoke-virtual {v7}, Ljava/io/ObjectOutputStream;->close()V

    :cond_5
    throw v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :catchall_4
    move-exception v9

    move-object v12, v9

    move-object v9, v8

    move-object v8, v12

    .end local v7    # "objectStream":Ljava/io/ObjectOutputStream;
    :goto_5
    if-nez v9, :cond_a

    move-object v9, v8

    :cond_6
    :goto_6
    if-eqz v2, :cond_7

    :try_start_e
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_7
    throw v9
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 290
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "i":I
    .restart local v5    # "key":Ljava/io/Serializable;, "TTKey;"
    .restart local v7    # "objectStream":Ljava/io/ObjectOutputStream;
    :cond_8
    :try_start_f
    invoke-virtual {v7, v5}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 291
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 292
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/oneplus/io/Path;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_4

    .line 294
    :cond_9
    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto :goto_4

    .line 296
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "i":I
    .end local v5    # "key":Ljava/io/Serializable;, "TTKey;"
    .end local v7    # "objectStream":Ljava/io/ObjectOutputStream;
    :cond_a
    if-eq v9, v8, :cond_6

    :try_start_10
    invoke-virtual {v9, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto :goto_6

    .end local v2    # "fileStream":Ljava/io/FileOutputStream;
    :cond_b
    if-eq v9, v8, :cond_c

    :try_start_11
    invoke-virtual {v9, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_0

    :cond_c
    move-object v8, v9

    goto/16 :goto_3

    .restart local v2    # "fileStream":Ljava/io/FileOutputStream;
    :catchall_5
    move-exception v8

    goto :goto_5
.end method

.method private generateFile()Ljava/io/File;
    .locals 8

    .prologue
    .line 318
    .local p0, "this":Lcom/oneplus/cache/DiskLruCache;, "Lcom/oneplus/cache/DiskLruCache<TTKey;TTValue;>;"
    const/16 v4, 0x10

    new-array v1, v4, [C

    .line 322
    .local v1, "fileName":[C
    :cond_0
    array-length v4, v1

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-gez v2, :cond_1

    .line 330
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/oneplus/cache/DiskLruCache;->m_Directory:Ljava/io/File;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 331
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 332
    return-object v0

    .line 324
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4042000000000000L    # 36.0

    mul-double/2addr v4, v6

    double-to-int v3, v4

    .line 325
    .local v3, "n":I
    const/16 v4, 0xa

    if-ge v3, v4, :cond_2

    .line 326
    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    aput-char v4, v1, v2

    .line 322
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 328
    :cond_2
    add-int/lit8 v4, v3, -0xa

    add-int/lit8 v4, v4, 0x61

    int-to-char v4, v4

    aput-char v4, v1, v2

    goto :goto_1
.end method

.method private increateNewOperationCount()V
    .locals 3

    .prologue
    .line 453
    .local p0, "this":Lcom/oneplus/cache/DiskLruCache;, "Lcom/oneplus/cache/DiskLruCache<TTKey;TTValue;>;"
    iget-object v1, p0, Lcom/oneplus/cache/DiskLruCache;->syncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 455
    :try_start_0
    iget v0, p0, Lcom/oneplus/cache/DiskLruCache;->m_NewOperationCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/cache/DiskLruCache;->m_NewOperationCount:I

    .line 456
    iget v0, p0, Lcom/oneplus/cache/DiskLruCache;->m_NewOperationCount:I

    const/16 v2, 0x40

    if-lt v0, v2, :cond_0

    .line 458
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/cache/DiskLruCache;->m_NewOperationCount:I

    .line 459
    const/4 v0, 0x0

    const/16 v2, 0x2711

    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/cache/DiskLruCache;->sendMessageToWorkerThread(Landroid/os/Message;)Z

    .line 453
    :cond_0
    monitor-exit v1

    .line 462
    return-void

    .line 453
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public add(Ljava/io/Serializable;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lcom/oneplus/cache/DiskLruCache;, "Lcom/oneplus/cache/DiskLruCache<TTKey;TTValue;>;"
    .local p1, "key":Ljava/io/Serializable;, "TTKey;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    invoke-super {p0, p1, p2}, Lcom/oneplus/cache/AsyncLruCache;->add(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/oneplus/cache/DiskLruCache;->increateNewOperationCount()V

    .line 78
    const/4 v0, 0x1

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic add(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/io/Serializable;

    check-cast p2, Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/cache/DiskLruCache;->add(Ljava/io/Serializable;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected addEntry(Ljava/io/Serializable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;TTValue;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lcom/oneplus/cache/DiskLruCache;, "Lcom/oneplus/cache/DiskLruCache<TTKey;TTValue;>;"
    .local p1, "key":Ljava/io/Serializable;, "TTKey;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    iget-object v3, p0, Lcom/oneplus/cache/DiskLruCache;->m_TempFiles:Ljava/util/Map;

    monitor-enter v3

    .line 91
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/cache/DiskLruCache;->m_TempFiles:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 92
    .local v1, "tempFileInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/io/File;Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/oneplus/cache/DiskLruCache;->m_TempFiles:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    const/16 v2, 0x271a

    invoke-virtual {p0, v2}, Lcom/oneplus/cache/DiskLruCache;->removeWorkerThreadMessages(I)V

    .line 89
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    if-eqz v1, :cond_2

    .line 97
    iget-object v3, p0, Lcom/oneplus/cache/DiskLruCache;->m_CacheFiles:Ljava/util/Map;

    monitor-enter v3

    .line 99
    :try_start_1
    iget-object v4, p0, Lcom/oneplus/cache/DiskLruCache;->m_CacheFiles:Ljava/util/Map;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    invoke-interface {v4, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 100
    .local v0, "prevFile":Ljava/io/File;
    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 97
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 106
    .end local v0    # "prevFile":Ljava/io/File;
    :goto_0
    return-object p1

    .line 89
    .end local v1    # "tempFileInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/io/File;Ljava/lang/Long;>;"
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 97
    .restart local v1    # "tempFileInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/io/File;Ljava/lang/Long;>;"
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 105
    :cond_2
    iget-object v2, p0, Lcom/oneplus/cache/DiskLruCache;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "addEntry() - No cache file for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic addEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/io/Serializable;

    check-cast p2, Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/cache/DiskLruCache;->addEntry(Ljava/io/Serializable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 209
    .local p0, "this":Lcom/oneplus/cache/DiskLruCache;, "Lcom/oneplus/cache/DiskLruCache<TTKey;TTValue;>;"
    invoke-super {p0}, Lcom/oneplus/cache/AsyncLruCache;->clear()V

    .line 210
    invoke-direct {p0}, Lcom/oneplus/cache/DiskLruCache;->increateNewOperationCount()V

    .line 211
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 249
    .local p0, "this":Lcom/oneplus/cache/DiskLruCache;, "Lcom/oneplus/cache/DiskLruCache<TTKey;TTValue;>;"
    const/4 v0, 0x0

    const/16 v1, 0x2711

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/cache/DiskLruCache;->sendMessageToWorkerThread(Landroid/os/Message;)Z

    .line 250
    invoke-super {p0}, Lcom/oneplus/cache/AsyncLruCache;->close()V

    .line 251
    return-void
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 311
    .local p0, "this":Lcom/oneplus/cache/DiskLruCache;, "Lcom/oneplus/cache/DiskLruCache<TTKey;TTValue;>;"
    const/4 v0, 0x0

    const/16 v1, 0x2711

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/cache/DiskLruCache;->sendMessageToWorkerThread(Landroid/os/Message;)Z

    .line 312
    return-void
.end method

.method protected get(Ljava/io/Serializable;Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 5
    .param p2, "obj"    # Ljava/lang/Object;
    .param p4, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;",
            "Ljava/lang/Object;",
            "TTValue;J)TTValue;"
        }
    .end annotation

    .prologue
    .line 342
    .local p0, "this":Lcom/oneplus/cache/DiskLruCache;, "Lcom/oneplus/cache/DiskLruCache<TTKey;TTValue;>;"
    .local p1, "key":Ljava/io/Serializable;, "TTKey;"
    .local p3, "defaultValue":Ljava/lang/Object;, "TTValue;"
    iget-object v3, p0, Lcom/oneplus/cache/DiskLruCache;->m_CacheFiles:Ljava/util/Map;

    monitor-enter v3

    .line 344
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/cache/DiskLruCache;->m_CacheFiles:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 342
    .local v1, "file":Ljava/io/File;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    if-eqz v1, :cond_0

    .line 350
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 351
    invoke-virtual {p0, p1, v1, p3}, Lcom/oneplus/cache/DiskLruCache;->readFromFile(Ljava/io/Serializable;Ljava/io/File;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object p3

    .line 361
    .end local p3    # "defaultValue":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0}, Lcom/oneplus/cache/DiskLruCache;->increateNewOperationCount()V

    .line 364
    :cond_0
    :goto_0
    return-object p3

    .line 342
    .end local v1    # "file":Ljava/io/File;
    .restart local p3    # "defaultValue":Ljava/lang/Object;, "TTValue;"
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 352
    .restart local v1    # "file":Ljava/io/File;
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/oneplus/cache/DiskLruCache;->m_CacheFiles:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 361
    invoke-direct {p0}, Lcom/oneplus/cache/DiskLruCache;->increateNewOperationCount()V

    goto :goto_0

    .line 355
    :catch_0
    move-exception v0

    .line 357
    .local v0, "ex":Ljava/lang/Throwable;
    :try_start_4
    iget-object v2, p0, Lcom/oneplus/cache/DiskLruCache;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get() - Fail to read "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 361
    invoke-direct {p0}, Lcom/oneplus/cache/DiskLruCache;->increateNewOperationCount()V

    goto :goto_0

    .line 360
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catchall_1
    move-exception v2

    .line 361
    invoke-direct {p0}, Lcom/oneplus/cache/DiskLruCache;->increateNewOperationCount()V

    .line 362
    throw v2
.end method

.method protected bridge synthetic get(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 1
    move-object v1, p1

    check-cast v1, Ljava/io/Serializable;

    move-object v3, p3

    check-cast v3, Ljava/lang/Object;

    move-object v0, p0

    move-object v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/cache/DiskLruCache;->get(Ljava/io/Serializable;Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getSizeInBytes(Ljava/io/Serializable;Ljava/lang/Object;)J
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;TTValue;)J"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/oneplus/cache/DiskLruCache;, "Lcom/oneplus/cache/DiskLruCache<TTKey;TTValue;>;"
    .local p1, "key":Ljava/io/Serializable;, "TTKey;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    const-wide/16 v4, -0x1

    .line 373
    invoke-direct {p0}, Lcom/oneplus/cache/DiskLruCache;->generateFile()Ljava/io/File;

    move-result-object v1

    .line 378
    .local v1, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/oneplus/cache/DiskLruCache;->writeToFile(Ljava/io/Serializable;Ljava/lang/Object;Ljava/io/File;)V

    .line 379
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-nez v3, :cond_1

    .line 381
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 382
    iget-object v3, p0, Lcom/oneplus/cache/DiskLruCache;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getSizeInBytes() - No content in "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    :goto_0
    return-wide v4

    .line 386
    :catch_0
    move-exception v0

    .line 388
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/cache/DiskLruCache;->TAG:Ljava/lang/String;

    const-string v6, "getSizeInBytes() - Fail to write value to file"

    invoke-static {v3, v6, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 391
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 394
    :catch_1
    move-exception v3

    .line 398
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_1
    iget-object v6, p0, Lcom/oneplus/cache/DiskLruCache;->m_TempFiles:Ljava/util/Map;

    monitor-enter v6

    .line 400
    :try_start_2
    iget-object v3, p0, Lcom/oneplus/cache/DiskLruCache;->m_TempFiles:Ljava/util/Map;

    new-instance v7, Landroid/util/Pair;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {v7, v1, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 398
    .local v2, "prevFileInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/io/File;Ljava/lang/Long;>;"
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 402
    if-eqz v2, :cond_2

    .line 403
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 410
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->length()J
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    move-result-wide v4

    goto :goto_0

    .line 398
    .end local v2    # "prevFileInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/io/File;Ljava/lang/Long;>;"
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 405
    .restart local v2    # "prevFileInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/io/File;Ljava/lang/Long;>;"
    :cond_2
    const/4 v3, 0x0

    const/16 v6, 0x271a

    invoke-static {v3, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oneplus/cache/DiskLruCache;->sendMessageToWorkerThread(Landroid/os/Message;)Z

    goto :goto_1

    .line 412
    :catch_2
    move-exception v0

    .line 414
    .restart local v0    # "ex":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/cache/DiskLruCache;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getSizeInBytes() - Fail to get file size : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 415
    iget-object v6, p0, Lcom/oneplus/cache/DiskLruCache;->m_TempFiles:Ljava/util/Map;

    monitor-enter v6

    .line 417
    :try_start_5
    iget-object v3, p0, Lcom/oneplus/cache/DiskLruCache;->m_TempFiles:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 419
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 415
    :catchall_1
    move-exception v3

    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v3
.end method

.method protected bridge synthetic getSizeInBytes(Ljava/lang/Object;Ljava/lang/Object;)J
    .locals 2

    .prologue
    .line 1
    check-cast p1, Ljava/io/Serializable;

    check-cast p2, Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/cache/DiskLruCache;->getSizeInBytes(Ljava/io/Serializable;Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected handleWorkerThreadMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 429
    .local p0, "this":Lcom/oneplus/cache/DiskLruCache;, "Lcom/oneplus/cache/DiskLruCache<TTKey;TTValue;>;"
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 444
    invoke-super {p0, p1}, Lcom/oneplus/cache/AsyncLruCache;->handleWorkerThreadMessage(Landroid/os/Message;)V

    .line 447
    :goto_0
    return-void

    .line 432
    :sswitch_0
    invoke-direct {p0}, Lcom/oneplus/cache/DiskLruCache;->buildCacheFromSnapshot()V

    goto :goto_0

    .line 436
    :sswitch_1
    invoke-direct {p0}, Lcom/oneplus/cache/DiskLruCache;->clearTempFiles()V

    goto :goto_0

    .line 440
    :sswitch_2
    invoke-direct {p0}, Lcom/oneplus/cache/DiskLruCache;->createSnapshot()V

    goto :goto_0

    .line 429
    nop

    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_0
        0x2711 -> :sswitch_2
        0x271a -> :sswitch_1
    .end sparse-switch
.end method

.method protected abstract readFromFile(Ljava/io/Serializable;Ljava/io/File;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;",
            "Ljava/io/File;",
            "TTValue;)TTValue;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public remove(Ljava/io/Serializable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;)Z"
        }
    .end annotation

    .prologue
    .line 479
    .local p0, "this":Lcom/oneplus/cache/DiskLruCache;, "Lcom/oneplus/cache/DiskLruCache<TTKey;TTValue;>;"
    .local p1, "key":Ljava/io/Serializable;, "TTKey;"
    invoke-super {p0, p1}, Lcom/oneplus/cache/AsyncLruCache;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    invoke-direct {p0}, Lcom/oneplus/cache/DiskLruCache;->increateNewOperationCount()V

    .line 482
    const/4 v0, 0x1

    .line 484
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/io/Serializable;

    invoke-virtual {p0, p1}, Lcom/oneplus/cache/DiskLruCache;->remove(Ljava/io/Serializable;)Z

    move-result v0

    return v0
.end method

.method protected removeEntry(Ljava/io/Serializable;Ljava/lang/Object;)V
    .locals 5
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 493
    .local p0, "this":Lcom/oneplus/cache/DiskLruCache;, "Lcom/oneplus/cache/DiskLruCache<TTKey;TTValue;>;"
    .local p1, "key":Ljava/io/Serializable;, "TTKey;"
    iget-object v3, p0, Lcom/oneplus/cache/DiskLruCache;->m_CacheFiles:Ljava/util/Map;

    monitor-enter v3

    .line 495
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/cache/DiskLruCache;->m_CacheFiles:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 493
    .local v1, "file":Ljava/io/File;
    monitor-exit v3

    .line 497
    if-nez v1, :cond_1

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 493
    .end local v1    # "file":Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 501
    .restart local v1    # "file":Ljava/io/File;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 505
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 506
    iget-object v2, p0, Lcom/oneplus/cache/DiskLruCache;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "removeEntry() - Fail to delete "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 509
    :catch_0
    move-exception v0

    .line 511
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/oneplus/cache/DiskLruCache;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "removeEntry() - Fail to delete "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected bridge synthetic removeEntry(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/io/Serializable;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/cache/DiskLruCache;->removeEntry(Ljava/io/Serializable;Ljava/lang/Object;)V

    return-void
.end method

.method protected abstract writeToFile(Ljava/io/Serializable;Ljava/lang/Object;Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;TTValue;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
