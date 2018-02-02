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

.method private addMediaDirectly(Ljava/util/List;Z)Z
    .locals 6
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
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 184
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 185
    if-eqz v3, :cond_1

    .line 215
    if-nez p2, :cond_7

    .line 290
    :cond_0
    return v2

    .line 187
    :cond_1
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    if-gez v0, :cond_4

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 190
    if-eqz p2, :cond_5

    .line 208
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v2, v0}, Lcom/oneplus/gallery2/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery2/ListChangeEventArgs;

    move-result-object v0

    .line 209
    sget-object v1, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 210
    invoke-virtual {v0}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    .line 211
    return v5

    .line 187
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    if-le v0, v1, :cond_2

    .line 195
    if-nez p2, :cond_6

    .line 202
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 203
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 204
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    if-le v0, v1, :cond_3

    .line 205
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 191
    :cond_5
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_6
    move v1, v2

    .line 197
    :goto_2
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    if-ge v1, v0, :cond_3

    .line 198
    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 217
    :cond_7
    iget-object v4, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaComparator;

    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    add-int/lit8 v1, v3, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    invoke-virtual {v4, v0, v1}, Lcom/oneplus/gallery2/media/MediaComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_9

    .line 234
    iget-object v4, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaComparator;

    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    invoke-virtual {v4, v0, v1}, Lcom/oneplus/gallery2/media/MediaComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    .line 236
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v3

    .line 237
    iget v1, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    if-gez v1, :cond_e

    .line 239
    :cond_8
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0, v2, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 240
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    invoke-static {v2, v0}, Lcom/oneplus/gallery2/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery2/ListChangeEventArgs;

    move-result-object v0

    .line 241
    sget-object v1, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 242
    invoke-virtual {v0}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    .line 285
    :goto_3
    return v5

    .line 219
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v3

    .line 220
    iget v1, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    if-gez v1, :cond_c

    .line 221
    :cond_a
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 229
    :cond_b
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v3, v0}, Lcom/oneplus/gallery2/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery2/ListChangeEventArgs;

    move-result-object v0

    .line 230
    sget-object v1, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 231
    invoke-virtual {v0}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    .line 232
    return v5

    .line 220
    :cond_c
    iget v1, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    if-ge v1, v0, :cond_a

    .line 222
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    if-eq v0, v3, :cond_d

    .line 226
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    sub-int v1, v0, v3

    :goto_4
    if-ge v2, v1, :cond_b

    .line 227
    iget-object v4, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 223
    :cond_d
    return v5

    .line 237
    :cond_e
    iget v1, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    if-ge v1, v0, :cond_8

    .line 244
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iget v3, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    if-le v1, v3, :cond_f

    .line 268
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v2, v0}, Lcom/oneplus/gallery2/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery2/ListChangeEventArgs;

    move-result-object v0

    .line 269
    sget-object v1, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 270
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 271
    sget-object v1, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 272
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaList;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_12

    .line 279
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_5
    if-ltz v1, :cond_13

    .line 280
    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v3, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 279
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_5

    .line 247
    :cond_f
    iget v1, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    sub-int v1, v0, v1

    .line 248
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

    .line 249
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, v3}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 250
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-lez v1, :cond_10

    .line 251
    iget-object v4, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 250
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 252
    :cond_10
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, v3}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 253
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaList;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_11

    .line 260
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0, v2, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 261
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v2, v0}, Lcom/oneplus/gallery2/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery2/ListChangeEventArgs;

    move-result-object v0

    .line 262
    sget-object v1, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 263
    invoke-virtual {v0}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    goto/16 :goto_3

    .line 255
    :cond_11
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addMediaDirectly() - Media list has been released"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    return v5

    .line 274
    :cond_12
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addMediaDirectly() - Media list has been released"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    return v5

    .line 281
    :cond_13
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v2, v0}, Lcom/oneplus/gallery2/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery2/ListChangeEventArgs;

    move-result-object v0

    .line 282
    sget-object v1, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 283
    invoke-virtual {v0}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    goto/16 :goto_3
.end method

