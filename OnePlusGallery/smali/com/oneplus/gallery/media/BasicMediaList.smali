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
    .param p1, "comparator"    # Lcom/oneplus/gallery/media/MediaComparator;
    .param p2, "maxMediaCount"    # I

    .prologue
    .line 29
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
    .locals 9
    .param p2, "isSorted"    # Z
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
    .local p1, "mediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 183
    iget-object v6, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 184
    .local v1, "currentCount":I
    if-nez v1, :cond_5

    .line 186
    iget v6, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_MaxMediaCount:I

    if-ltz v6, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    iget v7, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_MaxMediaCount:I

    if-gt v6, v7, :cond_3

    .line 188
    :cond_0
    iget-object v6, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 189
    if-nez p2, :cond_1

    .line 190
    iget-object v6, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    iget-object v7, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_Comparator:Lcom/oneplus/gallery/media/MediaComparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 207
    :cond_1
    iget-object v6, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Lcom/oneplus/gallery/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery/ListChangeEventArgs;

    move-result-object v2

    .line 208
    .local v2, "e":Lcom/oneplus/gallery/ListChangeEventArgs;
    sget-object v5, Lcom/oneplus/gallery/media/BasicMediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v5, v2}, Lcom/oneplus/gallery/media/BasicMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 209
    invoke-virtual {v2}, Lcom/oneplus/gallery/ListChangeEventArgs;->recycle()V

    .line 251
    .end local v2    # "e":Lcom/oneplus/gallery/ListChangeEventArgs;
    :cond_2
    :goto_0
    return v4

    .line 194
    :cond_3
    if-eqz p2, :cond_4

    .line 196
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v6, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_MaxMediaCount:I

    if-ge v3, v6, :cond_1

    .line 197
    iget-object v6, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 201
    .end local v3    # "i":I
    :cond_4
    iget-object v6, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 202
    iget-object v6, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    iget-object v7, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_Comparator:Lcom/oneplus/gallery/media/MediaComparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 203
    iget-object v6, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .restart local v3    # "i":I
    :goto_2
    iget v6, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_MaxMediaCount:I

    if-le v3, v6, :cond_1

    .line 204
    iget-object v6, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 203
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 214
    .end local v3    # "i":I
    :cond_5
    if-eqz p2, :cond_d

    .line 216
    iget-object v6, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_Comparator:Lcom/oneplus/gallery/media/MediaComparator;

    iget-object v7, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    add-int/lit8 v8, v1, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/oneplus/gallery/media/MediaComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_9

    .line 218
    iget v5, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_MaxMediaCount:I

    if-ltz v5, :cond_6

    iget v5, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_MaxMediaCount:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v6, v1

    if-lt v5, v6, :cond_8

    .line 219
    :cond_6
    iget-object v5, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 227
    :cond_7
    iget-object v5, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v1, v5}, Lcom/oneplus/gallery/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery/ListChangeEventArgs;

    move-result-object v2

    .line 228
    .restart local v2    # "e":Lcom/oneplus/gallery/ListChangeEventArgs;
    sget-object v5, Lcom/oneplus/gallery/media/BasicMediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v5, v2}, Lcom/oneplus/gallery/media/BasicMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 229
    invoke-virtual {v2}, Lcom/oneplus/gallery/ListChangeEventArgs;->recycle()V

    goto :goto_0

    .line 220
    .end local v2    # "e":Lcom/oneplus/gallery/ListChangeEventArgs;
    :cond_8
    iget v5, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_MaxMediaCount:I

    if-eq v5, v1, :cond_2

    .line 224
    const/4 v3, 0x0

    .restart local v3    # "i":I
    iget v5, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_MaxMediaCount:I

    sub-int v0, v5, v1

    .local v0, "count":I
    :goto_3
    if-ge v3, v0, :cond_7

    .line 225
    iget-object v5, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 232
    .end local v0    # "count":I
    .end local v3    # "i":I
    :cond_9
    iget-object v6, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_Comparator:Lcom/oneplus/gallery/media/MediaComparator;

    iget-object v7, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/oneplus/gallery/media/MediaComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-lez v6, :cond_d

    .line 234
    iget v6, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_MaxMediaCount:I

    if-ltz v6, :cond_a

    iget v6, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_MaxMediaCount:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v7, v1

    if-lt v6, v7, :cond_c

    .line 235
    :cond_a
    iget-object v6, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    invoke-interface {v6, v5, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 243
    :cond_b
    add-int/lit8 v6, v1, -0x1

    invoke-static {v5, v6}, Lcom/oneplus/gallery/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery/ListChangeEventArgs;

    move-result-object v2

    .line 244
    .restart local v2    # "e":Lcom/oneplus/gallery/ListChangeEventArgs;
    sget-object v5, Lcom/oneplus/gallery/media/BasicMediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v5, v2}, Lcom/oneplus/gallery/media/BasicMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 245
    invoke-virtual {v2}, Lcom/oneplus/gallery/ListChangeEventArgs;->recycle()V

    goto/16 :goto_0

    .line 236
    .end local v2    # "e":Lcom/oneplus/gallery/ListChangeEventArgs;
    :cond_c
    iget v6, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_MaxMediaCount:I

    if-eq v6, v1, :cond_2

    .line 240
    iget v6, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_MaxMediaCount:I

    sub-int/2addr v6, v1

    add-int/lit8 v3, v6, -0x1

    .restart local v3    # "i":I
    :goto_4
    if-ltz v3, :cond_b

    .line 241
    iget-object v6, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 240
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .end local v3    # "i":I
    :cond_d
    move v4, v5

    .line 251
    goto/16 :goto_0
