.class final Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;
.super Ljava/lang/Object;
.source "MediaSetPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/MediaSetPickerFragment;
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

.field final synthetic this$0:Lcom/oneplus/gallery2/MediaSetPickerFragment;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/MediaSetPickerFragment;Lcom/oneplus/gallery2/media/MediaSet;)V
    .locals 1
    .param p2, "mediaSet"    # Lcom/oneplus/gallery2/media/MediaSet;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery2/MediaSetPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    new-instance v0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask$1;-><init>(Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaAddedHandler:Lcom/oneplus/base/EventHandler;

    .line 352
    new-instance v0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask$2;-><init>(Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 366
    iput-object p2, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    .line 367
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_TargetMediaCount:I

    .line 368
    return-void
.end method

.method static synthetic access$1100(Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->onMediaListChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1202(Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaCount:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;)Lcom/oneplus/gallery2/media/MediaList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;

    .prologue
    .line 327
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;Lcom/oneplus/base/Handle;Lcom/oneplus/gallery2/media/Media;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;
    .param p2, "x2"    # Lcom/oneplus/gallery2/media/Media;
    .param p3, "x3"    # Landroid/graphics/Bitmap;

    .prologue
    .line 327
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->onThumbnailImageDecoded(Lcom/oneplus/base/Handle;Lcom/oneplus/gallery2/media/Media;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private complete()V
    .locals 3

    .prologue
    .line 404
    iget-boolean v0, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_IsActive:Z

    if-nez v0, :cond_0

    .line 409
    :goto_0
    return-void

    .line 406
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_IsActive:Z

    .line 407
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaSet;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 408
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery2/MediaSetPickerFragment;

    # invokes: Lcom/oneplus/gallery2/MediaSetPickerFragment;->onCoverImageCreationCompleted(Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;)V
    invoke-static {v0, p0}, Lcom/oneplus/gallery2/MediaSetPickerFragment;->access$1500(Lcom/oneplus/gallery2/MediaSetPickerFragment;Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;)V

    goto :goto_0
.end method

.method private createCoverImageFromMediaList()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 435
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v2, :cond_0

    .line 437
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery2/MediaSetPickerFragment;

    # getter for: Lcom/oneplus/gallery2/MediaSetPickerFragment;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/gallery2/MediaSetPickerFragment;->access$1600(Lcom/oneplus/gallery2/MediaSetPickerFragment;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createCoverImageFromMediaList() - Media list of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    invoke-interface {v4}, Lcom/oneplus/gallery2/media/MediaSet;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is already opened"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v3, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v2, v3, v4}, Lcom/oneplus/gallery2/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 439
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/MediaList;->release()V

    .line 447
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    sget-object v3, Lcom/oneplus/gallery2/media/MediaSet;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/oneplus/gallery2/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 449
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery2/MediaSetPickerFragment;

    # getter for: Lcom/oneplus/gallery2/MediaSetPickerFragment;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/gallery2/MediaSetPickerFragment;->access$1700(Lcom/oneplus/gallery2/MediaSetPickerFragment;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createCoverImageFromMediaList() - Media set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    invoke-interface {v4}, Lcom/oneplus/gallery2/media/MediaSet;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has been rleased"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    :goto_0
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-nez v2, :cond_4

    .line 477
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery2/MediaSetPickerFragment;

    # getter for: Lcom/oneplus/gallery2/MediaSetPickerFragment;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/gallery2/MediaSetPickerFragment;->access$2000(Lcom/oneplus/gallery2/MediaSetPickerFragment;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createCoverImageFromMediaList() - Fail to open media list of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->complete()V

    .line 487
    :cond_1
    :goto_1
    return-void

    .line 455
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery2/MediaSetPickerFragment;

    # getter for: Lcom/oneplus/gallery2/MediaSetPickerFragment;->m_CoverMediaTable:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/oneplus/gallery2/MediaSetPickerFragment;->access$1800(Lcom/oneplus/gallery2/MediaSetPickerFragment;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    .line 457
    .local v0, "coverMedia":Lcom/oneplus/gallery2/media/Media;
    if-nez v0, :cond_3

    .line 458
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    sget-object v3, Lcom/oneplus/gallery2/media/MediaComparator;->TAKEN_TIME_DESC:Lcom/oneplus/gallery2/media/MediaComparator;

    iget v4, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_TargetMediaCount:I

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/oneplus/gallery2/media/MediaSet;->openMediaList(Lcom/oneplus/gallery2/media/MediaComparator;II)Lcom/oneplus/gallery2/media/MediaList;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 470
    .end local v0    # "coverMedia":Lcom/oneplus/gallery2/media/Media;
    :catch_0
    move-exception v1

    .line 472
    .local v1, "ex":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery2/MediaSetPickerFragment;

    # getter for: Lcom/oneplus/gallery2/MediaSetPickerFragment;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/gallery2/MediaSetPickerFragment;->access$1900(Lcom/oneplus/gallery2/MediaSetPickerFragment;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createCoverImageFromMediaList() - Fail to open media list of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    invoke-interface {v4}, Lcom/oneplus/gallery2/media/MediaSet;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 473
    iput-object v6, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    goto :goto_0

    .line 461
    .end local v1    # "ex":Ljava/lang/Throwable;
    .restart local v0    # "coverMedia":Lcom/oneplus/gallery2/media/Media;
    :cond_3
    const/4 v2, 0x1

    :try_start_2
    new-array v2, v2, [Lcom/oneplus/gallery2/media/Media;

    iput-object v2, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery2/media/Media;

    .line 462
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery2/media/Media;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 465
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->onReadyToCreateCoverImage()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 481
    .end local v0    # "coverMedia":Lcom/oneplus/gallery2/media/Media;
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->onMediaListChanged()Z

    move-result v2

    if-nez v2, :cond_1

    .line 485
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v3, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v2, v3, v4}, Lcom/oneplus/gallery2/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    goto :goto_1
.end method

.method private onMediaListChanged()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 498
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v1

    .line 499
    .local v1, "listSize":I
    const/4 v0, 0x0

    .line 500
    .local v0, "isReady":Z
    iget v2, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_TargetMediaCount:I

    if-lt v1, v2, :cond_3

    .line 502
    iget v2, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_TargetMediaCount:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 503
    const/4 v0, 0x1

    .line 510
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    iget-boolean v2, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_IsActive:Z

    if-nez v2, :cond_5

    .line 512
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    new-array v4, v1, [Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v2, v4}, Lcom/oneplus/gallery2/media/MediaList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/oneplus/gallery2/media/Media;

    iput-object v2, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery2/media/Media;

    .line 515
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery2/media/Media;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery2/media/Media;

    array-length v2, v2

    if-lez v2, :cond_2

    .line 516
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery2/MediaSetPickerFragment;

    # getter for: Lcom/oneplus/gallery2/MediaSetPickerFragment;->m_CoverMediaTable:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/oneplus/gallery2/MediaSetPickerFragment;->access$1800(Lcom/oneplus/gallery2/MediaSetPickerFragment;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v4, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    iget-object v5, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery2/media/Media;

    aget-object v3, v5, v3

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v3, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v2, v3, v4}, Lcom/oneplus/gallery2/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 519
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/MediaList;->release()V

    .line 520
    iput-object v6, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    .line 521
    iget-boolean v2, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_IsActive:Z

    if-eqz v2, :cond_4

    .line 525
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->onReadyToCreateCoverImage()V

    .line 529
    :goto_1
    const/4 v2, 0x1

    .line 531
    :goto_2
    return v2

    .line 505
    :cond_3
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaCount:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaCount:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 507
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaCount:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 508
    const/4 v0, 0x1

    goto :goto_0

    .line 528
    :cond_4
    iput-object v6, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery2/media/Media;

    goto :goto_1

    :cond_5
    move v2, v3

    .line 531
    goto :goto_2
.end method

.method private onReadyToCreateCoverImage()V
    .locals 7

    .prologue
    .line 537
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery2/media/Media;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery2/MediaSetPickerFragment;

    # getter for: Lcom/oneplus/gallery2/MediaSetPickerFragment;->m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;
    invoke-static {v0}, Lcom/oneplus/gallery2/MediaSetPickerFragment;->access$2100(Lcom/oneplus/gallery2/MediaSetPickerFragment;)Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 539
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->complete()V

    .line 562
    :goto_0
    return-void

    .line 542
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_ThumbnailDecodingHandles:Ljava/util/Set;

    if-nez v0, :cond_2

    .line 543
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_ThumbnailDecodingHandles:Ljava/util/Set;

    .line 544
    :cond_2
    const/4 v3, 0x1

    .line 545
    .local v3, "flags":I
    iget-boolean v0, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_IsHighPriority:Z

    if-eqz v0, :cond_3

    .line 546
    or-int/lit8 v3, v3, 0x2

    .line 547
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_ThumbnailDecodingCallback:Lcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;

    if-nez v0, :cond_4

    .line 549
    new-instance v0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask$3;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask$3;-><init>(Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_ThumbnailDecodingCallback:Lcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;

    .line 558
    :cond_4
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery2/media/Media;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 559
    iget-object v6, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_ThumbnailDecodingHandles:Ljava/util/Set;

    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery2/MediaSetPickerFragment;

    # getter for: Lcom/oneplus/gallery2/MediaSetPickerFragment;->m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;
    invoke-static {v0}, Lcom/oneplus/gallery2/MediaSetPickerFragment;->access$2100(Lcom/oneplus/gallery2/MediaSetPickerFragment;)Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery2/media/Media;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget-object v2, Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;->SMALL:Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;

    iget-object v4, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_ThumbnailDecodingCallback:Lcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;

    iget-object v5, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery2/MediaSetPickerFragment;

    invoke-virtual {v5}, Lcom/oneplus/gallery2/MediaSetPickerFragment;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/oneplus/gallery2/media/ThumbnailImageManager;->decodeThumbnailImage(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;ILcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 561
    :cond_5
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->complete()V

    goto :goto_0
.end method

.method private onThumbnailImageDecoded(Lcom/oneplus/base/Handle;Lcom/oneplus/gallery2/media/Media;Landroid/graphics/Bitmap;)V
    .locals 11
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p3, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 568
    iget-object v6, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_ThumbnailDecodingHandles:Ljava/util/Set;

    if-eqz v6, :cond_0

    .line 569
    iget-object v6, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_ThumbnailDecodingHandles:Ljava/util/Set;

    invoke-interface {v6, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 572
    :cond_0
    iget-object v6, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery2/media/Media;

    if-nez v6, :cond_2

    .line 628
    :cond_1
    :goto_0
    return-void

    .line 574
    :cond_2
    const/4 v3, -0x1

    .line 575
    .local v3, "index":I
    iget-object v6, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery2/media/Media;

    array-length v6, v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_3

    .line 577
    iget-object v6, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery2/media/Media;

    aget-object v6, v6, v2

    if-ne v6, p2, :cond_6

    .line 579
    move v3, v2

    .line 583
    :cond_3
    if-ltz v3, :cond_1

    .line 587
    iget-object v6, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    if-nez v6, :cond_4

    .line 589
    iget-object v6, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery2/MediaSetPickerFragment;

    # invokes: Lcom/oneplus/gallery2/MediaSetPickerFragment;->obtainEmptyCoverImage()Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/oneplus/gallery2/MediaSetPickerFragment;->access$2300(Lcom/oneplus/gallery2/MediaSetPickerFragment;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    .line 590
    new-instance v6, Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    invoke-direct {v6, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v6, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_IntermediateCoverCanvas:Landroid/graphics/Canvas;

    .line 594
    :cond_4
    new-instance v1, Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-direct {v1, v10, v10, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 597
    .local v1, "destRect":Landroid/graphics/RectF;
    if-eqz p3, :cond_7

    .line 599
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 600
    .local v4, "minThumbSide":I
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v8, v8, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 601
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

    .line 602
    iget-object v6, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_IntermediateCoverCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, p3, v5, v1, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 610
    .end local v4    # "minThumbSide":I
    .end local v5    # "srcRect":Landroid/graphics/Rect;
    :goto_2
    iget-object v6, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery2/media/Media;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-lt v3, v6, :cond_1

    .line 614
    iget-object v6, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_5

    .line 617
    iget-object v6, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 618
    .local v0, "coverImage":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery2/MediaSetPickerFragment;

    iget-object v7, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    # invokes: Lcom/oneplus/gallery2/MediaSetPickerFragment;->recycleCoverImage(Landroid/graphics/Bitmap;)V
    invoke-static {v6, v7}, Lcom/oneplus/gallery2/MediaSetPickerFragment;->access$1400(Lcom/oneplus/gallery2/MediaSetPickerFragment;Landroid/graphics/Bitmap;)V

    .line 619
    iput-object v9, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    .line 620
    iput-object v9, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_IntermediateCoverCanvas:Landroid/graphics/Canvas;

    .line 623
    iget-object v6, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery2/MediaSetPickerFragment;

    # invokes: Lcom/oneplus/gallery2/MediaSetPickerFragment;->onCoverImageUpdated(Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;Landroid/graphics/Bitmap;Z)V
    invoke-static {v6, p0, v0, v8}, Lcom/oneplus/gallery2/MediaSetPickerFragment;->access$2400(Lcom/oneplus/gallery2/MediaSetPickerFragment;Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;Landroid/graphics/Bitmap;Z)V

    .line 625
    .end local v0    # "coverImage":Landroid/graphics/Bitmap;
    :cond_5
    iput-boolean v8, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_ContainsInvalidThumbnailImages:Z

    .line 626
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->complete()V

    goto/16 :goto_0

    .line 575
    .end local v1    # "destRect":Landroid/graphics/RectF;
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_1

    .line 606
    .restart local v1    # "destRect":Landroid/graphics/RectF;
    :cond_7
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_ContainsInvalidThumbnailImages:Z

    goto :goto_2
.end method


# virtual methods
.method public cancel()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 373
    iget-boolean v2, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_IsActive:Z

    if-nez v2, :cond_0

    .line 399
    :goto_0
    return-void

    .line 376
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v2, :cond_1

    .line 378
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v3, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v2, v3, v4}, Lcom/oneplus/gallery2/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 379
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/MediaList;->release()V

    .line 380
    iput-object v5, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    .line 382
    :cond_1
    iput-object v5, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery2/media/Media;

    .line 383
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 385
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery2/MediaSetPickerFragment;

    iget-object v3, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    # invokes: Lcom/oneplus/gallery2/MediaSetPickerFragment;->recycleCoverImage(Landroid/graphics/Bitmap;)V
    invoke-static {v2, v3}, Lcom/oneplus/gallery2/MediaSetPickerFragment;->access$1400(Lcom/oneplus/gallery2/MediaSetPickerFragment;Landroid/graphics/Bitmap;)V

    .line 386
    iput-object v5, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_IntermediateCoverImage:Landroid/graphics/Bitmap;

    .line 387
    iput-object v5, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_IntermediateCoverCanvas:Landroid/graphics/Canvas;

    .line 389
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_ThumbnailDecodingHandles:Ljava/util/Set;

    if-eqz v2, :cond_4

    .line 391
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_ThumbnailDecodingHandles:Ljava/util/Set;

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

    .line 392
    .local v0, "handle":Lcom/oneplus/base/Handle;
    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_1

    .line 393
    .end local v0    # "handle":Lcom/oneplus/base/Handle;
    :cond_3
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_ThumbnailDecodingHandles:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 395
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    iput-boolean v6, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_ContainsInvalidThumbnailImages:Z

    .line 396
    iput-boolean v6, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_IsActive:Z

    .line 397
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    sget-object v3, Lcom/oneplus/gallery2/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v4, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v2, v3, v4}, Lcom/oneplus/gallery2/media/MediaSet;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 398
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery2/MediaSetPickerFragment;

    # invokes: Lcom/oneplus/gallery2/MediaSetPickerFragment;->onCoverImageCreationCompleted(Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;)V
    invoke-static {v2, p0}, Lcom/oneplus/gallery2/MediaSetPickerFragment;->access$1500(Lcom/oneplus/gallery2/MediaSetPickerFragment;Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;)V

    goto :goto_0
.end method

.method public createCoverImage()V
    .locals 3

    .prologue
    .line 415
    iget-boolean v0, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_IsActive:Z

    if-eqz v0, :cond_0

    .line 429
    :goto_0
    return-void

    .line 419
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_IsActive:Z

    .line 424
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery2/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaCount:Ljava/lang/Integer;

    .line 425
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaSet;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 428
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->createCoverImageFromMediaList()V

    goto :goto_0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 492
    iget-boolean v0, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_IsActive:Z

    return v0
.end method

.method public setPriority(Z)V
    .locals 3
    .param p1, "isHighPriority"    # Z

    .prologue
    .line 634
    iget-boolean v2, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_IsHighPriority:Z

    if-ne v2, p1, :cond_1

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 638
    :cond_1
    iput-boolean p1, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_IsHighPriority:Z

    .line 641
    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_IsActive:Z

    if-eqz v2, :cond_0

    .line 648
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_ThumbnailDecodingHandles:Ljava/util/Set;

    if-eqz v2, :cond_0

    .line 650
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_ThumbnailDecodingHandles:Ljava/util/Set;

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

    .line 651
    .local v0, "handle":Lcom/oneplus/base/Handle;
    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_1

    .line 652
    .end local v0    # "handle":Lcom/oneplus/base/Handle;
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_ThumbnailDecodingHandles:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 653
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_ReadyMediaList:[Lcom/oneplus/gallery2/media/Media;

    if-eqz v2, :cond_0

    .line 654
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->onReadyToCreateCoverImage()V

    goto :goto_0
.end method
