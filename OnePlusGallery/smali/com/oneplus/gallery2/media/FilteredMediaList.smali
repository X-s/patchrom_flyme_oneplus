.class public abstract Lcom/oneplus/gallery2/media/FilteredMediaList;
.super Lcom/oneplus/gallery2/media/BaseMediaList;
.source "FilteredMediaList.java"


# instance fields
.field private final m_MediaAddedHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/gallery2/ListChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

.field private final m_MediaMovedHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/gallery2/ListMoveEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final m_MediaRemovingHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/gallery2/ListChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final m_OwnsMediaList:Z


# direct methods
.method protected constructor <init>(Lcom/oneplus/gallery2/media/MediaComparator;ILcom/oneplus/gallery2/media/MediaList;Z)V
    .locals 5
    .param p1, "comparator"    # Lcom/oneplus/gallery2/media/MediaComparator;
    .param p2, "maxMediaCount"    # I
    .param p3, "mediaList"    # Lcom/oneplus/gallery2/media/MediaList;
    .param p4, "ownsMediaList"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/media/BaseMediaList;-><init>(Lcom/oneplus/gallery2/media/MediaComparator;I)V

    .line 20
    new-instance v2, Lcom/oneplus/gallery2/media/FilteredMediaList$1;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery2/media/FilteredMediaList$1;-><init>(Lcom/oneplus/gallery2/media/FilteredMediaList;)V

    iput-object v2, p0, Lcom/oneplus/gallery2/media/FilteredMediaList;->m_MediaAddedHandler:Lcom/oneplus/base/EventHandler;

    .line 28
    new-instance v2, Lcom/oneplus/gallery2/media/FilteredMediaList$2;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery2/media/FilteredMediaList$2;-><init>(Lcom/oneplus/gallery2/media/FilteredMediaList;)V

    iput-object v2, p0, Lcom/oneplus/gallery2/media/FilteredMediaList;->m_MediaMovedHandler:Lcom/oneplus/base/EventHandler;

    .line 36
    new-instance v2, Lcom/oneplus/gallery2/media/FilteredMediaList$3;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery2/media/FilteredMediaList$3;-><init>(Lcom/oneplus/gallery2/media/FilteredMediaList;)V

    iput-object v2, p0, Lcom/oneplus/gallery2/media/FilteredMediaList;->m_MediaRemovingHandler:Lcom/oneplus/base/EventHandler;

    .line 56
    iput-boolean p4, p0, Lcom/oneplus/gallery2/media/FilteredMediaList;->m_OwnsMediaList:Z

    .line 57
    iput-object p3, p0, Lcom/oneplus/gallery2/media/FilteredMediaList;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    .line 58
    iget-object v2, p0, Lcom/oneplus/gallery2/media/FilteredMediaList;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v3, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/gallery2/media/FilteredMediaList;->m_MediaAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v2, v3, v4}, Lcom/oneplus/gallery2/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 59
    iget-object v2, p0, Lcom/oneplus/gallery2/media/FilteredMediaList;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v3, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_MOVED:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/gallery2/media/FilteredMediaList;->m_MediaMovedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v2, v3, v4}, Lcom/oneplus/gallery2/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 60
    iget-object v2, p0, Lcom/oneplus/gallery2/media/FilteredMediaList;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v3, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/gallery2/media/FilteredMediaList;->m_MediaRemovingHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v2, v3, v4}, Lcom/oneplus/gallery2/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 61
    invoke-interface {p3}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 63
    invoke-interface {p3, v0}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    .line 64
    .local v1, "media":Lcom/oneplus/gallery2/media/Media;
    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/media/FilteredMediaList;->filterMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/media/FilteredMediaList;->addMedia(Lcom/oneplus/gallery2/media/Media;)I

    .line 61
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 67
    .end local v1    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery2/media/FilteredMediaList;Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/FilteredMediaList;
    .param p1, "x1"    # Lcom/oneplus/gallery2/ListChangeEventArgs;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/FilteredMediaList;->onMediaAdded(Lcom/oneplus/gallery2/ListChangeEventArgs;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/gallery2/media/FilteredMediaList;Lcom/oneplus/gallery2/ListMoveEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/FilteredMediaList;
    .param p1, "x1"    # Lcom/oneplus/gallery2/ListMoveEventArgs;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/FilteredMediaList;->onMediaMoved(Lcom/oneplus/gallery2/ListMoveEventArgs;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/gallery2/media/FilteredMediaList;Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/FilteredMediaList;
    .param p1, "x1"    # Lcom/oneplus/gallery2/ListChangeEventArgs;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/FilteredMediaList;->onMediaRemoving(Lcom/oneplus/gallery2/ListChangeEventArgs;)V

    return-void
