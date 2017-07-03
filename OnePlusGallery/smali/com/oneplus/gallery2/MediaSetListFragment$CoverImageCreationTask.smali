.class final Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;
.super Ljava/lang/Object;
.source "MediaSetListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/MediaSetListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CoverImageCreationTask"
.end annotation


# instance fields
.field private m_CacheCheckFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private m_CacheCheckRunnable:Ljava/lang/Runnable;

.field private m_ColumnCount:I

.field private m_IntermediateCoverCanvas:Landroid/graphics/Canvas;

.field private m_IntermediateCoverImage:Landroid/graphics/Bitmap;

.field private m_IsActive:Z

.field private m_IsHighPriority:Z

.field private m_LastCoverImageUpdateTime:J

.field private final m_MediaAddedHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/gallery2/ListChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private m_MediaCount:Ljava/lang/Integer;

.field private final m_MediaCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

.field private m_ReadyMediaList:[Lcom/oneplus/gallery2/media/Media;

.field private m_RowCount:I

.field private m_TargetMediaCount:I

.field private m_ThumbnailDecodingCallback:Lcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;

.field private m_ThumbnailDecodingHandles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/base/Handle;",
            ">;"
        }
    .end annotation
.end field

.field public final mediaSet:Lcom/oneplus/gallery2/media/MediaSet;

