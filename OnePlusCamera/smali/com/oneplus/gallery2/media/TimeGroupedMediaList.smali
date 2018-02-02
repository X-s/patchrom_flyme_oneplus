.class public abstract Lcom/oneplus/gallery2/media/TimeGroupedMediaList;
.super Lcom/oneplus/gallery2/media/WrappedMediaList;
.source "TimeGroupedMediaList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/media/TimeGroupedMediaList$MediaComparatorByTime;,
        Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;
    }
.end annotation


# static fields
.field public static final EVENT_SEPARATOR_MEDIA_ADDED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/gallery2/ListChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_SEPARATOR_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/gallery2/ListChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_SEPARATOR_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/gallery2/ListChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final m_Calendar:Ljava/util/Calendar;

.field private final m_LocaleChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private final m_MediaSource:Lcom/oneplus/gallery2/media/MediaSource;

.field private final m_SeparatorMediaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;",
            ">;"
        }
    .end annotation
.end field

.field private final m_SeparatorMediaMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            "Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;",
            ">;"
        }
    .end annotation
.end field

.field private final m_TimeZoneDstOffset:I

.field private final m_TimeZoneOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 34
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "SeparatorMediaAdded"

    const-class v2, Lcom/oneplus/gallery2/ListChangeEventArgs;

    const-class v3, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->EVENT_SEPARATOR_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    .line 38
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "SeparatorMediaRemoved"

    const-class v2, Lcom/oneplus/gallery2/ListChangeEventArgs;

    const-class v3, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->EVENT_SEPARATOR_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    .line 42
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "SeparatorMediaRemoving"

    const-class v2, Lcom/oneplus/gallery2/ListChangeEventArgs;

    const-class v3, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->EVENT_SEPARATOR_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    return-void
.end method

