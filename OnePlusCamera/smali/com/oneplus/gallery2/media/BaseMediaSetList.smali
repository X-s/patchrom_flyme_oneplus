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

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/oneplus/base/ListHandlerBaseObject;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    .line 29
    new-instance v0, Lcom/oneplus/gallery2/media/BaseMediaSetList$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/BaseMediaSetList$1;-><init>(Lcom/oneplus/gallery2/media/BaseMediaSetList;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_MediaSetPropChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 45
    if-eqz p1, :cond_0

    .line 47
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

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No comparator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$1(Lcom/oneplus/gallery2/media/BaseMediaSetList;Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/base/PropertyKey;)V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->onMediaSetPropertyChanged(Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/base/PropertyKey;)V

    return-void
.end method

.method private attachToMediaSet(Lcom/oneplus/gallery2/media/MediaSet;)V
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_MediaSetPropsForComparison:[Lcom/oneplus/base/PropertyKey;

    array-length v0, v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 159
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_MediaSetPropsForComparison:[Lcom/oneplus/base/PropertyKey;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_MediaSetPropChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v1, v2}, Lcom/oneplus/gallery2/media/MediaSet;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    goto :goto_0

    .line 160
    :cond_0
    return-void
.end method

.method private attachToMediaSets()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSet;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->attachToMediaSet(Lcom/oneplus/gallery2/media/MediaSet;)V

    .line 166
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 168
    :cond_0
    return-void
.end method

.method private detachFromMediaSet(Lcom/oneplus/gallery2/media/MediaSet;)V
    .locals 3

    .prologue
    .line 244
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_MediaSetPropsForComparison:[Lcom/oneplus/base/PropertyKey;

    array-length v0, v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 245
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_MediaSetPropsForComparison:[Lcom/oneplus/base/PropertyKey;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_MediaSetPropChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v1, v2}, Lcom/oneplus/gallery2/media/MediaSet;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    goto :goto_0

    .line 246
    :cond_0
    return-void
.end method

.method private detachFromMediaSets()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 253
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSet;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->detachFromMediaSet(Lcom/oneplus/gallery2/media/MediaSet;)V

    .line 252
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 254
    :cond_0
    return-void
.end method

.method private isCorrectPosition(Lcom/oneplus/gallery2/media/MediaSet;I)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 282
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 283
    if-nez p1, :cond_1

    .line 284
    :cond_0
    return v3

    .line 283
    :cond_1
    if-ltz p2, :cond_0

    if-gt p2, v0, :cond_0

    .line 285
    if-eqz v0, :cond_3

    .line 287
    if-eqz p2, :cond_4

    .line 289
    if-eq p2, v0, :cond_6

    .line 291
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaSetComparator;

    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    add-int/lit8 v2, p2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSet;

    invoke-virtual {v1, p1, v0}, Lcom/oneplus/gallery2/media/MediaSetComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_8

    :cond_2
    return v3

    .line 286
    :cond_3
    return v4

    .line 288
    :cond_4
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaSetComparator;

    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSet;

    invoke-virtual {v1, p1, v0}, Lcom/oneplus/gallery2/media/MediaSetComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_5

    return v3

    :cond_5
    return v4

    .line 290
    :cond_6
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaSetComparator;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSet;

    invoke-virtual {v1, p1, v0}, Lcom/oneplus/gallery2/media/MediaSetComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_7

    return v3

    :cond_7
    return v4

    .line 291
    :cond_8
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaSetComparator;

    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    add-int/lit8 v2, p2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSet;

    invoke-virtual {v1, p1, v0}, Lcom/oneplus/gallery2/media/MediaSetComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_2

    return v4
.end method

.method private onMediaSetPropertyChanged(Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/base/PropertyKey;)V
    .locals 0
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
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->checkMediaSetIndex(Lcom/oneplus/gallery2/media/MediaSet;)V

    .line 318
    return-void
.end method

.method private setComparatorProp(Lcom/oneplus/gallery2/media/MediaSetComparator;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 392
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->verifyAccess()V

    .line 393
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaSetComparator;

    if-eq p1, v0, :cond_0

    .line 395
    if-eqz p1, :cond_1

    .line 399
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->detachFromMediaSets()V

    .line 400
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaSetComparator;

    .line 401
    iput-object p1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaSetComparator;

    .line 402
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MediaSetComparator;->getReferencedProperties()Ljava/util/List;

    move-result-object v0

    new-array v2, v2, [Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/base/PropertyKey;

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_MediaSetPropsForComparison:[Lcom/oneplus/base/PropertyKey;

    .line 403
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->attachToMediaSets()V

    .line 406
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 407
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->EVENT_RESET:Lcom/oneplus/base/EventKey;

    sget-object v2, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 410
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->PROP_COMPARATOR:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v1, p1}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 394
    :cond_0
    return v2

    .line 396
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method protected addMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 61
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->verifyAccess()V

    .line 62
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    if-eqz p1, :cond_2

    .line 70
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaSetComparator;

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    .line 71
    if-gez v0, :cond_3

    .line 82
    :cond_0
    :goto_0
    return v2

    .line 63
    :cond_1
    return v2

    .line 67
    :cond_2
    return v2

    .line 73
    :cond_3
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->attachToMediaSet(Lcom/oneplus/gallery2/media/MediaSet;)V

    .line 74
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 75
    if-eqz p2, :cond_0

    .line 77
    invoke-static {v0}, Lcom/oneplus/gallery2/ListChangeEventArgs;->obtain(I)Lcom/oneplus/gallery2/ListChangeEventArgs;

    move-result-object v0

    .line 78
    sget-object v1, Lcom/oneplus/gallery2/media/BaseMediaSetList;->EVENT_MEDIA_SET_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 79
    invoke-virtual {v0}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    goto :goto_0
.end method

.method protected addMediaSets(Ljava/lang/Iterable;Z)V
    .locals 6
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
    const/4 v1, -0x1

    .line 94
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->verifyAccess()V

    .line 95
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    if-eqz p1, :cond_2

    .line 105
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v1

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSet;

    .line 107
    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->verifyMediaSetToAdd(Lcom/oneplus/gallery2/media/MediaSet;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    iget-object v5, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaSetComparator;

    invoke-static {v2, v0, v5}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v2

    xor-int/lit8 v2, v2, -0x1

    .line 110
    if-ltz v2, :cond_0

    .line 113
    if-nez p2, :cond_3

    .line 141
    :goto_1
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->attachToMediaSet(Lcom/oneplus/gallery2/media/MediaSet;)V

    .line 142
    iget-object v5, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v5, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 96
    :cond_1
    return-void

    .line 100
    :cond_2
    return-void

    .line 115
    :cond_3
    if-gez v3, :cond_4

    move v1, v2

    move v3, v2

    .line 136
    goto :goto_1

    .line 117
    :cond_4
    add-int/lit8 v5, v1, 0x1

    if-ne v2, v5, :cond_6

    .line 118
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 117
    :cond_6
    add-int/lit8 v5, v3, -0x1

    if-eq v2, v5, :cond_5

    .line 121
    invoke-static {v3, v1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery2/ListChangeEventArgs;

    move-result-object v1

    .line 122
    sget-object v3, Lcom/oneplus/gallery2/media/BaseMediaSetList;->EVENT_MEDIA_SET_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v3, v1}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 123
    invoke-virtual {v1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    .line 126
    sget-object v1, Lcom/oneplus/gallery2/media/BaseMediaSetList;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v2

    move v3, v2

    goto :goto_1

    .line 128
    :cond_7
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addMediaSet() - List has been released"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void

    .line 145
    :cond_8
    if-nez p2, :cond_a

    .line 151
    :cond_9
    :goto_2
    return-void

    .line 145
    :cond_a
    if-ltz v3, :cond_9

    .line 147
    invoke-static {v3, v1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery2/ListChangeEventArgs;

    move-result-object v0

    .line 148
    sget-object v1, Lcom/oneplus/gallery2/media/BaseMediaSetList;->EVENT_MEDIA_SET_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 149
    invoke-virtual {v0}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    goto :goto_2
.end method

.method protected checkMediaSetIndex(Lcom/oneplus/gallery2/media/MediaSet;)V
    .locals 4

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->verifyAccess()V

    .line 179
    if-eqz p1, :cond_1

    .line 181
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 185
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 186
    invoke-direct {p0, p1, v2}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->isCorrectPosition(Lcom/oneplus/gallery2/media/MediaSet;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 187
    :cond_0
    return-void

    .line 180
    :cond_1
    return-void

    .line 182
    :cond_2
    return-void

    .line 186
    :cond_3
    if-ltz v2, :cond_0

    .line 190
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaSetComparator;

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    .line 191
    invoke-direct {p0, p1, v0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->isCorrectPosition(Lcom/oneplus/gallery2/media/MediaSet;I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 198
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 199
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaSetComparator;

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    .line 200
    invoke-direct {p0, p1, v0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->isCorrectPosition(Lcom/oneplus/gallery2/media/MediaSet;I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 204
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v0, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 205
    return-void

    .line 193
    :cond_4
    if-gt v0, v2, :cond_5

    move v1, v0

    .line 210
    :goto_0
    new-instance v3, Lcom/oneplus/gallery2/ListMoveEventArgs;

    invoke-direct {v3, v2, v2, v1, v1}, Lcom/oneplus/gallery2/ListMoveEventArgs;-><init>(IIII)V

    .line 211
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->EVENT_MEDIA_SET_MOVING:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, v3}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 212
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    .line 217
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 218
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 219
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->EVENT_MEDIA_SET_MOVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, v3}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 220
    return-void

    .line 194
    :cond_5
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    .line 195
    goto :goto_0

    .line 201
    :cond_6
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v1, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v1, v0

    goto :goto_0

    .line 214
    :cond_7
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "checkMediaSetIndex() - List has been released"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method protected clearMediaSetLists(Z)V
    .locals 2

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->verifyAccess()V

    .line 230
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
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

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 261
    if-eq p0, p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public get(I)Lcom/oneplus/gallery2/media/MediaSet;
    .locals 1

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

    .prologue
    .line 1
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
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->PROP_COMPARATOR:Lcom/oneplus/base/PropertyKey;

    if-eq p1, v0, :cond_0

    .line 310
    invoke-super {p0, p1}, Lcom/oneplus/base/ListHandlerBaseObject;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaSetComparator;

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 269
    instance-of v0, p1, Lcom/oneplus/gallery2/media/MediaSet;

    if-eqz v0, :cond_1

    .line 271
    check-cast p1, Lcom/oneplus/gallery2/media/MediaSet;

    .line 272
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaSetComparator;

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 273
    if-gez v0, :cond_2

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    .line 270
    return v0

    .line 273
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 274
    return v0
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
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 342
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->verifyAccess()V

    .line 345
    if-eqz p1, :cond_1

    .line 349
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaSetComparator;

    invoke-static {v1, p1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    .line 350
    if-gez v1, :cond_2

    .line 351
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    move v2, v1

    .line 352
    :goto_0
    if-ltz v2, :cond_3

    .line 357
    if-nez p2, :cond_4

    .line 367
    :goto_1
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->detachFromMediaSet(Lcom/oneplus/gallery2/media/MediaSet;)V

    .line 368
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 369
    if-nez p2, :cond_6

    .line 374
    :goto_2
    const/4 v0, 0x1

    return v0

    .line 346
    :cond_1
    return v3

    .line 350
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    move v2, v1

    goto :goto_0

    .line 353
    :cond_3
    return v3

    .line 359
    :cond_4
    invoke-static {v2}, Lcom/oneplus/gallery2/ListChangeEventArgs;->obtain(I)Lcom/oneplus/gallery2/ListChangeEventArgs;

    move-result-object v1

    .line 360
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->EVENT_MEDIA_SET_REMOVING:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 361
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    move-object v0, v1

    goto :goto_1

    .line 363
    :cond_5
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeMediaSet() - List has been released"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    return v3

    .line 371
    :cond_6
    sget-object v1, Lcom/oneplus/gallery2/media/BaseMediaSetList;->EVENT_MEDIA_SET_REMOVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 372
    invoke-virtual {v0}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    goto :goto_2
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
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->PROP_COMPARATOR:Lcom/oneplus/base/PropertyKey;

    if-eq p1, v0, :cond_0

    .line 384
    invoke-super {p0, p1, p2}, Lcom/oneplus/base/ListHandlerBaseObject;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 383
    :cond_0
    check-cast p2, Lcom/oneplus/gallery2/media/MediaSetComparator;

    invoke-direct {p0, p2}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->setComparatorProp(Lcom/oneplus/gallery2/media/MediaSetComparator;)Z

    move-result v0

    return v0
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

    .prologue
    .line 429
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
