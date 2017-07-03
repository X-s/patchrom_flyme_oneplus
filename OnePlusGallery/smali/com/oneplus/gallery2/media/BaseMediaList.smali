.class public abstract Lcom/oneplus/gallery2/media/BaseMediaList;
.super Lcom/oneplus/base/ListHandlerBaseObject;
.source "BaseMediaList.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/MediaList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/base/ListHandlerBaseObject",
        "<",
        "Lcom/oneplus/gallery2/media/Media;",
        ">;",
        "Lcom/oneplus/gallery2/media/MediaList;"
    }
.end annotation


# instance fields
.field private final m_Comparator:Lcom/oneplus/gallery2/media/MediaComparator;

.field private final m_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;"
        }
    .end annotation
.end field

.field private final m_MaxMediaCount:I


# direct methods
.method protected constructor <init>(Lcom/oneplus/gallery2/media/MediaComparator;I)V
    .locals 1
    .param p1, "comparator"    # Lcom/oneplus/gallery2/media/MediaComparator;
    .param p2, "maxMediaCount"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/oneplus/base/ListHandlerBaseObject;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    .line 31
    iput-object p1, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaComparator;

    .line 32
    iput p2, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    .line 33
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
            "Lcom/oneplus/gallery2/media/Media;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .local p1, "mediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/Media;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 184
    iget-object v6, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 185
    .local v1, "currentCount":I
    if-nez v1, :cond_5

    .line 187
    iget v6, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    if-ltz v6, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    iget v7, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    if-gt v6, v7, :cond_3

    .line 189
    :cond_0
    iget-object v6, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 190
    if-nez p2, :cond_1

    .line 191
    iget-object v6, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    iget-object v7, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaComparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 208
    :cond_1
    iget-object v6, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Lcom/oneplus/gallery2/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery2/ListChangeEventArgs;

    move-result-object v2

    .line 209
    .local v2, "e":Lcom/oneplus/gallery2/ListChangeEventArgs;
    sget-object v5, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v5, v2}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 210
    invoke-virtual {v2}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    .line 252
    .end local v2    # "e":Lcom/oneplus/gallery2/ListChangeEventArgs;
    :cond_2
    :goto_0
    return v4

    .line 195
    :cond_3
    if-eqz p2, :cond_4

    .line 197
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v6, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    if-ge v3, v6, :cond_1

    .line 198
    iget-object v6, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 202
    .end local v3    # "i":I
    :cond_4
    iget-object v6, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 203
    iget-object v6, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    iget-object v7, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaComparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 204
    iget-object v6, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .restart local v3    # "i":I
    :goto_2
    iget v6, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    if-le v3, v6, :cond_1

    .line 205
    iget-object v6, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 204
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 215
    .end local v3    # "i":I
    :cond_5
    if-eqz p2, :cond_d

    .line 217
    iget-object v6, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaComparator;

    iget-object v7, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    add-int/lit8 v8, v1, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/oneplus/gallery2/media/MediaComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_9

    .line 219
    iget v5, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    if-ltz v5, :cond_6

    iget v5, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v6, v1

    if-lt v5, v6, :cond_8

    .line 220
    :cond_6
    iget-object v5, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 228
    :cond_7
    iget-object v5, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v1, v5}, Lcom/oneplus/gallery2/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery2/ListChangeEventArgs;

    move-result-object v2

    .line 229
    .restart local v2    # "e":Lcom/oneplus/gallery2/ListChangeEventArgs;
    sget-object v5, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v5, v2}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 230
    invoke-virtual {v2}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    goto :goto_0

    .line 221
    .end local v2    # "e":Lcom/oneplus/gallery2/ListChangeEventArgs;
    :cond_8
    iget v5, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    if-eq v5, v1, :cond_2

    .line 225
    const/4 v3, 0x0

    .restart local v3    # "i":I
    iget v5, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    sub-int v0, v5, v1

    .local v0, "count":I
    :goto_3
    if-ge v3, v0, :cond_7

    .line 226
    iget-object v5, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 233
    .end local v0    # "count":I
    .end local v3    # "i":I
    :cond_9
    iget-object v6, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaComparator;

    iget-object v7, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/oneplus/gallery2/media/MediaComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-lez v6, :cond_d

    .line 235
    iget v6, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    if-ltz v6, :cond_a

    iget v6, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v7, v1

    if-lt v6, v7, :cond_c

    .line 236
    :cond_a
    iget-object v6, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v6, v5, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 244
    :cond_b
    iget-object v6, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v1

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Lcom/oneplus/gallery2/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery2/ListChangeEventArgs;

    move-result-object v2

    .line 245
    .restart local v2    # "e":Lcom/oneplus/gallery2/ListChangeEventArgs;
    sget-object v5, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v5, v2}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 246
    invoke-virtual {v2}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    goto/16 :goto_0

    .line 237
    .end local v2    # "e":Lcom/oneplus/gallery2/ListChangeEventArgs;
    :cond_c
    iget v6, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    if-eq v6, v1, :cond_2

    .line 241
    iget v6, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    sub-int/2addr v6, v1

    add-int/lit8 v3, v6, -0x1

    .restart local v3    # "i":I
    :goto_4
    if-ltz v3, :cond_b

    .line 242
    iget-object v6, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 241
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .end local v3    # "i":I
    :cond_d
    move v4, v5

    .line 252
    goto/16 :goto_0
