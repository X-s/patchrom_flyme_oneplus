.class public abstract Lcom/oneplus/gallery2/media/BaseMediaSet;
.super Lcom/oneplus/base/BasicBaseObject;
.source "BaseMediaSet.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/MediaSet;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/media/BaseMediaSet$CommitMediaSyncRunnable;,
        Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$oneplus$gallery2$media$MediaType:[I = null

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
.method static synthetic $SWITCH_TABLE$com$oneplus$gallery2$media$MediaType()[I
    .locals 3

    .prologue
    .line 31
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSet;->$SWITCH_TABLE$com$oneplus$gallery2$media$MediaType:[I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/oneplus/gallery2/media/MediaType;->values()[Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/gallery2/media/MediaType;->PHOTO:Lcom/oneplus/gallery2/media/MediaType;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/gallery2/media/MediaType;->UNKNOWN:Lcom/oneplus/gallery2/media/MediaType;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/gallery2/media/MediaType;->VIDEO:Lcom/oneplus/gallery2/media/MediaType;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/oneplus/gallery2/media/BaseMediaSet;->$SWITCH_TABLE$com$oneplus$gallery2$media$MediaType:[I

    return-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

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
    .locals 3

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/oneplus/base/BasicBaseObject;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_CoverMediaList:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Media:Ljava/util/Set;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PendingAddingMedia:Ljava/util/Set;

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PendingRemovingMedia:Ljava/util/Set;

    .line 57
    new-instance v0, Lcom/oneplus/gallery2/media/BaseMediaSet$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/BaseMediaSet$1;-><init>(Lcom/oneplus/gallery2/media/BaseMediaSet;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_MediaTableStateChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    .line 118
    if-eqz p1, :cond_0

    .line 120
    sget-object v0, Lcom/oneplus/gallery2/media/MediaType;->UNKNOWN:Lcom/oneplus/gallery2/media/MediaType;

    if-eq p2, v0, :cond_1

    .line 124
    iput-object p1, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Source:Lcom/oneplus/gallery2/media/MediaSource;

    .line 125
    iput-object p2, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_TargetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    .line 128
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->onPrepareLocaleChangedCallback()Lcom/oneplus/base/PropertyChangedCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_LocaleChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 129
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_LocaleChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    if-nez v0, :cond_2

    .line 133
    :goto_0
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSource;->PROP_IS_MEDIA_TABLE_READY:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Lcom/oneplus/gallery2/media/MediaSource;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 136
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->onMediaTableReady()V

    .line 137
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->canSyncMediaBeforeMediaTableReady()Z

    move-result v0

    if-nez v0, :cond_4

    .line 141
    :goto_2
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->getNameResourceId()I

    move-result v0

    .line 142
    if-nez v0, :cond_5

    .line 146
    :goto_3
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_COVER_HASH_CODE:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/BaseMediaSet;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 148
    return-void

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No media source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No target media type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_2
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    sget-object v1, Lcom/oneplus/base/BaseApplication;->PROP_LOCALE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_LocaleChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/BaseApplication;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    goto :goto_0

    .line 134
    :cond_3
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSource;->PROP_IS_MEDIA_TABLE_READY:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_MediaTableStateChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery2/media/MediaSource;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    goto :goto_1

    .line 138
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->setupMedia()V

    goto :goto_2

    .line 143
    :cond_5
    sget-object v1, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/oneplus/base/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method static synthetic access$0(Lcom/oneplus/gallery2/media/BaseMediaSet;Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;)V
    .locals 0

    .prologue
    .line 633
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSet;->onMediaListReleased(Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;)V

    return-void
.end method

.method static synthetic access$1(Lcom/oneplus/gallery2/media/BaseMediaSet;Z)V
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_IsDelayedMediaSyncCommitScheduled:Z

    return-void
.end method

.method private onMediaListReleased(Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;)V
    .locals 5

    .prologue
    .line 635
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "["

    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->getId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "] onMediaListReleased() - Opened media list count : "

    iget-object v4, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 638
    return-void

    .line 636
    :cond_0
    return-void
.end method

.method private setupMedia()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 971
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_MediaChangeCBHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 973
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_MediaIterationClientHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 977
    :goto_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_MediaIterationClientHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 979
    :goto_2
    return-void

    .line 972
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->onPrepareMediaChangeCallback()Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_MediaChangeCBHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 974
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->onPrepareMediaIterationClient()Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_MediaIterationClientHandle:Lcom/oneplus/base/Handle;

    goto :goto_1

    .line 978
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Source:Lcom/oneplus/gallery2/media/MediaSource;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery2/media/MediaSource;->scheduleMediaIteration(I)Z

    goto :goto_2
.end method

.method private shouldContainsMediaInternal(Lcom/oneplus/gallery2/media/Media;I)Z
    .locals 2

    .prologue
    .line 997
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_TargetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    if-nez v0, :cond_1

    .line 999
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/media/BaseMediaSet;->shouldContainsMedia(Lcom/oneplus/gallery2/media/Media;I)Z

    move-result v0

    return v0

    .line 997
    :cond_1
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_TargetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    if-eq v0, v1, :cond_0

    .line 998
    const/4 v0, 0x0

    return v0
.end method

.method private updateCoverHashCode()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1022
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_IS_DELETING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1024
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1025
    const/16 v0, 0x5b

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1026
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    const/16 v0, 0x5d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1028
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_CoverMediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_4

    .line 1030
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_CoverMediaList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    .line 1031
    instance-of v1, v0, Lcom/oneplus/gallery2/media/GroupedMedia;

    if-nez v1, :cond_2

    .line 1037
    :cond_0
    :goto_1
    if-gtz v2, :cond_3

    .line 1039
    :goto_2
    invoke-interface {v0}, Lcom/oneplus/gallery2/media/Media;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1040
    const/16 v1, 0x3a

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1041
    invoke-interface {v0}, Lcom/oneplus/gallery2/media/Media;->getLastModifiedTime()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1028
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1023
    :cond_1
    return-void

    :cond_2
    move-object v1, v0

    .line 1033
    check-cast v1, Lcom/oneplus/gallery2/media/GroupedMedia;

    invoke-interface {v1}, Lcom/oneplus/gallery2/media/GroupedMedia;->getCover()Lcom/oneplus/gallery2/media/Media;

    move-result-object v1

    .line 1034
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 1035
    goto :goto_1

    .line 1038
    :cond_3
    const/16 v1, 0x2c

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1043
    :cond_4
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_COVER_HASH_CODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/BaseMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1044
    return-void
.end method

.method private updateCoverMediaList()V
    .locals 5

    .prologue
    const/16 v4, 0xc

    .line 1050
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_CoverMediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1051
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Media:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gt v0, v4, :cond_1

    .line 1062
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_CoverMediaList:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Media:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1063
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_CoverMediaList:Ljava/util/List;

    sget-object v1, Lcom/oneplus/gallery2/media/BaseMediaSet;->COVER_MEDIA_COMPARATOR:Lcom/oneplus/gallery2/media/MediaComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1065
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->updateCoverHashCode()V

    .line 1066
    return-void

    .line 1053
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Media:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    .line 1055
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_CoverMediaList:Ljava/util/List;

    sget-object v3, Lcom/oneplus/gallery2/media/BaseMediaSet;->COVER_MEDIA_COMPARATOR:Lcom/oneplus/gallery2/media/MediaComparator;

    invoke-static {v2, v0, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v2

    xor-int/lit8 v2, v2, -0x1

    .line 1056
    if-ltz v2, :cond_2

    if-ge v2, v4, :cond_2

    .line 1057
    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_CoverMediaList:Ljava/util/List;

    invoke-interface {v3, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected addMedia(Lcom/oneplus/gallery2/media/Media;Z)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 159
    if-eqz p1, :cond_1

    .line 161
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Media:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PendingRemovingMedia:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 168
    :cond_0
    if-nez p2, :cond_4

    .line 170
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 160
    :cond_1
    return v1

    .line 162
    :cond_2
    return v1

    .line 165
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PendingAddingMedia:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    return v1

    .line 169
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->commitMediaSync()V

    goto :goto_0
.end method

.method protected addMediaToMediaLists(Lcom/oneplus/gallery2/media/Media;)V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;

    invoke-virtual {v0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->addMedia(Lcom/oneplus/gallery2/media/Media;)I

    .line 180
    add-int/lit8 v0, v1, -0x1

    move v1, v0

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
    const/4 v1, 0x0

    .line 192
    if-nez p1, :cond_1

    .line 193
    :cond_0
    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 198
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_3

    .line 200
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;

    .line 201
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->getComparator()Lcom/oneplus/gallery2/media/MediaComparator;

    move-result-object v4

    if-ne v4, v1, :cond_2

    .line 206
    :goto_1
    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->addMedia(Ljava/util/List;Z)V

    .line 198
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 203
    :cond_2
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->getComparator()Lcom/oneplus/gallery2/media/MediaComparator;

    move-result-object v1

    .line 204
    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1

    .line 208
    :cond_3
    return-void
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

    .prologue
    .line 228
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 230
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;

    .line 231
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->getComparator()Lcom/oneplus/gallery2/media/MediaComparator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/gallery2/media/MediaComparator;->getEffectiveMediaUpdateFlags()I

    move-result v2

    and-int/2addr v2, p2

    if-nez v2, :cond_0

    .line 228
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 232
    :cond_0
    invoke-virtual {v0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->checkMediaIndex(Lcom/oneplus/gallery2/media/Media;)Z

    goto :goto_1

    .line 234
    :cond_1
    return-void
.end method

.method protected clearExtras()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 242
    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Extra:Landroid/util/LongSparseArray;

    .line 243
    return-void
.end method

.method protected clearMedia()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 252
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->verifyAccess()V

    .line 253
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Media:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PhotoCount:I

    .line 258
    iget v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_VideoCount:I

    .line 259
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

    move-result-object v0

    iget v3, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PhotoCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v0, v3}, Lcom/oneplus/gallery2/media/BaseMediaSet;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 266
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_VIDEO_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_VideoCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/oneplus/gallery2/media/BaseMediaSet;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 267
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/BaseMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 268
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->updateCoverHashCode()V

    .line 269
    return-void

    .line 254
    :cond_0
    return-void
.end method

.method protected commitMediaSync()V
    .locals 11

    .prologue
    const/16 v10, 0xc

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 278
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->verifyAccess()V

    .line 285
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PendingRemovingMedia:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move v6, v4

    move v1, v4

    move v2, v4

    .line 318
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PendingAddingMedia:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 356
    :goto_1
    if-nez v6, :cond_d

    .line 358
    if-nez v4, :cond_e

    .line 363
    :goto_2
    if-nez v2, :cond_f

    .line 369
    :goto_3
    if-nez v1, :cond_10

    .line 375
    :goto_4
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Media:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/BaseMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 376
    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PendingRemovingMedia:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v3, v4

    move v6, v4

    move v1, v4

    move v2, v4

    :cond_1
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    .line 290
    iget-object v8, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Media:Ljava/util/Set;

    invoke-interface {v8, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 292
    invoke-static {}, Lcom/oneplus/gallery2/media/BaseMediaSet;->$SWITCH_TABLE$com$oneplus$gallery2$media$MediaType()[I

    move-result-object v8

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/Media;->getType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/oneplus/gallery2/media/MediaType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    goto :goto_5

    .line 295
    :pswitch_0
    add-int/lit8 v2, v2, -0x1

    .line 304
    :goto_6
    if-eqz v6, :cond_2

    move v3, v5

    goto :goto_5

    .line 298
    :pswitch_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 306
    :cond_2
    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_CoverMediaList:Ljava/util/List;

    sget-object v8, Lcom/oneplus/gallery2/media/BaseMediaSet;->COVER_MEDIA_COMPARATOR:Lcom/oneplus/gallery2/media/MediaComparator;

    invoke-static {v3, v0, v8}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 307
    if-gez v0, :cond_3

    move v3, v5

    goto :goto_5

    :cond_3
    move v3, v5

    move v6, v5

    .line 308
    goto :goto_5

    .line 312
    :cond_4
    if-nez v3, :cond_5

    .line 314
    :goto_7
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PendingRemovingMedia:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto :goto_0

    .line 313
    :cond_5
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PendingRemovingMedia:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->removeMediaFromMediaLists(Ljava/util/Collection;)V

    goto :goto_7

    .line 321
    :cond_6
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PendingAddingMedia:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v3, v4

    :cond_7
    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    .line 323
    iget-object v8, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Media:Ljava/util/Set;

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 325
    invoke-static {}, Lcom/oneplus/gallery2/media/BaseMediaSet;->$SWITCH_TABLE$com$oneplus$gallery2$media$MediaType()[I

    move-result-object v8

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/Media;->getType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/oneplus/gallery2/media/MediaType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_1

    goto :goto_8

    .line 328
    :pswitch_2
    add-int/lit8 v2, v2, 0x1

    .line 337
    :goto_9
    if-eqz v6, :cond_8

    move v4, v5

    goto :goto_8

    .line 331
    :pswitch_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 339
    :cond_8
    iget-object v4, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_CoverMediaList:Ljava/util/List;

    sget-object v8, Lcom/oneplus/gallery2/media/BaseMediaSet;->COVER_MEDIA_COMPARATOR:Lcom/oneplus/gallery2/media/MediaComparator;

    invoke-static {v4, v0, v8}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v4

    xor-int/lit8 v4, v4, -0x1

    .line 340
    if-gez v4, :cond_a

    :cond_9
    move v4, v5

    goto :goto_8

    :cond_a
    if-ge v4, v10, :cond_9

    .line 342
    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_CoverMediaList:Ljava/util/List;

    invoke-interface {v3, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 344
    :goto_a
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_CoverMediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v10, :cond_11

    .line 345
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_CoverMediaList:Ljava/util/List;

    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_CoverMediaList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_a

    .line 350
    :cond_b
    if-nez v4, :cond_c

    .line 352
    :goto_b
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PendingAddingMedia:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    move v4, v3

    goto/16 :goto_1

    .line 351
    :cond_c
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PendingAddingMedia:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->addMediaToMediaLists(Ljava/util/Collection;)V

    goto :goto_b

    .line 357
    :cond_d
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->updateCoverMediaList()V

    goto/16 :goto_2

    .line 359
    :cond_e
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->updateCoverHashCode()V

    goto/16 :goto_2

    .line 366
    :cond_f
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PhotoCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PhotoCount:I

    .line 367
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    iget v3, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PhotoCount:I

    sub-int v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PhotoCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/oneplus/gallery2/media/BaseMediaSet;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 372
    :cond_10
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_VideoCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_VideoCount:I

    .line 373
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_VIDEO_COUNT:Lcom/oneplus/base/PropertyKey;

    iget v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_VideoCount:I

    sub-int v1, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_VideoCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/oneplus/gallery2/media/BaseMediaSet;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_11
    move v4, v5

    move v3, v5

    goto/16 :goto_8

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 325
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected completeDeletion(Lcom/oneplus/base/Handle;ZI)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 389
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->verifyAccess()V

    .line 390
    if-nez p1, :cond_1

    .line 391
    :cond_0
    return-void

    .line 390
    :cond_1
    instance-of v0, p1, Lcom/oneplus/base/CallbackHandle;

    if-eqz v0, :cond_0

    .line 392
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_IS_DELETING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 396
    check-cast p1, Lcom/oneplus/base/CallbackHandle;

    .line 397
    invoke-virtual {p1}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 401
    :goto_0
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_IS_DELETING:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/BaseMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 404
    if-nez p2, :cond_4

    .line 411
    :goto_1
    invoke-virtual {p0, p2, p3}, Lcom/oneplus/gallery2/media/BaseMediaSet;->onDeletionCompleted(ZI)V

    .line 412
    if-nez p2, :cond_5

    .line 417
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 419
    :goto_2
    return-void

    .line 393
    :cond_2
    return-void

    .line 398
    :cond_3
    invoke-virtual {p1}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSet$DeletionCallback;

    invoke-virtual {v0, p0, p2, p3}, Lcom/oneplus/gallery2/media/MediaSet$DeletionCallback;->onDeletionCompleted(Lcom/oneplus/gallery2/media/MediaSet;ZI)V

    goto :goto_0

    .line 406
    :cond_4
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_CoverMediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 407
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->updateCoverHashCode()V

    goto :goto_1

    .line 414
    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->clearMedia()V

    .line 415
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSet;->EVENT_DELETED:Lcom/oneplus/base/EventKey;

    sget-object v1, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/BaseMediaSet;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    goto :goto_2

    .line 418
    :cond_6
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->commitMediaSync()V

    goto :goto_2
.end method

.method public contains(Lcom/oneplus/gallery2/media/Media;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 426
    if-nez p1, :cond_1

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Media:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method public delete(Lcom/oneplus/gallery2/media/MediaSet$DeletionCallback;I)Lcom/oneplus/base/Handle;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 435
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->verifyAccess()V

    .line 436
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 437
    :cond_0
    return-object v2

    .line 436
    :cond_1
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_IS_DELETING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 440
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_IS_DELETING:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/BaseMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 443
    new-instance v0, Lcom/oneplus/gallery2/media/BaseMediaSet$2;

    const-string/jumbo v1, "DeleteMediaSet"

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/oneplus/gallery2/media/BaseMediaSet$2;-><init>(Lcom/oneplus/gallery2/media/BaseMediaSet;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSet$DeletionCallback;Landroid/os/Handler;)V

    .line 449
    if-nez p1, :cond_2

    .line 451
    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/oneplus/gallery2/media/BaseMediaSet;->startDeletion(Lcom/oneplus/base/Handle;I)V

    .line 452
    return-object v0

    .line 450
    :cond_2
    invoke-virtual {p1, p0, p2}, Lcom/oneplus/gallery2/media/MediaSet$DeletionCallback;->onDeletionStarted(Lcom/oneplus/gallery2/media/MediaSet;I)V

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
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    if-eq p1, v0, :cond_0

    .line 463
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_VIDEO_COUNT:Lcom/oneplus/base/PropertyKey;

    if-eq p1, v0, :cond_1

    .line 465
    invoke-super {p0, p1}, Lcom/oneplus/base/BasicBaseObject;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 462
    :cond_0
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PhotoCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 464
    :cond_1
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_VideoCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
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
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Extra:Landroid/util/LongSparseArray;

    if-nez v0, :cond_1

    .line 487
    :cond_0
    return-object p2

    .line 476
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Extra:Landroid/util/LongSparseArray;

    invoke-interface {p1}, Lcom/oneplus/gallery2/ExtraKey;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    .line 477
    if-eqz v0, :cond_0

    .line 481
    return-object v0
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
    const/4 v0, 0x0

    .line 515
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

    .prologue
    .line 542
    return-void
.end method

.method protected onIterateMedia(Lcom/oneplus/gallery2/media/Media;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 551
    invoke-direct {p0, p1, v1}, Lcom/oneplus/gallery2/media/BaseMediaSet;->shouldContainsMediaInternal(Lcom/oneplus/gallery2/media/Media;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 553
    :goto_0
    return-void

    .line 552
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/oneplus/gallery2/media/BaseMediaSet;->addMedia(Lcom/oneplus/gallery2/media/Media;Z)Z

    goto :goto_0
.end method

.method protected onLocaleChanged(Ljava/util/Locale;Ljava/util/Locale;)V
    .locals 3

    .prologue
    .line 564
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->getNameResourceId()I

    move-result v0

    .line 565
    if-nez v0, :cond_0

    .line 567
    :goto_0
    return-void

    .line 566
    :cond_0
    sget-object v1, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/oneplus/base/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onMediaCreated(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 577
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/media/BaseMediaSet;->shouldContainsMediaInternal(Lcom/oneplus/gallery2/media/Media;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 579
    :cond_1
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/media/MediaSource;->PROP_IS_MEDIA_TABLE_READY:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery2/media/MediaSource;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 583
    invoke-virtual {p0, p1, v2}, Lcom/oneplus/gallery2/media/BaseMediaSet;->addMedia(Lcom/oneplus/gallery2/media/Media;Z)Z

    .line 584
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_IsDelayedMediaSyncCommitScheduled:Z

    if-nez v0, :cond_0

    .line 585
    new-instance v0, Lcom/oneplus/gallery2/media/BaseMediaSet$CommitMediaSyncRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/gallery2/media/BaseMediaSet$CommitMediaSyncRunnable;-><init>(Lcom/oneplus/gallery2/media/BaseMediaSet;Lcom/oneplus/gallery2/media/BaseMediaSet$CommitMediaSyncRunnable;)V

    const-wide/16 v2, 0x1f4

    invoke-static {p0, v0, v2, v3}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_IsDelayedMediaSyncCommitScheduled:Z

    goto :goto_0

    .line 580
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->addMedia(Lcom/oneplus/gallery2/media/Media;Z)Z

    goto :goto_0
.end method

.method protected onMediaDeleted(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 598
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/media/MediaSource;->PROP_IS_MEDIA_TABLE_READY:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery2/media/MediaSource;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 602
    invoke-virtual {p0, p1, v2}, Lcom/oneplus/gallery2/media/BaseMediaSet;->removeMedia(Lcom/oneplus/gallery2/media/Media;Z)Z

    .line 603
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_IsDelayedMediaSyncCommitScheduled:Z

    if-eqz v0, :cond_1

    .line 606
    :goto_0
    return-void

    .line 599
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->removeMedia(Lcom/oneplus/gallery2/media/Media;Z)Z

    goto :goto_0

    .line 604
    :cond_1
    new-instance v0, Lcom/oneplus/gallery2/media/BaseMediaSet$CommitMediaSyncRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/gallery2/media/BaseMediaSet$CommitMediaSyncRunnable;-><init>(Lcom/oneplus/gallery2/media/BaseMediaSet;Lcom/oneplus/gallery2/media/BaseMediaSet$CommitMediaSyncRunnable;)V

    const-wide/16 v2, 0x1f4

    invoke-static {p0, v0, v2, v3}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_IsDelayedMediaSyncCommitScheduled:Z

    goto :goto_0
.end method

.method protected onMediaIterationEnded()V
    .locals 4

    .prologue
    .line 615
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_MediaIterationStartTime:J

    sub-long/2addr v0, v2

    .line 616
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onMediaIterationEnded() - Take "

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, " ms to iterate media"

    invoke-static {v2, v3, v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

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

    if-nez v0, :cond_0

    .line 695
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->setupMedia()V

    .line 696
    :goto_0
    return-void

    .line 693
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->commitMediaSync()V

    goto :goto_0
.end method

.method protected onMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 706
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oneplus/gallery2/media/MediaSource;->isRecycledMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 708
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/media/BaseMediaSet;->shouldContainsMediaInternal(Lcom/oneplus/gallery2/media/Media;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 720
    invoke-virtual {p0, p1, v1}, Lcom/oneplus/gallery2/media/BaseMediaSet;->removeMedia(Lcom/oneplus/gallery2/media/Media;Z)Z

    .line 721
    :cond_0
    :goto_0
    return-void

    .line 707
    :cond_1
    return-void

    .line 710
    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/oneplus/gallery2/media/BaseMediaSet;->addMedia(Lcom/oneplus/gallery2/media/Media;Z)Z

    move-result v0

    if-nez v0, :cond_3

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

    .line 711
    :cond_3
    return-void
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

    .line 759
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_TargetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    .line 740
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

    if-nez v0, :cond_0

    .line 773
    :goto_0
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

    .line 770
    :cond_0
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    sget-object v1, Lcom/oneplus/base/BaseApplication;->PROP_LOCALE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_LocaleChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/BaseApplication;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    goto :goto_0
.end method

.method public openMediaList(Lcom/oneplus/gallery2/media/MediaComparator;II)Lcom/oneplus/gallery2/media/MediaList;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 789
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->verifyAccess()V

    .line 790
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 792
    if-eqz p2, :cond_2

    .line 796
    new-instance v5, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;

    invoke-direct {v5, p0, p1, p2}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;-><init>(Lcom/oneplus/gallery2/media/BaseMediaSet;Lcom/oneplus/gallery2/media/MediaComparator;I)V

    .line 797
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 798
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "["

    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->getId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "] openMediaList() - Opened media list count : "

    iget-object v7, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v0, v2, v3, v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 801
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 802
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->onPrepareMediaForMediaList()Ljava/lang/Iterable;

    move-result-object v0

    .line 803
    if-ne p2, v8, :cond_3

    .line 835
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    .line 837
    if-nez v1, :cond_a

    :cond_0
    move-object v1, v0

    .line 838
    goto :goto_0

    .line 791
    :cond_1
    return-object v1

    .line 793
    :cond_2
    return-object v1

    .line 806
    :cond_3
    instance-of v1, v0, Ljava/util/Collection;

    if-nez v1, :cond_4

    .line 810
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 811
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    .line 812
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 807
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 814
    :cond_5
    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 815
    if-gtz p2, :cond_7

    .line 830
    :cond_6
    :goto_2
    invoke-virtual {v5, v1, v8}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->addMedia(Ljava/util/List;Z)V

    .line 842
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v6

    .line 843
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "["

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    const-string/jumbo v4, "] openMediaList() - Take "

    aput-object v4, v6, v8

    const/4 v4, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v4

    const/4 v0, 0x3

    const-string/jumbo v1, " ms to select "

    aput-object v1, v6, v0

    const/4 v0, 0x4

    invoke-virtual {v5}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x5

    const-string/jumbo v1, " media"

    aput-object v1, v6, v0

    invoke-static {v2, v3, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 846
    return-object v5

    .line 815
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_6

    .line 817
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v2, p2, 0x2

    if-ge v0, v2, :cond_8

    .line 826
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    :goto_4
    add-int/lit8 v0, v0, -0x1

    if-lt v0, p2, :cond_6

    .line 827
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 819
    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(I)V

    move v3, v4

    .line 820
    :goto_5
    if-ge v3, p2, :cond_9

    .line 821
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 820
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5

    :cond_9
    move-object v1, v2

    .line 823
    goto :goto_2

    .line 837
    :cond_a
    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery2/media/MediaComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_0

    goto/16 :goto_0

    .line 840
    :cond_b
    invoke-virtual {v5, v1}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->addMedia(Lcom/oneplus/gallery2/media/Media;)I

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
    if-nez p2, :cond_0

    .line 860
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Extra:Landroid/util/LongSparseArray;

    if-nez v0, :cond_2

    .line 862
    :goto_0
    return-void

    .line 856
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Extra:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 858
    :goto_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Extra:Landroid/util/LongSparseArray;

    invoke-interface {p1}, Lcom/oneplus/gallery2/ExtraKey;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 857
    :cond_1
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Extra:Landroid/util/LongSparseArray;

    goto :goto_1

    .line 861
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Extra:Landroid/util/LongSparseArray;

    invoke-interface {p1}, Lcom/oneplus/gallery2/ExtraKey;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_0
.end method

.method protected removeMedia(Lcom/oneplus/gallery2/media/Media;Z)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 873
    if-eqz p1, :cond_2

    .line 875
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Media:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 877
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PendingAddingMedia:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 882
    :cond_0
    if-nez p2, :cond_5

    .line 884
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 874
    :cond_2
    return v1

    .line 876
    :cond_3
    return v1

    .line 879
    :cond_4
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PendingRemovingMedia:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 880
    return v1

    .line 882
    :cond_5
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_IS_DELETING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 883
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->commitMediaSync()V

    goto :goto_0
.end method

.method protected removeMediaFromMediaLists(Lcom/oneplus/gallery2/media/Media;)V
    .locals 4

    .prologue
    .line 894
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 896
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;

    .line 897
    invoke-virtual {v0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->removeMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 894
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 900
    :cond_1
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->getMaxMediaCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 901
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->size()I

    move-result v2

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->getMaxMediaCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 902
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->size()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Media:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 904
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Media:Ljava/util/Set;

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->addMedia(Ljava/util/Collection;)V

    goto :goto_1

    .line 908
    :cond_2
    return-void
.end method

.method protected removeMediaFromMediaLists(Ljava/util/Collection;)V
    .locals 7
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
    const/4 v3, 0x0

    .line 918
    if-nez p1, :cond_1

    .line 919
    :cond_0
    return-void

    .line 918
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 922
    instance-of v0, p1, Ljava/util/List;

    if-nez v0, :cond_2

    .line 946
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_0
    if-ltz v4, :cond_9

    .line 949
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;

    .line 951
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    .line 952
    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->removeMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v1

    or-int/2addr v1, v2

    move v2, v1

    goto :goto_1

    .line 924
    :cond_2
    check-cast p1, Ljava/util/List;

    .line 925
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    .line 926
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_2
    if-ltz v2, :cond_9

    .line 929
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;

    .line 931
    add-int/lit8 v1, v6, -0x1

    move v4, v1

    move v5, v3

    :goto_3
    if-ltz v4, :cond_3

    .line 932
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->removeMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v1

    or-int/2addr v5, v1

    .line 931
    add-int/lit8 v1, v4, -0x1

    move v4, v1

    goto :goto_3

    .line 935
    :cond_3
    if-nez v5, :cond_5

    .line 926
    :cond_4
    :goto_4
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_2

    .line 936
    :cond_5
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->getMaxMediaCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 937
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->size()I

    move-result v1

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->getMaxMediaCount()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 938
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->size()I

    move-result v1

    iget-object v4, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Media:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 940
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Media:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->addMedia(Ljava/util/Collection;)V

    goto :goto_4

    .line 955
    :cond_6
    if-nez v2, :cond_8

    .line 946
    :cond_7
    :goto_5
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_0

    .line 956
    :cond_8
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->getMaxMediaCount()I

    move-result v1

    if-lez v1, :cond_7

    .line 957
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->size()I

    move-result v1

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->getMaxMediaCount()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 958
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->size()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Media:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 960
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Media:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->addMedia(Ljava/util/Collection;)V

    goto :goto_5

    .line 964
    :cond_9
    return-void
.end method

.method protected abstract shouldContainsMedia(Lcom/oneplus/gallery2/media/Media;I)Z
.end method

.method protected abstract startDeletion(Lcom/oneplus/base/Handle;I)V
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1015
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
