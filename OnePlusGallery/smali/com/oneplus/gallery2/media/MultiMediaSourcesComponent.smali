.class public abstract Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;
.super Lcom/oneplus/base/component/BasicComponent;
.source "MultiMediaSourcesComponent.java"


# instance fields
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
.method protected constructor <init>(Ljava/lang/String;Lcom/oneplus/base/component/ComponentOwner;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "owner"    # Lcom/oneplus/base/component/ComponentOwner;

    .prologue
    .line 76
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/base/component/BasicComponent;-><init>(Ljava/lang/String;Lcom/oneplus/base/component/ComponentOwner;Z)V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;->m_MediaChangedCBHandles:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;->m_MediaSources:Ljava/util/List;

    .line 35
    new-instance v0, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent$1;-><init>(Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;->m_MediaChangedCB:Lcom/oneplus/gallery2/media/MediaChangeCallback;

    .line 55
    new-instance v0, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent$2;-><init>(Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;->m_MediaTableInitChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    .line 77
    return-void
.end method


# virtual methods
.method protected addCallbacksBeforeMediaTableReady()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method protected onDeinitialize()V
    .locals 5

    .prologue
    .line 95
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    .line 96
    .local v0, "app":Lcom/oneplus/base/BaseApplication;
    iget-object v3, p0, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;->m_ComponentAddedHandler:Lcom/oneplus/base/EventHandler;

    if-eqz v3, :cond_0

    .line 97
    sget-object v3, Lcom/oneplus/base/BaseApplication;->EVENT_COMPONENT_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;->m_ComponentAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v0, v3, v4}, Lcom/oneplus/base/BaseApplication;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 98
    :cond_0
    iget-object v3, p0, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;->m_ComponentRemovedHandler:Lcom/oneplus/base/EventHandler;

    if-eqz v3, :cond_1

    .line 99
    sget-object v3, Lcom/oneplus/base/BaseApplication;->EVENT_COMPONENT_REMOVED:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;->m_ComponentRemovedHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v0, v3, v4}, Lcom/oneplus/base/BaseApplication;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 102
    :cond_1
    iget-object v3, p0, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;->m_MediaSources:Ljava/util/List;

    iget-object v4, p0, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;->m_MediaSources:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/oneplus/gallery2/media/MediaSource;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/oneplus/gallery2/media/MediaSource;

    .line 103
    .local v2, "sources":[Lcom/oneplus/gallery2/media/MediaSource;
    array-length v3, v2

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 104
    aget-object v3, v2, v1

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;->onMediaSourceRemoved(Lcom/oneplus/gallery2/media/MediaSource;)V

    .line 103
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 107
    :cond_2
    invoke-super {p0}, Lcom/oneplus/base/component/BasicComponent;->onDeinitialize()V

    .line 108
    return-void
.end method

.method protected onInitialize()V
    .locals 7

    .prologue
    .line 116
    invoke-super {p0}, Lcom/oneplus/base/component/BasicComponent;->onInitialize()V

    .line 119
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    .line 120
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

    .line 122
    .local v4, "source":Lcom/oneplus/gallery2/media/MediaSource;
    instance-of v5, v4, Lcom/oneplus/gallery2/media/TempMediaSource;

    if-nez v5, :cond_0

    .line 123
    invoke-virtual {p0, v4}, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;->onMediaSourceReady(Lcom/oneplus/gallery2/media/MediaSource;)V

    .line 120
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    .end local v4    # "source":Lcom/oneplus/gallery2/media/MediaSource;
    :cond_1
    new-instance v5, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent$3;

    invoke-direct {v5, p0}, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent$3;-><init>(Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;)V

    iput-object v5, p0, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;->m_ComponentAddedHandler:Lcom/oneplus/base/EventHandler;

    .line 134
    new-instance v5, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent$4;

    invoke-direct {v5, p0}, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent$4;-><init>(Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;)V

    iput-object v5, p0, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;->m_ComponentRemovedHandler:Lcom/oneplus/base/EventHandler;

    .line 143
    sget-object v5, Lcom/oneplus/base/BaseApplication;->EVENT_COMPONENT_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v6, p0, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;->m_ComponentAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v0, v5, v6}, Lcom/oneplus/base/BaseApplication;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 144
    sget-object v5, Lcom/oneplus/base/BaseApplication;->EVENT_COMPONENT_REMOVED:Lcom/oneplus/base/EventKey;

    iget-object v6, p0, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;->m_ComponentRemovedHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v0, v5, v6}, Lcom/oneplus/base/BaseApplication;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 145
    return-void
