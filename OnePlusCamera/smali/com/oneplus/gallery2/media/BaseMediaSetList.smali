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
.field private final m_AttachedMediaSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/gallery2/media/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private m_Comparator:Lcom/oneplus/gallery2/media/MediaSetComparator;

.field private final m_EmptySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/gallery2/media/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private final m_HiddenMediaCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final m_HiddenSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/gallery2/media/MediaSet;",
            ">;"
        }
    .end annotation
.end field

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

.field private final m_MediaCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Integer;",
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

.field private final m_MediaSetVisibilityPropChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final m_ShowEmptyMediaSets:Z

.field private m_ShowHiddenMediaSets:Z


# direct methods
.method protected constructor <init>(Lcom/oneplus/gallery2/media/MediaSetComparator;)V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;-><init>(Lcom/oneplus/gallery2/media/MediaSetComparator;Z)V

    .line 77
    return-void
.end method

.method protected constructor <init>(Lcom/oneplus/gallery2/media/MediaSetComparator;Z)V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/oneplus/base/ListHandlerBaseObject;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_AttachedMediaSet:Ljava/util/Set;

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_EmptySet:Ljava/util/Set;

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_HiddenSet:Ljava/util/Set;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    .line 35
    new-instance v0, Lcom/oneplus/gallery2/media/BaseMediaSetList$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/BaseMediaSetList$1;-><init>(Lcom/oneplus/gallery2/media/BaseMediaSetList;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_HiddenMediaCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 43
    new-instance v0, Lcom/oneplus/gallery2/media/BaseMediaSetList$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/BaseMediaSetList$2;-><init>(Lcom/oneplus/gallery2/media/BaseMediaSetList;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_MediaCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 52
    new-instance v0, Lcom/oneplus/gallery2/media/BaseMediaSetList$3;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/BaseMediaSetList$3;-><init>(Lcom/oneplus/gallery2/media/BaseMediaSetList;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_MediaSetPropChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 60
    new-instance v0, Lcom/oneplus/gallery2/media/BaseMediaSetList$4;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/BaseMediaSetList$4;-><init>(Lcom/oneplus/gallery2/media/BaseMediaSetList;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_MediaSetVisibilityPropChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 86
    if-eqz p1, :cond_0

    .line 88
    iput-object p1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaSetComparator;

    .line 89
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MediaSetComparator;->getReferencedProperties()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/base/PropertyKey;

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_MediaSetPropsForComparison:[Lcom/oneplus/base/PropertyKey;

    .line 90
    iput-boolean p2, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_ShowEmptyMediaSets:Z

    .line 91
    return-void

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No comparator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$1(Lcom/oneplus/gallery2/media/BaseMediaSetList;)Z
    .locals 1

    .prologue
    .line 646
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->updateHiddenMediaSetCountProp()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/oneplus/gallery2/media/BaseMediaSetList;Lcom/oneplus/gallery2/media/MediaSet;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 425
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->onMediaCountChanged(Lcom/oneplus/gallery2/media/MediaSet;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$3(Lcom/oneplus/gallery2/media/BaseMediaSetList;Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/base/PropertyKey;)V
    .locals 0

    .prologue
    .line 449
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->onMediaSetPropertyChanged(Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/base/PropertyKey;)V

    return-void
.end method

.method static synthetic access$4(Lcom/oneplus/gallery2/media/BaseMediaSetList;Lcom/oneplus/gallery2/media/MediaSet;Z)V
    .locals 0

    .prologue
    .line 456
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->onMediaSetVisibilityPropChanged(Lcom/oneplus/gallery2/media/MediaSet;Z)V

    return-void
.end method

.method private addMediaSet(Lcom/oneplus/gallery2/media/MediaSet;ZZ)I
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 110
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->verifyAccess()V

    .line 111
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 115
    if-eqz p1, :cond_3

    .line 118
    const/4 v2, 0x1

    .line 121
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSet;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Lcom/oneplus/gallery2/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    .line 139
    :goto_0
    invoke-static {p1}, Lcom/oneplus/gallery2/media/MediaSets;->isEmpty(Lcom/oneplus/gallery2/media/MediaSet;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 151
    :cond_0
    :goto_1
    if-eqz v0, :cond_a

    .line 155
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaSetComparator;

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    .line 156
    if-gez v0, :cond_b

    .line 171
    :cond_1
    :goto_2
    return v3

    .line 112
    :cond_2
    return v3

    .line 116
    :cond_3
    return v3

    .line 123
    :cond_4
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_HiddenSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    goto :goto_0

    .line 125
    :cond_5
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->updateHiddenMediaSetCountProp()Z

    .line 126
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_ShowHiddenMediaSets:Z

    if-eqz v0, :cond_6

    move v0, v2

    goto :goto_0

    .line 128
    :cond_6
    if-nez p3, :cond_7

    :goto_3
    move v0, v1

    .line 133
    goto :goto_0

    .line 130
    :cond_7
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->attachToMediaSet(Lcom/oneplus/gallery2/media/MediaSet;)V

    move p3, v1

    .line 131
    goto :goto_3

    .line 139
    :cond_8
    iget-boolean v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_ShowEmptyMediaSets:Z

    if-nez v2, :cond_0

    .line 141
    if-nez p3, :cond_9

    .line 146
    :goto_4
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_EmptySet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 147
    goto :goto_1

    .line 143
    :cond_9
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->attachToMediaSet(Lcom/oneplus/gallery2/media/MediaSet;)V

    move p3, v1

    .line 144
    goto :goto_4

    .line 152
    :cond_a
    return v3

    .line 158
    :cond_b
    if-nez p3, :cond_c

    .line 163
    :goto_5
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 164
    if-eqz p2, :cond_1

    .line 166
    invoke-static {v0}, Lcom/oneplus/gallery2/ListChangeEventArgs;->obtain(I)Lcom/oneplus/gallery2/ListChangeEventArgs;

    move-result-object v0

    .line 167
    sget-object v1, Lcom/oneplus/gallery2/media/BaseMediaSetList;->EVENT_MEDIA_SET_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 168
    invoke-virtual {v0}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    goto :goto_2

    .line 160
    :cond_c
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->attachToMediaSet(Lcom/oneplus/gallery2/media/MediaSet;)V

    goto :goto_5
.end method

.method private attachToMediaSet(Lcom/oneplus/gallery2/media/MediaSet;)V
    .locals 3

    .prologue
    .line 247
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_AttachedMediaSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_MediaSetPropsForComparison:[Lcom/oneplus/base/PropertyKey;

    array-length v0, v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 251
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_MediaSetPropsForComparison:[Lcom/oneplus/base/PropertyKey;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_MediaSetPropChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v1, v2}, Lcom/oneplus/gallery2/media/MediaSet;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    goto :goto_0

    .line 248
    :cond_0
    return-void

    .line 254
    :cond_1
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSet;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_MediaSetVisibilityPropChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery2/media/MediaSet;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 255
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_MediaCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery2/media/MediaSet;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 256
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSet;->PROP_HIDDEN_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_HiddenMediaCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery2/media/MediaSet;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 259
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSet;->PROP_CONTAINS_HIDDEN_MEDIA:Lcom/oneplus/base/PropertyKey;

    iget-boolean v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_ShowHiddenMediaSets:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery2/media/MediaSet;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 260
    return-void
.end method

.method private attachToMediaSets()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 267
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSet;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->attachToMediaSet(Lcom/oneplus/gallery2/media/MediaSet;)V

    .line 266
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 268
    :cond_0
    return-void
.end method

.method private detachFromMediaSet(Lcom/oneplus/gallery2/media/MediaSet;)V
    .locals 3

    .prologue
    .line 344
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_AttachedMediaSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_MediaSetPropsForComparison:[Lcom/oneplus/base/PropertyKey;

    array-length v0, v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 348
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_MediaSetPropsForComparison:[Lcom/oneplus/base/PropertyKey;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_MediaSetPropChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v1, v2}, Lcom/oneplus/gallery2/media/MediaSet;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    goto :goto_0

    .line 345
    :cond_0
    return-void

    .line 351
    :cond_1
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSet;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_MediaSetVisibilityPropChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery2/media/MediaSet;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 352
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_MediaCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery2/media/MediaSet;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 353
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSet;->PROP_HIDDEN_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_HiddenMediaCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery2/media/MediaSet;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 354
    return-void
.end method

.method private detachFromMediaSets()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 361
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSet;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->detachFromMediaSet(Lcom/oneplus/gallery2/media/MediaSet;)V

    .line 360
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 362
    :cond_0
    return-void
.end method

.method private isCorrectPosition(Lcom/oneplus/gallery2/media/MediaSet;I)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 390
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 391
    if-nez p1, :cond_1

    .line 392
    :cond_0
    return v3

    .line 391
    :cond_1
    if-ltz p2, :cond_0

    if-gt p2, v0, :cond_0

    .line 393
    if-eqz v0, :cond_3

    .line 395
    if-eqz p2, :cond_4

    .line 397
    if-eq p2, v0, :cond_6

    .line 399
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

    .line 394
    :cond_3
    return v4

    .line 396
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

    .line 398
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

    .line 399
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

.method private onMediaCountChanged(Lcom/oneplus/gallery2/media/MediaSet;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 427
    invoke-static {p2}, Lcom/oneplus/gallery2/media/MediaSets;->isEmpty(Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 428
    :goto_0
    invoke-static {p3}, Lcom/oneplus/gallery2/media/MediaSets;->isEmpty(Ljava/lang/Integer;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    .line 429
    :goto_1
    if-eq v0, v3, :cond_2

    .line 431
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_ShowEmptyMediaSets:Z

    if-nez v0, :cond_3

    .line 433
    if-nez v3, :cond_4

    .line 441
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_EmptySet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 442
    invoke-direct {p0, p1, v1, v1}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->removeMediaSet(Lcom/oneplus/gallery2/media/MediaSet;ZZ)Z

    .line 443
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->updateHiddenMediaSetCountProp()Z

    .line 445
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 427
    goto :goto_0

    :cond_1
    move v3, v2

    .line 428
    goto :goto_1

    .line 430
    :cond_2
    return-void

    .line 432
    :cond_3
    return-void

    .line 435
    :cond_4
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_EmptySet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 436
    invoke-direct {p0, p1, v1, v2}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->addMediaSet(Lcom/oneplus/gallery2/media/MediaSet;ZZ)I

    .line 437
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->updateHiddenMediaSetCountProp()Z

    goto :goto_2
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
    .line 451
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->checkMediaSetIndex(Lcom/oneplus/gallery2/media/MediaSet;)V

    .line 452
    return-void
.end method

.method private onMediaSetVisibilityPropChanged(Lcom/oneplus/gallery2/media/MediaSet;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 459
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_AttachedMediaSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    if-nez p2, :cond_1

    .line 473
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_HiddenSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 474
    if-eqz v0, :cond_3

    .line 476
    :goto_0
    iget-boolean v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_ShowHiddenMediaSets:Z

    if-eqz v1, :cond_4

    .line 479
    :goto_1
    if-nez v0, :cond_5

    .line 481
    :goto_2
    return-void

    .line 460
    :cond_0
    return-void

    .line 466
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_HiddenSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 467
    if-eqz v0, :cond_2

    .line 469
    :goto_3
    invoke-direct {p0, p1, v5, v4}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->addMediaSet(Lcom/oneplus/gallery2/media/MediaSet;ZZ)I

    goto :goto_1

    .line 468
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onMediaSetVisibilityPropChanged() - remove fail, mediaSet:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 475
    :cond_3
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onMediaSetVisibilityPropChanged() - add fail, mediaSet:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 477
    :cond_4
    invoke-direct {p0, p1, v5, v5}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->removeMediaSet(Lcom/oneplus/gallery2/media/MediaSet;ZZ)Z

    goto :goto_1

    .line 480
    :cond_5
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->updateHiddenMediaSetCountProp()Z

    goto :goto_2
.end method

.method private removeMediaSet(Lcom/oneplus/gallery2/media/MediaSet;ZZ)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 519
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->verifyAccess()V

    .line 522
    if-eqz p1, :cond_1

    .line 526
    if-eqz p3, :cond_2

    .line 534
    :goto_0
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaSetComparator;

    invoke-static {v1, p1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    .line 535
    if-gez v1, :cond_4

    .line 536
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    move v2, v1

    .line 537
    :goto_1
    if-ltz v2, :cond_5

    .line 542
    if-nez p2, :cond_6

    .line 552
    :goto_2
    if-eqz p3, :cond_8

    .line 554
    :goto_3
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 555
    if-nez p2, :cond_9

    .line 560
    :goto_4
    const/4 v0, 0x1

    return v0

    .line 523
    :cond_1
    return v3

    .line 528
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_HiddenSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 530
    :goto_5
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_EmptySet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 529
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->updateHiddenMediaSetCountProp()Z

    goto :goto_5

    .line 535
    :cond_4
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    move v2, v1

    goto :goto_1

    .line 538
    :cond_5
    return v3

    .line 544
    :cond_6
    invoke-static {v2}, Lcom/oneplus/gallery2/ListChangeEventArgs;->obtain(I)Lcom/oneplus/gallery2/ListChangeEventArgs;

    move-result-object v1

    .line 545
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->EVENT_MEDIA_SET_REMOVING:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 546
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    move-object v0, v1

    goto :goto_2

    .line 548
    :cond_7
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeMediaSet() - List has been released"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    return v3

    .line 553
    :cond_8
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->detachFromMediaSet(Lcom/oneplus/gallery2/media/MediaSet;)V

    goto :goto_3

    .line 557
    :cond_9
    sget-object v1, Lcom/oneplus/gallery2/media/BaseMediaSetList;->EVENT_MEDIA_SET_REMOVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 558
    invoke-virtual {v0}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    goto :goto_4
.end method

.method private setComparatorProp(Lcom/oneplus/gallery2/media/MediaSetComparator;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 580
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->verifyAccess()V

    .line 581
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaSetComparator;

    if-eq p1, v0, :cond_0

    .line 583
    if-eqz p1, :cond_1

    .line 587
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->detachFromMediaSets()V

    .line 588
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaSetComparator;

    .line 589
    iput-object p1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaSetComparator;

    .line 590
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MediaSetComparator;->getReferencedProperties()Ljava/util/List;

    move-result-object v0

    new-array v2, v2, [Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/base/PropertyKey;

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_MediaSetPropsForComparison:[Lcom/oneplus/base/PropertyKey;

    .line 591
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->attachToMediaSets()V

    .line 594
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 595
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->EVENT_RESET:Lcom/oneplus/base/EventKey;

    sget-object v2, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 598
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->PROP_COMPARATOR:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v1, p1}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 582
    :cond_0
    return v2

    .line 584
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private setShowHiddenMediaSetsProp(Z)Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 605
    iget-boolean v3, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_ShowHiddenMediaSets:Z

    .line 606
    if-eq v3, p1, :cond_0

    .line 609
    iput-boolean p1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_ShowHiddenMediaSets:Z

    .line 612
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_HiddenSet:Ljava/util/Set;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_HiddenSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Lcom/oneplus/gallery2/media/MediaSet;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery2/media/MediaSet;

    array-length v4, v0

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v0, v1

    .line 613
    sget-object v6, Lcom/oneplus/gallery2/media/MediaSet;->PROP_CONTAINS_HIDDEN_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/oneplus/gallery2/media/MediaSet;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 612
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 607
    :cond_0
    return v2

    .line 614
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/oneplus/gallery2/media/MediaSet;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery2/media/MediaSet;

    array-length v4, v0

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v5, v0, v1

    .line 615
    sget-object v6, Lcom/oneplus/gallery2/media/MediaSet;->PROP_CONTAINS_HIDDEN_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/oneplus/gallery2/media/MediaSet;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 614
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 616
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_EmptySet:Ljava/util/Set;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_EmptySet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Lcom/oneplus/gallery2/media/MediaSet;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery2/media/MediaSet;

    array-length v4, v0

    move v1, v2

    :goto_2
    if-ge v1, v4, :cond_3

    aget-object v5, v0, v1

    .line 617
    sget-object v6, Lcom/oneplus/gallery2/media/MediaSet;->PROP_CONTAINS_HIDDEN_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/oneplus/gallery2/media/MediaSet;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 616
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 619
    :cond_3
    if-nez p1, :cond_4

    .line 628
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_HiddenSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSet;

    .line 629
    invoke-direct {p0, v0, v8, v8}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->removeMediaSet(Lcom/oneplus/gallery2/media/MediaSet;ZZ)Z

    goto :goto_3

    .line 622
    :cond_4
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_HiddenSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSet;

    .line 623
    invoke-direct {p0, v0, v8, v2}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->addMediaSet(Lcom/oneplus/gallery2/media/MediaSet;ZZ)I

    goto :goto_4

    .line 633
    :cond_5
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->PROP_SHOW_HIDDEN_MEDIA_SETS:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private updateHiddenMediaSetCountProp()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 648
    iget-boolean v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_ShowEmptyMediaSets:Z

    if-nez v1, :cond_1

    .line 653
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_HiddenSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSet;

    .line 655
    invoke-static {v0}, Lcom/oneplus/gallery2/media/MediaSets;->isEmpty(Lcom/oneplus/gallery2/media/MediaSet;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 659
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 649
    :cond_1
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->PROP_HIDDEN_MEDIA_SET_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_HiddenSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 655
    :cond_2
    sget-object v3, Lcom/oneplus/gallery2/media/MediaSet;->PROP_HIDDEN_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/oneplus/gallery2/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/oneplus/gallery2/media/MediaSets;->isEmpty(Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 661
    :cond_3
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->PROP_HIDDEN_MEDIA_SET_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected addMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)I
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->addMediaSet(Lcom/oneplus/gallery2/media/MediaSet;ZZ)I

    move-result v0

    return v0
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

    .line 183
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->verifyAccess()V

    .line 184
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 188
    if-eqz p1, :cond_2

    .line 194
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

    .line 196
    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->verifyMediaSetToAdd(Lcom/oneplus/gallery2/media/MediaSet;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    iget-object v5, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaSetComparator;

    invoke-static {v2, v0, v5}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v2

    xor-int/lit8 v2, v2, -0x1

    .line 199
    if-ltz v2, :cond_0

    .line 202
    if-nez p2, :cond_3

    .line 230
    :goto_1
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->attachToMediaSet(Lcom/oneplus/gallery2/media/MediaSet;)V

    .line 231
    iget-object v5, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v5, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 185
    :cond_1
    return-void

    .line 189
    :cond_2
    return-void

    .line 204
    :cond_3
    if-gez v3, :cond_4

    move v1, v2

    move v3, v2

    .line 225
    goto :goto_1

    .line 206
    :cond_4
    add-int/lit8 v5, v1, 0x1

    if-ne v2, v5, :cond_6

    .line 207
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 206
    :cond_6
    add-int/lit8 v5, v3, -0x1

    if-eq v2, v5, :cond_5

    .line 210
    invoke-static {v3, v1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery2/ListChangeEventArgs;

    move-result-object v1

    .line 211
    sget-object v3, Lcom/oneplus/gallery2/media/BaseMediaSetList;->EVENT_MEDIA_SET_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v3, v1}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 212
    invoke-virtual {v1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    .line 215
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

    .line 217
    :cond_7
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addMediaSet() - List has been released"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-void

    .line 234
    :cond_8
    if-nez p2, :cond_a

    .line 240
    :cond_9
    :goto_2
    return-void

    .line 234
    :cond_a
    if-ltz v3, :cond_9

    .line 236
    invoke-static {v3, v1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery2/ListChangeEventArgs;

    move-result-object v0

    .line 237
    sget-object v1, Lcom/oneplus/gallery2/media/BaseMediaSetList;->EVENT_MEDIA_SET_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 238
    invoke-virtual {v0}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    goto :goto_2
.end method

.method protected checkMediaSetIndex(Lcom/oneplus/gallery2/media/MediaSet;)V
    .locals 4

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->verifyAccess()V

    .line 279
    if-eqz p1, :cond_1

    .line 281
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 285
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 286
    invoke-direct {p0, p1, v2}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->isCorrectPosition(Lcom/oneplus/gallery2/media/MediaSet;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 287
    :cond_0
    return-void

    .line 280
    :cond_1
    return-void

    .line 282
    :cond_2
    return-void

    .line 286
    :cond_3
    if-ltz v2, :cond_0

    .line 290
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaSetComparator;

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    .line 291
    invoke-direct {p0, p1, v0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->isCorrectPosition(Lcom/oneplus/gallery2/media/MediaSet;I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 298
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 299
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaSetComparator;

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    .line 300
    invoke-direct {p0, p1, v0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->isCorrectPosition(Lcom/oneplus/gallery2/media/MediaSet;I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 304
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v0, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 305
    return-void

    .line 293
    :cond_4
    if-gt v0, v2, :cond_5

    move v1, v0

    .line 310
    :goto_0
    new-instance v3, Lcom/oneplus/gallery2/ListMoveEventArgs;

    invoke-direct {v3, v2, v2, v1, v1}, Lcom/oneplus/gallery2/ListMoveEventArgs;-><init>(IIII)V

    .line 311
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->EVENT_MEDIA_SET_MOVING:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, v3}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 312
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    .line 317
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 318
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 319
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->EVENT_MEDIA_SET_MOVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, v3}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 320
    return-void

    .line 294
    :cond_5
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    .line 295
    goto :goto_0

    .line 301
    :cond_6
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v1, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v1, v0

    goto :goto_0

    .line 314
    :cond_7
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "checkMediaSetIndex() - List has been released"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method protected clearMediaSetLists(Z)V
    .locals 2

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->verifyAccess()V

    .line 330
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->detachFromMediaSets()V

    .line 333
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 334
    if-eqz p1, :cond_0

    .line 335
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->EVENT_RESET:Lcom/oneplus/base/EventKey;

    sget-object v1, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 369
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
    .line 407
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
    .line 416
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->PROP_COMPARATOR:Lcom/oneplus/base/PropertyKey;

    if-eq p1, v0, :cond_0

    .line 418
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->PROP_SHOW_HIDDEN_MEDIA_SETS:Lcom/oneplus/base/PropertyKey;

    if-eq p1, v0, :cond_1

    .line 420
    invoke-super {p0, p1}, Lcom/oneplus/base/ListHandlerBaseObject;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaSetComparator;

    return-object v0

    .line 419
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_ShowHiddenMediaSets:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 377
    instance-of v0, p1, Lcom/oneplus/gallery2/media/MediaSet;

    if-eqz v0, :cond_1

    .line 379
    check-cast p1, Lcom/oneplus/gallery2/media/MediaSet;

    .line 380
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaSetComparator;

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 381
    if-gez v0, :cond_2

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    .line 378
    return v0

    .line 381
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 382
    return v0
.end method

.method public ready()V
    .locals 2

    .prologue
    .line 487
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->PROP_IS_READY:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 488
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 496
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->clearMediaSetLists(Z)V

    .line 499
    invoke-super {p0}, Lcom/oneplus/base/ListHandlerBaseObject;->release()V

    .line 500
    return-void
.end method

.method protected removeMediaSet(Lcom/oneplus/gallery2/media/MediaSet;Z)Z
    .locals 1

    .prologue
    .line 511
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->removeMediaSet(Lcom/oneplus/gallery2/media/MediaSet;ZZ)Z

    move-result v0

    return v0
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
    .line 568
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->PROP_COMPARATOR:Lcom/oneplus/base/PropertyKey;

    if-eq p1, v0, :cond_0

    .line 570
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->PROP_SHOW_HIDDEN_MEDIA_SETS:Lcom/oneplus/base/PropertyKey;

    if-eq p1, v0, :cond_1

    .line 572
    invoke-super {p0, p1, p2}, Lcom/oneplus/base/ListHandlerBaseObject;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 569
    :cond_0
    check-cast p2, Lcom/oneplus/gallery2/media/MediaSetComparator;

    invoke-direct {p0, p2}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->setComparatorProp(Lcom/oneplus/gallery2/media/MediaSetComparator;)Z

    move-result v0

    return v0

    .line 571
    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->setShowHiddenMediaSetsProp(Z)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected verifyMediaSetToAdd(Lcom/oneplus/gallery2/media/MediaSet;)Z
    .locals 1

    .prologue
    .line 673
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
