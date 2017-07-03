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
    .line 84
    sget v0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->FLAG_FILE_PATH_CHANGED:I

    sget v1, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->FLAG_FILE_SIZE_CHANGED:I

    or-int/2addr v0, v1

    sget v1, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->FLAG_LAST_MODIFIED_TIME_CHANGED:I

    or-int/2addr v0, v1

    sget v1, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->FLAG_TAKEN_TIME_CHANGED:I

    or-int/2addr v0, v1

    sget v1, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->FLAG_LOCATION_CHANGED:I

    or-int/2addr v0, v1

    sget v1, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->FLAG_ADDRESS_CHANGED:I

    or-int/2addr v0, v1

    sput v0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->SUB_MEDIA_UPDATE_FLAGS_MASK:I

    .line 91
    return-void
.end method

.method protected constructor <init>(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/MediaType;)V
    .locals 1
    .param p1, "source"    # Lcom/oneplus/gallery2/media/MediaSource;
    .param p2, "mediaType"    # Lcom/oneplus/gallery2/media/MediaType;

    .prologue
    .line 160
    sget-object v0, Lcom/oneplus/gallery2/media/MediaComparator;->FILE_PATH_ASC:Lcom/oneplus/gallery2/media/MediaComparator;

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;-><init>(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/MediaType;Lcom/oneplus/gallery2/media/MediaComparator;)V

    .line 161
    return-void
.end method

