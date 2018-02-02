.class public final Lcom/oneplus/camera/media/MediaListManager;
.super Ljava/lang/Object;
.source "MediaListManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/media/MediaListManager$1;,
        Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;,
        Lcom/oneplus/camera/media/MediaListManager$NewMediaInfo;
    }
.end annotation


# static fields
.field private static final DURATION_CHECK_MEDIA_LISTS:J = 0x3e8L

.field private static final DURATION_CLEAR_MEDIA_LISTS:J = 0xbb8L

.field public static final FLAG_SECURE:I = 0x1

.field private static final MEDIA_COLUMNS:[Ljava/lang/String;

.field private static final MEDIA_QUERY_BASE_CONDITIONS:Ljava/lang/String; = "(media_type=1 OR media_type=3)"

.field private static final MSG_ADD_MEDIA:I = 0x271a

.field private static final MSG_CHECK_MEDIA_LISTS:I = 0x2712

.field private static final MSG_CLEAR_MEDIA_LISTS:I = 0x2710

.field private static final MSG_REFRESH_MEDIA_LISTS:I = 0x2711

.field private static final MSG_REMOVE_MEDIA:I = 0x271b

.field private static final MTP_URI_OBJECT:Landroid/net/Uri;

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

.field private static final m_BaseMediaSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
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

.field private static final m_PendingNewMedia:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/camera/media/MediaListManager$NewMediaInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/oneplus/camera/media/MediaListManager;->m_MediaInfoComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/os/Message;)V
    .locals 0
    .param p0, "msg"    # Landroid/os/Message;

    .prologue
    invoke-static {p0}, Lcom/oneplus/camera/media/MediaListManager;->handleContentThreadMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;)V
    .locals 0
    .param p0, "mediaList"    # Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;

    .prologue
    invoke-static {p0}, Lcom/oneplus/camera/media/MediaListManager;->onMediaListReleased(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/net/Uri;)V
    .locals 0
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    invoke-static {p0}, Lcom/oneplus/camera/media/MediaListManager;->onMediaStoreContentChanged(Landroid/net/Uri;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    .line 50
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 51
    const-string/jumbo v1, "_data"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 52
    const-string/jumbo v1, "date_modified"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 53
    const-string/jumbo v1, "_size"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 54
    const-string/jumbo v1, "mime_type"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 55
    const-string/jumbo v1, "datetaken"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 56
    const-string/jumbo v1, "width"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 57
    const-string/jumbo v1, "height"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 58
    const-string/jumbo v1, "orientation"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 59
    const-string/jumbo v1, "duration"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 60
    const-string/jumbo v1, "latitude"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 61
    const-string/jumbo v1, "longitude"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 49
    sput-object v0, Lcom/oneplus/camera/media/MediaListManager;->MEDIA_COLUMNS:[Ljava/lang/String;

    .line 68
    const-string/jumbo v0, "content://media/external/object"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/camera/media/MediaListManager;->MTP_URI_OBJECT:Landroid/net/Uri;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    .line 101
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/oneplus/camera/media/MediaListManager;->m_BaseMediaSet:Ljava/util/Set;

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oneplus/camera/media/MediaListManager;->m_Lock:Ljava/lang/Object;

    .line 107
    new-instance v0, Lcom/oneplus/camera/media/MediaListManager$1;

    invoke-direct {v0}, Lcom/oneplus/camera/media/MediaListManager$1;-><init>()V

    sput-object v0, Lcom/oneplus/camera/media/MediaListManager;->m_MediaInfoComparator:Ljava/util/Comparator;

    .line 135
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/oneplus/camera/media/MediaListManager;->m_PendingNewMedia:Ljava/util/LinkedList;

    .line 45
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addMedia(Ljava/lang/String;J)V
    .locals 11
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "time"    # J

    .prologue
    .line 550
    sget-object v2, Lcom/oneplus/camera/media/MediaListManager;->m_Context:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 552
    const-string/jumbo v2, "MediaListManager"

    const-string/jumbo v3, "addMedia() - No context"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    return-void

    .line 555
    :cond_0
    sget-object v2, Lcom/oneplus/camera/media/MediaListManager;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 557
    const-string/jumbo v2, "MediaListManager"

    const-string/jumbo v3, "addMedia() - Cancelled"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    return-void

    .line 562
    :cond_1
    const/4 v0, 0x0

    .line 563
    .local v0, "client":Landroid/content/ContentProviderClient;
    const/4 v6, 0x0

    .line 567
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v2, "external"

    invoke-static {v2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 568
    .local v1, "contentUri":Landroid/net/Uri;
    sget-object v2, Lcom/oneplus/camera/media/MediaListManager;->m_Context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 569
    .local v0, "client":Landroid/content/ContentProviderClient;
    sget-object v2, Lcom/oneplus/camera/media/MediaListManager;->MEDIA_COLUMNS:[Ljava/lang/String;

    const-string/jumbo v3, "_data=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 570
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 573
    invoke-static {v1, v6}, Lcom/oneplus/camera/media/MediaListManager;->createMediaInfo(Landroid/net/Uri;Landroid/database/Cursor;)Lcom/oneplus/camera/media/MediaInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v10

    .line 574
    .local v10, "mediaInfo":Lcom/oneplus/camera/media/MediaInfo;
    if-nez v10, :cond_4

    .line 597
    if-eqz v6, :cond_2

    .line 598
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 599
    :cond_2
    if-eqz v0, :cond_3

    .line 600
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 575
    :cond_3
    return-void

    .line 578
    :cond_4
    :try_start_1
    sget-object v3, Lcom/oneplus/camera/media/MediaListManager;->m_Lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 580
    :try_start_2
    sget-object v2, Lcom/oneplus/camera/media/MediaListManager;->m_BaseMediaSet:Ljava/util/Set;

    invoke-interface {v2, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-nez v2, :cond_7

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 597
    if-eqz v6, :cond_5

    .line 598
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 599
    :cond_5
    if-eqz v0, :cond_6

    .line 600
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 581
    :cond_6
    return-void

    .line 582
    :cond_7
    :try_start_4
    sget-object v2, Lcom/oneplus/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v8, v2, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_a

    .line 584
    sget-object v2, Lcom/oneplus/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;

    .line 585
    .local v9, "list":Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;
    iget-boolean v2, v9, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->isSecureMode:Z

    if-eqz v2, :cond_8

    iget-wide v4, v9, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->creationTime:J

    cmp-long v2, v4, p1

    if-gez v2, :cond_9

    .line 586
    :cond_8
    invoke-virtual {v9, v10}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->addMedia(Lcom/oneplus/camera/media/MediaInfo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 582
    :cond_9
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .end local v9    # "list":Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;
    :cond_a
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 597
    .end local v8    # "i":I
    .end local v10    # "mediaInfo":Lcom/oneplus/camera/media/MediaInfo;
    :cond_b
    if-eqz v6, :cond_c

    .line 598
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 599
    :cond_c
    if-eqz v0, :cond_d

    .line 600
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 547
    .end local v0    # "client":Landroid/content/ContentProviderClient;
    .end local v1    # "contentUri":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_d
    :goto_1
    return-void

    .line 578
    .restart local v0    # "client":Landroid/content/ContentProviderClient;
    .restart local v1    # "contentUri":Landroid/net/Uri;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "mediaInfo":Lcom/oneplus/camera/media/MediaInfo;
    :catchall_0
    move-exception v2

    :try_start_6
    monitor-exit v3

    throw v2
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 592
    .end local v0    # "client":Landroid/content/ContentProviderClient;
    .end local v1    # "contentUri":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v10    # "mediaInfo":Lcom/oneplus/camera/media/MediaInfo;
    :catch_0
    move-exception v7

    .line 593
    .local v7, "ex":Ljava/lang/Throwable;
    :try_start_7
    const-string/jumbo v2, "MediaListManager"

    const-string/jumbo v3, "addMedia() - Unhandled exception"

    invoke-static {v2, v3, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 597
    if-eqz v6, :cond_e

    .line 598
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 599
    :cond_e
    if-eqz v0, :cond_d

    .line 600
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_1

    .line 596
    .end local v7    # "ex":Ljava/lang/Throwable;
    :catchall_1
    move-exception v2

    .line 597
    if-eqz v6, :cond_f

    .line 598
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 599
    :cond_f
    if-eqz v0, :cond_10

    .line 600
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 596
    :cond_10
    throw v2
.end method

.method private static checkContentThread(Z)Z
    .locals 4
    .param p0, "createThread"    # Z

    .prologue
    const/4 v3, 0x1

    .line 608
    sget-object v0, Lcom/oneplus/camera/media/MediaListManager;->m_ContentThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 609
    return v3

    .line 610
    :cond_0
    sget-object v1, Lcom/oneplus/camera/media/MediaListManager;->m_Lock:Ljava/lang/Object;

    monitor-enter v1

    .line 612
    :try_start_0
    sget-object v0, Lcom/oneplus/camera/media/MediaListManager;->m_ContentThread:Landroid/os/HandlerThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 614
    if-nez p0, :cond_1

    .line 615
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 616
    :cond_1
    :try_start_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v2, "Media manager content thread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/camera/media/MediaListManager;->m_ContentThread:Landroid/os/HandlerThread;

    .line 617
    const-string/jumbo v0, "MediaListManager"

    const-string/jumbo v2, "checkContentThread() - Start content thread"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    sget-object v0, Lcom/oneplus/camera/media/MediaListManager;->m_ContentThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 619
    new-instance v0, Lcom/oneplus/camera/media/MediaListManager$2;

    sget-object v2, Lcom/oneplus/camera/media/MediaListManager;->m_ContentThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/oneplus/camera/media/MediaListManager$2;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/oneplus/camera/media/MediaListManager;->m_ContentThreadHandler:Landroid/os/Handler;

    .line 627
    const-string/jumbo v0, "MediaListManager"

    const-string/jumbo v2, "checkContentThread() - Content thread started"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v1

    .line 630
    return v3

    .line 610
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static checkMediaLists()V
    .locals 40

    .prologue
    .line 637
    const-string/jumbo v6, "MediaListManager"

    const-string/jumbo v7, "checkMediaLists()"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    sget-object v35, Lcom/oneplus/camera/media/MediaListManager;->m_Lock:Ljava/lang/Object;

    monitor-enter v35

    .line 641
    :try_start_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 642
    .local v13, "addedMedia":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 643
    .local v32, "removedMedia":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 646
    .local v33, "replacedMedia":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/oneplus/camera/media/MediaInfo;Lcom/oneplus/camera/media/MediaInfo;>;>;"
    new-instance v34, Ljava/util/Hashtable;

    invoke-direct/range {v34 .. v34}, Ljava/util/Hashtable;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 649
    .local v34, "srcContentIDs":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Lcom/oneplus/camera/media/MediaInfo;>;"
    :try_start_1
    sget-object v6, Lcom/oneplus/camera/media/MediaListManager;->m_BaseMediaSet:Ljava/util/Set;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, "mediaInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/oneplus/camera/media/MediaInfo;

    .line 650
    .local v27, "mediaInfo":Lcom/oneplus/camera/media/MediaInfo;
    invoke-virtual/range {v27 .. v27}, Lcom/oneplus/camera/media/MediaInfo;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/oneplus/io/Path;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v6, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 653
    .end local v27    # "mediaInfo":Lcom/oneplus/camera/media/MediaInfo;
    .end local v28    # "mediaInfo$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v17

    .line 654
    .local v17, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v6, "MediaListManager"

    const-string/jumbo v7, "checkMediaLists() - Cannot create media list content IDs"

    move-object/from16 v0, v17

    invoke-static {v6, v7, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v35

    .line 655
    return-void

    .line 659
    .end local v17    # "e":Ljava/lang/Throwable;
    .restart local v28    # "mediaInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v38

    .line 660
    .local v38, "totalTime":J
    const/4 v5, 0x0

    .line 661
    .local v5, "contentUri":Landroid/net/Uri;
    const/4 v4, 0x0

    .line 664
    .local v4, "client":Landroid/content/ContentProviderClient;
    :try_start_4
    const-string/jumbo v6, "external"

    invoke-static {v6}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 665
    .local v5, "contentUri":Landroid/net/Uri;
    sget-object v6, Lcom/oneplus/camera/media/MediaListManager;->m_Context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v4

    .line 668
    .local v4, "client":Landroid/content/ContentProviderClient;
    sget-object v6, Lcom/oneplus/camera/media/MediaListManager;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v7, 0x2710

    invoke-virtual {v6, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 670
    const-string/jumbo v6, "MediaListManager"

    const-string/jumbo v7, "checkMediaLists() - Cancelled"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 782
    if-eqz v4, :cond_1

    .line 783
    :try_start_5
    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->release()Z

    .line 784
    :cond_1
    const-string/jumbo v6, "MediaListManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "checkMediaLists() - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v38

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " ms to check media lists"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit v35

    .line 671
    return-void

    .line 675
    :cond_2
    :try_start_6
    invoke-static {}, Lcom/oneplus/camera/media/MediaListManager;->getRecycledMediaListFromGallery()Ljava/util/ArrayList;

    move-result-object v31

    .line 678
    .local v31, "recycledMediaUriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v15, Lcom/oneplus/base/SimpleRef;

    invoke-direct {v15}, Lcom/oneplus/base/SimpleRef;-><init>()V

    .line 679
    .local v15, "condRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/String;>;"
    new-instance v14, Lcom/oneplus/base/SimpleRef;

    invoke-direct {v14}, Lcom/oneplus/base/SimpleRef;-><init>()V

    .line 680
    .local v14, "condArgsRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<[Ljava/lang/String;>;"
    invoke-static {v15, v14}, Lcom/oneplus/camera/media/MediaListManager;->prepareMediaQueryConditions(Lcom/oneplus/base/Ref;Lcom/oneplus/base/Ref;)V

    .line 683
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v36

    .line 684
    .local v36, "time":J
    sget-object v6, Lcom/oneplus/camera/media/MediaListManager;->MEDIA_COLUMNS:[Ljava/lang/String;

    invoke-interface {v15}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v14}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    const-string/jumbo v9, "datetaken DESC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v16

    .line 685
    .local v16, "cursor":Landroid/database/Cursor;
    if-eqz v16, :cond_a

    .line 690
    :cond_3
    :goto_1
    :try_start_7
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 692
    const-string/jumbo v6, "_id"

    const/4 v7, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v6, v7}, Lcom/oneplus/database/CursorUtils;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    .line 693
    .local v20, "id":Ljava/lang/Integer;
    const-string/jumbo v6, "date_modified"

    const-wide/16 v8, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v6, v8, v9}, Lcom/oneplus/database/CursorUtils;->getLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v24

    .line 694
    .local v24, "lastModifiedTime":J
    const-string/jumbo v6, "_data"

    move-object/from16 v0, v16

    invoke-static {v0, v6}, Lcom/oneplus/database/CursorUtils;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 696
    .local v22, "lastFilePath":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_3

    .line 698
    move-object/from16 v0, v34

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/oneplus/camera/media/MediaInfo;

    .local v30, "oldMedia":Lcom/oneplus/camera/media/MediaInfo;
    if-eqz v30, :cond_6

    .line 700
    invoke-virtual/range {v30 .. v30}, Lcom/oneplus/camera/media/MediaInfo;->getLastModifiedTime()J

    move-result-wide v6

    cmp-long v6, v6, v24

    if-nez v6, :cond_4

    .line 701
    invoke-virtual/range {v30 .. v30}, Lcom/oneplus/camera/media/MediaInfo;->getFilePath()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 704
    :cond_4
    move-object/from16 v0, v16

    invoke-static {v5, v0}, Lcom/oneplus/camera/media/MediaListManager;->createMediaInfo(Landroid/net/Uri;Landroid/database/Cursor;)Lcom/oneplus/camera/media/MediaInfo;

    move-result-object v29

    .line 705
    .local v29, "newMedia":Lcom/oneplus/camera/media/MediaInfo;
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    move-object/from16 v0, v33

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 729
    .end local v20    # "id":Ljava/lang/Integer;
    .end local v22    # "lastFilePath":Ljava/lang/String;
    .end local v24    # "lastModifiedTime":J
    .end local v29    # "newMedia":Lcom/oneplus/camera/media/MediaInfo;
    .end local v30    # "oldMedia":Lcom/oneplus/camera/media/MediaInfo;
    :catchall_0
    move-exception v6

    .line 730
    :try_start_8
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 729
    throw v6
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 777
    .end local v4    # "client":Landroid/content/ContentProviderClient;
    .end local v5    # "contentUri":Landroid/net/Uri;
    .end local v14    # "condArgsRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<[Ljava/lang/String;>;"
    .end local v15    # "condRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/String;>;"
    .end local v16    # "cursor":Landroid/database/Cursor;
    .end local v31    # "recycledMediaUriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v36    # "time":J
    :catch_1
    move-exception v18

    .line 778
    .local v18, "ex":Ljava/lang/Throwable;
    :try_start_9
    const-string/jumbo v6, "MediaListManager"

    const-string/jumbo v7, "checkMediaLists() - Unhandled exception"

    move-object/from16 v0, v18

    invoke-static {v6, v7, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 782
    if-eqz v4, :cond_5

    .line 783
    :try_start_a
    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->release()Z

    .line 784
    :cond_5
    const-string/jumbo v6, "MediaListManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "checkMediaLists() - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v38

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " ms to check media lists"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .end local v18    # "ex":Ljava/lang/Throwable;
    :goto_2
    monitor-exit v35

    .line 635
    return-void

    .line 709
    .restart local v4    # "client":Landroid/content/ContentProviderClient;
    .restart local v5    # "contentUri":Landroid/net/Uri;
    .restart local v14    # "condArgsRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<[Ljava/lang/String;>;"
    .restart local v15    # "condRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/String;>;"
    .restart local v16    # "cursor":Landroid/database/Cursor;
    .restart local v20    # "id":Ljava/lang/Integer;
    .restart local v22    # "lastFilePath":Ljava/lang/String;
    .restart local v24    # "lastModifiedTime":J
    .restart local v30    # "oldMedia":Lcom/oneplus/camera/media/MediaInfo;
    .restart local v31    # "recycledMediaUriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v36    # "time":J
    :cond_6
    :try_start_b
    move-object/from16 v0, v16

    invoke-static {v5, v0}, Lcom/oneplus/camera/media/MediaListManager;->createMediaInfo(Landroid/net/Uri;Landroid/database/Cursor;)Lcom/oneplus/camera/media/MediaInfo;

    move-result-object v27

    .line 710
    .restart local v27    # "mediaInfo":Lcom/oneplus/camera/media/MediaInfo;
    if-eqz v27, :cond_3

    .line 713
    invoke-virtual/range {v27 .. v27}, Lcom/oneplus/camera/media/MediaInfo;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 715
    const-string/jumbo v6, "MediaListManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "checkMediaLists() - media is recycled : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v27 .. v27}, Lcom/oneplus/camera/media/MediaInfo;->getContentUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 720
    :cond_7
    move-object/from16 v0, v27

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 725
    .end local v20    # "id":Ljava/lang/Integer;
    .end local v22    # "lastFilePath":Ljava/lang/String;
    .end local v24    # "lastModifiedTime":J
    .end local v27    # "mediaInfo":Lcom/oneplus/camera/media/MediaInfo;
    .end local v30    # "oldMedia":Lcom/oneplus/camera/media/MediaInfo;
    :cond_8
    invoke-virtual/range {v34 .. v34}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_3
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/oneplus/camera/media/MediaInfo;

    .line 726
    .restart local v27    # "mediaInfo":Lcom/oneplus/camera/media/MediaInfo;
    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_3

    .line 730
    .end local v27    # "mediaInfo":Lcom/oneplus/camera/media/MediaInfo;
    :cond_9
    :try_start_c
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 735
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v36, v6, v36

    .line 736
    const-string/jumbo v6, "MediaListManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "checkMediaLists() - Take "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v36

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " ms to check, added: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string/jumbo v9, ", deleted: "

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string/jumbo v11, ", replaced: "

    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static/range {v6 .. v12}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 739
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v19, v6, -0x1

    .local v19, "i":I
    :goto_4
    if-ltz v19, :cond_e

    .line 741
    move/from16 v0, v19

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/oneplus/camera/media/MediaInfo;

    .line 742
    .local v26, "media":Lcom/oneplus/camera/media/MediaInfo;
    sget-object v6, Lcom/oneplus/camera/media/MediaListManager;->m_BaseMediaSet:Ljava/util/Set;

    move-object/from16 v0, v26

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 739
    :cond_b
    add-int/lit8 v19, v19, -0x1

    goto :goto_4

    .line 744
    :cond_c
    sget-object v6, Lcom/oneplus/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v21, v6, -0x1

    .local v21, "j":I
    :goto_5
    if-ltz v21, :cond_b

    .line 746
    sget-object v6, Lcom/oneplus/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    move/from16 v0, v21

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;

    .line 747
    .local v23, "list":Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;
    move-object/from16 v0, v23

    iget-boolean v6, v0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->isSecureMode:Z

    if-nez v6, :cond_d

    .line 748
    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->addMedia(Lcom/oneplus/camera/media/MediaInfo;)V

    .line 744
    :cond_d
    add-int/lit8 v21, v21, -0x1

    goto :goto_5

    .line 753
    .end local v21    # "j":I
    .end local v23    # "list":Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;
    .end local v26    # "media":Lcom/oneplus/camera/media/MediaInfo;
    :cond_e
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v19, v6, -0x1

    :goto_6
    if-ltz v19, :cond_f

    .line 754
    sget-object v6, Lcom/oneplus/camera/media/MediaListManager;->m_BaseMediaSet:Ljava/util/Set;

    move-object/from16 v0, v32

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 753
    add-int/lit8 v19, v19, -0x1

    goto :goto_6

    .line 755
    :cond_f
    sget-object v6, Lcom/oneplus/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v19, v6, -0x1

    :goto_7
    if-ltz v19, :cond_10

    .line 757
    sget-object v6, Lcom/oneplus/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;

    .line 758
    .restart local v23    # "list":Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;
    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->-wrap4(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;Ljava/util/List;)V

    .line 755
    add-int/lit8 v19, v19, -0x1

    goto :goto_7

    .line 762
    .end local v23    # "list":Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;
    :cond_10
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v19, v6, -0x1

    :goto_8
    if-ltz v19, :cond_13

    .line 764
    move-object/from16 v0, v33

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/oneplus/camera/media/MediaInfo;

    .line 765
    .restart local v30    # "oldMedia":Lcom/oneplus/camera/media/MediaInfo;
    move-object/from16 v0, v33

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lcom/oneplus/camera/media/MediaInfo;

    .line 766
    .restart local v29    # "newMedia":Lcom/oneplus/camera/media/MediaInfo;
    sget-object v6, Lcom/oneplus/camera/media/MediaListManager;->m_BaseMediaSet:Ljava/util/Set;

    move-object/from16 v0, v30

    invoke-interface {v6, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 767
    sget-object v6, Lcom/oneplus/camera/media/MediaListManager;->m_BaseMediaSet:Ljava/util/Set;

    move-object/from16 v0, v29

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 768
    sget-object v6, Lcom/oneplus/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v21, v6, -0x1

    .restart local v21    # "j":I
    :goto_9
    if-ltz v21, :cond_12

    .line 770
    sget-object v6, Lcom/oneplus/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    move/from16 v0, v21

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;

    .line 771
    .restart local v23    # "list":Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;
    invoke-virtual/range {v23 .. v23}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->size()I

    move-result v6

    if-lez v6, :cond_11

    .line 772
    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->replaceMedia(Lcom/oneplus/camera/media/MediaInfo;Lcom/oneplus/camera/media/MediaInfo;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 768
    :cond_11
    add-int/lit8 v21, v21, -0x1

    goto :goto_9

    .line 762
    .end local v23    # "list":Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;
    :cond_12
    add-int/lit8 v19, v19, -0x1

    goto :goto_8

    .line 782
    .end local v21    # "j":I
    .end local v29    # "newMedia":Lcom/oneplus/camera/media/MediaInfo;
    .end local v30    # "oldMedia":Lcom/oneplus/camera/media/MediaInfo;
    :cond_13
    if-eqz v4, :cond_14

    .line 783
    :try_start_d
    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->release()Z

    .line 784
    :cond_14
    const-string/jumbo v6, "MediaListManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "checkMediaLists() - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v38

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " ms to check media lists"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_2

    .line 639
    .end local v4    # "client":Landroid/content/ContentProviderClient;
    .end local v5    # "contentUri":Landroid/net/Uri;
    .end local v14    # "condArgsRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<[Ljava/lang/String;>;"
    .end local v15    # "condRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/String;>;"
    .end local v16    # "cursor":Landroid/database/Cursor;
    .end local v19    # "i":I
    .end local v28    # "mediaInfo$iterator":Ljava/util/Iterator;
    .end local v31    # "recycledMediaUriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v32    # "removedMedia":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    .end local v33    # "replacedMedia":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/oneplus/camera/media/MediaInfo;Lcom/oneplus/camera/media/MediaInfo;>;>;"
    .end local v34    # "srcContentIDs":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Lcom/oneplus/camera/media/MediaInfo;>;"
    .end local v36    # "time":J
    .end local v38    # "totalTime":J
    :catchall_1
    move-exception v6

    monitor-exit v35

    throw v6

    .line 781
    .restart local v28    # "mediaInfo$iterator":Ljava/util/Iterator;
    .restart local v32    # "removedMedia":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    .restart local v33    # "replacedMedia":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/oneplus/camera/media/MediaInfo;Lcom/oneplus/camera/media/MediaInfo;>;>;"
    .restart local v34    # "srcContentIDs":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Lcom/oneplus/camera/media/MediaInfo;>;"
    .restart local v38    # "totalTime":J
    :catchall_2
    move-exception v6

    .line 782
    if-eqz v4, :cond_15

    .line 783
    :try_start_e
    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->release()Z

    .line 784
    :cond_15
    const-string/jumbo v7, "MediaListManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "checkMediaLists() - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v10, v10, v38

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " ms to check media lists"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    throw v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
.end method

.method private static clearMediaLists()V
    .locals 3

    .prologue
    .line 793
    sget-object v2, Lcom/oneplus/camera/media/MediaListManager;->m_Lock:Ljava/lang/Object;

    monitor-enter v2

    .line 795
    :try_start_0
    sget-object v1, Lcom/oneplus/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 796
    sget-object v1, Lcom/oneplus/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;

    invoke-virtual {v1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->clearMedia()V

    .line 795
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 797
    :cond_0
    sget-object v1, Lcom/oneplus/camera/media/MediaListManager;->m_BaseMediaSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 791
    return-void

    .line 793
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static createMediaInfo(Landroid/net/Uri;Landroid/database/Cursor;)Lcom/oneplus/camera/media/MediaInfo;
    .locals 3
    .param p0, "contentUri"    # Landroid/net/Uri;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x0

    .line 805
    const-string/jumbo v1, "mime_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 806
    .local v0, "mimeType":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 807
    return-object v2

    .line 808
    :cond_0
    const-string/jumbo v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 809
    new-instance v1, Lcom/oneplus/camera/media/PhotoMediaInfo;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/camera/media/PhotoMediaInfo;-><init>(Landroid/net/Uri;Landroid/database/Cursor;)V

    return-object v1

    .line 810
    :cond_1
    const-string/jumbo v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 811
    new-instance v1, Lcom/oneplus/camera/media/VideoMediaInfo;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/camera/media/VideoMediaInfo;-><init>(Landroid/net/Uri;Landroid/database/Cursor;)V

    return-object v1

    .line 812
    :cond_2
    return-object v2
.end method

.method public static createMediaList(Landroid/content/Context;I)Lcom/oneplus/camera/media/MediaList;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flags"    # I

    .prologue
    const/4 v5, 0x1

    .line 827
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 828
    .local v0, "isSecureMode":Z
    :goto_0
    new-instance v1, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;

    invoke-direct {v1, v0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;-><init>(Z)V

    .line 829
    .local v1, "mediaList":Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;
    sget-object v3, Lcom/oneplus/camera/media/MediaListManager;->m_Lock:Ljava/lang/Object;

    monitor-enter v3

    .line 832
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/oneplus/camera/media/MediaListManager;->m_Context:Landroid/content/Context;

    .line 835
    sget-object v2, Lcom/oneplus/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 838
    sget-object v2, Lcom/oneplus/camera/media/MediaListManager;->m_ContentThreadHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 839
    sget-object v2, Lcom/oneplus/camera/media/MediaListManager;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v4, 0x2710

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 840
    :cond_0
    sget-object v2, Lcom/oneplus/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 842
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/oneplus/camera/media/MediaListManager;->checkContentThread(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 844
    if-nez v0, :cond_1

    .line 845
    sget-object v2, Lcom/oneplus/camera/media/MediaListManager;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v4, 0x2711

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    monitor-exit v3

    .line 853
    return-object v1

    .line 827
    .end local v0    # "isSecureMode":Z
    .end local v1    # "mediaList":Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isSecureMode":Z
    goto :goto_0

    .line 848
    .restart local v1    # "mediaList":Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;
    :cond_3
    :try_start_1
    const-string/jumbo v2, "MediaListManager"

    const-string/jumbo v4, "createMediaList() - Fail to start content thread"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 829
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 850
    :cond_4
    if-nez v0, :cond_1

    .line 851
    :try_start_2
    sget-object v2, Lcom/oneplus/camera/media/MediaListManager;->m_BaseMediaSet:Ljava/util/Set;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->addMedia(Ljava/util/Collection;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static getMediaListFromGallery()Landroid/util/SparseIntArray;
    .locals 9

    .prologue
    .line 860
    new-instance v7, Landroid/util/SparseIntArray;

    invoke-direct {v7}, Landroid/util/SparseIntArray;-><init>()V

    .line 861
    .local v7, "m_MediaIdToFlagTable":Landroid/util/SparseIntArray;
    const-string/jumbo v2, "content://oneplus.gallery/media"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 862
    .local v1, "contentUri":Landroid/net/Uri;
    const/4 v0, 0x0

    .line 863
    .local v0, "client":Landroid/content/ContentProviderClient;
    const/4 v6, 0x0

    .line 866
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lcom/oneplus/camera/media/MediaListManager;->m_Context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 868
    .local v0, "client":Landroid/content/ContentProviderClient;
    if-nez v0, :cond_1

    .line 869
    const-string/jumbo v2, "MediaListManager"

    const-string/jumbo v3, "getMediaListFromGallery() - media client is null"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 897
    .end local v6    # "cursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v0, :cond_0

    .line 898
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 901
    .end local v0    # "client":Landroid/content/ContentProviderClient;
    :cond_0
    :goto_1
    return-object v7

    .line 872
    .restart local v0    # "client":Landroid/content/ContentProviderClient;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    const/4 v2, 0x2

    :try_start_1
    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "media_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "oneplus_flags"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 873
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 877
    :goto_2
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 879
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v7, v2, v3}, Landroid/util/SparseIntArray;->append(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 883
    :catchall_0
    move-exception v2

    .line 884
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 883
    throw v2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 892
    .end local v0    # "client":Landroid/content/ContentProviderClient;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 893
    .local v8, "tr":Ljava/lang/Throwable;
    :try_start_4
    const-string/jumbo v2, "MediaListManager"

    const-string/jumbo v3, "getMediaListFromGallery() - Failed to get media list from gallery."

    invoke-static {v2, v3, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 897
    if-eqz v0, :cond_0

    .line 898
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_1

    .line 884
    .end local v8    # "tr":Ljava/lang/Throwable;
    .restart local v0    # "client":Landroid/content/ContentProviderClient;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 896
    .end local v0    # "client":Landroid/content/ContentProviderClient;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    .line 897
    if-eqz v0, :cond_3

    .line 898
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 896
    :cond_3
    throw v2

    .line 888
    .restart local v0    # "client":Landroid/content/ContentProviderClient;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_4
    :try_start_6
    const-string/jumbo v2, "MediaListManager"

    const-string/jumbo v3, "getMediaListFromGallery() - recycled media cursor is null"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0
.end method

.method private static getRecycledMediaListFromGallery()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 908
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 909
    .local v7, "recycledMediaUriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v2, "content://oneplus.gallery/recycled_media"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 910
    .local v1, "contentUri":Landroid/net/Uri;
    const/4 v0, 0x0

    .line 911
    .local v0, "client":Landroid/content/ContentProviderClient;
    const/4 v6, 0x0

    .line 914
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lcom/oneplus/camera/media/MediaListManager;->m_Context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 916
    .local v0, "client":Landroid/content/ContentProviderClient;
    if-nez v0, :cond_1

    .line 917
    const-string/jumbo v2, "MediaListManager"

    const-string/jumbo v3, "getRecycledMediaListFromGallery() - recycled media client is null"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 946
    .end local v6    # "cursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v0, :cond_0

    .line 947
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 950
    .end local v0    # "client":Landroid/content/ContentProviderClient;
    :cond_0
    :goto_1
    return-object v7

    .line 920
    .restart local v0    # "client":Landroid/content/ContentProviderClient;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    const/4 v2, 0x1

    :try_start_1
    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "content_uri"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 921
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 925
    :goto_2
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 927
    const-string/jumbo v2, "MediaListManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getRecycledMediaListFromGallery() - recycled media : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 932
    :catchall_0
    move-exception v2

    .line 933
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 932
    throw v2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 941
    .end local v0    # "client":Landroid/content/ContentProviderClient;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 942
    .local v8, "tr":Ljava/lang/Throwable;
    :try_start_4
    const-string/jumbo v2, "MediaListManager"

    const-string/jumbo v3, "getRecycledMediaListFromGallery() - Failed to get recycled media list."

    invoke-static {v2, v3, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 946
    if-eqz v0, :cond_0

    .line 947
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_1

    .line 933
    .end local v8    # "tr":Ljava/lang/Throwable;
    .restart local v0    # "client":Landroid/content/ContentProviderClient;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 945
    .end local v0    # "client":Landroid/content/ContentProviderClient;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    .line 946
    if-eqz v0, :cond_3

    .line 947
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 945
    :cond_3
    throw v2

    .line 937
    .restart local v0    # "client":Landroid/content/ContentProviderClient;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_4
    :try_start_6
    const-string/jumbo v2, "MediaListManager"

    const-string/jumbo v3, "getRecycledMediaListFromGallery() - recycled media cursor is null"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0
.end method

.method private static handleContentThreadMessage(Landroid/os/Message;)V
    .locals 4
    .param p0, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 956
    iget v1, p0, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 954
    :cond_0
    :goto_0
    return-void

    .line 963
    :goto_1
    :sswitch_0
    sget-object v2, Lcom/oneplus/camera/media/MediaListManager;->m_PendingNewMedia:Ljava/util/LinkedList;

    monitor-enter v2

    .line 965
    :try_start_0
    sget-object v1, Lcom/oneplus/camera/media/MediaListManager;->m_PendingNewMedia:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/media/MediaListManager$NewMediaInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "newMedia":Lcom/oneplus/camera/media/MediaListManager$NewMediaInfo;
    monitor-exit v2

    .line 967
    if-eqz v0, :cond_0

    .line 968
    iget-object v1, v0, Lcom/oneplus/camera/media/MediaListManager$NewMediaInfo;->filePath:Ljava/lang/String;

    iget-wide v2, v0, Lcom/oneplus/camera/media/MediaListManager$NewMediaInfo;->time:J

    invoke-static {v1, v2, v3}, Lcom/oneplus/camera/media/MediaListManager;->addMedia(Ljava/lang/String;J)V

    goto :goto_1

    .line 963
    .end local v0    # "newMedia":Lcom/oneplus/camera/media/MediaListManager$NewMediaInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 976
    :sswitch_1
    invoke-static {}, Lcom/oneplus/camera/media/MediaListManager;->checkMediaLists()V

    goto :goto_0

    .line 981
    :sswitch_2
    sget-object v1, Lcom/oneplus/camera/media/MediaListManager;->m_ContentObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/oneplus/camera/media/MediaListManager;->m_Context:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 983
    const-string/jumbo v1, "MediaListManager"

    const-string/jumbo v2, "handleContentThreadMessage() - Unregister content observer"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    sget-object v1, Lcom/oneplus/camera/media/MediaListManager;->m_Context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/media/MediaListManager;->m_ContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 985
    sput-object v3, Lcom/oneplus/camera/media/MediaListManager;->m_ContentObserver:Landroid/database/ContentObserver;

    .line 987
    :cond_1
    invoke-static {}, Lcom/oneplus/camera/media/MediaListManager;->clearMediaLists()V

    goto :goto_0

    .line 992
    :sswitch_3
    invoke-static {}, Lcom/oneplus/camera/media/MediaListManager;->refreshMediaLists()V

    goto :goto_0

    .line 996
    :sswitch_4
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/oneplus/camera/media/MediaListManager;->removeMedia(Ljava/lang/String;)V

    goto :goto_0

    .line 956
    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_2
        0x2711 -> :sswitch_3
        0x2712 -> :sswitch_1
        0x271a -> :sswitch_0
        0x271b -> :sswitch_4
    .end sparse-switch
.end method

.method public static notifyFileAdded(Ljava/lang/String;J)V
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "taskCreatedTime"    # J

    .prologue
    .line 1008
    if-nez p0, :cond_0

    .line 1009
    return-void

    .line 1010
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/oneplus/camera/media/MediaListManager;->checkContentThread(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1012
    sget-object v1, Lcom/oneplus/camera/media/MediaListManager;->m_PendingNewMedia:Ljava/util/LinkedList;

    monitor-enter v1

    .line 1014
    :try_start_0
    sget-object v0, Lcom/oneplus/camera/media/MediaListManager;->m_PendingNewMedia:Ljava/util/LinkedList;

    new-instance v2, Lcom/oneplus/camera/media/MediaListManager$NewMediaInfo;

    invoke-direct {v2, p0, p1, p2}, Lcom/oneplus/camera/media/MediaListManager$NewMediaInfo;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1016
    sget-object v0, Lcom/oneplus/camera/media/MediaListManager;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x271a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1006
    :cond_1
    return-void

    .line 1012
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static notifyFileDeleted(Ljava/lang/String;)V
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1027
    if-nez p0, :cond_0

    .line 1028
    return-void

    .line 1029
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/oneplus/camera/media/MediaListManager;->checkContentThread(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1030
    sget-object v0, Lcom/oneplus/camera/media/MediaListManager;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x271b

    invoke-static {v0, v1, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1025
    :cond_1
    return-void
.end method

.method private static onMediaListReleased(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;)V
    .locals 6
    .param p0, "mediaList"    # Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;

    .prologue
    .line 1048
    sget-object v1, Lcom/oneplus/camera/media/MediaListManager;->m_Lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1050
    :try_start_0
    sget-object v0, Lcom/oneplus/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1052
    const-string/jumbo v0, "MediaListManager"

    const-string/jumbo v2, "onMediaListReleased() - No active media lists, clear media list later"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    sget-object v0, Lcom/oneplus/camera/media/MediaListManager;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v2, 0x2712

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1054
    sget-object v0, Lcom/oneplus/camera/media/MediaListManager;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v2, 0x2710

    const-wide/16 v4, 0xbb8

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 1046
    return-void

    .line 1048
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static onMediaStoreContentChanged(Landroid/net/Uri;)V
    .locals 5
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/16 v4, 0x2712

    .line 1037
    sget-object v0, Lcom/oneplus/camera/media/MediaListManager;->m_ContentThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1039
    const-string/jumbo v0, "MediaListManager"

    const-string/jumbo v1, "onMediaStoreContentChanged() - Check media lists later"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    sget-object v0, Lcom/oneplus/camera/media/MediaListManager;->m_ContentThreadHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1035
    :cond_0
    return-void
.end method

.method private static prepareMediaQueryConditions(Lcom/oneplus/base/Ref;Lcom/oneplus/base/Ref;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/Ref",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/oneplus/base/Ref",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "cond":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/String;>;"
    .local p1, "condArgs":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<[Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 1064
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1065
    :cond_0
    return-void

    .line 1068
    :cond_1
    invoke-static {}, Lcom/oneplus/camera/CameraApplication;->current()Lcom/oneplus/camera/CameraApplication;

    move-result-object v5

    const-class v6, Lcom/oneplus/io/StorageManager;

    invoke-virtual {v5, v6}, Lcom/oneplus/camera/CameraApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v4

    check-cast v4, Lcom/oneplus/io/StorageManager;

    .line 1071
    .local v4, "storageManager":Lcom/oneplus/io/StorageManager;
    invoke-static {v4}, Lcom/oneplus/io/StorageUtils;->getAllDcimPath(Lcom/oneplus/io/StorageManager;)Ljava/util/List;

    move-result-object v2

    .line 1074
    .local v2, "dcimPathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v5, "(media_type=1 OR media_type=3)"

    invoke-direct {v1, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1075
    .local v1, "condBuffer":Ljava/lang/StringBuffer;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1076
    .local v0, "condArgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_3

    .line 1078
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1079
    const-string/jumbo v5, " AND (_data LIKE ?"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1082
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1076
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1081
    :cond_2
    const-string/jumbo v5, " OR _data LIKE ?"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1084
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1085
    const/16 v5, 0x29

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1086
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v5}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 1087
    new-array v5, v7, [Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-interface {p1, v5}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 1061
    return-void
.end method

.method private static refreshMediaLists()V
    .locals 28

    .prologue
    .line 1095
    invoke-static {}, Lcom/oneplus/camera/media/MediaListManager;->clearMediaLists()V

    .line 1098
    sget-object v4, Lcom/oneplus/camera/media/MediaListManager;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v5, 0x2712

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1101
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    .line 1102
    .local v24, "totalTime":J
    const/4 v3, 0x0

    .line 1103
    .local v3, "contentUri":Landroid/net/Uri;
    const/4 v2, 0x0

    .line 1106
    .local v2, "client":Landroid/content/ContentProviderClient;
    const/16 v20, 0x0

    .line 1107
    .local v20, "rowOffset":I
    :try_start_0
    const-string/jumbo v4, "external"

    invoke-static {v4}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1108
    .local v3, "contentUri":Landroid/net/Uri;
    sget-object v4, Lcom/oneplus/camera/media/MediaListManager;->m_Context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    .line 1112
    .local v2, "client":Landroid/content/ContentProviderClient;
    :cond_0
    :goto_0
    sget-object v4, Lcom/oneplus/camera/media/MediaListManager;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v5, 0x2710

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1114
    const-string/jumbo v4, "MediaListManager"

    const-string/jumbo v5, "refreshMediaLists() - Cancelled"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1220
    if-eqz v2, :cond_1

    .line 1221
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 1222
    :cond_1
    const-string/jumbo v4, "MediaListManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "refreshMediaLists() - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v6, v24

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ms to refresh media lists"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    return-void

    .line 1118
    :cond_2
    :try_start_1
    sget-object v4, Lcom/oneplus/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    sget-object v4, Lcom/oneplus/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;

    iget-boolean v4, v4, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->isSecureMode:Z

    if-eqz v4, :cond_4

    .line 1120
    const-string/jumbo v4, "MediaListManager"

    const-string/jumbo v5, "refreshMediaLists() - List is secureMode. Cancelled"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1220
    if-eqz v2, :cond_3

    .line 1221
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 1222
    :cond_3
    const-string/jumbo v4, "MediaListManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "refreshMediaLists() - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v6, v24

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ms to refresh media lists"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    return-void

    .line 1125
    :cond_4
    :try_start_2
    sget-object v5, Lcom/oneplus/camera/media/MediaListManager;->m_PendingNewMedia:Ljava/util/LinkedList;

    monitor-enter v5
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1127
    :try_start_3
    sget-object v4, Lcom/oneplus/camera/media/MediaListManager;->m_PendingNewMedia:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1128
    const-string/jumbo v4, "MediaListManager"

    const-string/jumbo v6, "refreshMediaLists() - Handle new media first"

    invoke-static {v4, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    :try_start_4
    monitor-exit v5

    .line 1133
    :goto_1
    sget-object v5, Lcom/oneplus/camera/media/MediaListManager;->m_PendingNewMedia:Ljava/util/LinkedList;

    monitor-enter v5
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1135
    :try_start_5
    sget-object v4, Lcom/oneplus/camera/media/MediaListManager;->m_PendingNewMedia:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/oneplus/camera/media/MediaListManager$NewMediaInfo;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .local v17, "newMedia":Lcom/oneplus/camera/media/MediaListManager$NewMediaInfo;
    :try_start_6
    monitor-exit v5

    .line 1137
    if-eqz v17, :cond_9

    .line 1138
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/oneplus/camera/media/MediaListManager$NewMediaInfo;->filePath:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/oneplus/camera/media/MediaListManager$NewMediaInfo;->time:J

    invoke-static {v4, v6, v7}, Lcom/oneplus/camera/media/MediaListManager;->addMedia(Ljava/lang/String;J)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 1215
    .end local v2    # "client":Landroid/content/ContentProviderClient;
    .end local v3    # "contentUri":Landroid/net/Uri;
    .end local v17    # "newMedia":Lcom/oneplus/camera/media/MediaListManager$NewMediaInfo;
    :catch_0
    move-exception v11

    .line 1216
    .local v11, "ex":Ljava/lang/Throwable;
    :try_start_7
    const-string/jumbo v4, "MediaListManager"

    const-string/jumbo v5, "refreshMediaLists() - Unhandled exception"

    invoke-static {v4, v5, v11}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1220
    if-eqz v2, :cond_6

    .line 1221
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 1222
    :cond_6
    const-string/jumbo v4, "MediaListManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "refreshMediaLists() - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v6, v24

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ms to refresh media lists"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    .end local v11    # "ex":Ljava/lang/Throwable;
    :goto_2
    sget-object v4, Lcom/oneplus/camera/media/MediaListManager;->m_ContentObserver:Landroid/database/ContentObserver;

    if-nez v4, :cond_7

    .line 1230
    :try_start_8
    const-string/jumbo v4, "MediaListManager"

    const-string/jumbo v5, "refreshMediaLists() - Register content observer"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    new-instance v4, Lcom/oneplus/camera/media/MediaListManager$3;

    sget-object v5, Lcom/oneplus/camera/media/MediaListManager;->m_ContentThreadHandler:Landroid/os/Handler;

    invoke-direct {v4, v5}, Lcom/oneplus/camera/media/MediaListManager$3;-><init>(Landroid/os/Handler;)V

    sput-object v4, Lcom/oneplus/camera/media/MediaListManager;->m_ContentObserver:Landroid/database/ContentObserver;

    .line 1245
    sget-object v4, Lcom/oneplus/camera/media/MediaListManager;->m_Context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/oneplus/camera/media/MediaListManager;->MTP_URI_OBJECT:Landroid/net/Uri;

    sget-object v6, Lcom/oneplus/camera/media/MediaListManager;->m_ContentObserver:Landroid/database/ContentObserver;

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1246
    sget-object v4, Lcom/oneplus/camera/media/MediaListManager;->m_Context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/oneplus/camera/media/MediaListManager;->m_ContentObserver:Landroid/database/ContentObserver;

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1247
    sget-object v4, Lcom/oneplus/camera/media/MediaListManager;->m_Context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/oneplus/camera/media/MediaListManager;->m_ContentObserver:Landroid/database/ContentObserver;

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    .line 1092
    :cond_7
    :goto_3
    return-void

    .line 1125
    .restart local v2    # "client":Landroid/content/ContentProviderClient;
    .restart local v3    # "contentUri":Landroid/net/Uri;
    :catchall_0
    move-exception v4

    :try_start_9
    monitor-exit v5

    throw v4
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1219
    .end local v2    # "client":Landroid/content/ContentProviderClient;
    .end local v3    # "contentUri":Landroid/net/Uri;
    :catchall_1
    move-exception v4

    .line 1220
    if-eqz v2, :cond_8

    .line 1221
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 1222
    :cond_8
    const-string/jumbo v5, "MediaListManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "refreshMediaLists() - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v26

    sub-long v26, v26, v24

    move-wide/from16 v0, v26

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ms to refresh media lists"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    throw v4

    .line 1133
    .restart local v2    # "client":Landroid/content/ContentProviderClient;
    .restart local v3    # "contentUri":Landroid/net/Uri;
    :catchall_2
    move-exception v4

    :try_start_a
    monitor-exit v5

    throw v4

    .line 1144
    .restart local v17    # "newMedia":Lcom/oneplus/camera/media/MediaListManager$NewMediaInfo;
    :cond_9
    invoke-static {}, Lcom/oneplus/camera/media/MediaListManager;->getRecycledMediaListFromGallery()Ljava/util/ArrayList;

    move-result-object v19

    .line 1147
    .local v19, "recycledMediaUriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Lcom/oneplus/base/SimpleRef;

    invoke-direct {v9}, Lcom/oneplus/base/SimpleRef;-><init>()V

    .line 1148
    .local v9, "condRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/String;>;"
    new-instance v8, Lcom/oneplus/base/SimpleRef;

    invoke-direct {v8}, Lcom/oneplus/base/SimpleRef;-><init>()V

    .line 1149
    .local v8, "condArgsRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<[Ljava/lang/String;>;"
    invoke-static {v9, v8}, Lcom/oneplus/camera/media/MediaListManager;->prepareMediaQueryConditions(Lcom/oneplus/base/Ref;Lcom/oneplus/base/Ref;)V

    .line 1152
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    .line 1153
    .local v22, "time":J
    const/4 v15, 0x0

    .line 1154
    .local v15, "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    sget-object v4, Lcom/oneplus/camera/media/MediaListManager;->MEDIA_COLUMNS:[Ljava/lang/String;

    invoke-interface {v9}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v8}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "datetaken DESC ,_data DESC LIMIT 64 OFFSET "

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result-object v10

    .line 1155
    .local v10, "cursor":Landroid/database/Cursor;
    const/16 v18, 0x0

    .line 1156
    .local v18, "partialRowCount":I
    if-eqz v10, :cond_d

    .end local v15    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    :goto_4
    move-object/from16 v16, v15

    .line 1160
    .local v16, "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    :cond_a
    :goto_5
    :try_start_b
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1163
    invoke-static {v3, v10}, Lcom/oneplus/camera/media/MediaListManager;->createMediaInfo(Landroid/net/Uri;Landroid/database/Cursor;)Lcom/oneplus/camera/media/MediaInfo;

    move-result-object v14

    .line 1164
    .local v14, "mediaInfo":Lcom/oneplus/camera/media/MediaInfo;
    if-eqz v14, :cond_a

    .line 1168
    if-nez v16, :cond_13

    .line 1169
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 1172
    .end local v16    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    .local v15, "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    :goto_6
    :try_start_c
    invoke-virtual {v14}, Lcom/oneplus/camera/media/MediaInfo;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1174
    const-string/jumbo v4, "MediaListManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "refreshMediaLists() - media is recycled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v14}, Lcom/oneplus/camera/media/MediaInfo;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v15

    .line 1175
    .end local v15    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    .restart local v16    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    goto :goto_5

    .line 1178
    .end local v16    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    .restart local v15    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    :cond_b
    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_4

    .line 1183
    :catchall_3
    move-exception v4

    .line 1184
    .end local v14    # "mediaInfo":Lcom/oneplus/camera/media/MediaInfo;
    :goto_7
    :try_start_d
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1183
    throw v4
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 1180
    .end local v15    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    .restart local v16    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    :cond_c
    :try_start_e
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    move-result v18

    .line 1184
    :try_start_f
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-object/from16 v15, v16

    .line 1189
    .end local v16    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    :cond_d
    if-lez v18, :cond_11

    .line 1190
    add-int v20, v20, v18

    .line 1195
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v22, v4, v22

    .line 1196
    const-string/jumbo v5, "MediaListManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "refreshMediaLists() - Take "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " ms to create "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v15, :cond_f

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v4

    :goto_8
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " media info"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    if-eqz v15, :cond_0

    .line 1201
    sget-object v5, Lcom/oneplus/camera/media/MediaListManager;->m_Lock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 1203
    :try_start_10
    sget-object v4, Lcom/oneplus/camera/media/MediaListManager;->m_BaseMediaSet:Ljava/util/Set;

    invoke-interface {v4, v15}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1204
    sget-object v4, Lcom/oneplus/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v12, v4, -0x1

    .local v12, "i":I
    :goto_9
    if-ltz v12, :cond_10

    .line 1206
    sget-object v4, Lcom/oneplus/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;

    .line 1207
    .local v13, "list":Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;
    iget-boolean v4, v13, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->isSecureMode:Z

    if-nez v4, :cond_e

    .line 1208
    const/4 v4, 0x1

    invoke-virtual {v13, v15, v4}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->addMedia(Ljava/util/Collection;Z)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 1204
    :cond_e
    add-int/lit8 v12, v12, -0x1

    goto :goto_9

    .line 1196
    .end local v12    # "i":I
    .end local v13    # "list":Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;
    :cond_f
    const/4 v4, 0x0

    goto :goto_8

    .restart local v12    # "i":I
    :cond_10
    :try_start_11
    monitor-exit v5

    goto/16 :goto_0

    .line 1201
    .end local v12    # "i":I
    :catchall_4
    move-exception v4

    monitor-exit v5

    throw v4
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 1220
    :cond_11
    if-eqz v2, :cond_12

    .line 1221
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 1222
    :cond_12
    const-string/jumbo v4, "MediaListManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "refreshMediaLists() - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v6, v24

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ms to refresh media lists"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1250
    .end local v2    # "client":Landroid/content/ContentProviderClient;
    .end local v3    # "contentUri":Landroid/net/Uri;
    .end local v8    # "condArgsRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<[Ljava/lang/String;>;"
    .end local v9    # "condRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/String;>;"
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v17    # "newMedia":Lcom/oneplus/camera/media/MediaListManager$NewMediaInfo;
    .end local v18    # "partialRowCount":I
    .end local v19    # "recycledMediaUriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v22    # "time":J
    :catch_1
    move-exception v11

    .line 1251
    .restart local v11    # "ex":Ljava/lang/Throwable;
    const-string/jumbo v4, "MediaListManager"

    const-string/jumbo v5, "refreshMediaLists() - Fail to register content observer"

    invoke-static {v4, v5, v11}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1252
    const/4 v4, 0x0

    sput-object v4, Lcom/oneplus/camera/media/MediaListManager;->m_ContentObserver:Landroid/database/ContentObserver;

    goto/16 :goto_3

    .line 1183
    .end local v11    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "client":Landroid/content/ContentProviderClient;
    .restart local v3    # "contentUri":Landroid/net/Uri;
    .restart local v8    # "condArgsRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<[Ljava/lang/String;>;"
    .restart local v9    # "condRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/String;>;"
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v16    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    .restart local v17    # "newMedia":Lcom/oneplus/camera/media/MediaListManager$NewMediaInfo;
    .restart local v18    # "partialRowCount":I
    .restart local v19    # "recycledMediaUriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v22    # "time":J
    :catchall_5
    move-exception v4

    move-object/from16 v15, v16

    .end local v16    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    .restart local v15    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    goto/16 :goto_7

    .end local v15    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    .restart local v14    # "mediaInfo":Lcom/oneplus/camera/media/MediaInfo;
    .restart local v16    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    :cond_13
    move-object/from16 v15, v16

    .end local v16    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    .restart local v15    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    goto/16 :goto_6
.end method

.method private static removeMedia(Ljava/lang/String;)V
    .locals 6
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1261
    sget-object v5, Lcom/oneplus/camera/media/MediaListManager;->m_Lock:Ljava/lang/Object;

    monitor-enter v5

    .line 1264
    const/4 v3, 0x0

    .line 1265
    .local v3, "mediaInfo":Lcom/oneplus/camera/media/MediaInfo;
    :try_start_0
    sget-object v4, Lcom/oneplus/camera/media/MediaListManager;->m_BaseMediaSet:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "candMediaInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/media/MediaInfo;

    .line 1267
    .local v0, "candMediaInfo":Lcom/oneplus/camera/media/MediaInfo;
    invoke-virtual {v0}, Lcom/oneplus/camera/media/MediaInfo;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1269
    sget-object v4, Lcom/oneplus/camera/media/MediaListManager;->m_BaseMediaSet:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1270
    move-object v3, v0

    .line 1276
    .end local v0    # "candMediaInfo":Lcom/oneplus/camera/media/MediaInfo;
    .end local v3    # "mediaInfo":Lcom/oneplus/camera/media/MediaInfo;
    :cond_1
    if-eqz v3, :cond_2

    .line 1278
    sget-object v4, Lcom/oneplus/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 1279
    sget-object v4, Lcom/oneplus/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;

    invoke-static {v4, v3}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->-wrap3(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;Lcom/oneplus/camera/media/MediaInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1278
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_2
    monitor-exit v5

    .line 1259
    return-void

    .line 1261
    .end local v1    # "candMediaInfo$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method