.method private isCorrectPosition(Lcom/oneplus/gallery2/media/Media;I)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 423
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 424
    if-nez p1, :cond_1

    .line 425
    :cond_0
    return v3

    .line 424
    :cond_1
    if-ltz p2, :cond_0

    if-gt p2, v0, :cond_0

    .line 426
    if-eqz v0, :cond_3

    .line 428
    if-eqz p2, :cond_4

    .line 430
    if-eq p2, v0, :cond_6

    .line 432
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

    .line 427
    :cond_3
    return v4

    .line 429
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

    .line 431
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

    .line 432
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
    .line 470
    invoke-static {p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->obtain(I)Lcom/oneplus/gallery2/ListChangeEventArgs;

    move-result-object v1

    .line 471
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 472
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaList;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 479
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 480
    invoke-virtual {v1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    .line 481
    return-void

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "removeMediaInternal() -m_list is released"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-virtual {v1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    .line 476
    return-void
.end method

.method private removeMediaInternal(II)V
    .locals 3

    .prologue
    .line 484
    invoke-static {p1, p2}, Lcom/oneplus/gallery2/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery2/ListChangeEventArgs;

    move-result-object v1

    .line 485
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 486
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaList;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 492
    :goto_0
    if-gt p1, p2, :cond_1

    .line 493
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 492
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "removeMediaInternal() -m_list is released"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-virtual {v1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    .line 490
    return-void

    .line 494
    :cond_1
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 495
    invoke-virtual {v1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    .line 496
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

.method protected addMedia(Ljava/util/List;Z)V
    .locals 9
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
    const/4 v3, -0x1

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaList;->verifyAccess()V

    .line 96
    if-nez p1, :cond_1

    .line 97
    :cond_0
    return-void

    .line 96
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/media/BaseMediaList;->addMediaDirectly(Ljava/util/List;Z)Z

    move-result v1

    if-nez v1, :cond_3

    .line 106
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    move v6, v0

    move v1, v3

    move v2, v3

    :goto_0
    if-ge v6, v7, :cond_e

    .line 108
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    .line 109
    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaList;->verifyMediaToAdd(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 111
    iget-object v4, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    iget-object v5, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaComparator;

    invoke-static {v4, v0, v5}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v4

    .line 112
    if-ltz v4, :cond_4

    .line 106
    :cond_2
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 101
    :cond_3
    return-void

    .line 115
    :cond_4
    xor-int/lit8 v5, v4, -0x1

    .line 116
    iget v4, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    if-gez v4, :cond_6

    .line 142
    :cond_5
    :goto_2
    if-gez v2, :cond_a

    move v1, v5

    move v2, v5

    .line 167
    :goto_3
    iget-object v4, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v4, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 116
    :cond_6
    iget-object v4, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget v8, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    if-lt v4, v8, :cond_5

    .line 118
    iget v4, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    if-ge v5, v4, :cond_2

    .line 120
    if-gez v2, :cond_7

    move v4, v2

    move v2, v1

    .line 133
    :goto_4
    iget v1, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    add-int/lit8 v1, v1, -0x1

    iget-object v8, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-direct {p0, v1, v8}, Lcom/oneplus/gallery2/media/BaseMediaList;->removeMediaInternal(II)V

    .line 134
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

    .line 122
    :cond_7
    invoke-static {v2, v1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery2/ListChangeEventArgs;

    move-result-object v1

    .line 123
    sget-object v2, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v2, v1}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 124
    invoke-virtual {v1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    .line 127
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

    .line 129
    :cond_8
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addMedia() - Media list has been released"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void

    .line 136
    :cond_9
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addMedia() - Media list has been released"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void

    .line 144
    :cond_a
    add-int/lit8 v4, v1, 0x1

    if-ne v5, v4, :cond_c

    .line 145
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 144
    :cond_c
    add-int/lit8 v4, v2, -0x1

    if-eq v5, v4, :cond_b

    .line 148
    invoke-static {v2, v1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery2/ListChangeEventArgs;

    move-result-object v1

    .line 149
    sget-object v2, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v2, v1}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 150
    invoke-virtual {v1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    .line 153
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

    .line 155
    :cond_d
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addMedia() - Media list has been released"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void

    .line 170
    :cond_e
    if-gez v2, :cond_f

    .line 176
    :goto_5
    return-void

    .line 172
    :cond_f
    invoke-static {v2, v1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery2/ListChangeEventArgs;

    move-result-object v0

    .line 173
    sget-object v1, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 174
    invoke-virtual {v0}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    goto :goto_5
.end method

.method protected final checkMediaIndex(Lcom/oneplus/gallery2/media/Media;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 302
    if-eqz p1, :cond_1

    .line 304
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaList;->verifyAccess()V

    .line 307
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 308
    invoke-direct {p0, p1, v1}, Lcom/oneplus/gallery2/media/BaseMediaList;->isCorrectPosition(Lcom/oneplus/gallery2/media/Media;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 309
    :cond_0
    return v3

    .line 303
    :cond_1
    return v3

    .line 308
    :cond_2
    if-ltz v1, :cond_0

    .line 312
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaComparator;

    invoke-static {v0, p1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    .line 313
    invoke-direct {p0, p1, v0}, Lcom/oneplus/gallery2/media/BaseMediaList;->isCorrectPosition(Lcom/oneplus/gallery2/media/Media;I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 320
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 321
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaComparator;

    invoke-static {v0, p1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    .line 322
    invoke-direct {p0, p1, v0}, Lcom/oneplus/gallery2/media/BaseMediaList;->isCorrectPosition(Lcom/oneplus/gallery2/media/Media;I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 326
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 327
    return v3

    .line 315
    :cond_3
    if-gt v0, v1, :cond_4

    .line 332
    :goto_0
    new-instance v2, Lcom/oneplus/gallery2/ListMoveEventArgs;

    invoke-direct {v2, v1, v1, v0, v0}, Lcom/oneplus/gallery2/ListMoveEventArgs;-><init>(IIII)V

    .line 333
    sget-object v3, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_MOVING:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v3, v2}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 334
    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 335
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 336
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_MOVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 337
    const/4 v0, 0x1

    return v0

    .line 316
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 323
    :cond_5
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected clearMedia()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 346
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaList;->verifyAccess()V

    .line 347
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 348
    if-gtz v0, :cond_0

    .line 355
    :goto_0
    return-void

    .line 350
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 351
    add-int/lit8 v0, v0, -0x1

    invoke-static {v2, v0}, Lcom/oneplus/gallery2/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery2/ListChangeEventArgs;

    move-result-object v0

    .line 352
    sget-object v1, Lcom/oneplus/gallery2/media/BaseMediaList;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/gallery2/media/BaseMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 353
    invoke-virtual {v0}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 362
    instance-of v0, p1, Lcom/oneplus/gallery2/media/Media;

    if-nez v0, :cond_0

    .line 367
    return v2

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    check-cast p1, Lcom/oneplus/gallery2/media/Media;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaComparator;

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 365
    if-gez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 375
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
    .line 383
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
    .line 393
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaComparator;

    return-object v0
.end method

.method public final getMaxMediaCount()I
    .locals 1

    .prologue
    .line 403
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_MaxMediaCount:I

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 411
    instance-of v0, p1, Lcom/oneplus/gallery2/media/Media;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 416
    return v0

    .line 413
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    move-object v0, p1

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaComparator;

    invoke-static {v1, v0, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 414
    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    :cond_1
    return v0
.end method

.method protected removeMedia(I)V
    .locals 0

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaList;->verifyAccess()V

    .line 463
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaList;->removeMediaInternal(I)V

    .line 464
    return-void
.end method

.method protected removeMedia(Lcom/oneplus/gallery2/media/Media;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 443
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaList;->verifyAccess()V

    .line 444
    if-eqz p1, :cond_1

    .line 446
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_Comparator:Lcom/oneplus/gallery2/media/MediaComparator;

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 447
    if-gez v0, :cond_2

    .line 452
    :cond_0
    return v2

    .line 445
    :cond_1
    return v2

    .line 447
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 449
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaList;->removeMediaInternal(I)V

    .line 450
    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaList;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected verifyMediaToAdd(Lcom/oneplus/gallery2/media/Media;)Z
    .locals 1

    .prologue
    .line 514
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
