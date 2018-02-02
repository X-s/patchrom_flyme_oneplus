.class public abstract Lcom/oneplus/gallery/media/BaseMediaProvider;
.super Lcom/oneplus/base/BasicThreadDependentObject;
.source "BaseMediaProvider.java"

# interfaces
.implements Lcom/oneplus/gallery/media/MediaProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/media/BaseMediaProvider$GroupMediaChangeCallbackHandle;,
        Lcom/oneplus/gallery/media/BaseMediaProvider$MediaChangeCallbackHandle;,
        Lcom/oneplus/gallery/media/BaseMediaProvider$MediaIterator;
    }
.end annotation


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private final m_GroupMediaChangeCallbackHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/media/BaseMediaProvider$GroupMediaChangeCallbackHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_IsReleased:Z

.field private final m_MediaChangeCallbackHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/media/BaseMediaProvider$MediaChangeCallbackHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_MediaTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/gallery/media/MediaId;",
            "Lcom/oneplus/gallery/media/Media;",
            ">;"
        }
    .end annotation
.end field

.field private volatile m_RecycledMediaSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/gallery/media/Media;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/oneplus/base/BasicThreadDependentObject;-><init>()V

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->TAG:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->m_GroupMediaChangeCallbackHandles:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->m_MediaChangeCallbackHandles:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->m_MediaTable:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->m_RecycledMediaSet:Ljava/util/Set;

    .line 21
    return-void
.end method