.field final synthetic this$0:Lcom/oneplus/gallery2/MediaSetListFragment;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/MediaSetListFragment;Lcom/oneplus/gallery2/media/MediaSet;II)V
    .locals 1
    .param p2, "mediaSet"    # Lcom/oneplus/gallery2/media/MediaSet;
    .param p3, "columnCount"    # I
    .param p4, "rowCount"    # I

    .prologue
    .line 380
    iput-object p1, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    new-instance v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$1;-><init>(Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_MediaAddedHandler:Lcom/oneplus/base/EventHandler;

    .line 367
    new-instance v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$2;-><init>(Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_MediaCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 381
    iput-object p2, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    .line 382
    iput p3, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_ColumnCount:I

    .line 383
    iput p4, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_RowCount:I

    .line 384
    mul-int v0, p3, p4

    iput v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_TargetMediaCount:I

    .line 385
    return-void
.end method

.method static synthetic access$1200(Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->onMediaListChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1302(Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_MediaCount:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;)Lcom/oneplus/gallery2/media/MediaList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;

    .prologue
    .line 338
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;

    .prologue
    .line 338
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_CacheCheckRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_CacheCheckRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;
    .param p1, "x1"    # Ljava/util/concurrent/Future;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_CacheCheckFuture:Ljava/util/concurrent/Future;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->complete()V

    return-void
.end method

.method static synthetic access$2300(Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->createCoverImageFromMediaList()V

    return-void
.end method

.method static synthetic access$3000(Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;Lcom/oneplus/base/Handle;Lcom/oneplus/gallery2/media/Media;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;
    .param p2, "x2"    # Lcom/oneplus/gallery2/media/Media;
    .param p3, "x3"    # Landroid/graphics/Bitmap;

    .prologue
    .line 338
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->onThumbnailImageDecoded(Lcom/oneplus/base/Handle;Lcom/oneplus/gallery2/media/Media;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private complete()V
    .locals 3

    .prologue
    .line 425
    iget-boolean v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_IsActive:Z

    if-nez v0, :cond_0

    .line 430
    :goto_0
    return-void

    .line 427
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_IsActive:Z

    .line 428
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_MediaCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaSet;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 429
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    # invokes: Lcom/oneplus/gallery2/MediaSetListFragment;->onCoverImageCreationCompleted(Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;)V
    invoke-static {v0, p0}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$1600(Lcom/oneplus/gallery2/MediaSetListFragment;Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;)V

    goto :goto_0
.end method

.method private createCoverImageFromMediaList()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 514
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v1, :cond_0

    .line 516
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery2/MediaSetListFragment;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$2500(Lcom/oneplus/gallery2/MediaSetListFragment;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createCoverImageFromMediaList() - Media list of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    invoke-interface {v3}, Lcom/oneplus/gallery2/media/MediaSet;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is already opened"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v2, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_MediaAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v1, v2, v3}, Lcom/oneplus/gallery2/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 518
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v1}, Lcom/oneplus/gallery2/media/MediaList;->release()V

    .line 526
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    sget-object v2, Lcom/oneplus/gallery2/media/MediaSet;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/gallery2/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 528
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery2/MediaSetListFragment;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$2600(Lcom/oneplus/gallery2/MediaSetListFragment;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createCoverImageFromMediaList() - Media set "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    invoke-interface {v3}, Lcom/oneplus/gallery2/media/MediaSet;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has been rleased"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    :goto_0
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-nez v1, :cond_3

    .line 541
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery2/MediaSetListFragment;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$2800(Lcom/oneplus/gallery2/MediaSetListFragment;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createCoverImageFromMediaList() - Fail to open media list of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->complete()V

    .line 551
    :cond_1
    :goto_1
    return-void

    .line 532
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    sget-object v2, Lcom/oneplus/gallery2/media/MediaComparator;->TAKEN_TIME_DESC:Lcom/oneplus/gallery2/media/MediaComparator;

    iget v3, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_TargetMediaCount:I

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/oneplus/gallery2/media/MediaSet;->openMediaList(Lcom/oneplus/gallery2/media/MediaComparator;II)Lcom/oneplus/gallery2/media/MediaList;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 534
    :catch_0
    move-exception v0

    .line 536
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery2/MediaSetListFragment;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$2700(Lcom/oneplus/gallery2/MediaSetListFragment;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createCoverImageFromMediaList() - Fail to open media list of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    invoke-interface {v3}, Lcom/oneplus/gallery2/media/MediaSet;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 537
    iput-object v5, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    goto :goto_0

    .line 545
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->onMediaListChanged()Z

    move-result v1

    if-nez v1, :cond_1

    .line 549
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v2, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_MediaAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v1, v2, v3}, Lcom/oneplus/gallery2/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    goto :goto_1
.end method

.method private onMediaListChanged()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 562
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v1

    .line 563
    .local v1, "listSize":I
    const/4 v0, 0x0

    .line 564
    .local v0, "isReady":Z
    iget v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_TargetMediaCount:I

    if-lt v1, v2, :cond_2

    .line 566
    iget v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_TargetMediaCount:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 567
    const/4 v0, 0x1

    .line 574
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    iget-boolean v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_IsActive:Z

    if-nez v2, :cond_4

    .line 576
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    new-array v3, v1, [Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v2, v3}, Lcom/oneplus/gallery2/media/MediaList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/oneplus/gallery2/media/Media;

    iput-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery2/media/Media;

    .line 577
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v3, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_MediaAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v2, v3, v4}, Lcom/oneplus/gallery2/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 578
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/MediaList;->release()V

    .line 579
    iput-object v5, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    .line 580
    iget-boolean v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_IsActive:Z

    if-eqz v2, :cond_3

    .line 584
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->onReadyToCreateCoverImage()V

    .line 588
    :goto_1
    const/4 v2, 0x1

    .line 590
    :goto_2
    return v2

    .line 569
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_MediaCount:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_MediaCount:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 571
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_MediaCount:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 572
    const/4 v0, 0x1

    goto :goto_0

    .line 587
    :cond_3
    iput-object v5, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery2/media/Media;

    goto :goto_1

    .line 590
    :cond_4
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private onReadyToCreateCoverImage()V
    .locals 7

    .prologue
    .line 596
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery2/media/Media;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery2/MediaSetListFragment;->m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;
    invoke-static {v0}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$2900(Lcom/oneplus/gallery2/MediaSetListFragment;)Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 598
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->complete()V

    .line 621
    :goto_0
    return-void

    .line 601
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_ThumbnailDecodingHandles:Ljava/util/Set;

    if-nez v0, :cond_2

    .line 602
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_ThumbnailDecodingHandles:Ljava/util/Set;

    .line 603
    :cond_2
    const/4 v3, 0x1

    .line 604
    .local v3, "flags":I
    iget-boolean v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_IsHighPriority:Z

    if-eqz v0, :cond_3

    .line 605
    or-int/lit8 v3, v3, 0x2

    .line 606
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_ThumbnailDecodingCallback:Lcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;

    if-nez v0, :cond_4

    .line 608
    new-instance v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$4;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$4;-><init>(Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_ThumbnailDecodingCallback:Lcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;

    .line 617
    :cond_4
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery2/media/Media;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 618
    iget-object v6, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_ThumbnailDecodingHandles:Ljava/util/Set;

    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery2/MediaSetListFragment;->m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;
    invoke-static {v0}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$2900(Lcom/oneplus/gallery2/MediaSetListFragment;)Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery2/media/Media;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget-object v2, Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;->SMALL:Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;

    iget-object v4, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_ThumbnailDecodingCallback:Lcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;

    iget-object v5, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    invoke-virtual {v5}, Lcom/oneplus/gallery2/MediaSetListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/oneplus/gallery2/media/ThumbnailImageManager;->decodeThumbnailImage(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;ILcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 620
    :cond_5
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->complete()V

    goto :goto_0
.end method

.method private onThumbnailImageDecoded(Lcom/oneplus/base/Handle;Lcom/oneplus/gallery2/media/Media;Landroid/graphics/Bitmap;)V
    .locals 29
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p3, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    .line 627
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_ThumbnailDecodingHandles:Ljava/util/Set;

    if-eqz v4, :cond_0

    .line 628
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_ThumbnailDecodingHandles:Ljava/util/Set;

    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 631
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery2/media/Media;

    if-nez v4, :cond_2

    .line 756
    :cond_1
    :goto_0
    return-void

    .line 633
    :cond_2
    const/16 v23, -0x1

    .line 634
    .local v23, "index":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery2/media/Media;

    array-length v4, v4

    add-int/lit8 v22, v4, -0x1

    .local v22, "i":I
    :goto_1
    if-ltz v22, :cond_3

    .line 636
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery2/media/Media;

    aget-object v4, v4, v22

    move-object/from16 v0, p2

    if-ne v4, v0, :cond_6

    .line 638
    move/from16 v23, v22

    .line 642
    :cond_3
    if-ltz v23, :cond_1

    .line 646
    new-instance v19, Landroid/graphics/Paint;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Paint;-><init>()V

    .line 647
    .local v19, "emptyPaint":Landroid/graphics/Paint;
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 648
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverBackgroundColor:I
    invoke-static {v4}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$3100(Lcom/oneplus/gallery2/MediaSetListFragment;)I

    move-result v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 651
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    if-nez v4, :cond_5

    .line 653
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageTempBase:Ljava/util/Map;
    invoke-static {v4}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$3200(Lcom/oneplus/gallery2/MediaSetListFragment;)Ljava/util/Map;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Bitmap;

    .line 654
    .local v10, "baseCover":Landroid/graphics/Bitmap;
    if-eqz v10, :cond_4

    .line 655
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery2/MediaSetListFragment;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$3300(Lcom/oneplus/gallery2/MediaSetListFragment;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onThumbnailImageDecoded() - use cover image for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    # invokes: Lcom/oneplus/gallery2/MediaSetListFragment;->getMediaSetImageKey(Lcom/oneplus/gallery2/media/MediaSet;)Ljava/lang/String;
    invoke-static {v6, v8}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$1700(Lcom/oneplus/gallery2/MediaSetListFragment;Lcom/oneplus/gallery2/media/MediaSet;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    :cond_4
    if-eqz v10, :cond_7

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x1

    invoke-virtual {v10, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    :goto_2
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    .line 658
    new-instance v4, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_IntermediateCoverCanvas:Landroid/graphics/Canvas;

    .line 662
    .end local v10    # "baseCover":Landroid/graphics/Bitmap;
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x8

    move-object/from16 v0, p0

    iget v5, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_ColumnCount:I

    add-int/lit8 v5, v5, -0x1

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_ColumnCount:I

    int-to-float v5, v5

    div-float v21, v4, v5

    .line 663
    .local v21, "gridWidth":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_RowCount:I

    add-int/lit8 v5, v5, -0x1

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_RowCount:I

    int-to-float v5, v5

    div-float v20, v4, v5

    .line 664
    .local v20, "gridHeight":F
    new-instance v13, Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, v21

    move/from16 v1, v20

    invoke-direct {v13, v4, v5, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 665
    .local v13, "destRect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_ColumnCount:I

    rem-int v25, v23, v4

    .line 666
    .local v25, "offsetX":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_ColumnCount:I

    div-int v26, v23, v4

    .line 667
    .local v26, "offsetY":I
    move/from16 v0, v25

    int-to-float v4, v0

    mul-float v4, v4, v21

    const/high16 v5, 0x40800000    # 4.0f

    add-float/2addr v4, v5

    mul-int/lit8 v5, v25, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    move/from16 v0, v26

    int-to-float v5, v0

    mul-float v5, v5, v20

    mul-int/lit8 v6, v26, 0x2

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {v13, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 670
    if-eqz p3, :cond_8

    .line 672
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v24

    .line 673
    .local v24, "minThumbSide":I
    new-instance v27, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v24

    move/from16 v2, v24

    invoke-direct {v0, v4, v5, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 674
    .local v27, "srcRect":Landroid/graphics/Rect;
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v4, v4, v24

    div-int/lit8 v4, v4, 0x2

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int v5, v5, v24

    div-int/lit8 v5, v5, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 675
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_IntermediateCoverCanvas:Landroid/graphics/Canvas;

    const/4 v5, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v4, v0, v1, v13, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 676
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_IntermediateCoverCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageOverlapPaint:Landroid/graphics/Paint;
    invoke-static {v5}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$3500(Lcom/oneplus/gallery2/MediaSetListFragment;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v4, v13, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 685
    .end local v24    # "minThumbSide":I
    .end local v27    # "srcRect":Landroid/graphics/Rect;
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery2/media/Media;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v23

    if-lt v0, v4, :cond_c

    .line 689
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_b

    .line 692
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 695
    .local v12, "coverImage":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageTempBase:Ljava/util/Map;
    invoke-static {v4}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$3200(Lcom/oneplus/gallery2/MediaSetListFragment;)Ljava/util/Map;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Bitmap;

    .line 696
    .local v11, "coverBase":Landroid/graphics/Bitmap;
    if-eqz v11, :cond_a

    .line 698
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageTempBase:Ljava/util/Map;
    invoke-static {v4}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$3200(Lcom/oneplus/gallery2/MediaSetListFragment;)Ljava/util/Map;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery2/media/Media;

    array-length v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_ColumnCount:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_RowCount:I

    mul-int/2addr v5, v6

    if-ge v4, v5, :cond_a

    .line 703
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery2/media/Media;

    array-length v0, v4

    move/from16 v22, v0

    :goto_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_RowCount:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_ColumnCount:I

    mul-int/2addr v4, v5

    move/from16 v0, v22

    if-ge v0, v4, :cond_9

    .line 706
    new-instance v16, Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-direct {v0, v4, v5, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 707
    .local v16, "emptyDestRect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_ColumnCount:I

    rem-int v17, v22, v4

    .line 708
    .local v17, "emptyOffsetX":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_ColumnCount:I

    div-int v18, v22, v4

    .line 709
    .local v18, "emptyOffsetY":I
    move/from16 v0, v17

    int-to-float v4, v0

    mul-float v4, v4, v21

    const/high16 v5, 0x40800000    # 4.0f

    add-float/2addr v4, v5

    mul-int/lit8 v5, v17, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    move/from16 v0, v18

    int-to-float v5, v0

    mul-float v5, v5, v20

    mul-int/lit8 v6, v18, 0x2

    int-to-float v6, v6

    add-float/2addr v5, v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 710
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_IntermediateCoverCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 712
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    # invokes: Lcom/oneplus/gallery2/MediaSetListFragment;->onCoverImageUpdated(Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;Landroid/graphics/Bitmap;Z)V
    invoke-static {v4, v0, v5, v6}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$1900(Lcom/oneplus/gallery2/MediaSetListFragment;Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;Landroid/graphics/Bitmap;Z)V

    .line 703
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 634
    .end local v11    # "coverBase":Landroid/graphics/Bitmap;
    .end local v12    # "coverImage":Landroid/graphics/Bitmap;
    .end local v13    # "destRect":Landroid/graphics/RectF;
    .end local v16    # "emptyDestRect":Landroid/graphics/RectF;
    .end local v17    # "emptyOffsetX":I
    .end local v18    # "emptyOffsetY":I
    .end local v19    # "emptyPaint":Landroid/graphics/Paint;
    .end local v20    # "gridHeight":F
    .end local v21    # "gridWidth":F
    .end local v25    # "offsetX":I
    .end local v26    # "offsetY":I
    :cond_6
    add-int/lit8 v22, v22, -0x1

    goto/16 :goto_1

    .line 657
    .restart local v10    # "baseCover":Landroid/graphics/Bitmap;
    .restart local v19    # "emptyPaint":Landroid/graphics/Paint;
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    # invokes: Lcom/oneplus/gallery2/MediaSetListFragment;->obtainEmptyCoverImage()Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$3400(Lcom/oneplus/gallery2/MediaSetListFragment;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto/16 :goto_2

    .line 681
    .end local v10    # "baseCover":Landroid/graphics/Bitmap;
    .restart local v13    # "destRect":Landroid/graphics/RectF;
    .restart local v20    # "gridHeight":F
    .restart local v21    # "gridWidth":F
    .restart local v25    # "offsetX":I
    .restart local v26    # "offsetY":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_IntermediateCoverCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, v19

    invoke-virtual {v4, v13, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 716
    .restart local v11    # "coverBase":Landroid/graphics/Bitmap;
    .restart local v12    # "coverImage":Landroid/graphics/Bitmap;
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 722
    :cond_a
    # getter for: Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;
    invoke-static {}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$1800()Lcom/oneplus/cache/HybridBitmapLruCache;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    const/4 v8, 0x1

    # invokes: Lcom/oneplus/gallery2/MediaSetListFragment;->getMediaSetImageKey(Lcom/oneplus/gallery2/media/MediaSet;Z)Ljava/lang/String;
    invoke-static {v5, v6, v8}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$3600(Lcom/oneplus/gallery2/MediaSetListFragment;Lcom/oneplus/gallery2/media/MediaSet;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v12}, Lcom/oneplus/cache/HybridBitmapLruCache;->add(Ljava/io/Serializable;Landroid/graphics/Bitmap;)Z

    .line 723
    # getter for: Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;
    invoke-static {}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$1800()Lcom/oneplus/cache/HybridBitmapLruCache;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    # invokes: Lcom/oneplus/gallery2/MediaSetListFragment;->getMediaSetImageKey(Lcom/oneplus/gallery2/media/MediaSet;)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$1700(Lcom/oneplus/gallery2/MediaSetListFragment;Lcom/oneplus/gallery2/media/MediaSet;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v12}, Lcom/oneplus/cache/HybridBitmapLruCache;->add(Ljava/io/Serializable;Landroid/graphics/Bitmap;)Z

    .line 727
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    # invokes: Lcom/oneplus/gallery2/MediaSetListFragment;->recycleCoverImage(Landroid/graphics/Bitmap;)V
    invoke-static {v4, v5}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$1500(Lcom/oneplus/gallery2/MediaSetListFragment;Landroid/graphics/Bitmap;)V

    .line 728
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    .line 729
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_IntermediateCoverCanvas:Landroid/graphics/Canvas;

    .line 732
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    # invokes: Lcom/oneplus/gallery2/MediaSetListFragment;->onCoverImageUpdated(Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;Landroid/graphics/Bitmap;Z)V
    invoke-static {v4, v0, v12, v5}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$1900(Lcom/oneplus/gallery2/MediaSetListFragment;Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;Landroid/graphics/Bitmap;Z)V

    .line 734
    .end local v11    # "coverBase":Landroid/graphics/Bitmap;
    .end local v12    # "coverImage":Landroid/graphics/Bitmap;
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->complete()V

    goto/16 :goto_0

    .line 736
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    .line 739
    const/4 v7, 0x1

    .line 740
    .local v7, "flags":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_IsHighPriority:Z

    if-eqz v4, :cond_d

    .line 741
    or-int/lit8 v7, v7, 0x2

    .line 742
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_ThumbnailDecodingHandles:Ljava/util/Set;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery2/MediaSetListFragment;->m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;
    invoke-static {v4}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$2900(Lcom/oneplus/gallery2/MediaSetListFragment;)Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery2/media/Media;

    add-int/lit8 v6, v23, 0x1

    aget-object v5, v5, v6

    sget-object v6, Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;->SMALL:Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_ThumbnailDecodingCallback:Lcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    invoke-virtual {v9}, Lcom/oneplus/gallery2/MediaSetListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v9

    invoke-interface/range {v4 .. v9}, Lcom/oneplus/gallery2/media/ThumbnailImageManager;->decodeThumbnailImage(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;ILcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 745
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 746
    .local v14, "currentTime":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_LastCoverImageUpdateTime:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-nez v4, :cond_e

    .line 748
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_LastCoverImageUpdateTime:J

    goto/16 :goto_0

    .line 751
    :cond_e
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_LastCoverImageUpdateTime:J

    sub-long v4, v14, v4

    const-wide/16 v8, 0x12c

    cmp-long v4, v4, v8

    if-ltz v4, :cond_1

    .line 753
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_LastCoverImageUpdateTime:J

    .line 754
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    # invokes: Lcom/oneplus/gallery2/MediaSetListFragment;->onCoverImageUpdated(Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;Landroid/graphics/Bitmap;Z)V
    invoke-static {v4, v0, v5, v6}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$1900(Lcom/oneplus/gallery2/MediaSetListFragment;Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;Landroid/graphics/Bitmap;Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 390
    iget-boolean v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_IsActive:Z

    if-nez v2, :cond_0

    .line 420
    :goto_0
    return-void

    .line 392
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_CacheCheckFuture:Ljava/util/concurrent/Future;

    if-eqz v2, :cond_1

    .line 394
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_CacheCheckFuture:Ljava/util/concurrent/Future;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 395
    iput-object v5, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_CacheCheckFuture:Ljava/util/concurrent/Future;

    .line 396
    iput-object v5, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_CacheCheckRunnable:Ljava/lang/Runnable;

    .line 398
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v2, :cond_2

    .line 400
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v3, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_MediaAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v2, v3, v4}, Lcom/oneplus/gallery2/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 401
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/MediaList;->release()V

    .line 402
    iput-object v5, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    .line 404
    :cond_2
    iput-object v5, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery2/media/Media;

    .line 405
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 407
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    iget-object v3, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    # invokes: Lcom/oneplus/gallery2/MediaSetListFragment;->recycleCoverImage(Landroid/graphics/Bitmap;)V
    invoke-static {v2, v3}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$1500(Lcom/oneplus/gallery2/MediaSetListFragment;Landroid/graphics/Bitmap;)V

    .line 408
    iput-object v5, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    .line 409
    iput-object v5, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_IntermediateCoverCanvas:Landroid/graphics/Canvas;

    .line 411
    :cond_3
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_ThumbnailDecodingHandles:Ljava/util/Set;

    if-eqz v2, :cond_5

    .line 413
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_ThumbnailDecodingHandles:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/Handle;

    .line 414
    .local v0, "handle":Lcom/oneplus/base/Handle;
    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_1

    .line 415
    .end local v0    # "handle":Lcom/oneplus/base/Handle;
    :cond_4
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_ThumbnailDecodingHandles:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 417
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_5
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_IsActive:Z

    .line 418
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    sget-object v3, Lcom/oneplus/gallery2/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v4, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_MediaCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v2, v3, v4}, Lcom/oneplus/gallery2/media/MediaSet;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 419
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    # invokes: Lcom/oneplus/gallery2/MediaSetListFragment;->onCoverImageCreationCompleted(Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;)V
    invoke-static {v2, p0}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$1600(Lcom/oneplus/gallery2/MediaSetListFragment;Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;)V

    goto :goto_0
.end method

.method public createCoverImage()V
    .locals 6

    .prologue
    .line 436
    iget-boolean v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_IsActive:Z

    if-eqz v2, :cond_0

    .line 508
    :goto_0
    return-void

    .line 440
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    iget-object v3, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    # invokes: Lcom/oneplus/gallery2/MediaSetListFragment;->getMediaSetImageKey(Lcom/oneplus/gallery2/media/MediaSet;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$1700(Lcom/oneplus/gallery2/MediaSetListFragment;Lcom/oneplus/gallery2/media/MediaSet;)Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, "coverImageKey":Ljava/lang/String;
    # getter for: Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;
    invoke-static {}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$1800()Lcom/oneplus/cache/HybridBitmapLruCache;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/oneplus/cache/HybridBitmapLruCache;->get(Ljava/io/Serializable;Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 442
    .local v1, "initCoverImage":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 446
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    const/4 v3, 0x0

    # invokes: Lcom/oneplus/gallery2/MediaSetListFragment;->onCoverImageUpdated(Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;Landroid/graphics/Bitmap;Z)V
    invoke-static {v2, p0, v1, v3}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$1900(Lcom/oneplus/gallery2/MediaSetListFragment;Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;Landroid/graphics/Bitmap;Z)V

    .line 447
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->complete()V

    goto :goto_0

    .line 452
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_IsActive:Z

    .line 457
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    sget-object v3, Lcom/oneplus/gallery2/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/oneplus/gallery2/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_MediaCount:Ljava/lang/Integer;

    .line 458
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    sget-object v3, Lcom/oneplus/gallery2/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v4, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_MediaCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v2, v3, v4}, Lcom/oneplus/gallery2/media/MediaSet;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 461
    new-instance v2, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$3;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$3;-><init>(Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;)V

    iput-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_CacheCheckRunnable:Ljava/lang/Runnable;

    .line 507
    # getter for: Lcom/oneplus/gallery2/MediaSetListFragment;->m_CacheImageLoaderExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$2400()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_CacheCheckRunnable:Ljava/lang/Runnable;

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_CacheCheckFuture:Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 556
    iget-boolean v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_IsActive:Z

    return v0
.end method

.method public setPriority(Z)V
    .locals 3
    .param p1, "isHighPriority"    # Z

    .prologue
    .line 762
    iget-boolean v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_IsHighPriority:Z

    if-ne v2, p1, :cond_1

    .line 784
    :cond_0
    :goto_0
    return-void

    .line 766
    :cond_1
    iput-boolean p1, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_IsHighPriority:Z

    .line 769
    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_IsActive:Z

    if-eqz v2, :cond_0

    .line 776
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_ThumbnailDecodingHandles:Ljava/util/Set;

    if-eqz v2, :cond_0

    .line 778
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_ThumbnailDecodingHandles:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/Handle;

    .line 779
    .local v0, "handle":Lcom/oneplus/base/Handle;
    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_1

    .line 780
    .end local v0    # "handle":Lcom/oneplus/base/Handle;
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_ThumbnailDecodingHandles:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 781
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery2/media/Media;

    if-eqz v2, :cond_0

    .line 782
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->onReadyToCreateCoverImage()V

    goto :goto_0
.end method