.method protected constructor <init>(Lcom/oneplus/gallery2/media/MediaList;Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 271
    new-instance v0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$MediaComparatorByTime;

    invoke-direct {v0, v1}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$MediaComparatorByTime;-><init>(I)V

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/oneplus/gallery2/media/WrappedMediaList;-><init>(Lcom/oneplus/gallery2/media/MediaList;Lcom/oneplus/gallery2/media/MediaComparator;IZ)V

    .line 47
    new-instance v0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$1;-><init>(Lcom/oneplus/gallery2/media/TimeGroupedMediaList;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->m_LocaleChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->m_SeparatorMediaList:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->m_SeparatorMediaMap:Ljava/util/Map;

    .line 274
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    const-class v1, Lcom/oneplus/gallery2/media/TempMediaSource;

    invoke-virtual {v0, v1}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSource;

    iput-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->m_MediaSource:Lcom/oneplus/gallery2/media/MediaSource;

    .line 277
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->getComparator()Lcom/oneplus/gallery2/media/MediaComparator;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$MediaComparatorByTime;

    iput-object p0, v0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$MediaComparatorByTime;->owner:Lcom/oneplus/gallery2/media/TimeGroupedMediaList;

    .line 280
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->m_Calendar:Ljava/util/Calendar;

    .line 281
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->m_Calendar:Ljava/util/Calendar;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->m_TimeZoneOffset:I

    .line 282
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->m_Calendar:Ljava/util/Calendar;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->m_TimeZoneDstOffset:I

    .line 285
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 286
    invoke-interface {p1, v1}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->addMedia(Lcom/oneplus/gallery2/media/Media;)I

    .line 285
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 289
    :cond_0
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    sget-object v1, Lcom/oneplus/base/BaseApplication;->PROP_LOCALE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->m_LocaleChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/BaseApplication;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 290
    return-void
.end method

.method protected constructor <init>(Lcom/oneplus/gallery2/media/TimeGroupedMediaList;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 300
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->getInternalMediaList()Lcom/oneplus/gallery2/media/MediaList;

    move-result-object v0

    new-instance v1, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$MediaComparatorByTime;

    invoke-direct {v1, v4}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$MediaComparatorByTime;-><init>(I)V

    const/4 v2, -0x1

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/oneplus/gallery2/media/WrappedMediaList;-><init>(Lcom/oneplus/gallery2/media/MediaList;Lcom/oneplus/gallery2/media/MediaComparator;IZ)V

    .line 47
    new-instance v0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$1;-><init>(Lcom/oneplus/gallery2/media/TimeGroupedMediaList;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->m_LocaleChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->m_SeparatorMediaList:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->m_SeparatorMediaMap:Ljava/util/Map;

    .line 303
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    const-class v1, Lcom/oneplus/gallery2/media/TempMediaSource;

    invoke-virtual {v0, v1}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSource;

    iput-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->m_MediaSource:Lcom/oneplus/gallery2/media/MediaSource;

    .line 306
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->getComparator()Lcom/oneplus/gallery2/media/MediaComparator;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$MediaComparatorByTime;

    iput-object p0, v0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$MediaComparatorByTime;->owner:Lcom/oneplus/gallery2/media/TimeGroupedMediaList;

    .line 309
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->m_Calendar:Ljava/util/Calendar;

    .line 310
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->m_Calendar:Ljava/util/Calendar;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->m_TimeZoneOffset:I

    .line 311
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->m_Calendar:Ljava/util/Calendar;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->m_TimeZoneDstOffset:I

    .line 314
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 315
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v4

    move v0, v4

    move v2, v4

    .line 317
    :goto_0
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->size()I

    move-result v1

    if-ge v3, v1, :cond_4

    .line 319
    invoke-virtual {p1, v3}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->get(I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v1

    .line 320
    instance-of v6, v1, Lcom/oneplus/gallery2/media/DecorationMedia;

    if-nez v6, :cond_0

    .line 340
    add-int/lit8 v0, v0, 0x1

    .line 317
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 322
    :cond_0
    if-gt v0, v2, :cond_1

    .line 324
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move-object v0, v1

    .line 326
    check-cast v0, Lcom/oneplus/gallery2/media/DecorationMedia;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/DecorationMedia;->clone()Lcom/oneplus/gallery2/media/DecorationMedia;

    move-result-object v0

    .line 327
    invoke-interface {v5, v4, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 328
    invoke-super {p0, v5, v4, v7, v7}, Lcom/oneplus/gallery2/media/WrappedMediaList;->addMedia(Ljava/util/List;IIZ)V

    .line 329
    instance-of v6, v0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;

    if-nez v6, :cond_2

    move v0, v2

    goto :goto_1

    .line 323
    :cond_1
    invoke-super {p0, p1, v2, v0, v7}, Lcom/oneplus/gallery2/media/WrappedMediaList;->addMedia(Ljava/util/List;IIZ)V

    goto :goto_2

    .line 331
    :cond_2
    check-cast v0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;

    .line 332
    iput-object p0, v0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->owner:Lcom/oneplus/gallery2/media/TimeGroupedMediaList;

    .line 333
    check-cast v1, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;

    iget v1, v1, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->groupedMediaCount:I

    iput v1, v0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->groupedMediaCount:I

    .line 334
    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->indexOfSeparatorMedia(Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;)I

    move-result v1

    .line 335
    if-ltz v1, :cond_3

    move v0, v2

    goto :goto_1

    .line 336
    :cond_3
    iget-object v6, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->m_SeparatorMediaList:Ljava/util/List;

    xor-int/lit8 v1, v1, -0x1

    invoke-interface {v6, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v0, v2

    .line 338
    goto :goto_1

    .line 342
    :cond_4
    if-gt v0, v2, :cond_5

    .line 346
    :goto_3
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    sget-object v1, Lcom/oneplus/base/BaseApplication;->PROP_LOCALE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->m_LocaleChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/BaseApplication;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 347
    return-void

    .line 343
    :cond_5
    invoke-super {p0, p1, v2, v0, v7}, Lcom/oneplus/gallery2/media/WrappedMediaList;->addMedia(Ljava/util/List;IIZ)V

    goto :goto_3
.end method

.method private findSeparatorMedia(Lcom/oneplus/gallery2/media/Media;Z)Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 450
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->getMediaTime(Lcom/oneplus/gallery2/media/Media;)J

    move-result-wide v0

    .line 451
    invoke-virtual {p0, p1, v0, v1}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->getSeparatorTime(Lcom/oneplus/gallery2/media/Media;J)J

    move-result-wide v2

    .line 452
    invoke-direct {p0, v2, v3}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->indexOfSeparatorMedia(J)I

    move-result v0

    .line 453
    if-ltz v0, :cond_1

    .line 460
    :cond_0
    :goto_0
    if-ltz v0, :cond_3

    .line 478
    :goto_1
    iget-object v1, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->m_SeparatorMediaList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;

    return-object v0

    .line 453
    :cond_1
    if-nez p2, :cond_0

    .line 455
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->m_SeparatorMediaMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;

    .line 456
    if-eqz v0, :cond_2

    .line 458
    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->indexOfSeparatorMedia(Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;)I

    move-result v0

    goto :goto_0

    .line 457
    :cond_2
    return-object v4

    .line 462
    :cond_3
    if-eqz p2, :cond_4

    .line 464
    iget-object v1, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->m_MediaSource:Lcom/oneplus/gallery2/media/MediaSource;

    invoke-virtual {p0, v1, v2, v3}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->createSeparatorMedia(Lcom/oneplus/gallery2/media/MediaSource;J)Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;

    move-result-object v1

    .line 465
    if-eqz v1, :cond_5

    .line 467
    xor-int/lit8 v0, v0, -0x1

    .line 468
    iput-object p0, v1, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->owner:Lcom/oneplus/gallery2/media/TimeGroupedMediaList;

    .line 469
    iget-object v2, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->m_SeparatorMediaList:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 470
    invoke-super {p0, v1}, Lcom/oneplus/gallery2/media/WrappedMediaList;->addMedia(Lcom/oneplus/gallery2/media/Media;)I

    move-result v2

    .line 471
    if-ltz v2, :cond_6

    .line 476
    invoke-virtual {p0, v0, v2, v1}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->onSeparatorMediaAdded(IILcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;)V

    goto :goto_1

    .line 463
    :cond_4
    return-object v4

    .line 466
    :cond_5
    return-object v4

    .line 473
    :cond_6
    iget-object v1, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->m_SeparatorMediaList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 474
    return-object v4
.end method

.method private indexOfSeparatorMedia(J)I
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 586
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->m_SeparatorMediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    move v2, v3

    .line 587
    :goto_0
    if-lt v1, v2, :cond_3

    .line 589
    add-int v0, v2, v1

    div-int/lit8 v4, v0, 0x2

    .line 590
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->m_SeparatorMediaList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;

    sget-object v5, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->PROP_TIME:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v5}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 591
    cmp-long v0, v6, p1

    if-nez v0, :cond_0

    .line 592
    return v4

    .line 593
    :cond_0
    cmp-long v0, p1, v6

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    .line 594
    add-int/lit8 v0, v4, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v3

    .line 593
    goto :goto_1

    .line 596
    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v2, v0

    goto :goto_0

    .line 598
    :cond_3
    xor-int/lit8 v0, v2, -0x1

    return v0
.end method

.method private removeSeparatorMedia(Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 775
    sget-object v0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->PROP_TIME:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p1, v0}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->indexOfSeparatorMedia(J)I

    move-result v0

    .line 776
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/media/WrappedMediaList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 777
    if-gez v0, :cond_1

    .line 786
    :cond_0
    return v2

    .line 777
    :cond_1
    if-ltz v1, :cond_0

    .line 779
    invoke-virtual {p0, v0, v1, p1}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->onSeparatorMediaRemoving(IILcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;)V

    .line 780
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/media/WrappedMediaList;->removeMedia(Lcom/oneplus/gallery2/media/Media;)Z

    .line 781
    iget-object v2, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->m_SeparatorMediaList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 782
    invoke-virtual {p0, v0, v1, p1}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->onSeparatorMediaRemoved(IILcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;)V

    .line 783
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->release()V

    .line 784
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected addMedia(Lcom/oneplus/gallery2/media/Media;)I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 355
    if-eqz p1, :cond_0

    .line 357
    instance-of v0, p1, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;

    if-nez v0, :cond_1

    .line 361
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->findSeparatorMedia(Lcom/oneplus/gallery2/media/Media;Z)Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;

    move-result-object v0

    .line 362
    if-eqz v0, :cond_2

    .line 366
    iget v1, v0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->groupedMediaCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->groupedMediaCount:I

    .line 367
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/media/WrappedMediaList;->addMedia(Lcom/oneplus/gallery2/media/Media;)I

    move-result v1

    .line 368
    if-gez v1, :cond_3

    .line 375
    iget v2, v0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->groupedMediaCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->groupedMediaCount:I

    .line 376
    iget v2, v0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->groupedMediaCount:I

    if-lez v2, :cond_4

    .line 379
    :goto_0
    return v1

    .line 356
    :cond_0
    return v1

    .line 358
    :cond_1
    return v1

    .line 363
    :cond_2
    return v1

    .line 370
    :cond_3
    iget-object v2, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->m_SeparatorMediaMap:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    invoke-virtual {v0, p1}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->onMediaAddedToGroup(Lcom/oneplus/gallery2/media/Media;)V

    goto :goto_0

    .line 377
    :cond_4
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->removeSeparatorMedia(Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;)Z

    goto :goto_0
.end method

.method protected clearMedia()V
    .locals 2

    .prologue
    .line 387
    invoke-super {p0}, Lcom/oneplus/gallery2/media/WrappedMediaList;->clearMedia()V

    .line 388
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->m_SeparatorMediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 389
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->m_SeparatorMediaList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->release()V

    .line 388
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->m_SeparatorMediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 391
    return-void
.end method

.method protected compareMedia(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media;)I
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 403
    instance-of v6, p1, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;

    .line 404
    instance-of v7, p2, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;

    .line 405
    if-nez v6, :cond_0

    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->getMediaTime(Lcom/oneplus/gallery2/media/Media;)J

    move-result-wide v0

    move-wide v2, v0

    .line 406
    :goto_0
    if-nez v7, :cond_1

    invoke-virtual {p0, p2}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->getMediaTime(Lcom/oneplus/gallery2/media/Media;)J

    move-result-wide v0

    .line 407
    :goto_1
    sub-long v2, v0, v2

    .line 408
    cmp-long v0, v2, v10

    if-ltz v0, :cond_2

    move v0, v4

    :goto_2
    if-nez v0, :cond_3

    .line 409
    return v8

    :cond_0
    move-object v0, p1

    .line 405
    check-cast v0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;

    sget-object v1, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->PROP_TIME:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-wide v2, v0

    goto :goto_0

    :cond_1
    move-object v0, p2

    .line 406
    check-cast v0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;

    sget-object v1, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->PROP_TIME:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1

    :cond_2
    move v0, v5

    .line 408
    goto :goto_2

    .line 410
    :cond_3
    cmp-long v0, v2, v10

    if-gtz v0, :cond_4

    move v0, v4

    :goto_3
    if-nez v0, :cond_5

    .line 411
    return v4

    :cond_4
    move v0, v5

    .line 410
    goto :goto_3

    .line 412
    :cond_5
    if-nez v6, :cond_7

    .line 417
    if-nez v7, :cond_8

    .line 421
    :cond_6
    sget-object v0, Lcom/oneplus/gallery2/media/MediaComparator;->FILE_PATH_DESC:Lcom/oneplus/gallery2/media/MediaComparator;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/gallery2/media/MediaComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 414
    :cond_7
    if-nez v7, :cond_6

    .line 415
    return v8

    .line 418
    :cond_8
    return v4
.end method

.method protected abstract createSeparatorMedia(Lcom/oneplus/gallery2/media/MediaSource;J)Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;
.end method

.method public findSeparatorMedia(Lcom/oneplus/gallery2/media/Media;)Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 441
    if-nez p1, :cond_0

    .line 443
    return-object v0

    .line 442
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->findSeparatorMedia(Lcom/oneplus/gallery2/media/Media;Z)Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;

    move-result-object v0

    return-object v0
.end method

.method public getCalendar()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->m_Calendar:Ljava/util/Calendar;

    return-object v0
.end method

.method protected abstract getMediaTime(Lcom/oneplus/gallery2/media/Media;)J
.end method

.method public getSeparatorMedia(I)Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->m_SeparatorMediaList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;

    return-object v0
.end method

.method public getSeparatorMediaCount()I
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->m_SeparatorMediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected abstract getSeparatorTime(Lcom/oneplus/gallery2/media/Media;J)J
.end method

.method public final getTimeZoneDstOffset()I
    .locals 1

    .prologue
    .line 546
    iget v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->m_TimeZoneDstOffset:I

    return v0
.end method

.method public final getTimeZoneOffset()I
    .locals 1

    .prologue
    .line 536
    iget v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->m_TimeZoneOffset:I

    return v0
.end method

.method public indexOfSeparatorMedia(Lcom/oneplus/gallery2/media/Media;)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 557
    if-eqz p1, :cond_0

    .line 559
    instance-of v1, p1, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;

    if-nez v1, :cond_1

    .line 561
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->getMediaTime(Lcom/oneplus/gallery2/media/Media;)J

    move-result-wide v2

    invoke-virtual {p0, p1, v2, v3}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->getSeparatorTime(Lcom/oneplus/gallery2/media/Media;J)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->indexOfSeparatorMedia(J)I

    move-result v1

    .line 562
    if-gez v1, :cond_2

    :goto_0
    return v0

    .line 558
    :cond_0
    return v0

    .line 560
    :cond_1
    check-cast p1, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;

    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->indexOfSeparatorMedia(Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;)I

    move-result v0

    return v0

    :cond_2
    move v0, v1

    .line 562
    goto :goto_0
.end method

.method public indexOfSeparatorMedia(Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;)I
    .locals 2

    .prologue
    .line 573
    if-eqz p1, :cond_1

    .line 575
    sget-object v0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->PROP_TIME:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p1, v0}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->indexOfSeparatorMedia(J)I

    move-result v0

    .line 576
    if-gez v0, :cond_2

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->m_SeparatorMediaList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    .line 574
    return v0

    .line 576
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->m_SeparatorMediaList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 577
    return v0
.end method

.method protected moveMedia(II)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 607
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/media/WrappedMediaList;->get(I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v5

    .line 608
    instance-of v0, v5, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;

    if-nez v0, :cond_0

    .line 611
    add-int/lit8 v0, p1, -0x1

    move v4, v0

    :goto_0
    if-ltz v4, :cond_b

    .line 613
    invoke-super {p0, v4}, Lcom/oneplus/gallery2/media/WrappedMediaList;->get(I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v0

    .line 614
    instance-of v6, v0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;

    if-nez v6, :cond_1

    .line 611
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_0

    .line 609
    :cond_0
    return v1

    .line 616
    :cond_1
    check-cast v0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;

    move-object v4, v0

    .line 620
    :goto_1
    if-eqz v4, :cond_2

    .line 622
    invoke-direct {p0, v5, v1}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->findSeparatorMedia(Lcom/oneplus/gallery2/media/Media;Z)Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;

    move-result-object v3

    .line 625
    if-eq v4, v3, :cond_3

    .line 629
    if-eqz v3, :cond_4

    move v0, v1

    .line 630
    :goto_2
    if-nez v0, :cond_5

    .line 641
    :goto_3
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery2/media/WrappedMediaList;->moveMedia(II)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 649
    iget v0, v4, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->groupedMediaCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v4, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->groupedMediaCount:I

    .line 650
    invoke-virtual {v4, v5}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->onMediaRemovedFromGroup(Lcom/oneplus/gallery2/media/Media;)V

    .line 651
    iget v0, v4, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->groupedMediaCount:I

    if-lez v0, :cond_a

    .line 655
    :goto_4
    iget v0, v3, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->groupedMediaCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->groupedMediaCount:I

    .line 657
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->m_SeparatorMediaMap:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->m_SeparatorMediaMap:Ljava/util/Map;

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    invoke-virtual {v3, v5}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->onMediaAddedToGroup(Lcom/oneplus/gallery2/media/Media;)V

    .line 663
    return v2

    .line 621
    :cond_2
    return v1

    .line 626
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery2/media/WrappedMediaList;->moveMedia(II)Z

    move-result v0

    return v0

    :cond_4
    move v0, v2

    .line 629
    goto :goto_2

    .line 632
    :cond_5
    invoke-direct {p0, v5, v2}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->findSeparatorMedia(Lcom/oneplus/gallery2/media/Media;Z)Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;

    move-result-object v3

    .line 633
    if-eqz v3, :cond_6

    .line 635
    if-lt p2, p1, :cond_7

    .line 637
    :goto_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 634
    :cond_6
    return v1

    .line 636
    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 643
    :cond_8
    if-nez v0, :cond_9

    .line 645
    :goto_6
    return v1

    .line 644
    :cond_9
    invoke-direct {p0, v3}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->removeSeparatorMedia(Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;)Z

    goto :goto_6

    .line 652
    :cond_a
    invoke-direct {p0, v4}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->removeSeparatorMedia(Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;)Z

    goto :goto_4

    :cond_b
    move-object v4, v3

    goto :goto_1
.end method

.method protected onLocaleChanged()V
    .locals 2

    .prologue
    .line 672
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->m_SeparatorMediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 673
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->m_SeparatorMediaList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->onLocaleChanged()V

    .line 672
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 674
    :cond_0
    return-void
.end method

.method protected onMediaAddedToInternalMediaList(Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 4

    .prologue
    .line 681
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->getInternalMediaList()Lcom/oneplus/gallery2/media/MediaList;

    move-result-object v2

    .line 682
    invoke-virtual {p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getStartIndex()I

    move-result v0

    invoke-virtual {p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getEndIndex()I

    move-result v3

    move v1, v0

    :goto_0
    if-gt v1, v3, :cond_0

    .line 683
    invoke-interface {v2, v1}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->addMedia(Lcom/oneplus/gallery2/media/Media;)I

    .line 682
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 684
    :cond_0
    return-void
.end method

.method protected onSeparatorMediaAdded(IILcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;)V
    .locals 2

    .prologue
    .line 695
    invoke-static {p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->obtain(I)Lcom/oneplus/gallery2/ListChangeEventArgs;

    move-result-object v0

    .line 696
    sget-object v1, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->EVENT_SEPARATOR_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 697
    invoke-virtual {v0}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    .line 698
    return-void
.end method

.method protected onSeparatorMediaRemoved(IILcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;)V
    .locals 2

    .prologue
    .line 709
    invoke-static {p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->obtain(I)Lcom/oneplus/gallery2/ListChangeEventArgs;

    move-result-object v0

    .line 710
    sget-object v1, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->EVENT_SEPARATOR_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 711
    invoke-virtual {v0}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    .line 712
    return-void
.end method

.method protected onSeparatorMediaRemoving(IILcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;)V
    .locals 2

    .prologue
    .line 723
    invoke-static {p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->obtain(I)Lcom/oneplus/gallery2/ListChangeEventArgs;

    move-result-object v0

    .line 724
    sget-object v1, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->EVENT_SEPARATOR_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 725
    invoke-virtual {v0}, Lcom/oneplus/gallery2/ListChangeEventArgs;->recycle()V

    .line 726
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    .line 734
    invoke-super {p0}, Lcom/oneplus/gallery2/media/WrappedMediaList;->release()V

    .line 737
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->m_SeparatorMediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 738
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->m_SeparatorMediaList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->release()V

    .line 737
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->m_SeparatorMediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 742
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    sget-object v1, Lcom/oneplus/base/BaseApplication;->PROP_LOCALE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->m_LocaleChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/BaseApplication;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 743
    return-void
.end method

.method protected removeMedia(Lcom/oneplus/gallery2/media/Media;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 751
    if-eqz p1, :cond_0

    .line 755
    invoke-direct {p0, p1, v2}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->findSeparatorMedia(Lcom/oneplus/gallery2/media/Media;Z)Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;

    move-result-object v0

    .line 756
    if-eqz v0, :cond_1

    .line 759
    iget v1, v0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->groupedMediaCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->groupedMediaCount:I

    .line 760
    invoke-virtual {v0, p1}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->onMediaRemovedFromGroup(Lcom/oneplus/gallery2/media/Media;)V

    .line 761
    iget v1, v0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->groupedMediaCount:I

    if-lez v1, :cond_2

    .line 765
    :goto_0
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/media/WrappedMediaList;->removeMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 767
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->m_SeparatorMediaMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    const/4 v0, 0x1

    return v0

    .line 752
    :cond_0
    return v2

    .line 757
    :cond_1
    return v2

    .line 762
    :cond_2
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->removeSeparatorMedia(Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;)Z

    goto :goto_0

    .line 766
    :cond_3
    return v2
.end method
