.class final Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;
.super Ljava/lang/Object;
.source "MediaSetListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/MediaSetListFragment;
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

.field private m_ContainsInvalidThumbnailImages:Z

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
            "Lcom/oneplus/gallery/ListChangeEventArgs;",
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

.field private m_MediaList:Lcom/oneplus/gallery/media/MediaList;

.field private m_ReadyMediaList:[Lcom/oneplus/gallery/media/Media;

.field private m_RowCount:I

.field private m_TargetMediaCount:I

.field private m_ThumbnailDecodingCallback:Lcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;

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

.field public final mediaSet:Lcom/oneplus/gallery/media/MediaSet;

.field final synthetic this$0:Lcom/oneplus/gallery/MediaSetListFragment;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/gallery/media/MediaSet;II)V
    .locals 1
    .param p2, "mediaSet"    # Lcom/oneplus/gallery/media/MediaSet;
    .param p3, "columnCount"    # I
    .param p4, "rowCount"    # I

    .prologue
    .line 447
    iput-object p1, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    new-instance v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask$1;-><init>(Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;)V

    iput-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_MediaAddedHandler:Lcom/oneplus/base/EventHandler;

    .line 434
    new-instance v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask$2;-><init>(Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;)V

    iput-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_MediaCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 448
    iput-object p2, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    .line 449
    iput p3, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_ColumnCount:I

    .line 450
    iput p4, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_RowCount:I

    .line 451
    mul-int v0, p3, p4

    iput v0, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_TargetMediaCount:I

    .line 452
    return-void
.end method

