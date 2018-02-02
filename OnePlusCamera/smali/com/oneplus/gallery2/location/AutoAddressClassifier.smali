.class public Lcom/oneplus/gallery2/location/AutoAddressClassifier;
.super Lcom/oneplus/gallery2/location/BaseAddressClassifier;
.source "AutoAddressClassifier.java"


# instance fields
.field private final m_InternalClassifier:Lcom/oneplus/gallery2/location/AddressClassifier;

.field private m_IsInternalClassifierUpdated:Z

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

.field private m_MediaUpdatingCounter:I

.field private final m_OwnsInternalClassifier:Z

.field private final m_UpdatedHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/base/EventArgs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/media/MediaList;Lcom/oneplus/gallery2/location/AddressClassifier;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Lcom/oneplus/gallery2/location/BaseAddressClassifier;-><init>()V

    .line 27
    new-instance v0, Lcom/oneplus/gallery2/location/AutoAddressClassifier$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/location/AutoAddressClassifier$1;-><init>(Lcom/oneplus/gallery2/location/AutoAddressClassifier;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/location/AutoAddressClassifier;->m_MediaAddedHandler:Lcom/oneplus/base/EventHandler;

    .line 35
    new-instance v0, Lcom/oneplus/gallery2/location/AutoAddressClassifier$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/location/AutoAddressClassifier$2;-><init>(Lcom/oneplus/gallery2/location/AutoAddressClassifier;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/location/AutoAddressClassifier;->m_MediaRemovingHandler:Lcom/oneplus/base/EventHandler;

    .line 43
    new-instance v0, Lcom/oneplus/gallery2/location/AutoAddressClassifier$3;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/location/AutoAddressClassifier$3;-><init>(Lcom/oneplus/gallery2/location/AutoAddressClassifier;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/location/AutoAddressClassifier;->m_UpdatedHandler:Lcom/oneplus/base/EventHandler;

    .line 62
    iput-object p1, p0, Lcom/oneplus/gallery2/location/AutoAddressClassifier;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    .line 63
    iput-object p2, p0, Lcom/oneplus/gallery2/location/AutoAddressClassifier;->m_InternalClassifier:Lcom/oneplus/gallery2/location/AddressClassifier;

    .line 64
    iput-boolean p3, p0, Lcom/oneplus/gallery2/location/AutoAddressClassifier;->m_OwnsInternalClassifier:Z

    .line 67
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 68
    invoke-interface {p1, v1}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    invoke-interface {p2, v0, v2}, Lcom/oneplus/gallery2/location/AddressClassifier;->addMedia(Lcom/oneplus/gallery2/media/Media;I)Z

    .line 67
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 71
    :cond_0
    sget-object v0, Lcom/oneplus/gallery2/location/AutoAddressClassifier;->EVENT_UPDATED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/location/AutoAddressClassifier;->m_UpdatedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p2, v0, v1}, Lcom/oneplus/gallery2/location/AddressClassifier;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 72
    sget-object v0, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/location/AutoAddressClassifier;->m_MediaAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery2/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 73
    sget-object v0, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/location/AutoAddressClassifier;->m_MediaRemovingHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery2/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 74
    return-void
.end method

.method static synthetic access$0(Lcom/oneplus/gallery2/location/AutoAddressClassifier;Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/location/AutoAddressClassifier;->onMediaAdded(Lcom/oneplus/gallery2/ListChangeEventArgs;)V

    return-void
.end method

.method static synthetic access$1(Lcom/oneplus/gallery2/location/AutoAddressClassifier;Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/location/AutoAddressClassifier;->onMediaRemoving(Lcom/oneplus/gallery2/ListChangeEventArgs;)V

    return-void
.end method

.method static synthetic access$2(Lcom/oneplus/gallery2/location/AutoAddressClassifier;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/oneplus/gallery2/location/AutoAddressClassifier;->onInternalClassifierUpdated()V

    return-void
.end method

.method private onInternalClassifierUpdated()V
    .locals 2

    .prologue
    .line 97
    iget v0, p0, Lcom/oneplus/gallery2/location/AutoAddressClassifier;->m_MediaUpdatingCounter:I

    if-gtz v0, :cond_0

    .line 104
    sget-object v0, Lcom/oneplus/gallery2/location/AutoAddressClassifier;->EVENT_UPDATED:Lcom/oneplus/base/EventKey;

    sget-object v1, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/location/AutoAddressClassifier;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 105
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery2/location/AutoAddressClassifier;->m_IsInternalClassifierUpdated:Z

    .line 100
    return-void
.end method

.method private onMediaAdded(Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 111
    iget v0, p0, Lcom/oneplus/gallery2/location/AutoAddressClassifier;->m_MediaUpdatingCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/gallery2/location/AutoAddressClassifier;->m_MediaUpdatingCounter:I

    .line 112
    invoke-virtual {p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getStartIndex()I

    move-result v0

    invoke-virtual {p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getEndIndex()I

    move-result v2

    move v1, v0

    :goto_0
    if-gt v1, v2, :cond_0

    .line 113
    iget-object v3, p0, Lcom/oneplus/gallery2/location/AutoAddressClassifier;->m_InternalClassifier:Lcom/oneplus/gallery2/location/AddressClassifier;

    iget-object v0, p0, Lcom/oneplus/gallery2/location/AutoAddressClassifier;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v3, v0, v4}, Lcom/oneplus/gallery2/location/AddressClassifier;->addMedia(Lcom/oneplus/gallery2/media/Media;I)Z

    .line 112
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 114
    :cond_0
    iget v0, p0, Lcom/oneplus/gallery2/location/AutoAddressClassifier;->m_MediaUpdatingCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oneplus/gallery2/location/AutoAddressClassifier;->m_MediaUpdatingCounter:I

    .line 115
    iget v0, p0, Lcom/oneplus/gallery2/location/AutoAddressClassifier;->m_MediaUpdatingCounter:I

    if-lez v0, :cond_2

    .line 117
    :cond_1
    :goto_1
    return-void

    .line 115
    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/gallery2/location/AutoAddressClassifier;->m_IsInternalClassifierUpdated:Z

    if-eqz v0, :cond_1

    .line 116
    invoke-direct {p0}, Lcom/oneplus/gallery2/location/AutoAddressClassifier;->onInternalClassifierUpdated()V

    goto :goto_1
.end method

.method private onMediaRemoving(Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 123
    iget v0, p0, Lcom/oneplus/gallery2/location/AutoAddressClassifier;->m_MediaUpdatingCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/gallery2/location/AutoAddressClassifier;->m_MediaUpdatingCounter:I

    .line 124
    invoke-virtual {p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getStartIndex()I

    move-result v0

    invoke-virtual {p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getEndIndex()I

    move-result v2

    move v1, v0

    :goto_0
    if-gt v1, v2, :cond_0

    .line 125
    iget-object v3, p0, Lcom/oneplus/gallery2/location/AutoAddressClassifier;->m_InternalClassifier:Lcom/oneplus/gallery2/location/AddressClassifier;

    iget-object v0, p0, Lcom/oneplus/gallery2/location/AutoAddressClassifier;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v3, v0, v4}, Lcom/oneplus/gallery2/location/AddressClassifier;->removeMedia(Lcom/oneplus/gallery2/media/Media;I)Z

    .line 124
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 126
    :cond_0
    iget v0, p0, Lcom/oneplus/gallery2/location/AutoAddressClassifier;->m_MediaUpdatingCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oneplus/gallery2/location/AutoAddressClassifier;->m_MediaUpdatingCounter:I

    .line 127
    iget v0, p0, Lcom/oneplus/gallery2/location/AutoAddressClassifier;->m_MediaUpdatingCounter:I

    if-lez v0, :cond_2

    .line 129
    :cond_1
    :goto_1
    return-void

    .line 127
    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/gallery2/location/AutoAddressClassifier;->m_IsInternalClassifierUpdated:Z

    if-eqz v0, :cond_1

    .line 128
    invoke-direct {p0}, Lcom/oneplus/gallery2/location/AutoAddressClassifier;->onInternalClassifierUpdated()V

    goto :goto_1
.end method


# virtual methods
.method public addMedia(Lcom/oneplus/gallery2/media/Media;I)Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public getLocationNameList(Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/oneplus/gallery2/location/AutoAddressClassifier;->m_InternalClassifier:Lcom/oneplus/gallery2/location/AddressClassifier;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/gallery2/location/AddressClassifier;->getLocationNameList(Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onRelease()V
    .locals 3

    .prologue
    .line 137
    invoke-super {p0}, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->onRelease()V

    .line 140
    iget-object v0, p0, Lcom/oneplus/gallery2/location/AutoAddressClassifier;->m_InternalClassifier:Lcom/oneplus/gallery2/location/AddressClassifier;

    sget-object v1, Lcom/oneplus/gallery2/location/AutoAddressClassifier;->EVENT_UPDATED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/location/AutoAddressClassifier;->m_UpdatedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/location/AddressClassifier;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 141
    iget-object v0, p0, Lcom/oneplus/gallery2/location/AutoAddressClassifier;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/location/AutoAddressClassifier;->m_MediaAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 142
    iget-object v0, p0, Lcom/oneplus/gallery2/location/AutoAddressClassifier;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/location/AutoAddressClassifier;->m_MediaRemovingHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 145
    iget-boolean v0, p0, Lcom/oneplus/gallery2/location/AutoAddressClassifier;->m_OwnsInternalClassifier:Z

    if-nez v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/location/AutoAddressClassifier;->m_InternalClassifier:Lcom/oneplus/gallery2/location/AddressClassifier;

    invoke-interface {v0}, Lcom/oneplus/gallery2/location/AddressClassifier;->release()V

    goto :goto_0
.end method

.method public removeMedia(Lcom/oneplus/gallery2/media/Media;I)Z
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method
