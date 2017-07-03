.class public abstract Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;
.super Lcom/oneplus/gallery2/media/BaseMediaSet;
.source "MultiSourcesMediaSet.java"


# instance fields
.field private m_AllMediaTablesReady:Z

.field private m_ComponentAddedHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/base/component/ComponentEventArgs",
            "<",
            "Lcom/oneplus/base/component/Component;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_ComponentRemovedHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/base/component/ComponentEventArgs",
            "<",
            "Lcom/oneplus/base/component/Component;",
            ">;>;"
        }
    .end annotation
.end field

.field private final m_MediaChangedCB:Lcom/oneplus/gallery2/media/MediaChangeCallback;

.field private final m_MediaChangedCBHandles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/gallery2/media/MediaSource;",
            "Lcom/oneplus/base/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_MediaIterationClient:Lcom/oneplus/gallery2/media/MediaIterationClient;

.field private final m_MediaIterationClientHandles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/gallery2/media/MediaSource;",
            "Lcom/oneplus/base/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_MediaSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/MediaSource;",
            ">;"
        }
    .end annotation
.end field

.field private final m_MediaTableInitChangedCB:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/Collection;Lcom/oneplus/gallery2/media/MediaType;)V
    .locals 7
    .param p2, "targetMediaType"    # Lcom/oneplus/gallery2/media/MediaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/oneplus/gallery2/media/MediaSource;",
            ">;",
            "Lcom/oneplus/gallery2/media/MediaType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "sources":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/oneplus/gallery2/media/MediaSource;>;"
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v5

    const-class v6, Lcom/oneplus/gallery2/media/TempMediaSource;

    invoke-virtual {v5, v6}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery2/media/MediaSource;

    invoke-direct {p0, v5, p2}, Lcom/oneplus/gallery2/media/BaseMediaSet;-><init>(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/MediaType;)V

    .line 28
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->m_AllMediaTablesReady:Z

    .line 29
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->m_MediaChangedCBHandles:Ljava/util/Map;

    .line 30
    new-instance v5, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet$1;

    invoke-direct {v5, p0}, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet$1;-><init>(Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;)V

    iput-object v5, p0, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->m_MediaIterationClient:Lcom/oneplus/gallery2/media/MediaIterationClient;

    .line 50
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->m_MediaIterationClientHandles:Ljava/util/Map;

    .line 51
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->m_MediaSources:Ljava/util/List;

    .line 57
    new-instance v5, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet$2;

    invoke-direct {v5, p0}, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet$2;-><init>(Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;)V

    iput-object v5, p0, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->m_MediaChangedCB:Lcom/oneplus/gallery2/media/MediaChangeCallback;

    .line 77
    new-instance v5, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet$3;

    invoke-direct {v5, p0}, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet$3;-><init>(Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;)V

    iput-object v5, p0, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->m_MediaTableInitChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    .line 102
    if-nez p1, :cond_3

    .line 104
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    .line 105
    .local v0, "app":Lcom/oneplus/base/BaseApplication;
    const-class v5, Lcom/oneplus/gallery2/media/MediaSource;

    invoke-virtual {v0, v5}, Lcom/oneplus/base/BaseApplication;->findComponents(Ljava/lang/Class;)[Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, [Lcom/oneplus/gallery2/media/MediaSource;

    .local v1, "arr$":[Lcom/oneplus/gallery2/media/MediaSource;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .line 107
    .local v4, "source":Lcom/oneplus/gallery2/media/MediaSource;
    instance-of v5, v4, Lcom/oneplus/gallery2/media/TempMediaSource;

    if-nez v5, :cond_0

    .line 108
    invoke-virtual {p0, v4}, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->onMediaSourceReady(Lcom/oneplus/gallery2/media/MediaSource;)V

    .line 105
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    .end local v4    # "source":Lcom/oneplus/gallery2/media/MediaSource;
    :cond_1
    new-instance v5, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet$4;

    invoke-direct {v5, p0}, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet$4;-><init>(Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;)V

    iput-object v5, p0, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->m_ComponentAddedHandler:Lcom/oneplus/base/EventHandler;

    .line 119
    new-instance v5, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet$5;

    invoke-direct {v5, p0}, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet$5;-><init>(Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;)V

    iput-object v5, p0, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->m_ComponentRemovedHandler:Lcom/oneplus/base/EventHandler;

    .line 128
    sget-object v5, Lcom/oneplus/base/BaseApplication;->EVENT_COMPONENT_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v6, p0, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->m_ComponentAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v0, v5, v6}, Lcom/oneplus/base/BaseApplication;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 129
    sget-object v5, Lcom/oneplus/base/BaseApplication;->EVENT_COMPONENT_REMOVED:Lcom/oneplus/base/EventKey;

    iget-object v6, p0, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->m_ComponentRemovedHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v0, v5, v6}, Lcom/oneplus/base/BaseApplication;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 136
    .end local v0    # "app":Lcom/oneplus/base/BaseApplication;
    .end local v1    # "arr$":[Lcom/oneplus/gallery2/media/MediaSource;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_2
    return-void

    .line 133
    :cond_3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery2/media/MediaSource;

    .line 134
    .restart local v4    # "source":Lcom/oneplus/gallery2/media/MediaSource;
    invoke-virtual {p0, v4}, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->onMediaSourceReady(Lcom/oneplus/gallery2/media/MediaSource;)V

    goto :goto_1
.end method

.method private setupMedia(Lcom/oneplus/gallery2/media/MediaSource;)V
    .locals 3
    .param p1, "source"    # Lcom/oneplus/gallery2/media/MediaSource;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->m_MediaChangedCBHandles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->m_MediaChangedCBHandles:Ljava/util/Map;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->m_MediaChangedCB:Lcom/oneplus/gallery2/media/MediaChangeCallback;

    invoke-interface {p1, v1}, Lcom/oneplus/gallery2/media/MediaSource;->addMediaChangedCallback(Lcom/oneplus/gallery2/media/MediaChangeCallback;)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->m_MediaIterationClientHandles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->m_MediaIterationClientHandles:Ljava/util/Map;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->m_MediaIterationClient:Lcom/oneplus/gallery2/media/MediaIterationClient;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->getTargetMediaType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/oneplus/gallery2/media/MediaSource;->addMediaIterationClient(Lcom/oneplus/gallery2/media/MediaIterationClient;Lcom/oneplus/gallery2/media/MediaType;)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/oneplus/gallery2/media/MediaSource;->scheduleMediaIteration(I)Z

    .line 289
    return-void
.end method


# virtual methods
.method protected areAllMediaTablesReady()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->m_AllMediaTablesReady:Z

    return v0
.end method

.method protected onAllMediaTablesReady()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->TAG:Ljava/lang/String;

    const-string v1, "onAllMediaTablesReady()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method protected onMediaSourceReady(Lcom/oneplus/gallery2/media/MediaSource;)V
    .locals 2
    .param p1, "source"    # Lcom/oneplus/gallery2/media/MediaSource;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->m_MediaSources:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSource;->PROP_IS_MEDIA_TABLE_READY:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Lcom/oneplus/gallery2/media/MediaSource;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->m_AllMediaTablesReady:Z

    .line 171
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSource;->PROP_IS_MEDIA_TABLE_READY:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->m_MediaTableInitChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery2/media/MediaSource;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 175
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->canSyncMediaBeforeMediaTableReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->setupMedia(Lcom/oneplus/gallery2/media/MediaSource;)V

    .line 177
    :cond_0
    return-void

    .line 174
    :cond_1
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->onMediaTableReady(Lcom/oneplus/gallery2/media/MediaSource;)V

    goto :goto_0
.end method

.method protected onMediaSourceRemoved(Lcom/oneplus/gallery2/media/MediaSource;)V
    .locals 6
    .param p1, "source"    # Lcom/oneplus/gallery2/media/MediaSource;

    .prologue
    .line 187
    iget-object v4, p0, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->m_MediaSources:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    sget-object v4, Lcom/oneplus/gallery2/media/MediaSource;->PROP_IS_MEDIA_TABLE_READY:Lcom/oneplus/base/PropertyKey;

    iget-object v5, p0, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->m_MediaTableInitChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v4, v5}, Lcom/oneplus/gallery2/media/MediaSource;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 192
    iget-object v4, p0, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->m_MediaChangedCBHandles:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/Handle;

    .line 193
    .local v0, "handle":Lcom/oneplus/base/Handle;
    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 196
    iget-object v4, p0, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->m_MediaIterationClientHandles:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "handle":Lcom/oneplus/base/Handle;
    check-cast v0, Lcom/oneplus/base/Handle;

    .line 197
    .restart local v0    # "handle":Lcom/oneplus/base/Handle;
    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 200
    iget-boolean v3, p0, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->m_AllMediaTablesReady:Z

    .line 201
    .local v3, "prevTableState":Z
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->m_AllMediaTablesReady:Z

    .line 202
    iget-object v4, p0, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->m_MediaSources:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/MediaSource;

    .line 204
    .local v2, "mediaSource":Lcom/oneplus/gallery2/media/MediaSource;
    sget-object v4, Lcom/oneplus/gallery2/media/MediaSource;->PROP_IS_MEDIA_TABLE_READY:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v4}, Lcom/oneplus/gallery2/media/MediaSource;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    .line 206
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->m_AllMediaTablesReady:Z

    .line 210
    .end local v2    # "mediaSource":Lcom/oneplus/gallery2/media/MediaSource;
    :cond_3
    if-nez v3, :cond_0

    iget-boolean v4, p0, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->m_AllMediaTablesReady:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->m_MediaSources:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->onAllMediaTablesReady()V

    goto :goto_0
