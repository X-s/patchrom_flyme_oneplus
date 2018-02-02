.class public abstract Lcom/oneplus/gallery2/media/BaseMediaSource;
.super Lcom/oneplus/base/component/BasicComponent;
.source "BaseMediaSource.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/MediaSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;,
        Lcom/oneplus/gallery2/media/BaseMediaSource$ExpandedMediaIterable;,
        Lcom/oneplus/gallery2/media/BaseMediaSource$MediaChangeCallbackHandle;,
        Lcom/oneplus/gallery2/media/BaseMediaSource$MediaIterationClientHandle;,
        Lcom/oneplus/gallery2/media/BaseMediaSource$NormalMediaIterable;
    }
.end annotation


# static fields
.field private static final MSG_ITERATE_MEDIA:I = -0x2710


# instance fields
.field private final m_ActivationHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_MediaChangeCBHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/BaseMediaSource$MediaChangeCallbackHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_MediaIterationClientHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/BaseMediaSource$MediaIterationClientHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_MediaTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;"
        }
    .end annotation
.end field

.field private final m_PendingMediaIterationFlags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/oneplus/base/BaseApplication;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 173
    invoke-direct {p0, p1, p2, v1}, Lcom/oneplus/base/component/BasicComponent;-><init>(Ljava/lang/String;Lcom/oneplus/base/component/ComponentOwner;Z)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_ActivationHandles:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_MediaChangeCBHandles:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_MediaIterationClientHandles:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_MediaTable:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_PendingMediaIterationFlags:Ljava/util/Set;

    .line 174
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSource;->PROP_IS_ACTIVE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/BaseMediaSource;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 175
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSource;->PROP_IS_MEDIA_TABLE_READY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/BaseMediaSource;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 176
    return-void
.end method

.method static synthetic access$0(Lcom/oneplus/gallery2/media/BaseMediaSource;Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;)V
    .locals 0

    .prologue
    .line 286
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSource;->deactivate(Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;)V

    return-void
.end method

.method static synthetic access$1(Lcom/oneplus/gallery2/media/BaseMediaSource;Lcom/oneplus/gallery2/media/BaseMediaSource$MediaChangeCallbackHandle;)V
    .locals 0

    .prologue
    .line 587
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSource;->removeMediaChangedCallback(Lcom/oneplus/gallery2/media/BaseMediaSource$MediaChangeCallbackHandle;)V

    return-void
.end method

.method static synthetic access$2(Lcom/oneplus/gallery2/media/BaseMediaSource;Lcom/oneplus/gallery2/media/BaseMediaSource$MediaIterationClientHandle;)V
    .locals 0

    .prologue
    .line 595
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSource;->removeMediaIterationClient(Lcom/oneplus/gallery2/media/BaseMediaSource$MediaIterationClientHandle;)V

    return-void
.end method