.end method

.method private removeMediaInternal(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 360
    invoke-static {p1}, Lcom/oneplus/gallery/ListChangeEventArgs;->obtain(I)Lcom/oneplus/gallery/ListChangeEventArgs;

    move-result-object v0

    .line 361
    .local v0, "e":Lcom/oneplus/gallery/ListChangeEventArgs;
    sget-object v1, Lcom/oneplus/gallery/media/BasicMediaList;->EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/gallery/media/BasicMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 362
    sget-object v1, Lcom/oneplus/gallery/media/BasicMediaList;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/media/BasicMediaList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    iget-object v1, p0, Lcom/oneplus/gallery/media/BasicMediaList;->TAG:Ljava/lang/String;

    const-string v2, "removeMediaInternal() -m_list is released"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-virtual {v0}, Lcom/oneplus/gallery/ListChangeEventArgs;->recycle()V

    .line 371
    :goto_0
    return-void

    .line 368
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 369
    sget-object v1, Lcom/oneplus/gallery/media/BasicMediaList;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/gallery/media/BasicMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 370
    invoke-virtual {v0}, Lcom/oneplus/gallery/ListChangeEventArgs;->recycle()V

    goto :goto_0
.end method

.method private removeMediaInternal(II)V
    .locals 4
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 374
    invoke-static {p1, p2}, Lcom/oneplus/gallery/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery/ListChangeEventArgs;

    move-result-object v0

    .line 375
    .local v0, "e":Lcom/oneplus/gallery/ListChangeEventArgs;
    sget-object v2, Lcom/oneplus/gallery/media/BasicMediaList;->EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v2, v0}, Lcom/oneplus/gallery/media/BasicMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 376
    sget-object v2, Lcom/oneplus/gallery/media/BasicMediaList;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery/media/BasicMediaList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 378
    iget-object v2, p0, Lcom/oneplus/gallery/media/BasicMediaList;->TAG:Ljava/lang/String;

    const-string v3, "removeMediaInternal() -m_list is released"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-virtual {v0}, Lcom/oneplus/gallery/ListChangeEventArgs;->recycle()V

    .line 386
    :goto_0
    return-void

    .line 382
    :cond_0
    move v1, p1

    .local v1, "i":I
    :goto_1
    if-gt v1, p2, :cond_1

    .line 383
    iget-object v2, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 382
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 384
    :cond_1
    sget-object v2, Lcom/oneplus/gallery/media/BasicMediaList;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v2, v0}, Lcom/oneplus/gallery/media/BasicMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 385
    invoke-virtual {v0}, Lcom/oneplus/gallery/ListChangeEventArgs;->recycle()V

    goto :goto_0
