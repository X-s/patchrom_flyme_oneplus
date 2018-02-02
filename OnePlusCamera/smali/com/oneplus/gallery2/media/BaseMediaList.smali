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

    .prologue
    .line 29
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

.method private addMediaDirectly(Ljava/util/List;IIZ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;IIZ)Z"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 196
    sub-int v2, p3, p2

    .line 197
    if-lez v2, :cond_1

    .line 202
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 203
    if-eqz v3, :cond_2

    .line 233
    if-nez p4, :cond_8

    .line 308
    :cond_0
    return v5

    .line 198
    :cond_1
    return v6

    .line 205
    :cond_2
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    if-gez v0, :cond_5

    .line 207
    :cond_3
    invoke-direct {p0, v5, p1, p2, p3}, Lcom/oneplus/gallery2/media/BaseMediaList;->addToInternalList(ILjava/util/List;II)V

    .line 208
    if-eqz p4, :cond_6

    .line 226
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v5, v0}, Lcom/oneplus/gallery2/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery2/ListChangeEventArgs;

    move-result-object v0

    .line 227
    sget-object v1, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 228
    invoke-virtual {v0}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    .line 229
    return v6

    .line 205
    :cond_5
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    if-le v2, v0, :cond_3

    .line 213
    if-nez p4, :cond_7

    .line 220
    invoke-direct {p0, v5, p1, p2, p3}, Lcom/oneplus/gallery2/media/BaseMediaList;->addToInternalList(ILjava/util/List;II)V

    .line 221
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 222
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    if-le v0, v1, :cond_4

    .line 223
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 209
    :cond_6
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 215
    :cond_7
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    sub-int v0, v2, v0

    sub-int v0, p3, v0

    .line 216
    invoke-direct {p0, v5, p1, p2, v0}, Lcom/oneplus/gallery2/media/BaseMediaList;->addToInternalList(ILjava/util/List;II)V

    goto :goto_0

    .line 235
    :cond_8
    iget-object v4, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaComparator;

    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    add-int/lit8 v1, v3, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    invoke-virtual {v4, v0, v1}, Lcom/oneplus/gallery2/media/MediaComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_a

    .line 252
    iget-object v4, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaComparator;

    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    add-int/lit8 v1, p3, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    invoke-virtual {v4, v0, v1}, Lcom/oneplus/gallery2/media/MediaComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    .line 254
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v3

    .line 255
    iget v1, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    if-gez v1, :cond_e

    .line 257
    :cond_9
    invoke-direct {p0, v5, p1, p2, p3}, Lcom/oneplus/gallery2/media/BaseMediaList;->addToInternalList(ILjava/util/List;II)V

    .line 258
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    invoke-static {v5, v0}, Lcom/oneplus/gallery2/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery2/ListChangeEventArgs;

    move-result-object v0

    .line 259
    sget-object v1, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 260
    invoke-virtual {v0}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    .line 303
    :goto_2
    return v6

    .line 237
    :cond_a
    add-int v0, v3, v2

    .line 238
    iget v1, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    if-gez v1, :cond_c

    .line 239
    :cond_b
    invoke-direct {p0, v3, p1, p2, p3}, Lcom/oneplus/gallery2/media/BaseMediaList;->addToInternalList(ILjava/util/List;II)V

    .line 247
    :goto_3
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v3, v0}, Lcom/oneplus/gallery2/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery2/ListChangeEventArgs;

    move-result-object v0

    .line 248
    sget-object v1, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 249
    invoke-virtual {v0}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    .line 250
    return v6

    .line 238
    :cond_c
    iget v1, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    if-ge v1, v0, :cond_b

    .line 240
    iget v1, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    if-eq v1, v3, :cond_d

    .line 244
    iget v1, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    sub-int/2addr v0, v1

    sub-int v0, p3, v0

    .line 245
    invoke-direct {p0, v3, p1, p2, v0}, Lcom/oneplus/gallery2/media/BaseMediaList;->addToInternalList(ILjava/util/List;II)V

    goto :goto_3

    .line 241
    :cond_d
    return v6

    .line 255
    :cond_e
    iget v1, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    if-ge v1, v0, :cond_9

    .line 262
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iget v3, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    if-le v1, v3, :cond_f

    .line 286
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v5, v0}, Lcom/oneplus/gallery2/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery2/ListChangeEventArgs;

    move-result-object v0

    .line 287
    sget-object v1, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 288
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 289
    sget-object v1, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 290
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaList;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_12

    .line 297
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    sub-int v0, v2, v0

    sub-int v0, p3, v0

    .line 298
    invoke-direct {p0, v5, p1, p2, v0}, Lcom/oneplus/gallery2/media/BaseMediaList;->addToInternalList(ILjava/util/List;II)V

    .line 299
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v5, v0}, Lcom/oneplus/gallery2/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery2/ListChangeEventArgs;

    move-result-object v0

    .line 300
    sget-object v1, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 301
    invoke-virtual {v0}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    goto/16 :goto_2

    .line 265
    :cond_f
    iget v1, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    sub-int v1, v0, v1

    .line 266
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v3}, Lcom/oneplus/gallery2/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery2/ListChangeEventArgs;

    move-result-object v3

    .line 267
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, v3}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 268
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-lez v1, :cond_10

    .line 269
    iget-object v4, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 268
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 270
    :cond_10
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, v3}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 271
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaList;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_11

    .line 278
    invoke-direct {p0, v5, p1, p2, p3}, Lcom/oneplus/gallery2/media/BaseMediaList;->addToInternalList(ILjava/util/List;II)V

    .line 279
    add-int/lit8 v0, v2, -0x1

    invoke-static {v5, v0}, Lcom/oneplus/gallery2/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery2/ListChangeEventArgs;

    move-result-object v0

    .line 280
    sget-object v1, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 281
    invoke-virtual {v0}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    goto/16 :goto_2

    .line 273
    :cond_11
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addMediaDirectly() - Media list has been released"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    return v6

    .line 292
    :cond_12
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addMediaDirectly() - Media list has been released"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return v6
.end method

