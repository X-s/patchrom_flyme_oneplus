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

    .line 45
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method static synthetic access$0(Lcom/oneplus/gallery2/media/MediaSource;)V
    .locals 0

    .prologue
    .line 124
    invoke-static {p0}, Lcom/oneplus/gallery2/media/MediaSources;->onMediaSourceReady(Lcom/oneplus/gallery2/media/MediaSource;)V

    return-void
.end method

.method static synthetic access$1(Lcom/oneplus/gallery2/media/MediaSource;)V
    .locals 0

    .prologue
    .line 137
    invoke-static {p0}, Lcom/oneplus/gallery2/media/MediaSources;->onMediaSourceRemoved(Lcom/oneplus/gallery2/media/MediaSource;)V

    return-void
.end method

.method static synthetic access$2(Lcom/oneplus/gallery2/media/MediaSources$ActivationHandle;)V
    .locals 0

    .prologue
    .line 105
    invoke-static {p0}, Lcom/oneplus/gallery2/media/MediaSources;->deactivate(Lcom/oneplus/gallery2/media/MediaSources$ActivationHandle;)V

    return-void
.end method

.method public static activate(I)Lcom/oneplus/base/Handle;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v2

    .line 84
    invoke-virtual {v2}, Lcom/oneplus/base/BaseApplication;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    new-instance v3, Lcom/oneplus/gallery2/media/MediaSources$ActivationHandle;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery2/media/MediaSources$ActivationHandle;-><init>(I)V

    .line 87
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSources;->m_ActivationHandles:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "MediaSources"

    const-string/jumbo v4, "activate() - Hancle count : "

    .line 88
    sget-object v5, Lcom/oneplus/gallery2/media/MediaSources;->m_ActivationHandles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-class v0, Lcom/oneplus/gallery2/media/MediaSource;

    .line 89
    invoke-virtual {v2, v0}, Lcom/oneplus/base/BaseApplication;->findComponents(Ljava/lang/Class;)[Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery2/media/MediaSource;

    array-length v4, v0

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, v0, v1

    .line 91
    invoke-interface {v5, p0}, Lcom/oneplus/gallery2/media/MediaSource;->activate(I)Lcom/oneplus/base/Handle;

    move-result-object v6

    .line 92
    invoke-static {v6}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 89
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Access outside main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_1
    iget-object v7, v3, Lcom/oneplus/gallery2/media/MediaSources$ActivationHandle;->subActivationHandles:Ljava/util/Map;

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 95
    :cond_2
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSources;->m_ActivationHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    .line 100
    :goto_2
    return-object v3

    .line 97
    :cond_3
    sget-object v0, Lcom/oneplus/base/BaseApplication;->EVENT_COMPONENT_ADDED:Lcom/oneplus/base/EventKey;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaSources;->m_ComponentReadyHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v2, v0, v1}, Lcom/oneplus/base/BaseApplication;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 98
    sget-object v0, Lcom/oneplus/base/BaseApplication;->EVENT_COMPONENT_REMOVED:Lcom/oneplus/base/EventKey;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaSources;->m_ComponentRemovedHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v2, v0, v1}, Lcom/oneplus/base/BaseApplication;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    goto :goto_2
.end method

.method private static deactivate(Lcom/oneplus/gallery2/media/MediaSources$ActivationHandle;)V
    .locals 4

    .prologue
    .line 107
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v1

    .line 108
    invoke-virtual {v1}, Lcom/oneplus/base/BaseApplication;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSources;->m_ActivationHandles:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaSources$ActivationHandle;->subActivationHandles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/Handle;

    .line 113
    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Access outside main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_1
    return-void

    :cond_2
    const-string/jumbo v0, "MediaSources"

    const-string/jumbo v2, "deactivate() - Hancle count : "

    .line 114
    sget-object v3, Lcom/oneplus/gallery2/media/MediaSources;->m_ActivationHandles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSources;->m_ActivationHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 120
    :goto_1
    return-void

    .line 117
    :cond_3
    sget-object v0, Lcom/oneplus/base/BaseApplication;->EVENT_COMPONENT_ADDED:Lcom/oneplus/base/EventKey;

    sget-object v2, Lcom/oneplus/gallery2/media/MediaSources;->m_ComponentReadyHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/base/BaseApplication;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 118
    sget-object v0, Lcom/oneplus/base/BaseApplication;->EVENT_COMPONENT_REMOVED:Lcom/oneplus/base/EventKey;

    sget-object v2, Lcom/oneplus/gallery2/media/MediaSources;->m_ComponentRemovedHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/base/BaseApplication;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    goto :goto_1
.end method

.method private static onMediaSourceReady(Lcom/oneplus/gallery2/media/MediaSource;)V
    .locals 4

    .prologue
    .line 126
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSources;->m_ActivationHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 128
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSources;->m_ActivationHandles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSources$ActivationHandle;

    .line 129
    iget v2, v0, Lcom/oneplus/gallery2/media/MediaSources$ActivationHandle;->flags:I

    invoke-interface {p0, v2}, Lcom/oneplus/gallery2/media/MediaSource;->activate(I)Lcom/oneplus/base/Handle;

    move-result-object v2

    .line 130
    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 126
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 131
    :cond_0
    iget-object v0, v0, Lcom/oneplus/gallery2/media/MediaSources$ActivationHandle;->subActivationHandles:Ljava/util/Map;

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 133
    :cond_1
    return-void
.end method

.method private static onMediaSourceRemoved(Lcom/oneplus/gallery2/media/MediaSource;)V
    .locals 2

    .prologue
    .line 139
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSources;->m_ActivationHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 141
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSources;->m_ActivationHandles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSources$ActivationHandle;

    .line 142
    iget-object v0, v0, Lcom/oneplus/gallery2/media/MediaSources$ActivationHandle;->subActivationHandles:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 144
    :cond_0
    return-void
.end method