.end method


# virtual methods
.method protected addMedia(Lcom/oneplus/gallery/media/Media;)I
    .locals 5
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    const/4 v2, -0x1

    .line 42
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BasicMediaList;->verifyAccess()V

    .line 43
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery/media/BasicMediaList;->verifyMediaToAdd(Lcom/oneplus/gallery/media/Media;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 64
    :goto_0
    return v1

    .line 45
    :cond_0
    iget-object v3, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    iget-object v4, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_Comparator:Lcom/oneplus/gallery/media/MediaComparator;

    invoke-static {v3, p1, v4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    .line 46
    .local v1, "index":I
    if-gez v1, :cond_3

    .line 49
    xor-int/lit8 v1, v1, -0x1

    .line 50
    iget v2, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_MaxMediaCount:I

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_MaxMediaCount:I

    if-lt v2, v3, :cond_2

    .line 52
    iget v2, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_MaxMediaCount:I

    if-lt v1, v2, :cond_1

    .line 53
    xor-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 54
    :cond_1
    iget v2, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_MaxMediaCount:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v2, v3}, Lcom/oneplus/gallery/media/BasicMediaList;->removeMediaInternal(II)V

    .line 58
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 59
    invoke-static {v1}, Lcom/oneplus/gallery/ListChangeEventArgs;->obtain(I)Lcom/oneplus/gallery/ListChangeEventArgs;

    move-result-object v0

    .line 60
    .local v0, "e":Lcom/oneplus/gallery/ListChangeEventArgs;
    sget-object v2, Lcom/oneplus/gallery/media/BasicMediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v2, v0}, Lcom/oneplus/gallery/media/BasicMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 61
    invoke-virtual {v0}, Lcom/oneplus/gallery/ListChangeEventArgs;->recycle()V

    goto :goto_0

    .end local v0    # "e":Lcom/oneplus/gallery/ListChangeEventArgs;
    :cond_3
    move v1, v2

    .line 64
    goto :goto_0
.end method

