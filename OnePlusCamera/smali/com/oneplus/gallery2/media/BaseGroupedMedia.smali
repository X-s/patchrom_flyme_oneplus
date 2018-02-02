.class public abstract Lcom/oneplus/gallery2/media/BaseGroupedMedia;
.super Lcom/oneplus/gallery2/media/BaseMedia;
.source "BaseGroupedMedia.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/GroupedMedia;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;,
        Lcom/oneplus/gallery2/media/BaseGroupedMedia$SubMediaList;
    }
.end annotation


# static fields
.field private static final INTERNAL_FLAG_CAPTURED_BY_FRONT_CAM:I = 0x100

.field private static final INTERNAL_FLAG_DELETING:I = 0x1

.field private static final INTERNAL_FLAG_FAVORITE:I = 0x10

.field private static final INTERNAL_FLAG_FAVORITE_SUPPORTED:I = 0x20

.field private static final INTERNAL_FLAG_HIDDEN:I = 0x4

.field private static final INTERNAL_FLAG_RESTORING:I = 0x2

.field private static final SUB_MEDIA_UPDATE_FLAGS_MASK:I


# instance fields
.field private m_Address:Landroid/location/Address;

.field private m_CanAddToAlbum:Z

.field private volatile m_Cover:Lcom/oneplus/gallery2/media/Media;

.field private m_FilePath:Ljava/lang/String;

.field private m_FileSize:J

.field private m_InternalFlags:I

.field private m_LastModifiedTime:J

.field private m_Location:Landroid/location/Location;

.field private m_OpenedSubMediaLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/BaseGroupedMedia$SubMediaList;",
            ">;"
        }
    .end annotation
.end field

.field private final m_PendingAddingSubMedia:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;"
        }
    .end annotation
.end field

.field private final m_PendingRemovingSubMedia:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;"
        }
    .end annotation
.end field

.field private m_PendingUpdateFlags:I

.field private m_PrevAddress:Landroid/location/Address;

.field private m_PrevFilePath:Ljava/lang/String;

.field private m_PrevLocation:Landroid/location/Location;

.field private m_PrevTakenTime:J

.field private m_RecycledSubMediaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;"
        }
    .end annotation
.end field

.field private final m_SubMediaComparator:Lcom/oneplus/gallery2/media/MediaComparator;

.field private final m_SubMediaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;"
        }
    .end annotation
.end field

.field private m_SubMediaUpdateCounter:I

.field private m_TakenTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 86
    sget v0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->FLAG_FILE_PATH_CHANGED:I

    .line 87
    sget v1, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->FLAG_FILE_SIZE_CHANGED:I

    .line 86
    or-int/2addr v0, v1

    .line 88
    sget v1, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->FLAG_LAST_MODIFIED_TIME_CHANGED:I

    .line 86
    or-int/2addr v0, v1

    .line 89
    sget v1, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->FLAG_TAKEN_TIME_CHANGED:I

    .line 86
    or-int/2addr v0, v1

    .line 90
    sget v1, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->FLAG_LOCATION_CHANGED:I

    .line 86
    or-int/2addr v0, v1

    .line 91
    sget v1, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->FLAG_ADDRESS_CHANGED:I

    .line 86
    or-int/2addr v0, v1

    sput v0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->SUB_MEDIA_UPDATE_FLAGS_MASK:I

    .line 93
    return-void
.end method

.method protected constructor <init>(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/MediaType;)V
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/oneplus/gallery2/media/MediaComparator;->FILE_PATH_ASC:Lcom/oneplus/gallery2/media/MediaComparator;

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;-><init>(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/MediaType;Lcom/oneplus/gallery2/media/MediaComparator;)V

    .line 163
    return-void
.end method

.method protected constructor <init>(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/MediaType;Lcom/oneplus/gallery2/media/MediaComparator;)V
    .locals 2

    .prologue
    .line 174
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/media/BaseMedia;-><init>(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/MediaType;)V

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_PendingAddingSubMedia:Ljava/util/Set;

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_PendingRemovingSubMedia:Ljava/util/Set;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    .line 175
    if-eqz p3, :cond_0

    .line 177
    iput-object p3, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaComparator:Lcom/oneplus/gallery2/media/MediaComparator;

    .line 178
    return-void

    .line 176
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No comparator for sub media"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$0(Lcom/oneplus/gallery2/media/BaseGroupedMedia;Lcom/oneplus/gallery2/media/BaseGroupedMedia$SubMediaList;)V
    .locals 0

    .prologue
    .line 703
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->onSubMediaListReleased(Lcom/oneplus/gallery2/media/BaseGroupedMedia$SubMediaList;)V

    return-void