.end method

.method private isCorrectPosition(Lcom/oneplus/gallery2/media/Media;I)Z
    .locals 6
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "index"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 385
    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 386
    .local v0, "lastIndex":I
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    if-le p2, v0, :cond_2

    :cond_0
    move v1, v2

    .line 394
    :cond_1
    :goto_0
    return v1

    .line 388
    :cond_2
    if-eqz v0, :cond_1

    .line 390
    if-nez p2, :cond_3

    .line 391
    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaComparator;

    iget-object v4, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/oneplus/gallery2/media/MediaComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_1

    move v1, v2

    goto :goto_0

    .line 392
    :cond_3
    if-ne p2, v0, :cond_4

    .line 393
    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaComparator;

    iget-object v4, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    add-int/lit8 v5, v0, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/oneplus/gallery2/media/MediaComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_1

    move v1, v2

    goto :goto_0

    .line 394
    :cond_4
    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaComparator;

    iget-object v4, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    add-int/lit8 v5, p2, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/oneplus/gallery2/media/MediaComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_5

    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaComparator;

    iget-object v4, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    add-int/lit8 v5, p2, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/oneplus/gallery2/media/MediaComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_1

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method private removeMediaInternal(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 432
    invoke-static {p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->obtain(I)Lcom/oneplus/gallery2/ListChangeEventArgs;

    move-result-object v0

    .line 433
    .local v0, "e":Lcom/oneplus/gallery2/ListChangeEventArgs;
    sget-object v1, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 434
    sget-object v1, Lcom/oneplus/gallery2/media/BaseMediaList;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/media/BaseMediaList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 436
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->TAG:Ljava/lang/String;

    const-string v2, "removeMediaInternal() -m_list is released"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-virtual {v0}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    .line 443
    :goto_0
    return-void

    .line 440
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 441
    sget-object v1, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 442
    invoke-virtual {v0}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    goto :goto_0
.end method

.method private removeMediaInternal(II)V
    .locals 4
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 446
    invoke-static {p1, p2}, Lcom/oneplus/gallery2/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery2/ListChangeEventArgs;

    move-result-object v0

    .line 447
    .local v0, "e":Lcom/oneplus/gallery2/ListChangeEventArgs;
    sget-object v2, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v2, v0}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 448
    sget-object v2, Lcom/oneplus/gallery2/media/BaseMediaList;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/media/BaseMediaList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 450
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->TAG:Ljava/lang/String;

    const-string v3, "removeMediaInternal() -m_list is released"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-virtual {v0}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    .line 458
    :goto_0
    return-void

    .line 454
    :cond_0
    move v1, p1

    .local v1, "i":I
    :goto_1
    if-gt v1, p2, :cond_1

    .line 455
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 454
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 456
    :cond_1
    sget-object v2, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v2, v0}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 457
    invoke-virtual {v0}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    goto :goto_0
