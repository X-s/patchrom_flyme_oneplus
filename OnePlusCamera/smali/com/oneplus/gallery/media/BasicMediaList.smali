.class public abstract Lcom/oneplus/gallery/media/BasicMediaList;
.super Lcom/oneplus/base/ListHandlerBaseObject;
.source "BasicMediaList.java"

# interfaces
.implements Lcom/oneplus/gallery/media/MediaList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/base/ListHandlerBaseObject",
        "<",
        "Lcom/oneplus/gallery/media/Media;",
        ">;",
        "Lcom/oneplus/gallery/media/MediaList;"
    }
.end annotation


# instance fields
.field private final m_Comparator:Lcom/oneplus/gallery/media/MediaComparator;

.field private final m_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/media/Media;",
            ">;"
        }
    .end annotation
.end field

.field private final m_MaxMediaCount:I


# direct methods
.method protected constructor <init>(Lcom/oneplus/gallery/media/MediaComparator;I)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/oneplus/base/ListHandlerBaseObject;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    .line 30
    iput-object p1, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_Comparator:Lcom/oneplus/gallery/media/MediaComparator;

    .line 31
    iput p2, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_MaxMediaCount:I

    .line 32
    return-void
.end method

.method private addMediaDirectly(Ljava/util/List;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/media/Media;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 183
    iget-object v0, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 184
    if-eqz v3, :cond_1

    .line 214
    if-nez p2, :cond_7

    .line 251
    :cond_0
    return v2

    .line 186
    :cond_1
    iget v0, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_MaxMediaCount:I

    if-gez v0, :cond_4

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 189
    if-eqz p2, :cond_5

    .line 207
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v2, v0}, Lcom/oneplus/gallery/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery/ListChangeEventArgs;

    move-result-object v0

    .line 208
    sget-object v1, Lcom/oneplus/gallery/media/BasicMediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/gallery/media/BasicMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 209
    invoke-virtual {v0}, Lcom/oneplus/gallery/ListChangeEventArgs;->recycle()V

    .line 210
    return v5

    .line 186
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_MaxMediaCount:I

    if-le v0, v1, :cond_2

    .line 194
    if-nez p2, :cond_6

    .line 201
    iget-object v0, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 202
    iget-object v0, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_Comparator:Lcom/oneplus/gallery/media/MediaComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 203
    iget-object v0, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_MaxMediaCount:I

    if-le v0, v1, :cond_3

    .line 204
    iget-object v1, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 190
    :cond_5
    iget-object v0, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_Comparator:Lcom/oneplus/gallery/media/MediaComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_6
    move v1, v2

    .line 196
    :goto_2
    iget v0, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_MaxMediaCount:I

    if-ge v1, v0, :cond_3

    .line 197
    iget-object v3, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/Media;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 216
    :cond_7
    iget-object v4, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_Comparator:Lcom/oneplus/gallery/media/MediaComparator;

    iget-object v0, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    add-int/lit8 v1, v3, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/Media;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/Media;

    invoke-virtual {v4, v0, v1}, Lcom/oneplus/gallery/media/MediaComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_a

    .line 232
    iget-object v4, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_Comparator:Lcom/oneplus/gallery/media/MediaComparator;

    iget-object v0, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/Media;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/Media;

    invoke-virtual {v4, v0, v1}, Lcom/oneplus/gallery/media/MediaComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    .line 234
    iget v0, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_MaxMediaCount:I

    if-gez v0, :cond_f

    .line 235
    :cond_8
    iget-object v0, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0, v2, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 243
    :cond_9
    add-int/lit8 v0, v3, -0x1

    invoke-static {v2, v0}, Lcom/oneplus/gallery/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery/ListChangeEventArgs;

    move-result-object v0

    .line 244
    sget-object v1, Lcom/oneplus/gallery/media/BasicMediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/gallery/media/BasicMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 245
    invoke-virtual {v0}, Lcom/oneplus/gallery/ListChangeEventArgs;->recycle()V

    .line 246
    return v5

    .line 218
    :cond_a
    iget v0, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_MaxMediaCount:I

    if-gez v0, :cond_d

    .line 219
    :cond_b
    iget-object v0, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 227
    :cond_c
    iget-object v0, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v3, v0}, Lcom/oneplus/gallery/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery/ListChangeEventArgs;

    move-result-object v0

    .line 228
    sget-object v1, Lcom/oneplus/gallery/media/BasicMediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/gallery/media/BasicMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 229
    invoke-virtual {v0}, Lcom/oneplus/gallery/ListChangeEventArgs;->recycle()V

    .line 230
    return v5

    .line 218
    :cond_d
    iget v0, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_MaxMediaCount:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v3

    if-ge v0, v1, :cond_b

    .line 220
    iget v0, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_MaxMediaCount:I

    if-eq v0, v3, :cond_e

    .line 224
    iget v0, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_MaxMediaCount:I

    sub-int v1, v0, v3

    :goto_3
    if-ge v2, v1, :cond_c

    .line 225
    iget-object v4, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/Media;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 221
    :cond_e
    return v5

    .line 234
    :cond_f
    iget v0, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_MaxMediaCount:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v3

    if-ge v0, v1, :cond_8

    .line 236
    iget v0, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_MaxMediaCount:I

    if-eq v0, v3, :cond_10

    .line 240
    iget v0, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_MaxMediaCount:I

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_4
    if-ltz v1, :cond_9

    .line 241
    iget-object v4, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/Media;

    invoke-interface {v4, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 240
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_4

    .line 237
    :cond_10
    return v5
.end method

.method private removeMediaInternal(I)V
    .locals 3

    .prologue
    .line 360
    invoke-static {p1}, Lcom/oneplus/gallery/ListChangeEventArgs;->obtain(I)Lcom/oneplus/gallery/ListChangeEventArgs;

    move-result-object v1

    .line 361
    sget-object v0, Lcom/oneplus/gallery/media/BasicMediaList;->EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/media/BasicMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 362
    sget-object v0, Lcom/oneplus/gallery/media/BasicMediaList;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/media/BasicMediaList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 369
    sget-object v0, Lcom/oneplus/gallery/media/BasicMediaList;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/media/BasicMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 370
    invoke-virtual {v1}, Lcom/oneplus/gallery/ListChangeEventArgs;->recycle()V

    .line 371
    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/BasicMediaList;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "removeMediaInternal() -m_list is released"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-virtual {v1}, Lcom/oneplus/gallery/ListChangeEventArgs;->recycle()V

    .line 366
    return-void
.end method

.method private removeMediaInternal(II)V
    .locals 3

    .prologue
    .line 374
    invoke-static {p1, p2}, Lcom/oneplus/gallery/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery/ListChangeEventArgs;

    move-result-object v1

    .line 375
    sget-object v0, Lcom/oneplus/gallery/media/BasicMediaList;->EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/media/BasicMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 376
    sget-object v0, Lcom/oneplus/gallery/media/BasicMediaList;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/media/BasicMediaList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    :goto_0
    if-gt p1, p2, :cond_1

    .line 383
    iget-object v0, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 382
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/BasicMediaList;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "removeMediaInternal() -m_list is released"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-virtual {v1}, Lcom/oneplus/gallery/ListChangeEventArgs;->recycle()V

    .line 380
    return-void

    .line 384
    :cond_1
    sget-object v0, Lcom/oneplus/gallery/media/BasicMediaList;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/media/BasicMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 385
    invoke-virtual {v1}, Lcom/oneplus/gallery/ListChangeEventArgs;->recycle()V

    .line 386
    return-void
.end method


# virtual methods
.method protected addMedia(Lcom/oneplus/gallery/media/Media;)I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 42
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BasicMediaList;->verifyAccess()V

    .line 43
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery/media/BasicMediaList;->verifyMediaToAdd(Lcom/oneplus/gallery/media/Media;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_Comparator:Lcom/oneplus/gallery/media/MediaComparator;

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 46
    if-ltz v0, :cond_1

    .line 64
    return v2

    .line 44
    :cond_0
    return v2

    .line 49
    :cond_1
    xor-int/lit8 v0, v0, -0x1

    .line 50
    iget v1, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_MaxMediaCount:I

    if-gez v1, :cond_3

    .line 58
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 59
    invoke-static {v0}, Lcom/oneplus/gallery/ListChangeEventArgs;->obtain(I)Lcom/oneplus/gallery/ListChangeEventArgs;

    move-result-object v1

    .line 60
    sget-object v2, Lcom/oneplus/gallery/media/BasicMediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v2, v1}, Lcom/oneplus/gallery/media/BasicMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 61
    invoke-virtual {v1}, Lcom/oneplus/gallery/ListChangeEventArgs;->recycle()V

    .line 62
    return v0

    .line 50
    :cond_3
    iget-object v1, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_MaxMediaCount:I

    if-lt v1, v2, :cond_2

    .line 52
    iget v1, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_MaxMediaCount:I

    if-ge v0, v1, :cond_4

    .line 54
    iget v1, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_MaxMediaCount:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v1, v2}, Lcom/oneplus/gallery/media/BasicMediaList;->removeMediaInternal(II)V

    goto :goto_0

    .line 53
    :cond_4
    xor-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected addMedia(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/oneplus/gallery/media/Media;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 74
    instance-of v0, p1, Ljava/util/List;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 79
    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/media/BasicMediaList;->addMedia(Ljava/util/List;Z)V

    .line 81
    :goto_0
    return-void

    .line 75
    :cond_0
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, v1}, Lcom/oneplus/gallery/media/BasicMediaList;->addMedia(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method protected addMedia(Ljava/util/List;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/media/Media;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BasicMediaList;->verifyAccess()V

    .line 95
    if-nez p1, :cond_1

    .line 96
    :cond_0
    return-void

    .line 95
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/media/BasicMediaList;->addMediaDirectly(Ljava/util/List;Z)Z

    move-result v1

    if-nez v1, :cond_3

    .line 105
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    move v6, v0

    move v1, v3

    move v2, v3

    :goto_0
    if-ge v6, v7, :cond_e

    .line 107
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/Media;

    .line 108
    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/media/BasicMediaList;->verifyMediaToAdd(Lcom/oneplus/gallery/media/Media;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 110
    iget-object v4, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    iget-object v5, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_Comparator:Lcom/oneplus/gallery/media/MediaComparator;

    invoke-static {v4, v0, v5}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v4

    .line 111
    if-ltz v4, :cond_4

    .line 105
    :cond_2
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 100
    :cond_3
    return-void

    .line 114
    :cond_4
    xor-int/lit8 v5, v4, -0x1

    .line 115
    iget v4, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_MaxMediaCount:I

    if-gez v4, :cond_6

    .line 141
    :cond_5
    :goto_2
    if-gez v2, :cond_a

    move v1, v5

    move v2, v5

    .line 166
    :goto_3
    iget-object v4, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    invoke-interface {v4, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 115
    :cond_6
    iget-object v4, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget v8, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_MaxMediaCount:I

    if-lt v4, v8, :cond_5

    .line 117
    iget v4, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_MaxMediaCount:I

    if-ge v5, v4, :cond_2

    .line 119
    if-gez v2, :cond_7

    move v4, v2

    move v2, v1

    .line 132
    :goto_4
    iget v1, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_MaxMediaCount:I

    add-int/lit8 v1, v1, -0x1

    iget-object v8, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-direct {p0, v1, v8}, Lcom/oneplus/gallery/media/BasicMediaList;->removeMediaInternal(II)V

    .line 133
    sget-object v1, Lcom/oneplus/gallery/media/BasicMediaList;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/media/BasicMediaList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_9

    move v1, v2

    move v2, v4

    goto :goto_2

    .line 121
    :cond_7
    invoke-static {v2, v1}, Lcom/oneplus/gallery/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery/ListChangeEventArgs;

    move-result-object v1

    .line 122
    sget-object v2, Lcom/oneplus/gallery/media/BasicMediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v2, v1}, Lcom/oneplus/gallery/media/BasicMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 123
    invoke-virtual {v1}, Lcom/oneplus/gallery/ListChangeEventArgs;->recycle()V

    .line 126
    sget-object v1, Lcom/oneplus/gallery/media/BasicMediaList;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/media/BasicMediaList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_8

    move v2, v3

    move v4, v3

    goto :goto_4

    .line 128
    :cond_8
    iget-object v0, p0, Lcom/oneplus/gallery/media/BasicMediaList;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addMedia() -m_list is released"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void

    .line 135
    :cond_9
    iget-object v0, p0, Lcom/oneplus/gallery/media/BasicMediaList;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addMedia() -m_list is released"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void

    .line 143
    :cond_a
    add-int/lit8 v4, v1, 0x1

    if-ne v5, v4, :cond_c

    .line 144
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 143
    :cond_c
    add-int/lit8 v4, v2, -0x1

    if-eq v5, v4, :cond_b

    .line 147
    invoke-static {v2, v1}, Lcom/oneplus/gallery/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery/ListChangeEventArgs;

    move-result-object v1

    .line 148
    sget-object v2, Lcom/oneplus/gallery/media/BasicMediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v2, v1}, Lcom/oneplus/gallery/media/BasicMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 149
    invoke-virtual {v1}, Lcom/oneplus/gallery/ListChangeEventArgs;->recycle()V

    .line 152
    sget-object v1, Lcom/oneplus/gallery/media/BasicMediaList;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/media/BasicMediaList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_d

    move v1, v5

    move v2, v5

    goto/16 :goto_3

    .line 154
    :cond_d
    iget-object v0, p0, Lcom/oneplus/gallery/media/BasicMediaList;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addMedia() -m_list is released"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void

    .line 169
    :cond_e
    if-gez v2, :cond_f

    .line 175
    :goto_5
    return-void

    .line 171
    :cond_f
    invoke-static {v2, v1}, Lcom/oneplus/gallery/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery/ListChangeEventArgs;

    move-result-object v0

    .line 172
    sget-object v1, Lcom/oneplus/gallery/media/BasicMediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/gallery/media/BasicMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 173
    invoke-virtual {v0}, Lcom/oneplus/gallery/ListChangeEventArgs;->recycle()V

    goto :goto_5
.end method

.method protected clearMedia()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 260
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BasicMediaList;->verifyAccess()V

    .line 261
    iget-object v0, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 262
    if-gtz v0, :cond_0

    .line 269
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 265
    add-int/lit8 v0, v0, -0x1

    invoke-static {v2, v0}, Lcom/oneplus/gallery/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery/ListChangeEventArgs;

    move-result-object v0

    .line 266
    sget-object v1, Lcom/oneplus/gallery/media/BasicMediaList;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/gallery/media/BasicMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 267
    invoke-virtual {v0}, Lcom/oneplus/gallery/ListChangeEventArgs;->recycle()V

    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 276
    instance-of v0, p1, Lcom/oneplus/gallery/media/Media;

    if-nez v0, :cond_0

    .line 281
    return v2

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    check-cast p1, Lcom/oneplus/gallery/media/Media;

    iget-object v1, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_Comparator:Lcom/oneplus/gallery/media/MediaComparator;

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 279
    if-gez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public get(I)Lcom/oneplus/gallery/media/Media;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/Media;

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery/media/BasicMediaList;->get(I)Lcom/oneplus/gallery/media/Media;

    move-result-object v0

    return-object v0
.end method

.method public final getComparator()Lcom/oneplus/gallery/media/MediaComparator;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_Comparator:Lcom/oneplus/gallery/media/MediaComparator;

    return-object v0
.end method

.method public final getMaxMediaCount()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_MaxMediaCount:I

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 317
    instance-of v1, p1, Lcom/oneplus/gallery/media/Media;

    if-nez v1, :cond_0

    .line 322
    return v0

    .line 319
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    check-cast p1, Lcom/oneplus/gallery/media/Media;

    iget-object v2, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_Comparator:Lcom/oneplus/gallery/media/MediaComparator;

    invoke-static {v1, p1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    .line 320
    if-gez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected removeMedia(I)V
    .locals 0

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BasicMediaList;->verifyAccess()V

    .line 353
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/media/BasicMediaList;->removeMediaInternal(I)V

    .line 354
    return-void
.end method

.method protected removeMedia(Lcom/oneplus/gallery/media/Media;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 333
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BasicMediaList;->verifyAccess()V

    .line 334
    if-eqz p1, :cond_1

    .line 336
    iget-object v0, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_Comparator:Lcom/oneplus/gallery/media/MediaComparator;

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 337
    if-gez v0, :cond_2

    .line 342
    :cond_0
    return v2

    .line 335
    :cond_1
    return v2

    .line 337
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 339
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/media/BasicMediaList;->removeMediaInternal(I)V

    .line 340
    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected verifyMediaToAdd(Lcom/oneplus/gallery/media/Media;)Z
    .locals 1

    .prologue
    .line 404
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
