.class public Lcom/oneplus/gallery2/media/CompoundMediaSetList;
.super Lcom/oneplus/gallery2/media/BaseMediaSetList;
.source "CompoundMediaSetList.java"


# instance fields
.field private final m_InternalLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/MediaSetList;",
            ">;"
        }
    .end annotation
.end field

.field private final m_MediaSetAddedHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/gallery2/ListChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final m_MediaSetListResetHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/base/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final m_MediaSetMovedHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/gallery2/ListMoveEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final m_MediaSetRemovingHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/gallery2/ListChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final m_OwnsInternalLists:Z

.field private final m_ReadyStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
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
.method public varargs constructor <init>(Lcom/oneplus/gallery2/media/MediaSetComparator;Z[Lcom/oneplus/gallery2/media/MediaSetList;)V
    .locals 3
    .param p1, "comparator"    # Lcom/oneplus/gallery2/media/MediaSetComparator;
    .param p2, "ownsMediaSetLists"    # Z
    .param p3, "mediaSetLists"    # [Lcom/oneplus/gallery2/media/MediaSetList;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSetList;-><init>(Lcom/oneplus/gallery2/media/MediaSetComparator;)V

    .line 22
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_InternalLists:Ljava/util/List;

    .line 27
    new-instance v2, Lcom/oneplus/gallery2/media/CompoundMediaSetList$1;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery2/media/CompoundMediaSetList$1;-><init>(Lcom/oneplus/gallery2/media/CompoundMediaSetList;)V

    iput-object v2, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_ReadyStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 38
    new-instance v2, Lcom/oneplus/gallery2/media/CompoundMediaSetList$2;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery2/media/CompoundMediaSetList$2;-><init>(Lcom/oneplus/gallery2/media/CompoundMediaSetList;)V

    iput-object v2, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_MediaSetAddedHandler:Lcom/oneplus/base/EventHandler;

    .line 46
    new-instance v2, Lcom/oneplus/gallery2/media/CompoundMediaSetList$3;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery2/media/CompoundMediaSetList$3;-><init>(Lcom/oneplus/gallery2/media/CompoundMediaSetList;)V

    iput-object v2, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_MediaSetListResetHandler:Lcom/oneplus/base/EventHandler;

    .line 54
    new-instance v2, Lcom/oneplus/gallery2/media/CompoundMediaSetList$4;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery2/media/CompoundMediaSetList$4;-><init>(Lcom/oneplus/gallery2/media/CompoundMediaSetList;)V

    iput-object v2, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_MediaSetMovedHandler:Lcom/oneplus/base/EventHandler;

    .line 62
    new-instance v2, Lcom/oneplus/gallery2/media/CompoundMediaSetList$5;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery2/media/CompoundMediaSetList$5;-><init>(Lcom/oneplus/gallery2/media/CompoundMediaSetList;)V

    iput-object v2, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_MediaSetRemovingHandler:Lcom/oneplus/base/EventHandler;

    .line 81
    iput-boolean p2, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_OwnsInternalLists:Z

    .line 82
    array-length v2, p3

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 84
    aget-object v1, p3, v0

    .line 85
    .local v1, "list":Lcom/oneplus/gallery2/media/MediaSetList;
    iget-object v2, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_InternalLists:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    invoke-direct {p0, v1}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->attachToMediaSetList(Lcom/oneplus/gallery2/media/MediaSetList;)V

    .line 82
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 88
    .end local v1    # "list":Lcom/oneplus/gallery2/media/MediaSetList;
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_InternalLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 89
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->reset()V

    .line 90
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->checkReadyState()V

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery2/media/CompoundMediaSetList;Lcom/oneplus/gallery2/media/MediaSetList;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/CompoundMediaSetList;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/MediaSetList;
    .param p2, "x2"    # Z

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->onMediaSetListReadyStateChanged(Lcom/oneplus/gallery2/media/MediaSetList;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/gallery2/media/CompoundMediaSetList;Lcom/oneplus/gallery2/media/MediaSetList;Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/CompoundMediaSetList;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/MediaSetList;
    .param p2, "x2"    # Lcom/oneplus/gallery2/ListChangeEventArgs;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->onMediaSetAdded(Lcom/oneplus/gallery2/media/MediaSetList;Lcom/oneplus/gallery2/ListChangeEventArgs;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/gallery2/media/CompoundMediaSetList;Lcom/oneplus/gallery2/media/MediaSetList;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/CompoundMediaSetList;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/MediaSetList;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->onMediaSetListReset(Lcom/oneplus/gallery2/media/MediaSetList;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/gallery2/media/CompoundMediaSetList;Lcom/oneplus/gallery2/media/MediaSetList;Lcom/oneplus/gallery2/ListMoveEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/CompoundMediaSetList;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/MediaSetList;
    .param p2, "x2"    # Lcom/oneplus/gallery2/ListMoveEventArgs;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->onMediaSetMoved(Lcom/oneplus/gallery2/media/MediaSetList;Lcom/oneplus/gallery2/ListMoveEventArgs;)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/gallery2/media/CompoundMediaSetList;Lcom/oneplus/gallery2/media/MediaSetList;Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/CompoundMediaSetList;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/MediaSetList;
    .param p2, "x2"    # Lcom/oneplus/gallery2/ListChangeEventArgs;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->onMediaSetRemoving(Lcom/oneplus/gallery2/media/MediaSetList;Lcom/oneplus/gallery2/ListChangeEventArgs;)V

    return-void
.end method

.method private attachToMediaSetList(Lcom/oneplus/gallery2/media/MediaSetList;)V
    .locals 2
    .param p1, "list"    # Lcom/oneplus/gallery2/media/MediaSetList;

    .prologue
    .line 118
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSetList;->PROP_IS_READY:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_ReadyStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery2/media/MediaSetList;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 119
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSetList;->EVENT_MEDIA_SET_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_MediaSetAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery2/media/MediaSetList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 120
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSetList;->EVENT_MEDIA_SET_MOVED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_MediaSetMovedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery2/media/MediaSetList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 121
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSetList;->EVENT_MEDIA_SET_REMOVING:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_MediaSetRemovingHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery2/media/MediaSetList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 122
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSetList;->EVENT_RESET:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_MediaSetListResetHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery2/media/MediaSetList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 123
    return-void
.end method

.method private checkReadyState()V
    .locals 4

    .prologue
    .line 129
    const/4 v1, 0x1

    .line 130
    .local v1, "isReady":Z
    iget-object v2, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_InternalLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 132
    iget-object v2, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_InternalLists:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/MediaSetList;

    sget-object v3, Lcom/oneplus/gallery2/media/MediaSetList;->PROP_IS_READY:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/oneplus/gallery2/media/MediaSetList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 134
    const/4 v1, 0x0

    .line 138
    :cond_0
    sget-object v2, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->PROP_IS_READY:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 139
    return-void

    .line 130
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private detachFromMediaSetList(Lcom/oneplus/gallery2/media/MediaSetList;)V
    .locals 2
    .param p1, "list"    # Lcom/oneplus/gallery2/media/MediaSetList;

    .prologue
    .line 145
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSetList;->PROP_IS_READY:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_ReadyStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery2/media/MediaSetList;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 146
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSetList;->EVENT_MEDIA_SET_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_MediaSetAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery2/media/MediaSetList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 147
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSetList;->EVENT_MEDIA_SET_MOVED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_MediaSetMovedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery2/media/MediaSetList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 148
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSetList;->EVENT_MEDIA_SET_REMOVING:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_MediaSetRemovingHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery2/media/MediaSetList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 149
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSetList;->EVENT_RESET:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_MediaSetListResetHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery2/media/MediaSetList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 150
    return-void
.end method

.method private onMediaSetAdded(Lcom/oneplus/gallery2/media/MediaSetList;Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 6
    .param p1, "list"    # Lcom/oneplus/gallery2/media/MediaSetList;
    .param p2, "e"    # Lcom/oneplus/gallery2/ListChangeEventArgs;

    .prologue
    const/4 v5, 0x1

    .line 156
    invoke-virtual {p2}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getItemCount()I

    move-result v0

    .line 157
    .local v0, "count":I
    const/4 v4, 0x4

    if-gt v0, v4, :cond_0

    .line 159
    invoke-virtual {p2}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getStartIndex()I

    move-result v2

    .local v2, "i":I
    invoke-virtual {p2}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getEndIndex()I

    move-result v1

    .local v1, "endIndex":I
    :goto_0
    if-gt v2, v1, :cond_2

    .line 160
    invoke-interface {p1, v2}, Lcom/oneplus/gallery2/media/MediaSetList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery2/media/MediaSet;

    invoke-virtual {p0, v4, v5}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->addMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)I

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    .end local v1    # "endIndex":I
    .end local v2    # "i":I
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 165
    .local v3, "mediaSets":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/MediaSet;>;"
    invoke-virtual {p2}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getStartIndex()I

    move-result v2

    .restart local v2    # "i":I
    invoke-virtual {p2}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getEndIndex()I

    move-result v1

    .restart local v1    # "endIndex":I
    :goto_1
    if-gt v2, v1, :cond_1

    .line 166
    invoke-interface {p1, v2}, Lcom/oneplus/gallery2/media/MediaSetList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 167
    :cond_1
    invoke-virtual {p0, v3, v5}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->addMediaSets(Ljava/lang/Iterable;Z)V

    .line 169
    .end local v3    # "mediaSets":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/MediaSet;>;"
    :cond_2
    return-void
.end method

.method private onMediaSetListReadyStateChanged(Lcom/oneplus/gallery2/media/MediaSetList;Z)V
    .locals 2
    .param p1, "mediaSetList"    # Lcom/oneplus/gallery2/media/MediaSetList;
    .param p2, "isReady"    # Z

    .prologue
    .line 190
    if-eqz p2, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->checkReadyState()V

    .line 194
    :goto_0
    return-void

    .line 193
    :cond_0
    sget-object v0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->PROP_IS_READY:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private onMediaSetListReset(Lcom/oneplus/gallery2/media/MediaSetList;)V
    .locals 0
    .param p1, "list"    # Lcom/oneplus/gallery2/media/MediaSetList;

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->reset()V

    .line 176
    return-void
.end method

.method private onMediaSetMoved(Lcom/oneplus/gallery2/media/MediaSetList;Lcom/oneplus/gallery2/ListMoveEventArgs;)V
    .locals 3
    .param p1, "list"    # Lcom/oneplus/gallery2/media/MediaSetList;
    .param p2, "e"    # Lcom/oneplus/gallery2/ListMoveEventArgs;

    .prologue
    .line 182
    invoke-virtual {p2}, Lcom/oneplus/gallery2/ListMoveEventArgs;->getStartIndex()I

    move-result v1

    .local v1, "i":I
    invoke-virtual {p2}, Lcom/oneplus/gallery2/ListMoveEventArgs;->getEndIndex()I

    move-result v0

    .local v0, "endIndex":I
    :goto_0
    if-gt v1, v0, :cond_0

    .line 183
    invoke-interface {p1, v1}, Lcom/oneplus/gallery2/media/MediaSetList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/MediaSet;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->checkMediaSetIndex(Lcom/oneplus/gallery2/media/MediaSet;)V

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    :cond_0
    return-void
.end method

.method private onMediaSetRemoving(Lcom/oneplus/gallery2/media/MediaSetList;Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 4
    .param p1, "list"    # Lcom/oneplus/gallery2/media/MediaSetList;
    .param p2, "e"    # Lcom/oneplus/gallery2/ListChangeEventArgs;

    .prologue
    .line 200
    invoke-virtual {p2}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getStartIndex()I

    move-result v1

    .local v1, "i":I
    invoke-virtual {p2}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getEndIndex()I

    move-result v0

    .local v0, "endIndex":I
    :goto_0
    if-gt v1, v0, :cond_0

    .line 201
    invoke-interface {p1, v1}, Lcom/oneplus/gallery2/media/MediaSetList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/MediaSet;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->removeMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)Z

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    :cond_0
    return-void
.end method

.method private reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 247
    invoke-virtual {p0, v3}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->clearMediaSetLists(Z)V

    .line 250
    iget-object v2, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_InternalLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 252
    iget-object v2, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_InternalLists:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/MediaSetList;

    .line 253
    .local v1, "list":Lcom/oneplus/gallery2/media/MediaSetList;
    invoke-virtual {p0, v1, v3}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->addMediaSets(Ljava/lang/Iterable;Z)V

    .line 250
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 257
    .end local v1    # "list":Lcom/oneplus/gallery2/media/MediaSetList;
    :cond_0
    sget-object v2, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->EVENT_RESET:Lcom/oneplus/base/EventKey;

    sget-object v3, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 258
    return-void
.end method


# virtual methods
.method public addMediaSetList(Lcom/oneplus/gallery2/media/MediaSetList;)Z
    .locals 3
    .param p1, "list"    # Lcom/oneplus/gallery2/media/MediaSetList;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 101
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->verifyAccess()V

    .line 102
    if-nez p1, :cond_0

    move v0, v1

    .line 111
    :goto_0
    return v0

    .line 104
    :cond_0
    sget-object v0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 105
    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_InternalLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->attachToMediaSetList(Lcom/oneplus/gallery2/media/MediaSetList;)V

    .line 108
    invoke-virtual {p0, p1, v2}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->addMediaSets(Ljava/lang/Iterable;Z)V

    .line 109
    sget-object v0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->PROP_IS_READY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/oneplus/gallery2/media/MediaSetList;->PROP_IS_READY:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Lcom/oneplus/gallery2/media/MediaSetList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 110
    sget-object v0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->PROP_IS_READY:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    :cond_2
    move v0, v2

    .line 111
    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 210
    iget-object v2, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_InternalLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 212
    iget-object v2, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_InternalLists:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/MediaSetList;

    .line 213
    .local v1, "list":Lcom/oneplus/gallery2/media/MediaSetList;
    invoke-direct {p0, v1}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->detachFromMediaSetList(Lcom/oneplus/gallery2/media/MediaSetList;)V

    .line 214
    iget-boolean v2, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_OwnsInternalLists:Z

    if-eqz v2, :cond_0

    .line 215
    invoke-interface {v1}, Lcom/oneplus/gallery2/media/MediaSetList;->release()V

    .line 210
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 217
    .end local v1    # "list":Lcom/oneplus/gallery2/media/MediaSetList;
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_InternalLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 220
    invoke-super {p0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->release()V

    .line 221
    return-void
.end method

.method public removeMediaSetList(Lcom/oneplus/gallery2/media/MediaSetList;)Z
    .locals 4
    .param p1, "list"    # Lcom/oneplus/gallery2/media/MediaSetList;

    .prologue
    const/4 v3, 0x1

    .line 231
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->verifyAccess()V

    .line 232
    iget-object v2, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_InternalLists:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 233
    const/4 v2, 0x0

    .line 239
    :goto_0
    return v2

    .line 234
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->detachFromMediaSetList(Lcom/oneplus/gallery2/media/MediaSetList;)V

    .line 235
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/MediaSetList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/MediaSet;

    .line 236
    .local v1, "mediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    invoke-virtual {p0, v1, v3}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->removeMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)Z

    goto :goto_1

    .line 237
    .end local v1    # "mediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    :cond_1
    sget-object v2, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->PROP_IS_READY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 238
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->checkReadyState()V

    :cond_2
    move v2, v3

    .line 239
    goto :goto_0
.end method