.method static synthetic access$0(Lcom/oneplus/gallery/media/BaseMediaProvider;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->m_MediaTable:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1(Lcom/oneplus/gallery/media/BaseMediaProvider;Lcom/oneplus/gallery/media/BaseMediaProvider$MediaChangeCallbackHandle;)V
    .locals 0

    .prologue
    .line 635
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/media/BaseMediaProvider;->removeMediaChangeCallback(Lcom/oneplus/gallery/media/BaseMediaProvider$MediaChangeCallbackHandle;)V

    return-void
.end method

.method static synthetic access$2(Lcom/oneplus/gallery/media/BaseMediaProvider;Lcom/oneplus/gallery/media/BaseMediaProvider$GroupMediaChangeCallbackHandle;)V
    .locals 0

    .prologue
    .line 627
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/media/BaseMediaProvider;->removeGroupMediaChangeCallback(Lcom/oneplus/gallery/media/BaseMediaProvider$GroupMediaChangeCallbackHandle;)V

    return-void
.end method

.method private removeGroupMediaChangeCallback(Lcom/oneplus/gallery/media/BaseMediaProvider$GroupMediaChangeCallbackHandle;)V
    .locals 1

    .prologue
    .line 629
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseMediaProvider;->verifyAccess()V

    .line 630
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->m_GroupMediaChangeCallbackHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 631
    return-void
.end method

.method private removeMediaChangeCallback(Lcom/oneplus/gallery/media/BaseMediaProvider$MediaChangeCallbackHandle;)V
    .locals 1

    .prologue
    .line 637
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseMediaProvider;->verifyAccess()V

    .line 638
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->m_MediaChangeCallbackHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 639
    return-void
.end method


# virtual methods
.method public addGroupMediaChangedCallback(Lcom/oneplus/gallery/media/GroupMedia$GroupMediaChangeCallback;)Lcom/oneplus/base/Handle;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 210
    if-eqz p1, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseMediaProvider;->verifyAccess()V

    .line 216
    new-instance v0, Lcom/oneplus/gallery/media/BaseMediaProvider$GroupMediaChangeCallbackHandle;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/gallery/media/BaseMediaProvider$GroupMediaChangeCallbackHandle;-><init>(Lcom/oneplus/gallery/media/BaseMediaProvider;Lcom/oneplus/gallery/media/GroupMedia$GroupMediaChangeCallback;)V

    .line 217
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->m_GroupMediaChangeCallbackHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    return-object v0

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addGroupMediaChangedCallback() - No call-back"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    return-object v2
.end method

.method public final addMediaChangedCallback(Lcom/oneplus/gallery/media/MediaChangeCallback;)Lcom/oneplus/base/Handle;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 226
    if-eqz p1, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseMediaProvider;->verifyAccess()V

    .line 232
    new-instance v0, Lcom/oneplus/gallery/media/BaseMediaProvider$MediaChangeCallbackHandle;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/gallery/media/BaseMediaProvider$MediaChangeCallbackHandle;-><init>(Lcom/oneplus/gallery/media/BaseMediaProvider;Lcom/oneplus/gallery/media/MediaChangeCallback;)V

    .line 233
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->m_MediaChangeCallbackHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    return-object v0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addMediaChangedCallback() - No call-back"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-object v2
.end method

.method protected final addToMediaTable(Lcom/oneplus/gallery/media/Media;Z)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 247
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->m_MediaTable:Ljava/util/Map;

    monitor-enter v2

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->m_MediaTable:Ljava/util/Map;

    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getId()Lcom/oneplus/gallery/media/MediaId;

    move-result-object v3

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/Media;

    .line 250
    if-nez v0, :cond_0

    .line 247
    monitor-exit v2

    .line 262
    if-nez p2, :cond_2

    .line 271
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 252
    :cond_0
    if-ne v0, p1, :cond_1

    .line 257
    :goto_1
    monitor-exit v2

    return v1

    .line 254
    :cond_1
    iget-object v3, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "addToMediaTable() - Duplicate media"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v3, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->m_MediaTable:Ljava/util/Map;

    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getId()Lcom/oneplus/gallery/media/MediaId;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 265
    :cond_2
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery/media/BaseMediaProvider;->isSubMedia(Lcom/oneplus/gallery/media/Media;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 267
    :goto_2
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/gallery/media/BaseMediaProvider;->callOnMediaCreated(Lcom/oneplus/gallery/media/Media;I)V

    goto :goto_0

    .line 266
    :cond_3
    sget v0, Lcom/oneplus/gallery/media/MediaChangeCallback;->FLAG_SUB_MEDIA:I

    or-int/lit8 v0, v0, 0x0

    goto :goto_2
.end method

.method protected final addToRecycledMedia(Lcom/oneplus/gallery/media/Media;Z)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 284
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->m_RecycledMediaSet:Ljava/util/Set;

    monitor-enter v1

    .line 286
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->m_RecycledMediaSet:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 284
    monitor-exit v1

    .line 294
    if-nez p2, :cond_1

    .line 303
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 288
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "addToRecycledMedia() - Already recycled media: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    monitor-exit v1

    return v0

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 297
    :cond_1
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery/media/BaseMediaProvider;->isSubMedia(Lcom/oneplus/gallery/media/Media;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 299
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/gallery/media/BaseMediaProvider;->callOnMediaRecycled(Lcom/oneplus/gallery/media/Media;I)V

    goto :goto_0

    .line 298
    :cond_2
    sget v0, Lcom/oneplus/gallery/media/MediaChangeCallback;->FLAG_SUB_MEDIA:I

    or-int/lit8 v0, v0, 0x0

    goto :goto_1
.end method

.method protected final callOnGroupMediaCoverChanged(Lcom/oneplus/gallery/media/GroupMedia;I)V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->m_GroupMediaChangeCallbackHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 315
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->m_GroupMediaChangeCallbackHandles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/BaseMediaProvider$GroupMediaChangeCallbackHandle;

    iget-object v0, v0, Lcom/oneplus/gallery/media/BaseMediaProvider$GroupMediaChangeCallbackHandle;->callback:Lcom/oneplus/gallery/media/GroupMedia$GroupMediaChangeCallback;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/gallery/media/GroupMedia$GroupMediaChangeCallback;->onCoverChanged(Lcom/oneplus/gallery/media/GroupMedia;I)V

    .line 314
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 316
    :cond_0
    return-void
.end method

.method protected final callOnGroupMediaSubMediaSizeChanged(Lcom/oneplus/gallery/media/GroupMedia;I)V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->m_GroupMediaChangeCallbackHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 327
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->m_GroupMediaChangeCallbackHandles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/BaseMediaProvider$GroupMediaChangeCallbackHandle;

    iget-object v0, v0, Lcom/oneplus/gallery/media/BaseMediaProvider$GroupMediaChangeCallbackHandle;->callback:Lcom/oneplus/gallery/media/GroupMedia$GroupMediaChangeCallback;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/gallery/media/GroupMedia$GroupMediaChangeCallback;->onSubMediaSizeChanged(Lcom/oneplus/gallery/media/GroupMedia;I)V

    .line 326
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 328
    :cond_0
    return-void
.end method

.method protected final callOnMediaCreated(Lcom/oneplus/gallery/media/Media;I)V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->m_MediaChangeCallbackHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 342
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->m_MediaChangeCallbackHandles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/BaseMediaProvider$MediaChangeCallbackHandle;

    iget-object v0, v0, Lcom/oneplus/gallery/media/BaseMediaProvider$MediaChangeCallbackHandle;->callback:Lcom/oneplus/gallery/media/MediaChangeCallback;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/gallery/media/MediaChangeCallback;->onMediaCreated(Lcom/oneplus/gallery/media/Media;I)V

    .line 341
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 343
    :cond_0
    return-void
.end method

.method protected final callOnMediaDeleted(Lcom/oneplus/gallery/media/Media;I)V
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->m_MediaChangeCallbackHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 358
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->m_MediaChangeCallbackHandles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/BaseMediaProvider$MediaChangeCallbackHandle;

    iget-object v0, v0, Lcom/oneplus/gallery/media/BaseMediaProvider$MediaChangeCallbackHandle;->callback:Lcom/oneplus/gallery/media/MediaChangeCallback;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/gallery/media/MediaChangeCallback;->onMediaDeleted(Lcom/oneplus/gallery/media/Media;I)V

    .line 357
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 359
    :cond_0
    return-void
.end method

.method protected final callOnMediaRecycled(Lcom/oneplus/gallery/media/Media;I)V
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->m_MediaChangeCallbackHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 373
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->m_MediaChangeCallbackHandles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/BaseMediaProvider$MediaChangeCallbackHandle;

    iget-object v0, v0, Lcom/oneplus/gallery/media/BaseMediaProvider$MediaChangeCallbackHandle;->callback:Lcom/oneplus/gallery/media/MediaChangeCallback;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/gallery/media/MediaChangeCallback;->onMediaRecycled(Lcom/oneplus/gallery/media/Media;I)V

    .line 372
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 374
    :cond_0
    return-void
.end method

.method protected final callOnMediaRestored(Lcom/oneplus/gallery/media/Media;I)V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->m_MediaChangeCallbackHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 388
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->m_MediaChangeCallbackHandles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/BaseMediaProvider$MediaChangeCallbackHandle;

    iget-object v0, v0, Lcom/oneplus/gallery/media/BaseMediaProvider$MediaChangeCallbackHandle;->callback:Lcom/oneplus/gallery/media/MediaChangeCallback;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/gallery/media/MediaChangeCallback;->onMediaRestored(Lcom/oneplus/gallery/media/Media;I)V

    .line 387
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 389
    :cond_0
    return-void
.end method

.method protected final callOnMediaUpdated(Lcom/oneplus/gallery/media/Media;I)V
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->m_MediaChangeCallbackHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 404
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->m_MediaChangeCallbackHandles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/BaseMediaProvider$MediaChangeCallbackHandle;

    iget-object v0, v0, Lcom/oneplus/gallery/media/BaseMediaProvider$MediaChangeCallbackHandle;->callback:Lcom/oneplus/gallery/media/MediaChangeCallback;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/gallery/media/MediaChangeCallback;->onMediaUpdated(Lcom/oneplus/gallery/media/Media;I)V

    .line 403
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 405
    :cond_0
    return-void
.end method

.method protected abstract createMediaIterator(I)Lcom/oneplus/gallery/media/BaseMediaProvider$MediaIterator;
.end method

.method protected final getFromMediaTable(Lcom/oneplus/gallery/media/MediaId;)Lcom/oneplus/gallery/media/Media;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TMedia::",
            "Lcom/oneplus/gallery/media/Media;",
            ">(",
            "Lcom/oneplus/gallery/media/MediaId;",
            ")TTMedia;"
        }
    .end annotation

    .prologue
    .line 428
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->m_MediaTable:Ljava/util/Map;

    monitor-enter v1

    .line 430
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->m_MediaTable:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/Media;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    .line 428
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getMediaIds()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/gallery/media/MediaId;",
            ">;"
        }
    .end annotation

    .prologue
    .line 441
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->m_MediaTable:Ljava/util/Map;

    monitor-enter v1

    .line 443
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->m_MediaTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    .line 441
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getMediaTableSize()I
    .locals 2

    .prologue
    .line 451
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->m_MediaTable:Ljava/util/Map;

    monitor-enter v1

    .line 453
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->m_MediaTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    .line 451
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isMediaRecycled(Lcom/oneplus/gallery/media/Media;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 462
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->m_RecycledMediaSet:Ljava/util/Set;

    monitor-enter v1

    .line 464
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->m_RecycledMediaSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 462
    monitor-exit v1

    .line 467
    return v2

    .line 465
    :cond_0
    monitor-exit v1

    const/4 v0, 0x1

    return v0

    .line 462
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isOwnedMedia(Lcom/oneplus/gallery/media/Media;)Z
    .locals 3

    .prologue
    .line 497
    if-nez p1, :cond_0

    .line 504
    const/4 v0, 0x0

    return v0

    .line 499
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->m_MediaTable:Ljava/util/Map;

    monitor-enter v1

    .line 501
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->m_MediaTable:Ljava/util/Map;

    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getId()Lcom/oneplus/gallery/media/MediaId;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    .line 499
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract isSubMedia(Lcom/oneplus/gallery/media/Media;)Z
.end method

.method public iterateMedia()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/oneplus/gallery/media/Media;",
            ">;"
        }
    .end annotation

    .prologue
    .line 483
    sget v0, Lcom/oneplus/gallery/media/BaseMediaProvider;->FLAG_GROUP_MEDIA:I

    sget v1, Lcom/oneplus/gallery/media/BaseMediaProvider;->FLAG_NORMAL_MEDIA:I

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/media/BaseMediaProvider;->iterateMedia(I)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public iterateMedia(I)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Iterator",
            "<",
            "Lcom/oneplus/gallery/media/Media;",
            ">;"
        }
    .end annotation

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseMediaProvider;->verifyAccess()V

    .line 489
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery/media/BaseMediaProvider;->createMediaIterator(I)Lcom/oneplus/gallery/media/BaseMediaProvider$MediaIterator;

    move-result-object v0

    return-object v0