.end method

.method protected onMediaCreated(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/Media;I)V
    .locals 0
    .param p1, "source"    # Lcom/oneplus/gallery2/media/MediaSource;
    .param p2, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p3, "flags"    # I

    .prologue
    .line 155
    return-void
.end method

.method protected onMediaDeleted(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/Media;I)V
    .locals 0
    .param p1, "source"    # Lcom/oneplus/gallery2/media/MediaSource;
    .param p2, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p3, "flags"    # I

    .prologue
    .line 165
    return-void
.end method

.method protected onMediaSourceReady(Lcom/oneplus/gallery2/media/MediaSource;)V
    .locals 2
    .param p1, "source"    # Lcom/oneplus/gallery2/media/MediaSource;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;->m_MediaSources:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;->addCallbacksBeforeMediaTableReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;->m_MediaChangedCBHandles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;->m_MediaChangedCBHandles:Ljava/util/Map;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;->m_MediaChangedCB:Lcom/oneplus/gallery2/media/MediaChangeCallback;

    invoke-interface {p1, v1}, Lcom/oneplus/gallery2/media/MediaSource;->addMediaChangedCallback(Lcom/oneplus/gallery2/media/MediaChangeCallback;)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_0
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSource;->PROP_IS_MEDIA_TABLE_READY:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Lcom/oneplus/gallery2/media/MediaSource;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSource;->PROP_IS_MEDIA_TABLE_READY:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;->m_MediaTableInitChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery2/media/MediaSource;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 186
    :goto_0
    return-void

    .line 185
    :cond_1
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;->onMediaTableReady(Lcom/oneplus/gallery2/media/MediaSource;)V

    goto :goto_0
.end method

.method protected onMediaSourceRemoved(Lcom/oneplus/gallery2/media/MediaSource;)V
    .locals 3
    .param p1, "source"    # Lcom/oneplus/gallery2/media/MediaSource;

    .prologue
    .line 196
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;->m_MediaSources:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    :goto_0
    return-void

    .line 200
    :cond_0
    sget-object v1, Lcom/oneplus/gallery2/media/MediaSource;->PROP_IS_MEDIA_TABLE_READY:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;->m_MediaTableInitChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v1, v2}, Lcom/oneplus/gallery2/media/MediaSource;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 201
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;->m_MediaChangedCBHandles:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/Handle;

    .line 202
    .local v0, "handle":Lcom/oneplus/base/Handle;
    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0
.end method

.method protected onMediaTableReady(Lcom/oneplus/gallery2/media/MediaSource;)V
    .locals 2
    .param p1, "source"    # Lcom/oneplus/gallery2/media/MediaSource;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;->m_MediaChangedCBHandles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;->m_MediaChangedCBHandles:Ljava/util/Map;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;->m_MediaChangedCB:Lcom/oneplus/gallery2/media/MediaChangeCallback;

    invoke-interface {p1, v1}, Lcom/oneplus/gallery2/media/MediaSource;->addMediaChangedCallback(Lcom/oneplus/gallery2/media/MediaChangeCallback;)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_0
    return-void
.end method

.method protected onMediaUpdated(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/Media;I)V
    .locals 0
    .param p1, "source"    # Lcom/oneplus/gallery2/media/MediaSource;
    .param p2, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p3, "flags"    # I

    .prologue
    .line 224
    return-void
.end method