.end method

.method private onMediaAdded(Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 4
    .param p1, "e"    # Lcom/oneplus/gallery2/ListChangeEventArgs;

    .prologue
    .line 81
    invoke-virtual {p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getStartIndex()I

    move-result v1

    .local v1, "i":I
    invoke-virtual {p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getEndIndex()I

    move-result v0

    .local v0, "endIndex":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 83
    iget-object v3, p0, Lcom/oneplus/gallery2/media/FilteredMediaList;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v3, v1}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/Media;

    .line 84
    .local v2, "media":Lcom/oneplus/gallery2/media/Media;
    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/media/FilteredMediaList;->filterMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/media/FilteredMediaList;->addMedia(Lcom/oneplus/gallery2/media/Media;)I

    .line 81
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v2    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_1
    return-void
.end method

.method private onMediaMoved(Lcom/oneplus/gallery2/ListMoveEventArgs;)V
    .locals 3
    .param p1, "e"    # Lcom/oneplus/gallery2/ListMoveEventArgs;

    .prologue
    .line 93
    invoke-virtual {p1}, Lcom/oneplus/gallery2/ListMoveEventArgs;->getStartIndex()I

    move-result v1

    .local v1, "i":I
    invoke-virtual {p1}, Lcom/oneplus/gallery2/ListMoveEventArgs;->getEndIndex()I

    move-result v0

    .local v0, "endIndex":I
    :goto_0
    if-gt v1, v0, :cond_0

    .line 94
    iget-object v2, p0, Lcom/oneplus/gallery2/media/FilteredMediaList;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v2, v1}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/Media;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/media/FilteredMediaList;->checkMediaIndex(Lcom/oneplus/gallery2/media/Media;)Z

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :cond_0
    return-void
.end method

.method private onMediaRemoving(Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 3
    .param p1, "e"    # Lcom/oneplus/gallery2/ListChangeEventArgs;

    .prologue
    .line 101
    invoke-virtual {p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getStartIndex()I

    move-result v1

    .local v1, "i":I
    invoke-virtual {p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getEndIndex()I

    move-result v0

    .local v0, "endIndex":I
    :goto_0
    if-gt v1, v0, :cond_0

    .line 102
    iget-object v2, p0, Lcom/oneplus/gallery2/media/FilteredMediaList;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v2, v1}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/Media;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/media/FilteredMediaList;->removeMedia(Lcom/oneplus/gallery2/media/Media;)Z

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract filterMedia(Lcom/oneplus/gallery2/media/Media;)Z
.end method

.method public release()V
    .locals 3

    .prologue
    .line 110
    invoke-super {p0}, Lcom/oneplus/gallery2/media/BaseMediaList;->release()V

    .line 111
    iget-object v0, p0, Lcom/oneplus/gallery2/media/FilteredMediaList;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/FilteredMediaList;->m_MediaAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 112
    iget-object v0, p0, Lcom/oneplus/gallery2/media/FilteredMediaList;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_MOVED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/FilteredMediaList;->m_MediaMovedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 113
    iget-object v0, p0, Lcom/oneplus/gallery2/media/FilteredMediaList;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/FilteredMediaList;->m_MediaRemovingHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 114
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/FilteredMediaList;->m_OwnsMediaList:Z

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/oneplus/gallery2/media/FilteredMediaList;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaList;->release()V

    .line 116
    :cond_0
    return-void
.end method
