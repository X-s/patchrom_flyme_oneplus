.class final Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;
.super Ljava/lang/Object;
.source "MediaSetPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/MediaSetPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CoverImageCreationTask"
.end annotation


# instance fields
.field private m_ContainsInvalidThumbnailImages:Z

.field private m_IntermediateCoverCanvas:Landroid/graphics/Canvas;

.field private m_IntermediateCoverImage:Landroid/graphics/Bitmap;

.field private m_IsActive:Z

.field private m_IsHighPriority:Z

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

.field final synthetic this$0:Lcom/oneplus/gallery/MediaSetPickerFragment;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/MediaSetPickerFragment;Lcom/oneplus/gallery/media/MediaSet;)V
    .locals 1
    .param p2, "mediaSet"    # Lcom/oneplus/gallery/media/MediaSet;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery/MediaSetPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    new-instance v0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask$1;-><init>(Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;)V

    iput-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaAddedHandler:Lcom/oneplus/base/EventHandler;

    .line 350
    new-instance v0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask$2;-><init>(Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;)V

    iput-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 364
    iput-object p2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    .line 365
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_TargetMediaCount:I

    .line 366
    return-void
.end method

.method static synthetic access$1100(Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->onMediaListChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1202(Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaCount:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;)Lcom/oneplus/gallery/media/MediaList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;

    .prologue
    .line 325
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;Lcom/oneplus/base/Handle;Lcom/oneplus/gallery/media/Media;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;
    .param p2, "x2"    # Lcom/oneplus/gallery/media/Media;
    .param p3, "x3"    # Landroid/graphics/Bitmap;

    .prologue
    .line 325
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->onThumbnailImageDecoded(Lcom/oneplus/base/Handle;Lcom/oneplus/gallery/media/Media;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private complete()V
    .locals 3

    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_IsActive:Z

    if-nez v0, :cond_0

    .line 407
    :goto_0
    return-void

    .line 404
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_IsActive:Z

    .line 405
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    sget-object v1, Lcom/oneplus/gallery/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery/media/MediaSet;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 406
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery/MediaSetPickerFragment;

    # invokes: Lcom/oneplus/gallery/MediaSetPickerFragment;->onCoverImageCreationCompleted(Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;)V
    invoke-static {v0, p0}, Lcom/oneplus/gallery/MediaSetPickerFragment;->access$1500(Lcom/oneplus/gallery/MediaSetPickerFragment;Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;)V

    goto :goto_0
.end method

.method private createCoverImageFromMediaList()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 433
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-eqz v2, :cond_0

    .line 435
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery/MediaSetPickerFragment;

    # getter for: Lcom/oneplus/gallery/MediaSetPickerFragment;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/gallery/MediaSetPickerFragment;->access$1600(Lcom/oneplus/gallery/MediaSetPickerFragment;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createCoverImageFromMediaList() - Media list of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    invoke-interface {v4}, Lcom/oneplus/gallery/media/MediaSet;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is already opened"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    sget-object v3, Lcom/oneplus/gallery/media/MediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v2, v3, v4}, Lcom/oneplus/gallery/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 437
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v2}, Lcom/oneplus/gallery/media/MediaList;->release()V

    .line 445
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    sget-object v3, Lcom/oneplus/gallery/media/MediaSet;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/oneplus/gallery/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 447
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery/MediaSetPickerFragment;

    # getter for: Lcom/oneplus/gallery/MediaSetPickerFragment;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/gallery/MediaSetPickerFragment;->access$1700(Lcom/oneplus/gallery/MediaSetPickerFragment;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createCoverImageFromMediaList() - Media set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    invoke-interface {v4}, Lcom/oneplus/gallery/media/MediaSet;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has been rleased"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    :goto_0
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-nez v2, :cond_4

    .line 475
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery/MediaSetPickerFragment;

    # getter for: Lcom/oneplus/gallery/MediaSetPickerFragment;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/gallery/MediaSetPickerFragment;->access$2000(Lcom/oneplus/gallery/MediaSetPickerFragment;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createCoverImageFromMediaList() - Fail to open media list of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->complete()V

    .line 485
    :cond_1
    :goto_1
    return-void

    .line 453
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery/MediaSetPickerFragment;

    # getter for: Lcom/oneplus/gallery/MediaSetPickerFragment;->m_CoverMediaTable:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/oneplus/gallery/MediaSetPickerFragment;->access$1800(Lcom/oneplus/gallery/MediaSetPickerFragment;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/Media;

    .line 455
    .local v0, "coverMedia":Lcom/oneplus/gallery/media/Media;
    if-nez v0, :cond_3

    .line 456
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    sget-object v3, Lcom/oneplus/gallery/media/MediaComparator;->TAKEN_TIME:Lcom/oneplus/gallery/media/MediaComparator;

    iget v4, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_TargetMediaCount:I

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/oneplus/gallery/media/MediaSet;->openMediaList(Lcom/oneplus/gallery/media/MediaComparator;II)Lcom/oneplus/gallery/media/MediaList;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 468
    .end local v0    # "coverMedia":Lcom/oneplus/gallery/media/Media;
    :catch_0
    move-exception v1

    .line 470
    .local v1, "ex":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery/MediaSetPickerFragment;

    # getter for: Lcom/oneplus/gallery/MediaSetPickerFragment;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/gallery/MediaSetPickerFragment;->access$1900(Lcom/oneplus/gallery/MediaSetPickerFragment;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createCoverImageFromMediaList() - Fail to open media list of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    invoke-interface {v4}, Lcom/oneplus/gallery/media/MediaSet;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 471
    iput-object v6, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    goto :goto_0

    .line 459
    .end local v1    # "ex":Ljava/lang/Throwable;
    .restart local v0    # "coverMedia":Lcom/oneplus/gallery/media/Media;
    :cond_3
    const/4 v2, 0x1

    :try_start_2
    new-array v2, v2, [Lcom/oneplus/gallery/media/Media;

    iput-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery/media/Media;

    .line 460
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery/media/Media;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 463
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->onReadyToCreateCoverImage()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 479
    .end local v0    # "coverMedia":Lcom/oneplus/gallery/media/Media;
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->onMediaListChanged()Z

    move-result v2

    if-nez v2, :cond_1

    .line 483
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    sget-object v3, Lcom/oneplus/gallery/media/MediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v2, v3, v4}, Lcom/oneplus/gallery/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    goto :goto_1
.end method

.method private onMediaListChanged()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 496
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v2}, Lcom/oneplus/gallery/media/MediaList;->size()I

    move-result v1

    .line 497
    .local v1, "listSize":I
    const/4 v0, 0x0

    .line 498
    .local v0, "isReady":Z
    iget v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_TargetMediaCount:I

    if-lt v1, v2, :cond_3

    .line 500
    iget v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_TargetMediaCount:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 501
    const/4 v0, 0x1

    .line 508
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    iget-boolean v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_IsActive:Z

    if-nez v2, :cond_5

    .line 510
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    new-array v4, v1, [Lcom/oneplus/gallery/media/Media;

    invoke-interface {v2, v4}, Lcom/oneplus/gallery/media/MediaList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/oneplus/gallery/media/Media;

    iput-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery/media/Media;

    .line 513
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery/media/Media;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery/media/Media;

    array-length v2, v2

    if-lez v2, :cond_2

    .line 514
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery/MediaSetPickerFragment;

    # getter for: Lcom/oneplus/gallery/MediaSetPickerFragment;->m_CoverMediaTable:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/oneplus/gallery/MediaSetPickerFragment;->access$1800(Lcom/oneplus/gallery/MediaSetPickerFragment;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    iget-object v5, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery/media/Media;

    aget-object v3, v5, v3

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    sget-object v3, Lcom/oneplus/gallery/media/MediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v2, v3, v4}, Lcom/oneplus/gallery/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 517
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v2}, Lcom/oneplus/gallery/media/MediaList;->release()V

    .line 518
    iput-object v6, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    .line 519
    iget-boolean v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_IsActive:Z

    if-eqz v2, :cond_4

    .line 523
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->onReadyToCreateCoverImage()V

    .line 527
    :goto_1
    const/4 v2, 0x1

    .line 529
    :goto_2
    return v2

    .line 503
    :cond_3
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaCount:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaCount:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 505
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaCount:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 506
    const/4 v0, 0x1

    goto :goto_0

    .line 526
    :cond_4
    iput-object v6, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery/media/Media;

    goto :goto_1

    :cond_5
    move v2, v3

    .line 529
    goto :goto_2
