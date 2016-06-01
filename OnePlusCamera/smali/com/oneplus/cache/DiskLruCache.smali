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
.field private static final DURATION_CLEAR_TEMP_FILES_DELAY:J = 0xbb8L

.field private static final MSG_BUILD_CACHE_FROM_SNAPSHOT:I = 0x2710

.field private static final MSG_CLEAR_TEMP_FILES:I = 0x271a

.field private static final MSG_CREATE_SNAPSHOT:I = 0x2711

.field private static final PRINT_TRACE_LOGS:Z = false

.field private static final SNAPSHOT_FILE_NAME:Ljava/lang/String; = "__snapshot"

.field private static final THRESHOLD_OP_COUNT_TO_CREATE_SNAPSHOT:I = 0x40


# instance fields
.field private final m_CacheFiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TTKey;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final m_Directory:Ljava/io/File;

.field private volatile m_NewOperationCount:I

.field private final m_SnapshotFile:Ljava/io/File;

.field private final m_TempFiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TTKey;",
            "Ljava/io/File;",
            ">;"
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
    .line 56
    .local p0, "this":Lcom/oneplus/cache/DiskLruCache;, "Lcom/oneplus/cache/DiskLruCache<TTKey;TTValue;>;"
    invoke-direct {p0, p3, p4}, Lcom/oneplus/cache/AsyncLruCache;-><init>(J)V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/cache/DiskLruCache;->m_CacheFiles:Ljava/util/HashMap;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/cache/DiskLruCache;->m_TempFiles:Ljava/util/HashMap;

    .line 59
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/cache/DiskLruCache;->m_Directory:Ljava/io/File;

    .line 60
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/oneplus/cache/DiskLruCache;->m_Directory:Ljava/io/File;

    const-string v2, "__snapshot"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/cache/DiskLruCache;->m_SnapshotFile:Ljava/io/File;

    .line 65
    invoke-virtual {p0}, Lcom/oneplus/cache/DiskLruCache;->getWorkerThreadHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 66
    return-void
.end method

