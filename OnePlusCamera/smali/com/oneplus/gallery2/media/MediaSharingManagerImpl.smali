.class final Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;
.super Lcom/oneplus/base/component/BasicComponent;
.source "MediaSharingManagerImpl.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/MediaSharingManager;


# static fields
.field private static final CACHED_DIR_NAME:Ljava/lang/String; = "sharing_caches"

.field private static final CONTENT_URI_PREFIX:Ljava/lang/String; = "content://oneplus.gallery/share/"

.field private static final DURATION_FILE_INFO_EXPIRED_TIME_MILLIS:J = 0x5265c00L

.field private static final GET_FILE_INFO_LOCK:Ljava/lang/Object;

.field private static final META_SUFFIX:Ljava/lang/String; = "_meta"

.field private static final MSG_ON_PREPARED:I = 0x2715

.field private static final MSG_WORKER_CHECK_EXPIRED_FILE_INFOS:I = 0x271b

.field private static final MSG_WORKER_CLEAR_SHARING_CACHES:I = 0x271f

.field private static final MSG_WORKER_READ_FILE_INFOS:I = 0x271a


# instance fields
.field private volatile m_IsFileInfosReady:Z

.field private volatile m_PreparedFileInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/oneplus/gallery2/media/MediaSharingManager$FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_WorkerHandler:Landroid/os/Handler;

.field private m_WorkerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->GET_FILE_INFO_LOCK:Ljava/lang/Object;

    .line 43
    return-void
.end method

.method constructor <init>(Lcom/oneplus/base/BaseApplication;)V
    .locals 2

    .prologue
    const-string/jumbo v0, "Media Sharing Manager"

    .line 56
    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/base/component/BasicComponent;-><init>(Ljava/lang/String;Lcom/oneplus/base/component/ComponentOwner;Z)V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->m_PreparedFileInfos:Ljava/util/Map;

    .line 57
    return-void
.end method