.method private deactivate(Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 289
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSource;->verifyAccess()V

    .line 290
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_ActivationHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "deactivate() - Handle count : "

    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_ActivationHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 295
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSource;->onActivationHandleClosed(Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;)V

    .line 298
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_ActivationHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 303
    :goto_0
    return-void

    .line 291
    :cond_0
    return-void

    .line 300
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSource;->onDeactivated()V

    .line 301
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSource;->PROP_IS_ACTIVE:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/oneplus/gallery2/media/BaseMediaSource;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private iterateMedia(I)V
    .locals 8

    .prologue
    .line 408
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_MediaIterationClientHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 409
    if-eqz v3, :cond_0

    .line 411
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_MediaIterationClientHandles:Ljava/util/List;

    new-array v1, v3, [Lcom/oneplus/gallery2/media/BaseMediaSource$MediaIterationClientHandle;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery2/media/BaseMediaSource$MediaIterationClientHandle;

    .line 412
    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 413
    aget-object v2, v0, v1

    iget-object v2, v2, Lcom/oneplus/gallery2/media/BaseMediaSource$MediaIterationClientHandle;->client:Lcom/oneplus/gallery2/media/MediaIterationClient;

    invoke-virtual {v2}, Lcom/oneplus/gallery2/media/MediaIterationClient;->onIterationStarted()V

    .line 412
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 410
    :cond_0
    return-void

    .line 414
    :cond_1
    sget v1, Lcom/oneplus/gallery2/media/BaseMediaSource;->FLAG_EXPAND_GROUPED_MEDIA:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_4

    .line 430
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_MediaTable:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    .line 432
    instance-of v2, v1, Lcom/oneplus/gallery2/media/GroupedMedia;

    if-nez v2, :cond_2

    .line 434
    add-int/lit8 v2, v3, -0x1

    :goto_1
    if-ltz v2, :cond_2

    .line 436
    aget-object v5, v0, v2

    .line 437
    iget-object v6, v5, Lcom/oneplus/gallery2/media/BaseMediaSource$MediaIterationClientHandle;->targetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    if-nez v6, :cond_8

    .line 438
    :cond_3
    iget-object v5, v5, Lcom/oneplus/gallery2/media/BaseMediaSource$MediaIterationClientHandle;->client:Lcom/oneplus/gallery2/media/MediaIterationClient;

    invoke-virtual {v5, v1}, Lcom/oneplus/gallery2/media/MediaIterationClient;->onIterate(Lcom/oneplus/gallery2/media/Media;)V

    .line 434
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 416
    :cond_4
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_MediaTable:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    .line 418
    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/media/BaseMediaSource;->isSubMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 420
    add-int/lit8 v2, v3, -0x1

    :goto_3
    if-ltz v2, :cond_5

    .line 422
    aget-object v5, v0, v2

    .line 423
    iget-object v6, v5, Lcom/oneplus/gallery2/media/BaseMediaSource$MediaIterationClientHandle;->targetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    if-nez v6, :cond_7

    .line 424
    :cond_6
    iget-object v5, v5, Lcom/oneplus/gallery2/media/BaseMediaSource$MediaIterationClientHandle;->client:Lcom/oneplus/gallery2/media/MediaIterationClient;

    invoke-virtual {v5, v1}, Lcom/oneplus/gallery2/media/MediaIterationClient;->onIterate(Lcom/oneplus/gallery2/media/Media;)V

    .line 420
    :goto_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 423
    :cond_7
    invoke-interface {v1}, Lcom/oneplus/gallery2/media/Media;->getType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v6

    iget-object v7, v5, Lcom/oneplus/gallery2/media/BaseMediaSource$MediaIterationClientHandle;->targetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    if-eq v6, v7, :cond_6

    goto :goto_4

    .line 437
    :cond_8
    invoke-interface {v1}, Lcom/oneplus/gallery2/media/Media;->getType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v6

    iget-object v7, v5, Lcom/oneplus/gallery2/media/BaseMediaSource$MediaIterationClientHandle;->targetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    if-eq v6, v7, :cond_3

    goto :goto_2

    .line 442
    :cond_9
    add-int/lit8 v1, v3, -0x1

    :goto_5
    if-ltz v1, :cond_a

    .line 443
    aget-object v2, v0, v1

    iget-object v2, v2, Lcom/oneplus/gallery2/media/BaseMediaSource$MediaIterationClientHandle;->client:Lcom/oneplus/gallery2/media/MediaIterationClient;

    invoke-virtual {v2}, Lcom/oneplus/gallery2/media/MediaIterationClient;->onIterationEnded()V

    .line 442
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 444
    :cond_a
    return-void
.end method

.method private removeMediaChangedCallback(Lcom/oneplus/gallery2/media/BaseMediaSource$MediaChangeCallbackHandle;)V
    .locals 1

    .prologue
    .line 589
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSource;->verifyAccess()V

    .line 590
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_MediaChangeCBHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 591
    return-void
.end method

.method private removeMediaIterationClient(Lcom/oneplus/gallery2/media/BaseMediaSource$MediaIterationClientHandle;)V
    .locals 1

    .prologue
    .line 597
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSource;->verifyAccess()V

    .line 598
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_MediaIterationClientHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 599
    return-void
.end method


# virtual methods
.method public activate(I)Lcom/oneplus/base/Handle;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 184
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSource;->verifyAccess()V

    .line 185
    invoke-virtual {p0, v5}, Lcom/oneplus/gallery2/media/BaseMediaSource;->isRunningOrInitializing(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    new-instance v0, Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;-><init>(Lcom/oneplus/gallery2/media/BaseMediaSource;I)V

    .line 190
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_ActivationHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaSource;->onActivationHandleCreated(Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "activate() - Handle count : "

    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_ActivationHandles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 199
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_ActivationHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v5, :cond_2

    .line 204
    :goto_0
    return-object v0

    .line 186
    :cond_0
    return-object v2

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_ActivationHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 194
    return-object v2

    .line 201
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSource;->onActivated()V

    .line 202
    sget-object v1, Lcom/oneplus/gallery2/media/BaseMediaSource;->PROP_IS_ACTIVE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/oneplus/gallery2/media/BaseMediaSource;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected final addMedia(Lcom/oneplus/gallery2/media/Media;ZI)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 217
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSource;->verifyAccess()V

    .line 218
    if-eqz p1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_MediaTable:Ljava/util/Map;

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    .line 224
    if-nez v0, :cond_1

    .line 234
    if-nez p2, :cond_3

    .line 236
    :goto_0
    return v2

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addMedia() - No media to add"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return v4

    .line 226
    :cond_1
    if-ne v0, p1, :cond_2

    .line 232
    return v2

    .line 228
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "addMedia() - Duplicate media : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_MediaTable:Ljava/util/Map;

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    return v4

    .line 235
    :cond_3
    invoke-virtual {p0, p1, p3}, Lcom/oneplus/gallery2/media/BaseMediaSource;->notifyMediaCreated(Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_0
.end method

.method public addMediaChangedCallback(Lcom/oneplus/gallery2/media/MediaChangeCallback;)Lcom/oneplus/base/Handle;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 244
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSource;->verifyAccess()V

    .line 245
    if-eqz p1, :cond_0

    .line 250
    new-instance v0, Lcom/oneplus/gallery2/media/BaseMediaSource$MediaChangeCallbackHandle;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSource$MediaChangeCallbackHandle;-><init>(Lcom/oneplus/gallery2/media/BaseMediaSource;Lcom/oneplus/gallery2/media/MediaChangeCallback;)V

    .line 251
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_MediaChangeCBHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    return-object v0

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addMediaChangedCallback() - No call-back to add"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-object v2
.end method

.method public addMediaIterationClient(Lcom/oneplus/gallery2/media/MediaIterationClient;Lcom/oneplus/gallery2/media/MediaType;)Lcom/oneplus/base/Handle;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 260
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSource;->verifyAccess()V

    .line 261
    if-eqz p1, :cond_0

    .line 266
    new-instance v0, Lcom/oneplus/gallery2/media/BaseMediaSource$MediaIterationClientHandle;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/gallery2/media/BaseMediaSource$MediaIterationClientHandle;-><init>(Lcom/oneplus/gallery2/media/BaseMediaSource;Lcom/oneplus/gallery2/media/MediaIterationClient;Lcom/oneplus/gallery2/media/MediaType;)V

    .line 267
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_MediaIterationClientHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    return-object v0

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addMediaChangedCallback() - No client to add"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    return-object v2
.end method

.method protected final containsMedia(Lcom/oneplus/gallery2/media/Media;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 279
    if-eqz p1, :cond_0

    .line 281
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_MediaTable:Ljava/util/Map;

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    return v2

    .line 280
    :cond_0
    return v2

    .line 281
    :cond_1
    const/4 v0, 0x1

    return v0
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
    const/4 v0, 0x0

    .line 311
    sget-object v1, Lcom/oneplus/gallery2/media/BaseMediaSource;->PROP_IS_ACTIVE:Lcom/oneplus/base/PropertyKey;

    if-eq p1, v1, :cond_0

    .line 313
    invoke-super {p0, p1}, Lcom/oneplus/base/component/BasicComponent;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 312
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_ActivationHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final getActivationHandleCount()I
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_ActivationHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMedia(Ljava/lang/String;I)Lcom/oneplus/gallery2/media/Media;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/oneplus/gallery2/media/Media;",
            ">(",
            "Ljava/lang/String;",
            "I)TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 347
    if-nez p1, :cond_0

    .line 349
    return-object v0

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_MediaTable:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    return-object v0
.end method

.method public getMedia(Lcom/oneplus/gallery2/media/MediaType;I)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery2/media/MediaType;",
            "I)",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSource;->verifyAccess()V

    .line 361
    sget v0, Lcom/oneplus/gallery2/media/BaseMediaSource;->FLAG_RECYCLED_MEDIA_ONLY:I

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    .line 365
    sget v0, Lcom/oneplus/gallery2/media/BaseMediaSource;->FLAG_EXPAND_GROUPED_MEDIA:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_1

    .line 367
    new-instance v0, Lcom/oneplus/gallery2/media/BaseMediaSource$ExpandedMediaIterable;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_MediaTable:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/oneplus/gallery2/media/BaseMediaSource$ExpandedMediaIterable;-><init>(Lcom/oneplus/gallery2/media/BaseMediaSource;Lcom/oneplus/gallery2/media/MediaType;Ljava/lang/Iterable;)V

    return-object v0

    .line 362
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/media/BaseMediaSource;->getRecycledMedia(Lcom/oneplus/gallery2/media/MediaType;I)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0

    .line 366
    :cond_1
    new-instance v0, Lcom/oneplus/gallery2/media/BaseMediaSource$NormalMediaIterable;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_MediaTable:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/oneplus/gallery2/media/BaseMediaSource$NormalMediaIterable;-><init>(Lcom/oneplus/gallery2/media/BaseMediaSource;Lcom/oneplus/gallery2/media/MediaType;Ljava/lang/Iterable;)V

    return-object v0
.end method

.method protected final getMedia()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;"
        }
    .end annotation

    .prologue
    .line 333
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_MediaTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getRecycledMedia(Lcom/oneplus/gallery2/media/MediaType;I)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery2/media/MediaType;",
            "I)",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;"
        }
    .end annotation
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 387
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 399
    invoke-super {p0, p1}, Lcom/oneplus/base/component/BasicComponent;->handleMessage(Landroid/os/Message;)V

    .line 402
    :cond_0
    return-void

    .line 391
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_PendingMediaIterationFlags:Ljava/util/Set;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_PendingMediaIterationFlags:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    .line 392
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_PendingMediaIterationFlags:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 393
    array-length v1, v0

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 394
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/oneplus/gallery2/media/BaseMediaSource;->iterateMedia(I)V

    goto :goto_0

    .line 387
    nop

    :pswitch_data_0
    .packed-switch -0x2710
        :pswitch_0
    .end packed-switch
.end method

.method protected notifyMediaCreated(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_MediaChangeCBHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 455
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_MediaChangeCBHandles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/BaseMediaSource$MediaChangeCallbackHandle;

    iget-object v0, v0, Lcom/oneplus/gallery2/media/BaseMediaSource$MediaChangeCallbackHandle;->callback:Lcom/oneplus/gallery2/media/MediaChangeCallback;

    invoke-virtual {v0, p0, p1, p2}, Lcom/oneplus/gallery2/media/MediaChangeCallback;->onMediaCreated(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/Media;I)V

    .line 454
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 456
    :cond_0
    return-void
.end method

.method protected notifyMediaDeleted(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_MediaChangeCBHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 467
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_MediaChangeCBHandles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/BaseMediaSource$MediaChangeCallbackHandle;

    iget-object v0, v0, Lcom/oneplus/gallery2/media/BaseMediaSource$MediaChangeCallbackHandle;->callback:Lcom/oneplus/gallery2/media/MediaChangeCallback;

    invoke-virtual {v0, p0, p1, p2}, Lcom/oneplus/gallery2/media/MediaChangeCallback;->onMediaDeleted(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/Media;I)V

    .line 466
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 468
    :cond_0
    return-void
.end method

.method protected notifyMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_MediaChangeCBHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 479
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_MediaChangeCBHandles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/BaseMediaSource$MediaChangeCallbackHandle;

    iget-object v0, v0, Lcom/oneplus/gallery2/media/BaseMediaSource$MediaChangeCallbackHandle;->callback:Lcom/oneplus/gallery2/media/MediaChangeCallback;

    invoke-virtual {v0, p0, p1, p2}, Lcom/oneplus/gallery2/media/MediaChangeCallback;->onMediaUpdated(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/Media;I)V

    .line 478
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 480
    :cond_0
    return-void
.end method

.method final notifyMediaUpdatedByItself(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 1

    .prologue
    .line 490
    if-eqz p2, :cond_0

    .line 492
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSource;->containsMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 494
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSource;->prepareMediaFlagsForCallback(Lcom/oneplus/gallery2/media/Media;)I

    move-result v0

    or-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/gallery2/media/BaseMediaSource;->notifyMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V

    .line 495
    return-void

    .line 491
    :cond_0
    return-void

    .line 493
    :cond_1
    return-void
.end method

.method protected onActivated()V
    .locals 0

    .prologue
    .line 502
    return-void
.end method

.method protected onActivationHandleClosed(Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;)V
    .locals 0

    .prologue
    .line 510
    return-void
.end method

.method protected onActivationHandleCreated(Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;)Z
    .locals 1

    .prologue
    .line 520
    const/4 v0, 0x1

    return v0
.end method

.method protected onDeactivated()V
    .locals 0

    .prologue
    .line 528
    return-void
.end method

.method protected onDeinitialize()V
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_MediaTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 539
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_ActivationHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 542
    invoke-super {p0}, Lcom/oneplus/base/component/BasicComponent;->onDeinitialize()V

    .line 543
    return-void
.end method

.method protected prepareMediaFlagsForCallback(Lcom/oneplus/gallery2/media/Media;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 554
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSource;->isSubMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 556
    :goto_0
    return v0

    .line 555
    :cond_0
    sget v0, Lcom/oneplus/gallery2/media/Media;->FLAG_SUB_MEDIA:I

    or-int/lit8 v0, v0, 0x0

    goto :goto_0
.end method

.method protected final removeMedia(Lcom/oneplus/gallery2/media/Media;ZI)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 569
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSource;->verifyAccess()V

    .line 570
    if-eqz p1, :cond_0

    .line 572
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_MediaTable:Ljava/util/Map;

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    .line 573
    if-eqz v0, :cond_1

    .line 575
    if-ne v0, p1, :cond_2

    .line 580
    if-nez p2, :cond_3

    .line 582
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 571
    :cond_0
    return v3

    .line 574
    :cond_1
    return v3

    .line 577
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_MediaTable:Ljava/util/Map;

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    return v3

    .line 581
    :cond_3
    invoke-virtual {p0, p1, p3}, Lcom/oneplus/gallery2/media/BaseMediaSource;->notifyMediaDeleted(Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_0
.end method

.method public scheduleMediaIteration(I)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 606
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSource;->verifyAccess()V

    .line 607
    invoke-virtual {p0, v3}, Lcom/oneplus/gallery2/media/BaseMediaSource;->isRunningOrInitializing(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_PendingMediaIterationFlags:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    .line 610
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_PendingMediaIterationFlags:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 611
    if-nez v0, :cond_1

    .line 613
    :goto_0
    return v3

    .line 608
    :cond_0
    return v1

    .line 612
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSource;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, -0x2710

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
