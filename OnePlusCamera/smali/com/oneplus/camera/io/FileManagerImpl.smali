.class final Lcom/oneplus/camera/io/FileManagerImpl;
.super Lcom/oneplus/camera/CameraThreadComponent;
.source "FileManagerImpl.java"

# interfaces
.implements Lcom/oneplus/camera/io/FileManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/io/FileManagerImpl$BitmapArgs;,
        Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;,
        Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;
    }
.end annotation


# static fields
.field private static final DB_INSERT_QUEUE_THRESHOLD:I = 0x8

.field private static final DECODE_FACTOR:I = 0x2

.field private static final KEEP_ALIVE_TIME:I = 0x1

.field private static final KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

.field private static final MEDIA_SAVING_QUEUE_CAPACITY:J = 0xc000000L

.field private static final MESSAGE_ADD_BITMAP:I = 0x3ed

.field private static final MESSAGE_DELETE_MEDIA:I = 0x3ea

.field private static final MESSAGE_GET_BITMAP:I = 0x3ec

.field private static final MESSAGE_INSERT_MEDIA:I = 0x3e9

.field private static final MESSAGE_LOAD_IMAGES:I = 0x3eb

.field private static final MESSAGE_SAVE_MEDIA:I = 0x3e8

.field private static final MSG_UPDATE_MEDIA_SAVING_QUEUE_SIZE:I = 0x271a

.field private static NUMBER_OF_CORES:I


# instance fields
.field private insertToggle:Z

.field private m_DecodeBitmapHandler:Landroid/os/Handler;

.field private m_DecodeBitmapThread:Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;

.field private m_DecodeQueue:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<",
            "Lcom/oneplus/camera/io/FileManagerImpl$BitmapArgs;",
            ">;"
        }
    .end annotation
.end field

.field private m_DecodeThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

.field private m_DecodeWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final m_DefaultFolder:Ljava/io/File;

.field private m_FileHandler:Landroid/os/Handler;

.field private final m_FileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private m_FileThread:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

.field private m_FileUris:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private m_InsertQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/oneplus/camera/io/MediaSaveTask;",
            ">;"
        }
    .end annotation
.end field

.field private m_MediaSavingQueueSize:J

.field private m_SaveQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/oneplus/camera/io/MediaSaveTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/oneplus/camera/io/FileManagerImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->insertToggle:Z

    return v0
.end method