.end method

.method static synthetic access$1(Lcom/oneplus/gallery2/media/BaseGroupedMedia;Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;I)V
    .locals 0

    .prologue
    .line 893
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->restoreFromRecycleBin(Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;I)V

    return-void
.end method

.method private commitSubMediaChanges()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 267
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaUpdateCounter:I

    if-gtz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_PendingRemovingSubMedia:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    .line 291
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_PendingAddingSubMedia:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 312
    :goto_1
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_PendingUpdateFlags:I

    .line 313
    iput v2, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_PendingUpdateFlags:I

    .line 314
    if-nez v1, :cond_9

    .line 319
    :goto_2
    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->notifyUpdated(I)V

    .line 320
    return-void

    .line 268
    :cond_0
    return-void

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_PendingRemovingSubMedia:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :cond_2
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    .line 276
    iget-object v4, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 279
    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->onSubMediaRemoved(Lcom/oneplus/gallery2/media/Media;)V

    .line 280
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_OpenedSubMediaLists:Ljava/util/List;

    if-nez v1, :cond_3

    move v1, v3

    goto :goto_3

    .line 282
    :cond_3
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_OpenedSubMediaLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v4, v1

    :goto_4
    if-ltz v4, :cond_b

    .line 283
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_OpenedSubMediaLists:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/BaseGroupedMedia$SubMediaList;

    invoke-virtual {v1, v0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia$SubMediaList;->removeMedia(Lcom/oneplus/gallery2/media/Media;)Z

    .line 282
    add-int/lit8 v1, v4, -0x1

    move v4, v1

    goto :goto_4

    .line 287
    :cond_4
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_PendingRemovingSubMedia:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto :goto_0

    .line 293
    :cond_5
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_PendingAddingSubMedia:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    .line 295
    iget-object v4, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    iget-object v6, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaComparator:Lcom/oneplus/gallery2/media/MediaComparator;

    invoke-static {v4, v0, v6}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v4

    xor-int/lit8 v4, v4, -0x1

    .line 296
    if-ltz v4, :cond_6

    .line 299
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    invoke-interface {v1, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 300
    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->onSubMediaAdded(Lcom/oneplus/gallery2/media/Media;)V

    .line 301
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_OpenedSubMediaLists:Ljava/util/List;

    if-nez v1, :cond_7

    move v1, v3

    goto :goto_5

    .line 303
    :cond_7
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_OpenedSubMediaLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v4, v1

    :goto_6
    if-ltz v4, :cond_a

    .line 304
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_OpenedSubMediaLists:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/BaseGroupedMedia$SubMediaList;

    invoke-virtual {v1, v0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia$SubMediaList;->addMedia(Lcom/oneplus/gallery2/media/Media;)I

    .line 303
    add-int/lit8 v1, v4, -0x1

    move v4, v1

    goto :goto_6

    .line 308
    :cond_8
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_PendingAddingSubMedia:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto/16 :goto_1

    .line 316
    :cond_9
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->onSubMediaChanged()V

    .line 317
    sget v1, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->FLAG_SUB_MEDIA_COUNT_CHANGED:I

    or-int/2addr v0, v1

    goto/16 :goto_2

    :cond_a
    move v1, v3

    goto :goto_5

    :cond_b
    move v1, v3

    goto/16 :goto_3
.end method

.method private onSubMediaListReleased(Lcom/oneplus/gallery2/media/BaseGroupedMedia$SubMediaList;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 705
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_OpenedSubMediaLists:Ljava/util/List;

    if-nez v0, :cond_1

    .line 707
    :cond_0
    :goto_0
    return-void

    .line 705
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_OpenedSubMediaLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_OpenedSubMediaLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 706
    iput-object v1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_OpenedSubMediaLists:Ljava/util/List;

    goto :goto_0
.end method

.method private restoreFromRecycleBin(Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 895
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    .line 896
    iget-object v0, p1, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->subDeletionHandles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 898
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    .line 899
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 900
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_RecycledSubMediaList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_RecycledSubMediaList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_PendingRemovingSubMedia:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_PendingAddingSubMedia:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 903
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_RecycledSubMediaList:Ljava/util/List;

    if-nez v0, :cond_3

    .line 905
    :cond_2
    :goto_1
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    .line 906
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->commitSubMediaChanges()V

    .line 907
    return-void

    .line 903
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_RecycledSubMediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 904
    iput-object v3, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_RecycledSubMediaList:Ljava/util/List;

    goto :goto_1
.end method

.method private syncStateFromSubMedia()V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 997
    iput-boolean v2, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_CanAddToAlbum:Z

    .line 998
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v7, v0

    move v5, v2

    move v1, v6

    move v3, v6

    move v4, v6

    :goto_0
    if-ltz v7, :cond_5

    .line 1000
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    .line 1001
    invoke-interface {v0}, Lcom/oneplus/gallery2/media/Media;->isFavoriteSupported()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1007
    :goto_1
    invoke-interface {v0}, Lcom/oneplus/gallery2/media/Media;->isCapturedByFrontCamera()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1009
    :goto_2
    invoke-interface {v0}, Lcom/oneplus/gallery2/media/Media;->canAddToAlbum()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1011
    :goto_3
    invoke-interface {v0}, Lcom/oneplus/gallery2/media/Media;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v5

    .line 998
    :goto_4
    add-int/lit8 v5, v7, -0x1

    move v7, v5

    move v5, v0

    goto :goto_0

    .line 1004
    :cond_0
    invoke-interface {v0}, Lcom/oneplus/gallery2/media/Media;->isFavorite()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v2

    move v3, v2

    .line 1005
    goto :goto_1

    :cond_2
    move v4, v2

    .line 1008
    goto :goto_2

    .line 1010
    :cond_3
    iput-boolean v6, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_CanAddToAlbum:Z

    goto :goto_3

    :cond_4
    move v0, v6

    .line 1012
    goto :goto_4

    .line 1016
    :cond_5
    if-nez v1, :cond_7

    .line 1019
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    .line 1021
    :goto_5
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->isFavorite()Z

    move-result v0

    if-ne v0, v3, :cond_8

    move v0, v6

    .line 1031
    :goto_6
    if-nez v4, :cond_a

    .line 1034
    iget v1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    .line 1037
    :goto_7
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->isVisible()Z

    move-result v1

    if-ne v1, v5, :cond_b

    move v1, v0

    .line 1047
    :goto_8
    if-nez v1, :cond_d

    .line 1053
    :cond_6
    :goto_9
    return-void

    .line 1017
    :cond_7
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    goto :goto_5

    .line 1023
    :cond_8
    if-nez v3, :cond_9

    .line 1026
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    .line 1027
    :goto_a
    sget v0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->FLAG_FAVORITE_CHANGED:I

    or-int/lit8 v0, v0, 0x0

    goto :goto_6

    .line 1024
    :cond_9
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    goto :goto_a

    .line 1032
    :cond_a
    iget v1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    goto :goto_7

    .line 1039
    :cond_b
    if-eqz v5, :cond_c

    .line 1042
    iget v1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    .line 1043
    :goto_b
    sget v1, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->FLAG_VISIBILITY_CHANGED:I

    or-int/2addr v0, v1

    move v1, v0

    goto :goto_8

    .line 1040
    :cond_c
    iget v1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    goto :goto_b

    .line 1049
    :cond_d
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    .line 1050
    instance-of v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    if-eqz v2, :cond_6

    .line 1051
    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-virtual {v0, p0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->notifyMediaUpdatedByItself(Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_9
.end method


# virtual methods
.method protected final addSubMedia(Lcom/oneplus/gallery2/media/Media;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 188
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->verifyAccess()V

    .line 189
    if-eqz p1, :cond_1

    .line 191
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_2

    .line 193
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_PendingRemovingSubMedia:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 195
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->commitSubMediaChanges()V

    .line 196
    const/4 v0, 0x1

    return v0

    .line 190
    :cond_1
    return v1

    .line 192
    :cond_2
    return v1

    .line 193
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_PendingAddingSubMedia:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    return v1
.end method

.method public addToAlbum(JI)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 205
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_CanAddToAlbum:Z

    if-eqz v0, :cond_0

    .line 209
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    const-class v1, Lcom/oneplus/gallery2/media/AlbumManager;

    invoke-virtual {v0, v1}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AlbumManager;

    .line 210
    if-eqz v0, :cond_1

    .line 218
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v4, v1

    :goto_0
    if-ltz v4, :cond_7

    .line 220
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    .line 221
    invoke-interface {v1, p1, p2, p3}, Lcom/oneplus/gallery2/media/Media;->addToAlbum(JI)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 218
    add-int/lit8 v1, v4, -0x1

    move v4, v1

    goto :goto_0

    .line 206
    :cond_0
    return v3

    .line 212
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "addToAlbum() - No AlbumManager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return v3

    .line 223
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "addToAlbum() - Fail to add sub media "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " to album "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 230
    :goto_1
    if-nez v1, :cond_4

    .line 240
    :cond_3
    :goto_2
    if-eqz v1, :cond_5

    .line 251
    return v2

    .line 232
    :cond_4
    invoke-virtual {v0, p1, p2, p0}, Lcom/oneplus/gallery2/media/AlbumManager;->addMediaToAlbum(JLcom/oneplus/gallery2/media/Media;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 235
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "addToAlbum() - Fail to add "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to album "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    goto :goto_2

    .line 242
    :cond_5
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_3
    if-ltz v2, :cond_6

    .line 244
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    .line 245
    invoke-virtual {v0, p1, p2, v1}, Lcom/oneplus/gallery2/media/AlbumManager;->removeMediaFromAlbum(JLcom/oneplus/gallery2/media/Media;)Z

    .line 242
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_3

    .line 247
    :cond_6
    return v3

    :cond_7
    move v1, v2

    goto :goto_1
.end method

.method public canAddToAlbum()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_CanAddToAlbum:Z

    return v0
.end method

.method protected final completeSubMediaUpdate()V
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->verifyAccess()V

    .line 329
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaUpdateCounter:I

    if-lez v0, :cond_0

    .line 331
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaUpdateCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaUpdateCounter:I

    .line 332
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaUpdateCounter:I

    if-eqz v0, :cond_1

    .line 334
    :goto_0
    return-void

    .line 330
    :cond_0
    return-void

    .line 333
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->commitSubMediaChanges()V

    goto :goto_0
.end method

.method public contains(Lcom/oneplus/gallery2/media/Media;)Z
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public delete(Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 350
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->verifyAccess()V

    .line 351
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 356
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 363
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->commitSubMediaChanges()V

    .line 366
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    .line 367
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery2/media/Media;

    .line 368
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 369
    new-instance v2, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;

    invoke-direct {v2, p0, p1, p2}, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;-><init>(Lcom/oneplus/gallery2/media/BaseGroupedMedia;Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)V

    .line 370
    sget v1, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->FLAG_MOVE_TO_RECYCE_BIN:I

    and-int/2addr v1, p2

    if-eqz v1, :cond_2

    .line 389
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_RecycledSubMediaList:Ljava/util/List;

    if-eqz v1, :cond_8

    .line 391
    :goto_0
    array-length v1, v0

    :goto_1
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_4

    .line 393
    aget-object v3, v0, v1

    .line 394
    iget-object v4, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_RecycledSubMediaList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    iget-object v4, v2, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->subDeletionHandles:Ljava/util/Map;

    iget-object v5, v2, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->wrappedCallback:Lcom/oneplus/gallery2/media/Media$DeletionCallback;

    invoke-interface {v3, v5, p2}, Lcom/oneplus/gallery2/media/Media;->delete(Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 353
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "delete() - Already deleting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    return-object v6

    .line 358
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "delete() - Restoring"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    return-object v6

    .line 372
    :cond_2
    array-length v1, v0

    :goto_2
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_3

    .line 374
    aget-object v3, v0, v1

    .line 375
    iget-object v4, v2, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->subDeletionHandles:Ljava/util/Map;

    iget-object v5, v2, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->wrappedCallback:Lcom/oneplus/gallery2/media/Media$DeletionCallback;

    invoke-interface {v3, v5, p2}, Lcom/oneplus/gallery2/media/Media;->delete(Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 377
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_RecycledSubMediaList:Ljava/util/List;

    if-nez v0, :cond_6

    .line 400
    :cond_4
    :goto_3
    iget-object v0, v2, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->wrappedCallback:Lcom/oneplus/gallery2/media/Media$DeletionCallback;

    invoke-virtual {p0, v0, p2}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->deleteGroupedMediaItself(Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    .line 401
    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 405
    :goto_4
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    .line 406
    iget v0, v2, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->numberOfCompletedHandles:I

    iget v1, v2, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->numberOfCancelledHandles:I

    add-int/2addr v0, v1

    iget-object v1, v2, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->subDeletionHandles:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-eq v0, v1, :cond_a

    .line 411
    :cond_5
    :goto_5
    return-object v2

    .line 379
    :cond_6
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_RecycledSubMediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_6
    if-ltz v1, :cond_7

    .line 381
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_RecycledSubMediaList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    .line 382
    iget-object v3, v2, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->subDeletionHandles:Ljava/util/Map;

    iget-object v4, v2, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->wrappedCallback:Lcom/oneplus/gallery2/media/Media$DeletionCallback;

    invoke-interface {v0, v4, p2}, Lcom/oneplus/gallery2/media/Media;->delete(Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_6

    .line 384
    :cond_7
    iput-object v6, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_RecycledSubMediaList:Ljava/util/List;

    goto :goto_3

    .line 390
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_RecycledSubMediaList:Ljava/util/List;

    goto/16 :goto_0

    .line 402
    :cond_9
    iget-object v1, v2, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->subDeletionHandles:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 407
    :cond_a
    if-eqz p1, :cond_5

    .line 409
    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0, p2}, Lcom/oneplus/gallery2/media/Media$DeletionCallback;->onDeletionCompleted(Lcom/oneplus/gallery2/media/Media;ZI)V

    goto :goto_5
.end method

.method protected abstract deleteGroupedMediaItself(Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;
.end method

.method public getAddress()Landroid/location/Address;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_Address:Landroid/location/Address;

    return-object v0
.end method

.method public getCacheKey()Lcom/oneplus/gallery2/media/MediaCacheKey;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 439
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_Cover:Lcom/oneplus/gallery2/media/Media;

    .line 440
    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v1}, Lcom/oneplus/gallery2/media/Media;->getCacheKey()Lcom/oneplus/gallery2/media/MediaCacheKey;

    move-result-object v0

    goto :goto_0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 448
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_Cover:Lcom/oneplus/gallery2/media/Media;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_Cover:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getCover()Lcom/oneplus/gallery2/media/Media;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/oneplus/gallery2/media/Media;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 457
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_Cover:Lcom/oneplus/gallery2/media/Media;

    return-object v0
.end method

.method public getDetails(Lcom/oneplus/gallery2/media/Media$DetailsCallback;)Lcom/oneplus/base/Handle;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 465
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->verifyAccess()V

    .line 466
    if-nez p1, :cond_1

    .line 467
    :cond_0
    return-object v1

    .line 466
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_Cover:Lcom/oneplus/gallery2/media/Media;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_Cover:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v0, p1}, Lcom/oneplus/gallery2/media/Media;->getDetails(Lcom/oneplus/gallery2/media/Media$DetailsCallback;)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_FilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 484
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_FileSize:J

    return-wide v0
.end method

.method public getLastModifiedTime()J
    .locals 2

    .prologue
    .line 492
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_LastModifiedTime:J

    return-wide v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_Location:Landroid/location/Location;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 508
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_Cover:Lcom/oneplus/gallery2/media/Media;

    .line 509
    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v1}, Lcom/oneplus/gallery2/media/Media;->getMimeType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPreviousAddress()Landroid/location/Address;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_PrevAddress:Landroid/location/Address;

    return-object v0
.end method

.method public getPreviousFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_PrevFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_PrevLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getPreviousTakenTime()J
    .locals 2

    .prologue
    .line 541
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_PrevTakenTime:J

    return-wide v0
.end method

.method public getSize(Lcom/oneplus/gallery2/media/Media$SizeCallback;)Lcom/oneplus/base/Handle;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 549
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_Cover:Lcom/oneplus/gallery2/media/Media;

    if-nez v0, :cond_0

    .line 551
    return-object v1

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_Cover:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v0, p1}, Lcom/oneplus/gallery2/media/Media;->getSize(Lcom/oneplus/gallery2/media/Media$SizeCallback;)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0
.end method

.method protected final getSubMedia(I)Lcom/oneplus/gallery2/media/Media;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/oneplus/gallery2/media/Media;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 573
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    return-object v0
.end method

.method protected final getSubMedia()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;"
        }
    .end annotation

    .prologue
    .line 561
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    return-object v0
.end method

.method public getSubMediaCount()I
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTakenTime()J
    .locals 2

    .prologue
    .line 589
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_TakenTime:J

    return-wide v0
.end method

.method public isCapturedByFrontCamera()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 597
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isFavorite()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 605
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isFavoriteSupported()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 613
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isVisible()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 621
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected notifySubMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 3

    .prologue
    .line 632
    if-eqz p1, :cond_2

    .line 634
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_Cover:Lcom/oneplus/gallery2/media/Media;

    if-eq p1, v0, :cond_3

    .line 636
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->syncStateFromSubMedia()V

    .line 637
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_OpenedSubMediaLists:Ljava/util/List;

    if-nez v0, :cond_4

    .line 646
    :cond_1
    return-void

    .line 633
    :cond_2
    return-void

    .line 634
    :cond_3
    sget v0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->SUB_MEDIA_UPDATE_FLAGS_MASK:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_Cover:Lcom/oneplus/gallery2/media/Media;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->onUpdate(Lcom/oneplus/gallery2/media/Media;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->notifyUpdated(I)V

    goto :goto_0

    .line 639
    :cond_4
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_OpenedSubMediaLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_1

    .line 641
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_OpenedSubMediaLists:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/BaseGroupedMedia$SubMediaList;

    .line 642
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia$SubMediaList;->getComparator()Lcom/oneplus/gallery2/media/MediaComparator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/gallery2/media/MediaComparator;->getEffectiveMediaUpdateFlags()I

    move-result v2

    and-int/2addr v2, p2

    if-nez v2, :cond_5

    .line 639
    :goto_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 643
    :cond_5
    invoke-virtual {v0, p1}, Lcom/oneplus/gallery2/media/BaseGroupedMedia$SubMediaList;->checkMediaIndex(Lcom/oneplus/gallery2/media/Media;)Z

    goto :goto_2
.end method

.method protected notifyUpdated(I)V
    .locals 2

    .prologue
    .line 655
    if-eqz p1, :cond_0

    .line 657
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    .line 658
    iget v1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaUpdateCounter:I

    if-gtz v1, :cond_1

    .line 660
    instance-of v1, v0, Lcom/oneplus/gallery2/media/BaseMediaSource;

    if-nez v1, :cond_2

    .line 663
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "notifyUpdated() - No implementation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :goto_0
    return-void

    .line 656
    :cond_0
    return-void

    .line 659
    :cond_1
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_PendingUpdateFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_PendingUpdateFlags:I

    goto :goto_0

    .line 661
    :cond_2
    check-cast v0, Lcom/oneplus/gallery2/media/BaseMediaSource;

    invoke-virtual {v0, p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSource;->notifyMediaUpdatedByItself(Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_0
.end method

.method protected onCoverChanged(Lcom/oneplus/gallery2/media/Media;)V
    .locals 0

    .prologue
    .line 672
    return-void
.end method

.method protected onSubMediaAdded(Lcom/oneplus/gallery2/media/Media;)V
    .locals 0

    .prologue
    .line 680
    return-void
.end method

.method protected onSubMediaChanged()V
    .locals 3

    .prologue
    .line 688
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->syncStateFromSubMedia()V

    .line 691
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->isFavorite()Z

    move-result v0

    if-nez v0, :cond_1

    .line 699
    :cond_0
    return-void

    .line 693
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 695
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    .line 696
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/oneplus/gallery2/media/Media;->setFavorite(Z)Z

    .line 693
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method protected onSubMediaRemoved(Lcom/oneplus/gallery2/media/Media;)V
    .locals 0

    .prologue
    .line 715
    return-void
.end method

.method protected onUpdate(Lcom/oneplus/gallery2/media/Media;)I
    .locals 12

    .prologue
    const-wide/16 v0, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 732
    if-nez p1, :cond_4

    move-object v4, v2

    move-wide v6, v0

    move-object v5, v2

    move-object v8, v2

    move-wide v2, v0

    .line 753
    :goto_0
    iget-object v10, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_FilePath:Ljava/lang/String;

    invoke-static {v10, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    move v5, v9

    .line 761
    :goto_1
    iget-wide v10, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_FileSize:J

    cmp-long v9, v10, v6

    if-eqz v9, :cond_0

    .line 763
    iput-wide v6, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_FileSize:J

    .line 764
    sget v6, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->FLAG_FILE_SIZE_CHANGED:I

    or-int/2addr v5, v6

    .line 768
    :cond_0
    iget-wide v6, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_LastModifiedTime:J

    cmp-long v6, v6, v2

    if-eqz v6, :cond_1

    .line 770
    iput-wide v2, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_LastModifiedTime:J

    .line 771
    sget v2, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->FLAG_LAST_MODIFIED_TIME_CHANGED:I

    or-int/2addr v5, v2

    .line 775
    :cond_1
    iget-wide v2, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_TakenTime:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_2

    .line 777
    iget-wide v2, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_TakenTime:J

    iput-wide v2, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_PrevTakenTime:J

    .line 778
    iput-wide v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_TakenTime:J

    .line 779
    sget v0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->FLAG_TAKEN_TIME_CHANGED:I

    or-int/2addr v5, v0

    .line 783
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_Location:Landroid/location/Location;

    if-nez v0, :cond_6

    :cond_3
    if-nez v4, :cond_8

    .line 791
    :goto_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_Address:Landroid/location/Address;

    if-ne v0, v8, :cond_9

    .line 799
    :goto_3
    return v5

    .line 734
    :cond_4
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getAddress()Landroid/location/Address;

    move-result-object v8

    .line 735
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v5

    .line 736
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getFileSize()J

    move-result-wide v6

    .line 737
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getLocation()Landroid/location/Location;

    move-result-object v4

    .line 738
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getLastModifiedTime()J

    move-result-wide v2

    .line 739
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getTakenTime()J

    move-result-wide v0

    goto :goto_0

    .line 755
    :cond_5
    iget-object v9, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_FilePath:Ljava/lang/String;

    iput-object v9, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_PrevFilePath:Ljava/lang/String;

    .line 756
    iput-object v5, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_FilePath:Ljava/lang/String;

    .line 757
    sget v5, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->FLAG_FILE_PATH_CHANGED:I

    or-int/lit8 v5, v5, 0x0

    goto :goto_1

    .line 783
    :cond_6
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_Location:Landroid/location/Location;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 785
    :cond_7
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_Location:Landroid/location/Location;

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_PrevLocation:Landroid/location/Location;

    .line 786
    iput-object v4, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_Location:Landroid/location/Location;

    .line 787
    sget v0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->FLAG_LOCATION_CHANGED:I

    or-int/2addr v5, v0

    goto :goto_2

    .line 783
    :cond_8
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_Location:Landroid/location/Location;

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    .line 793
    :cond_9
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_Address:Landroid/location/Address;

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_PrevAddress:Landroid/location/Address;

    .line 794
    iput-object v8, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_Address:Landroid/location/Address;

    .line 795
    sget v0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->FLAG_ADDRESS_CHANGED:I

    or-int/2addr v5, v0

    goto :goto_3
.end method

.method public openInputStream(Lcom/oneplus/base/Ref;I)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/Ref",
            "<",
            "Ljava/lang/Boolean;",
            ">;I)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 807
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_Cover:Lcom/oneplus/gallery2/media/Media;

    .line 808
    if-nez v0, :cond_0

    .line 810
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "No cover media to open input stream"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 809
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/oneplus/gallery2/media/Media;->openInputStream(Lcom/oneplus/base/Ref;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public openSubMediaList(Lcom/oneplus/gallery2/media/MediaComparator;I)Lcom/oneplus/gallery2/media/MediaList;
    .locals 3

    .prologue
    .line 819
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->verifyAccess()V

    .line 820
    if-eqz p1, :cond_0

    .line 824
    :goto_0
    new-instance v1, Lcom/oneplus/gallery2/media/BaseGroupedMedia$SubMediaList;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/gallery2/media/BaseGroupedMedia$SubMediaList;-><init>(Lcom/oneplus/gallery2/media/BaseGroupedMedia;Lcom/oneplus/gallery2/media/MediaComparator;)V

    .line 825
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaComparator:Lcom/oneplus/gallery2/media/MediaComparator;

    if-eq p1, v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia$SubMediaList;->addMedia(Ljava/util/List;Z)V

    .line 826
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_OpenedSubMediaLists:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 828
    :goto_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_OpenedSubMediaLists:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 831
    return-object v1

    .line 821
    :cond_0
    sget-object p1, Lcom/oneplus/gallery2/media/MediaComparator;->FILE_PATH_ASC:Lcom/oneplus/gallery2/media/MediaComparator;

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 825
    goto :goto_1

    .line 827
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_OpenedSubMediaLists:Ljava/util/List;

    goto :goto_2
.end method

.method public peekSize()Landroid/util/Size;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 839
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_Cover:Lcom/oneplus/gallery2/media/Media;

    if-nez v0, :cond_0

    .line 841
    return-object v1

    .line 840
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_Cover:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/Media;->peekSize()Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public removeFromAlbum(JI)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 850
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_CanAddToAlbum:Z

    if-eqz v0, :cond_0

    .line 854
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    const-class v1, Lcom/oneplus/gallery2/media/AlbumManager;

    invoke-virtual {v0, v1}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AlbumManager;

    .line 855
    if-eqz v0, :cond_1

    .line 863
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v3, v2

    move v2, v1

    :goto_0
    if-ltz v2, :cond_2

    .line 865
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    .line 866
    invoke-interface {v1, p1, p2, p3}, Lcom/oneplus/gallery2/media/Media;->removeFromAlbum(JI)Z

    move-result v1

    or-int/2addr v3, v1

    .line 863
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_0

    .line 851
    :cond_0
    return v2

    .line 857
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "removeFromAlbum() - No AlbumManager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    return v2

    .line 870
    :cond_2
    invoke-virtual {v0, p1, p2, p0}, Lcom/oneplus/gallery2/media/AlbumManager;->removeMediaFromAlbum(JLcom/oneplus/gallery2/media/Media;)Z

    move-result v0

    or-int/2addr v0, v3

    .line 871
    return v0
.end method

.method protected removeSubMedia(Lcom/oneplus/gallery2/media/Media;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 882
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->verifyAccess()V

    .line 883
    if-eqz p1, :cond_1

    .line 885
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_PendingAddingSubMedia:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 887
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->commitSubMediaChanges()V

    .line 888
    const/4 v0, 0x1

    return v0

    .line 884
    :cond_1
    return v1

    .line 885
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_PendingRemovingSubMedia:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 886
    return v1
.end method

.method protected setCover(Lcom/oneplus/gallery2/media/Media;)V
    .locals 2

    .prologue
    .line 917
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->verifyAccess()V

    .line 918
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_Cover:Lcom/oneplus/gallery2/media/Media;

    if-eq v0, p1, :cond_0

    .line 922
    iput-object p1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_Cover:Lcom/oneplus/gallery2/media/Media;

    .line 923
    sget v0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->FLAG_COVER_CHANGED:I

    .line 926
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->onCoverChanged(Lcom/oneplus/gallery2/media/Media;)V

    .line 927
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->onUpdate(Lcom/oneplus/gallery2/media/Media;)I

    move-result v1

    or-int/2addr v0, v1

    .line 930
    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->notifyUpdated(I)V

    .line 931
    return-void

    .line 919
    :cond_0
    return-void
.end method

.method public setFavorite(Z)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 938
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->verifyAccess()V

    .line 939
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->isFavoriteSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 941
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_5

    .line 943
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    .line 944
    invoke-interface {v0}, Lcom/oneplus/gallery2/media/Media;->isFavoriteSupported()Z

    move-result v4

    if-nez v4, :cond_2

    .line 941
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 940
    :cond_1
    return v3

    .line 944
    :cond_2
    invoke-interface {v0, p1}, Lcom/oneplus/gallery2/media/Media;->setFavorite(Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 946
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "setFavorite() - Fail to update favorite state of "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_1
    if-ltz v4, :cond_4

    .line 948
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    if-nez p1, :cond_3

    move v1, v2

    :goto_2
    invoke-interface {v0, v1}, Lcom/oneplus/gallery2/media/Media;->setFavorite(Z)Z

    .line 947
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_1

    :cond_3
    move v1, v3

    .line 948
    goto :goto_2

    .line 949
    :cond_4
    return v3

    .line 952
    :cond_5
    return v2
.end method

.method public setVisible(Z)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 960
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->verifyAccess()V

    .line 961
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->isVisibilityChangeSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 963
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_5

    .line 965
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    .line 966
    invoke-interface {v0}, Lcom/oneplus/gallery2/media/Media;->isVisibilityChangeSupported()Z

    move-result v4

    if-nez v4, :cond_2

    .line 963
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 962
    :cond_1
    return v3

    .line 966
    :cond_2
    invoke-interface {v0, p1}, Lcom/oneplus/gallery2/media/Media;->setVisible(Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 968
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "setVisible() - Fail to update visibility state of "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_1
    if-ltz v4, :cond_4

    .line 970
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    if-nez p1, :cond_3

    move v1, v2

    :goto_2
    invoke-interface {v0, v1}, Lcom/oneplus/gallery2/media/Media;->setVisible(Z)Z

    .line 969
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_1

    :cond_3
    move v1, v3

    .line 970
    goto :goto_2

    .line 971
    :cond_4
    return v3

    .line 974
    :cond_5
    return v2
.end method

.method protected final startSubMediaUpdate()V
    .locals 1

    .prologue
    .line 983
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->verifyAccess()V

    .line 984
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaUpdateCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaUpdateCounter:I

    .line 985
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1060
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
