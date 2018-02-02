.class final Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;
.super Lcom/oneplus/base/ListHandlerBaseObject;
.source "MediaListManager.java"

# interfaces
.implements Lcom/oneplus/camera/media/MediaList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/media/MediaListManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaListImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/base/ListHandlerBaseObject",
        "<",
        "Lcom/oneplus/camera/media/MediaInfo;",
        ">;",
        "Lcom/oneplus/camera/media/MediaList;"
    }
.end annotation


# instance fields
.field public final creationTime:J

.field public final isSecureMode:Z

.field private final m_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/media/MediaInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;[Ljava/lang/Object;)Z
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->onMediaRemoved([Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;Ljava/util/Collection;Z)V
    .locals 0
    .param p1, "media"    # Ljava/util/Collection;
    .param p2, "sorted"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->onMediaAdded(Ljava/util/Collection;Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->onMediaCleared()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;Lcom/oneplus/camera/media/MediaInfo;)V
    .locals 0
    .param p1, "media"    # Lcom/oneplus/camera/media/MediaInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->removeMedia(Lcom/oneplus/camera/media/MediaInfo;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;Ljava/util/List;)V
    .locals 0
    .param p1, "deletedList"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->removeMedia(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "isSecureMode"    # Z

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/oneplus/base/ListHandlerBaseObject;-><init>()V

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    .line 149
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->creationTime:J

    .line 150
    iput-boolean p1, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->isSecureMode:Z

    .line 147
    return-void
.end method

.method private onMediaAdded(Ljava/util/Collection;Z)V
    .locals 9
    .param p2, "sorted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/oneplus/camera/media/MediaInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 249
    .local p1, "media":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/oneplus/camera/media/MediaInfo;>;"
    sget-object v6, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 250
    return-void

    .line 253
    :cond_0
    iget-object v6, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz p2, :cond_1

    .line 255
    iget-object v6, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iget-object v7, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Lcom/oneplus/camera/media/MediaListChangeEventArgs;->obtain(II)Lcom/oneplus/camera/media/MediaListChangeEventArgs;

    move-result-object v0

    .line 256
    .local v0, "e":Lcom/oneplus/camera/media/MediaListChangeEventArgs;
    iget-object v6, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 257
    sget-object v6, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v6, v0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 258
    invoke-virtual {v0}, Lcom/oneplus/camera/media/MediaListChangeEventArgs;->recycle()V

    .line 259
    return-void

    .line 263
    .end local v0    # "e":Lcom/oneplus/camera/media/MediaListChangeEventArgs;
    :cond_1
    const/4 v5, -0x1

    .line 264
    .local v5, "startIndex":I
    const/4 v1, -0x1

    .line 265
    .local v1, "endIndex":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "mediaInfo$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/media/MediaInfo;

    .line 268
    .local v3, "mediaInfo":Lcom/oneplus/camera/media/MediaInfo;
    iget-object v6, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    invoke-static {}, Lcom/oneplus/camera/media/MediaListManager;->-get0()Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v6, v3, v7}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v2

    .line 269
    .local v2, "index":I
    if-gez v2, :cond_2

    .line 271
    not-int v2, v2

    .line 274
    if-ltz v5, :cond_4

    if-lt v2, v5, :cond_3

    add-int/lit8 v6, v1, 0x1

    if-le v2, v6, :cond_4

    .line 276
    :cond_3
    invoke-static {v5, v1}, Lcom/oneplus/camera/media/MediaListChangeEventArgs;->obtain(II)Lcom/oneplus/camera/media/MediaListChangeEventArgs;

    move-result-object v0

    .line 277
    .restart local v0    # "e":Lcom/oneplus/camera/media/MediaListChangeEventArgs;
    sget-object v6, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v6, v0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 278
    invoke-virtual {v0}, Lcom/oneplus/camera/media/MediaListChangeEventArgs;->recycle()V

    .line 279
    const/4 v5, -0x1

    .line 280
    const/4 v1, -0x1

    .line 284
    .end local v0    # "e":Lcom/oneplus/camera/media/MediaListChangeEventArgs;
    :cond_4
    iget-object v6, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    invoke-interface {v6, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 287
    if-ltz v5, :cond_6

    .line 289
    if-lt v2, v5, :cond_5

    .line 290
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 292
    :cond_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 295
    :cond_6
    move v1, v2

    move v5, v2

    goto :goto_0

    .line 299
    .end local v2    # "index":I
    .end local v3    # "mediaInfo":Lcom/oneplus/camera/media/MediaInfo;
    :cond_7
    if-ltz v5, :cond_8

    .line 301
    invoke-static {v5, v1}, Lcom/oneplus/camera/media/MediaListChangeEventArgs;->obtain(II)Lcom/oneplus/camera/media/MediaListChangeEventArgs;

    move-result-object v0

    .line 302
    .restart local v0    # "e":Lcom/oneplus/camera/media/MediaListChangeEventArgs;
    sget-object v6, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v6, v0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 303
    invoke-virtual {v0}, Lcom/oneplus/camera/media/MediaListChangeEventArgs;->recycle()V

    .line 246
    .end local v0    # "e":Lcom/oneplus/camera/media/MediaListChangeEventArgs;
    :cond_8
    return-void
.end method

.method private onMediaCleared()V
    .locals 3

    .prologue
    .line 310
    iget-object v1, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 312
    iget-object v1, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/oneplus/camera/media/MediaListChangeEventArgs;->obtain(II)Lcom/oneplus/camera/media/MediaListChangeEventArgs;

    move-result-object v0

    .line 313
    .local v0, "e":Lcom/oneplus/camera/media/MediaListChangeEventArgs;
    sget-object v1, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 314
    iget-object v1, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 315
    sget-object v1, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 316
    invoke-virtual {v0}, Lcom/oneplus/camera/media/MediaListChangeEventArgs;->recycle()V

    .line 308
    .end local v0    # "e":Lcom/oneplus/camera/media/MediaListChangeEventArgs;
    :cond_0
    return-void
.end method

.method private varargs onMediaRemoved([Ljava/lang/Object;)Z
    .locals 11
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v10, 0x0

    .line 324
    sget-object v8, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v8}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 325
    return v10

    .line 326
    :cond_0
    aget-object v8, p1, v10

    instance-of v8, v8, Lcom/oneplus/camera/media/MediaInfo;

    if-eqz v8, :cond_2

    .line 328
    iget-object v8, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    aget-object v9, p1, v10

    invoke-interface {v8, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 329
    .local v4, "index":I
    if-ltz v4, :cond_1

    .line 331
    invoke-static {v4}, Lcom/oneplus/camera/media/MediaListChangeEventArgs;->obtain(I)Lcom/oneplus/camera/media/MediaListChangeEventArgs;

    move-result-object v1

    .line 332
    .local v1, "e":Lcom/oneplus/camera/media/MediaListChangeEventArgs;
    sget-object v8, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v8, v1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 333
    iget-object v8, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 334
    sget-object v8, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v8, v1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 335
    invoke-virtual {v1}, Lcom/oneplus/camera/media/MediaListChangeEventArgs;->recycle()V

    .line 336
    const/4 v8, 0x1

    return v8

    .line 338
    .end local v1    # "e":Lcom/oneplus/camera/media/MediaListChangeEventArgs;
    :cond_1
    return v10

    .line 342
    .end local v4    # "index":I
    :cond_2
    const/4 v6, 0x0

    .line 343
    .local v6, "removedSucceed":Z
    aget-object v0, p1, v10

    check-cast v0, Ljava/util/List;

    .line 344
    .local v0, "deletedList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    const/4 v7, -0x1

    .local v7, "startIndex":I
    const/4 v2, -0x1

    .line 345
    .local v2, "endIndex":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v5, v8, -0x1

    .local v5, "j":I
    :goto_0
    if-ltz v5, :cond_9

    .line 347
    iget-object v8, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 348
    .restart local v4    # "index":I
    if-ltz v4, :cond_3

    .line 350
    if-gez v7, :cond_4

    .line 352
    move v7, v4

    .line 353
    move v2, v4

    .line 345
    :cond_3
    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 355
    :cond_4
    add-int/lit8 v8, v2, 0x1

    if-ne v4, v8, :cond_5

    .line 356
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 357
    :cond_5
    add-int/lit8 v8, v7, -0x1

    if-ne v4, v8, :cond_6

    .line 358
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 361
    :cond_6
    if-le v4, v2, :cond_7

    .line 362
    sub-int v8, v2, v7

    add-int/lit8 v8, v8, 0x1

    sub-int/2addr v4, v8

    .line 363
    :cond_7
    invoke-static {v7, v2}, Lcom/oneplus/camera/media/MediaListChangeEventArgs;->obtain(II)Lcom/oneplus/camera/media/MediaListChangeEventArgs;

    move-result-object v1

    .line 364
    .restart local v1    # "e":Lcom/oneplus/camera/media/MediaListChangeEventArgs;
    sget-object v8, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v8, v1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 365
    move v3, v2

    .local v3, "i":I
    :goto_2
    if-lt v3, v7, :cond_8

    .line 366
    iget-object v8, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 365
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 367
    :cond_8
    sget-object v8, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v8, v1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 368
    invoke-virtual {v1}, Lcom/oneplus/camera/media/MediaListChangeEventArgs;->recycle()V

    .line 369
    const/4 v6, 0x1

    .line 370
    move v7, v4

    .line 371
    move v2, v4

    goto :goto_1

    .line 375
    .end local v1    # "e":Lcom/oneplus/camera/media/MediaListChangeEventArgs;
    .end local v3    # "i":I
    .end local v4    # "index":I
    :cond_9
    if-ltz v7, :cond_b

    .line 377
    invoke-static {v7, v2}, Lcom/oneplus/camera/media/MediaListChangeEventArgs;->obtain(II)Lcom/oneplus/camera/media/MediaListChangeEventArgs;

    move-result-object v1

    .line 378
    .restart local v1    # "e":Lcom/oneplus/camera/media/MediaListChangeEventArgs;
    sget-object v8, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v8, v1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 379
    move v4, v2

    .restart local v4    # "index":I
    :goto_3
    if-lt v4, v7, :cond_a

    .line 380
    iget-object v8, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 379
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 381
    :cond_a
    sget-object v8, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v8, v1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 382
    invoke-virtual {v1}, Lcom/oneplus/camera/media/MediaListChangeEventArgs;->recycle()V

    .line 383
    const/4 v6, 0x1

    .line 385
    .end local v1    # "e":Lcom/oneplus/camera/media/MediaListChangeEventArgs;
    .end local v4    # "index":I
    :cond_b
    return v6
.end method

.method private removeMedia(Lcom/oneplus/camera/media/MediaInfo;)V
    .locals 2
    .param p1, "media"    # Lcom/oneplus/camera/media/MediaInfo;

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 502
    invoke-virtual {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$5;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$5;-><init>(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;Lcom/oneplus/camera/media/MediaInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeMedia() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 515
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->onMediaRemoved([Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private removeMedia(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/media/MediaInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 521
    .local p1, "deletedList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    invoke-virtual {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 523
    invoke-virtual {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$6;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$6;-><init>(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeMedia() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->onMediaRemoved([Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/oneplus/camera/media/MediaInfo;)Z
    .locals 5
    .param p1, "media"    # Lcom/oneplus/camera/media/MediaInfo;

    .prologue
    const/4 v4, 0x0

    .line 157
    invoke-virtual {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->verifyAccess()V

    .line 158
    iget-object v2, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    invoke-static {}, Lcom/oneplus/camera/media/MediaListManager;->-get0()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v2, p1, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    .line 159
    .local v1, "index":I
    if-gez v1, :cond_0

    .line 161
    iget-object v2, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    not-int v3, v1

    invoke-interface {v2, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 162
    not-int v2, v1

    invoke-static {v2}, Lcom/oneplus/camera/media/MediaListChangeEventArgs;->obtain(I)Lcom/oneplus/camera/media/MediaListChangeEventArgs;

    move-result-object v0

    .line 163
    .local v0, "e":Lcom/oneplus/camera/media/MediaListChangeEventArgs;
    sget-object v2, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v2, v0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 164
    invoke-virtual {v0}, Lcom/oneplus/camera/media/MediaListChangeEventArgs;->recycle()V

    .line 165
    const/4 v2, 0x1

    return v2

    .line 167
    .end local v0    # "e":Lcom/oneplus/camera/media/MediaListChangeEventArgs;
    :cond_0
    return v4
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "media"    # Ljava/lang/Object;

    .prologue
    .line 155
    check-cast p1, Lcom/oneplus/camera/media/MediaInfo;

    .end local p1    # "media":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->add(Lcom/oneplus/camera/media/MediaInfo;)Z

    move-result v0

    return v0
.end method

.method public addMedia(Lcom/oneplus/camera/media/MediaInfo;)V
    .locals 2
    .param p1, "media"    # Lcom/oneplus/camera/media/MediaInfo;

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 175
    invoke-virtual {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$1;-><init>(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;Lcom/oneplus/camera/media/MediaInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addMedia() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->add(Lcom/oneplus/camera/media/MediaInfo;)Z

    goto :goto_0
.end method

.method public addMedia(Ljava/util/Collection;Z)V
    .locals 2
    .param p2, "sorted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/oneplus/camera/media/MediaInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, "media":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/oneplus/camera/media/MediaInfo;>;"
    invoke-virtual {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 194
    invoke-virtual {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$2;-><init>(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;Ljava/util/Collection;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addMedia() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->onMediaAdded(Ljava/util/Collection;Z)V

    goto :goto_0
.end method

.method public clearMedia()V
    .locals 2

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 215
    invoke-virtual {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$3;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$3;-><init>(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "clearMedia() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->onMediaCleared()V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 235
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(I)Lcom/oneplus/camera/media/MediaInfo;
    .locals 1
    .param p1, "location"    # I

    .prologue
    .line 242
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/media/MediaInfo;

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "location"    # I

    .prologue
    .line 240
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->get(I)Lcom/oneplus/camera/media/MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 469
    invoke-super {p0}, Lcom/oneplus/base/ListHandlerBaseObject;->release()V

    .line 472
    invoke-direct {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->onMediaCleared()V

    .line 475
    invoke-static {p0}, Lcom/oneplus/camera/media/MediaListManager;->-wrap1(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;)V

    .line 466
    return-void
.end method

.method public remove(I)Lcom/oneplus/camera/media/MediaInfo;
    .locals 3
    .param p1, "location"    # I

    .prologue
    .line 482
    invoke-virtual {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->verifyAccess()V

    .line 483
    invoke-static {p1}, Lcom/oneplus/camera/media/MediaListChangeEventArgs;->obtain(I)Lcom/oneplus/camera/media/MediaListChangeEventArgs;

    move-result-object v0

    .line 484
    .local v0, "e":Lcom/oneplus/camera/media/MediaListChangeEventArgs;
    sget-object v2, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v2, v0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 485
    iget-object v2, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/media/MediaInfo;

    .line 486
    .local v1, "media":Lcom/oneplus/camera/media/MediaInfo;
    sget-object v2, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v2, v0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 487
    invoke-virtual {v0}, Lcom/oneplus/camera/media/MediaListChangeEventArgs;->recycle()V

    .line 488
    return-object v1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "location"    # I

    .prologue
    .line 480
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->remove(I)Lcom/oneplus/camera/media/MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->verifyAccess()V

    .line 494
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    check-cast p1, Lcom/oneplus/camera/media/MediaInfo;

    .end local p1    # "object":Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->onMediaRemoved([Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public replace(Lcom/oneplus/camera/media/MediaInfo;Lcom/oneplus/camera/media/MediaInfo;)Z
    .locals 12
    .param p1, "oldMedia"    # Lcom/oneplus/camera/media/MediaInfo;
    .param p2, "newMedia"    # Lcom/oneplus/camera/media/MediaInfo;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 393
    invoke-virtual {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->verifyAccess()V

    .line 394
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    invoke-static {}, Lcom/oneplus/camera/media/MediaListManager;->-get0()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v9

    .line 395
    .local v9, "oldIndex":I
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    invoke-static {}, Lcom/oneplus/camera/media/MediaListManager;->-get0()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, p2, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v8

    .line 396
    .local v8, "newIndex":I
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "replace() - Index changed from "

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, ", media : "

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 399
    if-ne v9, v8, :cond_1

    .line 401
    if-gez v9, :cond_0

    .line 402
    return v10

    .line 403
    :cond_0
    invoke-static {v8}, Lcom/oneplus/camera/media/MediaListChangeEventArgs;->obtain(I)Lcom/oneplus/camera/media/MediaListChangeEventArgs;

    move-result-object v7

    .line 404
    .local v7, "e":Lcom/oneplus/camera/media/MediaListChangeEventArgs;
    sget-object v0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->EVENT_MEDIA_REPLACING:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, v7}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 405
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    invoke-interface {v0, v9, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 406
    sget-object v0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->EVENT_MEDIA_REPLACED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, v7}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 407
    invoke-virtual {v7}, Lcom/oneplus/camera/media/MediaListChangeEventArgs;->recycle()V

    .line 408
    return v11

    .line 413
    .end local v7    # "e":Lcom/oneplus/camera/media/MediaListChangeEventArgs;
    :cond_1
    not-int v8, v8

    .line 414
    if-ltz v9, :cond_3

    .line 416
    if-ge v9, v8, :cond_2

    .line 417
    add-int/lit8 v8, v8, -0x1

    .line 418
    :cond_2
    invoke-static {v9}, Lcom/oneplus/camera/media/MediaListChangeEventArgs;->obtain(I)Lcom/oneplus/camera/media/MediaListChangeEventArgs;

    move-result-object v7

    .line 419
    .restart local v7    # "e":Lcom/oneplus/camera/media/MediaListChangeEventArgs;
    sget-object v0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, v7}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 420
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 421
    sget-object v0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, v7}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 422
    invoke-virtual {v7}, Lcom/oneplus/camera/media/MediaListChangeEventArgs;->recycle()V

    .line 426
    .end local v7    # "e":Lcom/oneplus/camera/media/MediaListChangeEventArgs;
    :cond_3
    if-gez v8, :cond_4

    .line 427
    return v10

    .line 428
    :cond_4
    invoke-static {v8}, Lcom/oneplus/camera/media/MediaListChangeEventArgs;->obtain(I)Lcom/oneplus/camera/media/MediaListChangeEventArgs;

    move-result-object v7

    .line 429
    .restart local v7    # "e":Lcom/oneplus/camera/media/MediaListChangeEventArgs;
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    invoke-interface {v0, v8, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 430
    sget-object v0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, v7}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 431
    invoke-virtual {v7}, Lcom/oneplus/camera/media/MediaListChangeEventArgs;->recycle()V

    .line 432
    return v11
.end method

.method public replaceMedia(Lcom/oneplus/camera/media/MediaInfo;Lcom/oneplus/camera/media/MediaInfo;)V
    .locals 2
    .param p1, "oldMedia"    # Lcom/oneplus/camera/media/MediaInfo;
    .param p2, "newMedia"    # Lcom/oneplus/camera/media/MediaInfo;

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 441
    invoke-virtual {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$4;-><init>(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;Lcom/oneplus/camera/media/MediaInfo;Lcom/oneplus/camera/media/MediaInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "replaceMedia() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->replace(Lcom/oneplus/camera/media/MediaInfo;Lcom/oneplus/camera/media/MediaInfo;)Z

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
