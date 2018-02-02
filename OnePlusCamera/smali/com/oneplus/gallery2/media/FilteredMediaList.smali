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
    .locals 3

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/media/BaseMediaList;-><init>(Lcom/oneplus/gallery2/media/MediaComparator;I)V

    .line 20
    new-instance v0, Lcom/oneplus/gallery2/media/FilteredMediaList$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/FilteredMediaList$1;-><init>(Lcom/oneplus/gallery2/media/FilteredMediaList;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/FilteredMediaList;->m_MediaAddedHandler:Lcom/oneplus/base/EventHandler;

    .line 28
    new-instance v0, Lcom/oneplus/gallery2/media/FilteredMediaList$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/FilteredMediaList$2;-><init>(Lcom/oneplus/gallery2/media/FilteredMediaList;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/FilteredMediaList;->m_MediaMovedHandler:Lcom/oneplus/base/EventHandler;

    .line 36
    new-instance v0, Lcom/oneplus/gallery2/media/FilteredMediaList$3;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/FilteredMediaList$3;-><init>(Lcom/oneplus/gallery2/media/FilteredMediaList;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/FilteredMediaList;->m_MediaRemovingHandler:Lcom/oneplus/base/EventHandler;

    .line 56
    iput-boolean p4, p0, Lcom/oneplus/gallery2/media/FilteredMediaList;->m_OwnsMediaList:Z

    .line 57
    iput-object p3, p0, Lcom/oneplus/gallery2/media/FilteredMediaList;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    .line 58
    iget-object v0, p0, Lcom/oneplus/gallery2/media/FilteredMediaList;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/FilteredMediaList;->m_MediaAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 59
    iget-object v0, p0, Lcom/oneplus/gallery2/media/FilteredMediaList;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_MOVED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/FilteredMediaList;->m_MediaMovedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 60
    iget-object v0, p0, Lcom/oneplus/gallery2/media/FilteredMediaList;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/FilteredMediaList;->m_MediaRemovingHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 61
    invoke-interface {p3}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 63
    invoke-interface {p3, v1}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    .line 64
    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/FilteredMediaList;->filterMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/FilteredMediaList;->addMedia(Lcom/oneplus/gallery2/media/Media;)I

    goto :goto_1

    .line 67
    :cond_1
    return-void
.end method

.method static synthetic access$0(Lcom/oneplus/gallery2/media/FilteredMediaList;Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/FilteredMediaList;->onMediaAdded(Lcom/oneplus/gallery2/ListChangeEventArgs;)V

    return-void
.end method

.method static synthetic access$1(Lcom/oneplus/gallery2/media/FilteredMediaList;Lcom/oneplus/gallery2/ListMoveEventArgs;)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/FilteredMediaList;->onMediaMoved(Lcom/oneplus/gallery2/ListMoveEventArgs;)V

    return-void
.end method

.method static synthetic access$2(Lcom/oneplus/gallery2/media/FilteredMediaList;Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/FilteredMediaList;->onMediaRemoving(Lcom/oneplus/gallery2/ListChangeEventArgs;)V

    return-void
.end method

.method private onMediaAdded(Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 4

    .prologue
    .line 107
    invoke-virtual {p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getStartIndex()I

    move-result v0

    invoke-virtual {p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getEndIndex()I

    move-result v2

    move v1, v0

    :goto_0
    if-gt v1, v2, :cond_1

    .line 109
    iget-object v0, p0, Lcom/oneplus/gallery2/media/FilteredMediaList;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    .line 110
    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/FilteredMediaList;->filterMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 107
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/FilteredMediaList;->addMedia(Lcom/oneplus/gallery2/media/Media;)I

    goto :goto_1

    .line 113
    :cond_1
    return-void
.end method

.method private onMediaMoved(Lcom/oneplus/gallery2/ListMoveEventArgs;)V
    .locals 3

    .prologue
    .line 119
    invoke-virtual {p1}, Lcom/oneplus/gallery2/ListMoveEventArgs;->getStartIndex()I

    move-result v0

    invoke-virtual {p1}, Lcom/oneplus/gallery2/ListMoveEventArgs;->getEndIndex()I

    move-result v2

    move v1, v0

    :goto_0
    if-gt v1, v2, :cond_0

    .line 120
    iget-object v0, p0, Lcom/oneplus/gallery2/media/FilteredMediaList;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/FilteredMediaList;->checkMediaIndex(Lcom/oneplus/gallery2/media/Media;)Z

    .line 119
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 121
    :cond_0
    return-void
.end method

.method private onMediaRemoving(Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 3

    .prologue
    .line 127
    invoke-virtual {p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getStartIndex()I

    move-result v0

    invoke-virtual {p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getEndIndex()I

    move-result v2

    move v1, v0

    :goto_0
    if-gt v1, v2, :cond_0

    .line 128
    iget-object v0, p0, Lcom/oneplus/gallery2/media/FilteredMediaList;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/FilteredMediaList;->removeMedia(Lcom/oneplus/gallery2/media/Media;)Z

    .line 127
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 129
    :cond_0
    return-void
.end method


# virtual methods
.method public checkMedia(Lcom/oneplus/gallery2/media/Media;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    if-eqz p1, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/FilteredMediaList;->verifyAccess()V

    .line 80
    iget-object v0, p0, Lcom/oneplus/gallery2/media/FilteredMediaList;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v0, p1}, Lcom/oneplus/gallery2/media/MediaList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 82
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/FilteredMediaList;->removeMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v0

    return v0

    .line 78
    :cond_1
    return v1

    .line 80
    :cond_2
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/FilteredMediaList;->filterMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/FilteredMediaList;->addMedia(Lcom/oneplus/gallery2/media/Media;)I

    move-result v0

    if-gez v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract filterMedia(Lcom/oneplus/gallery2/media/Media;)Z
.end method

.method public final getWrappedMediaList()Lcom/oneplus/gallery2/media/MediaList;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/oneplus/gallery2/media/FilteredMediaList;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    return-object v0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 136
    invoke-super {p0}, Lcom/oneplus/gallery2/media/BaseMediaList;->release()V

    .line 137
    iget-object v0, p0, Lcom/oneplus/gallery2/media/FilteredMediaList;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/FilteredMediaList;->m_MediaAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 138
    iget-object v0, p0, Lcom/oneplus/gallery2/media/FilteredMediaList;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_MOVED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/FilteredMediaList;->m_MediaMovedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 139
    iget-object v0, p0, Lcom/oneplus/gallery2/media/FilteredMediaList;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/FilteredMediaList;->m_MediaRemovingHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 140
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/FilteredMediaList;->m_OwnsMediaList:Z

    if-nez v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/FilteredMediaList;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaList;->release()V

    goto :goto_0
.end method