.end method

.method public notifyMediaDeleted(Lcom/oneplus/gallery/media/Media;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 513
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/gallery/media/BaseMediaProvider;->removeFromMediaTable(Lcom/oneplus/gallery/media/Media;Z)Z

    .line 516
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery/media/BaseMediaProvider;->isSubMedia(Lcom/oneplus/gallery/media/Media;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 518
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery/media/BaseMediaProvider;->callOnMediaDeleted(Lcom/oneplus/gallery/media/Media;I)V

    .line 519
    return-void

    .line 517
    :cond_0
    sget v0, Lcom/oneplus/gallery/media/MediaChangeCallback;->FLAG_SUB_MEDIA:I

    or-int/2addr p2, v0

    goto :goto_0
.end method

.method public notifyMediaUpdated(Lcom/oneplus/gallery/media/Media;I)V
    .locals 1

    .prologue
    .line 527
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery/media/BaseMediaProvider;->isSubMedia(Lcom/oneplus/gallery/media/Media;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 529
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery/media/BaseMediaProvider;->callOnMediaUpdated(Lcom/oneplus/gallery/media/Media;I)V

    .line 530
    return-void

    .line 528
    :cond_0
    sget v0, Lcom/oneplus/gallery/media/MediaChangeCallback;->FLAG_SUB_MEDIA:I

    or-int/2addr p2, v0

    goto :goto_0
.end method

.method protected abstract onRelease()V
.end method

.method public release()V
    .locals 1

    .prologue
    .line 544
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->m_IsReleased:Z

    .line 547
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->m_MediaTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 548
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->m_RecycledMediaSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 551
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseMediaProvider;->onRelease()V

    .line 552
    return-void
.end method

.method protected final removeFromMediaTable(Lcom/oneplus/gallery/media/Media;Z)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 564
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery/media/BaseMediaProvider;->isSubMedia(Lcom/oneplus/gallery/media/Media;)Z

    move-result v2

    .line 567
    iget-object v3, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->m_MediaTable:Ljava/util/Map;

    monitor-enter v3

    .line 569
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->m_MediaTable:Ljava/util/Map;

    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getId()Lcom/oneplus/gallery/media/MediaId;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/Media;

    .line 570
    if-eqz v0, :cond_0

    .line 572
    if-ne v0, p1, :cond_1

    .line 567
    monitor-exit v3

    .line 581
    if-nez p2, :cond_2

    .line 590
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 571
    :cond_0
    monitor-exit v3

    return v1

    .line 574
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->m_MediaTable:Ljava/util/Map;

    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getId()Lcom/oneplus/gallery/media/MediaId;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "removeFromMediaTable() - Invalid media : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    monitor-exit v3

    return v1

    .line 567
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 584
    :cond_2
    if-nez v2, :cond_3

    move v0, v1

    .line 586
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/gallery/media/BaseMediaProvider;->callOnMediaDeleted(Lcom/oneplus/gallery/media/Media;I)V

    goto :goto_0

    .line 585
    :cond_3
    sget v0, Lcom/oneplus/gallery/media/MediaChangeCallback;->FLAG_SUB_MEDIA:I

    or-int/lit8 v0, v0, 0x0

    goto :goto_1
.end method

.method protected final removeFromRecycledMedia(Lcom/oneplus/gallery/media/Media;Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 603
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->m_RecycledMediaSet:Ljava/util/Set;

    monitor-enter v1

    .line 605
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->m_RecycledMediaSet:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 603
    monitor-exit v1

    .line 613
    if-nez p2, :cond_1

    .line 622
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 607
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "removeFromRecycledMedia() - No need to restore"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    monitor-exit v1

    return v0

    .line 603
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 616
    :cond_1
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery/media/BaseMediaProvider;->isSubMedia(Lcom/oneplus/gallery/media/Media;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 618
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/gallery/media/BaseMediaProvider;->callOnMediaRestored(Lcom/oneplus/gallery/media/Media;I)V

    goto :goto_0

    .line 617
    :cond_2
    sget v0, Lcom/oneplus/gallery/media/MediaChangeCallback;->FLAG_SUB_MEDIA:I

    or-int/lit8 v0, v0, 0x0

    goto :goto_1
.end method

.method protected final verifyReleaseState()V
    .locals 2

    .prologue
    .line 647
    iget-boolean v0, p0, Lcom/oneplus/gallery/media/BaseMediaProvider;->m_IsReleased:Z

    if-nez v0, :cond_0

    .line 649
    return-void

    .line 648
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Object has been released."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