.end method


# virtual methods
.method protected addMedia(Lcom/oneplus/gallery2/media/Media;)I
    .locals 5
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    const/4 v2, -0x1

    .line 43
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaList;->verifyAccess()V

    .line 44
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaList;->verifyMediaToAdd(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 65
    :goto_0
    return v1

    .line 46
    :cond_0
    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    iget-object v4, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaComparator;

    invoke-static {v3, p1, v4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    .line 47
    .local v1, "index":I
    if-gez v1, :cond_3

    .line 50
    xor-int/lit8 v1, v1, -0x1

    .line 51
    iget v2, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    if-lt v2, v3, :cond_2

    .line 53
    iget v2, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    if-lt v1, v2, :cond_1

    .line 54
    xor-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 55
    :cond_1
    iget v2, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v2, v3}, Lcom/oneplus/gallery2/media/BaseMediaList;->removeMediaInternal(II)V

    .line 59
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 60
    invoke-static {v1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->obtain(I)Lcom/oneplus/gallery2/ListChangeEventArgs;

    move-result-object v0

    .line 61
    .local v0, "e":Lcom/oneplus/gallery2/ListChangeEventArgs;
    sget-object v2, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v2, v0}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 62
    invoke-virtual {v0}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    goto :goto_0

    .end local v0    # "e":Lcom/oneplus/gallery2/ListChangeEventArgs;
    :cond_3
    move v1, v2

    .line 65
    goto :goto_0
.end method

.method protected addMedia(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "mediaCollection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/oneplus/gallery2/media/Media;>;"
    const/4 v2, 0x0

    .line 75
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 76
    check-cast p1, Ljava/util/List;

    .end local p1    # "mediaCollection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/oneplus/gallery2/media/Media;>;"
    invoke-virtual {p0, p1, v2}, Lcom/oneplus/gallery2/media/BaseMediaList;->addMedia(Ljava/util/List;Z)V

    .line 82
    :goto_0
    return-void

    .line 79
    .restart local p1    # "mediaCollection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/oneplus/gallery2/media/Media;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 80
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/Media;>;"
    invoke-virtual {p0, v0, v2}, Lcom/oneplus/gallery2/media/BaseMediaList;->addMedia(Ljava/util/List;Z)V

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
            "Lcom/oneplus/gallery2/media/Media;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "mediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/Media;>;"
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaList;->verifyAccess()V

    .line 96
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/media/BaseMediaList;->addMediaDirectly(Ljava/util/List;Z)Z

    move-result v7

    if-nez v7, :cond_0

    .line 105
    const/4 v6, -0x1

    .local v6, "startIndex":I
    const/4 v2, -0x1

    .line 106
    .local v2, "endIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    :goto_1
    if-ge v3, v0, :cond_a

    .line 108
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery2/media/Media;

    .line 109
    .local v5, "media":Lcom/oneplus/gallery2/media/Media;
    invoke-virtual {p0, v5}, Lcom/oneplus/gallery2/media/BaseMediaList;->verifyMediaToAdd(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 106
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 111
    :cond_3
    iget-object v7, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    iget-object v8, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaComparator;

    invoke-static {v7, v5, v8}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v4

    .line 112
    .local v4, "index":I
    if-gez v4, :cond_2

    .line 115
    xor-int/lit8 v4, v4, -0x1

    .line 116
    iget v7, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    if-ltz v7, :cond_5

    iget-object v7, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    iget v8, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    if-lt v7, v8, :cond_5

    .line 118
    iget v7, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    if-ge v4, v7, :cond_2

    .line 120
    if-ltz v6, :cond_4

    .line 122
    invoke-static {v6, v2}, Lcom/oneplus/gallery2/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery2/ListChangeEventArgs;

    move-result-object v1

    .line 123
    .local v1, "e":Lcom/oneplus/gallery2/ListChangeEventArgs;
    sget-object v7, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v7, v1}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 124
    invoke-virtual {v1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    .line 125
    const/4 v6, -0x1

    .line 126
    const/4 v2, -0x1

    .line 127
    sget-object v7, Lcom/oneplus/gallery2/media/BaseMediaList;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/gallery2/media/BaseMediaList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 129
    iget-object v7, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->TAG:Ljava/lang/String;

    const-string v8, "addMedia() -m_list is released"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 133
    .end local v1    # "e":Lcom/oneplus/gallery2/ListChangeEventArgs;
    :cond_4
    iget v7, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    add-int/lit8 v7, v7, -0x1

    iget-object v8, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-direct {p0, v7, v8}, Lcom/oneplus/gallery2/media/BaseMediaList;->removeMediaInternal(II)V

    .line 134
    sget-object v7, Lcom/oneplus/gallery2/media/BaseMediaList;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/gallery2/media/BaseMediaList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 136
    iget-object v7, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->TAG:Ljava/lang/String;

    const-string v8, "addMedia() -m_list is released"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 142
    :cond_5
    if-ltz v6, :cond_9

    .line 144
    add-int/lit8 v7, v2, 0x1

    if-eq v4, v7, :cond_6

    add-int/lit8 v7, v6, -0x1

    if-ne v4, v7, :cond_8

    .line 145
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 167
    :cond_7
    :goto_3
    iget-object v7, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v7, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 148
    :cond_8
    invoke-static {v6, v2}, Lcom/oneplus/gallery2/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery2/ListChangeEventArgs;

    move-result-object v1

    .line 149
    .restart local v1    # "e":Lcom/oneplus/gallery2/ListChangeEventArgs;
    sget-object v7, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v7, v1}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 150
    invoke-virtual {v1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    .line 151
    move v6, v4

    .line 152
    move v2, v4

    .line 153
    sget-object v7, Lcom/oneplus/gallery2/media/BaseMediaList;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/gallery2/media/BaseMediaList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 155
    iget-object v7, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->TAG:Ljava/lang/String;

    const-string v8, "addMedia() -m_list is released"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 162
    .end local v1    # "e":Lcom/oneplus/gallery2/ListChangeEventArgs;
    :cond_9
    move v6, v4

    .line 163
    move v2, v4

    goto :goto_3

    .line 170
    .end local v4    # "index":I
    .end local v5    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_a
    if-ltz v6, :cond_0

    .line 172
    invoke-static {v6, v2}, Lcom/oneplus/gallery2/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery2/ListChangeEventArgs;

    move-result-object v1

    .line 173
    .restart local v1    # "e":Lcom/oneplus/gallery2/ListChangeEventArgs;
    sget-object v7, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v7, v1}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 174
    invoke-virtual {v1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    goto/16 :goto_0
.end method

.method protected final checkMediaIndex(Lcom/oneplus/gallery2/media/Media;)Z
    .locals 6
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    const/4 v3, 0x0

    .line 264
    if-nez p1, :cond_1

    .line 299
    :cond_0
    :goto_0
    return v3

    .line 266
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaList;->verifyAccess()V

    .line 269
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 270
    .local v0, "currentIndex":I
    invoke-direct {p0, p1, v0}, Lcom/oneplus/gallery2/media/BaseMediaList;->isCorrectPosition(Lcom/oneplus/gallery2/media/Media;I)Z

    move-result v4

    if-nez v4, :cond_0

    if-ltz v0, :cond_0

    .line 274
    iget-object v4, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    iget-object v5, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaComparator;

    invoke-static {v4, p1, v5}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v4

    xor-int/lit8 v2, v4, -0x1

    .line 275
    .local v2, "expectedIndex":I
    invoke-direct {p0, p1, v2}, Lcom/oneplus/gallery2/media/BaseMediaList;->isCorrectPosition(Lcom/oneplus/gallery2/media/Media;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 277
    if-le v2, v0, :cond_2

    .line 278
    add-int/lit8 v2, v2, -0x1

    .line 294
    :cond_2
    :goto_1
    new-instance v1, Lcom/oneplus/gallery2/ListMoveEventArgs;

    invoke-direct {v1, v0, v0, v2, v0}, Lcom/oneplus/gallery2/ListMoveEventArgs;-><init>(IIII)V

    .line 295
    .local v1, "e":Lcom/oneplus/gallery2/ListMoveEventArgs;
    sget-object v3, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_MOVING:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v3, v1}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 296
    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 297
    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v3, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 298
    sget-object v3, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_MOVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v3, v1}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 299
    const/4 v3, 0x1

    goto :goto_0

    .line 282
    .end local v1    # "e":Lcom/oneplus/gallery2/ListMoveEventArgs;
    :cond_3
    iget-object v4, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 283
    iget-object v4, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    iget-object v5, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaComparator;

    invoke-static {v4, p1, v5}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v4

    xor-int/lit8 v2, v4, -0x1

    .line 284
    invoke-direct {p0, p1, v2}, Lcom/oneplus/gallery2/media/BaseMediaList;->isCorrectPosition(Lcom/oneplus/gallery2/media/Media;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 285
    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v3, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 288
    :cond_4
    iget-object v4, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v4, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected clearMedia()V
    .locals 4

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaList;->verifyAccess()V

    .line 309
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 310
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 312
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 313
    const/4 v2, 0x0

    add-int/lit8 v3, v0, -0x1

    invoke-static {v2, v3}, Lcom/oneplus/gallery2/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery2/ListChangeEventArgs;

    move-result-object v1

    .line 314
    .local v1, "e":Lcom/oneplus/gallery2/ListChangeEventArgs;
    sget-object v2, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v2, v1}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 315
    invoke-virtual {v1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    .line 317
    .end local v1    # "e":Lcom/oneplus/gallery2/ListChangeEventArgs;
    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 324
    instance-of v2, p1, Lcom/oneplus/gallery2/media/Media;

    if-eqz v2, :cond_0

    .line 326
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    check-cast p1, Lcom/oneplus/gallery2/media/Media;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaComparator;

    invoke-static {v2, p1, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 327
    .local v0, "index":I
    if-ltz v0, :cond_0

    const/4 v1, 0x1

    .line 329
    .end local v0    # "index":I
    :cond_0
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 337
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(I)Lcom/oneplus/gallery2/media/Media;
    .locals 1
    .param p1, "location"    # I

    .prologue
    .line 345
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaList;->get(I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v0

    return-object v0
.end method

.method public final getComparator()Lcom/oneplus/gallery2/media/MediaComparator;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaComparator;

    return-object v0
.end method

.method public final getMaxMediaCount()I
    .locals 1

    .prologue
    .line 365
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, -0x1

    .line 373
    instance-of v2, p1, Lcom/oneplus/gallery2/media/Media;

    if-eqz v2, :cond_1

    .line 375
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    check-cast p1, Lcom/oneplus/gallery2/media/Media;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaComparator;

    invoke-static {v2, p1, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 376
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 378
    .end local v0    # "index":I
    :goto_0
    return v0

    .restart local v0    # "index":I
    :cond_0
    move v0, v1

    .line 376
    goto :goto_0

    .end local v0    # "index":I
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    move v0, v1

    .line 378
    goto :goto_0
.end method

.method protected removeMedia(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaList;->verifyAccess()V

    .line 425
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaList;->removeMediaInternal(I)V

    .line 426
    return-void
.end method

.method protected removeMedia(Lcom/oneplus/gallery2/media/Media;)Z
    .locals 4
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    const/4 v1, 0x0

    .line 405
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaList;->verifyAccess()V

    .line 406
    if-nez p1, :cond_1

    .line 414
    :cond_0
    :goto_0
    return v1

    .line 408
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaComparator;

    invoke-static {v2, p1, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 409
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 411
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaList;->removeMediaInternal(I)V

    .line 412
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected verifyMediaToAdd(Lcom/oneplus/gallery2/media/Media;)Z
    .locals 1
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 476
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
