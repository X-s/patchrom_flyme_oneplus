.class public final Lcom/oneplus/camera/media/MediaListManager;
.super Ljava/lang/Object;
.source "MediaListManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;
    }
.end annotation


# static fields
.field private static final DIR_DCIM_CAMERA:Ljava/lang/String;

.field private static final DURATION_CHECK_MEDIA_LISTS:J = 0x3e8L

.field private static final DURATION_CLEAR_MEDIA_LISTS:J = 0xbb8L

.field public static final FLAG_SECURE:I = 0x1

.field private static final MEDIA_COLUMNS:[Ljava/lang/String;

.field private static final MEDIA_QUERY_CONDITIONS:Ljava/lang/String; = "(media_type=1 OR media_type=3) AND (_data LIKE ? )"

.field private static final MSG_ADD_MEDIA:I = 0x271a

.field private static final MSG_CHECK_MEDIA_LISTS:I = 0x2712

.field private static final MSG_CLEAR_MEDIA_LISTS:I = 0x2710

.field private static final MSG_REFRESH_MEDIA_LISTS:I = 0x2711

.field private static final MSG_REMOVE_MEDIA:I = 0x271b

.field private static final PARTIAL_QUERY_SIZE:I = 0x40

.field private static final TAG:Ljava/lang/String; = "MediaListManager"

.field private static final m_ActiveMediaLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final m_BaseMediaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/media/MediaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static m_ContentObserver:Landroid/database/ContentObserver;

.field private static volatile m_ContentThread:Landroid/os/HandlerThread;

.field private static volatile m_ContentThreadHandler:Landroid/os/Handler;

.field private static volatile m_Context:Landroid/content/Context;

.field private static final m_Lock:Ljava/lang/Object;

.field private static final m_MediaInfoComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/oneplus/camera/media/MediaInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "width"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "height"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "orientation"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "duration"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/camera/media/MediaListManager;->MEDIA_COLUMNS:[Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/camera/media/MediaListManager;->DIR_DCIM_CAMERA:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/camera/media/MediaListManager;->m_BaseMediaList:Ljava/util/List;

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oneplus/camera/media/MediaListManager;->m_Lock:Ljava/lang/Object;

    .line 84
    new-instance v0, Lcom/oneplus/camera/media/MediaListManager$1;

    invoke-direct {v0}, Lcom/oneplus/camera/media/MediaListManager$1;-><init>()V

    sput-object v0, Lcom/oneplus/camera/media/MediaListManager;->m_MediaInfoComparator:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/oneplus/camera/media/MediaListManager;->m_MediaInfoComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;

    .prologue
    .line 37
    invoke-static {p0}, Lcom/oneplus/camera/media/MediaListManager;->onMediaListReleased(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;)V

    return-void
.end method

.method static synthetic access$500(Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/os/Message;

    .prologue
    .line 37
    invoke-static {p0}, Lcom/oneplus/camera/media/MediaListManager;->handleContentThreadMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$700(Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/Uri;

    .prologue
    .line 37
    invoke-static {p0}, Lcom/oneplus/camera/media/MediaListManager;->onMediaStoreContentChanged(Landroid/net/Uri;)V

    return-void
.end method

.method private static addMedia(Ljava/lang/String;J)V
    .locals 13
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "time"    # J

    .prologue
    .line 406
    sget-object v2, Lcom/oneplus/camera/media/MediaListManager;->m_Context:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 408
    const-string v2, "MediaListManager"

    const-string v3, "addMedia() - No context"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    sget-object v2, Lcom/oneplus/camera/media/MediaListManager;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 413
    const-string v2, "MediaListManager"

    const-string v3, "addMedia() - Cancelled"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 418
    :cond_2
    const/4 v0, 0x0

    .line 419
    .local v0, "client":Landroid/content/ContentProviderClient;
    const/4 v6, 0x0

    .line 423
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v2, "external"

    invoke-static {v2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 424
    .local v1, "contentUri":Landroid/net/Uri;
    sget-object v2, Lcom/oneplus/camera/media/MediaListManager;->m_Context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 425
    sget-object v2, Lcom/oneplus/camera/media/MediaListManager;->MEDIA_COLUMNS:[Ljava/lang/String;

    const-string v3, "_data=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 426
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 429
    invoke-static {v1, v6}, Lcom/oneplus/camera/media/MediaListManager;->createMediaInfo(Landroid/net/Uri;Landroid/database/Cursor;)Lcom/oneplus/camera/media/MediaInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v11

    .line 430
    .local v11, "mediaInfo":Lcom/oneplus/camera/media/MediaInfo;
    if-nez v11, :cond_4

    .line 454
    if-eqz v6, :cond_3

    .line 455
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 456
    :cond_3
    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    .line 434
    :cond_4
    :try_start_1
    sget-object v3, Lcom/oneplus/camera/media/MediaListManager;->m_Lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 436
    :try_start_2
    sget-object v2, Lcom/oneplus/camera/media/MediaListManager;->m_BaseMediaList:Ljava/util/List;

    sget-object v4, Lcom/oneplus/camera/media/MediaListManager;->m_MediaInfoComparator:Ljava/util/Comparator;

    invoke-static {v2, v11, v4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v9

    .line 437
    .local v9, "index":I
    if-gez v9, :cond_5

    .line 438
    sget-object v2, Lcom/oneplus/camera/media/MediaListManager;->m_BaseMediaList:Ljava/util/List;

    xor-int/lit8 v4, v9, -0x1

    invoke-interface {v2, v4, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 439
    :cond_5
    sget-object v2, Lcom/oneplus/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v8, v2, -0x1

    .local v8, "i":I
    :goto_1
    if-ltz v8, :cond_8

    .line 441
    sget-object v2, Lcom/oneplus/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;

    .line 442
    .local v10, "list":Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;
    iget-boolean v2, v10, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->isSecureMode:Z

    if-eqz v2, :cond_6

    iget-wide v4, v10, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->creationTime:J

    cmp-long v2, v4, p1

    if-gez v2, :cond_7

    .line 443
    :cond_6
    invoke-virtual {v10, v11}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->addMedia(Lcom/oneplus/camera/media/MediaInfo;)V

    .line 439
    :cond_7
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 445
    .end local v10    # "list":Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;
    :cond_8
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 454
    .end local v8    # "i":I
    .end local v9    # "index":I
    .end local v11    # "mediaInfo":Lcom/oneplus/camera/media/MediaInfo;
    :cond_9
    if-eqz v6, :cond_a

    .line 455
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 456
    :cond_a
    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_0

    .line 445
    .restart local v11    # "mediaInfo":Lcom/oneplus/camera/media/MediaInfo;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 448
    .end local v1    # "contentUri":Landroid/net/Uri;
    .end local v11    # "mediaInfo":Lcom/oneplus/camera/media/MediaInfo;
    :catch_0
    move-exception v7

    .line 450
    .local v7, "ex":Ljava/lang/Throwable;
    :try_start_5
    const-string v2, "MediaListManager"

    const-string v3, "addMedia() - Unhandled exception"

    invoke-static {v2, v3, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 454
    if-eqz v6, :cond_b

    .line 455
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 456
    :cond_b
    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_0

    .line 454
    .end local v7    # "ex":Ljava/lang/Throwable;
    :catchall_1
    move-exception v2

    if-eqz v6, :cond_c

    .line 455
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 456
    :cond_c
    if-eqz v0, :cond_d

    .line 457
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_d
    throw v2
.end method

.method private static checkContentThread(Z)Z
    .locals 4
    .param p0, "createThread"    # Z

    .prologue
    const/4 v0, 0x1

    .line 465
    sget-object v1, Lcom/oneplus/camera/media/MediaListManager;->m_ContentThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    .line 487
    :goto_0
    return v0

    .line 467
    :cond_0
    sget-object v1, Lcom/oneplus/camera/media/MediaListManager;->m_Lock:Ljava/lang/Object;

    monitor-enter v1

    .line 469
    :try_start_0
    sget-object v2, Lcom/oneplus/camera/media/MediaListManager;->m_ContentThread:Landroid/os/HandlerThread;

    if-nez v2, :cond_2

    .line 471
    if-nez p0, :cond_1

    .line 472
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 486
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 473
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "Media manager content thread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/oneplus/camera/media/MediaListManager;->m_ContentThread:Landroid/os/HandlerThread;

    .line 474
    const-string v2, "MediaListManager"

    const-string v3, "checkContentThread() - Start content thread"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    sget-object v2, Lcom/oneplus/camera/media/MediaListManager;->m_ContentThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 476
    new-instance v2, Lcom/oneplus/camera/media/MediaListManager$2;

    sget-object v3, Lcom/oneplus/camera/media/MediaListManager;->m_ContentThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/oneplus/camera/media/MediaListManager$2;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/oneplus/camera/media/MediaListManager;->m_ContentThreadHandler:Landroid/os/Handler;

    .line 484
    const-string v2, "MediaListManager"

    const-string v3, "checkContentThread() - Content thread started"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static checkMediaLists()V
    .locals 37

    .prologue
    .line 494
    const-string v6, "MediaListManager"

    const-string v7, "checkMediaLists()"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    sget-object v36, Lcom/oneplus/camera/media/MediaListManager;->m_Lock:Ljava/lang/Object;

    monitor-enter v36

    .line 498
    :try_start_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 499
    .local v13, "addedMedia":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 500
    .local v29, "removedMedia":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 503
    .local v30, "replacedMedia":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/oneplus/camera/media/MediaInfo;Lcom/oneplus/camera/media/MediaInfo;>;>;"
    new-instance v31, Ljava/util/Hashtable;

    invoke-direct/range {v31 .. v31}, Ljava/util/Hashtable;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    .local v31, "srcContentIDs":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Lcom/oneplus/camera/media/MediaInfo;>;"
    :try_start_1
    sget-object v6, Lcom/oneplus/camera/media/MediaListManager;->m_BaseMediaList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v17, v6, -0x1

    .local v17, "i":I
    :goto_0
    if-ltz v17, :cond_0

    .line 508
    sget-object v6, Lcom/oneplus/camera/media/MediaListManager;->m_BaseMediaList:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/oneplus/camera/media/MediaInfo;

    .line 509
    .local v26, "mediaInfo":Lcom/oneplus/camera/media/MediaInfo;
    invoke-virtual/range {v26 .. v26}, Lcom/oneplus/camera/media/MediaInfo;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/oneplus/io/Path;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v6, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 506
    add-int/lit8 v17, v17, -0x1

    goto :goto_0

    .line 512
    .end local v17    # "i":I
    .end local v26    # "mediaInfo":Lcom/oneplus/camera/media/MediaInfo;
    :catch_0
    move-exception v15

    .line 514
    .local v15, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string v6, "MediaListManager"

    const-string v7, "checkMediaLists() - Cannot create media list content IDs"

    invoke-static {v6, v7, v15}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 515
    monitor-exit v36

    .line 635
    .end local v15    # "e":Ljava/lang/Throwable;
    :goto_1
    return-void

    .line 519
    .restart local v17    # "i":I
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v34

    .line 520
    .local v34, "totalTime":J
    const/4 v5, 0x0

    .line 521
    .local v5, "contentUri":Landroid/net/Uri;
    const/4 v4, 0x0

    .line 524
    .local v4, "client":Landroid/content/ContentProviderClient;
    :try_start_3
    const-string v6, "external"

    invoke-static {v6}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 525
    sget-object v6, Lcom/oneplus/camera/media/MediaListManager;->m_Context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v4

    .line 528
    sget-object v6, Lcom/oneplus/camera/media/MediaListManager;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v7, 0x2710

    invoke-virtual {v6, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 530
    const-string v6, "MediaListManager"

    const-string v7, "checkMediaLists() - Cancelled"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 630
    if-eqz v4, :cond_1

    .line 631
    :try_start_4
    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->release()Z

    .line 632
    :cond_1
    const-string v6, "MediaListManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkMediaLists() - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v34

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms to check media lists"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v36

    goto :goto_1

    .line 634
    .end local v4    # "client":Landroid/content/ContentProviderClient;
    .end local v5    # "contentUri":Landroid/net/Uri;
    .end local v17    # "i":I
    .end local v29    # "removedMedia":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    .end local v30    # "replacedMedia":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/oneplus/camera/media/MediaInfo;Lcom/oneplus/camera/media/MediaInfo;>;>;"
    .end local v31    # "srcContentIDs":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Lcom/oneplus/camera/media/MediaInfo;>;"
    .end local v34    # "totalTime":J
    :catchall_0
    move-exception v6

    monitor-exit v36
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 535
    .restart local v4    # "client":Landroid/content/ContentProviderClient;
    .restart local v5    # "contentUri":Landroid/net/Uri;
    .restart local v17    # "i":I
    .restart local v29    # "removedMedia":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    .restart local v30    # "replacedMedia":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/oneplus/camera/media/MediaInfo;Lcom/oneplus/camera/media/MediaInfo;>;>;"
    .restart local v31    # "srcContentIDs":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Lcom/oneplus/camera/media/MediaInfo;>;"
    .restart local v34    # "totalTime":J
    :cond_2
    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v32

    .line 536
    .local v32, "time":J
    sget-object v6, Lcom/oneplus/camera/media/MediaListManager;->MEDIA_COLUMNS:[Ljava/lang/String;

    const-string v7, "(media_type=1 OR media_type=3) AND (_data LIKE ? )"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/oneplus/camera/media/MediaListManager;->DIR_DCIM_CAMERA:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/%"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const-string v9, "datetaken DESC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v14

    .line 537
    .local v14, "cursor":Landroid/database/Cursor;
    if-eqz v14, :cond_8

    .line 542
    :cond_3
    :goto_2
    :try_start_6
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 544
    const-string v6, "_id"

    const/4 v7, 0x0

    invoke-static {v14, v6, v7}, Lcom/oneplus/database/CursorUtils;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 545
    .local v19, "id":Ljava/lang/Integer;
    const-string v6, "date_modified"

    const-wide/16 v8, 0x0

    invoke-static {v14, v6, v8, v9}, Lcom/oneplus/database/CursorUtils;->getLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v22

    .line 547
    .local v22, "lastModifiedTime":J
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_3

    .line 549
    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/oneplus/camera/media/MediaInfo;

    .local v28, "oldMedia":Lcom/oneplus/camera/media/MediaInfo;
    if-eqz v28, :cond_5

    .line 551
    invoke-virtual/range {v28 .. v28}, Lcom/oneplus/camera/media/MediaInfo;->getLastModifiedTime()J

    move-result-wide v6

    cmp-long v6, v6, v22

    if-eqz v6, :cond_3

    .line 554
    invoke-static {v5, v14}, Lcom/oneplus/camera/media/MediaListManager;->createMediaInfo(Landroid/net/Uri;Landroid/database/Cursor;)Lcom/oneplus/camera/media/MediaInfo;

    move-result-object v27

    .line 555
    .local v27, "newMedia":Lcom/oneplus/camera/media/MediaInfo;
    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    move-object/from16 v0, v30

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .line 573
    .end local v19    # "id":Ljava/lang/Integer;
    .end local v22    # "lastModifiedTime":J
    .end local v27    # "newMedia":Lcom/oneplus/camera/media/MediaInfo;
    .end local v28    # "oldMedia":Lcom/oneplus/camera/media/MediaInfo;
    :catchall_1
    move-exception v6

    :try_start_7
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v6
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 624
    .end local v14    # "cursor":Landroid/database/Cursor;
    .end local v32    # "time":J
    :catch_1
    move-exception v16

    .line 626
    .local v16, "ex":Ljava/lang/Throwable;
    :try_start_8
    const-string v6, "MediaListManager"

    const-string v7, "checkMediaLists() - Unhandled exception"

    move-object/from16 v0, v16

    invoke-static {v6, v7, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 630
    if-eqz v4, :cond_4

    .line 631
    :try_start_9
    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->release()Z

    .line 632
    :cond_4
    const-string v6, "MediaListManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkMediaLists() - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v34

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms to check media lists"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    .end local v16    # "ex":Ljava/lang/Throwable;
    :goto_3
    monitor-exit v36
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    .line 559
    .restart local v14    # "cursor":Landroid/database/Cursor;
    .restart local v19    # "id":Ljava/lang/Integer;
    .restart local v22    # "lastModifiedTime":J
    .restart local v28    # "oldMedia":Lcom/oneplus/camera/media/MediaInfo;
    .restart local v32    # "time":J
    :cond_5
    :try_start_a
    invoke-static {v5, v14}, Lcom/oneplus/camera/media/MediaListManager;->createMediaInfo(Landroid/net/Uri;Landroid/database/Cursor;)Lcom/oneplus/camera/media/MediaInfo;

    move-result-object v26

    .line 560
    .restart local v26    # "mediaInfo":Lcom/oneplus/camera/media/MediaInfo;
    if-eqz v26, :cond_3

    .line 563
    move-object/from16 v0, v26

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 568
    .end local v19    # "id":Ljava/lang/Integer;
    .end local v22    # "lastModifiedTime":J
    .end local v26    # "mediaInfo":Lcom/oneplus/camera/media/MediaInfo;
    .end local v28    # "oldMedia":Lcom/oneplus/camera/media/MediaInfo;
    :cond_6
    invoke-virtual/range {v31 .. v31}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/oneplus/camera/media/MediaInfo;

    .line 569
    .restart local v26    # "mediaInfo":Lcom/oneplus/camera/media/MediaInfo;
    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_4

    .line 573
    .end local v26    # "mediaInfo":Lcom/oneplus/camera/media/MediaInfo;
    :cond_7
    :try_start_b
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 578
    .end local v18    # "i$":Ljava/util/Iterator;
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v32, v6, v32

    .line 579
    const-string v6, "MediaListManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkMediaLists() - Take "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v32

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms to check, added: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, ", deleted: "

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, ", replaced: "

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static/range {v6 .. v12}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 582
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v17, v6, -0x1

    :goto_5
    if-ltz v17, :cond_d

    .line 584
    move/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/oneplus/camera/media/MediaInfo;

    .line 585
    .local v25, "media":Lcom/oneplus/camera/media/MediaInfo;
    sget-object v6, Lcom/oneplus/camera/media/MediaListManager;->m_BaseMediaList:Ljava/util/List;

    sget-object v7, Lcom/oneplus/camera/media/MediaListManager;->m_MediaInfoComparator:Ljava/util/Comparator;

    move-object/from16 v0, v25

    invoke-static {v6, v0, v7}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v20

    .line 586
    .local v20, "index":I
    if-gez v20, :cond_a

    .line 587
    sget-object v6, Lcom/oneplus/camera/media/MediaListManager;->m_BaseMediaList:Ljava/util/List;

    xor-int/lit8 v7, v20, -0x1

    move-object/from16 v0, v25

    invoke-interface {v6, v7, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 590
    :goto_6
    sget-object v6, Lcom/oneplus/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v21, v6, -0x1

    .local v21, "j":I
    :goto_7
    if-ltz v21, :cond_c

    .line 592
    sget-object v6, Lcom/oneplus/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;

    .line 593
    .local v24, "list":Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;
    move-object/from16 v0, v24

    iget-boolean v6, v0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->isSecureMode:Z

    if-nez v6, :cond_9

    .line 594
    invoke-virtual/range {v24 .. v25}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->addMedia(Lcom/oneplus/camera/media/MediaInfo;)V

    .line 590
    :cond_9
    add-int/lit8 v21, v21, -0x1

    goto :goto_7

    .line 589
    .end local v21    # "j":I
    .end local v24    # "list":Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;
    :cond_a
    const-string v6, "MediaListManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkMediaLists() - Add media with invalid index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_6

    .line 630
    .end local v14    # "cursor":Landroid/database/Cursor;
    .end local v20    # "index":I
    .end local v25    # "media":Lcom/oneplus/camera/media/MediaInfo;
    .end local v32    # "time":J
    :catchall_2
    move-exception v6

    if-eqz v4, :cond_b

    .line 631
    :try_start_c
    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->release()Z

    .line 632
    :cond_b
    const-string v7, "MediaListManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkMediaLists() - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v10, v10, v34

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ms to check media lists"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    throw v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 582
    .restart local v14    # "cursor":Landroid/database/Cursor;
    .restart local v20    # "index":I
    .restart local v21    # "j":I
    .restart local v25    # "media":Lcom/oneplus/camera/media/MediaInfo;
    .restart local v32    # "time":J
    :cond_c
    add-int/lit8 v17, v17, -0x1

    goto/16 :goto_5

    .line 599
    .end local v20    # "index":I
    .end local v21    # "j":I
    .end local v25    # "media":Lcom/oneplus/camera/media/MediaInfo;
    :cond_d
    :try_start_d
    sget-object v6, Lcom/oneplus/camera/media/MediaListManager;->m_BaseMediaList:Ljava/util/List;

    move-object/from16 v0, v29

    invoke-interface {v6, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 600
    sget-object v6, Lcom/oneplus/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v17, v6, -0x1

    :goto_8
    if-ltz v17, :cond_e

    .line 602
    sget-object v6, Lcom/oneplus/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;

    .line 603
    .restart local v24    # "list":Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;
    move-object/from16 v0, v24

    move-object/from16 v1, v29

    # invokes: Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->removeMedia(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->access$600(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;Ljava/util/List;)V

    .line 600
    add-int/lit8 v17, v17, -0x1

    goto :goto_8

    .line 607
    .end local v24    # "list":Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;
    :cond_e
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v17, v6, -0x1

    :goto_9
    if-ltz v17, :cond_11

    .line 609
    move-object/from16 v0, v30

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/oneplus/camera/media/MediaInfo;

    .line 610
    .restart local v28    # "oldMedia":Lcom/oneplus/camera/media/MediaInfo;
    move-object/from16 v0, v30

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/oneplus/camera/media/MediaInfo;

    .line 611
    .restart local v27    # "newMedia":Lcom/oneplus/camera/media/MediaInfo;
    sget-object v6, Lcom/oneplus/camera/media/MediaListManager;->m_BaseMediaList:Ljava/util/List;

    move-object/from16 v0, v28

    invoke-interface {v6, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 612
    sget-object v6, Lcom/oneplus/camera/media/MediaListManager;->m_BaseMediaList:Ljava/util/List;

    sget-object v7, Lcom/oneplus/camera/media/MediaListManager;->m_MediaInfoComparator:Ljava/util/Comparator;

    move-object/from16 v0, v27

    invoke-static {v6, v0, v7}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v20

    .line 613
    .restart local v20    # "index":I
    if-gez v20, :cond_f

    .line 614
    sget-object v6, Lcom/oneplus/camera/media/MediaListManager;->m_BaseMediaList:Ljava/util/List;

    xor-int/lit8 v7, v20, -0x1

    move-object/from16 v0, v27

    invoke-interface {v6, v7, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 617
    :goto_a
    sget-object v6, Lcom/oneplus/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v21, v6, -0x1

    .restart local v21    # "j":I
    :goto_b
    if-ltz v21, :cond_10

    .line 619
    sget-object v6, Lcom/oneplus/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    move/from16 v0, v21

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;

    .line 620
    .restart local v24    # "list":Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;
    move-object/from16 v0, v24

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->replaceMedia(Lcom/oneplus/camera/media/MediaInfo;Lcom/oneplus/camera/media/MediaInfo;)V

    .line 617
    add-int/lit8 v21, v21, -0x1

    goto :goto_b

    .line 616
    .end local v21    # "j":I
    .end local v24    # "list":Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;
    :cond_f
    const-string v6, "MediaListManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkMediaLists() - Replace media with invalid index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_a

    .line 607
    .restart local v21    # "j":I
    :cond_10
    add-int/lit8 v17, v17, -0x1

    goto :goto_9

    .line 630
    .end local v20    # "index":I
    .end local v21    # "j":I
    .end local v27    # "newMedia":Lcom/oneplus/camera/media/MediaInfo;
    .end local v28    # "oldMedia":Lcom/oneplus/camera/media/MediaInfo;
    :cond_11
    if-eqz v4, :cond_12

    .line 631
    :try_start_e
    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->release()Z

    .line 632
    :cond_12
    const-string v6, "MediaListManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkMediaLists() - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v34

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms to check media lists"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_3
.end method

.method private static clearMediaLists()V
    .locals 3

    .prologue
    .line 641
    sget-object v2, Lcom/oneplus/camera/media/MediaListManager;->m_Lock:Ljava/lang/Object;

    monitor-enter v2

    .line 643
    :try_start_0
    sget-object v1, Lcom/oneplus/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 644
    sget-object v1, Lcom/oneplus/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;

    invoke-virtual {v1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->clearMedia()V

    .line 643
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 645
    :cond_0
    sget-object v1, Lcom/oneplus/camera/media/MediaListManager;->m_BaseMediaList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 646
    monitor-exit v2

    .line 647
    return-void

    .line 646
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static createMediaInfo(Landroid/net/Uri;Landroid/database/Cursor;)Lcom/oneplus/camera/media/MediaInfo;
    .locals 3
    .param p0, "contentUri"    # Landroid/net/Uri;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x0

    .line 653
    const-string v2, "mime_type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 654
    .local v0, "mimeType":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 660
    :cond_0
    :goto_0
    return-object v1

    .line 656
    :cond_1
    const-string v2, "image/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 657
    new-instance v1, Lcom/oneplus/camera/media/PhotoMediaInfo;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/camera/media/PhotoMediaInfo;-><init>(Landroid/net/Uri;Landroid/database/Cursor;)V

    goto :goto_0

    .line 658
    :cond_2
    const-string v2, "video/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 659
    new-instance v1, Lcom/oneplus/camera/media/VideoMediaInfo;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/camera/media/VideoMediaInfo;-><init>(Landroid/net/Uri;Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public static createMediaList(Landroid/content/Context;I)Lcom/oneplus/camera/media/MediaList;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flags"    # I

    .prologue
    const/4 v2, 0x1

    .line 675
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_2

    move v0, v2

    .line 676
    .local v0, "isSecureMode":Z
    :goto_0
    new-instance v1, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;

    invoke-direct {v1, v0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;-><init>(Z)V

    .line 677
    .local v1, "mediaList":Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;
    sget-object v3, Lcom/oneplus/camera/media/MediaListManager;->m_Lock:Ljava/lang/Object;

    monitor-enter v3

    .line 680
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sput-object v4, Lcom/oneplus/camera/media/MediaListManager;->m_Context:Landroid/content/Context;

    .line 683
    sget-object v4, Lcom/oneplus/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 686
    sget-object v4, Lcom/oneplus/camera/media/MediaListManager;->m_ContentThreadHandler:Landroid/os/Handler;

    if-eqz v4, :cond_0

    .line 687
    sget-object v4, Lcom/oneplus/camera/media/MediaListManager;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v5, 0x2710

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 688
    :cond_0
    sget-object v4, Lcom/oneplus/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v2, :cond_4

    .line 690
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/oneplus/camera/media/MediaListManager;->checkContentThread(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 691
    sget-object v2, Lcom/oneplus/camera/media/MediaListManager;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v4, 0x2711

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 697
    :cond_1
    :goto_1
    monitor-exit v3

    .line 698
    return-object v1

    .line 675
    .end local v0    # "isSecureMode":Z
    .end local v1    # "mediaList":Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 693
    .restart local v0    # "isSecureMode":Z
    .restart local v1    # "mediaList":Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;
    :cond_3
    const-string v2, "MediaListManager"

    const-string v4, "createMediaList() - Fail to start content thread"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 697
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 695
    :cond_4
    if-nez v0, :cond_1

    .line 696
    :try_start_1
    sget-object v2, Lcom/oneplus/camera/media/MediaListManager;->m_BaseMediaList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->addMedia(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private static handleContentThreadMessage(Landroid/os/Message;)V
    .locals 4
    .param p0, "msg"    # Landroid/os/Message;

    .prologue
    .line 705
    iget v1, p0, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 738
    :goto_0
    return-void

    .line 709
    :sswitch_0
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 710
    .local v0, "params":[Ljava/lang/Object;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/oneplus/camera/media/MediaListManager;->addMedia(Ljava/lang/String;J)V

    goto :goto_0

    .line 715
    .end local v0    # "params":[Ljava/lang/Object;
    :sswitch_1
    invoke-static {}, Lcom/oneplus/camera/media/MediaListManager;->checkMediaLists()V

    goto :goto_0

    .line 720
    :sswitch_2
    sget-object v1, Lcom/oneplus/camera/media/MediaListManager;->m_ContentObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/oneplus/camera/media/MediaListManager;->m_Context:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 722
    const-string v1, "MediaListManager"

    const-string v2, "handleContentThreadMessage() - Unregister content observer"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    sget-object v1, Lcom/oneplus/camera/media/MediaListManager;->m_Context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/media/MediaListManager;->m_ContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 724
    const/4 v1, 0x0

    sput-object v1, Lcom/oneplus/camera/media/MediaListManager;->m_ContentObserver:Landroid/database/ContentObserver;

    .line 726
    :cond_0
    invoke-static {}, Lcom/oneplus/camera/media/MediaListManager;->clearMediaLists()V

    goto :goto_0

    .line 731
    :sswitch_3
    invoke-static {}, Lcom/oneplus/camera/media/MediaListManager;->refreshMediaLists()V

    goto :goto_0

    .line 735
    :sswitch_4
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/oneplus/camera/media/MediaListManager;->removeMedia(Ljava/lang/String;)V

    goto :goto_0

    .line 705
    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_2
        0x2711 -> :sswitch_3
        0x2712 -> :sswitch_1
        0x271a -> :sswitch_0
        0x271b -> :sswitch_4
    .end sparse-switch
.end method

.method public static notifyFileAdded(Ljava/lang/String;)V
    .locals 7
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 747
    if-nez p0, :cond_1

    .line 751
    :cond_0
    :goto_0
    return-void

    .line 749
    :cond_1
    invoke-static {v6}, Lcom/oneplus/camera/media/MediaListManager;->checkContentThread(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    sget-object v0, Lcom/oneplus/camera/media/MediaListManager;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x271a

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public static notifyFileDeleted(Ljava/lang/String;)V
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 760
    if-nez p0, :cond_1

    .line 764
    :cond_0
    :goto_0
    return-void

    .line 762
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/oneplus/camera/media/MediaListManager;->checkContentThread(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    sget-object v0, Lcom/oneplus/camera/media/MediaListManager;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x271b

    invoke-static {v0, v1, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private static onMediaListReleased(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;)V
    .locals 6
    .param p0, "mediaList"    # Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;

    .prologue
    .line 781
    sget-object v1, Lcom/oneplus/camera/media/MediaListManager;->m_Lock:Ljava/lang/Object;

    monitor-enter v1

    .line 783
    :try_start_0
    sget-object v0, Lcom/oneplus/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 785
    const-string v0, "MediaListManager"

    const-string v2, "onMediaListReleased() - No active media lists, clear media list later"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    sget-object v0, Lcom/oneplus/camera/media/MediaListManager;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v2, 0x2712

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 787
    sget-object v0, Lcom/oneplus/camera/media/MediaListManager;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v2, 0x2710

    const-wide/16 v4, 0xbb8

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 789
    :cond_0
    monitor-exit v1

    .line 790
    return-void

    .line 789
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static onMediaStoreContentChanged(Landroid/net/Uri;)V
    .locals 5
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/16 v4, 0x2712

    .line 770
    sget-object v0, Lcom/oneplus/camera/media/MediaListManager;->m_ContentThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 772
    const-string v0, "MediaListManager"

    const-string v1, "onMediaStoreContentChanged() - Check media lists later"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    sget-object v0, Lcom/oneplus/camera/media/MediaListManager;->m_ContentThreadHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 775
    :cond_0
    return-void
.end method

.method private static refreshMediaLists()V
    .locals 24

    .prologue
    .line 797
    invoke-static {}, Lcom/oneplus/camera/media/MediaListManager;->clearMediaLists()V

    .line 800
    sget-object v4, Lcom/oneplus/camera/media/MediaListManager;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v5, 0x2712

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 803
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 804
    .local v20, "totalTime":J
    const/4 v3, 0x0

    .line 805
    .local v3, "contentUri":Landroid/net/Uri;
    const/4 v2, 0x0

    .line 808
    .local v2, "client":Landroid/content/ContentProviderClient;
    const/16 v16, 0x0

    .line 809
    .local v16, "rowOffset":I
    :try_start_0
    const-string v4, "external"

    invoke-static {v4}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 810
    sget-object v4, Lcom/oneplus/camera/media/MediaListManager;->m_Context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    .line 814
    :cond_0
    :goto_0
    sget-object v4, Lcom/oneplus/camera/media/MediaListManager;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v5, 0x2710

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 816
    const-string v4, "MediaListManager"

    const-string v5, "refreshMediaLists() - Cancelled"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 881
    if-eqz v2, :cond_1

    .line 882
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 883
    :cond_1
    const-string v4, "MediaListManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshMediaLists() - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v6, v20

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms to refresh media lists"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    :cond_2
    :goto_1
    return-void

    .line 821
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    .line 822
    .local v18, "time":J
    const/4 v13, 0x0

    .line 823
    .local v13, "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    sget-object v4, Lcom/oneplus/camera/media/MediaListManager;->MEDIA_COLUMNS:[Ljava/lang/String;

    const-string v5, "(media_type=1 OR media_type=3) AND (_data LIKE ? )"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v22, Lcom/oneplus/camera/media/MediaListManager;->DIR_DCIM_CAMERA:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v22, "/%"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "datetaken DESC ,_data DESC LIMIT 64 OFFSET "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v8

    .line 824
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 825
    .local v15, "partialRowCount":I
    if-eqz v8, :cond_6

    move-object v14, v13

    .line 829
    .end local v13    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    .local v14, "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    :cond_4
    :goto_2
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 832
    invoke-static {v3, v8}, Lcom/oneplus/camera/media/MediaListManager;->createMediaInfo(Landroid/net/Uri;Landroid/database/Cursor;)Lcom/oneplus/camera/media/MediaInfo;

    move-result-object v12

    .line 833
    .local v12, "mediaInfo":Lcom/oneplus/camera/media/MediaInfo;
    if-eqz v12, :cond_4

    .line 837
    if-nez v14, :cond_e

    .line 838
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 839
    .end local v14    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    .restart local v13    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    :goto_3
    :try_start_3
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v14, v13

    .line 840
    .end local v13    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    .restart local v14    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    goto :goto_2

    .line 841
    .end local v12    # "mediaInfo":Lcom/oneplus/camera/media/MediaInfo;
    :cond_5
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v15

    .line 845
    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v13, v14

    .line 850
    .end local v14    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    .restart local v13    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    :cond_6
    if-lez v15, :cond_c

    .line 851
    add-int v16, v16, v15

    .line 856
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v18, v4, v18

    .line 857
    const-string v5, "MediaListManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshMediaLists() - Take "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ms to create "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v13, :cond_9

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    :goto_4
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " media info"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    if-eqz v13, :cond_0

    .line 862
    sget-object v5, Lcom/oneplus/camera/media/MediaListManager;->m_Lock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 864
    :try_start_6
    sget-object v4, Lcom/oneplus/camera/media/MediaListManager;->m_BaseMediaList:Ljava/util/List;

    invoke-interface {v4, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 865
    sget-object v4, Lcom/oneplus/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v10, v4, -0x1

    .local v10, "i":I
    :goto_5
    if-ltz v10, :cond_a

    .line 867
    sget-object v4, Lcom/oneplus/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;

    .line 868
    .local v11, "list":Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;
    iget-boolean v4, v11, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->isSecureMode:Z

    if-nez v4, :cond_7

    .line 869
    invoke-virtual {v11, v13}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->addMedia(Ljava/util/List;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 865
    :cond_7
    add-int/lit8 v10, v10, -0x1

    goto :goto_5

    .line 845
    .end local v10    # "i":I
    .end local v11    # "list":Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;
    .end local v13    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    .restart local v14    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    :catchall_0
    move-exception v4

    move-object v13, v14

    .end local v14    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    .restart local v13    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    :goto_6
    :try_start_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v4
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 875
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v13    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    .end local v15    # "partialRowCount":I
    .end local v18    # "time":J
    :catch_0
    move-exception v9

    .line 877
    .local v9, "ex":Ljava/lang/Throwable;
    :try_start_8
    const-string v4, "MediaListManager"

    const-string v5, "refreshMediaLists() - Unhandled exception"

    invoke-static {v4, v5, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 881
    if-eqz v2, :cond_8

    .line 882
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 883
    :cond_8
    const-string v4, "MediaListManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshMediaLists() - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v6, v20

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms to refresh media lists"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    .end local v9    # "ex":Ljava/lang/Throwable;
    :goto_7
    sget-object v4, Lcom/oneplus/camera/media/MediaListManager;->m_ContentObserver:Landroid/database/ContentObserver;

    if-nez v4, :cond_2

    .line 891
    :try_start_9
    const-string v4, "MediaListManager"

    const-string v5, "refreshMediaLists() - Register content observer"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    new-instance v4, Lcom/oneplus/camera/media/MediaListManager$3;

    sget-object v5, Lcom/oneplus/camera/media/MediaListManager;->m_ContentThreadHandler:Landroid/os/Handler;

    invoke-direct {v4, v5}, Lcom/oneplus/camera/media/MediaListManager$3;-><init>(Landroid/os/Handler;)V

    sput-object v4, Lcom/oneplus/camera/media/MediaListManager;->m_ContentObserver:Landroid/database/ContentObserver;

    .line 906
    sget-object v4, Lcom/oneplus/camera/media/MediaListManager;->m_Context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    sget-object v7, Lcom/oneplus/camera/media/MediaListManager;->m_ContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 907
    sget-object v4, Lcom/oneplus/camera/media/MediaListManager;->m_Context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    sget-object v7, Lcom/oneplus/camera/media/MediaListManager;->m_ContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_1

    .line 909
    :catch_1
    move-exception v9

    .line 911
    .restart local v9    # "ex":Ljava/lang/Throwable;
    const-string v4, "MediaListManager"

    const-string v5, "refreshMediaLists() - Fail to register content observer"

    invoke-static {v4, v5, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 912
    const/4 v4, 0x0

    sput-object v4, Lcom/oneplus/camera/media/MediaListManager;->m_ContentObserver:Landroid/database/ContentObserver;

    goto/16 :goto_1

    .line 857
    .end local v9    # "ex":Ljava/lang/Throwable;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v13    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    .restart local v15    # "partialRowCount":I
    .restart local v18    # "time":J
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 871
    .restart local v10    # "i":I
    :cond_a
    :try_start_a
    monitor-exit v5

    goto/16 :goto_0

    .end local v10    # "i":I
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v4
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 881
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v13    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    .end local v15    # "partialRowCount":I
    .end local v18    # "time":J
    :catchall_2
    move-exception v4

    if-eqz v2, :cond_b

    .line 882
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 883
    :cond_b
    const-string v5, "MediaListManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "refreshMediaLists() - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    sub-long v22, v22, v20

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms to refresh media lists"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 881
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v13    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    .restart local v15    # "partialRowCount":I
    .restart local v18    # "time":J
    :cond_c
    if-eqz v2, :cond_d

    .line 882
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 883
    :cond_d
    const-string v4, "MediaListManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshMediaLists() - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v6, v20

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms to refresh media lists"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 845
    .restart local v12    # "mediaInfo":Lcom/oneplus/camera/media/MediaInfo;
    :catchall_3
    move-exception v4

    goto/16 :goto_6

    .end local v13    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    .restart local v14    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    :cond_e
    move-object v13, v14

    .end local v14    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    .restart local v13    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    goto/16 :goto_3
.end method

.method private static removeMedia(Ljava/lang/String;)V
    .locals 5
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 921
    sget-object v4, Lcom/oneplus/camera/media/MediaListManager;->m_Lock:Ljava/lang/Object;

    monitor-enter v4

    .line 924
    const/4 v2, 0x0

    .line 925
    .local v2, "mediaInfo":Lcom/oneplus/camera/media/MediaInfo;
    :try_start_0
    sget-object v3, Lcom/oneplus/camera/media/MediaListManager;->m_BaseMediaList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 927
    sget-object v3, Lcom/oneplus/camera/media/MediaListManager;->m_BaseMediaList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/media/MediaInfo;

    .line 928
    .local v0, "candMediaInfo":Lcom/oneplus/camera/media/MediaInfo;
    invoke-virtual {v0}, Lcom/oneplus/camera/media/MediaInfo;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 930
    move-object v2, v0

    .line 936
    .end local v0    # "candMediaInfo":Lcom/oneplus/camera/media/MediaInfo;
    :cond_0
    if-eqz v2, :cond_2

    .line 938
    sget-object v3, Lcom/oneplus/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_1
    if-ltz v1, :cond_2

    .line 939
    sget-object v3, Lcom/oneplus/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;

    # invokes: Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->removeMedia(Lcom/oneplus/camera/media/MediaInfo;)V
    invoke-static {v3, v2}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->access$800(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;Lcom/oneplus/camera/media/MediaInfo;)V

    .line 938
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 925
    .restart local v0    # "candMediaInfo":Lcom/oneplus/camera/media/MediaInfo;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 941
    .end local v0    # "candMediaInfo":Lcom/oneplus/camera/media/MediaInfo;
    :cond_2
    monitor-exit v4

    .line 942
    return-void

    .line 941
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
