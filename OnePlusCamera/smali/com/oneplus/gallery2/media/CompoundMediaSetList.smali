.class public Lcom/oneplus/gallery2/media/CompoundMediaSetList;
.super Lcom/oneplus/gallery2/media/BaseMediaSetList;
.source "CompoundMediaSetList.java"


# instance fields
.field private m_HiddenMediaSetCount:I

.field private final m_HiddenMediaSetCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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

    .prologue
    .line 89
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;-><init>(Lcom/oneplus/gallery2/media/MediaSetComparator;Z)V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_InternalLists:Ljava/util/List;

    .line 28
    new-instance v0, Lcom/oneplus/gallery2/media/CompoundMediaSetList$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/CompoundMediaSetList$1;-><init>(Lcom/oneplus/gallery2/media/CompoundMediaSetList;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_HiddenMediaSetCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 36
    new-instance v0, Lcom/oneplus/gallery2/media/CompoundMediaSetList$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/CompoundMediaSetList$2;-><init>(Lcom/oneplus/gallery2/media/CompoundMediaSetList;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_ReadyStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 47
    new-instance v0, Lcom/oneplus/gallery2/media/CompoundMediaSetList$3;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/CompoundMediaSetList$3;-><init>(Lcom/oneplus/gallery2/media/CompoundMediaSetList;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_MediaSetAddedHandler:Lcom/oneplus/base/EventHandler;

    .line 55
    new-instance v0, Lcom/oneplus/gallery2/media/CompoundMediaSetList$4;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/CompoundMediaSetList$4;-><init>(Lcom/oneplus/gallery2/media/CompoundMediaSetList;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_MediaSetListResetHandler:Lcom/oneplus/base/EventHandler;

    .line 63
    new-instance v0, Lcom/oneplus/gallery2/media/CompoundMediaSetList$5;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/CompoundMediaSetList$5;-><init>(Lcom/oneplus/gallery2/media/CompoundMediaSetList;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_MediaSetMovedHandler:Lcom/oneplus/base/EventHandler;

    .line 71
    new-instance v0, Lcom/oneplus/gallery2/media/CompoundMediaSetList$6;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/CompoundMediaSetList$6;-><init>(Lcom/oneplus/gallery2/media/CompoundMediaSetList;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_MediaSetRemovingHandler:Lcom/oneplus/base/EventHandler;

    .line 90
    iput-boolean p2, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_OwnsInternalLists:Z

    .line 91
    array-length v0, p3

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 93
    aget-object v1, p3, v0

    .line 94
    iget-object v2, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_InternalLists:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    invoke-direct {p0, v1}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->attachToMediaSetList(Lcom/oneplus/gallery2/media/MediaSetList;)V

    goto :goto_0

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_InternalLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    :goto_1
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->checkReadyState()V

    .line 100
    return-void

    .line 98
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->reset()V

    goto :goto_1
.end method

.method static synthetic access$0(Lcom/oneplus/gallery2/media/CompoundMediaSetList;)V
    .locals 0

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->updateHiddenMediaSetCount()V

    return-void
.end method

.method static synthetic access$1(Lcom/oneplus/gallery2/media/CompoundMediaSetList;Lcom/oneplus/gallery2/media/MediaSetList;Z)V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->onMediaSetListReadyStateChanged(Lcom/oneplus/gallery2/media/MediaSetList;Z)V

    return-void
.end method

.method static synthetic access$2(Lcom/oneplus/gallery2/media/CompoundMediaSetList;Lcom/oneplus/gallery2/media/MediaSetList;Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->onMediaSetAdded(Lcom/oneplus/gallery2/media/MediaSetList;Lcom/oneplus/gallery2/ListChangeEventArgs;)V

    return-void
.end method

.method static synthetic access$3(Lcom/oneplus/gallery2/media/CompoundMediaSetList;Lcom/oneplus/gallery2/media/MediaSetList;)V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->onMediaSetListReset(Lcom/oneplus/gallery2/media/MediaSetList;)V

    return-void
.end method

.method static synthetic access$4(Lcom/oneplus/gallery2/media/CompoundMediaSetList;Lcom/oneplus/gallery2/media/MediaSetList;Lcom/oneplus/gallery2/ListMoveEventArgs;)V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->onMediaSetMoved(Lcom/oneplus/gallery2/media/MediaSetList;Lcom/oneplus/gallery2/ListMoveEventArgs;)V

    return-void
.end method

.method static synthetic access$5(Lcom/oneplus/gallery2/media/CompoundMediaSetList;Lcom/oneplus/gallery2/media/MediaSetList;Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->onMediaSetRemoving(Lcom/oneplus/gallery2/media/MediaSetList;Lcom/oneplus/gallery2/ListChangeEventArgs;)V

    return-void
.end method

.method private attachToMediaSetList(Lcom/oneplus/gallery2/media/MediaSetList;)V
    .locals 2

    .prologue
    .line 129
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSetList;->PROP_IS_READY:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_ReadyStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery2/media/MediaSetList;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 130
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSetList;->EVENT_MEDIA_SET_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_MediaSetAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery2/media/MediaSetList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 131
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSetList;->EVENT_MEDIA_SET_MOVED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_MediaSetMovedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery2/media/MediaSetList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 132
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSetList;->EVENT_MEDIA_SET_REMOVING:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_MediaSetRemovingHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery2/media/MediaSetList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 133
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSetList;->EVENT_RESET:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_MediaSetListResetHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery2/media/MediaSetList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 134
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSetList;->PROP_HIDDEN_MEDIA_SET_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_HiddenMediaSetCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery2/media/MediaSetList;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 135
    return-void
.end method

.method private checkReadyState()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 141
    const/4 v2, 0x1

    .line 142
    iget-object v0, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_InternalLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_0
    if-ltz v3, :cond_1

    .line 144
    iget-object v0, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_InternalLists:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSetList;

    sget-object v4, Lcom/oneplus/gallery2/media/MediaSetList;->PROP_IS_READY:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v4}, Lcom/oneplus/gallery2/media/MediaSetList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 150
    :goto_1
    sget-object v1, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->PROP_IS_READY:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 151
    return-void

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method private detachFromMediaSetList(Lcom/oneplus/gallery2/media/MediaSetList;)V
    .locals 2

    .prologue
    .line 157
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSetList;->PROP_IS_READY:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_ReadyStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery2/media/MediaSetList;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 158
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSetList;->EVENT_MEDIA_SET_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_MediaSetAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery2/media/MediaSetList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 159
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSetList;->EVENT_MEDIA_SET_MOVED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_MediaSetMovedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery2/media/MediaSetList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 160
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSetList;->EVENT_MEDIA_SET_REMOVING:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_MediaSetRemovingHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery2/media/MediaSetList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 161
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSetList;->EVENT_RESET:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_MediaSetListResetHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery2/media/MediaSetList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 162
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSetList;->PROP_HIDDEN_MEDIA_SET_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_HiddenMediaSetCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery2/media/MediaSetList;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 163
    return-void
.end method

.method private onMediaSetAdded(Lcom/oneplus/gallery2/media/MediaSetList;Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 179
    invoke-virtual {p2}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getItemCount()I

    move-result v0

    const/4 v1, 0x4

    .line 180
    if-le v0, v1, :cond_0

    .line 187
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 188
    invoke-virtual {p2}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getStartIndex()I

    move-result v0

    invoke-virtual {p2}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getEndIndex()I

    move-result v3

    move v1, v0

    :goto_0
    if-gt v1, v3, :cond_1

    .line 189
    invoke-interface {p1, v1}, Lcom/oneplus/gallery2/media/MediaSetList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSet;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {p2}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getStartIndex()I

    move-result v0

    invoke-virtual {p2}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getEndIndex()I

    move-result v2

    move v1, v0

    :goto_1
    if-gt v1, v2, :cond_2

    .line 183
    invoke-interface {p1, v1}, Lcom/oneplus/gallery2/media/MediaSetList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSet;

    invoke-virtual {p0, v0, v4}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->addMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)I

    .line 182
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 190
    :cond_1
    invoke-virtual {p0, v2, v4}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->addMediaSets(Ljava/lang/Iterable;Z)V

    .line 192
    :cond_2
    return-void
.end method

.method private onMediaSetListReadyStateChanged(Lcom/oneplus/gallery2/media/MediaSetList;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 213
    if-nez p2, :cond_0

    .line 216
    sget-object v0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->PROP_IS_READY:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 217
    :goto_0
    return-void

    .line 214
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->checkReadyState()V

    goto :goto_0
.end method

.method private onMediaSetListReset(Lcom/oneplus/gallery2/media/MediaSetList;)V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->reset()V

    .line 199
    return-void
.end method

.method private onMediaSetMoved(Lcom/oneplus/gallery2/media/MediaSetList;Lcom/oneplus/gallery2/ListMoveEventArgs;)V
    .locals 3

    .prologue
    .line 205
    invoke-virtual {p2}, Lcom/oneplus/gallery2/ListMoveEventArgs;->getStartIndex()I

    move-result v0

    invoke-virtual {p2}, Lcom/oneplus/gallery2/ListMoveEventArgs;->getEndIndex()I

    move-result v2

    move v1, v0

    :goto_0
    if-gt v1, v2, :cond_0

    .line 206
    invoke-interface {p1, v1}, Lcom/oneplus/gallery2/media/MediaSetList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSet;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->checkMediaSetIndex(Lcom/oneplus/gallery2/media/MediaSet;)V

    .line 205
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 207
    :cond_0
    return-void
.end method

.method private onMediaSetRemoving(Lcom/oneplus/gallery2/media/MediaSetList;Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 4

    .prologue
    .line 223
    invoke-virtual {p2}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getStartIndex()I

    move-result v0

    invoke-virtual {p2}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getEndIndex()I

    move-result v2

    move v1, v0

    :goto_0
    if-gt v1, v2, :cond_0

    .line 224
    invoke-interface {p1, v1}, Lcom/oneplus/gallery2/media/MediaSetList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSet;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->removeMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)Z

    .line 223
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 225
    :cond_0
    return-void
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 271
    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->clearMediaSetLists(Z)V

    .line 274
    iget-object v0, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_InternalLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 276
    iget-object v0, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_InternalLists:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSetList;

    .line 277
    invoke-virtual {p0, v0, v2}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->addMediaSets(Ljava/lang/Iterable;Z)V

    .line 274
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 281
    :cond_0
    sget-object v0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->EVENT_RESET:Lcom/oneplus/base/EventKey;

    sget-object v1, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 282
    return-void
.end method

.method private updateHiddenMediaSetCount()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 304
    iget v2, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_HiddenMediaSetCount:I

    .line 305
    iput v0, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_HiddenMediaSetCount:I

    .line 306
    iget-object v0, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_InternalLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 308
    iget v3, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_HiddenMediaSetCount:I

    iget-object v0, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_InternalLists:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSetList;

    sget-object v4, Lcom/oneplus/gallery2/media/MediaSetList;->PROP_HIDDEN_MEDIA_SET_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v4}, Lcom/oneplus/gallery2/media/MediaSetList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v3

    iput v0, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_HiddenMediaSetCount:I

    .line 306
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 310
    :cond_0
    iget v0, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_HiddenMediaSetCount:I

    if-ne v2, v0, :cond_1

    .line 312
    :goto_1
    return-void

    .line 311
    :cond_1
    sget-object v0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->PROP_HIDDEN_MEDIA_SET_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_HiddenMediaSetCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public addMediaSetList(Lcom/oneplus/gallery2/media/MediaSetList;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 110
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->verifyAccess()V

    .line 111
    if-eqz p1, :cond_1

    .line 113
    sget-object v0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_InternalLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->attachToMediaSetList(Lcom/oneplus/gallery2/media/MediaSetList;)V

    .line 117
    invoke-virtual {p0, p1, v2}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->addMediaSets(Ljava/lang/Iterable;Z)V

    .line 118
    sget-object v0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->PROP_IS_READY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 120
    :cond_0
    :goto_0
    sget-object v1, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->PROP_SHOW_HIDDEN_MEDIA_SETS:Lcom/oneplus/base/PropertyKey;

    sget-object v0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->PROP_SHOW_HIDDEN_MEDIA_SETS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-interface {p1, v1, v0}, Lcom/oneplus/gallery2/media/MediaSetList;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 121
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->updateHiddenMediaSetCount()V

    .line 122
    return v2

    .line 112
    :cond_1
    return v1

    .line 114
    :cond_2
    return v1

    .line 118
    :cond_3
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSetList;->PROP_IS_READY:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Lcom/oneplus/gallery2/media/MediaSetList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    sget-object v0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->PROP_IS_READY:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

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
    .line 170
    sget-object v0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->PROP_HIDDEN_MEDIA_SET_COUNT:Lcom/oneplus/base/PropertyKey;

    if-eq p1, v0, :cond_0

    .line 172
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 171
    :cond_0
    iget v0, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_HiddenMediaSetCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_InternalLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 235
    iget-object v0, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_InternalLists:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSetList;

    .line 236
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->detachFromMediaSetList(Lcom/oneplus/gallery2/media/MediaSetList;)V

    .line 237
    iget-boolean v2, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_OwnsInternalLists:Z

    if-nez v2, :cond_0

    .line 233
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 238
    :cond_0
    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaSetList;->release()V

    goto :goto_1

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_InternalLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 243
    invoke-super {p0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->release()V

    .line 244
    return-void
.end method

.method public removeMediaSetList(Lcom/oneplus/gallery2/media/MediaSetList;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 254
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->verifyAccess()V

    .line 255
    iget-object v0, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_InternalLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->detachFromMediaSetList(Lcom/oneplus/gallery2/media/MediaSetList;)V

    .line 258
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/MediaSetList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSet;

    .line 259
    invoke-virtual {p0, v0, v2}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->removeMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)Z

    goto :goto_0

    .line 256
    :cond_0
    return v1

    .line 260
    :cond_1
    sget-object v0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->PROP_IS_READY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 262
    :goto_1
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->updateHiddenMediaSetCount()V

    .line 263
    return v2

    .line 261
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->checkReadyState()V

    goto :goto_1
.end method

.method public set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;TTValue;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 288
    sget-object v0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->PROP_SHOW_HIDDEN_MEDIA_SETS:Lcom/oneplus/base/PropertyKey;

    if-eq p1, v0, :cond_0

    .line 297
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 290
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    sget-object v0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->PROP_SHOW_HIDDEN_MEDIA_SETS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 293
    iget-object v0, p0, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->m_InternalLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSetList;

    .line 294
    sget-object v3, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->PROP_SHOW_HIDDEN_MEDIA_SETS:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/oneplus/gallery2/media/MediaSetList;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 291
    :cond_1
    return v1

    .line 295
    :cond_2
    const/4 v0, 0x1

    return v0
.end method
