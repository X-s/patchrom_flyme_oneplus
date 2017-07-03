.class public abstract Lcom/oneplus/gallery2/media/BaseMediaSource;
.super Lcom/oneplus/base/component/BasicComponent;
.source "BaseMediaSource.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/MediaSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/media/BaseMediaSource$MediaIterationClientHandle;,
        Lcom/oneplus/gallery2/media/BaseMediaSource$MediaChangeCallbackHandle;,
        Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;,
        Lcom/oneplus/gallery2/media/BaseMediaSource$ExpandedMediaIterable;,
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
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "application"    # Lcom/oneplus/base/BaseApplication;

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

.method static synthetic access$000(Lcom/oneplus/gallery2/media/BaseMediaSource;Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/BaseMediaSource;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSource;->deactivate(Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/gallery2/media/BaseMediaSource;Lcom/oneplus/gallery2/media/BaseMediaSource$MediaChangeCallbackHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/BaseMediaSource;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/BaseMediaSource$MediaChangeCallbackHandle;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSource;->removeMediaChangedCallback(Lcom/oneplus/gallery2/media/BaseMediaSource$MediaChangeCallbackHandle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/gallery2/media/BaseMediaSource;Lcom/oneplus/gallery2/media/BaseMediaSource$MediaIterationClientHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/BaseMediaSource;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/BaseMediaSource$MediaIterationClientHandle;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSource;->removeMediaIterationClient(Lcom/oneplus/gallery2/media/BaseMediaSource$MediaIterationClientHandle;)V

    return-void
.end method

.method private deactivate(Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;)V
    .locals 3
    .param p1, "handle"    # Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSource;->verifyAccess()V

    .line 290
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_ActivationHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->TAG:Ljava/lang/String;

    const-string v1, "deactivate() - Handle count : "

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

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSource;->onDeactivated()V

    .line 301
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSource;->PROP_IS_ACTIVE:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/oneplus/gallery2/media/BaseMediaSource;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private iterateMedia(I)V
    .locals 8
    .param p1, "flags"    # I

    .prologue
    .line 408
    iget-object v6, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_MediaIterationClientHandles:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 409
    .local v0, "clientCount":I
    if-nez v0, :cond_1

    .line 444
    :cond_0
    return-void

    .line 411
    :cond_1
    iget-object v6, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_MediaIterationClientHandles:Ljava/util/List;

    new-array v7, v0, [Lcom/oneplus/gallery2/media/BaseMediaSource$MediaIterationClientHandle;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/oneplus/gallery2/media/BaseMediaSource$MediaIterationClientHandle;

    .line 412
    .local v1, "clientHandles":[Lcom/oneplus/gallery2/media/BaseMediaSource$MediaIterationClientHandle;
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 413
    aget-object v6, v1, v3

    iget-object v6, v6, Lcom/oneplus/gallery2/media/BaseMediaSource$MediaIterationClientHandle;->client:Lcom/oneplus/gallery2/media/MediaIterationClient;

    invoke-virtual {v6}, Lcom/oneplus/gallery2/media/MediaIterationClient;->onIterationStarted()V

    .line 412
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 414
    :cond_2
    sget v6, Lcom/oneplus/gallery2/media/BaseMediaSource;->FLAG_EXPAND_GROUPED_MEDIA:I

    and-int/2addr v6, p1

    if-nez v6, :cond_6

    .line 416
    iget-object v6, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_MediaTable:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery2/media/Media;

    .line 418
    .local v5, "media":Lcom/oneplus/gallery2/media/Media;
    invoke-virtual {p0, v5}, Lcom/oneplus/gallery2/media/BaseMediaSource;->isSubMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 420
    add-int/lit8 v3, v0, -0x1

    :goto_1
    if-ltz v3, :cond_3

    .line 422
    aget-object v2, v1, v3

    .line 423
    .local v2, "handle":Lcom/oneplus/gallery2/media/BaseMediaSource$MediaIterationClientHandle;
    iget-object v6, v2, Lcom/oneplus/gallery2/media/BaseMediaSource$MediaIterationClientHandle;->targetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    if-eqz v6, :cond_4

    invoke-interface {v5}, Lcom/oneplus/gallery2/media/Media;->getType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v6

    iget-object v7, v2, Lcom/oneplus/gallery2/media/BaseMediaSource$MediaIterationClientHandle;->targetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    if-ne v6, v7, :cond_5

    .line 424
    :cond_4
    iget-object v6, v2, Lcom/oneplus/gallery2/media/BaseMediaSource$MediaIterationClientHandle;->client:Lcom/oneplus/gallery2/media/MediaIterationClient;

    invoke-virtual {v6, v5}, Lcom/oneplus/gallery2/media/MediaIterationClient;->onIterate(Lcom/oneplus/gallery2/media/Media;)V

    .line 420
    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 430
    .end local v2    # "handle":Lcom/oneplus/gallery2/media/BaseMediaSource$MediaIterationClientHandle;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_6
    iget-object v6, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_MediaTable:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery2/media/Media;

    .line 432
    .restart local v5    # "media":Lcom/oneplus/gallery2/media/Media;
    instance-of v6, v5, Lcom/oneplus/gallery2/media/GroupedMedia;

    if-nez v6, :cond_7

    .line 434
    add-int/lit8 v3, v0, -0x1

    :goto_2
    if-ltz v3, :cond_7

    .line 436
    aget-object v2, v1, v3

    .line 437
    .restart local v2    # "handle":Lcom/oneplus/gallery2/media/BaseMediaSource$MediaIterationClientHandle;
    iget-object v6, v2, Lcom/oneplus/gallery2/media/BaseMediaSource$MediaIterationClientHandle;->targetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    if-eqz v6, :cond_8

    invoke-interface {v5}, Lcom/oneplus/gallery2/media/Media;->getType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v6

    iget-object v7, v2, Lcom/oneplus/gallery2/media/BaseMediaSource$MediaIterationClientHandle;->targetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    if-ne v6, v7, :cond_9

    .line 438
    :cond_8
    iget-object v6, v2, Lcom/oneplus/gallery2/media/BaseMediaSource$MediaIterationClientHandle;->client:Lcom/oneplus/gallery2/media/MediaIterationClient;

    invoke-virtual {v6, v5}, Lcom/oneplus/gallery2/media/MediaIterationClient;->onIterate(Lcom/oneplus/gallery2/media/Media;)V

    .line 434
    :cond_9
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 442
    .end local v2    # "handle":Lcom/oneplus/gallery2/media/BaseMediaSource$MediaIterationClientHandle;
    .end local v5    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_a
    add-int/lit8 v3, v0, -0x1

    :goto_3
    if-ltz v3, :cond_0

    .line 443
    aget-object v6, v1, v3

    iget-object v6, v6, Lcom/oneplus/gallery2/media/BaseMediaSource$MediaIterationClientHandle;->client:Lcom/oneplus/gallery2/media/MediaIterationClient;

    invoke-virtual {v6}, Lcom/oneplus/gallery2/media/MediaIterationClient;->onIterationEnded()V

    .line 442
    add-int/lit8 v3, v3, -0x1

    goto :goto_3
.end method

.method private removeMediaChangedCallback(Lcom/oneplus/gallery2/media/BaseMediaSource$MediaChangeCallbackHandle;)V
    .locals 1
    .param p1, "handle"    # Lcom/oneplus/gallery2/media/BaseMediaSource$MediaChangeCallbackHandle;

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
    .param p1, "handle"    # Lcom/oneplus/gallery2/media/BaseMediaSource$MediaIterationClientHandle;

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
    .locals 5
    .param p1, "flags"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 184
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSource;->verifyAccess()V

    .line 185
    invoke-virtual {p0, v4}, Lcom/oneplus/gallery2/media/BaseMediaSource;->isRunningOrInitializing(Z)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    .line 204
    :cond_0
    :goto_0
    return-object v0

    .line 189
    :cond_1
    new-instance v0, Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;-><init>(Lcom/oneplus/gallery2/media/BaseMediaSource;I)V

    .line 190
    .local v0, "handle":Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_ActivationHandles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaSource;->onActivationHandleCreated(Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 193
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_ActivationHandles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 194
    goto :goto_0

    .line 198
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->TAG:Ljava/lang/String;

    const-string v2, "activate() - Handle count : "

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

    if-ne v1, v4, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSource;->onActivated()V

    .line 202
    sget-object v1, Lcom/oneplus/gallery2/media/BaseMediaSource;->PROP_IS_ACTIVE:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/oneplus/gallery2/media/BaseMediaSource;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected final addMedia(Lcom/oneplus/gallery2/media/Media;ZI)Z
    .locals 5
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "notifyCreated"    # Z
    .param p3, "mediaCreatedFlags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 217
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSource;->verifyAccess()V

    .line 218
    if-nez p1, :cond_0

    .line 220
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->TAG:Ljava/lang/String;

    const-string v3, "addMedia() - No media to add"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :goto_0
    return v1

    .line 223
    :cond_0
    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_MediaTable:Ljava/util/Map;

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    .line 224
    .local v0, "prevMedia":Lcom/oneplus/gallery2/media/Media;
    if-eqz v0, :cond_2

    .line 226
    if-eq v0, p1, :cond_1

    .line 228
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addMedia() - Duplicate media : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_MediaTable:Ljava/util/Map;

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move v1, v2

    .line 232
    goto :goto_0

    .line 234
    :cond_2
    if-eqz p2, :cond_3

    .line 235
    invoke-virtual {p0, p1, p3}, Lcom/oneplus/gallery2/media/BaseMediaSource;->notifyMediaCreated(Lcom/oneplus/gallery2/media/Media;I)V

    :cond_3
    move v1, v2

    .line 236
    goto :goto_0
.end method

.method public addMediaChangedCallback(Lcom/oneplus/gallery2/media/MediaChangeCallback;)Lcom/oneplus/base/Handle;
    .locals 3
    .param p1, "callback"    # Lcom/oneplus/gallery2/media/MediaChangeCallback;

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSource;->verifyAccess()V

    .line 245
    if-nez p1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->TAG:Ljava/lang/String;

    const-string v2, "addMediaChangedCallback() - No call-back to add"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const/4 v0, 0x0

    .line 252
    :goto_0
    return-object v0

    .line 250
    :cond_0
    new-instance v0, Lcom/oneplus/gallery2/media/BaseMediaSource$MediaChangeCallbackHandle;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSource$MediaChangeCallbackHandle;-><init>(Lcom/oneplus/gallery2/media/BaseMediaSource;Lcom/oneplus/gallery2/media/MediaChangeCallback;)V

    .line 251
    .local v0, "handle":Lcom/oneplus/gallery2/media/BaseMediaSource$MediaChangeCallbackHandle;
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_MediaChangeCBHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addMediaIterationClient(Lcom/oneplus/gallery2/media/MediaIterationClient;Lcom/oneplus/gallery2/media/MediaType;)Lcom/oneplus/base/Handle;
    .locals 3
    .param p1, "client"    # Lcom/oneplus/gallery2/media/MediaIterationClient;
    .param p2, "targetMediaType"    # Lcom/oneplus/gallery2/media/MediaType;

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSource;->verifyAccess()V

    .line 261
    if-nez p1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->TAG:Ljava/lang/String;

    const-string v2, "addMediaChangedCallback() - No client to add"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const/4 v0, 0x0

    .line 268
    :goto_0
    return-object v0

    .line 266
    :cond_0
    new-instance v0, Lcom/oneplus/gallery2/media/BaseMediaSource$MediaIterationClientHandle;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/gallery2/media/BaseMediaSource$MediaIterationClientHandle;-><init>(Lcom/oneplus/gallery2/media/BaseMediaSource;Lcom/oneplus/gallery2/media/MediaIterationClient;Lcom/oneplus/gallery2/media/MediaType;)V

    .line 267
    .local v0, "handle":Lcom/oneplus/gallery2/media/BaseMediaSource$MediaIterationClientHandle;
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_MediaIterationClientHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected final containsMedia(Lcom/oneplus/gallery2/media/Media;)Z
    .locals 3
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    const/4 v0, 0x0

    .line 279
    if-nez p1, :cond_1

    .line 281
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_MediaTable:Ljava/util/Map;

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;
    .locals 1
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
    .line 311
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSource;->PROP_IS_ACTIVE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_ActivationHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 313
    :goto_1
    return-object v0

    .line 312
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 313
    :cond_1
    invoke-super {p0, p1}, Lcom/oneplus/base/component/BasicComponent;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
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
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "flags"    # I
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
    .line 347
    if-eqz p1, :cond_0

    .line 348
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_MediaTable:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    .line 349
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMedia(Lcom/oneplus/gallery2/media/MediaType;I)Ljava/lang/Iterable;
    .locals 2
    .param p1, "targetMediaType"    # Lcom/oneplus/gallery2/media/MediaType;
    .param p2, "flags"    # I
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

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/media/BaseMediaSource;->getRecycledMedia(Lcom/oneplus/gallery2/media/MediaType;I)Ljava/lang/Iterable;

    move-result-object v0

    .line 367
    :goto_0
    return-object v0

    .line 365
    :cond_0
    sget v0, Lcom/oneplus/gallery2/media/BaseMediaSource;->FLAG_EXPAND_GROUPED_MEDIA:I

    and-int/2addr v0, p2

    if-nez v0, :cond_1

    .line 366
    new-instance v0, Lcom/oneplus/gallery2/media/BaseMediaSource$NormalMediaIterable;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_MediaTable:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/oneplus/gallery2/media/BaseMediaSource$NormalMediaIterable;-><init>(Lcom/oneplus/gallery2/media/BaseMediaSource;Lcom/oneplus/gallery2/media/MediaType;Ljava/lang/Iterable;)V

    goto :goto_0

    .line 367
    :cond_1
    new-instance v0, Lcom/oneplus/gallery2/media/BaseMediaSource$ExpandedMediaIterable;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_MediaTable:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/oneplus/gallery2/media/BaseMediaSource$ExpandedMediaIterable;-><init>(Lcom/oneplus/gallery2/media/BaseMediaSource;Lcom/oneplus/gallery2/media/MediaType;Ljava/lang/Iterable;)V

    goto :goto_0
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
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 387
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 399
    invoke-super {p0, p1}, Lcom/oneplus/base/component/BasicComponent;->handleMessage(Landroid/os/Message;)V

    .line 402
    :cond_0
    return-void

    .line 391
    :pswitch_0
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_PendingMediaIterationFlags:Ljava/util/Set;

    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_PendingMediaIterationFlags:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Integer;

    .line 392
    .local v1, "pendingIterationFlags":[Ljava/lang/Integer;
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_PendingMediaIterationFlags:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 393
    array-length v2, v1

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 394
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/oneplus/gallery2/media/BaseMediaSource;->iterateMedia(I)V

    .line 393
    add-int/lit8 v0, v0, -0x1

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
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "flags"    # I

    .prologue
    .line 454
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_MediaChangeCBHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 455
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_MediaChangeCBHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/BaseMediaSource$MediaChangeCallbackHandle;

    iget-object v1, v1, Lcom/oneplus/gallery2/media/BaseMediaSource$MediaChangeCallbackHandle;->callback:Lcom/oneplus/gallery2/media/MediaChangeCallback;

    invoke-virtual {v1, p0, p1, p2}, Lcom/oneplus/gallery2/media/MediaChangeCallback;->onMediaCreated(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/Media;I)V

    .line 454
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 456
    :cond_0
    return-void
.end method

.method protected notifyMediaDeleted(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 2
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "flags"    # I

    .prologue
    .line 466
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_MediaChangeCBHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 467
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_MediaChangeCBHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/BaseMediaSource$MediaChangeCallbackHandle;

    iget-object v1, v1, Lcom/oneplus/gallery2/media/BaseMediaSource$MediaChangeCallbackHandle;->callback:Lcom/oneplus/gallery2/media/MediaChangeCallback;

    invoke-virtual {v1, p0, p1, p2}, Lcom/oneplus/gallery2/media/MediaChangeCallback;->onMediaDeleted(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/Media;I)V

    .line 466
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 468
    :cond_0
    return-void
.end method

.method protected notifyMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 2
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "flags"    # I

    .prologue
    .line 478
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_MediaChangeCBHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 479
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_MediaChangeCBHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/BaseMediaSource$MediaChangeCallbackHandle;

    iget-object v1, v1, Lcom/oneplus/gallery2/media/BaseMediaSource$MediaChangeCallbackHandle;->callback:Lcom/oneplus/gallery2/media/MediaChangeCallback;

    invoke-virtual {v1, p0, p1, p2}, Lcom/oneplus/gallery2/media/MediaChangeCallback;->onMediaUpdated(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/Media;I)V

    .line 478
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 480
    :cond_0
    return-void
.end method

.method final notifyMediaUpdatedByItself(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 1
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "flags"    # I

    .prologue
    .line 490
    if-nez p2, :cond_1

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 492
    :cond_1
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSource;->containsMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSource;->prepareMediaFlagsForCallback(Lcom/oneplus/gallery2/media/Media;)I

    move-result v0

    or-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/gallery2/media/BaseMediaSource;->notifyMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_0
.end method

.method protected onActivated()V
    .locals 0

    .prologue
    .line 502
    return-void
.end method

.method protected onActivationHandleClosed(Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;

    .prologue
    .line 510
    return-void
.end method

.method protected onActivationHandleCreated(Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;)Z
    .locals 1
    .param p1, "handle"    # Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;

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
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 553
    const/4 v0, 0x0

    .line 554
    .local v0, "flags":I
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSource;->isSubMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 555
    sget v1, Lcom/oneplus/gallery2/media/Media;->FLAG_SUB_MEDIA:I

    or-int/2addr v0, v1

    .line 556
    :cond_0
    return v0
.end method

.method protected final removeMedia(Lcom/oneplus/gallery2/media/Media;ZI)Z
    .locals 4
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "notifyDeleted"    # Z
    .param p3, "mediaDeletedFlags"    # I

    .prologue
    const/4 v1, 0x0

    .line 569
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSource;->verifyAccess()V

    .line 570
    if-nez p1, :cond_1

    .line 582
    :cond_0
    :goto_0
    return v1

    .line 572
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_MediaTable:Ljava/util/Map;

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    .line 573
    .local v0, "prevMedia":Lcom/oneplus/gallery2/media/Media;
    if-eqz v0, :cond_0

    .line 575
    if-eq v0, p1, :cond_2

    .line 577
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_MediaTable:Ljava/util/Map;

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 580
    :cond_2
    if-eqz p2, :cond_3

    .line 581
    invoke-virtual {p0, p1, p3}, Lcom/oneplus/gallery2/media/BaseMediaSource;->notifyMediaDeleted(Lcom/oneplus/gallery2/media/Media;I)V

    .line 582
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public scheduleMediaIteration(I)Z
    .locals 4
    .param p1, "flags"    # I

    .prologue
    const/4 v1, 0x1

    .line 606
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSource;->verifyAccess()V

    .line 607
    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/media/BaseMediaSource;->isRunningOrInitializing(Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 608
    const/4 v1, 0x0

    .line 613
    :cond_0
    :goto_0
    return v1

    .line 609
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_PendingMediaIterationFlags:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    .line 610
    .local v0, "needSchedule":Z
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSource;->m_PendingMediaIterationFlags:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 611
    if-eqz v0, :cond_0

    .line 612
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSource;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, -0x2710

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
