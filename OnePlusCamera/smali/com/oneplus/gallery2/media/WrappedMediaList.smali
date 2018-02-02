.class public abstract Lcom/oneplus/gallery2/media/WrappedMediaList;
.super Lcom/oneplus/gallery2/media/BaseMediaList;
.source "WrappedMediaList.java"


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
.method public constructor <init>(Lcom/oneplus/gallery2/media/MediaList;Lcom/oneplus/gallery2/media/MediaComparator;IZ)V
    .locals 3

    .prologue
    .line 55
    invoke-direct {p0, p2, p3}, Lcom/oneplus/gallery2/media/BaseMediaList;-><init>(Lcom/oneplus/gallery2/media/MediaComparator;I)V

    .line 20
    new-instance v0, Lcom/oneplus/gallery2/media/WrappedMediaList$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/WrappedMediaList$1;-><init>(Lcom/oneplus/gallery2/media/WrappedMediaList;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/WrappedMediaList;->m_MediaAddedHandler:Lcom/oneplus/base/EventHandler;

    .line 28
    new-instance v0, Lcom/oneplus/gallery2/media/WrappedMediaList$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/WrappedMediaList$2;-><init>(Lcom/oneplus/gallery2/media/WrappedMediaList;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/WrappedMediaList;->m_MediaMovedHandler:Lcom/oneplus/base/EventHandler;

    .line 36
    new-instance v0, Lcom/oneplus/gallery2/media/WrappedMediaList$3;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/WrappedMediaList$3;-><init>(Lcom/oneplus/gallery2/media/WrappedMediaList;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/WrappedMediaList;->m_MediaRemovingHandler:Lcom/oneplus/base/EventHandler;

    .line 56
    iput-boolean p4, p0, Lcom/oneplus/gallery2/media/WrappedMediaList;->m_OwnsMediaList:Z

    .line 57
    iput-object p1, p0, Lcom/oneplus/gallery2/media/WrappedMediaList;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    .line 58
    iget-object v0, p0, Lcom/oneplus/gallery2/media/WrappedMediaList;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/WrappedMediaList;->m_MediaAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 59
    iget-object v0, p0, Lcom/oneplus/gallery2/media/WrappedMediaList;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_MOVED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/WrappedMediaList;->m_MediaMovedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 60
    iget-object v0, p0, Lcom/oneplus/gallery2/media/WrappedMediaList;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/WrappedMediaList;->m_MediaRemovingHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 61
    return-void
.end method


# virtual methods
.method protected final getInternalMediaList()Lcom/oneplus/gallery2/media/MediaList;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/oneplus/gallery2/media/WrappedMediaList;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    return-object v0
.end method

.method protected onMediaAddedToInternalMediaList(Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method protected onMediaMovedInInternalMediaList(Lcom/oneplus/gallery2/ListMoveEventArgs;)V
    .locals 3

    .prologue
    .line 88
    invoke-virtual {p1}, Lcom/oneplus/gallery2/ListMoveEventArgs;->getStartIndex()I

    move-result v0

    invoke-virtual {p1}, Lcom/oneplus/gallery2/ListMoveEventArgs;->getEndIndex()I

    move-result v2

    move v1, v0

    :goto_0
    if-gt v1, v2, :cond_0

    .line 89
    iget-object v0, p0, Lcom/oneplus/gallery2/media/WrappedMediaList;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/WrappedMediaList;->checkMediaIndex(Lcom/oneplus/gallery2/media/Media;)Z

    .line 88
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 90
    :cond_0
    return-void
.end method

.method protected onMediaRemovingFromInternalMediaList(Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 3

    .prologue
    .line 99
    invoke-virtual {p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getStartIndex()I

    move-result v0

    invoke-virtual {p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getEndIndex()I

    move-result v2

    move v1, v0

    :goto_0
    if-gt v1, v2, :cond_0

    .line 100
    iget-object v0, p0, Lcom/oneplus/gallery2/media/WrappedMediaList;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/WrappedMediaList;->removeMedia(Lcom/oneplus/gallery2/media/Media;)Z

    .line 99
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 101
    :cond_0
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    .line 108
    invoke-super {p0}, Lcom/oneplus/gallery2/media/BaseMediaList;->release()V

    .line 109
    iget-object v0, p0, Lcom/oneplus/gallery2/media/WrappedMediaList;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/WrappedMediaList;->m_MediaAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 110
    iget-object v0, p0, Lcom/oneplus/gallery2/media/WrappedMediaList;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_MOVED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/WrappedMediaList;->m_MediaMovedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 111
    iget-object v0, p0, Lcom/oneplus/gallery2/media/WrappedMediaList;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/WrappedMediaList;->m_MediaRemovingHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 112
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/WrappedMediaList;->m_OwnsMediaList:Z

    if-nez v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/WrappedMediaList;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaList;->release()V

    goto :goto_0
.end method
