.class public final Lcom/oneplus/gallery2/media/MediaSources;
.super Ljava/lang/Object;
.source "MediaSources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/media/MediaSources$ActivationHandle;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaSources"

.field private static final m_ActivationHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/MediaSources$ActivationHandle;",
            ">;"
        }
    .end annotation
.end field

.field private static final m_ComponentReadyHandler:Lcom/oneplus/base/EventHandler;
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

.field private static final m_ComponentRemovedHandler:Lcom/oneplus/base/EventHandler;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/gallery2/media/MediaSources;->m_ActivationHandles:Ljava/util/List;

    .line 28
    new-instance v0, Lcom/oneplus/gallery2/media/MediaSources$1;

    invoke-direct {v0}, Lcom/oneplus/gallery2/media/MediaSources$1;-><init>()V

    sput-object v0, Lcom/oneplus/gallery2/media/MediaSources;->m_ComponentReadyHandler:Lcom/oneplus/base/EventHandler;

    .line 37
    new-instance v0, Lcom/oneplus/gallery2/media/MediaSources$2;

    invoke-direct {v0}, Lcom/oneplus/gallery2/media/MediaSources$2;-><init>()V

    sput-object v0, Lcom/oneplus/gallery2/media/MediaSources;->m_ComponentRemovedHandler:Lcom/oneplus/base/EventHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery2/media/MediaSource;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/MediaSource;

    .prologue
    .line 20
    invoke-static {p0}, Lcom/oneplus/gallery2/media/MediaSources;->onMediaSourceReady(Lcom/oneplus/gallery2/media/MediaSource;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/gallery2/media/MediaSource;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/MediaSource;

    .prologue
    .line 20
    invoke-static {p0}, Lcom/oneplus/gallery2/media/MediaSources;->onMediaSourceRemoved(Lcom/oneplus/gallery2/media/MediaSource;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/gallery2/media/MediaSources$ActivationHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/MediaSources$ActivationHandle;

    .prologue
    .line 20
    invoke-static {p0}, Lcom/oneplus/gallery2/media/MediaSources;->deactivate(Lcom/oneplus/gallery2/media/MediaSources$ActivationHandle;)V

    return-void
.end method

.method public static activate(I)Lcom/oneplus/base/Handle;
    .locals 10
    .param p0, "flags"    # I

    .prologue
    .line 83
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    .line 84
    .local v0, "app":Lcom/oneplus/base/BaseApplication;
    invoke-virtual {v0}, Lcom/oneplus/base/BaseApplication;->isDependencyThread()Z

    move-result v7

    if-nez v7, :cond_0

    .line 85
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Access outside main thread"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 86
    :cond_0
    new-instance v2, Lcom/oneplus/gallery2/media/MediaSources$ActivationHandle;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery2/media/MediaSources$ActivationHandle;-><init>(I)V

    .line 87
    .local v2, "handle":Lcom/oneplus/gallery2/media/MediaSources$ActivationHandle;
    sget-object v7, Lcom/oneplus/gallery2/media/MediaSources;->m_ActivationHandles:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    const-string v7, "MediaSources"

    const-string v8, "activate() - Hancle count : "

    sget-object v9, Lcom/oneplus/gallery2/media/MediaSources;->m_ActivationHandles:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    const-class v7, Lcom/oneplus/gallery2/media/MediaSource;

    invoke-virtual {v0, v7}, Lcom/oneplus/base/BaseApplication;->findComponents(Ljava/lang/Class;)[Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, [Lcom/oneplus/gallery2/media/MediaSource;

    .local v1, "arr$":[Lcom/oneplus/gallery2/media/MediaSource;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v5, v1, v3

    .line 91
    .local v5, "source":Lcom/oneplus/gallery2/media/MediaSource;
    invoke-interface {v5, p0}, Lcom/oneplus/gallery2/media/MediaSource;->activate(I)Lcom/oneplus/base/Handle;

    move-result-object v6

    .line 92
    .local v6, "subHandle":Lcom/oneplus/base/Handle;
    invoke-static {v6}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 93
    iget-object v7, v2, Lcom/oneplus/gallery2/media/MediaSources$ActivationHandle;->subActivationHandles:Ljava/util/Map;

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 95
    .end local v5    # "source":Lcom/oneplus/gallery2/media/MediaSource;
    .end local v6    # "subHandle":Lcom/oneplus/base/Handle;
    :cond_2
    sget-object v7, Lcom/oneplus/gallery2/media/MediaSources;->m_ActivationHandles:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 97
    sget-object v7, Lcom/oneplus/base/BaseApplication;->EVENT_COMPONENT_ADDED:Lcom/oneplus/base/EventKey;

    sget-object v8, Lcom/oneplus/gallery2/media/MediaSources;->m_ComponentReadyHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v0, v7, v8}, Lcom/oneplus/base/BaseApplication;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 98
    sget-object v7, Lcom/oneplus/base/BaseApplication;->EVENT_COMPONENT_REMOVED:Lcom/oneplus/base/EventKey;

    sget-object v8, Lcom/oneplus/gallery2/media/MediaSources;->m_ComponentRemovedHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v0, v7, v8}, Lcom/oneplus/base/BaseApplication;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 100
    :cond_3
    return-object v2
.end method

.method private static deactivate(Lcom/oneplus/gallery2/media/MediaSources$ActivationHandle;)V
    .locals 6
    .param p0, "handle"    # Lcom/oneplus/gallery2/media/MediaSources$ActivationHandle;

    .prologue
    .line 107
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    .line 108
    .local v0, "app":Lcom/oneplus/base/BaseApplication;
    invoke-virtual {v0}, Lcom/oneplus/base/BaseApplication;->isDependencyThread()Z

    move-result v3

    if-nez v3, :cond_0

    .line 109
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Access outside main thread"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 110
    :cond_0
    sget-object v3, Lcom/oneplus/gallery2/media/MediaSources;->m_ActivationHandles:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 120
    :cond_1
    :goto_0
    return-void

    .line 112
    :cond_2
    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaSources$ActivationHandle;->subActivationHandles:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/base/Handle;

    .line 113
    .local v2, "subHandle":Lcom/oneplus/base/Handle;
    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_1

    .line 114
    .end local v2    # "subHandle":Lcom/oneplus/base/Handle;
    :cond_3
    const-string v3, "MediaSources"

    const-string v4, "deactivate() - Hancle count : "

    sget-object v5, Lcom/oneplus/gallery2/media/MediaSources;->m_ActivationHandles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    sget-object v3, Lcom/oneplus/gallery2/media/MediaSources;->m_ActivationHandles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 117
    sget-object v3, Lcom/oneplus/base/BaseApplication;->EVENT_COMPONENT_ADDED:Lcom/oneplus/base/EventKey;

    sget-object v4, Lcom/oneplus/gallery2/media/MediaSources;->m_ComponentReadyHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v0, v3, v4}, Lcom/oneplus/base/BaseApplication;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 118
    sget-object v3, Lcom/oneplus/base/BaseApplication;->EVENT_COMPONENT_REMOVED:Lcom/oneplus/base/EventKey;

    sget-object v4, Lcom/oneplus/gallery2/media/MediaSources;->m_ComponentRemovedHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v0, v3, v4}, Lcom/oneplus/base/BaseApplication;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    goto :goto_0
.end method

.method private static onMediaSourceReady(Lcom/oneplus/gallery2/media/MediaSource;)V
    .locals 4
    .param p0, "source"    # Lcom/oneplus/gallery2/media/MediaSource;

    .prologue
    .line 126
    sget-object v3, Lcom/oneplus/gallery2/media/MediaSources;->m_ActivationHandles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 128
    sget-object v3, Lcom/oneplus/gallery2/media/MediaSources;->m_ActivationHandles:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSources$ActivationHandle;

    .line 129
    .local v0, "handle":Lcom/oneplus/gallery2/media/MediaSources$ActivationHandle;
    iget v3, v0, Lcom/oneplus/gallery2/media/MediaSources$ActivationHandle;->flags:I

    invoke-interface {p0, v3}, Lcom/oneplus/gallery2/media/MediaSource;->activate(I)Lcom/oneplus/base/Handle;

    move-result-object v2

    .line 130
    .local v2, "subHandle":Lcom/oneplus/base/Handle;
    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 131
    iget-object v3, v0, Lcom/oneplus/gallery2/media/MediaSources$ActivationHandle;->subActivationHandles:Ljava/util/Map;

    invoke-interface {v3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 133
    .end local v0    # "handle":Lcom/oneplus/gallery2/media/MediaSources$ActivationHandle;
    .end local v2    # "subHandle":Lcom/oneplus/base/Handle;
    :cond_1
    return-void
.end method

.method private static onMediaSourceRemoved(Lcom/oneplus/gallery2/media/MediaSource;)V
    .locals 3
    .param p0, "source"    # Lcom/oneplus/gallery2/media/MediaSource;

    .prologue
    .line 139
    sget-object v2, Lcom/oneplus/gallery2/media/MediaSources;->m_ActivationHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 141
    sget-object v2, Lcom/oneplus/gallery2/media/MediaSources;->m_ActivationHandles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSources$ActivationHandle;

    .line 142
    .local v0, "handle":Lcom/oneplus/gallery2/media/MediaSources$ActivationHandle;
    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaSources$ActivationHandle;->subActivationHandles:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 144
    .end local v0    # "handle":Lcom/oneplus/gallery2/media/MediaSources$ActivationHandle;
    :cond_0
    return-void
.end method
