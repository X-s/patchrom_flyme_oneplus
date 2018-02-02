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

.field private static final PRINT_MEDIA_DEBUG_LOG:Z


# instance fields
.field private m_ContainsHiddenMedia:Z

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

.field private final m_HiddenMedia:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
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
    .line 32
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
    .line 110
    sget v0, Lcom/oneplus/gallery2/media/Media;->FLAG_LAST_MODIFIED_TIME_CHANGED:I

    sget v1, Lcom/oneplus/gallery2/media/GroupedMedia;->FLAG_COVER_CHANGED:I

    or-int/2addr v0, v1

    sput v0, Lcom/oneplus/gallery2/media/BaseMediaSet;->COVER_MEDIA_UPDATE_FLAGS_MASK:I

    .line 111
    return-void
.end method

.method protected constructor <init>(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/MediaType;)V
    .locals 3

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/oneplus/base/BasicBaseObject;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_CoverMediaList:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_HiddenMedia:Ljava/util/Set;

    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Media:Ljava/util/Set;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PendingAddingMedia:Ljava/util/Set;

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PendingRemovingMedia:Ljava/util/Set;

    .line 61
    new-instance v0, Lcom/oneplus/gallery2/media/BaseMediaSet$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/BaseMediaSet$1;-><init>(Lcom/oneplus/gallery2/media/BaseMediaSet;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_MediaTableStateChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    .line 122
    if-eqz p1, :cond_0

    .line 124
    sget-object v0, Lcom/oneplus/gallery2/media/MediaType;->UNKNOWN:Lcom/oneplus/gallery2/media/MediaType;

    if-eq p2, v0, :cond_1

    .line 128
    iput-object p1, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Source:Lcom/oneplus/gallery2/media/MediaSource;

    .line 129
    iput-object p2, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_TargetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    .line 132
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->onPrepareLocaleChangedCallback()Lcom/oneplus/base/PropertyChangedCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_LocaleChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 133
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_LocaleChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    if-nez v0, :cond_2

    .line 137
    :goto_0
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSource;->PROP_IS_MEDIA_TABLE_READY:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Lcom/oneplus/gallery2/media/MediaSource;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 140
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->onMediaTableReady()V

    .line 141
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->canSyncMediaBeforeMediaTableReady()Z

    move-result v0

    if-nez v0, :cond_4

    .line 145
    :goto_2
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->getNameResourceId()I

    move-result v0

    .line 146
    if-nez v0, :cond_5

    .line 150
    :goto_3
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_COVER_HASH_CODE:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/BaseMediaSet;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 152
    return-void

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No media source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No target media type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_2
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    sget-object v1, Lcom/oneplus/base/BaseApplication;->PROP_LOCALE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_LocaleChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/BaseApplication;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    goto :goto_0

    .line 138
    :cond_3
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSource;->PROP_IS_MEDIA_TABLE_READY:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_MediaTableStateChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery2/media/MediaSource;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    goto :goto_1

    .line 142
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->setupMedia()V

    goto :goto_2

    .line 147
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
    .line 708
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSet;->onMediaListReleased(Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;)V

    return-void
.end method

.method static synthetic access$1(Lcom/oneplus/gallery2/media/BaseMediaSet;Z)V
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_IsDelayedMediaSyncCommitScheduled:Z

    return-void
.end method

.method private addHiddenMedia(Lcom/oneplus/gallery2/media/Media;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 161
    if-nez p1, :cond_1

    .line 162
    :cond_0
    return v1

    .line 161
    :cond_1
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_HiddenMedia:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 165
    if-nez v0, :cond_2

    .line 167
    :goto_0
    return v0

    .line 166
    :cond_2
    sget-object v1, Lcom/oneplus/gallery2/media/MediaSet;->PROP_HIDDEN_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_HiddenMedia:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/gallery2/media/BaseMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private onMediaListReleased(Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;)V
    .locals 5

    .prologue
    .line 710
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 712
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

    .line 713
    return-void

    .line 711
    :cond_0
    return-void
.end method

.method private removeHiddenMedia(Lcom/oneplus/gallery2/media/Media;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 972
    if-eqz p1, :cond_0

    .line 975
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_HiddenMedia:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 976
    if-nez v0, :cond_1

    .line 978
    :goto_0
    return v0

    .line 973
    :cond_0
    return v0

    .line 977
    :cond_1
    sget-object v1, Lcom/oneplus/gallery2/media/MediaSet;->PROP_HIDDEN_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_HiddenMedia:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/gallery2/media/BaseMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private scheduleCommitMediaSync()V
    .locals 4

    .prologue
    .line 1086
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_IsDelayedMediaSyncCommitScheduled:Z

    if-eqz v0, :cond_0

    .line 1088
    :goto_0
    return-void

    .line 1087
    :cond_0
    new-instance v0, Lcom/oneplus/gallery2/media/BaseMediaSet$CommitMediaSyncRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/gallery2/media/BaseMediaSet$CommitMediaSyncRunnable;-><init>(Lcom/oneplus/gallery2/media/BaseMediaSet;Lcom/oneplus/gallery2/media/BaseMediaSet$CommitMediaSyncRunnable;)V

    const-wide/16 v2, 0x1f4

    invoke-static {p0, v0, v2, v3}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_IsDelayedMediaSyncCommitScheduled:Z

    goto :goto_0
.end method

.method private setContainsHiddenMediaProp(Z)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1104
    iget-boolean v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_ContainsHiddenMedia:Z

    .line 1105
    if-eq v1, p1, :cond_0

    .line 1108
    iput-boolean p1, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_ContainsHiddenMedia:Z

    .line 1110
    if-nez p1, :cond_1

    .line 1119
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_HiddenMedia:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    .line 1120
    invoke-virtual {p0, v0, v3}, Lcom/oneplus/gallery2/media/BaseMediaSet;->removeMedia(Lcom/oneplus/gallery2/media/Media;Z)Z

    goto :goto_0

    .line 1106
    :cond_0
    return v3

    .line 1113
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_HiddenMedia:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    .line 1114
    invoke-virtual {p0, v0, v3}, Lcom/oneplus/gallery2/media/BaseMediaSet;->addMedia(Lcom/oneplus/gallery2/media/Media;Z)Z

    goto :goto_1

    .line 1122
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->commitMediaSync()V

    .line 1125
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_CONTAINS_HIDDEN_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/oneplus/gallery2/media/BaseMediaSet;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private setupMedia()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1132
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_MediaChangeCBHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1134
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_MediaIterationClientHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1138
    :goto_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_MediaIterationClientHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1140
    :goto_2
    return-void

    .line 1133
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->onPrepareMediaChangeCallback()Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_MediaChangeCBHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 1135
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->onPrepareMediaIterationClient()Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_MediaIterationClientHandle:Lcom/oneplus/base/Handle;

    goto :goto_1

    .line 1139
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Source:Lcom/oneplus/gallery2/media/MediaSource;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery2/media/MediaSource;->scheduleMediaIteration(I)Z

    goto :goto_2
.end method

.method private shouldContainsMediaInternal(Lcom/oneplus/gallery2/media/Media;I)Z
    .locals 2

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_TargetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    if-nez v0, :cond_1

    .line 1160
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/media/BaseMediaSet;->shouldContainsMedia(Lcom/oneplus/gallery2/media/Media;I)Z

    move-result v0

    return v0

    .line 1158
    :cond_1
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_TargetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    if-eq v0, v1, :cond_0

    .line 1159
    const/4 v0, 0x0

    return v0
.end method

.method private updateCoverMediaList()V
    .locals 5

    .prologue
    const/16 v4, 0xc

    .line 1211
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_CoverMediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1212
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Media:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gt v0, v4, :cond_1

    .line 1223
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_CoverMediaList:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Media:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1224
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_CoverMediaList:Ljava/util/List;

    sget-object v1, Lcom/oneplus/gallery2/media/BaseMediaSet;->COVER_MEDIA_COMPARATOR:Lcom/oneplus/gallery2/media/MediaComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1226
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->updateCoverHashCode()V

    .line 1227
    return-void

    .line 1214
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

    .line 1216
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_CoverMediaList:Ljava/util/List;

    sget-object v3, Lcom/oneplus/gallery2/media/BaseMediaSet;->COVER_MEDIA_COMPARATOR:Lcom/oneplus/gallery2/media/MediaComparator;

    invoke-static {v2, v0, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v2

    xor-int/lit8 v2, v2, -0x1

    .line 1217
    if-ltz v2, :cond_2

    if-ge v2, v4, :cond_2

    .line 1218
    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_CoverMediaList:Ljava/util/List;

    invoke-interface {v3, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected addMedia(Lcom/oneplus/gallery2/media/Media;Z)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 179
    if-eqz p1, :cond_2

    .line 183
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Media:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 192
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PendingRemovingMedia:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 197
    :cond_1
    if-nez p2, :cond_6

    .line 199
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 180
    :cond_2
    return v1

    .line 185
    :cond_3
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSet;->addHiddenMedia(Lcom/oneplus/gallery2/media/Media;)Z

    .line 186
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_ContainsHiddenMedia:Z

    if-nez v0, :cond_0

    .line 187
    return v1

    .line 191
    :cond_4
    return v1

    .line 194
    :cond_5
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PendingAddingMedia:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 195
    return v1

    .line 198
    :cond_6
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->commitMediaSync()V

    goto :goto_0
.end method

.method protected addMediaToMediaLists(Lcom/oneplus/gallery2/media/Media;)V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 210
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;

    invoke-virtual {v0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->addMedia(Lcom/oneplus/gallery2/media/Media;)I

    .line 209
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 211
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

    .line 221
    if-nez p1, :cond_1

    .line 222
    :cond_0
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 227
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_3

    .line 229
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;

    .line 230
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->getComparator()Lcom/oneplus/gallery2/media/MediaComparator;

    move-result-object v4

    if-ne v4, v1, :cond_2

    .line 235
    :goto_1
    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->addMedia(Ljava/util/List;Z)V

    .line 227
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 232
    :cond_2
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->getComparator()Lcom/oneplus/gallery2/media/MediaComparator;

    move-result-object v1

    .line 233
    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1

    .line 237
    :cond_3
    return-void
.end method

.method protected canSyncMediaBeforeMediaTableReady()Z
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x1

    return v0
.end method

.method protected checkMediaPositionInMediaLists(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 3

    .prologue
    .line 257
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 259
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;

    .line 260
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->getComparator()Lcom/oneplus/gallery2/media/MediaComparator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/gallery2/media/MediaComparator;->getEffectiveMediaUpdateFlags()I

    move-result v2

    and-int/2addr v2, p2

    if-nez v2, :cond_0

    .line 257
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 261
    :cond_0
    invoke-virtual {v0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->checkMediaIndex(Lcom/oneplus/gallery2/media/Media;)Z

    goto :goto_1

    .line 263
    :cond_1
    return-void
.end method

.method protected clearExtras()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 271
    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Extra:Landroid/util/LongSparseArray;

    .line 272
    return-void
.end method

.method protected clearMedia()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 281
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->verifyAccess()V

    .line 282
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Media:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PhotoCount:I

    .line 287
    iget v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_VideoCount:I

    .line 288
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PendingAddingMedia:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 289
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PendingRemovingMedia:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 290
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Media:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 291
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_CoverMediaList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 292
    iput v3, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PhotoCount:I

    .line 293
    iput v3, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_VideoCount:I

    .line 294
    sget-object v2, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v3, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PhotoCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v0, v3}, Lcom/oneplus/gallery2/media/BaseMediaSet;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 295
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_VIDEO_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_VideoCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/oneplus/gallery2/media/BaseMediaSet;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 296
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/BaseMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 297
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->updateCoverHashCode()V

    .line 298
    return-void

    .line 283
    :cond_0
    return-void
.end method

.method protected commitMediaSync()V
    .locals 11

    .prologue
    const/16 v10, 0xc

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 307
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->verifyAccess()V

    .line 314
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PendingRemovingMedia:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move v6, v4

    move v1, v4

    move v2, v4

    .line 362
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PendingAddingMedia:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 415
    :goto_1
    if-nez v6, :cond_d

    .line 417
    if-nez v4, :cond_e

    .line 422
    :goto_2
    if-nez v2, :cond_f

    .line 428
    :goto_3
    if-nez v1, :cond_10

    .line 434
    :goto_4
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Media:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/BaseMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 435
    return-void

    .line 317
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

    .line 319
    iget-object v8, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Media:Ljava/util/Set;

    invoke-interface {v8, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 328
    invoke-static {}, Lcom/oneplus/gallery2/media/BaseMediaSet;->$SWITCH_TABLE$com$oneplus$gallery2$media$MediaType()[I

    move-result-object v8

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/Media;->getType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/oneplus/gallery2/media/MediaType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    goto :goto_5

    .line 331
    :pswitch_0
    add-int/lit8 v2, v2, -0x1

    .line 340
    :goto_6
    if-eqz v6, :cond_2

    move v3, v5

    goto :goto_5

    .line 334
    :pswitch_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 342
    :cond_2
    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_CoverMediaList:Ljava/util/List;

    sget-object v8, Lcom/oneplus/gallery2/media/BaseMediaSet;->COVER_MEDIA_COMPARATOR:Lcom/oneplus/gallery2/media/MediaComparator;

    invoke-static {v3, v0, v8}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 343
    if-gez v0, :cond_3

    move v3, v5

    goto :goto_5

    :cond_3
    move v3, v5

    move v6, v5

    .line 344
    goto :goto_5

    .line 356
    :cond_4
    if-nez v3, :cond_5

    .line 358
    :goto_7
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PendingRemovingMedia:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto :goto_0

    .line 357
    :cond_5
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PendingRemovingMedia:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->removeMediaFromMediaLists(Ljava/util/Collection;)V

    goto :goto_7

    .line 365
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

    .line 367
    iget-object v8, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Media:Ljava/util/Set;

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 376
    invoke-static {}, Lcom/oneplus/gallery2/media/BaseMediaSet;->$SWITCH_TABLE$com$oneplus$gallery2$media$MediaType()[I

    move-result-object v8

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/Media;->getType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/oneplus/gallery2/media/MediaType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_1

    goto :goto_8

    .line 379
    :pswitch_2
    add-int/lit8 v2, v2, 0x1

    .line 388
    :goto_9
    if-eqz v6, :cond_8

    move v4, v5

    goto :goto_8

    .line 382
    :pswitch_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 390
    :cond_8
    iget-object v4, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_CoverMediaList:Ljava/util/List;

    sget-object v8, Lcom/oneplus/gallery2/media/BaseMediaSet;->COVER_MEDIA_COMPARATOR:Lcom/oneplus/gallery2/media/MediaComparator;

    invoke-static {v4, v0, v8}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v4

    xor-int/lit8 v4, v4, -0x1

    .line 391
    if-gez v4, :cond_a

    :cond_9
    move v4, v5

    goto :goto_8

    :cond_a
    if-ge v4, v10, :cond_9

    .line 393
    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_CoverMediaList:Ljava/util/List;

    invoke-interface {v3, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 395
    :goto_a
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_CoverMediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v10, :cond_11

    .line 396
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_CoverMediaList:Ljava/util/List;

    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_CoverMediaList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_a

    .line 409
    :cond_b
    if-nez v4, :cond_c

    .line 411
    :goto_b
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PendingAddingMedia:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    move v4, v3

    goto/16 :goto_1

    .line 410
    :cond_c
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PendingAddingMedia:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->addMediaToMediaLists(Ljava/util/Collection;)V

    goto :goto_b

    .line 416
    :cond_d
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->updateCoverMediaList()V

    goto/16 :goto_2

    .line 418
    :cond_e
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->updateCoverHashCode()V

    goto/16 :goto_2

    .line 425
    :cond_f
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PhotoCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PhotoCount:I

    .line 426
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

    .line 431
    :cond_10
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_VideoCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_VideoCount:I

    .line 432
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

    .line 328
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 376
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected completeDeletion(Lcom/oneplus/base/Handle;ZI)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 448
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->verifyAccess()V

    .line 449
    if-nez p1, :cond_1

    .line 450
    :cond_0
    return-void

    .line 449
    :cond_1
    instance-of v0, p1, Lcom/oneplus/base/CallbackHandle;

    if-eqz v0, :cond_0

    .line 451
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_IS_DELETING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 455
    check-cast p1, Lcom/oneplus/base/CallbackHandle;

    .line 456
    invoke-virtual {p1}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 460
    :goto_0
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_IS_DELETING:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/BaseMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 463
    if-nez p2, :cond_4

    .line 470
    :goto_1
    invoke-virtual {p0, p2, p3}, Lcom/oneplus/gallery2/media/BaseMediaSet;->onDeletionCompleted(ZI)V

    .line 471
    if-nez p2, :cond_5

    .line 481
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 483
    :goto_2
    return-void

    .line 452
    :cond_2
    return-void

    .line 457
    :cond_3
    invoke-virtual {p1}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSet$DeletionCallback;

    invoke-virtual {v0, p0, p2, p3}, Lcom/oneplus/gallery2/media/MediaSet$DeletionCallback;->onDeletionCompleted(Lcom/oneplus/gallery2/media/MediaSet;ZI)V

    goto :goto_0

    .line 465
    :cond_4
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_CoverMediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 466
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->updateCoverHashCode()V

    goto :goto_1

    .line 473
    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->clearMedia()V

    .line 474
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSet;->EVENT_DELETED:Lcom/oneplus/base/EventKey;

    sget-object v1, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/BaseMediaSet;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 477
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.oneplus.gallery2.media.action.MEDIA_SET_DELETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "MediaSetId"

    .line 478
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oneplus/base/BaseApplication;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    .line 482
    :cond_6
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->commitMediaSync()V

    goto :goto_2
.end method

.method public contains(Lcom/oneplus/gallery2/media/Media;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 490
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

    .line 499
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->verifyAccess()V

    .line 500
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 501
    :cond_0
    return-object v2

    .line 500
    :cond_1
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_IS_DELETING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 504
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_IS_DELETING:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/BaseMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 507
    new-instance v0, Lcom/oneplus/gallery2/media/BaseMediaSet$2;

    const-string/jumbo v1, "DeleteMediaSet"

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/oneplus/gallery2/media/BaseMediaSet$2;-><init>(Lcom/oneplus/gallery2/media/BaseMediaSet;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSet$DeletionCallback;Landroid/os/Handler;)V

    .line 513
    if-nez p1, :cond_2

    .line 515
    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/oneplus/gallery2/media/BaseMediaSet;->startDeletion(Lcom/oneplus/base/Handle;I)V

    .line 516
    return-object v0

    .line 514
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
    .line 525
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_CONTAINS_HIDDEN_MEDIA:Lcom/oneplus/base/PropertyKey;

    if-eq p1, v0, :cond_0

    .line 527
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    if-eq p1, v0, :cond_1

    .line 529
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_VIDEO_COUNT:Lcom/oneplus/base/PropertyKey;

    if-eq p1, v0, :cond_2

    .line 531
    invoke-super {p0, p1}, Lcom/oneplus/base/BasicBaseObject;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 526
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_ContainsHiddenMedia:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 528
    :cond_1
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PhotoCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 530
    :cond_2
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
    .line 540
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Extra:Landroid/util/LongSparseArray;

    if-nez v0, :cond_1

    .line 553
    :cond_0
    return-object p2

    .line 542
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Extra:Landroid/util/LongSparseArray;

    invoke-interface {p1}, Lcom/oneplus/gallery2/ExtraKey;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    .line 543
    if-eqz v0, :cond_0

    .line 547
    return-object v0
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 561
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
    .line 571
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Media:Ljava/util/Set;

    return-object v0
.end method

.method protected getNameResourceId()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 581
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
    .line 590
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Source:Lcom/oneplus/gallery2/media/MediaSource;

    return-object v0
.end method

.method public getTargetMediaType()Lcom/oneplus/gallery2/media/MediaType;
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_TargetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    return-object v0
.end method

.method public isVisibilityChangeSupported()Z
    .locals 1

    .prologue
    .line 606
    const/4 v0, 0x0

    return v0
.end method

.method protected onDeletionCompleted(ZI)V
    .locals 0

    .prologue
    .line 616
    return-void
.end method

.method protected onIterateMedia(Lcom/oneplus/gallery2/media/Media;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 625
    invoke-direct {p0, p1, v1}, Lcom/oneplus/gallery2/media/BaseMediaSet;->shouldContainsMediaInternal(Lcom/oneplus/gallery2/media/Media;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 627
    :goto_0
    return-void

    .line 626
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/oneplus/gallery2/media/BaseMediaSet;->addMedia(Lcom/oneplus/gallery2/media/Media;Z)Z

    goto :goto_0
.end method

.method protected onLocaleChanged(Ljava/util/Locale;Ljava/util/Locale;)V
    .locals 3

    .prologue
    .line 638
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->getNameResourceId()I

    move-result v0

    .line 639
    if-nez v0, :cond_0

    .line 641
    :goto_0
    return-void

    .line 640
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
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 651
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/media/BaseMediaSet;->shouldContainsMediaInternal(Lcom/oneplus/gallery2/media/Media;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 661
    :goto_0
    return-void

    .line 653
    :cond_0
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/media/MediaSource;->PROP_IS_MEDIA_TABLE_READY:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery2/media/MediaSource;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 657
    invoke-virtual {p0, p1, v2}, Lcom/oneplus/gallery2/media/BaseMediaSet;->addMedia(Lcom/oneplus/gallery2/media/Media;Z)Z

    .line 658
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->scheduleCommitMediaSync()V

    goto :goto_0

    .line 654
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->addMedia(Lcom/oneplus/gallery2/media/Media;Z)Z

    goto :goto_0
.end method

.method protected onMediaDeleted(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 672
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSet;->removeHiddenMedia(Lcom/oneplus/gallery2/media/Media;)Z

    .line 674
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/media/MediaSource;->PROP_IS_MEDIA_TABLE_READY:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery2/media/MediaSource;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 678
    invoke-virtual {p0, p1, v2}, Lcom/oneplus/gallery2/media/BaseMediaSet;->removeMedia(Lcom/oneplus/gallery2/media/Media;Z)Z

    .line 679
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->scheduleCommitMediaSync()V

    .line 681
    :goto_0
    return-void

    .line 675
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->removeMedia(Lcom/oneplus/gallery2/media/Media;Z)Z

    goto :goto_0
.end method

.method protected onMediaIterationEnded()V
    .locals 4

    .prologue
    .line 690
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_MediaIterationStartTime:J

    sub-long/2addr v0, v2

    .line 691
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onMediaIterationEnded() - Take "

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, " ms to iterate media"

    invoke-static {v2, v3, v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 694
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->commitMediaSync()V

    .line 695
    return-void
.end method

.method protected onMediaIterationStarted()V
    .locals 2

    .prologue
    .line 703
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_MediaIterationStartTime:J

    .line 704
    return-void
.end method

.method protected onMediaTableReady()V
    .locals 1

    .prologue
    .line 767
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->canSyncMediaBeforeMediaTableReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 770
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->setupMedia()V

    .line 771
    :goto_0
    return-void

    .line 768
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->commitMediaSync()V

    goto :goto_0
.end method

.method protected onMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 781
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oneplus/gallery2/media/MediaSource;->isRecycledMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 783
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/media/BaseMediaSet;->shouldContainsMediaInternal(Lcom/oneplus/gallery2/media/Media;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 818
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSet;->removeHiddenMedia(Lcom/oneplus/gallery2/media/Media;)Z

    .line 819
    invoke-virtual {p0, p1, v2}, Lcom/oneplus/gallery2/media/BaseMediaSet;->removeMedia(Lcom/oneplus/gallery2/media/Media;Z)Z

    .line 821
    :cond_0
    :goto_0
    return-void

    .line 782
    :cond_1
    return-void

    .line 785
    :cond_2
    sget v0, Lcom/oneplus/gallery2/media/Media;->FLAG_VISIBILITY_CHANGED:I

    and-int/2addr v0, p2

    if-nez v0, :cond_4

    move v0, v1

    .line 786
    :goto_1
    if-nez v0, :cond_5

    .line 793
    :goto_2
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 795
    :cond_3
    if-nez v0, :cond_8

    :goto_3
    invoke-virtual {p0, p1, v2}, Lcom/oneplus/gallery2/media/BaseMediaSet;->addMedia(Lcom/oneplus/gallery2/media/Media;Z)Z

    move-result v1

    if-nez v1, :cond_9

    .line 801
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Media:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/media/BaseMediaSet;->checkMediaPositionInMediaLists(Lcom/oneplus/gallery2/media/Media;I)V

    .line 804
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_CoverMediaList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/oneplus/gallery2/media/BaseMediaSet;->COVER_MEDIA_UPDATE_FLAGS_MASK:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    .line 805
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->updateCoverHashCode()V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 785
    goto :goto_1

    .line 788
    :cond_5
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->isVisible()Z

    move-result v3

    if-nez v3, :cond_6

    .line 791
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSet;->addHiddenMedia(Lcom/oneplus/gallery2/media/Media;)Z

    goto :goto_2

    .line 789
    :cond_6
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSet;->removeHiddenMedia(Lcom/oneplus/gallery2/media/Media;)Z

    goto :goto_2

    .line 793
    :cond_7
    iget-boolean v3, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_ContainsHiddenMedia:Z

    if-nez v3, :cond_3

    .line 810
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSet;->addHiddenMedia(Lcom/oneplus/gallery2/media/Media;)Z

    .line 811
    if-nez v0, :cond_b

    :goto_4
    invoke-virtual {p0, p1, v2}, Lcom/oneplus/gallery2/media/BaseMediaSet;->removeMedia(Lcom/oneplus/gallery2/media/Media;Z)Z

    .line 812
    if-eqz v0, :cond_0

    .line 813
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->scheduleCommitMediaSync()V

    goto :goto_0

    :cond_8
    move v2, v1

    .line 795
    goto :goto_3

    .line 797
    :cond_9
    if-nez v0, :cond_a

    .line 799
    :goto_5
    return-void

    .line 798
    :cond_a
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->scheduleCommitMediaSync()V

    goto :goto_5

    :cond_b
    move v2, v1

    .line 811
    goto :goto_4
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
    .line 722
    new-instance v0, Lcom/oneplus/gallery2/media/BaseMediaSet$3;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/BaseMediaSet$3;-><init>(Lcom/oneplus/gallery2/media/BaseMediaSet;)V

    return-object v0
.end method

.method protected onPrepareMediaChangeCallback()Lcom/oneplus/base/Handle;
    .locals 2

    .prologue
    .line 739
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
    .line 830
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Media:Ljava/util/Set;

    return-object v0
.end method

.method protected onPrepareMediaIterationClient()Lcom/oneplus/base/Handle;
    .locals 3

    .prologue
    .line 840
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Source:Lcom/oneplus/gallery2/media/MediaSource;

    new-instance v1, Lcom/oneplus/gallery2/media/BaseMediaSet$5;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery2/media/BaseMediaSet$5;-><init>(Lcom/oneplus/gallery2/media/BaseMediaSet;)V

    .line 859
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_TargetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    .line 840
    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaSource;->addMediaIterationClient(Lcom/oneplus/gallery2/media/MediaIterationClient;Lcom/oneplus/gallery2/media/MediaType;)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0
.end method

.method protected onRelease()V
    .locals 3

    .prologue
    .line 868
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Source:Lcom/oneplus/gallery2/media/MediaSource;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaSource;->PROP_IS_MEDIA_TABLE_READY:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_MediaTableStateChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaSource;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 869
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_LocaleChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    if-nez v0, :cond_0

    .line 873
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_MediaChangeCBHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_MediaChangeCBHandle:Lcom/oneplus/base/Handle;

    .line 874
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_MediaIterationClientHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_MediaIterationClientHandle:Lcom/oneplus/base/Handle;

    .line 877
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->clearMedia()V

    .line 880
    invoke-super {p0}, Lcom/oneplus/base/BasicBaseObject;->onRelease()V

    .line 881
    return-void

    .line 870
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

    .line 889
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->verifyAccess()V

    .line 890
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 892
    if-eqz p2, :cond_2

    .line 896
    new-instance v5, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;

    invoke-direct {v5, p0, p1, p2}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;-><init>(Lcom/oneplus/gallery2/media/BaseMediaSet;Lcom/oneplus/gallery2/media/MediaComparator;I)V

    .line 897
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 898
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

    .line 901
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 902
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->onPrepareMediaForMediaList()Ljava/lang/Iterable;

    move-result-object v0

    .line 903
    if-ne p2, v8, :cond_3

    .line 935
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    .line 937
    if-nez v1, :cond_a

    :cond_0
    move-object v1, v0

    .line 938
    goto :goto_0

    .line 891
    :cond_1
    return-object v1

    .line 893
    :cond_2
    return-object v1

    .line 906
    :cond_3
    instance-of v1, v0, Ljava/util/Collection;

    if-nez v1, :cond_4

    .line 910
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 911
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    .line 912
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 907
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 914
    :cond_5
    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 915
    if-gtz p2, :cond_7

    .line 930
    :cond_6
    :goto_2
    invoke-virtual {v5, v1, v8}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->addMedia(Ljava/util/List;Z)V

    .line 942
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v6

    .line 943
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

    .line 946
    return-object v5

    .line 915
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_6

    .line 917
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v2, p2, 0x2

    if-ge v0, v2, :cond_8

    .line 926
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    :goto_4
    add-int/lit8 v0, v0, -0x1

    if-lt v0, p2, :cond_6

    .line 927
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 919
    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(I)V

    move v3, v4

    .line 920
    :goto_5
    if-ge v3, p2, :cond_9

    .line 921
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 920
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5

    :cond_9
    move-object v1, v2

    .line 923
    goto :goto_2

    .line 937
    :cond_a
    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery2/media/MediaComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_0

    goto/16 :goto_0

    .line 940
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
    .line 954
    if-nez p2, :cond_0

    .line 960
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Extra:Landroid/util/LongSparseArray;

    if-nez v0, :cond_2

    .line 962
    :goto_0
    return-void

    .line 956
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Extra:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 958
    :goto_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Extra:Landroid/util/LongSparseArray;

    invoke-interface {p1}, Lcom/oneplus/gallery2/ExtraKey;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 957
    :cond_1
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Extra:Landroid/util/LongSparseArray;

    goto :goto_1

    .line 961
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Extra:Landroid/util/LongSparseArray;

    invoke-interface {p1}, Lcom/oneplus/gallery2/ExtraKey;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_0
.end method

.method protected removeMedia(Lcom/oneplus/gallery2/media/Media;Z)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 990
    if-eqz p1, :cond_1

    .line 992
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PendingAddingMedia:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 994
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Media:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 996
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_PendingRemovingMedia:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 998
    if-nez p2, :cond_5

    .line 1000
    :cond_0
    :goto_0
    return v2

    .line 991
    :cond_1
    return v1

    .line 993
    :cond_2
    return v2

    .line 995
    :cond_3
    return v1

    .line 997
    :cond_4
    return v1

    .line 998
    :cond_5
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_IS_DELETING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 999
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->commitMediaSync()V

    goto :goto_0
.end method

.method protected removeMediaFromMediaLists(Lcom/oneplus/gallery2/media/Media;)V
    .locals 4

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 1012
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;

    .line 1013
    invoke-virtual {v0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->removeMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1010
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1016
    :cond_1
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->getMaxMediaCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1017
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->size()I

    move-result v2

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->getMaxMediaCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1018
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->size()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Media:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1020
    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Media:Ljava/util/Set;

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->addMedia(Ljava/util/Collection;)V

    goto :goto_1

    .line 1024
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

    .line 1034
    if-nez p1, :cond_1

    .line 1035
    :cond_0
    return-void

    .line 1034
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1038
    instance-of v0, p1, Ljava/util/List;

    if-nez v0, :cond_2

    .line 1062
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_0
    if-ltz v4, :cond_9

    .line 1065
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;

    .line 1067
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

    .line 1068
    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->removeMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v1

    or-int/2addr v1, v2

    move v2, v1

    goto :goto_1

    .line 1040
    :cond_2
    check-cast p1, Ljava/util/List;

    .line 1041
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    .line 1042
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_2
    if-ltz v2, :cond_9

    .line 1045
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_OpenedMediaLists:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;

    .line 1047
    add-int/lit8 v1, v6, -0x1

    move v4, v1

    move v5, v3

    :goto_3
    if-ltz v4, :cond_3

    .line 1048
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->removeMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v1

    or-int/2addr v5, v1

    .line 1047
    add-int/lit8 v1, v4, -0x1

    move v4, v1

    goto :goto_3

    .line 1051
    :cond_3
    if-nez v5, :cond_5

    .line 1042
    :cond_4
    :goto_4
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_2

    .line 1052
    :cond_5
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->getMaxMediaCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 1053
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->size()I

    move-result v1

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->getMaxMediaCount()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 1054
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->size()I

    move-result v1

    iget-object v4, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Media:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 1056
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Media:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->addMedia(Ljava/util/Collection;)V

    goto :goto_4

    .line 1071
    :cond_6
    if-nez v2, :cond_8

    .line 1062
    :cond_7
    :goto_5
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_0

    .line 1072
    :cond_8
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->getMaxMediaCount()I

    move-result v1

    if-lez v1, :cond_7

    .line 1073
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->size()I

    move-result v1

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->getMaxMediaCount()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 1074
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->size()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Media:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 1076
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_Media:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->addMedia(Ljava/util/Collection;)V

    goto :goto_5

    .line 1080
    :cond_9
    return-void
.end method

.method public set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 1095
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_CONTAINS_HIDDEN_MEDIA:Lcom/oneplus/base/PropertyKey;

    if-eq p1, v0, :cond_0

    .line 1097
    invoke-super {p0, p1, p2}, Lcom/oneplus/base/BasicBaseObject;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1096
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->setContainsHiddenMediaProp(Z)Z

    move-result v0

    return v0
.end method

.method protected abstract shouldContainsMedia(Lcom/oneplus/gallery2/media/Media;I)Z
.end method

.method protected abstract startDeletion(Lcom/oneplus/base/Handle;I)V
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1176
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected updateCoverHashCode()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1183
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_IS_DELETING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1185
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1186
    const/16 v0, 0x5b

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1187
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1188
    const/16 v0, 0x5d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1189
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_CoverMediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_4

    .line 1191
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet;->m_CoverMediaList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    .line 1192
    instance-of v1, v0, Lcom/oneplus/gallery2/media/GroupedMedia;

    if-nez v1, :cond_2

    .line 1198
    :cond_0
    :goto_1
    if-gtz v2, :cond_3

    .line 1200
    :goto_2
    invoke-interface {v0}, Lcom/oneplus/gallery2/media/Media;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1201
    const/16 v1, 0x3a

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1202
    invoke-interface {v0}, Lcom/oneplus/gallery2/media/Media;->getLastModifiedTime()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1189
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1184
    :cond_1
    return-void

    :cond_2
    move-object v1, v0

    .line 1194
    check-cast v1, Lcom/oneplus/gallery2/media/GroupedMedia;

    invoke-interface {v1}, Lcom/oneplus/gallery2/media/GroupedMedia;->getCover()Lcom/oneplus/gallery2/media/Media;

    move-result-object v1

    .line 1195
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 1196
    goto :goto_1

    .line 1199
    :cond_3
    const/16 v1, 0x2c

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1204
    :cond_4
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMediaSet;->PROP_COVER_HASH_CODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/BaseMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1205
    return-void
.end method