.method protected constructor <init>(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/MediaType;Lcom/oneplus/gallery2/media/MediaComparator;)V
    .locals 2
    .param p1, "source"    # Lcom/oneplus/gallery2/media/MediaSource;
    .param p2, "mediaType"    # Lcom/oneplus/gallery2/media/MediaType;
    .param p3, "subMediaComparator"    # Lcom/oneplus/gallery2/media/MediaComparator;

    .prologue
    .line 172
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/media/BaseMedia;-><init>(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/MediaType;)V

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_PendingAddingSubMedia:Ljava/util/Set;

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_PendingRemovingSubMedia:Ljava/util/Set;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    .line 173
    if-nez p3, :cond_0

    .line 174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No comparator for sub media"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_0
    iput-object p3, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaComparator:Lcom/oneplus/gallery2/media/MediaComparator;

    .line 176
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery2/media/BaseGroupedMedia;Lcom/oneplus/gallery2/media/BaseGroupedMedia$SubMediaList;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/BaseGroupedMedia;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/BaseGroupedMedia$SubMediaList;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->onSubMediaListReleased(Lcom/oneplus/gallery2/media/BaseGroupedMedia$SubMediaList;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/gallery2/media/BaseGroupedMedia;Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/BaseGroupedMedia;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;
    .param p2, "x2"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->restoreFromRecycleBin(Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;I)V

    return-void
.end method

.method private commitSubMediaChanges()V
    .locals 8

    .prologue
    .line 265
    iget v6, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaUpdateCounter:I

    if-lez v6, :cond_0

    .line 318
    :goto_0
    return-void

    .line 269
    :cond_0
    const/4 v4, 0x0

    .line 270
    .local v4, "subMediaChanged":Z
    iget-object v6, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_PendingRemovingSubMedia:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 272
    iget-object v6, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_PendingRemovingSubMedia:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/media/Media;

    .line 274
    .local v3, "media":Lcom/oneplus/gallery2/media/Media;
    iget-object v6, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 276
    const/4 v4, 0x1

    .line 277
    invoke-virtual {p0, v3}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->onSubMediaRemoved(Lcom/oneplus/gallery2/media/Media;)V

    .line 278
    iget-object v6, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_OpenedSubMediaLists:Ljava/util/List;

    if-eqz v6, :cond_1

    .line 280
    iget-object v6, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_OpenedSubMediaLists:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 281
    iget-object v6, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_OpenedSubMediaLists:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/gallery2/media/BaseGroupedMedia$SubMediaList;

    invoke-virtual {v6, v3}, Lcom/oneplus/gallery2/media/BaseGroupedMedia$SubMediaList;->removeMedia(Lcom/oneplus/gallery2/media/Media;)Z

    .line 280
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 285
    .end local v0    # "i":I
    .end local v3    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_2
    iget-object v6, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_PendingRemovingSubMedia:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->clear()V

    .line 289
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v6, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_PendingAddingSubMedia:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    .line 291
    iget-object v6, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_PendingAddingSubMedia:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/media/Media;

    .line 293
    .restart local v3    # "media":Lcom/oneplus/gallery2/media/Media;
    iget-object v6, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    iget-object v7, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaComparator:Lcom/oneplus/gallery2/media/MediaComparator;

    invoke-static {v6, v3, v7}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v6

    xor-int/lit8 v2, v6, -0x1

    .line 294
    .local v2, "index":I
    if-ltz v2, :cond_4

    .line 296
    const/4 v4, 0x1

    .line 297
    iget-object v6, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    invoke-interface {v6, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 298
    invoke-virtual {p0, v3}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->onSubMediaAdded(Lcom/oneplus/gallery2/media/Media;)V

    .line 299
    iget-object v6, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_OpenedSubMediaLists:Ljava/util/List;

    if-eqz v6, :cond_4

    .line 301
    iget-object v6, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_OpenedSubMediaLists:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_4

    .line 302
    iget-object v6, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_OpenedSubMediaLists:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/gallery2/media/BaseGroupedMedia$SubMediaList;

    invoke-virtual {v6, v3}, Lcom/oneplus/gallery2/media/BaseGroupedMedia$SubMediaList;->addMedia(Lcom/oneplus/gallery2/media/Media;)I

    .line 301
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 306
    .end local v0    # "i":I
    .end local v2    # "index":I
    .end local v3    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_5
    iget-object v6, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_PendingAddingSubMedia:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->clear()V

    .line 310
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_6
    iget v5, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_PendingUpdateFlags:I

    .line 311
    .local v5, "updateFlags":I
    const/4 v6, 0x0

    iput v6, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_PendingUpdateFlags:I

    .line 312
    if-eqz v4, :cond_7

    .line 314
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->onSubMediaChanged()V

    .line 315
    sget v6, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->FLAG_SUB_MEDIA_COUNT_CHANGED:I

    or-int/2addr v5, v6

    .line 317
    :cond_7
    invoke-virtual {p0, v5}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->notifyUpdated(I)V

    goto/16 :goto_0
.end method

.method private onSubMediaListReleased(Lcom/oneplus/gallery2/media/BaseGroupedMedia$SubMediaList;)V
    .locals 1
    .param p1, "mediaList"    # Lcom/oneplus/gallery2/media/BaseGroupedMedia$SubMediaList;

    .prologue
    .line 685
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_OpenedSubMediaLists:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_OpenedSubMediaLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_OpenedSubMediaLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_OpenedSubMediaLists:Ljava/util/List;

    .line 687
    :cond_0
    return-void
.end method

.method private restoreFromRecycleBin(Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;I)V
    .locals 4
    .param p1, "handle"    # Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;
    .param p2, "flags"    # I

    .prologue
    .line 875
    iget v3, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    .line 876
    iget-object v3, p1, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->subDeletionHandles:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 878
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/base/Handle;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/Media;

    .line 879
    .local v2, "media":Lcom/oneplus/gallery2/media/Media;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/base/Handle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 880
    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_RecycledSubMediaList:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_RecycledSubMediaList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_PendingRemovingSubMedia:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 881
    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_PendingAddingSubMedia:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 883
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/base/Handle;>;"
    .end local v2    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_1
    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_RecycledSubMediaList:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_RecycledSubMediaList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 884
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_RecycledSubMediaList:Ljava/util/List;

    .line 885
    :cond_2
    iget v3, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    .line 886
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->commitSubMediaChanges()V

    .line 887
    return-void
.end method

.method private syncStateFromSubMedia()V
    .locals 7

    .prologue
    .line 950
    const/4 v1, 0x0

    .line 951
    .local v1, "isCapturedByFrontCamera":Z
    const/4 v2, 0x0

    .line 952
    .local v2, "isFavorite":Z
    const/4 v3, 0x0

    .line 953
    .local v3, "isFavoriteSupported":Z
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_CanAddToAlbum:Z

    .line 954
    iget-object v6, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 956
    iget-object v6, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery2/media/Media;

    .line 957
    .local v4, "media":Lcom/oneplus/gallery2/media/Media;
    invoke-interface {v4}, Lcom/oneplus/gallery2/media/Media;->isFavoriteSupported()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 959
    const/4 v3, 0x1

    .line 960
    invoke-interface {v4}, Lcom/oneplus/gallery2/media/Media;->isFavorite()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 961
    const/4 v2, 0x1

    .line 963
    :cond_0
    invoke-interface {v4}, Lcom/oneplus/gallery2/media/Media;->isCapturedByFrontCamera()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 964
    const/4 v1, 0x1

    .line 965
    :cond_1
    invoke-interface {v4}, Lcom/oneplus/gallery2/media/Media;->canAddToAlbum()Z

    move-result v6

    if-nez v6, :cond_2

    .line 966
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_CanAddToAlbum:Z

    .line 954
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 970
    .end local v4    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_3
    if-eqz v3, :cond_6

    .line 971
    iget v6, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    .line 974
    :goto_1
    const/4 v5, 0x0

    .line 975
    .local v5, "updateFlags":I
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->isFavorite()Z

    move-result v6

    if-eq v6, v2, :cond_4

    .line 977
    if-eqz v2, :cond_7

    .line 978
    iget v6, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    .line 981
    :goto_2
    sget v6, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->FLAG_FAVORITE_CHANGED:I

    or-int/2addr v5, v6

    .line 985
    :cond_4
    if-eqz v1, :cond_8

    .line 986
    iget v6, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    or-int/lit16 v6, v6, 0x100

    iput v6, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    .line 991
    :goto_3
    if-eqz v5, :cond_5

    .line 992
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v6

    check-cast v6, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-virtual {v6, p0, v5}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->notifyMediaUpdatedByItself(Lcom/oneplus/gallery2/media/Media;I)V

    .line 993
    :cond_5
    return-void

    .line 973
    .end local v5    # "updateFlags":I
    :cond_6
    iget v6, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    and-int/lit8 v6, v6, -0x21

    iput v6, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    goto :goto_1

    .line 980
    .restart local v5    # "updateFlags":I
    :cond_7
    iget v6, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    and-int/lit8 v6, v6, -0x11

    iput v6, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    goto :goto_2

    .line 988
    :cond_8
    iget v6, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    and-int/lit16 v6, v6, -0x101

    iput v6, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    goto :goto_3
.end method


# virtual methods
.method protected final addSubMedia(Lcom/oneplus/gallery2/media/Media;)Z
    .locals 2
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    const/4 v0, 0x0

    .line 186
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->verifyAccess()V

    .line 187
    if-nez p1, :cond_1

    .line 194
    :cond_0
    :goto_0
    return v0

    .line 189
    :cond_1
    iget v1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    and-int/lit8 v1, v1, 0x3

    if-nez v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_PendingRemovingSubMedia:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_PendingAddingSubMedia:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->commitSubMediaChanges()V

    .line 194
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public addToAlbum(JI)Z
    .locals 9
    .param p1, "albumId"    # J
    .param p3, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 203
    iget-boolean v5, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_CanAddToAlbum:Z

    if-nez v5, :cond_1

    .line 249
    :cond_0
    :goto_0
    return v4

    .line 207
    :cond_1
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v5

    const-class v6, Lcom/oneplus/gallery2/media/AlbumManager;

    invoke-virtual {v5, v6}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AlbumManager;

    .line 208
    .local v0, "albumManager":Lcom/oneplus/gallery2/media/AlbumManager;
    if-nez v0, :cond_2

    .line 210
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "addToAlbum() - No AlbumManager"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 215
    :cond_2
    const/4 v3, 0x1

    .line 216
    .local v3, "success":Z
    iget-object v5, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_3

    .line 218
    iget-object v5, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/Media;

    .line 219
    .local v2, "media":Lcom/oneplus/gallery2/media/Media;
    invoke-interface {v2, p1, p2, p3}, Lcom/oneplus/gallery2/media/Media;->addToAlbum(JI)Z

    move-result v5

    if-nez v5, :cond_5

    .line 221
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addToAlbum() - Fail to add sub media "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to album "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v3, 0x0

    .line 228
    .end local v2    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_3
    if-eqz v3, :cond_4

    .line 230
    invoke-virtual {v0, p1, p2, p0}, Lcom/oneplus/gallery2/media/AlbumManager;->addMediaToAlbum(JLcom/oneplus/gallery2/media/Media;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 232
    const/4 v3, 0x0

    .line 233
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addToAlbum() - Fail to add "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to album "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_4
    if-nez v3, :cond_6

    .line 240
    iget-object v5, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    :goto_2
    if-ltz v1, :cond_0

    .line 242
    iget-object v5, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/Media;

    .line 243
    .restart local v2    # "media":Lcom/oneplus/gallery2/media/Media;
    invoke-virtual {v0, p1, p2, v2}, Lcom/oneplus/gallery2/media/AlbumManager;->removeMediaFromAlbum(JLcom/oneplus/gallery2/media/Media;)Z

    .line 240
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 216
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_1

    .line 249
    .end local v2    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_6
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method public canAddToAlbum()Z
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_CanAddToAlbum:Z

    return v0
.end method

.method protected final completeSubMediaUpdate()V
    .locals 1

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->verifyAccess()V

    .line 327
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaUpdateCounter:I

    if-gtz v0, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaUpdateCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaUpdateCounter:I

    .line 330
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaUpdateCounter:I

    if-nez v0, :cond_0

    .line 331
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->commitSubMediaChanges()V

    goto :goto_0
.end method

.method public contains(Lcom/oneplus/gallery2/media/Media;)Z
    .locals 1
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 339
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public delete(Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;
    .locals 8
    .param p1, "callback"    # Lcom/oneplus/gallery2/media/Media$DeletionCallback;
    .param p2, "flags"    # I

    .prologue
    const/4 v5, 0x0

    .line 348
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->verifyAccess()V

    .line 349
    iget v6, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    .line 351
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "delete() - Already deleting"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 409
    :cond_0
    :goto_0
    return-object v0

    .line 354
    :cond_1
    iget v6, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_2

    .line 356
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "delete() - Restoring"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 357
    goto :goto_0

    .line 361
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->commitSubMediaChanges()V

    .line 364
    iget v6, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    .line 365
    iget-object v6, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    iget-object v7, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/oneplus/gallery2/media/Media;

    .line 366
    .local v4, "subMedia":[Lcom/oneplus/gallery2/media/Media;
    iget-object v6, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 367
    new-instance v0, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;-><init>(Lcom/oneplus/gallery2/media/BaseGroupedMedia;Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)V

    .line 368
    .local v0, "handle":Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;
    sget v6, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->FLAG_MOVE_TO_RECYCE_BIN:I

    and-int/2addr v6, p2

    if-nez v6, :cond_7

    .line 370
    array-length v6, v4

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_3

    .line 372
    aget-object v2, v4, v1

    .line 373
    .local v2, "media":Lcom/oneplus/gallery2/media/Media;
    iget-object v6, v0, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->subDeletionHandles:Ljava/util/Map;

    iget-object v7, v0, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->wrappedCallback:Lcom/oneplus/gallery2/media/Media$DeletionCallback;

    invoke-interface {v2, v7, p2}, Lcom/oneplus/gallery2/media/Media;->delete(Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v7

    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 375
    .end local v2    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_3
    iget-object v6, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_RecycledSubMediaList:Ljava/util/List;

    if-eqz v6, :cond_5

    .line 377
    iget-object v6, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_RecycledSubMediaList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    :goto_2
    if-ltz v1, :cond_4

    .line 379
    iget-object v6, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_RecycledSubMediaList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/Media;

    .line 380
    .restart local v2    # "media":Lcom/oneplus/gallery2/media/Media;
    iget-object v6, v0, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->subDeletionHandles:Ljava/util/Map;

    iget-object v7, v0, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->wrappedCallback:Lcom/oneplus/gallery2/media/Media$DeletionCallback;

    invoke-interface {v2, v7, p2}, Lcom/oneplus/gallery2/media/Media;->delete(Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v7

    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 382
    .end local v2    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_4
    iput-object v5, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_RecycledSubMediaList:Ljava/util/List;

    .line 398
    :cond_5
    iget-object v5, v0, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->wrappedCallback:Lcom/oneplus/gallery2/media/Media$DeletionCallback;

    invoke-virtual {p0, v5, p2}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->deleteGroupedMediaItself(Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v3

    .line 399
    .local v3, "selfDeletionHandle":Lcom/oneplus/base/Handle;
    invoke-static {v3}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 400
    iget-object v5, v0, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->subDeletionHandles:Ljava/util/Map;

    invoke-interface {v5, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    :cond_6
    iget v5, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    and-int/lit8 v5, v5, -0x2

    iput v5, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    .line 404
    iget v5, v0, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->numberOfCompletedHandles:I

    iget v6, v0, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->numberOfCancelledHandles:I

    add-int/2addr v5, v6

    iget-object v6, v0, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->subDeletionHandles:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-ne v5, v6, :cond_0

    if-eqz p1, :cond_0

    .line 407
    const/4 v5, 0x1

    invoke-virtual {p1, p0, v5, p2}, Lcom/oneplus/gallery2/media/Media$DeletionCallback;->onDeletionCompleted(Lcom/oneplus/gallery2/media/Media;ZI)V

    goto/16 :goto_0

    .line 387
    .end local v1    # "i":I
    .end local v3    # "selfDeletionHandle":Lcom/oneplus/base/Handle;
    :cond_7
    iget-object v5, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_RecycledSubMediaList:Ljava/util/List;

    if-nez v5, :cond_8

    .line 388
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_RecycledSubMediaList:Ljava/util/List;

    .line 389
    :cond_8
    array-length v5, v4

    add-int/lit8 v1, v5, -0x1

    .restart local v1    # "i":I
    :goto_3
    if-ltz v1, :cond_5

    .line 391
    aget-object v2, v4, v1

    .line 392
    .restart local v2    # "media":Lcom/oneplus/gallery2/media/Media;
    iget-object v5, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_RecycledSubMediaList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    iget-object v5, v0, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->subDeletionHandles:Ljava/util/Map;

    iget-object v6, v0, Lcom/oneplus/gallery2/media/BaseGroupedMedia$DeletionHandle;->wrappedCallback:Lcom/oneplus/gallery2/media/Media$DeletionCallback;

    invoke-interface {v2, v6, p2}, Lcom/oneplus/gallery2/media/Media;->delete(Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    add-int/lit8 v1, v1, -0x1

    goto :goto_3
.end method

.method protected abstract deleteGroupedMediaItself(Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;
.end method

.method public getAddress()Landroid/location/Address;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_Address:Landroid/location/Address;

    return-object v0
.end method

.method public getCacheKey()Lcom/oneplus/gallery2/media/MediaCacheKey;
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_Cover:Lcom/oneplus/gallery2/media/Media;

    .line 438
    .local v0, "cover":Lcom/oneplus/gallery2/media/Media;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/Media;->getCacheKey()Lcom/oneplus/gallery2/media/MediaCacheKey;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_Cover:Lcom/oneplus/gallery2/media/Media;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_Cover:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

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
    .line 455
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_Cover:Lcom/oneplus/gallery2/media/Media;

    return-object v0
.end method

.method public getDetails(Lcom/oneplus/gallery2/media/Media$DetailsCallback;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p1, "callback"    # Lcom/oneplus/gallery2/media/Media$DetailsCallback;

    .prologue
    .line 463
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->verifyAccess()V

    .line 464
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_Cover:Lcom/oneplus/gallery2/media/Media;

    if-nez v0, :cond_1

    .line 465
    :cond_0
    const/4 v0, 0x0

    .line 466
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_Cover:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v0, p1}, Lcom/oneplus/gallery2/media/Media;->getDetails(Lcom/oneplus/gallery2/media/Media$DetailsCallback;)Lcom/oneplus/base/Handle;

    move-result-object v0

    goto :goto_0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_FilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 482
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_FileSize:J

    return-wide v0
.end method

.method public getLastModifiedTime()J
    .locals 2

    .prologue
    .line 490
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_LastModifiedTime:J

    return-wide v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_Location:Landroid/location/Location;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_Cover:Lcom/oneplus/gallery2/media/Media;

    .line 507
    .local v0, "cover":Lcom/oneplus/gallery2/media/Media;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/Media;->getMimeType()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPreviousAddress()Landroid/location/Address;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_PrevAddress:Landroid/location/Address;

    return-object v0
.end method

.method public getPreviousFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_PrevFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_PrevLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getPreviousTakenTime()J
    .locals 2

    .prologue
    .line 539
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_PrevTakenTime:J

    return-wide v0
.end method

.method public getSize(Lcom/oneplus/gallery2/media/Media$SizeCallback;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p1, "callback"    # Lcom/oneplus/gallery2/media/Media$SizeCallback;

    .prologue
    .line 547
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_Cover:Lcom/oneplus/gallery2/media/Media;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_Cover:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v0, p1}, Lcom/oneplus/gallery2/media/Media;->getSize(Lcom/oneplus/gallery2/media/Media$SizeCallback;)Lcom/oneplus/base/Handle;

    move-result-object v0

    .line 549
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final getSubMedia(I)Lcom/oneplus/gallery2/media/Media;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/oneplus/gallery2/media/Media;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 571
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
    .line 559
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    return-object v0
.end method

.method public getSubMediaCount()I
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTakenTime()J
    .locals 2

    .prologue
    .line 587
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_TakenTime:J

    return-wide v0
.end method

.method public isCapturedByFrontCamera()Z
    .locals 1

    .prologue
    .line 595
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFavorite()Z
    .locals 1

    .prologue
    .line 603
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFavoriteSupported()Z
    .locals 1

    .prologue
    .line 611
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_InternalFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected notifySubMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 3
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "flags"    # I

    .prologue
    .line 622
    if-nez p1, :cond_1

    .line 636
    :cond_0
    return-void

    .line 624
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_Cover:Lcom/oneplus/gallery2/media/Media;

    if-ne p1, v2, :cond_2

    sget v2, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->SUB_MEDIA_UPDATE_FLAGS_MASK:I

    and-int/2addr v2, p2

    if-eqz v2, :cond_2

    .line 625
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_Cover:Lcom/oneplus/gallery2/media/Media;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->onUpdate(Lcom/oneplus/gallery2/media/Media;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->notifyUpdated(I)V

    .line 626
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->syncStateFromSubMedia()V

    .line 627
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_OpenedSubMediaLists:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 629
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_OpenedSubMediaLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 631
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_OpenedSubMediaLists:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/BaseGroupedMedia$SubMediaList;

    .line 632
    .local v1, "mediaList":Lcom/oneplus/gallery2/media/BaseGroupedMedia$SubMediaList;
    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/BaseGroupedMedia$SubMediaList;->getComparator()Lcom/oneplus/gallery2/media/MediaComparator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/gallery2/media/MediaComparator;->getEffectiveMediaUpdateFlags()I

    move-result v2

    and-int/2addr v2, p2

    if-eqz v2, :cond_3

    .line 633
    invoke-virtual {v1, p1}, Lcom/oneplus/gallery2/media/BaseGroupedMedia$SubMediaList;->checkMediaIndex(Lcom/oneplus/gallery2/media/Media;)Z

    .line 629
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method protected notifyUpdated(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    .line 645
    if-nez p1, :cond_0

    .line 654
    :goto_0
    return-void

    .line 647
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    .line 648
    .local v0, "source":Lcom/oneplus/gallery2/media/MediaSource;
    iget v1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaUpdateCounter:I

    if-lez v1, :cond_1

    .line 649
    iget v1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_PendingUpdateFlags:I

    or-int/2addr v1, p1

    iput v1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_PendingUpdateFlags:I

    goto :goto_0

    .line 650
    :cond_1
    instance-of v1, v0, Lcom/oneplus/gallery2/media/BaseMediaSource;

    if-eqz v1, :cond_2

    .line 651
    check-cast v0, Lcom/oneplus/gallery2/media/BaseMediaSource;

    .end local v0    # "source":Lcom/oneplus/gallery2/media/MediaSource;
    invoke-virtual {v0, p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSource;->notifyMediaUpdatedByItself(Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_0

    .line 653
    .restart local v0    # "source":Lcom/oneplus/gallery2/media/MediaSource;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notifyUpdated() - No implementation"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCoverChanged(Lcom/oneplus/gallery2/media/Media;)V
    .locals 0
    .param p1, "cover"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 662
    return-void
.end method

.method protected onSubMediaAdded(Lcom/oneplus/gallery2/media/Media;)V
    .locals 0
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 670
    return-void
.end method

.method protected onSubMediaChanged()V
    .locals 0

    .prologue
    .line 678
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->syncStateFromSubMedia()V

    .line 679
    return-void
.end method

.method protected onSubMediaRemoved(Lcom/oneplus/gallery2/media/Media;)V
    .locals 0
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 695
    return-void
.end method

.method protected onUpdate(Lcom/oneplus/gallery2/media/Media;)I
    .locals 12
    .param p1, "cover"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 712
    if-eqz p1, :cond_8

    .line 714
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getAddress()Landroid/location/Address;

    move-result-object v0

    .line 715
    .local v0, "address":Landroid/location/Address;
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 716
    .local v1, "filePath":Ljava/lang/String;
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getFileSize()J

    move-result-wide v2

    .line 717
    .local v2, "fileSize":J
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getLocation()Landroid/location/Location;

    move-result-object v4

    .line 718
    .local v4, "location":Landroid/location/Location;
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getLastModifiedTime()J

    move-result-wide v6

    .line 719
    .local v6, "modifiedTime":J
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getTakenTime()J

    move-result-wide v8

    .line 732
    .local v8, "takenTime":J
    :goto_0
    const/4 v5, 0x0

    .line 733
    .local v5, "updateFlags":I
    iget-object v10, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_FilePath:Ljava/lang/String;

    invoke-static {v10, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 735
    iget-object v10, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_FilePath:Ljava/lang/String;

    iput-object v10, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_PrevFilePath:Ljava/lang/String;

    .line 736
    iput-object v1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_FilePath:Ljava/lang/String;

    .line 737
    sget v10, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->FLAG_FILE_PATH_CHANGED:I

    or-int/2addr v5, v10

    .line 741
    :cond_0
    iget-wide v10, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_FileSize:J

    cmp-long v10, v10, v2

    if-eqz v10, :cond_1

    .line 743
    iput-wide v2, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_FileSize:J

    .line 744
    sget v10, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->FLAG_FILE_SIZE_CHANGED:I

    or-int/2addr v5, v10

    .line 748
    :cond_1
    iget-wide v10, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_LastModifiedTime:J

    cmp-long v10, v10, v6

    if-eqz v10, :cond_2

    .line 750
    iput-wide v6, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_LastModifiedTime:J

    .line 751
    sget v10, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->FLAG_LAST_MODIFIED_TIME_CHANGED:I

    or-int/2addr v5, v10

    .line 755
    :cond_2
    iget-wide v10, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_TakenTime:J

    cmp-long v10, v10, v8

    if-eqz v10, :cond_3

    .line 757
    iget-wide v10, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_TakenTime:J

    iput-wide v10, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_PrevTakenTime:J

    .line 758
    iput-wide v8, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_TakenTime:J

    .line 759
    sget v10, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->FLAG_TAKEN_TIME_CHANGED:I

    or-int/2addr v5, v10

    .line 763
    :cond_3
    iget-object v10, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_Location:Landroid/location/Location;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_Location:Landroid/location/Location;

    invoke-virtual {v10, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    :cond_4
    if-eqz v4, :cond_6

    iget-object v10, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_Location:Landroid/location/Location;

    invoke-virtual {v4, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 765
    :cond_5
    iget-object v10, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_Location:Landroid/location/Location;

    iput-object v10, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_PrevLocation:Landroid/location/Location;

    .line 766
    iput-object v4, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_Location:Landroid/location/Location;

    .line 767
    sget v10, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->FLAG_LOCATION_CHANGED:I

    or-int/2addr v5, v10

    .line 771
    :cond_6
    iget-object v10, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_Address:Landroid/location/Address;

    if-eq v10, v0, :cond_7

    .line 773
    iget-object v10, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_Address:Landroid/location/Address;

    iput-object v10, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_PrevAddress:Landroid/location/Address;

    .line 774
    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_Address:Landroid/location/Address;

    .line 775
    sget v10, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->FLAG_ADDRESS_CHANGED:I

    or-int/2addr v5, v10

    .line 779
    :cond_7
    return v5

    .line 723
    .end local v0    # "address":Landroid/location/Address;
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v2    # "fileSize":J
    .end local v4    # "location":Landroid/location/Location;
    .end local v5    # "updateFlags":I
    .end local v6    # "modifiedTime":J
    .end local v8    # "takenTime":J
    :cond_8
    const/4 v0, 0x0

    .line 724
    .restart local v0    # "address":Landroid/location/Address;
    const/4 v1, 0x0

    .line 725
    .restart local v1    # "filePath":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 726
    .restart local v2    # "fileSize":J
    const/4 v4, 0x0

    .line 727
    .restart local v4    # "location":Landroid/location/Location;
    const-wide/16 v6, 0x0

    .line 728
    .restart local v6    # "modifiedTime":J
    const-wide/16 v8, 0x0

    .restart local v8    # "takenTime":J
    goto :goto_0
.end method

.method public openInputStream(I)Ljava/io/InputStream;
    .locals 3
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 787
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_Cover:Lcom/oneplus/gallery2/media/Media;

    .line 788
    .local v0, "cover":Lcom/oneplus/gallery2/media/Media;
    if-eqz v0, :cond_0

    .line 789
    invoke-interface {v0, p1}, Lcom/oneplus/gallery2/media/Media;->openInputStream(I)Ljava/io/InputStream;

    move-result-object v1

    return-object v1

    .line 790
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "No cover media to open input stream"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public openSubMediaList(Lcom/oneplus/gallery2/media/MediaComparator;I)Lcom/oneplus/gallery2/media/MediaList;
    .locals 3
    .param p1, "comparator"    # Lcom/oneplus/gallery2/media/MediaComparator;
    .param p2, "flags"    # I

    .prologue
    .line 799
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->verifyAccess()V

    .line 800
    if-nez p1, :cond_0

    .line 801
    sget-object p1, Lcom/oneplus/gallery2/media/MediaComparator;->FILE_PATH_ASC:Lcom/oneplus/gallery2/media/MediaComparator;

    .line 804
    :cond_0
    new-instance v0, Lcom/oneplus/gallery2/media/BaseGroupedMedia$SubMediaList;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/gallery2/media/BaseGroupedMedia$SubMediaList;-><init>(Lcom/oneplus/gallery2/media/BaseGroupedMedia;Lcom/oneplus/gallery2/media/MediaComparator;)V

    .line 805
    .local v0, "mediaList":Lcom/oneplus/gallery2/media/BaseGroupedMedia$SubMediaList;
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaComparator:Lcom/oneplus/gallery2/media/MediaComparator;

    if-ne p1, v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/oneplus/gallery2/media/BaseGroupedMedia$SubMediaList;->addMedia(Ljava/util/List;Z)V

    .line 806
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_OpenedSubMediaLists:Ljava/util/List;

    if-nez v1, :cond_1

    .line 807
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_OpenedSubMediaLists:Ljava/util/List;

    .line 808
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_OpenedSubMediaLists:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 811
    return-object v0

    .line 805
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public peekSize()Landroid/util/Size;
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_Cover:Lcom/oneplus/gallery2/media/Media;

    if-eqz v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_Cover:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/Media;->peekSize()Landroid/util/Size;

    move-result-object v0

    .line 821
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeFromAlbum(JI)Z
    .locals 7
    .param p1, "albumId"    # J
    .param p3, "flags"    # I

    .prologue
    const/4 v3, 0x0

    .line 830
    iget-boolean v4, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_CanAddToAlbum:Z

    if-nez v4, :cond_0

    .line 851
    :goto_0
    return v3

    .line 834
    :cond_0
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v4

    const-class v5, Lcom/oneplus/gallery2/media/AlbumManager;

    invoke-virtual {v4, v5}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AlbumManager;

    .line 835
    .local v0, "albumManager":Lcom/oneplus/gallery2/media/AlbumManager;
    if-nez v0, :cond_1

    .line 837
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "removeFromAlbum() - No AlbumManager"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 842
    :cond_1
    const/4 v3, 0x0

    .line 843
    .local v3, "success":Z
    iget-object v4, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 845
    iget-object v4, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/Media;

    .line 846
    .local v2, "media":Lcom/oneplus/gallery2/media/Media;
    invoke-interface {v2, p1, p2, p3}, Lcom/oneplus/gallery2/media/Media;->removeFromAlbum(JI)Z

    move-result v4

    or-int/2addr v3, v4

    .line 843
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 850
    .end local v2    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_2
    invoke-virtual {v0, p1, p2, p0}, Lcom/oneplus/gallery2/media/AlbumManager;->removeMediaFromAlbum(JLcom/oneplus/gallery2/media/Media;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 851
    goto :goto_0
.end method

.method protected removeSubMedia(Lcom/oneplus/gallery2/media/Media;)Z
    .locals 2
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    const/4 v0, 0x0

    .line 862
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->verifyAccess()V

    .line 863
    if-nez p1, :cond_1

    .line 868
    :cond_0
    :goto_0
    return v0

    .line 865
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_PendingAddingSubMedia:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_PendingRemovingSubMedia:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 867
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->commitSubMediaChanges()V

    .line 868
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected setCover(Lcom/oneplus/gallery2/media/Media;)V
    .locals 2
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 897
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->verifyAccess()V

    .line 898
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_Cover:Lcom/oneplus/gallery2/media/Media;

    if-ne v1, p1, :cond_0

    .line 911
    :goto_0
    return-void

    .line 902
    :cond_0
    iput-object p1, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_Cover:Lcom/oneplus/gallery2/media/Media;

    .line 903
    sget v0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->FLAG_COVER_CHANGED:I

    .line 906
    .local v0, "updateFlags":I
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->onCoverChanged(Lcom/oneplus/gallery2/media/Media;)V

    .line 907
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->onUpdate(Lcom/oneplus/gallery2/media/Media;)I

    move-result v1

    or-int/2addr v0, v1

    .line 910
    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->notifyUpdated(I)V

    goto :goto_0
.end method

.method public setFavorite(Z)Z
    .locals 7
    .param p1, "favorite"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 918
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->verifyAccess()V

    .line 919
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->isFavoriteSupported()Z

    move-result v2

    if-nez v2, :cond_1

    .line 932
    :cond_0
    :goto_0
    return v5

    .line 921
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 923
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    .line 924
    .local v1, "media":Lcom/oneplus/gallery2/media/Media;
    invoke-interface {v1}, Lcom/oneplus/gallery2/media/Media;->isFavoriteSupported()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1, p1}, Lcom/oneplus/gallery2/media/Media;->setFavorite(Z)Z

    move-result v2

    if-nez v2, :cond_3

    .line 926
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setFavorite() - Fail to update favorite state of "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_2
    if-ltz v0, :cond_0

    .line 928
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/Media;

    if-nez p1, :cond_2

    move v3, v4

    :goto_3
    invoke-interface {v2, v3}, Lcom/oneplus/gallery2/media/Media;->setFavorite(Z)Z

    .line 927
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    move v3, v5

    .line 928
    goto :goto_3

    .line 921
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v1    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_4
    move v5, v4

    .line 932
    goto :goto_0
.end method

.method protected final startSubMediaUpdate()V
    .locals 1

    .prologue
    .line 941
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->verifyAccess()V

    .line 942
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaUpdateCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->m_SubMediaUpdateCounter:I

    .line 943
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1000
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