.method private addToInternalList(ILjava/util/List;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 315
    if-le p4, p3, :cond_1

    .line 317
    if-eqz p3, :cond_2

    .line 321
    :cond_0
    :goto_0
    if-ge p3, p4, :cond_3

    .line 322
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    add-int/lit8 v1, p1, 0x1

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v2, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 321
    add-int/lit8 p3, p3, 0x1

    move p1, v1

    goto :goto_0

    .line 316
    :cond_1
    return-void

    .line 317
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p4, v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 324
    :cond_3
    return-void
.end method

.method private isCorrectPosition(Lcom/oneplus/gallery2/media/Media;I)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 452
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 453
    if-nez p1, :cond_1

    .line 454
    :cond_0
    return v3

    .line 453
    :cond_1
    if-ltz p2, :cond_0

    if-gt p2, v0, :cond_0

    .line 455
    if-eqz v0, :cond_3

    .line 457
    if-eqz p2, :cond_4

    .line 459
    if-eq p2, v0, :cond_6

    .line 461
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaComparator;

    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    add-int/lit8 v2, p2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    invoke-virtual {v1, p1, v0}, Lcom/oneplus/gallery2/media/MediaComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_8

    :cond_2
    return v3

    .line 456
    :cond_3
    return v4

    .line 458
    :cond_4
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaComparator;

    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    invoke-virtual {v1, p1, v0}, Lcom/oneplus/gallery2/media/MediaComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_5

    return v3

    :cond_5
    return v4

    .line 460
    :cond_6
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaComparator;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    invoke-virtual {v1, p1, v0}, Lcom/oneplus/gallery2/media/MediaComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_7

    return v3

    :cond_7
    return v4

    .line 461
    :cond_8
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaComparator;

    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    add-int/lit8 v2, p2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    invoke-virtual {v1, p1, v0}, Lcom/oneplus/gallery2/media/MediaComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_2

    return v4
.end method

.method private removeMediaInternal(I)V
    .locals 3

    .prologue
    .line 518
    invoke-static {p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->obtain(I)Lcom/oneplus/gallery2/ListChangeEventArgs;

    move-result-object v1

    .line 519
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 520
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaList;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 527
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 528
    invoke-virtual {v1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    .line 529
    return-void

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "removeMediaInternal() -m_list is released"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-virtual {v1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    .line 524
    return-void
.end method

.method private removeMediaInternal(II)V
    .locals 3

    .prologue
    .line 532
    invoke-static {p1, p2}, Lcom/oneplus/gallery2/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery2/ListChangeEventArgs;

    move-result-object v1

    .line 533
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 534
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaList;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 540
    :goto_0
    if-lt p2, p1, :cond_1

    .line 541
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 540
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "removeMediaInternal() -m_list is released"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    invoke-virtual {v1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    .line 538
    return-void

    .line 542
    :cond_1
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 543
    invoke-virtual {v1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    .line 544
    return-void
.end method


# virtual methods
.method protected addMedia(Lcom/oneplus/gallery2/media/Media;)I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 43
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaList;->verifyAccess()V

    .line 44
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaList;->verifyMediaToAdd(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaComparator;

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 47
    if-ltz v0, :cond_1

    .line 65
    return v2

    .line 45
    :cond_0
    return v2

    .line 50
    :cond_1
    xor-int/lit8 v0, v0, -0x1

    .line 51
    iget v1, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    if-gez v1, :cond_3

    .line 59
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 60
    invoke-static {v0}, Lcom/oneplus/gallery2/ListChangeEventArgs;->obtain(I)Lcom/oneplus/gallery2/ListChangeEventArgs;

    move-result-object v1

    .line 61
    sget-object v2, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v2, v1}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 62
    invoke-virtual {v1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    .line 63
    return v0

    .line 51
    :cond_3
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    if-lt v1, v2, :cond_2

    .line 53
    iget v1, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    if-ge v0, v1, :cond_4

    .line 55
    iget v1, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v1, v2}, Lcom/oneplus/gallery2/media/BaseMediaList;->removeMediaInternal(II)V

    goto :goto_0

    .line 54
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
            "Lcom/oneplus/gallery2/media/Media;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 75
    instance-of v0, p1, Ljava/util/List;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 80
    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/BaseMediaList;->addMedia(Ljava/util/List;Z)V

    .line 82
    :goto_0
    return-void

    .line 76
    :cond_0
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, v1}, Lcom/oneplus/gallery2/media/BaseMediaList;->addMedia(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method protected addMedia(Ljava/util/List;IIZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;IIZ)V"
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 106
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaList;->verifyAccess()V

    .line 109
    if-nez p1, :cond_1

    .line 110
    :cond_0
    return-void

    .line 109
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, p1, v1, v0, p4}, Lcom/oneplus/gallery2/media/BaseMediaList;->addMediaDirectly(Ljava/util/List;IIZ)Z

    move-result v0

    if-nez v0, :cond_3

    move v1, v3

    move v2, v3

    .line 119
    :goto_0
    if-ge p2, p3, :cond_e

    .line 121
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    .line 122
    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaList;->verifyMediaToAdd(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 124
    iget-object v4, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    iget-object v5, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaComparator;

    invoke-static {v4, v0, v5}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v4

    .line 125
    if-ltz v4, :cond_4

    .line 119
    :cond_2
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 114
    :cond_3
    return-void

    .line 128
    :cond_4
    xor-int/lit8 v5, v4, -0x1

    .line 129
    iget v4, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    if-gez v4, :cond_6

    .line 155
    :cond_5
    :goto_2
    if-gez v2, :cond_a

    move v1, v5

    move v2, v5

    .line 180
    :goto_3
    iget-object v4, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v4, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 129
    :cond_6
    iget-object v4, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget v6, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    if-lt v4, v6, :cond_5

    .line 131
    iget v4, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    if-ge v5, v4, :cond_2

    .line 133
    if-gez v2, :cond_7

    move v4, v2

    move v2, v1

    .line 146
    :goto_4
    iget v1, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    add-int/lit8 v1, v1, -0x1

    iget-object v6, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-direct {p0, v1, v6}, Lcom/oneplus/gallery2/media/BaseMediaList;->removeMediaInternal(II)V

    .line 147
    sget-object v1, Lcom/oneplus/gallery2/media/BaseMediaList;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/media/BaseMediaList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_9

    move v1, v2

    move v2, v4

    goto :goto_2

    .line 135
    :cond_7
    invoke-static {v2, v1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery2/ListChangeEventArgs;

    move-result-object v1

    .line 136
    sget-object v2, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v2, v1}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 137
    invoke-virtual {v1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    .line 140
    sget-object v1, Lcom/oneplus/gallery2/media/BaseMediaList;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/media/BaseMediaList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_8

    move v2, v3

    move v4, v3

    goto :goto_4

    .line 142
    :cond_8
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addMedia() - Media list has been released"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void

    .line 149
    :cond_9
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addMedia() - Media list has been released"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void

    .line 157
    :cond_a
    add-int/lit8 v4, v1, 0x1

    if-ne v5, v4, :cond_c

    .line 158
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 157
    :cond_c
    add-int/lit8 v4, v2, -0x1

    if-eq v5, v4, :cond_b

    .line 161
    invoke-static {v2, v1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery2/ListChangeEventArgs;

    move-result-object v1

    .line 162
    sget-object v2, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v2, v1}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 163
    invoke-virtual {v1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    .line 166
    sget-object v1, Lcom/oneplus/gallery2/media/BaseMediaList;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/media/BaseMediaList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_d

    move v1, v5

    move v2, v5

    goto/16 :goto_3

    .line 168
    :cond_d
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addMedia() - Media list has been released"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void

    .line 183
    :cond_e
    if-gez v2, :cond_f

    .line 189
    :goto_5
    return-void

    .line 185
    :cond_f
    invoke-static {v2, v1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery2/ListChangeEventArgs;

    move-result-object v0

    .line 186
    sget-object v1, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 187
    invoke-virtual {v0}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    goto :goto_5
.end method

.method protected addMedia(Ljava/util/List;Z)V
    .locals 2
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
    const/4 v0, 0x0

    .line 92
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/oneplus/gallery2/media/BaseMediaList;->addMedia(Ljava/util/List;IIZ)V

    .line 93
    return-void
.end method

.method protected final checkMediaIndex(Lcom/oneplus/gallery2/media/Media;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 335
    if-eqz p1, :cond_1

    .line 337
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaList;->verifyAccess()V

    .line 340
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 341
    invoke-direct {p0, p1, v1}, Lcom/oneplus/gallery2/media/BaseMediaList;->isCorrectPosition(Lcom/oneplus/gallery2/media/Media;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 342
    :cond_0
    return v3

    .line 336
    :cond_1
    return v3

    .line 341
    :cond_2
    if-ltz v1, :cond_0

    .line 345
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaComparator;

    invoke-static {v0, p1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    .line 346
    invoke-direct {p0, p1, v0}, Lcom/oneplus/gallery2/media/BaseMediaList;->isCorrectPosition(Lcom/oneplus/gallery2/media/Media;I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 353
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 354
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaComparator;

    invoke-static {v0, p1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    .line 355
    invoke-direct {p0, p1, v0}, Lcom/oneplus/gallery2/media/BaseMediaList;->isCorrectPosition(Lcom/oneplus/gallery2/media/Media;I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 359
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 360
    return v3

    .line 348
    :cond_3
    if-gt v0, v1, :cond_4

    .line 365
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/oneplus/gallery2/media/BaseMediaList;->moveMedia(II)Z

    move-result v0

    return v0

    .line 349
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 356
    :cond_5
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected clearMedia()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 374
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaList;->verifyAccess()V

    .line 375
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 376
    if-gtz v0, :cond_0

    .line 384
    :goto_0
    return-void

    .line 378
    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Lcom/oneplus/gallery2/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery2/ListChangeEventArgs;

    move-result-object v0

    .line 379
    sget-object v1, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 380
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 381
    sget-object v1, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 382
    invoke-virtual {v0}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 391
    instance-of v0, p1, Lcom/oneplus/gallery2/media/Media;

    if-nez v0, :cond_0

    .line 396
    return v2

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    check-cast p1, Lcom/oneplus/gallery2/media/Media;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaComparator;

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 394
    if-gez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 404
    if-eq p0, p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public get(I)Lcom/oneplus/gallery2/media/Media;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaList;->get(I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v0

    return-object v0
.end method

.method public final getComparator()Lcom/oneplus/gallery2/media/MediaComparator;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaComparator;

    return-object v0
.end method

.method public final getMaxMediaCount()I
    .locals 1

    .prologue
    .line 432
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 440
    instance-of v0, p1, Lcom/oneplus/gallery2/media/Media;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 445
    return v0

    .line 442
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    move-object v0, p1

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaComparator;

    invoke-static {v1, v0, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 443
    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    :cond_1
    return v0
.end method

.method protected moveMedia(II)Z
    .locals 3

    .prologue
    .line 473
    new-instance v1, Lcom/oneplus/gallery2/ListMoveEventArgs;

    invoke-direct {v1, p1, p1, p2, p2}, Lcom/oneplus/gallery2/ListMoveEventArgs;-><init>(IIII)V

    .line 474
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_MOVING:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 475
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    .line 476
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v2, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 477
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_MOVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 478
    const/4 v0, 0x1

    return v0
.end method

.method protected removeMedia(I)V
    .locals 0

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaList;->verifyAccess()V

    .line 511
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaList;->removeMediaInternal(I)V

    .line 512
    return-void
.end method

.method protected removeMedia(Lcom/oneplus/gallery2/media/Media;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 489
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaList;->verifyAccess()V

    .line 490
    if-eqz p1, :cond_1

    .line 492
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaComparator;

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 493
    if-ltz v0, :cond_2

    .line 495
    :goto_0
    if-gez v0, :cond_3

    .line 500
    :cond_0
    return v2

    .line 491
    :cond_1
    return v2

    .line 494
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 495
    :cond_3
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 497
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaList;->removeMediaInternal(I)V

    .line 498
    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected verifyMediaToAdd(Lcom/oneplus/gallery2/media/Media;)Z
    .locals 1

    .prologue
    .line 562
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