.method static synthetic access$0(Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->handleWorkerMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1(Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->m_PreparedFileInfos:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2(Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private checkExpiredFileInfos()V
    .locals 12

    .prologue
    .line 63
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->m_WorkerThread:Landroid/os/HandlerThread;

    if-eq v0, v1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->m_WorkerHandler:Landroid/os/Handler;

    const/16 v1, 0x271b

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 98
    :goto_0
    return-void

    .line 66
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 67
    iget-object v4, p0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->m_PreparedFileInfos:Ljava/util/Map;

    monitor-enter v4

    .line 69
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 70
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->m_PreparedFileInfos:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 72
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->m_PreparedFileInfos:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/MediaSharingManager$FileInfo;

    .line 73
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, v1, Lcom/oneplus/gallery2/media/MediaSharingManager$FileInfo;->creationTime:J

    sub-long/2addr v8, v10

    const-wide/32 v10, 0x5265c00

    cmp-long v2, v8, v10

    if-gtz v2, :cond_2

    const/4 v2, 0x1

    :goto_2
    if-nez v2, :cond_1

    .line 75
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 73
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 79
    :cond_3
    :try_start_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 80
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->m_PreparedFileInfos:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 67
    :cond_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSharingManager$FileInfo;

    .line 86
    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaSharingManager$FileInfo;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 87
    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaSharingManager$FileInfo;->meta:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 89
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "checkExpiredFileInfos() - Delete: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/oneplus/gallery2/media/MediaSharingManager$FileInfo;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 93
    :cond_5
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->m_WorkerHandler:Landroid/os/Handler;

    const/16 v1, 0x271b

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->m_WorkerHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x5265c00

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method private handleWorkerMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 199
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 217
    :goto_0
    :pswitch_0
    return-void

    .line 203
    :pswitch_1
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->checkExpiredFileInfos()V

    goto :goto_0

    .line 208
    :pswitch_2
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->clearSharingCaches()V

    goto :goto_0

    .line 213
    :pswitch_3
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->readFileInfos()V

    goto :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x271a
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onPrepared(Lcom/oneplus/gallery2/media/PrepareSharingCallback;Lcom/oneplus/gallery2/media/Media;Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/PrepareSharingResult;)V
    .locals 0

    .prologue
    .line 271
    if-nez p1, :cond_0

    .line 273
    :goto_0
    return-void

    .line 272
    :cond_0
    invoke-interface {p1, p2, p3, p4, p5}, Lcom/oneplus/gallery2/media/PrepareSharingCallback;->onPrepared(Lcom/oneplus/gallery2/media/Media;Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/PrepareSharingResult;)V

    goto :goto_0
.end method

.method private readFileInfos()V
    .locals 13

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 449
    iget-boolean v1, p0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->m_IsFileInfosReady:Z

    if-nez v1, :cond_0

    .line 453
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->m_WorkerThread:Landroid/os/HandlerThread;

    if-eq v1, v3, :cond_1

    .line 539
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->m_WorkerHandler:Landroid/os/Handler;

    const/16 v1, 0x271a

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 540
    :goto_0
    return-void

    .line 450
    :cond_0
    return-void

    .line 455
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "readFileInfos() - Start"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    :try_start_0
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v1

    const-string/jumbo v3, "sharing_caches"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/oneplus/base/BaseApplication;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    .line 461
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 462
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 463
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 464
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 465
    array-length v7, v1

    :goto_1
    if-ge v0, v7, :cond_6

    aget-object v8, v1, v0

    const-string/jumbo v9, "_meta"

    .line 467
    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 477
    invoke-interface {v5, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 480
    invoke-interface {v4, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 465
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    .line 469
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    const-string/jumbo v11, "_meta"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 470
    invoke-interface {v4, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 473
    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 523
    :catch_0
    move-exception v0

    .line 526
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "readFileInfos() - Error to read file infos"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 530
    :cond_3
    sget-object v1, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->GET_FILE_INFO_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 532
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->m_IsFileInfosReady:Z

    .line 533
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->GET_FILE_INFO_LOCK:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 530
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 536
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readFileInfos() - Add "

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->m_PreparedFileInfos:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, " file infos"

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 471
    :cond_4
    :try_start_2
    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 478
    :cond_5
    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 485
    :cond_6
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 486
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v8, "/"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_meta"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 489
    new-instance v1, Lcom/oneplus/gallery2/media/MediaSharingManager$FileInfo;

    invoke-direct {v1}, Lcom/oneplus/gallery2/media/MediaSharingManager$FileInfo;-><init>()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 490
    :try_start_3
    new-instance v9, Ljava/io/ObjectInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 492
    :try_start_4
    new-instance v10, Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v10, v1, Lcom/oneplus/gallery2/media/MediaSharingManager$FileInfo;->file:Ljava/io/File;

    .line 493
    new-instance v10, Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v10, v1, Lcom/oneplus/gallery2/media/MediaSharingManager$FileInfo;->meta:Ljava/io/File;

    .line 494
    invoke-virtual {v9}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/oneplus/gallery2/media/MediaSharingManager$FileInfo;->mimeType:Ljava/lang/String;

    .line 495
    invoke-virtual {v9}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v10

    iput-wide v10, v1, Lcom/oneplus/gallery2/media/MediaSharingManager$FileInfo;->lastModifiedTime:J

    .line 496
    invoke-virtual {v9}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/oneplus/gallery2/media/MediaSharingManager$FileInfo;->displayName:Ljava/lang/String;

    .line 497
    invoke-virtual {v9}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/oneplus/gallery2/media/MediaSharingManager$FileInfo;->title:Ljava/lang/String;

    .line 498
    invoke-virtual {v9}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v10

    iput-wide v10, v1, Lcom/oneplus/gallery2/media/MediaSharingManager$FileInfo;->creationTime:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 499
    if-nez v9, :cond_7

    .line 507
    :goto_4
    :try_start_5
    iget-object v0, v1, Lcom/oneplus/gallery2/media/MediaSharingManager$FileInfo;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_3

    .line 499
    :cond_7
    :try_start_6
    invoke-virtual {v9}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_5
    if-eqz v1, :cond_9

    if-ne v1, v0, :cond_a

    :goto_6
    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    :catch_1
    move-exception v0

    .line 502
    :try_start_8
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "readFileInfos() - Error to read object: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_3

    .line 499
    :catchall_1
    move-exception v0

    if-nez v9, :cond_8

    :goto_7
    :try_start_9
    throw v0

    :catchall_2
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_5

    :cond_8
    invoke-virtual {v9}, Ljava/io/ObjectInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_7

    :cond_9
    move-object v1, v0

    goto :goto_6

    :cond_a
    :try_start_a
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_6

    .line 511
    :cond_b
    :try_start_b
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->m_PreparedFileInfos:Ljava/util/Map;

    monitor-enter v2
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0

    .line 513
    :try_start_c
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->m_PreparedFileInfos:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 514
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 515
    iget-object v6, p0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->m_PreparedFileInfos:Ljava/util/Map;

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/MediaSharingManager$FileInfo;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 511
    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw v0
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0

    :cond_c
    :try_start_e
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 519
    :try_start_f
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 520
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_9

    .line 521
    :cond_d
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 522
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_0

    goto :goto_a

    .line 530
    :catchall_4
    move-exception v0

    :try_start_10
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    throw v0
.end method


# virtual methods
.method public clearSharingCaches()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 105
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->m_WorkerThread:Landroid/os/HandlerThread;

    if-eq v1, v2, :cond_0

    .line 120
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->m_WorkerHandler:Landroid/os/Handler;

    const/16 v1, 0x271f

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 121
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v1

    const-string/jumbo v2, "sharing_caches"

    invoke-virtual {v1, v2, v0}, Lcom/oneplus/base/BaseApplication;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 109
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 110
    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 111
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 114
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->m_PreparedFileInfos:Ljava/util/Map;

    monitor-enter v1

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->m_PreparedFileInfos:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 114
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFileInfo(Landroid/net/Uri;I)Lcom/oneplus/gallery2/media/MediaSharingManager$FileInfo;
    .locals 3

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->m_IsFileInfosReady:Z

    if-eqz v0, :cond_0

    .line 156
    :goto_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->m_PreparedFileInfos:Ljava/util/Map;

    monitor-enter v1

    .line 159
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->m_PreparedFileInfos:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSharingManager$FileInfo;

    .line 157
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 161
    return-object v0

    .line 131
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getFileInfo() - Wait for file infos ready"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    sget-object v1, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->GET_FILE_INFO_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 139
    :try_start_1
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->m_IsFileInfosReady:Z

    if-eqz v0, :cond_2

    .line 137
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getFileInfo() - File infos are ready"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 132
    return-object v0

    .line 143
    :cond_2
    :try_start_2
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->GET_FILE_INFO_LOCK:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 144
    :catch_0
    move-exception v0

    goto :goto_1

    .line 137
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 157
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public getMediaId(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 169
    if-eqz p1, :cond_0

    .line 171
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 170
    :cond_0
    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    .line 179
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 189
    invoke-super {p0, p1}, Lcom/oneplus/base/component/BasicComponent;->handleMessage(Landroid/os/Message;)V

    .line 193
    :goto_0
    return-void

    .line 183
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 184
    aget-object v1, v0, v1

    check-cast v1, Lcom/oneplus/gallery2/media/PrepareSharingCallback;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Lcom/oneplus/gallery2/media/Media;

    const/4 v3, 0x2

    aget-object v3, v0, v3

    check-cast v3, Landroid/net/Uri;

    const/4 v4, 0x3

    aget-object v4, v0, v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x4

    aget-object v5, v0, v5

    check-cast v5, Lcom/oneplus/gallery2/media/PrepareSharingResult;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->onPrepared(Lcom/oneplus/gallery2/media/PrepareSharingCallback;Lcom/oneplus/gallery2/media/Media;Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/PrepareSharingResult;)V

    goto :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x2715
        :pswitch_0
    .end packed-switch
.end method

.method protected onDeinitialize()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 225
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->m_WorkerHandler:Landroid/os/Handler;

    const/16 v1, 0x271b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 226
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->m_WorkerHandler:Landroid/os/Handler;

    const/16 v1, 0x271f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 227
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->m_WorkerHandler:Landroid/os/Handler;

    const/16 v1, 0x271a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 230
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->m_WorkerHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 237
    :goto_0
    invoke-super {p0}, Lcom/oneplus/base/component/BasicComponent;->onDeinitialize()V

    .line 238
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->m_WorkerHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 233
    iput-object v2, p0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->m_WorkerHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method protected onInitialize()V
    .locals 2

    .prologue
    .line 246
    invoke-super {p0}, Lcom/oneplus/base/component/BasicComponent;->onInitialize()V

    .line 249
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "Media Sharing Manager Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->m_WorkerThread:Landroid/os/HandlerThread;

    .line 250
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->m_WorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 251
    new-instance v0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl$1;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->m_WorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl$1;-><init>(Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->m_WorkerHandler:Landroid/os/Handler;

    .line 261
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->readFileInfos()V

    .line 264
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->checkExpiredFileInfos()V

    .line 265
    return-void
.end method

.method public prepareSharing(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/PrepareSharingCallback;I)Lcom/oneplus/base/Handle;
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 281
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->verifyAccess()V

    .line 282
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->isRunningOrInitializing(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    if-eqz p1, :cond_2

    .line 288
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "content://oneplus.gallery/share/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 290
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getMimeType()Ljava/lang/String;

    move-result-object v1

    .line 294
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->m_PreparedFileInfos:Ljava/util/Map;

    monitor-enter v2

    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->m_PreparedFileInfos:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSharingManager$FileInfo;

    .line 294
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    if-nez v0, :cond_3

    .line 306
    :cond_0
    new-instance v2, Lcom/oneplus/base/SimpleRef;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/oneplus/base/SimpleRef;-><init>(Ljava/lang/Object;)V

    .line 307
    iget-object v7, p0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->m_WorkerHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl$2;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl$2;-><init>(Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;Lcom/oneplus/base/Ref;Lcom/oneplus/gallery2/media/PrepareSharingCallback;Lcom/oneplus/gallery2/media/Media;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 431
    new-instance v0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl$3;

    const-string/jumbo v1, "Prepare Sharing Handle"

    invoke-direct {v0, p0, v1, v2}, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl$3;-><init>(Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;Ljava/lang/String;Lcom/oneplus/base/Ref;)V

    .line 441
    return-object v0

    .line 283
    :cond_1
    return-object v1

    .line 285
    :cond_2
    return-object v1

    .line 294
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 298
    :cond_3
    iget-wide v2, v0, Lcom/oneplus/gallery2/media/MediaSharingManager$FileInfo;->lastModifiedTime:J

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getLastModifiedTime()J

    move-result-wide v8

    cmp-long v0, v2, v8

    if-nez v0, :cond_0

    .line 300
    if-nez p2, :cond_4

    .line 302
    :goto_0
    new-instance v0, Lcom/oneplus/base/EmptyHandle;

    const-string/jumbo v1, "Prepare Sharing Handle"

    invoke-direct {v0, v1}, Lcom/oneplus/base/EmptyHandle;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 301
    :cond_4
    sget-object v0, Lcom/oneplus/gallery2/media/PrepareSharingResult;->SUCCESS:Lcom/oneplus/gallery2/media/PrepareSharingResult;

    invoke-interface {p2, p1, v5, v1, v0}, Lcom/oneplus/gallery2/media/PrepareSharingCallback;->onPrepared(Lcom/oneplus/gallery2/media/Media;Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/PrepareSharingResult;)V

    goto :goto_0
.end method
