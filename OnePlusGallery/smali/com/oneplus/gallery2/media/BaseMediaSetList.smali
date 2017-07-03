.class public abstract Lcom/oneplus/gallery2/media/BaseMediaSetList;
.super Lcom/oneplus/base/ListHandlerBaseObject;
.source "BaseMediaSetList.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/MediaSetList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/base/ListHandlerBaseObject",
        "<",
        "Lcom/oneplus/gallery2/media/MediaSet;",
        ">;",
        "Lcom/oneplus/gallery2/media/MediaSetList;"
    }
.end annotation


# instance fields
.field private m_Comparator:Lcom/oneplus/gallery2/media/MediaSetComparator;

.field private final m_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private final m_MediaSetPropChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

.field private m_MediaSetPropsForComparison:[Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/oneplus/base/PropertyKey",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/oneplus/gallery2/media/MediaSetComparator;)V
    .locals 2
    .param p1, "comparator"    # Lcom/oneplus/gallery2/media/MediaSetComparator;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/oneplus/base/ListHandlerBaseObject;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    .line 28
    new-instance v0, Lcom/oneplus/gallery2/media/BaseMediaSetList$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/BaseMediaSetList$1;-><init>(Lcom/oneplus/gallery2/media/BaseMediaSetList;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_MediaSetPropChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 45
    if-nez p1, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No comparator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    iput-object p1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaSetComparator;

    .line 48
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MediaSetComparator;->getReferencedProperties()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/base/PropertyKey;

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_MediaSetPropsForComparison:[Lcom/oneplus/base/PropertyKey;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery2/media/BaseMediaSetList;Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/base/PropertyKey;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/BaseMediaSetList;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/MediaSet;
    .param p2, "x2"    # Lcom/oneplus/base/PropertyKey;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->onMediaSetPropertyChanged(Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/base/PropertyKey;)V

    return-void
.end method

.method private attachToMediaSet(Lcom/oneplus/gallery2/media/MediaSet;)V
    .locals 3
    .param p1, "mediaSet"    # Lcom/oneplus/gallery2/media/MediaSet;

    .prologue
    .line 158
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_MediaSetPropsForComparison:[Lcom/oneplus/base/PropertyKey;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 159
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_MediaSetPropsForComparison:[Lcom/oneplus/base/PropertyKey;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_MediaSetPropChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v1, v2}, Lcom/oneplus/gallery2/media/MediaSet;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 158
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 160
    :cond_0
    return-void
.end method

.method private attachToMediaSets()V
    .locals 2

    .prologue
    .line 166
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 167
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/MediaSet;

    invoke-direct {p0, v1}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->attachToMediaSet(Lcom/oneplus/gallery2/media/MediaSet;)V

    .line 166
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 168
    :cond_0
    return-void
.end method

.method private detachFromMediaSet(Lcom/oneplus/gallery2/media/MediaSet;)V
    .locals 3
    .param p1, "mediaSet"    # Lcom/oneplus/gallery2/media/MediaSet;

    .prologue
    .line 244
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_MediaSetPropsForComparison:[Lcom/oneplus/base/PropertyKey;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 245
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_MediaSetPropsForComparison:[Lcom/oneplus/base/PropertyKey;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_MediaSetPropChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v1, v2}, Lcom/oneplus/gallery2/media/MediaSet;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 244
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 246
    :cond_0
    return-void
.end method

.method private detachFromMediaSets()V
    .locals 2

    .prologue
    .line 252
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 253
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/MediaSet;

    invoke-direct {p0, v1}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->detachFromMediaSet(Lcom/oneplus/gallery2/media/MediaSet;)V

    .line 252
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 254
    :cond_0
    return-void
.end method

.method private isCorrectPosition(Lcom/oneplus/gallery2/media/MediaSet;I)Z
    .locals 6
    .param p1, "mediaSet"    # Lcom/oneplus/gallery2/media/MediaSet;
    .param p2, "index"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 282
    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 283
    .local v0, "lastIndex":I
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    if-le p2, v0, :cond_2

    :cond_0
    move v1, v2

    .line 291
    :cond_1
    :goto_0
    return v1

    .line 285
    :cond_2
    if-eqz v0, :cond_1

    .line 287
    if-nez p2, :cond_3

    .line 288
    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaSetComparator;

    iget-object v4, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/oneplus/gallery2/media/MediaSetComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_1

    move v1, v2

    goto :goto_0

    .line 289
    :cond_3
    if-ne p2, v0, :cond_4

    .line 290
    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaSetComparator;

    iget-object v4, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    add-int/lit8 v5, v0, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/oneplus/gallery2/media/MediaSetComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_1

    move v1, v2

    goto :goto_0

    .line 291
    :cond_4
    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaSetComparator;

    iget-object v4, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    add-int/lit8 v5, p2, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/oneplus/gallery2/media/MediaSetComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_5

    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaSetComparator;

    iget-object v4, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    add-int/lit8 v5, p2, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/oneplus/gallery2/media/MediaSetComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_1

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method private onMediaSetPropertyChanged(Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/base/PropertyKey;)V
    .locals 0
    .param p1, "mediaSet"    # Lcom/oneplus/gallery2/media/MediaSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery2/media/MediaSet;",
            "Lcom/oneplus/base/PropertyKey",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 317
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<*>;"
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->checkMediaSetIndex(Lcom/oneplus/gallery2/media/MediaSet;)V

    .line 318
    return-void
.end method

.method private setComparatorProp(Lcom/oneplus/gallery2/media/MediaSetComparator;)Z
    .locals 3
    .param p1, "comparator"    # Lcom/oneplus/gallery2/media/MediaSetComparator;

    .prologue
    const/4 v1, 0x0

    .line 392
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->verifyAccess()V

    .line 393
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaSetComparator;

    if-ne p1, v2, :cond_0

    .line 410
    :goto_0
    return v1

    .line 395
    :cond_0
    if-nez p1, :cond_1

    .line 396
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 399
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->detachFromMediaSets()V

    .line 400
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaSetComparator;

    .line 401
    .local v0, "prevComparator":Lcom/oneplus/gallery2/media/MediaSetComparator;
    iput-object p1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaSetComparator;

    .line 402
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MediaSetComparator;->getReferencedProperties()Ljava/util/List;

    move-result-object v2

    new-array v1, v1, [Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/oneplus/base/PropertyKey;

    iput-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_MediaSetPropsForComparison:[Lcom/oneplus/base/PropertyKey;

    .line 403
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->attachToMediaSets()V

    .line 406
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 407
    sget-object v1, Lcom/oneplus/gallery2/media/BaseMediaSetList;->EVENT_RESET:Lcom/oneplus/base/EventKey;

    sget-object v2, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 410
    sget-object v1, Lcom/oneplus/gallery2/media/BaseMediaSetList;->PROP_COMPARATOR:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method protected addMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)I
    .locals 5
    .param p1, "mediaSet"    # Lcom/oneplus/gallery2/media/MediaSet;
    .param p2, "notifyAdded"    # Z

    .prologue
    const/4 v4, -0x1

    .line 61
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->verifyAccess()V

    .line 62
    sget-object v2, Lcom/oneplus/gallery2/media/BaseMediaSetList;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v4

    .line 66
    :cond_1
    if-eqz p1, :cond_0

    .line 70
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaSetComparator;

    invoke-static {v2, p1, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v2

    xor-int/lit8 v1, v2, -0x1

    .line 71
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 73
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->attachToMediaSet(Lcom/oneplus/gallery2/media/MediaSet;)V

    .line 74
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 75
    if-eqz p2, :cond_0

    .line 77
    invoke-static {v1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->obtain(I)Lcom/oneplus/gallery2/ListChangeEventArgs;

    move-result-object v0

    .line 78
    .local v0, "e":Lcom/oneplus/gallery2/ListChangeEventArgs;
    sget-object v2, Lcom/oneplus/gallery2/media/BaseMediaSetList;->EVENT_MEDIA_SET_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v2, v0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 79
    invoke-virtual {v0}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    goto :goto_0
.end method

.method protected addMediaSets(Ljava/lang/Iterable;Z)V
    .locals 8
    .param p2, "notifyAdded"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/oneplus/gallery2/media/MediaSet;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "mediaSets":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/oneplus/gallery2/media/MediaSet;>;"
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->verifyAccess()V

    .line 95
    sget-object v6, Lcom/oneplus/gallery2/media/BaseMediaSetList;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    if-eqz p1, :cond_0

    .line 104
    const/4 v5, -0x1

    .local v5, "startIndex":I
    const/4 v1, -0x1

    .line 105
    .local v1, "endIndex":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery2/media/MediaSet;

    .line 107
    .local v4, "mediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    invoke-virtual {p0, v4}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->verifyMediaSetToAdd(Lcom/oneplus/gallery2/media/MediaSet;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 109
    iget-object v6, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    iget-object v7, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaSetComparator;

    invoke-static {v6, v4, v7}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v6

    xor-int/lit8 v3, v6, -0x1

    .line 110
    .local v3, "index":I
    if-ltz v3, :cond_2

    .line 113
    if-eqz p2, :cond_4

    .line 115
    if-ltz v5, :cond_6

    .line 117
    add-int/lit8 v6, v1, 0x1

    if-eq v3, v6, :cond_3

    add-int/lit8 v6, v5, -0x1

    if-ne v3, v6, :cond_5

    .line 118
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 141
    :cond_4
    :goto_2
    invoke-direct {p0, v4}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->attachToMediaSet(Lcom/oneplus/gallery2/media/MediaSet;)V

    .line 142
    iget-object v6, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v6, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 121
    :cond_5
    invoke-static {v5, v1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery2/ListChangeEventArgs;

    move-result-object v0

    .line 122
    .local v0, "e":Lcom/oneplus/gallery2/ListChangeEventArgs;
    sget-object v6, Lcom/oneplus/gallery2/media/BaseMediaSetList;->EVENT_MEDIA_SET_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v6, v0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 123
    invoke-virtual {v0}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    .line 124
    move v5, v3

    .line 125
    move v1, v3

    .line 126
    sget-object v6, Lcom/oneplus/gallery2/media/BaseMediaSetList;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 128
    iget-object v6, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->TAG:Ljava/lang/String;

    const-string v7, "addMediaSet() - List has been released"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 135
    .end local v0    # "e":Lcom/oneplus/gallery2/ListChangeEventArgs;
    :cond_6
    move v5, v3

    .line 136
    move v1, v3

    goto :goto_2

    .line 145
    .end local v3    # "index":I
    .end local v4    # "mediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    :cond_7
    if-eqz p2, :cond_0

    if-ltz v5, :cond_0

    .line 147
    invoke-static {v5, v1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery2/ListChangeEventArgs;

    move-result-object v0

    .line 148
    .restart local v0    # "e":Lcom/oneplus/gallery2/ListChangeEventArgs;
    sget-object v6, Lcom/oneplus/gallery2/media/BaseMediaSetList;->EVENT_MEDIA_SET_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v6, v0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 149
    invoke-virtual {v0}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    goto :goto_0
.end method

.method protected checkMediaSetIndex(Lcom/oneplus/gallery2/media/MediaSet;)V
    .locals 5
    .param p1, "mediaSet"    # Lcom/oneplus/gallery2/media/MediaSet;

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->verifyAccess()V

    .line 179
    if-nez p1, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 185
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 186
    .local v0, "currentIndex":I
    invoke-direct {p0, p1, v0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->isCorrectPosition(Lcom/oneplus/gallery2/media/MediaSet;I)Z

    move-result v3

    if-nez v3, :cond_0

    if-ltz v0, :cond_0

    .line 190
    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    iget-object v4, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaSetComparator;

    invoke-static {v3, p1, v4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v3

    xor-int/lit8 v2, v3, -0x1

    .line 191
    .local v2, "expectedIndex":I
    invoke-direct {p0, p1, v2}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->isCorrectPosition(Lcom/oneplus/gallery2/media/MediaSet;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 193
    if-le v2, v0, :cond_2

    .line 194
    add-int/lit8 v2, v2, -0x1

    .line 210
    :cond_2
    :goto_1
    new-instance v1, Lcom/oneplus/gallery2/ListMoveEventArgs;

    invoke-direct {v1, v0, v0, v2, v2}, Lcom/oneplus/gallery2/ListMoveEventArgs;-><init>(IIII)V

    .line 211
    .local v1, "e":Lcom/oneplus/gallery2/ListMoveEventArgs;
    sget-object v3, Lcom/oneplus/gallery2/media/BaseMediaSetList;->EVENT_MEDIA_SET_MOVING:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v3, v1}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 212
    sget-object v3, Lcom/oneplus/gallery2/media/BaseMediaSetList;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 214
    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->TAG:Ljava/lang/String;

    const-string v4, "checkMediaSetIndex() - List has been released"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 198
    .end local v1    # "e":Lcom/oneplus/gallery2/ListMoveEventArgs;
    :cond_3
    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 199
    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    iget-object v4, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaSetComparator;

    invoke-static {v3, p1, v4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v3

    xor-int/lit8 v2, v3, -0x1

    .line 200
    invoke-direct {p0, p1, v2}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->isCorrectPosition(Lcom/oneplus/gallery2/media/MediaSet;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 201
    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v3, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 204
    :cond_4
    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v3, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 217
    .restart local v1    # "e":Lcom/oneplus/gallery2/ListMoveEventArgs;
    :cond_5
    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 218
    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v3, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 219
    sget-object v3, Lcom/oneplus/gallery2/media/BaseMediaSetList;->EVENT_MEDIA_SET_MOVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v3, v1}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    goto :goto_0
.end method

.method protected clearMediaSetLists(Z)V
    .locals 2
    .param p1, "notifyReset"    # Z

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->verifyAccess()V

    .line 230
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->detachFromMediaSets()V

    .line 233
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 234
    if-eqz p1, :cond_0

    .line 235
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->EVENT_RESET:Lcom/oneplus/base/EventKey;

    sget-object v1, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 237
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 261
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(I)Lcom/oneplus/gallery2/media/MediaSet;
    .locals 1
    .param p1, "location"    # I

    .prologue
    .line 299
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSet;

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->get(I)Lcom/oneplus/gallery2/media/MediaSet;

    move-result-object v0

    return-object v0
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
    .line 308
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->PROP_COMPARATOR:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaSetComparator;

    .line 310
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/base/ListHandlerBaseObject;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 269
    instance-of v2, p1, Lcom/oneplus/gallery2/media/MediaSet;

    if-nez v2, :cond_1

    .line 270
    const/4 v0, -0x1

    .line 275
    :cond_0
    :goto_0
    return v0

    :cond_1
    move-object v1, p1

    .line 271
    check-cast v1, Lcom/oneplus/gallery2/media/MediaSet;

    .line 272
    .local v1, "mediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaSetComparator;

    invoke-static {v2, v1, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 273
    .local v0, "expectedIndex":I
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_0

    .line 275
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->clearMediaSetLists(Z)V

    .line 329
    invoke-super {p0}, Lcom/oneplus/base/ListHandlerBaseObject;->release()V

    .line 330
    return-void
.end method

.method protected removeMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)Z
    .locals 5
    .param p1, "mediaSet"    # Lcom/oneplus/gallery2/media/MediaSet;
    .param p2, "notifyRemoved"    # Z

    .prologue
    const/4 v3, 0x0

    .line 342
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->verifyAccess()V

    .line 345
    if-nez p1, :cond_0

    move v2, v3

    .line 374
    :goto_0
    return v2

    .line 349
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    iget-object v4, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaSetComparator;

    invoke-static {v2, p1, v4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    .line 350
    .local v1, "index":I
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_2

    .line 351
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 352
    :cond_2
    if-gez v1, :cond_3

    move v2, v3

    .line 353
    goto :goto_0

    .line 356
    :cond_3
    const/4 v0, 0x0

    .line 357
    .local v0, "e":Lcom/oneplus/gallery2/ListChangeEventArgs;
    if-eqz p2, :cond_4

    .line 359
    invoke-static {v1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->obtain(I)Lcom/oneplus/gallery2/ListChangeEventArgs;

    move-result-object v0

    .line 360
    sget-object v2, Lcom/oneplus/gallery2/media/BaseMediaSetList;->EVENT_MEDIA_SET_REMOVING:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v2, v0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 361
    sget-object v2, Lcom/oneplus/gallery2/media/BaseMediaSetList;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 363
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->TAG:Ljava/lang/String;

    const-string v4, "removeMediaSet() - List has been released"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 364
    goto :goto_0

    .line 367
    :cond_4
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->detachFromMediaSet(Lcom/oneplus/gallery2/media/MediaSet;)V

    .line 368
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 369
    if-eqz p2, :cond_5

    .line 371
    sget-object v2, Lcom/oneplus/gallery2/media/BaseMediaSetList;->EVENT_MEDIA_SET_REMOVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v2, v0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 372
    invoke-virtual {v0}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    .line 374
    :cond_5
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
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
    .line 382
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->PROP_COMPARATOR:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 383
    check-cast p2, Lcom/oneplus/gallery2/media/MediaSetComparator;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->setComparatorProp(Lcom/oneplus/gallery2/media/MediaSetComparator;)Z

    move-result v0

    .line 384
    :goto_0
    return v0

    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/base/ListHandlerBaseObject;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected verifyMediaSetToAdd(Lcom/oneplus/gallery2/media/MediaSet;)Z
    .locals 1
    .param p1, "mediaSet"    # Lcom/oneplus/gallery2/media/MediaSet;

    .prologue
    .line 429
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