.end method

.method protected onMediaTableReady(Lcom/oneplus/gallery2/media/MediaSource;)V
    .locals 3
    .param p1, "source"    # Lcom/oneplus/gallery2/media/MediaSource;

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->canSyncMediaBeforeMediaTableReady()Z

    move-result v2

    if-nez v2, :cond_0

    .line 224
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->setupMedia(Lcom/oneplus/gallery2/media/MediaSource;)V

    .line 227
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->m_AllMediaTablesReady:Z

    .line 228
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->m_MediaSources:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/MediaSource;

    .line 230
    .local v1, "mediaSource":Lcom/oneplus/gallery2/media/MediaSource;
    sget-object v2, Lcom/oneplus/gallery2/media/MediaSource;->PROP_IS_MEDIA_TABLE_READY:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/gallery2/media/MediaSource;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 232
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->m_AllMediaTablesReady:Z

    .line 236
    .end local v1    # "mediaSource":Lcom/oneplus/gallery2/media/MediaSource;
    :cond_2
    iget-boolean v2, p0, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->m_AllMediaTablesReady:Z

    if-eqz v2, :cond_3

    .line 237
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->onAllMediaTablesReady()V

    .line 238
    :cond_3
    return-void
.end method

.method protected final onPrepareMediaChangeCallback()Lcom/oneplus/base/Handle;
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final onPrepareMediaIterationClient()Lcom/oneplus/base/Handle;
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onRelease()V
    .locals 5

    .prologue
    .line 262
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    .line 263
    .local v0, "app":Lcom/oneplus/base/BaseApplication;
    iget-object v3, p0, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->m_ComponentAddedHandler:Lcom/oneplus/base/EventHandler;

    if-eqz v3, :cond_0

    .line 264
    sget-object v3, Lcom/oneplus/base/BaseApplication;->EVENT_COMPONENT_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->m_ComponentAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v0, v3, v4}, Lcom/oneplus/base/BaseApplication;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 265
    :cond_0
    iget-object v3, p0, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->m_ComponentRemovedHandler:Lcom/oneplus/base/EventHandler;

    if-eqz v3, :cond_1

    .line 266
    sget-object v3, Lcom/oneplus/base/BaseApplication;->EVENT_COMPONENT_REMOVED:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->m_ComponentRemovedHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v0, v3, v4}, Lcom/oneplus/base/BaseApplication;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 269
    :cond_1
    iget-object v3, p0, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->m_MediaSources:Ljava/util/List;

    iget-object v4, p0, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->m_MediaSources:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/oneplus/gallery2/media/MediaSource;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/oneplus/gallery2/media/MediaSource;

    .line 270
    .local v2, "sources":[Lcom/oneplus/gallery2/media/MediaSource;
    array-length v3, v2

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 271
    aget-object v3, v2, v1

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery2/media/MultiSourcesMediaSet;->onMediaSourceRemoved(Lcom/oneplus/gallery2/media/MediaSource;)V

    .line 270
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 274
    :cond_2
    invoke-super {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->onRelease()V

    .line 275
    return-void
.end method