.end method

.method private onReadyToCreateCoverImage()V
    .locals 6

    .prologue
    .line 535
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery/media/Media;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery/MediaSetPickerFragment;

    # getter for: Lcom/oneplus/gallery/MediaSetPickerFragment;->m_ThumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;
    invoke-static {v1}, Lcom/oneplus/gallery/MediaSetPickerFragment;->access$2100(Lcom/oneplus/gallery/MediaSetPickerFragment;)Lcom/oneplus/gallery/media/ThumbnailImageManager;

    move-result-object v1

    if-nez v1, :cond_1

    .line 537
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->complete()V

    .line 560
    :goto_0
    return-void

    .line 540
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_ThumbnailDecodingHandles:Ljava/util/Set;

    if-nez v1, :cond_2

    .line 541
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_ThumbnailDecodingHandles:Ljava/util/Set;

    .line 542
    :cond_2
    const/4 v0, 0x1

    .line 543
    .local v0, "flags":I
    iget-boolean v1, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_IsHighPriority:Z

    if-eqz v1, :cond_3

    .line 544
    or-int/lit8 v0, v0, 0x2

    .line 545
    :cond_3
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_ThumbnailDecodingCallback:Lcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;

    if-nez v1, :cond_4

    .line 547
    new-instance v1, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask$3;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask$3;-><init>(Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;)V

    iput-object v1, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_ThumbnailDecodingCallback:Lcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;

    .line 556
    :cond_4
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery/media/Media;

    array-length v1, v1

    if-lez v1, :cond_5

    .line 557
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_ThumbnailDecodingHandles:Ljava/util/Set;

    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery/MediaSetPickerFragment;

    # getter for: Lcom/oneplus/gallery/MediaSetPickerFragment;->m_ThumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;
    invoke-static {v2}, Lcom/oneplus/gallery/MediaSetPickerFragment;->access$2100(Lcom/oneplus/gallery/MediaSetPickerFragment;)Lcom/oneplus/gallery/media/ThumbnailImageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery/media/Media;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_ThumbnailDecodingCallback:Lcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;

    iget-object v5, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery/MediaSetPickerFragment;

    invoke-virtual {v5}, Lcom/oneplus/gallery/MediaSetPickerFragment;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-interface {v2, v3, v0, v4, v5}, Lcom/oneplus/gallery/media/ThumbnailImageManager;->decodeSmallThumbnailImage(Lcom/oneplus/gallery/media/Media;ILcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 559
    :cond_5
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->complete()V

    goto :goto_0
.end method

.method private onThumbnailImageDecoded(Lcom/oneplus/base/Handle;Lcom/oneplus/gallery/media/Media;Landroid/graphics/Bitmap;)V
    .locals 11
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p3, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 566
    iget-object v6, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_ThumbnailDecodingHandles:Ljava/util/Set;

    if-eqz v6, :cond_0

    .line 567
    iget-object v6, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_ThumbnailDecodingHandles:Ljava/util/Set;

    invoke-interface {v6, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 570
    :cond_0
    iget-object v6, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery/media/Media;

    if-nez v6, :cond_2

    .line 626
    :cond_1
    :goto_0
    return-void

    .line 572
    :cond_2
    const/4 v3, -0x1

    .line 573
    .local v3, "index":I
    iget-object v6, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery/media/Media;

    array-length v6, v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_3

    .line 575
    iget-object v6, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery/media/Media;

    aget-object v6, v6, v2

    if-ne v6, p2, :cond_6

    .line 577
    move v3, v2

    .line 581
    :cond_3
    if-ltz v3, :cond_1

    .line 585
    iget-object v6, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    if-nez v6, :cond_4

    .line 587
    iget-object v6, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery/MediaSetPickerFragment;

    # invokes: Lcom/oneplus/gallery/MediaSetPickerFragment;->obtainEmptyCoverImage()Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/oneplus/gallery/MediaSetPickerFragment;->access$2300(Lcom/oneplus/gallery/MediaSetPickerFragment;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    .line 588
    new-instance v6, Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    invoke-direct {v6, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v6, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_IntermediateCoverCanvas:Landroid/graphics/Canvas;

    .line 592
    :cond_4
    new-instance v1, Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-direct {v1, v10, v10, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 595
    .local v1, "destRect":Landroid/graphics/RectF;
    if-eqz p3, :cond_7

    .line 597
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 598
    .local v4, "minThumbSide":I
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v8, v8, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 599
    .local v5, "srcRect":Landroid/graphics/Rect;
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int/2addr v7, v4

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 600
    iget-object v6, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_IntermediateCoverCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, p3, v5, v1, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 608
    .end local v4    # "minThumbSide":I
    .end local v5    # "srcRect":Landroid/graphics/Rect;
    :goto_2
    iget-object v6, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery/media/Media;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-lt v3, v6, :cond_1

    .line 612
    iget-object v6, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_5

    .line 615
    iget-object v6, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 616
    .local v0, "coverImage":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery/MediaSetPickerFragment;

    iget-object v7, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    # invokes: Lcom/oneplus/gallery/MediaSetPickerFragment;->recycleCoverImage(Landroid/graphics/Bitmap;)V
    invoke-static {v6, v7}, Lcom/oneplus/gallery/MediaSetPickerFragment;->access$1400(Lcom/oneplus/gallery/MediaSetPickerFragment;Landroid/graphics/Bitmap;)V

    .line 617
    iput-object v9, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    .line 618
    iput-object v9, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_IntermediateCoverCanvas:Landroid/graphics/Canvas;

    .line 621
    iget-object v6, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery/MediaSetPickerFragment;

    # invokes: Lcom/oneplus/gallery/MediaSetPickerFragment;->onCoverImageUpdated(Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;Landroid/graphics/Bitmap;Z)V
    invoke-static {v6, p0, v0, v8}, Lcom/oneplus/gallery/MediaSetPickerFragment;->access$2400(Lcom/oneplus/gallery/MediaSetPickerFragment;Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;Landroid/graphics/Bitmap;Z)V

    .line 623
    .end local v0    # "coverImage":Landroid/graphics/Bitmap;
    :cond_5
    iput-boolean v8, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_ContainsInvalidThumbnailImages:Z

    .line 624
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->complete()V

    goto/16 :goto_0

    .line 573
    .end local v1    # "destRect":Landroid/graphics/RectF;
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_1

    .line 604
    .restart local v1    # "destRect":Landroid/graphics/RectF;
    :cond_7
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_ContainsInvalidThumbnailImages:Z

    goto :goto_2
.end method


# virtual methods
.method public cancel()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 371
    iget-boolean v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_IsActive:Z

    if-nez v2, :cond_0

    .line 397
    :goto_0
    return-void

    .line 374
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-eqz v2, :cond_1

    .line 376
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    sget-object v3, Lcom/oneplus/gallery/media/MediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v2, v3, v4}, Lcom/oneplus/gallery/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 377
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v2}, Lcom/oneplus/gallery/media/MediaList;->release()V

    .line 378
    iput-object v5, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    .line 380
    :cond_1
    iput-object v5, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery/media/Media;

    .line 381
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 383
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery/MediaSetPickerFragment;

    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    # invokes: Lcom/oneplus/gallery/MediaSetPickerFragment;->recycleCoverImage(Landroid/graphics/Bitmap;)V
    invoke-static {v2, v3}, Lcom/oneplus/gallery/MediaSetPickerFragment;->access$1400(Lcom/oneplus/gallery/MediaSetPickerFragment;Landroid/graphics/Bitmap;)V

    .line 384
    iput-object v5, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    .line 385
    iput-object v5, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_IntermediateCoverCanvas:Landroid/graphics/Canvas;

    .line 387
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_ThumbnailDecodingHandles:Ljava/util/Set;

    if-eqz v2, :cond_4

    .line 389
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_ThumbnailDecodingHandles:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/Handle;

    .line 390
    .local v0, "handle":Lcom/oneplus/base/Handle;
    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_1

    .line 391
    .end local v0    # "handle":Lcom/oneplus/base/Handle;
    :cond_3
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_ThumbnailDecodingHandles:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 393
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    iput-boolean v6, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_ContainsInvalidThumbnailImages:Z

    .line 394
    iput-boolean v6, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_IsActive:Z

    .line 395
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    sget-object v3, Lcom/oneplus/gallery/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v2, v3, v4}, Lcom/oneplus/gallery/media/MediaSet;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 396
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery/MediaSetPickerFragment;

    # invokes: Lcom/oneplus/gallery/MediaSetPickerFragment;->onCoverImageCreationCompleted(Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;)V
    invoke-static {v2, p0}, Lcom/oneplus/gallery/MediaSetPickerFragment;->access$1500(Lcom/oneplus/gallery/MediaSetPickerFragment;Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;)V

    goto :goto_0
.end method

.method public createCoverImage()V
    .locals 3

    .prologue
    .line 413
    iget-boolean v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_IsActive:Z

    if-eqz v0, :cond_0

    .line 427
    :goto_0
    return-void

    .line 417
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_IsActive:Z

    .line 422
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    sget-object v1, Lcom/oneplus/gallery/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaCount:Ljava/lang/Integer;

    .line 423
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    sget-object v1, Lcom/oneplus/gallery/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery/media/MediaSet;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 426
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->createCoverImageFromMediaList()V

    goto :goto_0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 490
    iget-boolean v0, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_IsActive:Z

    return v0
.end method

.method public setPriority(Z)V
    .locals 3
    .param p1, "isHighPriority"    # Z

    .prologue
    .line 632
    iget-boolean v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_IsHighPriority:Z

    if-ne v2, p1, :cond_1

    .line 654
    :cond_0
    :goto_0
    return-void

    .line 636
    :cond_1
    iput-boolean p1, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_IsHighPriority:Z

    .line 639
    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_IsActive:Z

    if-eqz v2, :cond_0

    .line 646
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_ThumbnailDecodingHandles:Ljava/util/Set;

    if-eqz v2, :cond_0

    .line 648
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_ThumbnailDecodingHandles:Ljava/util/Set;

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

    .line 649
    .local v0, "handle":Lcom/oneplus/base/Handle;
    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_1

    .line 650
    .end local v0    # "handle":Lcom/oneplus/base/Handle;
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_ThumbnailDecodingHandles:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 651
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery/media/Media;

    if-eqz v2, :cond_0

    .line 652
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaSetPickerFragment$CoverImageCreationTask;->onReadyToCreateCoverImage()V

    goto :goto_0
.end method