.method static synthetic access$1400(Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;

    .prologue
    .line 404
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->onMediaListChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1502(Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 404
    iput-object p1, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_MediaCount:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;)Lcom/oneplus/gallery/media/MediaList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;

    .prologue
    .line 404
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;

    .prologue
    .line 404
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_CacheCheckRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 404
    iput-object p1, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_CacheCheckRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;
    .param p1, "x1"    # Ljava/util/concurrent/Future;

    .prologue
    .line 404
    iput-object p1, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_CacheCheckFuture:Ljava/util/concurrent/Future;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;

    .prologue
    .line 404
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->complete()V

    return-void
.end method

.method static synthetic access$2400(Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;

    .prologue
    .line 404
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->createCoverImageFromMediaList()V

    return-void
.end method

.method static synthetic access$3100(Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;Lcom/oneplus/base/Handle;Lcom/oneplus/gallery/media/Media;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;
    .param p2, "x2"    # Lcom/oneplus/gallery/media/Media;
    .param p3, "x3"    # Landroid/graphics/Bitmap;

    .prologue
    .line 404
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->onThumbnailImageDecoded(Lcom/oneplus/base/Handle;Lcom/oneplus/gallery/media/Media;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private complete()V
    .locals 3

    .prologue
    .line 493
    iget-boolean v0, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_IsActive:Z

    if-nez v0, :cond_0

    .line 498
    :goto_0
    return-void

    .line 495
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_IsActive:Z

    .line 496
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    sget-object v1, Lcom/oneplus/gallery/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_MediaCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery/media/MediaSet;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 497
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    # invokes: Lcom/oneplus/gallery/MediaSetListFragment;->onCoverImageCreationCompleted(Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;)V
    invoke-static {v0, p0}, Lcom/oneplus/gallery/MediaSetListFragment;->access$1800(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;)V

    goto :goto_0
.end method

.method private createCoverImageFromMediaList()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 582
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-eqz v1, :cond_0

    .line 584
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery/MediaSetListFragment;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/gallery/MediaSetListFragment;->access$2600(Lcom/oneplus/gallery/MediaSetListFragment;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createCoverImageFromMediaList() - Media list of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    invoke-interface {v3}, Lcom/oneplus/gallery/media/MediaSet;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is already opened"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    sget-object v2, Lcom/oneplus/gallery/media/MediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_MediaAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v1, v2, v3}, Lcom/oneplus/gallery/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 586
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v1}, Lcom/oneplus/gallery/media/MediaList;->release()V

    .line 594
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    sget-object v2, Lcom/oneplus/gallery/media/MediaSet;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/gallery/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 596
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery/MediaSetListFragment;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/gallery/MediaSetListFragment;->access$2700(Lcom/oneplus/gallery/MediaSetListFragment;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createCoverImageFromMediaList() - Media set "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    invoke-interface {v3}, Lcom/oneplus/gallery/media/MediaSet;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has been rleased"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    :goto_0
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-nez v1, :cond_3

    .line 609
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery/MediaSetListFragment;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/gallery/MediaSetListFragment;->access$2900(Lcom/oneplus/gallery/MediaSetListFragment;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createCoverImageFromMediaList() - Fail to open media list of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->complete()V

    .line 619
    :cond_1
    :goto_1
    return-void

    .line 600
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    sget-object v2, Lcom/oneplus/gallery/media/MediaComparator;->TAKEN_TIME:Lcom/oneplus/gallery/media/MediaComparator;

    iget v3, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_TargetMediaCount:I

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/oneplus/gallery/media/MediaSet;->openMediaList(Lcom/oneplus/gallery/media/MediaComparator;II)Lcom/oneplus/gallery/media/MediaList;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 602
    :catch_0
    move-exception v0

    .line 604
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery/MediaSetListFragment;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/gallery/MediaSetListFragment;->access$2800(Lcom/oneplus/gallery/MediaSetListFragment;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createCoverImageFromMediaList() - Fail to open media list of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    invoke-interface {v3}, Lcom/oneplus/gallery/media/MediaSet;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 605
    iput-object v5, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    goto :goto_0

    .line 613
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->onMediaListChanged()Z

    move-result v1

    if-nez v1, :cond_1

    .line 617
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    sget-object v2, Lcom/oneplus/gallery/media/MediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_MediaAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v1, v2, v3}, Lcom/oneplus/gallery/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    goto :goto_1
.end method

.method private onMediaListChanged()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 630
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v2}, Lcom/oneplus/gallery/media/MediaList;->size()I

    move-result v1

    .line 631
    .local v1, "listSize":I
    const/4 v0, 0x0

    .line 632
    .local v0, "isReady":Z
    iget v2, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_TargetMediaCount:I

    if-lt v1, v2, :cond_2

    .line 634
    iget v2, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_TargetMediaCount:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 635
    const/4 v0, 0x1

    .line 642
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    iget-boolean v2, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_IsActive:Z

    if-nez v2, :cond_4

    .line 644
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    new-array v3, v1, [Lcom/oneplus/gallery/media/Media;

    invoke-interface {v2, v3}, Lcom/oneplus/gallery/media/MediaList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/oneplus/gallery/media/Media;

    iput-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery/media/Media;

    .line 645
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    sget-object v3, Lcom/oneplus/gallery/media/MediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_MediaAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v2, v3, v4}, Lcom/oneplus/gallery/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 646
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v2}, Lcom/oneplus/gallery/media/MediaList;->release()V

    .line 647
    iput-object v5, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    .line 648
    iget-boolean v2, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_IsActive:Z

    if-eqz v2, :cond_3

    .line 652
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->onReadyToCreateCoverImage()V

    .line 656
    :goto_1
    const/4 v2, 0x1

    .line 658
    :goto_2
    return v2

    .line 637
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_MediaCount:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_MediaCount:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 639
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_MediaCount:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 640
    const/4 v0, 0x1

    goto :goto_0

    .line 655
    :cond_3
    iput-object v5, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery/media/Media;

    goto :goto_1

    .line 658
    :cond_4
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private onReadyToCreateCoverImage()V
    .locals 6

    .prologue
    .line 664
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery/media/Media;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery/MediaSetListFragment;->m_ThumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;
    invoke-static {v1}, Lcom/oneplus/gallery/MediaSetListFragment;->access$3000(Lcom/oneplus/gallery/MediaSetListFragment;)Lcom/oneplus/gallery/media/ThumbnailImageManager;

    move-result-object v1

    if-nez v1, :cond_1

    .line 666
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->complete()V

    .line 689
    :goto_0
    return-void

    .line 669
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_ThumbnailDecodingHandles:Ljava/util/Set;

    if-nez v1, :cond_2

    .line 670
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_ThumbnailDecodingHandles:Ljava/util/Set;

    .line 671
    :cond_2
    const/4 v0, 0x1

    .line 672
    .local v0, "flags":I
    iget-boolean v1, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_IsHighPriority:Z

    if-eqz v1, :cond_3

    .line 673
    or-int/lit8 v0, v0, 0x2

    .line 674
    :cond_3
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_ThumbnailDecodingCallback:Lcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;

    if-nez v1, :cond_4

    .line 676
    new-instance v1, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask$4;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask$4;-><init>(Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;)V

    iput-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_ThumbnailDecodingCallback:Lcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;

    .line 685
    :cond_4
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery/media/Media;

    array-length v1, v1

    if-lez v1, :cond_5

    .line 686
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_ThumbnailDecodingHandles:Ljava/util/Set;

    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery/MediaSetListFragment;->m_ThumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;
    invoke-static {v2}, Lcom/oneplus/gallery/MediaSetListFragment;->access$3000(Lcom/oneplus/gallery/MediaSetListFragment;)Lcom/oneplus/gallery/media/ThumbnailImageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery/media/Media;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_ThumbnailDecodingCallback:Lcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;

    iget-object v5, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    invoke-virtual {v5}, Lcom/oneplus/gallery/MediaSetListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-interface {v2, v3, v0, v4, v5}, Lcom/oneplus/gallery/media/ThumbnailImageManager;->decodeSmallThumbnailImage(Lcom/oneplus/gallery/media/Media;ILcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 688
    :cond_5
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->complete()V

    goto :goto_0
.end method

.method private onThumbnailImageDecoded(Lcom/oneplus/base/Handle;Lcom/oneplus/gallery/media/Media;Landroid/graphics/Bitmap;)V
    .locals 22
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p3, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_ThumbnailDecodingHandles:Ljava/util/Set;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_ThumbnailDecodingHandles:Ljava/util/Set;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 699
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery/media/Media;

    move-object/from16 v17, v0

    if-nez v17, :cond_2

    .line 789
    :cond_1
    :goto_0
    return-void

    .line 701
    :cond_2
    const/4 v12, -0x1

    .line 702
    .local v12, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery/media/Media;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v11, v17, -0x1

    .local v11, "i":I
    :goto_1
    if-ltz v11, :cond_3

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery/media/Media;

    move-object/from16 v17, v0

    aget-object v17, v17, v11

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_7

    .line 706
    move v12, v11

    .line 710
    :cond_3
    if-ltz v12, :cond_1

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-nez v17, :cond_4

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    move-object/from16 v17, v0

    # invokes: Lcom/oneplus/gallery/MediaSetListFragment;->obtainEmptyCoverImage()Landroid/graphics/Bitmap;
    invoke-static/range {v17 .. v17}, Lcom/oneplus/gallery/MediaSetListFragment;->access$3200(Lcom/oneplus/gallery/MediaSetListFragment;)Landroid/graphics/Bitmap;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    .line 717
    new-instance v17, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_IntermediateCoverCanvas:Landroid/graphics/Canvas;

    .line 721
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    add-int/lit8 v17, v17, -0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_ColumnCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    mul-int/lit8 v18, v18, 0x2

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_ColumnCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v10, v17, v18

    .line 722
    .local v10, "gridWidth":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    add-int/lit8 v17, v17, -0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_RowCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    mul-int/lit8 v18, v18, 0x2

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_RowCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v9, v17, v18

    .line 723
    .local v9, "gridHeight":F
    new-instance v5, Landroid/graphics/RectF;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v5, v0, v1, v10, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 724
    .local v5, "destRect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_ColumnCount:I

    move/from16 v17, v0

    rem-int v14, v12, v17

    .line 725
    .local v14, "offsetX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_ColumnCount:I

    move/from16 v17, v0

    div-int v15, v12, v17

    .line 726
    .local v15, "offsetY":I
    int-to-float v0, v14

    move/from16 v17, v0

    mul-float v17, v17, v10

    const/high16 v18, 0x40800000    # 4.0f

    add-float v17, v17, v18

    mul-int/lit8 v18, v14, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v17, v17, v18

    int-to-float v0, v15

    move/from16 v18, v0

    mul-float v18, v18, v9

    mul-int/lit8 v19, v15, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 729
    if-eqz p3, :cond_8

    .line 731
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 732
    .local v13, "minThumbSide":I
    new-instance v16, Landroid/graphics/Rect;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v13, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 733
    .local v16, "srcRect":Landroid/graphics/Rect;
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    sub-int v17, v17, v13

    div-int/lit8 v17, v17, 0x2

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    sub-int v18, v18, v13

    div-int/lit8 v18, v18, 0x2

    invoke-virtual/range {v16 .. v18}, Landroid/graphics/Rect;->offset(II)V

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_IntermediateCoverCanvas:Landroid/graphics/Canvas;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move-object/from16 v2, v16

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_IntermediateCoverCanvas:Landroid/graphics/Canvas;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    move-object/from16 v18, v0

    # getter for: Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverImageOverlapPaint:Landroid/graphics/Paint;
    invoke-static/range {v18 .. v18}, Lcom/oneplus/gallery/MediaSetListFragment;->access$3300(Lcom/oneplus/gallery/MediaSetListFragment;)Landroid/graphics/Paint;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 744
    .end local v13    # "minThumbSide":I
    .end local v16    # "srcRect":Landroid/graphics/Rect;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery/media/Media;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-lt v12, v0, :cond_9

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 752
    .local v4, "coverImage":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    # invokes: Lcom/oneplus/gallery/MediaSetListFragment;->recycleCoverImage(Landroid/graphics/Bitmap;)V
    invoke-static/range {v17 .. v18}, Lcom/oneplus/gallery/MediaSetListFragment;->access$1700(Lcom/oneplus/gallery/MediaSetListFragment;Landroid/graphics/Bitmap;)V

    .line 753
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    .line 754
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_IntermediateCoverCanvas:Landroid/graphics/Canvas;

    .line 757
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_ContainsInvalidThumbnailImages:Z

    move/from16 v17, v0

    if-nez v17, :cond_5

    .line 759
    # getter for: Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;
    invoke-static {}, Lcom/oneplus/gallery/MediaSetListFragment;->access$1200()Lcom/oneplus/cache/HybridBitmapLruCache;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    # invokes: Lcom/oneplus/gallery/MediaSetListFragment;->getMediaSetImageKey(Lcom/oneplus/gallery/media/MediaSet;Z)Ljava/lang/String;
    invoke-static/range {v18 .. v20}, Lcom/oneplus/gallery/MediaSetListFragment;->access$3400(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/gallery/media/MediaSet;Z)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Lcom/oneplus/cache/HybridBitmapLruCache;->add(Ljava/io/Serializable;Landroid/graphics/Bitmap;)Z

    .line 760
    # getter for: Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;
    invoke-static {}, Lcom/oneplus/gallery/MediaSetListFragment;->access$1200()Lcom/oneplus/cache/HybridBitmapLruCache;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    move-object/from16 v19, v0

    # invokes: Lcom/oneplus/gallery/MediaSetListFragment;->getMediaSetImageKey(Lcom/oneplus/gallery/media/MediaSet;)Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/oneplus/gallery/MediaSetListFragment;->access$1900(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/gallery/media/MediaSet;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Lcom/oneplus/cache/HybridBitmapLruCache;->add(Ljava/io/Serializable;Landroid/graphics/Bitmap;)Z

    .line 764
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    # invokes: Lcom/oneplus/gallery/MediaSetListFragment;->onCoverImageUpdated(Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;Landroid/graphics/Bitmap;Z)V
    invoke-static {v0, v1, v4, v2}, Lcom/oneplus/gallery/MediaSetListFragment;->access$2000(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;Landroid/graphics/Bitmap;Z)V

    .line 766
    .end local v4    # "coverImage":Landroid/graphics/Bitmap;
    :cond_6
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_ContainsInvalidThumbnailImages:Z

    .line 767
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->complete()V

    goto/16 :goto_0

    .line 702
    .end local v5    # "destRect":Landroid/graphics/RectF;
    .end local v9    # "gridHeight":F
    .end local v10    # "gridWidth":F
    .end local v14    # "offsetX":I
    .end local v15    # "offsetY":I
    :cond_7
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_1

    .line 739
    .restart local v5    # "destRect":Landroid/graphics/RectF;
    .restart local v9    # "gridHeight":F
    .restart local v10    # "gridWidth":F
    .restart local v14    # "offsetX":I
    .restart local v15    # "offsetY":I
    :cond_8
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_ContainsInvalidThumbnailImages:Z

    .line 740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    move-object/from16 v18, v0

    # invokes: Lcom/oneplus/gallery/MediaSetListFragment;->removeImageInCache(Lcom/oneplus/gallery/media/MediaSet;)V
    invoke-static/range {v17 .. v18}, Lcom/oneplus/gallery/MediaSetListFragment;->access$1000(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/gallery/media/MediaSet;)V

    goto/16 :goto_2

    .line 769
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 772
    const/4 v8, 0x1

    .line 773
    .local v8, "flags":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_IsHighPriority:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a

    .line 774
    or-int/lit8 v8, v8, 0x2

    .line 775
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_ThumbnailDecodingHandles:Ljava/util/Set;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    move-object/from16 v18, v0

    # getter for: Lcom/oneplus/gallery/MediaSetListFragment;->m_ThumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;
    invoke-static/range {v18 .. v18}, Lcom/oneplus/gallery/MediaSetListFragment;->access$3000(Lcom/oneplus/gallery/MediaSetListFragment;)Lcom/oneplus/gallery/media/ThumbnailImageManager;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery/media/Media;

    move-object/from16 v19, v0

    add-int/lit8 v20, v12, 0x1

    aget-object v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_ThumbnailDecodingCallback:Lcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/oneplus/gallery/MediaSetListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-interface {v0, v1, v8, v2, v3}, Lcom/oneplus/gallery/media/ThumbnailImageManager;->decodeSmallThumbnailImage(Lcom/oneplus/gallery/media/Media;ILcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 778
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 779
    .local v6, "currentTime":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_LastCoverImageUpdateTime:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v17, v18, v20

    if-nez v17, :cond_b

    .line 781
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_LastCoverImageUpdateTime:J

    goto/16 :goto_0

    .line 784
    :cond_b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_LastCoverImageUpdateTime:J

    move-wide/from16 v18, v0

    sub-long v18, v6, v18

    const-wide/16 v20, 0x12c

    cmp-long v17, v18, v20

    if-ltz v17, :cond_1

    .line 786
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_LastCoverImageUpdateTime:J

    .line 787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move/from16 v3, v19

    # invokes: Lcom/oneplus/gallery/MediaSetListFragment;->onCoverImageUpdated(Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;Landroid/graphics/Bitmap;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/gallery/MediaSetListFragment;->access$2000(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;Landroid/graphics/Bitmap;Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 457
    iget-boolean v2, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_IsActive:Z

    if-nez v2, :cond_0

    .line 488
    :goto_0
    return-void

    .line 459
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_CacheCheckFuture:Ljava/util/concurrent/Future;

    if-eqz v2, :cond_1

    .line 461
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_CacheCheckFuture:Ljava/util/concurrent/Future;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 462
    iput-object v5, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_CacheCheckFuture:Ljava/util/concurrent/Future;

    .line 463
    iput-object v5, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_CacheCheckRunnable:Ljava/lang/Runnable;

    .line 465
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-eqz v2, :cond_2

    .line 467
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    sget-object v3, Lcom/oneplus/gallery/media/MediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_MediaAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v2, v3, v4}, Lcom/oneplus/gallery/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 468
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v2}, Lcom/oneplus/gallery/media/MediaList;->release()V

    .line 469
    iput-object v5, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    .line 471
    :cond_2
    iput-object v5, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery/media/Media;

    .line 472
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 474
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    # invokes: Lcom/oneplus/gallery/MediaSetListFragment;->recycleCoverImage(Landroid/graphics/Bitmap;)V
    invoke-static {v2, v3}, Lcom/oneplus/gallery/MediaSetListFragment;->access$1700(Lcom/oneplus/gallery/MediaSetListFragment;Landroid/graphics/Bitmap;)V

    .line 475
    iput-object v5, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    .line 476
    iput-object v5, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_IntermediateCoverCanvas:Landroid/graphics/Canvas;

    .line 478
    :cond_3
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_ThumbnailDecodingHandles:Ljava/util/Set;

    if-eqz v2, :cond_5

    .line 480
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_ThumbnailDecodingHandles:Ljava/util/Set;

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

    .line 481
    .local v0, "handle":Lcom/oneplus/base/Handle;
    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_1

    .line 482
    .end local v0    # "handle":Lcom/oneplus/base/Handle;
    :cond_4
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_ThumbnailDecodingHandles:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 484
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_5
    iput-boolean v6, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_ContainsInvalidThumbnailImages:Z

    .line 485
    iput-boolean v6, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_IsActive:Z

    .line 486
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    sget-object v3, Lcom/oneplus/gallery/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_MediaCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v2, v3, v4}, Lcom/oneplus/gallery/media/MediaSet;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 487
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    # invokes: Lcom/oneplus/gallery/MediaSetListFragment;->onCoverImageCreationCompleted(Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;)V
    invoke-static {v2, p0}, Lcom/oneplus/gallery/MediaSetListFragment;->access$1800(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;)V

    goto :goto_0
.end method

.method public createCoverImage()V
    .locals 6

    .prologue
    .line 504
    iget-boolean v2, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_IsActive:Z

    if-eqz v2, :cond_0

    .line 576
    :goto_0
    return-void

    .line 508
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    # invokes: Lcom/oneplus/gallery/MediaSetListFragment;->getMediaSetImageKey(Lcom/oneplus/gallery/media/MediaSet;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/oneplus/gallery/MediaSetListFragment;->access$1900(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/gallery/media/MediaSet;)Ljava/lang/String;

    move-result-object v0

    .line 509
    .local v0, "coverImageKey":Ljava/lang/String;
    # getter for: Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;
    invoke-static {}, Lcom/oneplus/gallery/MediaSetListFragment;->access$1200()Lcom/oneplus/cache/HybridBitmapLruCache;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/oneplus/cache/HybridBitmapLruCache;->get(Ljava/io/Serializable;Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 510
    .local v1, "initCoverImage":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 514
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    const/4 v3, 0x0

    # invokes: Lcom/oneplus/gallery/MediaSetListFragment;->onCoverImageUpdated(Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;Landroid/graphics/Bitmap;Z)V
    invoke-static {v2, p0, v1, v3}, Lcom/oneplus/gallery/MediaSetListFragment;->access$2000(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;Landroid/graphics/Bitmap;Z)V

    .line 515
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->complete()V

    goto :goto_0

    .line 520
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_IsActive:Z

    .line 525
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    sget-object v3, Lcom/oneplus/gallery/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/oneplus/gallery/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_MediaCount:Ljava/lang/Integer;

    .line 526
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    sget-object v3, Lcom/oneplus/gallery/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_MediaCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v2, v3, v4}, Lcom/oneplus/gallery/media/MediaSet;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 529
    new-instance v2, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask$3;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask$3;-><init>(Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;)V

    iput-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_CacheCheckRunnable:Ljava/lang/Runnable;

    .line 575
    # getter for: Lcom/oneplus/gallery/MediaSetListFragment;->m_CacheImageLoaderExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {}, Lcom/oneplus/gallery/MediaSetListFragment;->access$2500()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_CacheCheckRunnable:Ljava/lang/Runnable;

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_CacheCheckFuture:Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 624
    iget-boolean v0, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_IsActive:Z

    return v0
.end method

.method public setPriority(Z)V
    .locals 3
    .param p1, "isHighPriority"    # Z

    .prologue
    .line 795
    iget-boolean v2, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_IsHighPriority:Z

    if-ne v2, p1, :cond_1

    .line 817
    :cond_0
    :goto_0
    return-void

    .line 799
    :cond_1
    iput-boolean p1, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_IsHighPriority:Z

    .line 802
    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_IsActive:Z

    if-eqz v2, :cond_0

    .line 809
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_ThumbnailDecodingHandles:Ljava/util/Set;

    if-eqz v2, :cond_0

    .line 811
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_ThumbnailDecodingHandles:Ljava/util/Set;

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

    .line 812
    .local v0, "handle":Lcom/oneplus/base/Handle;
    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_1

    .line 813
    .end local v0    # "handle":Lcom/oneplus/base/Handle;
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_ThumbnailDecodingHandles:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 814
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery/media/Media;

    if-eqz v2, :cond_0

    .line 815
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->onReadyToCreateCoverImage()V

    goto :goto_0
.end method