.method protected addMedia(Ljava/util/Collection;)V
    .locals 3
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
    .local p1, "mediaCollection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/oneplus/gallery/media/Media;>;"
    const/4 v2, 0x0

    .line 74
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 75
    check-cast p1, Ljava/util/List;

    .end local p1    # "mediaCollection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/oneplus/gallery/media/Media;>;"
    invoke-virtual {p0, p1, v2}, Lcom/oneplus/gallery/media/BasicMediaList;->addMedia(Ljava/util/List;Z)V

    .line 81
    :goto_0
    return-void

    .line 78
    .restart local p1    # "mediaCollection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/oneplus/gallery/media/Media;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 79
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    invoke-virtual {p0, v0, v2}, Lcom/oneplus/gallery/media/BasicMediaList;->addMedia(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method protected addMedia(Ljava/util/List;Z)V
    .locals 9
    .param p2, "isSorted"    # Z
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
    .line 92
    .local p1, "mediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BasicMediaList;->verifyAccess()V

    .line 95
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/media/BasicMediaList;->addMediaDirectly(Ljava/util/List;Z)Z

    move-result v7

    if-nez v7, :cond_0

    .line 104
    const/4 v6, -0x1

    .local v6, "startIndex":I
    const/4 v2, -0x1

    .line 105
    .local v2, "endIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    :goto_1
    if-ge v3, v0, :cond_a

    .line 107
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery/media/Media;

    .line 108
    .local v5, "media":Lcom/oneplus/gallery/media/Media;
    invoke-virtual {p0, v5}, Lcom/oneplus/gallery/media/BasicMediaList;->verifyMediaToAdd(Lcom/oneplus/gallery/media/Media;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 105
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 110
    :cond_3
    iget-object v7, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    iget-object v8, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_Comparator:Lcom/oneplus/gallery/media/MediaComparator;

    invoke-static {v7, v5, v8}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v4

    .line 111
    .local v4, "index":I
    if-gez v4, :cond_2

    .line 114
    xor-int/lit8 v4, v4, -0x1

    .line 115
    iget v7, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_MaxMediaCount:I

    if-ltz v7, :cond_5

    iget-object v7, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    iget v8, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_MaxMediaCount:I

    if-lt v7, v8, :cond_5

    .line 117
    iget v7, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_MaxMediaCount:I

    if-ge v4, v7, :cond_2

    .line 119
    if-ltz v6, :cond_4

    .line 121
    invoke-static {v6, v2}, Lcom/oneplus/gallery/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery/ListChangeEventArgs;

    move-result-object v1

    .line 122
    .local v1, "e":Lcom/oneplus/gallery/ListChangeEventArgs;
    sget-object v7, Lcom/oneplus/gallery/media/BasicMediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v7, v1}, Lcom/oneplus/gallery/media/BasicMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 123
    invoke-virtual {v1}, Lcom/oneplus/gallery/ListChangeEventArgs;->recycle()V

    .line 124
    const/4 v6, -0x1

    .line 125
    const/4 v2, -0x1

    .line 126
    sget-object v7, Lcom/oneplus/gallery/media/BasicMediaList;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/gallery/media/BasicMediaList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 128
    iget-object v7, p0, Lcom/oneplus/gallery/media/BasicMediaList;->TAG:Ljava/lang/String;

    const-string v8, "addMedia() -m_list is released"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 132
    .end local v1    # "e":Lcom/oneplus/gallery/ListChangeEventArgs;
    :cond_4
    iget v7, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_MaxMediaCount:I

    add-int/lit8 v7, v7, -0x1

    iget-object v8, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-direct {p0, v7, v8}, Lcom/oneplus/gallery/media/BasicMediaList;->removeMediaInternal(II)V

    .line 133
    sget-object v7, Lcom/oneplus/gallery/media/BasicMediaList;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/gallery/media/BasicMediaList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 135
    iget-object v7, p0, Lcom/oneplus/gallery/media/BasicMediaList;->TAG:Ljava/lang/String;

    const-string v8, "addMedia() -m_list is released"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 141
    :cond_5
    if-ltz v6, :cond_9

    .line 143
    add-int/lit8 v7, v2, 0x1

    if-eq v4, v7, :cond_6

    add-int/lit8 v7, v6, -0x1

    if-ne v4, v7, :cond_8

    .line 144
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 166
    :cond_7
    :goto_3
    iget-object v7, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    invoke-interface {v7, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 147
    :cond_8
    invoke-static {v6, v2}, Lcom/oneplus/gallery/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery/ListChangeEventArgs;

    move-result-object v1

    .line 148
    .restart local v1    # "e":Lcom/oneplus/gallery/ListChangeEventArgs;
    sget-object v7, Lcom/oneplus/gallery/media/BasicMediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v7, v1}, Lcom/oneplus/gallery/media/BasicMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 149
    invoke-virtual {v1}, Lcom/oneplus/gallery/ListChangeEventArgs;->recycle()V

    .line 150
    move v6, v4

    .line 151
    move v2, v4

    .line 152
    sget-object v7, Lcom/oneplus/gallery/media/BasicMediaList;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/gallery/media/BasicMediaList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 154
    iget-object v7, p0, Lcom/oneplus/gallery/media/BasicMediaList;->TAG:Ljava/lang/String;

    const-string v8, "addMedia() -m_list is released"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 161
    .end local v1    # "e":Lcom/oneplus/gallery/ListChangeEventArgs;
    :cond_9
    move v6, v4

    .line 162
    move v2, v4

    goto :goto_3

    .line 169
    .end local v4    # "index":I
    .end local v5    # "media":Lcom/oneplus/gallery/media/Media;
    :cond_a
    if-ltz v6, :cond_0

    .line 171
    invoke-static {v6, v2}, Lcom/oneplus/gallery/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery/ListChangeEventArgs;

    move-result-object v1

    .line 172
    .restart local v1    # "e":Lcom/oneplus/gallery/ListChangeEventArgs;
    sget-object v7, Lcom/oneplus/gallery/media/BasicMediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v7, v1}, Lcom/oneplus/gallery/media/BasicMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 173
    invoke-virtual {v1}, Lcom/oneplus/gallery/ListChangeEventArgs;->recycle()V

    goto/16 :goto_0