.method private buildCacheFromSnapshot()V
    .locals 23

    .prologue
    .line 98
    .local p0, "this":Lcom/oneplus/cache/DiskLruCache;, "Lcom/oneplus/cache/DiskLruCache<TTKey;TTValue;>;"
    invoke-super/range {p0 .. p0}, Lcom/oneplus/cache/AsyncLruCache;->clear()V

    .line 103
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/cache/DiskLruCache;->m_Directory:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/cache/DiskLruCache;->m_Directory:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->mkdirs()Z

    move-result v17

    if-nez v17, :cond_1

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/cache/DiskLruCache;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "buildCacheFromSnapshot() - Fail to create "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/cache/DiskLruCache;->m_Directory:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v5

    .line 111
    .local v5, "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/cache/DiskLruCache;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "buildCacheFromSnapshot() - Fail to create "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/cache/DiskLruCache;->m_Directory:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 116
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_1
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 119
    .local v4, "allFileNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/cache/DiskLruCache;->m_Directory:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v9

    .line 120
    .local v9, "filePaths":[Ljava/lang/String;
    array-length v0, v9

    move/from16 v17, v0

    add-int/lit8 v11, v17, -0x1

    .local v11, "i":I
    :goto_1
    if-ltz v11, :cond_3

    .line 122
    aget-object v8, v9, v11

    .line 123
    .local v8, "filePath":Ljava/lang/String;
    invoke-static {v8}, Lcom/oneplus/io/Path;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 124
    .local v14, "name":Ljava/lang/String;
    const-string v17, "__snapshot"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 125
    invoke-virtual {v4, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 120
    :cond_2
    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    .line 128
    .end local v8    # "filePath":Ljava/lang/String;
    .end local v9    # "filePaths":[Ljava/lang/String;
    .end local v11    # "i":I
    .end local v14    # "name":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 130
    .restart local v5    # "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/cache/DiskLruCache;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "buildCacheFromSnapshot() - Fail to list all files"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/cache/DiskLruCache;->m_SnapshotFile:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 140
    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/cache/DiskLruCache;->m_SnapshotFile:Ljava/io/File;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5

    .local v10, "fileStream":Ljava/io/FileInputStream;
    const/16 v19, 0x0

    :try_start_3
    new-instance v15, Ljava/io/ObjectInputStream;

    invoke-direct {v15, v10}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .local v15, "stream":Ljava/io/ObjectInputStream;
    const/16 v18, 0x0

    .line 142
    :try_start_4
    invoke-virtual {v15}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v11

    .restart local v11    # "i":I
    :goto_2
    if-lez v11, :cond_5

    .line 144
    invoke-virtual {v15}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/io/Serializable;

    .line 145
    .local v13, "key":Ljava/io/Serializable;, "TTKey;"
    invoke-virtual {v15}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 146
    .local v7, "fileName":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 148
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/cache/DiskLruCache;->m_Directory:Ljava/io/File;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 149
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/cache/DiskLruCache;->m_CacheFiles:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v13, v13, v1, v2}, Lcom/oneplus/cache/DiskLruCache;->addEntryDirectly(Ljava/lang/Object;Ljava/lang/Object;J)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 142
    .end local v6    # "file":Ljava/io/File;
    :cond_4
    add-int/lit8 v11, v11, -0x1

    goto :goto_2

    .line 156
    .end local v7    # "fileName":Ljava/lang/String;
    .end local v13    # "key":Ljava/io/Serializable;, "TTKey;"
    :cond_5
    if-eqz v15, :cond_6

    if-eqz v18, :cond_9

    :try_start_5
    invoke-virtual {v15}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_6
    :goto_3
    if-eqz v10, :cond_7

    if-eqz v19, :cond_c

    :try_start_6
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_8

    .line 167
    .end local v10    # "fileStream":Ljava/io/FileInputStream;
    .end local v11    # "i":I
    .end local v15    # "stream":Ljava/io/ObjectInputStream;
    :cond_7
    :goto_4
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_0

    .line 171
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 175
    .restart local v14    # "name":Ljava/lang/String;
    :try_start_7
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/cache/DiskLruCache;->m_Directory:Ljava/io/File;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_5

    .line 177
    :catch_2
    move-exception v17

    goto :goto_5

    .line 156
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v14    # "name":Ljava/lang/String;
    .restart local v10    # "fileStream":Ljava/io/FileInputStream;
    .restart local v11    # "i":I
    .restart local v15    # "stream":Ljava/io/ObjectInputStream;
    :catch_3
    move-exception v16

    .local v16, "x2":Ljava/lang/Throwable;
    :try_start_8
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_3

    .line 140
    .end local v11    # "i":I
    .end local v15    # "stream":Ljava/io/ObjectInputStream;
    .end local v16    # "x2":Ljava/lang/Throwable;
    :catch_4
    move-exception v17

    :try_start_9
    throw v17
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 156
    :catchall_0
    move-exception v18

    move-object/from16 v22, v18

    move-object/from16 v18, v17

    move-object/from16 v17, v22

    :goto_6
    if-eqz v10, :cond_8

    if-eqz v18, :cond_d

    :try_start_a
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_9

    :cond_8
    :goto_7
    :try_start_b
    throw v17
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_5

    .line 159
    .end local v10    # "fileStream":Ljava/io/FileInputStream;
    :catch_5
    move-exception v5

    .line 161
    .restart local v5    # "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/cache/DiskLruCache;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "buildCacheFromSnapshot() - Fail to read snapshot file "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/cache/DiskLruCache;->m_SnapshotFile:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 156
    .end local v5    # "ex":Ljava/lang/Throwable;
    .restart local v10    # "fileStream":Ljava/io/FileInputStream;
    .restart local v11    # "i":I
    .restart local v15    # "stream":Ljava/io/ObjectInputStream;
    :cond_9
    :try_start_c
    invoke-virtual {v15}, Ljava/io/ObjectInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_3

    .end local v11    # "i":I
    .end local v15    # "stream":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v17

    move-object/from16 v18, v19

    goto :goto_6

    .line 140
    .restart local v15    # "stream":Ljava/io/ObjectInputStream;
    :catch_6
    move-exception v17

    :try_start_d
    throw v17
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 156
    :catchall_2
    move-exception v18

    move-object/from16 v22, v18

    move-object/from16 v18, v17

    move-object/from16 v17, v22

    :goto_8
    if-eqz v15, :cond_a

    if-eqz v18, :cond_b

    :try_start_e
    invoke-virtual {v15}, Ljava/io/ObjectInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :cond_a
    :goto_9
    :try_start_f
    throw v17

    :catch_7
    move-exception v16

    .restart local v16    # "x2":Ljava/lang/Throwable;
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_9

    .end local v16    # "x2":Ljava/lang/Throwable;
    :cond_b
    invoke-virtual {v15}, Ljava/io/ObjectInputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_9

    .restart local v11    # "i":I
    :catch_8
    move-exception v16

    .restart local v16    # "x2":Ljava/lang/Throwable;
    :try_start_10
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .end local v16    # "x2":Ljava/lang/Throwable;
    :cond_c
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_4

    .end local v11    # "i":I
    .end local v15    # "stream":Ljava/io/ObjectInputStream;
    :catch_9
    move-exception v16

    .restart local v16    # "x2":Ljava/lang/Throwable;
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    .end local v16    # "x2":Ljava/lang/Throwable;
    :cond_d
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_5

    goto :goto_7

    .restart local v15    # "stream":Ljava/io/ObjectInputStream;
    :catchall_3
    move-exception v17

    goto :goto_8
.end method

.method private clearTempFiles()V
    .locals 6

    .prologue
    .line 196
    .local p0, "this":Lcom/oneplus/cache/DiskLruCache;, "Lcom/oneplus/cache/DiskLruCache<TTKey;TTValue;>;"
    iget-object v3, p0, Lcom/oneplus/cache/DiskLruCache;->m_TempFiles:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 200
    .local v1, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 204
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/cache/DiskLruCache;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearTempFiles() - Fail to delete file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 207
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    iget-object v3, p0, Lcom/oneplus/cache/DiskLruCache;->m_TempFiles:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 208
    return-void
.end method

.method private createSnapshot()V
    .locals 14

    .prologue
    .local p0, "this":Lcom/oneplus/cache/DiskLruCache;, "Lcom/oneplus/cache/DiskLruCache<TTKey;TTValue;>;"
    const/4 v11, 0x0

    .line 224
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v6, "keys":Ljava/util/List;, "Ljava/util/List<TTKey;>;"
    iget-object v10, p0, Lcom/oneplus/cache/DiskLruCache;->syncLock:Ljava/lang/Object;

    monitor-enter v10

    .line 227
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/cache/DiskLruCache;->listKeys()Ljava/util/Iterator;

    move-result-object v4

    .line 228
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TTKey;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 229
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 230
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TTKey;>;"
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .restart local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TTKey;>;"
    :cond_0
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    iget-object v9, p0, Lcom/oneplus/cache/DiskLruCache;->m_SnapshotFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/oneplus/cache/DiskLruCache;->m_SnapshotFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v9

    if-nez v9, :cond_2

    .line 235
    iget-object v9, p0, Lcom/oneplus/cache/DiskLruCache;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createSnapshot() - Fail to delete snapshot file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/oneplus/cache/DiskLruCache;->m_SnapshotFile:Ljava/io/File;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_1
    :goto_1
    return-void

    .line 240
    :cond_2
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v9, p0, Lcom/oneplus/cache/DiskLruCache;->m_SnapshotFile:Ljava/io/File;

    invoke-direct {v2, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .local v2, "fileStream":Ljava/io/FileOutputStream;
    const/4 v9, 0x0

    :try_start_3
    new-instance v7, Ljava/io/ObjectOutputStream;

    invoke-direct {v7, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .local v7, "objectStream":Ljava/io/ObjectOutputStream;
    const/4 v10, 0x0

    .line 242
    :try_start_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v7, v12}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 243
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v3, v12, -0x1

    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_6

    .line 245
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/Serializable;

    .line 246
    .local v5, "key":Ljava/io/Serializable;, "TTKey;"
    iget-object v12, p0, Lcom/oneplus/cache/DiskLruCache;->m_CacheFiles:Ljava/util/HashMap;

    invoke-virtual {v12, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 247
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v7, v5}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 248
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 249
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/oneplus/io/Path;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 243
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 251
    :cond_3
    const-string v12, "_"

    invoke-virtual {v7, v12}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_3

    .line 240
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "i":I
    .end local v5    # "key":Ljava/io/Serializable;, "TTKey;"
    :catch_0
    move-exception v9

    :try_start_5
    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 253
    :catchall_1
    move-exception v10

    move-object v13, v10

    move-object v10, v9

    move-object v9, v13

    :goto_4
    if-eqz v7, :cond_4

    if-eqz v10, :cond_9

    :try_start_6
    invoke-virtual {v7}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_4
    :goto_5
    :try_start_7
    throw v9
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 240
    .end local v7    # "objectStream":Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v9

    :try_start_8
    throw v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 253
    :catchall_2
    move-exception v10

    move-object v11, v9

    move-object v9, v10

    :goto_6
    if-eqz v2, :cond_5

    if-eqz v11, :cond_b

    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6

    :cond_5
    :goto_7
    :try_start_a
    throw v9
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2

    .line 254
    .end local v2    # "fileStream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    .line 256
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v9, p0, Lcom/oneplus/cache/DiskLruCache;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createSnapshot() - Fail to create snapshot file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/oneplus/cache/DiskLruCache;->m_SnapshotFile:Ljava/io/File;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 253
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v3    # "i":I
    .restart local v7    # "objectStream":Ljava/io/ObjectOutputStream;
    :cond_6
    if-eqz v7, :cond_7

    if-eqz v11, :cond_8

    :try_start_b
    invoke-virtual {v7}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :cond_7
    :goto_8
    if-eqz v2, :cond_1

    if-eqz v11, :cond_a

    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v8

    .local v8, "x2":Ljava/lang/Throwable;
    :try_start_d
    invoke-virtual {v9, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_2

    goto/16 :goto_1

    .end local v8    # "x2":Ljava/lang/Throwable;
    :catch_4
    move-exception v8

    .restart local v8    # "x2":Ljava/lang/Throwable;
    :try_start_e
    invoke-virtual {v10, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    .end local v3    # "i":I
    .end local v7    # "objectStream":Ljava/io/ObjectOutputStream;
    .end local v8    # "x2":Ljava/lang/Throwable;
    :catchall_3
    move-exception v9

    goto :goto_6

    .restart local v3    # "i":I
    .restart local v7    # "objectStream":Ljava/io/ObjectOutputStream;
    :cond_8
    invoke-virtual {v7}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_8

    .end local v3    # "i":I
    :catch_5
    move-exception v8

    .restart local v8    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v10, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    .end local v8    # "x2":Ljava/lang/Throwable;
    :cond_9
    invoke-virtual {v7}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto :goto_5

    .restart local v3    # "i":I
    :cond_a
    :try_start_f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_1

    .end local v3    # "i":I
    .end local v7    # "objectStream":Ljava/io/ObjectOutputStream;
    :catch_6
    move-exception v8

    .restart local v8    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v11, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    .end local v8    # "x2":Ljava/lang/Throwable;
    :cond_b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_2

    goto :goto_7

    .restart local v7    # "objectStream":Ljava/io/ObjectOutputStream;
    :catchall_4
    move-exception v9

    move-object v10, v11

    goto :goto_4
.end method

.method private generateFile()Ljava/io/File;
    .locals 8

    .prologue
    .line 266
    .local p0, "this":Lcom/oneplus/cache/DiskLruCache;, "Lcom/oneplus/cache/DiskLruCache<TTKey;TTValue;>;"
    const/16 v4, 0x10

    new-array v1, v4, [C

    .line 270
    .local v1, "fileName":[C
    :cond_0
    array-length v4, v1

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 272
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4042000000000000L    # 36.0

    mul-double/2addr v4, v6

    double-to-int v3, v4

    .line 273
    .local v3, "n":I
    const/16 v4, 0xa

    if-ge v3, v4, :cond_1

    .line 274
    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    aput-char v4, v1, v2

    .line 270
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 276
    :cond_1
    add-int/lit8 v4, v3, -0xa

    add-int/lit8 v4, v4, 0x61

    int-to-char v4, v4

    aput-char v4, v1, v2

    goto :goto_1

    .line 278
    .end local v3    # "n":I
    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/oneplus/cache/DiskLruCache;->m_Directory:Ljava/io/File;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 279
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 280
    return-object v0
.end method

.method private increateNewOperationCount()V
    .locals 3

    .prologue
    .line 389
    .local p0, "this":Lcom/oneplus/cache/DiskLruCache;, "Lcom/oneplus/cache/DiskLruCache<TTKey;TTValue;>;"
    iget-object v1, p0, Lcom/oneplus/cache/DiskLruCache;->syncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 391
    :try_start_0
    iget v0, p0, Lcom/oneplus/cache/DiskLruCache;->m_NewOperationCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/cache/DiskLruCache;->m_NewOperationCount:I

    .line 392
    iget v0, p0, Lcom/oneplus/cache/DiskLruCache;->m_NewOperationCount:I

    const/16 v2, 0x40

    if-lt v0, v2, :cond_0

    .line 394
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/cache/DiskLruCache;->m_NewOperationCount:I

    .line 395
    invoke-virtual {p0}, Lcom/oneplus/cache/DiskLruCache;->getWorkerThreadHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x2711

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 397
    :cond_0
    monitor-exit v1

    .line 398
    return-void

    .line 397
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
    .line 73
    .local p0, "this":Lcom/oneplus/cache/DiskLruCache;, "Lcom/oneplus/cache/DiskLruCache<TTKey;TTValue;>;"
    .local p1, "key":Ljava/io/Serializable;, "TTKey;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    invoke-super {p0, p1, p2}, Lcom/oneplus/cache/AsyncLruCache;->add(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/oneplus/cache/DiskLruCache;->increateNewOperationCount()V

    .line 76
    const/4 v0, 0x1

    .line 78
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic add(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 27
    .local p0, "this":Lcom/oneplus/cache/DiskLruCache;, "Lcom/oneplus/cache/DiskLruCache<TTKey;TTValue;>;"
    check-cast p1, Ljava/io/Serializable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/cache/DiskLruCache;->add(Ljava/io/Serializable;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected addEntry(Ljava/io/Serializable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;TTValue;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lcom/oneplus/cache/DiskLruCache;, "Lcom/oneplus/cache/DiskLruCache<TTKey;TTValue;>;"
    .local p1, "key":Ljava/io/Serializable;, "TTKey;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    iget-object v1, p0, Lcom/oneplus/cache/DiskLruCache;->m_TempFiles:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 87
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 88
    iget-object v1, p0, Lcom/oneplus/cache/DiskLruCache;->m_CacheFiles:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_0
    return-object p1
.end method

.method protected bridge synthetic addEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 27
    .local p0, "this":Lcom/oneplus/cache/DiskLruCache;, "Lcom/oneplus/cache/DiskLruCache<TTKey;TTValue;>;"
    check-cast p1, Ljava/io/Serializable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/cache/DiskLruCache;->addEntry(Ljava/io/Serializable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 188
    .local p0, "this":Lcom/oneplus/cache/DiskLruCache;, "Lcom/oneplus/cache/DiskLruCache<TTKey;TTValue;>;"
    invoke-super {p0}, Lcom/oneplus/cache/AsyncLruCache;->clear()V

    .line 189
    invoke-direct {p0}, Lcom/oneplus/cache/DiskLruCache;->increateNewOperationCount()V

    .line 190
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 215
    .local p0, "this":Lcom/oneplus/cache/DiskLruCache;, "Lcom/oneplus/cache/DiskLruCache<TTKey;TTValue;>;"
    invoke-virtual {p0}, Lcom/oneplus/cache/DiskLruCache;->getWorkerThreadHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 216
    invoke-super {p0}, Lcom/oneplus/cache/AsyncLruCache;->close()V

    .line 217
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
    .line 289
    .local p0, "this":Lcom/oneplus/cache/DiskLruCache;, "Lcom/oneplus/cache/DiskLruCache<TTKey;TTValue;>;"
    .local p1, "key":Ljava/io/Serializable;, "TTKey;"
    .local p3, "defaultValue":Ljava/lang/Object;, "TTValue;"
    iget-object v2, p0, Lcom/oneplus/cache/DiskLruCache;->m_CacheFiles:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 290
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 294
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 295
    invoke-virtual {p0, p1, v1, p3}, Lcom/oneplus/cache/DiskLruCache;->readFromFile(Ljava/io/Serializable;Ljava/io/File;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p3

    .line 305
    .end local p3    # "defaultValue":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0}, Lcom/oneplus/cache/DiskLruCache;->increateNewOperationCount()V

    .line 308
    :cond_0
    :goto_0
    return-object p3

    .line 296
    .restart local p3    # "defaultValue":Ljava/lang/Object;, "TTValue;"
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/oneplus/cache/DiskLruCache;->m_CacheFiles:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 305
    invoke-direct {p0}, Lcom/oneplus/cache/DiskLruCache;->increateNewOperationCount()V

    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    .line 301
    .local v0, "ex":Ljava/lang/Throwable;
    :try_start_2
    iget-object v2, p0, Lcom/oneplus/cache/DiskLruCache;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get() - Fail to read "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

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
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 305
    invoke-direct {p0}, Lcom/oneplus/cache/DiskLruCache;->increateNewOperationCount()V

    goto :goto_0

    .end local v0    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    invoke-direct {p0}, Lcom/oneplus/cache/DiskLruCache;->increateNewOperationCount()V

    throw v2
.end method

.method protected bridge synthetic get(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 6
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # J

    .prologue
    .line 27
    .local p0, "this":Lcom/oneplus/cache/DiskLruCache;, "Lcom/oneplus/cache/DiskLruCache<TTKey;TTValue;>;"
    move-object v1, p1

    check-cast v1, Ljava/io/Serializable;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/cache/DiskLruCache;->get(Ljava/io/Serializable;Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getSizeInBytes(Ljava/io/Serializable;Ljava/lang/Object;)J
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;TTValue;)J"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/oneplus/cache/DiskLruCache;, "Lcom/oneplus/cache/DiskLruCache<TTKey;TTValue;>;"
    .local p1, "key":Ljava/io/Serializable;, "TTKey;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    const/16 v10, 0x271a

    const-wide/16 v4, -0x1

    .line 317
    invoke-direct {p0}, Lcom/oneplus/cache/DiskLruCache;->generateFile()Ljava/io/File;

    move-result-object v1

    .line 322
    .local v1, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/oneplus/cache/DiskLruCache;->writeToFile(Ljava/io/Serializable;Ljava/lang/Object;Ljava/io/File;)V

    .line 323
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-nez v3, :cond_1

    .line 325
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 326
    iget-object v3, p0, Lcom/oneplus/cache/DiskLruCache;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSizeInBytes() - No content in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :goto_0
    return-wide v4

    .line 330
    :catch_0
    move-exception v0

    .line 332
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/cache/DiskLruCache;->TAG:Ljava/lang/String;

    const-string v6, "getSizeInBytes() - Fail to write value to file"

    invoke-static {v3, v6, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 335
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 338
    :catch_1
    move-exception v3

    .line 341
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/cache/DiskLruCache;->getWorkerThreadHandler()Landroid/os/Handler;

    move-result-object v2

    .line 342
    .local v2, "handler":Landroid/os/Handler;
    iget-object v3, p0, Lcom/oneplus/cache/DiskLruCache;->m_TempFiles:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    invoke-virtual {v2, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 344
    const-wide/16 v6, 0xbb8

    invoke-virtual {v2, v10, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 349
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->length()J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v4

    goto :goto_0

    .line 351
    :catch_2
    move-exception v0

    .line 353
    .restart local v0    # "ex":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/cache/DiskLruCache;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSizeInBytes() - Fail to get file size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 354
    iget-object v3, p0, Lcom/oneplus/cache/DiskLruCache;->m_TempFiles:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method protected bridge synthetic getSizeInBytes(Ljava/lang/Object;Ljava/lang/Object;)J
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 27
    .local p0, "this":Lcom/oneplus/cache/DiskLruCache;, "Lcom/oneplus/cache/DiskLruCache<TTKey;TTValue;>;"
    check-cast p1, Ljava/io/Serializable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/cache/DiskLruCache;->getSizeInBytes(Ljava/io/Serializable;Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected handleWorkerThreadMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 365
    .local p0, "this":Lcom/oneplus/cache/DiskLruCache;, "Lcom/oneplus/cache/DiskLruCache<TTKey;TTValue;>;"
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 380
    invoke-super {p0, p1}, Lcom/oneplus/cache/AsyncLruCache;->handleWorkerThreadMessage(Landroid/os/Message;)V

    .line 383
    :goto_0
    return-void

    .line 368
    :sswitch_0
    invoke-direct {p0}, Lcom/oneplus/cache/DiskLruCache;->buildCacheFromSnapshot()V

    goto :goto_0

    .line 372
    :sswitch_1
    invoke-direct {p0}, Lcom/oneplus/cache/DiskLruCache;->clearTempFiles()V

    goto :goto_0

    .line 376
    :sswitch_2
    invoke-direct {p0}, Lcom/oneplus/cache/DiskLruCache;->createSnapshot()V

    goto :goto_0

    .line 365
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
    .line 415
    .local p0, "this":Lcom/oneplus/cache/DiskLruCache;, "Lcom/oneplus/cache/DiskLruCache<TTKey;TTValue;>;"
    .local p1, "key":Ljava/io/Serializable;, "TTKey;"
    invoke-super {p0, p1}, Lcom/oneplus/cache/AsyncLruCache;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    invoke-direct {p0}, Lcom/oneplus/cache/DiskLruCache;->increateNewOperationCount()V

    .line 418
    const/4 v0, 0x1

    .line 420
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 27
    .local p0, "this":Lcom/oneplus/cache/DiskLruCache;, "Lcom/oneplus/cache/DiskLruCache<TTKey;TTValue;>;"
    check-cast p1, Ljava/io/Serializable;

    .end local p1    # "x0":Ljava/lang/Object;
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
    .line 428
    .local p0, "this":Lcom/oneplus/cache/DiskLruCache;, "Lcom/oneplus/cache/DiskLruCache<TTKey;TTValue;>;"
    .local p1, "key":Ljava/io/Serializable;, "TTKey;"
    iget-object v2, p0, Lcom/oneplus/cache/DiskLruCache;->m_CacheFiles:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 431
    .local v1, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 435
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 436
    iget-object v2, p0, Lcom/oneplus/cache/DiskLruCache;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeEntry() - Fail to delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 439
    :catch_0
    move-exception v0

    .line 441
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/oneplus/cache/DiskLruCache;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeEntry() - Fail to delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected bridge synthetic removeEntry(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 27
    .local p0, "this":Lcom/oneplus/cache/DiskLruCache;, "Lcom/oneplus/cache/DiskLruCache<TTKey;TTValue;>;"
    check-cast p1, Ljava/io/Serializable;

    .end local p1    # "x0":Ljava/lang/Object;
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
