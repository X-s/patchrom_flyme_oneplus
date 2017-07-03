.class public abstract Lcom/oneplus/gallery2/media/BaseMediaSet;
.super Lcom/oneplus/base/BasicBaseObject;
.source "BaseMediaSet.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/MediaSet;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/media/BaseMediaSet$6;,
        Lcom/oneplus/gallery2/media/BaseMediaSet$CommitMediaSyncRunnable;,
        Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;
    }
.end annotation


# static fields
.field private static final COVER_MEDIA_UPDATE_FLAGS_MASK:I

.field private static final DURATION_COMMIT_MEDIA_SYNC_DELAY:J = 0x1f4L


# instance fields
.field private final m_CoverMediaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;"
        }
    .end annotation
.end field

.field private m_Extra:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private m_IsDelayedMediaSyncCommitScheduled:Z

.field private m_LocaleChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private final m_Media:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;"
        }
    .end annotation
.end field

.field private m_MediaChangeCBHandle:Lcom/oneplus/base/Handle;

.field private m_MediaIterationClientHandle:Lcom/oneplus/base/Handle;

.field private m_MediaIterationStartTime:J

.field private final m_MediaTableStateChangedCB:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final m_OpenedMediaLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final m_PendingAddingMedia:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;"
        }
    .end annotation
.end field

.field private final m_PendingRemovingMedia:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;"
        }
    .end annotation
.end field

.field private m_PhotoCount:I

.field private final m_Source:Lcom/oneplus/gallery2/media/MediaSource;

.field private final m_TargetMediaType:Lcom/oneplus/gallery2/media/MediaType;

.field private m_VideoCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 106
    sget v0, Lcom/oneplus/gallery2/media/Media;->FLAG_LAST_MODIFIED_TIME_CHANGED:I

    sget v1, Lcom/oneplus/gallery2/media/GroupedMedia;->FLAG_COVER_CHANGED:I

    or-int/2addr v0, v1

    sput v0, Lcom/oneplus/gallery2/media/BaseMediaSet;->COVER_MEDIA_UPDATE_FLAGS_MASK:I

    .line 107
    return-void
.end method

.method protected constructor <init>(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/MediaType;)V
    .locals 4
    .param p1, "source"    # Lcom/oneplus/gallery2/media/MediaSource;
    .param p2, "targetMediaType"    # Lcom/oneplus/gallery2/media/MediaType;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/oneplus/base/BasicBaseObject;-><init>()V

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_CoverMediaList:Ljava/util/List;

    .line 43
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Media:Ljava/util/Set;

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    .line 48
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PendingAddingMedia:Ljava/util/Set;

    .line 49
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PendingRemovingMedia:Ljava/util/Set;

    .line 57
    new-instance v1, Lcom/oneplus/gallery2/media/BaseMediaSet$1;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery2/media/BaseMediaSet$1;-><init>(Lcom/oneplus/gallery2/media/BaseMediaSet;)V

    iput-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_MediaTableStateChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    .line 118
    if-nez p1, :cond_0

    .line 119
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No media source"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    :cond_0
    sget-object v1, Lcom/oneplus/gallery2/media/MediaType;->UNKNOWN:Lcom/oneplus/gallery2/media/MediaType;

    if-ne p2, v1, :cond_1

    .line 121
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No target media type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    :cond_1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Source:Lcom/oneplus/gallery2/media/MediaSource;

    .line 125
    iput-object p2, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_TargetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    .line 128
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->onPrepareLocaleChangedCallback()Lcom/oneplus/base/PropertyChangedCallback;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_LocaleChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 129
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_LocaleChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    if-eqz v1, :cond_2

    .line 130
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v1

    sget-object v2, Lcom/oneplus/base/BaseApplication;->PROP_LOCALE:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_LocaleChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/base/BaseApplication;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 133
    :cond_2
    sget-object v1, Lcom/oneplus/gallery2/media/MediaSource;->PROP_IS_MEDIA_TABLE_READY:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v1}, Lcom/oneplus/gallery2/media/MediaSource;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_5

    .line 134
    sget-object v1, Lcom/oneplus/gallery2/media/MediaSource;->PROP_IS_MEDIA_TABLE_READY:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_MediaTableStateChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v1, v2}, Lcom/oneplus/gallery2/media/MediaSource;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 137
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->canSyncMediaBeforeMediaTableReady()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 138
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->setupMedia()V

    .line 141
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->getNameResourceId()I

    move-result v0

    .line 142
    .local v0, "titleResId":I
    if-eqz v0, :cond_4

    .line 143
    sget-object v1, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/oneplus/base/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/gallery2/media/BaseMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 146
    :cond_4
    sget-object v1, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_COVER_HASH_CODE:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/gallery2/media/BaseMediaSet;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 148
    return-void

    .line 136
    .end local v0    # "titleResId":I
    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->onMediaTableReady()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/oneplus/gallery2/media/BaseMediaSet;Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/BaseMediaSet;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSet;->onMediaListReleased(Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;)V

    return-void
.end method