.end method

.method protected clearMedia()V
    .locals 4

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BasicMediaList;->verifyAccess()V

    .line 261
    iget-object v2, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 262
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 264
    iget-object v2, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 265
    const/4 v2, 0x0

    add-int/lit8 v3, v0, -0x1

    invoke-static {v2, v3}, Lcom/oneplus/gallery/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery/ListChangeEventArgs;

    move-result-object v1

    .line 266
    .local v1, "e":Lcom/oneplus/gallery/ListChangeEventArgs;
    sget-object v2, Lcom/oneplus/gallery/media/BasicMediaList;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v2, v1}, Lcom/oneplus/gallery/media/BasicMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 267
    invoke-virtual {v1}, Lcom/oneplus/gallery/ListChangeEventArgs;->recycle()V

    .line 269
    .end local v1    # "e":Lcom/oneplus/gallery/ListChangeEventArgs;
    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 276
    instance-of v2, p1, Lcom/oneplus/gallery/media/Media;

    if-eqz v2, :cond_0

    .line 278
    iget-object v2, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    check-cast p1, Lcom/oneplus/gallery/media/Media;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v3, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_Comparator:Lcom/oneplus/gallery/media/MediaComparator;

    invoke-static {v2, p1, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 279
    .local v0, "index":I
    if-ltz v0, :cond_0

    const/4 v1, 0x1

    .line 281
    .end local v0    # "index":I
    :cond_0
    return v1
.end method

.method public get(I)Lcom/oneplus/gallery/media/Media;
    .locals 1
    .param p1, "location"    # I

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
    .param p1, "x0"    # I

    .prologue
    .line 15
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
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, -0x1

    .line 317
    instance-of v2, p1, Lcom/oneplus/gallery/media/Media;

    if-eqz v2, :cond_1

    .line 319
    iget-object v2, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    check-cast p1, Lcom/oneplus/gallery/media/Media;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v3, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_Comparator:Lcom/oneplus/gallery/media/MediaComparator;

    invoke-static {v2, p1, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 320
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 322
    .end local v0    # "index":I
    :goto_0
    return v0

    .restart local v0    # "index":I
    :cond_0
    move v0, v1

    .line 320
    goto :goto_0

    .end local v0    # "index":I
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    move v0, v1

    .line 322
    goto :goto_0
.end method

.method protected removeMedia(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BasicMediaList;->verifyAccess()V

    .line 353
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/media/BasicMediaList;->removeMediaInternal(I)V

    .line 354
    return-void
.end method

.method protected removeMedia(Lcom/oneplus/gallery/media/Media;)Z
    .locals 4
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    const/4 v1, 0x0

    .line 333
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BasicMediaList;->verifyAccess()V

    .line 334
    if-nez p1, :cond_1

    .line 342
    :cond_0
    :goto_0
    return v1

    .line 336
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    iget-object v3, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_Comparator:Lcom/oneplus/gallery/media/MediaComparator;

    invoke-static {v2, p1, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 337
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery/media/BasicMediaList;->m_List:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 339
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/media/BasicMediaList;->removeMediaInternal(I)V

    .line 340
    const/4 v1, 0x1

    goto :goto_0
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
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 404
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