.method static synthetic -get1(Lcom/oneplus/camera/io/FileManagerImpl;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_DecodeBitmapHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/concurrent/LinkedBlockingDeque;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_DecodeQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    return-object v0
.end method

.method static synthetic -get3(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_DefaultFolder:Ljava/io/File;

    return-object v0
.end method

.method static synthetic -get4(Lcom/oneplus/camera/io/FileManagerImpl;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_FileHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_FileList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get6(Lcom/oneplus/camera/io/FileManagerImpl;)Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_FileThread:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    return-object v0
.end method

.method static synthetic -get7(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_FileUris:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic -get8(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_InsertQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic -get9(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_SaveQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/io/FileManagerImpl;Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/io/FileManagerImpl;->isImage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/io/FileManagerImpl;Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/io/FileManagerImpl;->isVideo(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/io/FileManagerImpl;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)Z
    .locals 1
    .param p1, "event"    # Lcom/oneplus/base/EventKey;
    .param p2, "args"    # Lcom/oneplus/base/EventArgs;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/io/FileManagerImpl;->notifyCameraThread(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/io/FileManagerImpl;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/io/MediaSaveTask;Z)Z
    .locals 1
    .param p1, "event"    # Lcom/oneplus/base/EventKey;
    .param p2, "task"    # Lcom/oneplus/camera/io/MediaSaveTask;
    .param p3, "getThumbnail"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/io/FileManagerImpl;->notifyCameraThread(Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/io/MediaSaveTask;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/oneplus/camera/io/FileManagerImpl;Lcom/oneplus/base/EventKey;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Lcom/oneplus/base/EventKey;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/io/FileManagerImpl;->notifyCameraThread(Lcom/oneplus/base/EventKey;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/camera/io/FileManagerImpl;->getFiles()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(Lcom/oneplus/camera/io/FileManagerImpl;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p1, "key"    # Lcom/oneplus/base/EventKey;
    .param p2, "e"    # Lcom/oneplus/base/EventArgs;

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/io/FileManagerImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/oneplus/camera/io/FileManagerImpl;J)V
    .locals 1
    .param p1, "sizeDiff"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/io/FileManagerImpl;->updateMediaSavingQueueSize(J)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/oneplus/camera/io/FileManagerImpl;->NUMBER_OF_CORES:I

    .line 70
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/oneplus/camera/io/FileManagerImpl;->KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

    .line 45
    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraThread;)V
    .locals 3
    .param p1, "cameraThread"    # Lcom/oneplus/camera/CameraThread;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 84
    const-string/jumbo v0, "File manager"

    invoke-direct {p0, v0, p1, v2}, Lcom/oneplus/camera/CameraThreadComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraThread;Z)V

    .line 49
    iput-object v1, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_FileThread:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    .line 50
    iput-object v1, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_DecodeBitmapThread:Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_FileList:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_FileUris:Ljava/util/concurrent/ConcurrentMap;

    .line 74
    iput-object v1, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_DefaultFolder:Ljava/io/File;

    .line 78
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_SaveQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 79
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_InsertQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 80
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_DecodeQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 81
    iput-boolean v2, p0, Lcom/oneplus/camera/io/FileManagerImpl;->insertToggle:Z

    .line 86
    sget-object v0, Lcom/oneplus/camera/io/FileManagerImpl;->EVENT_MEDIA_FILES_RESET:Lcom/oneplus/base/EventKey;

    const/16 v1, 0x100

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/io/FileManagerImpl;->enableEventLogs(Lcom/oneplus/base/EventKey;I)V

    .line 83
    return-void
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 6
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 377
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 378
    .local v2, "height":I
    iget v4, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 379
    .local v4, "width":I
    const/4 v3, 0x1

    .line 380
    .local v3, "inSampleSize":I
    if-gt v2, p2, :cond_0

    if-le v4, p1, :cond_2

    .line 382
    :cond_0
    div-int/lit8 v0, v2, 0x2

    .line 383
    .local v0, "halfHeight":I
    div-int/lit8 v1, v4, 0x2

    .line 386
    .local v1, "halfWidth":I
    :goto_0
    div-int v5, v0, v3

    if-gt v5, p2, :cond_1

    div-int v5, v1, v3

    if-le v5, p1, :cond_2

    .line 387
    :cond_1
    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 391
    .end local v0    # "halfHeight":I
    .end local v1    # "halfWidth":I
    :cond_2
    return v3
.end method

.method private getFiles()Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v19, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 244
    .local v3, "imageUri":Landroid/net/Uri;
    sget-object v8, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 245
    .local v8, "videoUri":Landroid/net/Uri;
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    const/4 v7, 0x0

    aput-object v2, v4, v7

    const-string/jumbo v2, "_data"

    const/4 v7, 0x1

    aput-object v2, v4, v7

    .line 246
    .local v4, "projection":[Ljava/lang/String;
    const-string/jumbo v5, "_data LIKE ?"

    .line 247
    .local v5, "selectionClause":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "%"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/camera/io/FileManagerImpl;->m_DefaultFolder:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, "%"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    aput-object v2, v6, v7

    .line 249
    .local v6, "selectionArgs":[Ljava/lang/String;
    const/4 v15, 0x0

    .line 251
    .local v15, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/io/FileManagerImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 252
    .local v15, "cursor":Landroid/database/Cursor;
    const-string/jumbo v2, "_data"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 253
    .local v14, "columnPath":I
    const-string/jumbo v2, "_id"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 254
    .local v13, "columnID":I
    const/16 v18, 0x0

    .line 255
    .local v18, "path":Ljava/lang/String;
    if-eqz v15, :cond_4

    .line 256
    .end local v18    # "path":Ljava/lang/String;
    :goto_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 257
    invoke-interface {v15, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 258
    .local v18, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/io/FileManagerImpl;->m_FileUris:Ljava/util/concurrent/ConcurrentMap;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v15, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-interface {v2, v0, v7}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    new-instance v17, Ljava/io/File;

    invoke-direct/range {v17 .. v18}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 260
    .local v17, "fileHandle":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v20, 0x0

    cmp-long v2, v10, v20

    if-eqz v2, :cond_2

    .line 261
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 267
    .end local v13    # "columnID":I
    .end local v14    # "columnPath":I
    .end local v15    # "cursor":Landroid/database/Cursor;
    .end local v17    # "fileHandle":Ljava/io/File;
    .end local v18    # "path":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 268
    .local v16, "e":Ljava/lang/Exception;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/io/FileManagerImpl;->TAG:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    if-eqz v15, :cond_0

    .line 271
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 276
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/io/FileManagerImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v12, 0x0

    move-object v9, v4

    move-object v10, v5

    move-object v11, v6

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 277
    .restart local v15    # "cursor":Landroid/database/Cursor;
    const-string/jumbo v2, "_data"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 278
    .restart local v14    # "columnPath":I
    const-string/jumbo v2, "_id"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 279
    .restart local v13    # "columnID":I
    if-eqz v15, :cond_7

    .line 280
    const/16 v18, 0x0

    .line 281
    :goto_2
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 282
    invoke-interface {v15, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 283
    .restart local v18    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/io/FileManagerImpl;->m_FileUris:Ljava/util/concurrent/ConcurrentMap;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v15, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-interface {v2, v0, v7}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    new-instance v17, Ljava/io/File;

    invoke-direct/range {v17 .. v18}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 285
    .restart local v17    # "fileHandle":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v20, 0x0

    cmp-long v2, v10, v20

    if-eqz v2, :cond_5

    .line 286
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 292
    .end local v13    # "columnID":I
    .end local v14    # "columnPath":I
    .end local v15    # "cursor":Landroid/database/Cursor;
    .end local v17    # "fileHandle":Ljava/io/File;
    .end local v18    # "path":Ljava/lang/String;
    :catch_1
    move-exception v16

    .line 293
    .restart local v16    # "e":Ljava/lang/Exception;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/io/FileManagerImpl;->TAG:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 295
    if-eqz v15, :cond_1

    .line 296
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 300
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_3
    new-instance v2, Lcom/oneplus/camera/io/FileManagerImpl$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/oneplus/camera/io/FileManagerImpl$1;-><init>(Lcom/oneplus/camera/io/FileManagerImpl;)V

    move-object/from16 v0, v19

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/io/FileManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "getFiles() - Size: "

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v2, v7, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 318
    return-object v19

    .line 263
    .restart local v13    # "columnID":I
    .restart local v14    # "columnPath":I
    .restart local v15    # "cursor":Landroid/database/Cursor;
    .restart local v17    # "fileHandle":Ljava/io/File;
    .restart local v18    # "path":Ljava/lang/String;
    :cond_2
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/io/FileManagerImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "imageUri file delete "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 269
    .end local v13    # "columnID":I
    .end local v14    # "columnPath":I
    .end local v15    # "cursor":Landroid/database/Cursor;
    .end local v17    # "fileHandle":Ljava/io/File;
    .end local v18    # "path":Ljava/lang/String;
    :catchall_0
    move-exception v2

    .line 270
    if-eqz v15, :cond_3

    .line 271
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 269
    :cond_3
    throw v2

    .line 270
    .restart local v13    # "columnID":I
    .restart local v14    # "columnPath":I
    .restart local v15    # "cursor":Landroid/database/Cursor;
    :cond_4
    if-eqz v15, :cond_0

    .line 271
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 288
    .restart local v17    # "fileHandle":Ljava/io/File;
    .restart local v18    # "path":Ljava/lang/String;
    :cond_5
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/io/FileManagerImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " videoUri file delete "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_2

    .line 294
    .end local v13    # "columnID":I
    .end local v14    # "columnPath":I
    .end local v15    # "cursor":Landroid/database/Cursor;
    .end local v17    # "fileHandle":Ljava/io/File;
    .end local v18    # "path":Ljava/lang/String;
    :catchall_1
    move-exception v2

    .line 295
    if-eqz v15, :cond_6

    .line 296
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 294
    :cond_6
    throw v2

    .line 295
    .restart local v13    # "columnID":I
    .restart local v14    # "columnPath":I
    .restart local v15    # "cursor":Landroid/database/Cursor;
    :cond_7
    if-eqz v15, :cond_1

    .line 296
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_3
.end method

.method private isImage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 234
    invoke-static {p1}, Lcom/oneplus/io/FileUtils;->isImageFilePath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isVideo(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 238
    invoke-static {p1}, Lcom/oneplus/io/FileUtils;->isVideoFilePath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private notifyCameraThread(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)Z
    .locals 1
    .param p2, "args"    # Lcom/oneplus/base/EventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/base/EventArgs;",
            ">;",
            "Lcom/oneplus/base/EventArgs;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 418
    .local p1, "event":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/base/EventArgs;>;"
    new-instance v0, Lcom/oneplus/camera/io/FileManagerImpl$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/camera/io/FileManagerImpl$4;-><init>(Lcom/oneplus/camera/io/FileManagerImpl;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method private notifyCameraThread(Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/io/MediaSaveTask;Z)Z
    .locals 2
    .param p2, "task"    # Lcom/oneplus/camera/io/MediaSaveTask;
    .param p3, "getThumbnail"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/media/MediaEventArgs;",
            ">;",
            "Lcom/oneplus/camera/io/MediaSaveTask;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .line 407
    .local p1, "event":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/camera/media/MediaEventArgs;>;"
    new-instance v0, Lcom/oneplus/camera/media/MediaEventArgs;

    invoke-direct {v0, p2, p3}, Lcom/oneplus/camera/media/MediaEventArgs;-><init>(Lcom/oneplus/camera/io/MediaSaveTask;Z)V

    .line 408
    .local v0, "args":Lcom/oneplus/camera/media/MediaEventArgs;
    new-instance v1, Lcom/oneplus/camera/io/FileManagerImpl$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/oneplus/camera/io/FileManagerImpl$3;-><init>(Lcom/oneplus/camera/io/FileManagerImpl;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/media/MediaEventArgs;)V

    invoke-static {p0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v1

    return v1
.end method

.method private notifyCameraThread(Lcom/oneplus/base/EventKey;Ljava/lang/String;)Z
    .locals 1
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/media/MediaEventArgs;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 396
    .local p1, "event":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/camera/media/MediaEventArgs;>;"
    new-instance v0, Lcom/oneplus/camera/io/FileManagerImpl$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/camera/io/FileManagerImpl$2;-><init>(Lcom/oneplus/camera/io/FileManagerImpl;Lcom/oneplus/base/EventKey;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method private notifyDecode()V
    .locals 3

    .prologue
    const/16 v2, 0x3ec

    .line 227
    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_SaveQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_InsertQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_DecodeBitmapHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_DecodeBitmapHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_DecodeBitmapHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private updateMediaSavingQueueSize(J)V
    .locals 9
    .param p1, "sizeDiff"    # J

    .prologue
    .line 705
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 706
    return-void

    .line 707
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/io/FileManagerImpl;->isDependencyThread()Z

    move-result v2

    if-nez v2, :cond_1

    .line 709
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0x271a

    invoke-static {p0, v3, v2}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;ILjava/lang/Object;)Z

    .line 710
    return-void

    .line 714
    :cond_1
    iget-wide v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_MediaSavingQueueSize:J

    .line 715
    .local v0, "oldSize":J
    iget-wide v2, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_MediaSavingQueueSize:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_MediaSavingQueueSize:J

    .line 716
    iget-object v2, p0, Lcom/oneplus/camera/io/FileManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateMediaSavingQueueSize() - "

    invoke-static {v0, v1}, Lcom/oneplus/io/FileUtils;->getFileSizeDescription(J)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, " -> "

    iget-wide v6, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_MediaSavingQueueSize:J

    invoke-static {v6, v7}, Lcom/oneplus/io/FileUtils;->getFileSizeDescription(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 717
    sget-object v2, Lcom/oneplus/camera/io/FileManagerImpl;->PROP_SAVING_QUEUE_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_MediaSavingQueueSize:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/oneplus/camera/io/FileManagerImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 718
    sget-object v3, Lcom/oneplus/camera/io/FileManagerImpl;->PROP_IS_SAVING_QUEUE_FULL:Lcom/oneplus/base/PropertyKey;

    iget-wide v4, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_MediaSavingQueueSize:J

    const-wide/32 v6, 0xc000000

    cmp-long v2, v4, v6

    if-ltz v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/oneplus/camera/io/FileManagerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 702
    return-void

    .line 718
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public decodeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v7, 0x0

    .line 358
    const/4 v0, 0x0

    .line 360
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/oneplus/camera/io/FileManagerImpl;->getScreenSize()Lcom/oneplus/base/ScreenSize;

    move-result-object v3

    .line 361
    .local v3, "screenSize":Lcom/oneplus/base/ScreenSize;
    invoke-virtual {v3}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v4

    .line 362
    .local v4, "screenWidth":I
    invoke-virtual {v3}, Lcom/oneplus/base/ScreenSize;->getHeight()I

    move-result v2

    .line 363
    .local v2, "screenHeight":I
    if-eqz v4, :cond_0

    if-nez v2, :cond_1

    .line 364
    :cond_0
    iget-object v5, p0, Lcom/oneplus/camera/io/FileManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "decodeBitmap() - BitmapFactory.decodeFile failed, screenWidth or screenHeight is 0"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    return-object v7

    .line 368
    :cond_1
    if-lt v4, v2, :cond_3

    move v1, v4

    .line 369
    .local v1, "longerSide":I
    :goto_0
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v1, v1, v5}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/lang/String;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 370
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 371
    iget-object v5, p0, Lcom/oneplus/camera/io/FileManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "decodeBitmap() - BitmapFactory.decodeFile failed"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :cond_2
    return-object v0

    .line 368
    .end local v1    # "longerSide":I
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    move v1, v2

    .restart local v1    # "longerSide":I
    goto :goto_0
.end method

.method public deleteFile(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 181
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/camera/io/FileManagerImpl;->isRunningOrInitializing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_FileHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_FileHandler:Landroid/os/Handler;

    const/16 v2, 0x3ea

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 180
    :cond_0
    return-void
.end method

.method public get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;)TTValue;"
        }
    .end annotation

    .prologue
    .line 201
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/camera/io/FileManagerImpl;->PROP_SAVING_QUEUE_SIZE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 202
    iget-wide v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_MediaSavingQueueSize:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 203
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/camera/CameraThreadComponent;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBitmap(Ljava/lang/String;IILcom/oneplus/camera/io/FileManager$PhotoCallback;I)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "callback"    # Lcom/oneplus/camera/io/FileManager$PhotoCallback;
    .param p5, "position"    # I

    .prologue
    .line 209
    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " InsertQueue size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_InsertQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const/4 v0, 0x1

    if-ne p5, v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getBitmap: clear & get"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_DecodeQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    .line 213
    iget-object v7, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_DecodeQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    new-instance v0, Lcom/oneplus/camera/io/FileManagerImpl$BitmapArgs;

    div-int/lit8 v4, p2, 0x2

    div-int/lit8 v5, p3, 0x2

    move-object v1, p0

    move v2, p5

    move-object v3, p1

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/camera/io/FileManagerImpl$BitmapArgs;-><init>(Lcom/oneplus/camera/io/FileManagerImpl;ILjava/lang/String;IILcom/oneplus/camera/io/FileManager$PhotoCallback;)V

    invoke-virtual {v7, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->addFirst(Ljava/lang/Object;)V

    .line 214
    invoke-direct {p0}, Lcom/oneplus/camera/io/FileManagerImpl;->notifyDecode()V

    .line 207
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_DecodeBitmapThread:Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;

    invoke-static {v0}, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;->-get0(Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;)I

    move-result v0

    if-eq p5, v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_InsertQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getBitmap: now"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v7, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_DecodeQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    new-instance v0, Lcom/oneplus/camera/io/FileManagerImpl$BitmapArgs;

    div-int/lit8 v4, p2, 0x2

    div-int/lit8 v5, p3, 0x2

    move-object v1, p0

    move v2, p5

    move-object v3, p1

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/camera/io/FileManagerImpl$BitmapArgs;-><init>(Lcom/oneplus/camera/io/FileManagerImpl;ILjava/lang/String;IILcom/oneplus/camera/io/FileManager$PhotoCallback;)V

    invoke-virtual {v7, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->addFirst(Ljava/lang/Object;)V

    .line 218
    invoke-direct {p0}, Lcom/oneplus/camera/io/FileManagerImpl;->notifyDecode()V

    goto :goto_0

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getBitmap: later"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v7, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_DecodeQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    new-instance v0, Lcom/oneplus/camera/io/FileManagerImpl$BitmapArgs;

    div-int/lit8 v4, p2, 0x2

    div-int/lit8 v5, p3, 0x2

    move-object v1, p0

    move v2, p5

    move-object v3, p1

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/camera/io/FileManagerImpl$BitmapArgs;-><init>(Lcom/oneplus/camera/io/FileManagerImpl;ILjava/lang/String;IILcom/oneplus/camera/io/FileManager$PhotoCallback;)V

    invoke-virtual {v7, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-direct {p0}, Lcom/oneplus/camera/io/FileManagerImpl;->notifyDecode()V

    goto :goto_0
.end method

.method public getFileUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 323
    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_FileUris:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public getMediaFiles()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_FileList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 135
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 142
    invoke-super {p0, p1}, Lcom/oneplus/camera/CameraThreadComponent;->handleMessage(Landroid/os/Message;)V

    .line 133
    :goto_0
    return-void

    .line 138
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/io/FileManagerImpl;->updateMediaSavingQueueSize(J)V

    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x271a
        :pswitch_0
    .end packed-switch
.end method

.method public isBusy()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 150
    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_FileHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 151
    return v1

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_DecodeBitmapHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 154
    return v1

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_FileHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_DecodeBitmapHandler:Landroid/os/Handler;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isFileSaving()Z
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_FileHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 162
    const/4 v0, 0x0

    return v0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_FileHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method protected onDeinitialize()V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Lcom/oneplus/camera/CameraThreadComponent;->onDeinitialize()V

    .line 119
    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_FileThread:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    invoke-virtual {v0}, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->isHandling()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_FileThread:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    invoke-virtual {v0}, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->hasMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_DecodeBitmapThread:Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;

    invoke-virtual {v0}, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;->quitSafely()Z

    .line 125
    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_FileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 126
    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_FileUris:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 127
    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_DecodeQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    .line 117
    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_InsertQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 121
    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_SaveQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 122
    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_FileThread:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    invoke-virtual {v0}, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->quitSafely()Z

    goto :goto_0
.end method

.method protected onInitialize()V
    .locals 8

    .prologue
    .line 94
    new-instance v0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    const-string/jumbo v1, "save media thread"

    invoke-direct {v0, p0, v1}, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;-><init>(Lcom/oneplus/camera/io/FileManagerImpl;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_FileThread:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    .line 95
    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_FileThread:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    invoke-virtual {v0}, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->start()V

    .line 96
    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_FileThread:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    invoke-virtual {v0}, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_FileHandler:Landroid/os/Handler;

    .line 98
    new-instance v0, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;

    const-string/jumbo v1, "decode bitmap thread"

    invoke-direct {v0, p0, v1}, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;-><init>(Lcom/oneplus/camera/io/FileManagerImpl;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_DecodeBitmapThread:Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;

    .line 99
    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_DecodeBitmapThread:Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;

    invoke-virtual {v0}, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;->start()V

    .line 100
    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_DecodeBitmapThread:Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;

    invoke-virtual {v0}, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_DecodeBitmapHandler:Landroid/os/Handler;

    .line 102
    invoke-virtual {p0}, Lcom/oneplus/camera/io/FileManagerImpl;->scanFiles()V

    .line 109
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_DecodeWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 110
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/oneplus/camera/io/FileManagerImpl;->NUMBER_OF_CORES:I

    sget v3, Lcom/oneplus/camera/io/FileManagerImpl;->NUMBER_OF_CORES:I

    const-wide/16 v4, 0x1

    sget-object v6, Lcom/oneplus/camera/io/FileManagerImpl;->KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

    .line 111
    iget-object v7, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_DecodeWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 110
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_DecodeThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 92
    return-void
.end method

.method public pauseInsert()V
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->insertToggle:Z

    .line 326
    return-void
.end method

.method public resumeInsert()V
    .locals 5

    .prologue
    .line 331
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/camera/io/FileManagerImpl;->insertToggle:Z

    .line 332
    iget-object v2, p0, Lcom/oneplus/camera/io/FileManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  resumeInsert   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_DecodeQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v2, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_DecodeQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    add-int/lit8 v1, v2, -0x1

    .line 334
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 335
    iget-object v2, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_DecodeQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->pollLast()Ljava/lang/Object;

    .line 334
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 337
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_InsertQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 338
    iget-object v2, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_FileHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_FileHandler:Landroid/os/Handler;

    const/16 v4, 0x3e9

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 330
    :cond_1
    return-void
.end method

.method public saveMedia(Lcom/oneplus/camera/io/MediaSaveTask;I)Lcom/oneplus/base/Handle;
    .locals 4
    .param p1, "task"    # Lcom/oneplus/camera/io/MediaSaveTask;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x0

    .line 169
    invoke-virtual {p0}, Lcom/oneplus/camera/io/FileManagerImpl;->verifyAccess()V

    .line 170
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/camera/io/FileManagerImpl;->isRunningOrInitializing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p1}, Lcom/oneplus/camera/io/MediaSaveTask;->getMediaSize()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/io/FileManagerImpl;->updateMediaSavingQueueSize(J)V

    .line 173
    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_SaveQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_FileHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_FileHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 176
    :cond_0
    return-object v3
.end method

.method public scanFiles()V
    .locals 0

    .prologue
    .line 695
    return-void
.end method

.method public setCurrent(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 193
    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl;->m_DecodeBitmapThread:Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;

    invoke-static {v0, p1}, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;->-set0(Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;I)I

    .line 192
    return-void
.end method