.method static synthetic access$102(Lcom/oneplus/gallery2/media/BaseMediaSet;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/BaseMediaSet;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_IsDelayedMediaSyncCommitScheduled:Z

    return p1
.end method

.method private onMediaListReleased(Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;)V
    .locals 5
    .param p1, "mediaList"    # Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;

    .prologue
    .line 635
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 638
    :goto_0
    return-void

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->TAG:Ljava/lang/String;

    const-string v1, "["

    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "] onMediaListReleased() - Opened media list count : "

    iget-object v4, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private setupMedia()V
    .locals 2

    .prologue
    .line 935
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_MediaChangeCBHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 936
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->onPrepareMediaChangeCallback()Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_MediaChangeCBHandle:Lcom/oneplus/base/Handle;

    .line 937
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_MediaIterationClientHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 938
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->onPrepareMediaIterationClient()Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_MediaIterationClientHandle:Lcom/oneplus/base/Handle;

    .line 941
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_MediaIterationClientHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 942
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Source:Lcom/oneplus/gallery2/media/MediaSource;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oneplus/gallery2/media/MediaSource;->scheduleMediaIteration(I)Z

    .line 943
    :cond_2
    return-void
.end method

.method private shouldContainsMediaInternal(Lcom/oneplus/gallery2/media/Media;I)Z
    .locals 2
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "flags"    # I

    .prologue
    .line 961
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_TargetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_TargetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    if-eq v0, v1, :cond_0

    .line 962
    const/4 v0, 0x0

    .line 963
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/media/BaseMediaSet;->shouldContainsMedia(Lcom/oneplus/gallery2/media/Media;I)Z

    move-result v0

    goto :goto_0
.end method

.method private updateCoverHashCode()V
    .locals 8

    .prologue
    .line 986
    sget-object v5, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_IS_DELETING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/gallery2/media/BaseMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1008
    :goto_0
    return-void

    .line 988
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 989
    .local v2, "hashCodeBuffer":Ljava/lang/StringBuilder;
    const/16 v5, 0x5b

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 990
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    const/16 v5, 0x5d

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 992
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v5, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_CoverMediaList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    :goto_1
    if-ge v3, v0, :cond_3

    .line 994
    iget-object v5, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_CoverMediaList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery2/media/Media;

    .line 995
    .local v4, "media":Lcom/oneplus/gallery2/media/Media;
    instance-of v5, v4, Lcom/oneplus/gallery2/media/GroupedMedia;

    if-eqz v5, :cond_1

    move-object v5, v4

    .line 997
    check-cast v5, Lcom/oneplus/gallery2/media/GroupedMedia;

    invoke-interface {v5}, Lcom/oneplus/gallery2/media/GroupedMedia;->getCover()Lcom/oneplus/gallery2/media/Media;

    move-result-object v1

    .line 998
    .local v1, "cover":Lcom/oneplus/gallery2/media/Media;
    if-eqz v1, :cond_1

    .line 999
    move-object v4, v1

    .line 1001
    .end local v1    # "cover":Lcom/oneplus/gallery2/media/Media;
    :cond_1
    if-lez v3, :cond_2

    .line 1002
    const/16 v5, 0x2c

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1003
    :cond_2
    invoke-interface {v4}, Lcom/oneplus/gallery2/media/Media;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    const/16 v5, 0x3a

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1005
    invoke-interface {v4}, Lcom/oneplus/gallery2/media/Media;->getLastModifiedTime()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 992
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1007
    .end local v4    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_3
    sget-object v5, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_COVER_HASH_CODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/oneplus/gallery2/media/BaseMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private updateCoverMediaList()V
    .locals 6

    .prologue
    const/16 v5, 0xc

    .line 1014
    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_CoverMediaList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1015
    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Media:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-le v3, v5, :cond_1

    .line 1017
    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Media:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/Media;

    .line 1019
    .local v2, "media":Lcom/oneplus/gallery2/media/Media;
    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_CoverMediaList:Ljava/util/List;

    sget-object v4, Lcom/oneplus/gallery2/media/BaseMediaSet;->COVER_MEDIA_COMPARATOR:Lcom/oneplus/gallery2/media/MediaComparator;

    invoke-static {v3, v2, v4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v3

    xor-int/lit8 v1, v3, -0x1

    .line 1020
    .local v1, "index":I
    if-ltz v1, :cond_0

    if-ge v1, v5, :cond_0

    .line 1021
    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_CoverMediaList:Ljava/util/List;

    invoke-interface {v3, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 1026
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "index":I
    .end local v2    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_1
    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_CoverMediaList:Ljava/util/List;

    iget-object v4, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Media:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1027
    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_CoverMediaList:Ljava/util/List;

    sget-object v4, Lcom/oneplus/gallery2/media/BaseMediaSet;->COVER_MEDIA_COMPARATOR:Lcom/oneplus/gallery2/media/MediaComparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1029
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->updateCoverHashCode()V

    .line 1030
    return-void
.end method


# virtual methods
.method protected addMedia(Lcom/oneplus/gallery2/media/Media;Z)Z
    .locals 2
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "commit"    # Z

    .prologue
    const/4 v0, 0x0

    .line 159
    if-nez p1, :cond_1

    .line 170
    :cond_0
    :goto_0
    return v0

    .line 161
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Media:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PendingRemovingMedia:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 165
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PendingAddingMedia:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    :cond_2
    if-eqz p2, :cond_3

    .line 169
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->commitMediaSync()V

    .line 170
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected addMediaToMediaLists(Lcom/oneplus/gallery2/media/Media;)V
    .locals 2
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 180
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 181
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;

    invoke-virtual {v1, p1}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->addMedia(Lcom/oneplus/gallery2/media/Media;)I

    .line 180
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 182
    :cond_0
    return-void
.end method

.method protected addMediaToMediaLists(Ljava/util/Collection;)V
    .locals 5
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
    .line 192
    .local p1, "media":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/oneplus/gallery2/media/Media;>;"
    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 208
    :cond_0
    return-void

    .line 196
    :cond_1
    const/4 v0, 0x0

    .line 197
    .local v0, "comparator":Lcom/oneplus/gallery2/media/MediaComparator;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 198
    .local v3, "sortedMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/Media;>;"
    iget-object v4, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 200
    iget-object v4, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;

    .line 201
    .local v2, "mediaList":Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;
    invoke-virtual {v2}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->getComparator()Lcom/oneplus/gallery2/media/MediaComparator;

    move-result-object v4

    if-eq v4, v0, :cond_2

    .line 203
    invoke-virtual {v2}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->getComparator()Lcom/oneplus/gallery2/media/MediaComparator;

    move-result-object v0

    .line 204
    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 206
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->addMedia(Ljava/util/List;Z)V

    .line 198
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method protected canSyncMediaBeforeMediaTableReady()Z
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x1

    return v0
.end method

.method protected checkMediaPositionInMediaLists(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 3
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "updateFlags"    # I

    .prologue
    .line 228
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 230
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;

    .line 231
    .local v1, "mediaList":Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;
    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->getComparator()Lcom/oneplus/gallery2/media/MediaComparator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/gallery2/media/MediaComparator;->getEffectiveMediaUpdateFlags()I

    move-result v2

    and-int/2addr v2, p2

    if-eqz v2, :cond_0

    .line 232
    invoke-virtual {v1, p1}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->checkMediaIndex(Lcom/oneplus/gallery2/media/Media;)Z

    .line 228
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 234
    .end local v1    # "mediaList":Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;
    :cond_1
    return-void
.end method

.method protected clearExtras()V
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Extra:Landroid/util/LongSparseArray;

    .line 243
    return-void
.end method

.method protected clearMedia()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 252
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->verifyAccess()V

    .line 253
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Media:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    :goto_0
    return-void

    .line 257
    :cond_0
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PhotoCount:I

    .line 258
    .local v0, "prevPhotoCount":I
    iget v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_VideoCount:I

    .line 259
    .local v1, "prevVideoCount":I
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PendingAddingMedia:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 260
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PendingRemovingMedia:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 261
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Media:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 262
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_CoverMediaList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 263
    iput v3, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PhotoCount:I

    .line 264
    iput v3, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_VideoCount:I

    .line 265
    sget-object v2, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PhotoCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/oneplus/gallery2/media/BaseMediaSet;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 266
    sget-object v2, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_VIDEO_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_VideoCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/oneplus/gallery2/media/BaseMediaSet;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 267
    sget-object v2, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/gallery2/media/BaseMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 268
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->updateCoverHashCode()V

    goto :goto_0
.end method

.method protected commitMediaSync()V
    .locals 11

    .prologue
    const/16 v10, 0xc

    .line 278
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->verifyAccess()V

    .line 281
    const/4 v6, 0x0

    .line 282
    .local v6, "photoCountDiff":I
    const/4 v7, 0x0

    .line 283
    .local v7, "videoCountDiff":I
    const/4 v4, 0x0

    .line 284
    .local v4, "needToUpdateCoverMediaList":Z
    const/4 v3, 0x0

    .line 285
    .local v3, "needToUpdateCoverHashCode":Z
    iget-object v8, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PendingRemovingMedia:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 287
    const/4 v5, 0x0

    .line 288
    .local v5, "needToUpdateMediaLists":Z
    iget-object v8, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PendingRemovingMedia:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/Media;

    .line 290
    .local v2, "media":Lcom/oneplus/gallery2/media/Media;
    iget-object v8, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Media:Ljava/util/Set;

    invoke-interface {v8, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 292
    sget-object v8, Lcom/oneplus/gallery2/media/BaseMediaSet$6;->$SwitchMap$com$oneplus$gallery2$media$MediaType:[I

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/Media;->getType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/oneplus/gallery2/media/MediaType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    .line 295
    :pswitch_0
    add-int/lit8 v6, v6, -0x1

    .line 303
    :goto_1
    const/4 v5, 0x1

    .line 304
    if-nez v4, :cond_0

    .line 306
    iget-object v8, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_CoverMediaList:Ljava/util/List;

    sget-object v9, Lcom/oneplus/gallery2/media/BaseMediaSet;->COVER_MEDIA_COMPARATOR:Lcom/oneplus/gallery2/media/MediaComparator;

    invoke-static {v8, v2, v9}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 307
    .local v0, "coverIndex":I
    if-ltz v0, :cond_0

    .line 308
    const/4 v4, 0x1

    goto :goto_0

    .line 298
    .end local v0    # "coverIndex":I
    :pswitch_1
    add-int/lit8 v7, v7, -0x1

    .line 299
    goto :goto_1

    .line 312
    .end local v2    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_1
    if-eqz v5, :cond_2

    .line 313
    iget-object v8, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PendingRemovingMedia:Ljava/util/Set;

    invoke-virtual {p0, v8}, Lcom/oneplus/gallery2/media/BaseMediaSet;->removeMediaFromMediaLists(Ljava/util/Collection;)V

    .line 314
    :cond_2
    iget-object v8, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PendingRemovingMedia:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->clear()V

    .line 318
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "needToUpdateMediaLists":Z
    :cond_3
    iget-object v8, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PendingAddingMedia:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    .line 320
    const/4 v5, 0x0

    .line 321
    .restart local v5    # "needToUpdateMediaLists":Z
    iget-object v8, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PendingAddingMedia:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/Media;

    .line 323
    .restart local v2    # "media":Lcom/oneplus/gallery2/media/Media;
    iget-object v8, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Media:Ljava/util/Set;

    invoke-interface {v8, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 325
    sget-object v8, Lcom/oneplus/gallery2/media/BaseMediaSet$6;->$SwitchMap$com$oneplus$gallery2$media$MediaType:[I

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/Media;->getType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/oneplus/gallery2/media/MediaType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_1

    goto :goto_2

    .line 328
    :pswitch_2
    add-int/lit8 v6, v6, 0x1

    .line 336
    :goto_3
    const/4 v5, 0x1

    .line 337
    if-nez v4, :cond_4

    .line 339
    iget-object v8, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_CoverMediaList:Ljava/util/List;

    sget-object v9, Lcom/oneplus/gallery2/media/BaseMediaSet;->COVER_MEDIA_COMPARATOR:Lcom/oneplus/gallery2/media/MediaComparator;

    invoke-static {v8, v2, v9}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v8

    xor-int/lit8 v0, v8, -0x1

    .line 340
    .restart local v0    # "coverIndex":I
    if-ltz v0, :cond_4

    if-ge v0, v10, :cond_4

    .line 342
    iget-object v8, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_CoverMediaList:Ljava/util/List;

    invoke-interface {v8, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 343
    const/4 v3, 0x1

    .line 344
    :goto_4
    iget-object v8, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_CoverMediaList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v10, :cond_4

    .line 345
    iget-object v8, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_CoverMediaList:Ljava/util/List;

    iget-object v9, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_CoverMediaList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v8, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 331
    .end local v0    # "coverIndex":I
    :pswitch_3
    add-int/lit8 v7, v7, 0x1

    .line 332
    goto :goto_3

    .line 350
    .end local v2    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_5
    if-eqz v5, :cond_6

    .line 351
    iget-object v8, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PendingAddingMedia:Ljava/util/Set;

    invoke-virtual {p0, v8}, Lcom/oneplus/gallery2/media/BaseMediaSet;->addMediaToMediaLists(Ljava/util/Collection;)V

    .line 352
    :cond_6
    iget-object v8, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PendingAddingMedia:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->clear()V

    .line 356
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "needToUpdateMediaLists":Z
    :cond_7
    if-eqz v4, :cond_b

    .line 357
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->updateCoverMediaList()V

    .line 363
    :cond_8
    :goto_5
    if-eqz v6, :cond_9

    .line 366
    iget v8, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PhotoCount:I

    add-int/2addr v8, v6

    iput v8, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PhotoCount:I

    .line 367
    sget-object v8, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    iget v9, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PhotoCount:I

    sub-int/2addr v9, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v10, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PhotoCount:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p0, v8, v9, v10}, Lcom/oneplus/gallery2/media/BaseMediaSet;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 369
    :cond_9
    if-eqz v7, :cond_a

    .line 372
    iget v8, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_VideoCount:I

    add-int/2addr v8, v7

    iput v8, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_VideoCount:I

    .line 373
    sget-object v8, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_VIDEO_COUNT:Lcom/oneplus/base/PropertyKey;

    iget v9, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_VideoCount:I

    sub-int/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v10, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_VideoCount:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p0, v8, v9, v10}, Lcom/oneplus/gallery2/media/BaseMediaSet;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 375
    :cond_a
    sget-object v8, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v9, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Media:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/oneplus/gallery2/media/BaseMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 376
    return-void

    .line 358
    :cond_b
    if-eqz v3, :cond_8

    .line 359
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->updateCoverHashCode()V

    goto :goto_5

    .line 292
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 325
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected completeDeletion(Lcom/oneplus/base/Handle;ZI)V
    .locals 3
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "success"    # Z
    .param p3, "flags"    # I

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->verifyAccess()V

    .line 390
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/oneplus/base/CallbackHandle;

    if-nez v1, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    sget-object v1, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_IS_DELETING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/media/BaseMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 396
    check-cast v0, Lcom/oneplus/base/CallbackHandle;

    .line 397
    .local v0, "deletionHandle":Lcom/oneplus/base/CallbackHandle;, "Lcom/oneplus/base/CallbackHandle<Lcom/oneplus/gallery2/media/MediaSet$DeletionCallback;>;"
    invoke-virtual {v0}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 398
    invoke-virtual {v0}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/MediaSet$DeletionCallback;

    invoke-virtual {v1, p0, p2, p3}, Lcom/oneplus/gallery2/media/MediaSet$DeletionCallback;->onDeletionCompleted(Lcom/oneplus/gallery2/media/MediaSet;ZI)V

    .line 401
    :cond_2
    sget-object v1, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_IS_DELETING:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/gallery2/media/BaseMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 404
    if-eqz p2, :cond_3

    .line 406
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_CoverMediaList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 407
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->updateCoverHashCode()V

    .line 411
    :cond_3
    invoke-virtual {p0, p2, p3}, Lcom/oneplus/gallery2/media/BaseMediaSet;->onDeletionCompleted(ZI)V

    .line 412
    if-eqz p2, :cond_4

    .line 414
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->clearMedia()V

    .line 415
    sget-object v1, Lcom/oneplus/gallery2/media/BaseMediaSet;->EVENT_DELETED:Lcom/oneplus/base/EventKey;

    sget-object v2, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/gallery2/media/BaseMediaSet;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    goto :goto_0

    .line 417
    :cond_4
    sget-object v1, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/media/BaseMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 418
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->commitMediaSync()V

    goto :goto_0
.end method

.method public contains(Lcom/oneplus/gallery2/media/Media;)Z
    .locals 1
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 426
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Media:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public delete(Lcom/oneplus/gallery2/media/MediaSet$DeletionCallback;I)Lcom/oneplus/base/Handle;
    .locals 4
    .param p1, "callback"    # Lcom/oneplus/gallery2/media/MediaSet$DeletionCallback;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 435
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->verifyAccess()V

    .line 436
    sget-object v1, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/media/BaseMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_IS_DELETING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/media/BaseMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object v0, v2

    .line 452
    :goto_0
    return-object v0

    .line 440
    :cond_1
    sget-object v1, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_IS_DELETING:Lcom/oneplus/base/PropertyKey;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/oneplus/gallery2/media/BaseMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 443
    new-instance v0, Lcom/oneplus/gallery2/media/BaseMediaSet$2;

    const-string v1, "DeleteMediaSet"

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/oneplus/gallery2/media/BaseMediaSet$2;-><init>(Lcom/oneplus/gallery2/media/BaseMediaSet;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSet$DeletionCallback;Landroid/os/Handler;)V

    .line 449
    .local v0, "handle":Lcom/oneplus/base/CallbackHandle;, "Lcom/oneplus/base/CallbackHandle<Lcom/oneplus/gallery2/media/MediaSet$DeletionCallback;>;"
    if-eqz p1, :cond_2

    .line 450
    invoke-virtual {p1, p0, p2}, Lcom/oneplus/gallery2/media/MediaSet$DeletionCallback;->onDeletionStarted(Lcom/oneplus/gallery2/media/MediaSet;I)V

    .line 451
    :cond_2
    invoke-virtual {p0, v0, p2}, Lcom/oneplus/gallery2/media/BaseMediaSet;->startDeletion(Lcom/oneplus/base/Handle;I)V

    goto :goto_0
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
    .line 461
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 462
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PhotoCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 465
    :goto_0
    return-object v0

    .line 463
    :cond_0
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_VIDEO_COUNT:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1

    .line 464
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_VideoCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 465
    :cond_1
    invoke-super {p0, p1}, Lcom/oneplus/base/BasicBaseObject;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getExtra(Lcom/oneplus/gallery2/ExtraKey;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/gallery2/ExtraKey",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 474
    .local p1, "key":Lcom/oneplus/gallery2/ExtraKey;, "Lcom/oneplus/gallery2/ExtraKey<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Extra:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_0

    .line 476
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Extra:Landroid/util/LongSparseArray;

    invoke-interface {p1}, Lcom/oneplus/gallery2/ExtraKey;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    .line 477
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 487
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Source:Lcom/oneplus/gallery2/media/MediaSource;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaSource;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method protected final getMedia()Ljava/lang/Iterable;
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
    .line 505
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Media:Ljava/util/Set;

    return-object v0
.end method

.method protected getNameResourceId()I
    .locals 1

    .prologue
    .line 515
    const/4 v0, 0x0

    return v0
.end method

.method public getSource()Lcom/oneplus/gallery2/media/MediaSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/oneplus/gallery2/media/MediaSource;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 524
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Source:Lcom/oneplus/gallery2/media/MediaSource;

    return-object v0
.end method

.method public getTargetMediaType()Lcom/oneplus/gallery2/media/MediaType;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_TargetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    return-object v0
.end method

.method protected onDeletionCompleted(ZI)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "flags"    # I

    .prologue
    .line 542
    return-void
.end method

.method protected onIterateMedia(Lcom/oneplus/gallery2/media/Media;)V
    .locals 2
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    const/4 v1, 0x0

    .line 551
    invoke-direct {p0, p1, v1}, Lcom/oneplus/gallery2/media/BaseMediaSet;->shouldContainsMediaInternal(Lcom/oneplus/gallery2/media/Media;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    invoke-virtual {p0, p1, v1}, Lcom/oneplus/gallery2/media/BaseMediaSet;->addMedia(Lcom/oneplus/gallery2/media/Media;Z)Z

    .line 553
    :cond_0
    return-void
.end method

.method protected onLocaleChanged(Ljava/util/Locale;Ljava/util/Locale;)V
    .locals 3
    .param p1, "oldLocale"    # Ljava/util/Locale;
    .param p2, "newLocale"    # Ljava/util/Locale;

    .prologue
    .line 564
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->getNameResourceId()I

    move-result v0

    .line 565
    .local v0, "titleResId":I
    if-eqz v0, :cond_0

    .line 566
    sget-object v1, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/oneplus/base/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/gallery2/media/BaseMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 567
    :cond_0
    return-void
.end method

.method protected onMediaCreated(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 4
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "flags"    # I

    .prologue
    .line 577
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/media/BaseMediaSet;->shouldContainsMediaInternal(Lcom/oneplus/gallery2/media/Media;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/media/MediaSource;->PROP_IS_MEDIA_TABLE_READY:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery2/media/MediaSource;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 580
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->addMedia(Lcom/oneplus/gallery2/media/Media;Z)Z

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 583
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->addMedia(Lcom/oneplus/gallery2/media/Media;Z)Z

    .line 584
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_IsDelayedMediaSyncCommitScheduled:Z

    if-nez v0, :cond_0

    .line 585
    new-instance v0, Lcom/oneplus/gallery2/media/BaseMediaSet$CommitMediaSyncRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/gallery2/media/BaseMediaSet$CommitMediaSyncRunnable;-><init>(Lcom/oneplus/gallery2/media/BaseMediaSet;Lcom/oneplus/gallery2/media/BaseMediaSet$1;)V

    const-wide/16 v2, 0x1f4

    invoke-static {p0, v0, v2, v3}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_IsDelayedMediaSyncCommitScheduled:Z

    goto :goto_0
.end method

.method protected onMediaDeleted(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 4
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "flags"    # I

    .prologue
    .line 598
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/media/MediaSource;->PROP_IS_MEDIA_TABLE_READY:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery2/media/MediaSource;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 599
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->removeMedia(Lcom/oneplus/gallery2/media/Media;Z)Z

    .line 606
    :cond_0
    :goto_0
    return-void

    .line 602
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->removeMedia(Lcom/oneplus/gallery2/media/Media;Z)Z

    .line 603
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_IsDelayedMediaSyncCommitScheduled:Z

    if-nez v0, :cond_0

    .line 604
    new-instance v0, Lcom/oneplus/gallery2/media/BaseMediaSet$CommitMediaSyncRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/gallery2/media/BaseMediaSet$CommitMediaSyncRunnable;-><init>(Lcom/oneplus/gallery2/media/BaseMediaSet;Lcom/oneplus/gallery2/media/BaseMediaSet$1;)V

    const-wide/16 v2, 0x1f4

    invoke-static {p0, v0, v2, v3}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_IsDelayedMediaSyncCommitScheduled:Z

    goto :goto_0
.end method

.method protected onMediaIterationEnded()V
    .locals 6

    .prologue
    .line 615
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_MediaIterationStartTime:J

    sub-long v0, v2, v4

    .line 616
    .local v0, "duration":J
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->TAG:Ljava/lang/String;

    const-string v3, "onMediaIterationEnded() - Take "

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, " ms to iterate media"

    invoke-static {v2, v3, v4, v5}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 619
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->commitMediaSync()V

    .line 620
    return-void
.end method

.method protected onMediaIterationStarted()V
    .locals 2

    .prologue
    .line 628
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_MediaIterationStartTime:J

    .line 629
    return-void
.end method

.method protected onMediaTableReady()V
    .locals 1

    .prologue
    .line 692
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->canSyncMediaBeforeMediaTableReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 693
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->commitMediaSync()V

    .line 696
    :goto_0
    return-void

    .line 695
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->setupMedia()V

    goto :goto_0
.end method

.method protected onMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 2
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    .line 706
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oneplus/gallery2/media/MediaSource;->isRecycledMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 721
    :cond_0
    :goto_0
    return-void

    .line 708
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/media/BaseMediaSet;->shouldContainsMediaInternal(Lcom/oneplus/gallery2/media/Media;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 710
    invoke-virtual {p0, p1, v1}, Lcom/oneplus/gallery2/media/BaseMediaSet;->addMedia(Lcom/oneplus/gallery2/media/Media;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Media:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 714
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/media/BaseMediaSet;->checkMediaPositionInMediaLists(Lcom/oneplus/gallery2/media/Media;I)V

    .line 715
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_CoverMediaList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/oneplus/gallery2/media/BaseMediaSet;->COVER_MEDIA_UPDATE_FLAGS_MASK:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    .line 716
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->updateCoverHashCode()V

    goto :goto_0

    .line 720
    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/oneplus/gallery2/media/BaseMediaSet;->removeMedia(Lcom/oneplus/gallery2/media/Media;Z)Z

    goto :goto_0
.end method

.method protected onPrepareLocaleChangedCallback()Lcom/oneplus/base/PropertyChangedCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .prologue
    .line 647
    new-instance v0, Lcom/oneplus/gallery2/media/BaseMediaSet$3;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/BaseMediaSet$3;-><init>(Lcom/oneplus/gallery2/media/BaseMediaSet;)V

    return-object v0
.end method

.method protected onPrepareMediaChangeCallback()Lcom/oneplus/base/Handle;
    .locals 2

    .prologue
    .line 664
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Source:Lcom/oneplus/gallery2/media/MediaSource;

    new-instance v1, Lcom/oneplus/gallery2/media/BaseMediaSet$4;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery2/media/BaseMediaSet$4;-><init>(Lcom/oneplus/gallery2/media/BaseMediaSet;)V

    invoke-interface {v0, v1}, Lcom/oneplus/gallery2/media/MediaSource;->addMediaChangedCallback(Lcom/oneplus/gallery2/media/MediaChangeCallback;)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareMediaForMediaList()Ljava/lang/Iterable;
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
    .line 730
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Media:Ljava/util/Set;

    return-object v0
.end method

.method protected onPrepareMediaIterationClient()Lcom/oneplus/base/Handle;
    .locals 3

    .prologue
    .line 740
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Source:Lcom/oneplus/gallery2/media/MediaSource;

    new-instance v1, Lcom/oneplus/gallery2/media/BaseMediaSet$5;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery2/media/BaseMediaSet$5;-><init>(Lcom/oneplus/gallery2/media/BaseMediaSet;)V

    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_TargetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaSource;->addMediaIterationClient(Lcom/oneplus/gallery2/media/MediaIterationClient;Lcom/oneplus/gallery2/media/MediaType;)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0
.end method

.method protected onRelease()V
    .locals 3

    .prologue
    .line 768
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Source:Lcom/oneplus/gallery2/media/MediaSource;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaSource;->PROP_IS_MEDIA_TABLE_READY:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_MediaTableStateChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaSource;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 769
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_LocaleChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    if-eqz v0, :cond_0

    .line 770
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    sget-object v1, Lcom/oneplus/base/BaseApplication;->PROP_LOCALE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_LocaleChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/BaseApplication;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_MediaChangeCBHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_MediaChangeCBHandle:Lcom/oneplus/base/Handle;

    .line 774
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_MediaIterationClientHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_MediaIterationClientHandle:Lcom/oneplus/base/Handle;

    .line 777
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->clearMedia()V

    .line 780
    invoke-super {p0}, Lcom/oneplus/base/BasicBaseObject;->onRelease()V

    .line 781
    return-void
.end method

.method public openMediaList(Lcom/oneplus/gallery2/media/MediaComparator;II)Lcom/oneplus/gallery2/media/MediaList;
    .locals 19
    .param p1, "comparator"    # Lcom/oneplus/gallery2/media/MediaComparator;
    .param p2, "maxMediaCount"    # I
    .param p3, "flags"    # I

    .prologue
    .line 789
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->verifyAccess()V

    .line 790
    sget-object v14, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/oneplus/gallery2/media/BaseMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 791
    const/4 v9, 0x0

    .line 846
    :goto_0
    return-object v9

    .line 792
    :cond_0
    if-nez p2, :cond_1

    .line 793
    const/4 v9, 0x0

    goto :goto_0

    .line 796
    :cond_1
    new-instance v9, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v9, v0, v1, v2}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;-><init>(Lcom/oneplus/gallery2/media/BaseMediaSet;Lcom/oneplus/gallery2/media/MediaComparator;I)V

    .line 797
    .local v9, "mediaList":Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 798
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery2/media/BaseMediaSet;->TAG:Ljava/lang/String;

    const-string v15, "["

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->getId()Ljava/lang/String;

    move-result-object v16

    const-string v17, "] openMediaList() - Opened media list count : "

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-static/range {v14 .. v18}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 801
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 802
    .local v12, "time":J
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->onPrepareMediaForMediaList()Ljava/lang/Iterable;

    move-result-object v8

    .line 803
    .local v8, "mediaCollection":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/oneplus/gallery2/media/Media;>;"
    const/4 v14, 0x1

    move/from16 v0, p2

    if-eq v0, v14, :cond_7

    .line 806
    instance-of v14, v8, Ljava/util/Collection;

    if-eqz v14, :cond_3

    .line 807
    new-instance v11, Ljava/util/ArrayList;

    check-cast v8, Ljava/util/Collection;

    .end local v8    # "mediaCollection":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/oneplus/gallery2/media/Media;>;"
    invoke-direct {v11, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 814
    .local v11, "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/Media;>;"
    :cond_2
    move-object/from16 v0, p1

    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 815
    if-lez p2, :cond_5

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    move/from16 v0, p2

    if-le v14, v0, :cond_5

    .line 817
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    mul-int/lit8 v15, p2, 0x2

    if-lt v14, v15, :cond_6

    .line 819
    new-instance v10, Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 820
    .local v10, "newTempList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/Media;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    move/from16 v0, p2

    if-ge v5, v0, :cond_4

    .line 821
    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 820
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 810
    .end local v5    # "i":I
    .end local v10    # "newTempList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/Media;>;"
    .end local v11    # "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/Media;>;"
    .restart local v8    # "mediaCollection":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/oneplus/gallery2/media/Media;>;"
    :cond_3
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 811
    .restart local v11    # "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/Media;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/gallery2/media/Media;

    .line 812
    .local v7, "media":Lcom/oneplus/gallery2/media/Media;
    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 822
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "media":Lcom/oneplus/gallery2/media/Media;
    .end local v8    # "mediaCollection":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/oneplus/gallery2/media/Media;>;"
    .restart local v5    # "i":I
    .restart local v10    # "newTempList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/Media;>;"
    :cond_4
    move-object v11, v10

    .line 830
    .end local v5    # "i":I
    .end local v10    # "newTempList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/Media;>;"
    :cond_5
    const/4 v14, 0x1

    invoke-virtual {v9, v11, v14}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->addMedia(Ljava/util/List;Z)V

    .line 842
    .end local v11    # "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/Media;>;"
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long v12, v14, v12

    .line 843
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery2/media/BaseMediaSet;->TAG:Ljava/lang/String;

    const-string v15, "["

    const/16 v16, 0x6

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->getId()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const-string v18, "] openMediaList() - Take "

    aput-object v18, v16, v17

    const/16 v17, 0x2

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x3

    const-string v18, " ms to select "

    aput-object v18, v16, v17

    const/16 v17, 0x4

    invoke-virtual {v9}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->size()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x5

    const-string v18, " media"

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 826
    .restart local v11    # "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/Media;>;"
    :cond_6
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v5, v14, -0x1

    .restart local v5    # "i":I
    :goto_4
    move/from16 v0, p2

    if-lt v5, v0, :cond_5

    .line 827
    invoke-interface {v11, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 826
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 834
    .end local v5    # "i":I
    .end local v11    # "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/Media;>;"
    .restart local v8    # "mediaCollection":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/oneplus/gallery2/media/Media;>;"
    :cond_7
    const/4 v4, 0x0

    .line 835
    .local v4, "firstMedia":Lcom/oneplus/gallery2/media/Media;
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_8
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/gallery2/media/Media;

    .line 837
    .restart local v7    # "media":Lcom/oneplus/gallery2/media/Media;
    if-eqz v4, :cond_9

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v4}, Lcom/oneplus/gallery2/media/MediaComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v14

    if-gez v14, :cond_8

    .line 838
    :cond_9
    move-object v4, v7

    goto :goto_5

    .line 840
    .end local v7    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_a
    invoke-virtual {v9, v4}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->addMedia(Lcom/oneplus/gallery2/media/Media;)I

    goto :goto_3
.end method

.method public putExtra(Lcom/oneplus/gallery2/ExtraKey;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/gallery2/ExtraKey",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 854
    .local p1, "key":Lcom/oneplus/gallery2/ExtraKey;, "Lcom/oneplus/gallery2/ExtraKey<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-eqz p2, :cond_2

    .line 856
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Extra:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    .line 857
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Extra:Landroid/util/LongSparseArray;

    .line 858
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Extra:Landroid/util/LongSparseArray;

    invoke-interface {p1}, Lcom/oneplus/gallery2/ExtraKey;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 862
    :cond_1
    :goto_0
    return-void

    .line 860
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Extra:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 861
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Extra:Landroid/util/LongSparseArray;

    invoke-interface {p1}, Lcom/oneplus/gallery2/ExtraKey;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_0
.end method

.method protected removeMedia(Lcom/oneplus/gallery2/media/Media;Z)Z
    .locals 2
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "commit"    # Z

    .prologue
    const/4 v0, 0x0

    .line 873
    if-nez p1, :cond_1

    .line 884
    :cond_0
    :goto_0
    return v0

    .line 875
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Media:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 877
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PendingAddingMedia:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 879
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PendingRemovingMedia:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 882
    :cond_2
    if-eqz p2, :cond_3

    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_IS_DELETING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 883
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->commitMediaSync()V

    .line 884
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected removeMediaFromMediaLists(Lcom/oneplus/gallery2/media/Media;)V
    .locals 2
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 894
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 895
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;

    invoke-virtual {v1, p1}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->removeMedia(Lcom/oneplus/gallery2/media/Media;)Z

    .line 894
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 896
    :cond_0
    return-void
.end method

.method protected removeMediaFromMediaLists(Ljava/util/Collection;)V
    .locals 8
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
    .line 906
    .local p1, "media":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/oneplus/gallery2/media/Media;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 928
    :cond_0
    return-void

    .line 910
    :cond_1
    instance-of v6, p1, Ljava/util/List;

    if-eqz v6, :cond_3

    move-object v4, p1

    .line 912
    check-cast v4, Ljava/util/List;

    .line 913
    .local v4, "mediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/Media;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 914
    .local v3, "mediaCount":I
    iget-object v6, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 916
    add-int/lit8 v2, v3, -0x1

    .local v2, "j":I
    :goto_1
    if-ltz v2, :cond_2

    .line 917
    iget-object v6, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/gallery2/media/Media;

    invoke-virtual {v6, v7}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->removeMedia(Lcom/oneplus/gallery2/media/Media;)Z

    .line 916
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 914
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 922
    .end local v0    # "i":I
    .end local v2    # "j":I
    .end local v3    # "mediaCount":I
    .end local v4    # "mediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/Media;>;"
    :cond_3
    iget-object v6, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_0

    .line 924
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery2/media/Media;

    .line 925
    .local v5, "mediaToRemove":Lcom/oneplus/gallery2/media/Media;
    iget-object v6, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;

    invoke-virtual {v6, v5}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->removeMedia(Lcom/oneplus/gallery2/media/Media;)Z

    goto :goto_3

    .line 922
    .end local v5    # "mediaToRemove":Lcom/oneplus/gallery2/media/Media;
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method protected abstract shouldContainsMedia(Lcom/oneplus/gallery2/media/Media;I)Z
.end method

.method protected abstract startDeletion(Lcom/oneplus/base/Handle;I)V
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 979
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
