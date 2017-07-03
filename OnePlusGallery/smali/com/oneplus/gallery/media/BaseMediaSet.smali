.class public abstract Lcom/oneplus/gallery/media/BaseMediaSet;
.super Lcom/oneplus/base/HandlerBaseObject;
.source "BaseMediaSet.java"

# interfaces
.implements Lcom/oneplus/gallery/media/MediaSet;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/media/BaseMediaSet$7;,
        Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;,
        Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;,
        Lcom/oneplus/gallery/media/BaseMediaSet$MediaListImpl;
    }
.end annotation


# static fields
.field protected static final CONTENT_URI_FILE:Landroid/net/Uri;

.field private static final DURATION_UPDATE_COVER_HASH_CODE_DELAY:J = 0x64L

.field protected static final MAX_COVER_MEDIA_COUNT:I = 0xc

.field private static final MSG_ADD_MEDIA_TO_ACTIVE_MEDIA_LISTS:I = -0x7537

.field private static final MSG_ADD_MEDIA_TO_MEDIA_LIST:I = -0x753a

.field private static final MSG_DELETE_MEDIA_SET:I = -0x753f

.field private static final MSG_NOTIFY_MEDIA_COUNT_CHANGED:I = -0x7544

.field private static final MSG_REMOVE_MEDIA_FROM_ACTIVE_MEDIA_LISTS:I = -0x7538

.field private static final MSG_UPDATE_COVER_HASH_CODE:I = -0x754e

.field private static final MSG_UPDATE_COVER_HASH_CODE_DELAY:I = -0x754f

.field private static final MSG_UPDATE_PHOTO_ID_TABLE:I = -0x7549

.field private static final MSG_UPDATE_VIDEO_ID_TABLE:I = -0x754a


# instance fields
.field private MEDIA_QUERY_CONDITION:Ljava/lang/String;

.field private MEDIA_QUERY_CONDITION_PHOTO:Ljava/lang/String;

.field private MEDIA_QUERY_CONDITION_VIDEO:Ljava/lang/String;

.field private m_ActiveMediaLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/oneplus/gallery/media/BaseMediaSet$MediaListImpl;",
            ">;>;"
        }
    .end annotation
.end field

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

.field private final m_MediaChangeCallback:Lcom/oneplus/gallery/media/MediaManager$MediaChangeCallback;

.field private m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

.field private m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

.field private m_MediaManagerActivatedHandle:Lcom/oneplus/base/Handle;

.field private final m_PhotoIdTable:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final m_RecycledMedia:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/gallery/media/Media;",
            "Lcom/oneplus/base/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_TargetMediaType:Lcom/oneplus/gallery/media/MediaType;

.field private final m_Type:Lcom/oneplus/gallery/media/MediaSet$Type;

.field private final m_VideoIdTable:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery/media/BaseMediaSet;->CONTENT_URI_FILE:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/gallery/media/MediaSet$Type;Lcom/oneplus/gallery/media/MediaType;)V
    .locals 4
    .param p1, "type"    # Lcom/oneplus/gallery/media/MediaSet$Type;
    .param p2, "targetMediaType"    # Lcom/oneplus/gallery/media/MediaType;

    .prologue
    const/4 v3, 0x1

    .line 291
    invoke-direct {p0, v3}, Lcom/oneplus/base/HandlerBaseObject;-><init>(Z)V

    .line 44
    const-string v0, "(media_type=1 OR media_type=3)"

    iput-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->MEDIA_QUERY_CONDITION:Ljava/lang/String;

    .line 45
    const-string v0, "(media_type=1)"

    iput-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->MEDIA_QUERY_CONDITION_PHOTO:Ljava/lang/String;

    .line 46
    const-string v0, "(media_type=3)"

    iput-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->MEDIA_QUERY_CONDITION_VIDEO:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_PhotoIdTable:Ljava/util/Set;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_RecycledMedia:Ljava/util/Map;

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_VideoIdTable:Ljava/util/Set;

    .line 72
    new-instance v0, Lcom/oneplus/gallery/media/BaseMediaSet$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/media/BaseMediaSet$1;-><init>(Lcom/oneplus/gallery/media/BaseMediaSet;)V

    iput-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_LocaleChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 80
    new-instance v0, Lcom/oneplus/gallery/media/BaseMediaSet$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/media/BaseMediaSet$2;-><init>(Lcom/oneplus/gallery/media/BaseMediaSet;)V

    iput-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_MediaChangeCallback:Lcom/oneplus/gallery/media/MediaManager$MediaChangeCallback;

    .line 294
    iput-object p1, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_Type:Lcom/oneplus/gallery/media/MediaSet$Type;

    .line 295
    iput-object p2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_TargetMediaType:Lcom/oneplus/gallery/media/MediaType;

    .line 296
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v0

    const-class v1, Lcom/oneplus/gallery/media/OPMediaManager;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GalleryApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/OPMediaManager;

    iput-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    .line 299
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_MediaChangeCallback:Lcom/oneplus/gallery/media/MediaManager$MediaChangeCallback;

    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseMediaSet;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery/media/OPMediaManager;->registerMediaChangeCallback(Lcom/oneplus/gallery/media/MediaManager$MediaChangeCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

    .line 300
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery/GalleryApplication;->PROP_LOCALE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_LocaleChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/GalleryApplication;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 303
    sget-object v0, Lcom/oneplus/gallery/media/BaseMediaSet;->PROP_COVER_HASH_CODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v3}, Lcom/oneplus/gallery/media/BaseMediaSet;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 304
    sget-object v0, Lcom/oneplus/gallery/media/BaseMediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v3}, Lcom/oneplus/gallery/media/BaseMediaSet;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 305
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery/media/BaseMediaSet;Lcom/oneplus/gallery/media/BaseMediaSet$MediaListImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/media/BaseMediaSet;
    .param p1, "x1"    # Lcom/oneplus/gallery/media/BaseMediaSet$MediaListImpl;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/media/BaseMediaSet;->onMediaListReleased(Lcom/oneplus/gallery/media/BaseMediaSet$MediaListImpl;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/gallery/media/BaseMediaSet;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/BaseMediaSet;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private notifyMediaCountChanged()V
    .locals 1

    .prologue
    .line 783
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/media/BaseMediaSet;->notifyMediaCountChanged(Z)V

    .line 784
    return-void
.end method

.method private notifyMediaCountChanged(Z)V
    .locals 4
    .param p1, "delay"    # Z

    .prologue
    const/16 v1, -0x7544

    .line 787
    if-eqz p1, :cond_0

    .line 788
    const/4 v0, 0x1

    const-wide/16 v2, 0x1e

    invoke-static {p0, v1, v0, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 796
    :goto_0
    return-void

    .line 791
    :cond_0
    invoke-static {p0, v1}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 792
    sget-object v0, Lcom/oneplus/gallery/media/BaseMediaSet;->PROP_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_PhotoIdTable:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/media/BaseMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 793
    sget-object v0, Lcom/oneplus/gallery/media/BaseMediaSet;->PROP_VIDEO_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_VideoIdTable:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/media/BaseMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 794
    sget-object v0, Lcom/oneplus/gallery/media/BaseMediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_PhotoIdTable:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_VideoIdTable:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/media/BaseMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private onMediaDeletedOrRecycled(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    const/4 v2, 0x0

    .line 823
    const/4 v1, 0x1

    new-array v0, v1, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    .line 824
    .local v0, "removedIds":[J
    invoke-virtual {p0, v2, v0}, Lcom/oneplus/gallery/media/BaseMediaSet;->updatePhotoIdTable([J[J)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v2, v0}, Lcom/oneplus/gallery/media/BaseMediaSet;->updateVideoIdTable([J[J)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-eqz p4, :cond_1

    .line 826
    invoke-virtual {p0, p4}, Lcom/oneplus/gallery/media/BaseMediaSet;->removeMediaFromActiveMediaLists(Lcom/oneplus/gallery/media/Media;)V

    .line 827
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseMediaSet;->updateCoverHashCodeDelayed()V

    .line 829
    :cond_1
    return-void
.end method

.method private onMediaListReleased(Lcom/oneplus/gallery/media/BaseMediaSet$MediaListImpl;)V
    .locals 5
    .param p1, "mediaList"    # Lcom/oneplus/gallery/media/BaseMediaSet$MediaListImpl;

    .prologue
    .line 835
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    if-nez v2, :cond_1

    .line 853
    :cond_0
    :goto_0
    return-void

    .line 837
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 839
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaListImpl;

    .line 840
    .local v0, "candMediaList":Lcom/oneplus/gallery/media/BaseMediaSet$MediaListImpl;
    if-ne v0, p1, :cond_3

    .line 842
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 843
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->TAG:Ljava/lang/String;

    const-string v3, "onMediaListReleased() - Active media list count : "

    iget-object v4, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 851
    .end local v0    # "candMediaList":Lcom/oneplus/gallery/media/BaseMediaSet$MediaListImpl;
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 852
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_MediaManagerActivatedHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_MediaManagerActivatedHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 846
    .restart local v0    # "candMediaList":Lcom/oneplus/gallery/media/BaseMediaSet$MediaListImpl;
    :cond_3
    if-nez v0, :cond_4

    .line 847
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 837
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method protected addMediaToActiveMediaLists(Lcom/oneplus/gallery/media/Media;)V
    .locals 5
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseMediaSet;->isDependencyThread()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 314
    if-nez p1, :cond_1

    .line 316
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->TAG:Ljava/lang/String;

    const-string v3, "addMediaToActiveMediaLists() - Media is null"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    sget-object v2, Lcom/oneplus/gallery/media/BaseMediaSet;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery/media/BaseMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 321
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addMediaToActiveMediaLists() - Media set is released, media: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 324
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    if-nez v2, :cond_3

    .line 326
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->TAG:Ljava/lang/String;

    const-string v3, "addMediaToActiveMediaLists() - Active media lists is null"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 331
    :cond_3
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->TAG:Ljava/lang/String;

    const-string v3, "addMediaToActiveMediaLists() - Media: "

    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 332
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_0

    .line 334
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/BaseMediaSet$MediaListImpl;

    .line 335
    .local v1, "mediaList":Lcom/oneplus/gallery/media/BaseMediaSet$MediaListImpl;
    if-eqz v1, :cond_4

    .line 336
    invoke-virtual {v1, p1}, Lcom/oneplus/gallery/media/BaseMediaSet$MediaListImpl;->addMedia(Lcom/oneplus/gallery/media/Media;)I

    .line 332
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 338
    :cond_4
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 342
    .end local v0    # "i":I
    .end local v1    # "mediaList":Lcom/oneplus/gallery/media/BaseMediaSet$MediaListImpl;
    :cond_5
    const/16 v2, -0x7537

    invoke-static {p0, v2, p1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;ILjava/lang/Object;)Z

    goto :goto_0
.end method

.method protected addMediaToMediaList(Lcom/oneplus/gallery/media/MediaList;Lcom/oneplus/gallery/media/Media;)V
    .locals 3
    .param p1, "mediaList"    # Lcom/oneplus/gallery/media/MediaList;
    .param p2, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseMediaSet;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 352
    if-nez p2, :cond_0

    .line 354
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->TAG:Ljava/lang/String;

    const-string v1, "addMediaToMediaList() - Media is null"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    .end local p1    # "mediaList":Lcom/oneplus/gallery/media/MediaList;
    :goto_0
    return-void

    .line 357
    .restart local p1    # "mediaList":Lcom/oneplus/gallery/media/MediaList;
    :cond_0
    sget-object v0, Lcom/oneplus/gallery/media/BaseMediaSet;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/media/BaseMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addMediaToMediaList() - Media set is released, media: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 362
    :cond_1
    sget-object v0, Lcom/oneplus/gallery/media/MediaList;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Lcom/oneplus/gallery/media/MediaList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 364
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addMediaToMediaList() - Media list is released, media list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", media: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 367
    :cond_2
    instance-of v0, p1, Lcom/oneplus/gallery/media/BaseMediaSet$MediaListImpl;

    if-nez v0, :cond_3

    .line 369
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addMediaToMediaList() - Media list type is not valid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 374
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->TAG:Ljava/lang/String;

    const-string v1, "addMediaToMediaList() - Media: "

    invoke-interface {p2}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 375
    check-cast p1, Lcom/oneplus/gallery/media/BaseMediaSet$MediaListImpl;

    .end local p1    # "mediaList":Lcom/oneplus/gallery/media/MediaList;
    invoke-virtual {p1, p2}, Lcom/oneplus/gallery/media/BaseMediaSet$MediaListImpl;->addMedia(Lcom/oneplus/gallery/media/Media;)I

    goto/16 :goto_0

    .line 378
    .restart local p1    # "mediaList":Lcom/oneplus/gallery/media/MediaList;
    :cond_4
    const/16 v0, -0x753a

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;ILjava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method protected addMediaToMediaList(Lcom/oneplus/gallery/media/MediaList;Ljava/util/List;Z)V
    .locals 4
    .param p1, "mediaList"    # Lcom/oneplus/gallery/media/MediaList;
    .param p3, "isSorted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery/media/MediaList;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/media/Media;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p2, "media":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 382
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseMediaSet;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 385
    sget-object v0, Lcom/oneplus/gallery/media/MediaList;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Lcom/oneplus/gallery/media/MediaList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 396
    .end local p1    # "mediaList":Lcom/oneplus/gallery/media/MediaList;
    :cond_0
    :goto_0
    return-void

    .line 387
    .restart local p1    # "mediaList":Lcom/oneplus/gallery/media/MediaList;
    :cond_1
    instance-of v0, p1, Lcom/oneplus/gallery/media/BaseMediaSet$MediaListImpl;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->TAG:Ljava/lang/String;

    const-string v1, "addMediaToMediaList() - List"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    check-cast p1, Lcom/oneplus/gallery/media/BaseMediaSet$MediaListImpl;

    .end local p1    # "mediaList":Lcom/oneplus/gallery/media/MediaList;
    invoke-virtual {p1, p2, p3}, Lcom/oneplus/gallery/media/BaseMediaSet$MediaListImpl;->addMedia(Ljava/util/List;Z)V

    goto :goto_0

    .line 395
    .restart local p1    # "mediaList":Lcom/oneplus/gallery/media/MediaList;
    :cond_2
    const/16 v0, -0x753a

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    invoke-static {p0, v0, v3, v2, v1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    goto :goto_0
.end method

.method protected addToMediaIdTable(JLcom/oneplus/gallery/media/MediaType;)Z
    .locals 1
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;

    .prologue
    .line 407
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/oneplus/gallery/media/BaseMediaSet;->addToMediaIdTable(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/base/OperationCallback;)Z

    move-result v0

    return v0
.end method

.method protected addToMediaIdTable(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/base/OperationCallback;)Z
    .locals 5
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/oneplus/gallery/media/MediaType;",
            "Lcom/oneplus/base/OperationCallback",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p4, "callback":Lcom/oneplus/base/OperationCallback;, "Lcom/oneplus/base/OperationCallback<Ljava/lang/Object;Ljava/lang/Boolean;Ljava/lang/Object;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 420
    if-nez p3, :cond_1

    .line 422
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->TAG:Ljava/lang/String;

    const-string v2, "addToMediaIdTable() - No media type"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    if-eqz p4, :cond_0

    .line 425
    invoke-interface {p4, v4}, Lcom/oneplus/base/OperationCallback;->onStarted(Ljava/lang/Object;)V

    .line 426
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p4, v1}, Lcom/oneplus/base/OperationCallback;->onCompleted(Ljava/lang/Object;)V

    .line 443
    :cond_0
    :goto_0
    return v0

    .line 430
    :cond_1
    sget-object v1, Lcom/oneplus/gallery/media/BaseMediaSet$7;->$SwitchMap$com$oneplus$gallery$media$MediaType:[I

    invoke-virtual {p3}, Lcom/oneplus/gallery/media/MediaType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 437
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addToMediaIdTable() - Unsupported media type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    if-eqz p4, :cond_0

    .line 440
    invoke-interface {p4, v4}, Lcom/oneplus/base/OperationCallback;->onStarted(Ljava/lang/Object;)V

    .line 441
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p4, v1}, Lcom/oneplus/base/OperationCallback;->onCompleted(Ljava/lang/Object;)V

    goto :goto_0

    .line 433
    :pswitch_0
    new-array v1, v3, [J

    aput-wide p1, v1, v0

    invoke-virtual {p0, v1, v4, p4}, Lcom/oneplus/gallery/media/BaseMediaSet;->updatePhotoIdTable([J[JLcom/oneplus/base/OperationCallback;)Z

    move-result v0

    goto :goto_0

    .line 435
    :pswitch_1
    new-array v1, v3, [J

    aput-wide p1, v1, v0

    invoke-virtual {p0, v1, v4, p4}, Lcom/oneplus/gallery/media/BaseMediaSet;->updateVideoIdTable([J[JLcom/oneplus/base/OperationCallback;)Z

    move-result v0

    goto :goto_0

    .line 430
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public cleanUpRecycleBin(Lcom/oneplus/gallery/media/MediaDeletionCallback;Landroid/os/Handler;I)I
    .locals 7
    .param p1, "callback"    # Lcom/oneplus/gallery/media/MediaDeletionCallback;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 453
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseMediaSet;->verifyAccess()V

    .line 454
    sget-object v3, Lcom/oneplus/gallery/media/BaseMediaSet;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery/media/BaseMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v4

    .line 470
    :cond_0
    :goto_0
    return v2

    .line 458
    :cond_1
    const/4 v2, 0x0

    .line 459
    .local v2, "result":I
    iget-object v3, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_RecycledMedia:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/Media;

    .line 461
    .local v1, "media":Lcom/oneplus/gallery/media/Media;
    invoke-virtual {p0, v1, p1, p2, v4}, Lcom/oneplus/gallery/media/BaseMediaSet;->deleteMedia(Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/media/MediaDeletionCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 462
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 464
    .end local v1    # "media":Lcom/oneplus/gallery/media/Media;
    :cond_3
    iget-object v3, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_RecycledMedia:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 466
    sget-object v3, Lcom/oneplus/gallery/media/BaseMediaSet;->PROP_CONTAINS_RECYCLED_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/gallery/media/BaseMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 468
    if-lez v2, :cond_0

    .line 469
    iget-object v3, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->TAG:Ljava/lang/String;

    const-string v4, "cleanUpRecycleBin() - Clean up "

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, " media"

    invoke-static {v3, v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public delete(Lcom/oneplus/gallery/media/MediaSet$DeletionCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;
    .locals 3
    .param p1, "callback"    # Lcom/oneplus/gallery/media/MediaSet$DeletionCallback;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "flags"    # I

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseMediaSet;->verifyAccess()V

    .line 480
    sget-object v1, Lcom/oneplus/gallery/media/BaseMediaSet;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/media/BaseMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 482
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->TAG:Ljava/lang/String;

    const-string v2, "delete() - Media set is released"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const/4 v0, 0x0

    .line 510
    :goto_0
    return-object v0

    .line 486
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->TAG:Ljava/lang/String;

    const-string v2, "delete()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    new-instance v0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;

    new-instance v1, Lcom/oneplus/gallery/media/BaseMediaSet$3;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/gallery/media/BaseMediaSet$3;-><init>(Lcom/oneplus/gallery/media/BaseMediaSet;Lcom/oneplus/gallery/media/MediaSet$DeletionCallback;)V

    invoke-direct {v0, p0, v1, p2, p3}, Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;-><init>(Lcom/oneplus/gallery/media/BaseMediaSet;Lcom/oneplus/gallery/media/MediaSet$DeletionCallback;Landroid/os/Handler;I)V

    .line 508
    .local v0, "handle":Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;
    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/media/BaseMediaSet;->delete(Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;)V

    goto :goto_0
.end method

.method protected abstract delete(Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;)V
.end method

.method public deleteMedia(Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/media/MediaDeletionCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;
    .locals 7
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p2, "callback"    # Lcom/oneplus/gallery/media/MediaDeletionCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "flags"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 520
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseMediaSet;->verifyAccess()V

    .line 521
    sget-object v1, Lcom/oneplus/gallery/media/BaseMediaSet;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/media/BaseMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 523
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->TAG:Ljava/lang/String;

    const-string v2, "deleteMedia() - Media set is released"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    :goto_0
    return-object v0

    .line 528
    :cond_0
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_2

    .line 530
    sget-object v1, Lcom/oneplus/gallery/media/BaseMediaSet;->PROP_CONTAINS_RECYCLED_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/gallery/media/BaseMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 531
    invoke-static {p2, p1, p3}, Lcom/oneplus/gallery/media/MediaDeletionCallbackUtils;->callOnDeletionStarted(Lcom/oneplus/gallery/media/MediaDeletionCallback;Lcom/oneplus/gallery/media/Media;Landroid/os/Handler;)V

    .line 532
    invoke-virtual {p0, p1, v3}, Lcom/oneplus/gallery/media/BaseMediaSet;->recycleMedia(Lcom/oneplus/gallery/media/Media;I)Lcom/oneplus/base/Handle;

    move-result-object v6

    .line 533
    .local v6, "recyclingHandle":Lcom/oneplus/base/Handle;
    invoke-static {v6}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 535
    invoke-static {p2, p1, v4, p3}, Lcom/oneplus/gallery/media/MediaDeletionCallbackUtils;->callOnDeletionCompleted(Lcom/oneplus/gallery/media/MediaDeletionCallback;Lcom/oneplus/gallery/media/Media;ZLandroid/os/Handler;)V

    .line 536
    new-instance v0, Lcom/oneplus/gallery/media/BaseMediaSet$4;

    const-string v1, "MoveMediaToRecycleBin"

    invoke-direct {v0, p0, v1}, Lcom/oneplus/gallery/media/BaseMediaSet$4;-><init>(Lcom/oneplus/gallery/media/BaseMediaSet;Ljava/lang/String;)V

    goto :goto_0

    .line 543
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->TAG:Ljava/lang/String;

    const-string v2, "deleteMedia() - Fail to recycle media"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-static {p2, p1, v3, p3}, Lcom/oneplus/gallery/media/MediaDeletionCallbackUtils;->callOnDeletionCompleted(Lcom/oneplus/gallery/media/MediaDeletionCallback;Lcom/oneplus/gallery/media/Media;ZLandroid/os/Handler;)V

    goto :goto_0

    .line 549
    .end local v6    # "recyclingHandle":Lcom/oneplus/base/Handle;
    :cond_2
    new-instance v0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;

    new-instance v3, Lcom/oneplus/gallery/media/BaseMediaSet$5;

    invoke-direct {v3, p0, p2}, Lcom/oneplus/gallery/media/BaseMediaSet$5;-><init>(Lcom/oneplus/gallery/media/BaseMediaSet;Lcom/oneplus/gallery/media/MediaDeletionCallback;)V

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;-><init>(Lcom/oneplus/gallery/media/BaseMediaSet;Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/media/MediaDeletionCallback;Landroid/os/Handler;I)V

    .line 600
    .local v0, "handle":Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;
    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/media/BaseMediaSet;->deleteMedia(Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;)V

    goto :goto_0
.end method

.method protected abstract deleteMedia(Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;)V
.end method

.method protected deleteMediaSet()V
    .locals 4

    .prologue
    .line 611
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseMediaSet;->isDependencyThread()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 614
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    invoke-interface {v2, p0}, Lcom/oneplus/gallery/media/OPMediaManager;->notifyMediaSetDeleted(Lcom/oneplus/gallery/media/MediaSet;)V

    .line 617
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 619
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->TAG:Ljava/lang/String;

    const-string v3, "deleteMediaSet() - Release all media lists"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 622
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/BaseMediaSet$MediaListImpl;

    .line 623
    .local v1, "mediaList":Lcom/oneplus/gallery/media/BaseMediaSet$MediaListImpl;
    if-eqz v1, :cond_0

    .line 624
    invoke-virtual {v1}, Lcom/oneplus/gallery/media/BaseMediaSet$MediaListImpl;->release()V

    .line 620
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 626
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 631
    .end local v0    # "i":I
    .end local v1    # "mediaList":Lcom/oneplus/gallery/media/BaseMediaSet$MediaListImpl;
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_PhotoIdTable:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 632
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_VideoIdTable:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 635
    sget-object v2, Lcom/oneplus/gallery/media/BaseMediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/gallery/media/BaseMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 639
    :goto_2
    return-void

    .line 638
    :cond_2
    const/16 v2, -0x753f

    invoke-static {p0, v2}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;I)Z

    goto :goto_2
.end method

.method protected getBaseMediaQueryCondition()Ljava/lang/String;
    .locals 2

    .prologue
    .line 648
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_TargetMediaType:Lcom/oneplus/gallery/media/MediaType;

    if-nez v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->MEDIA_QUERY_CONDITION:Ljava/lang/String;

    .line 657
    :goto_0
    return-object v0

    .line 650
    :cond_0
    sget-object v0, Lcom/oneplus/gallery/media/BaseMediaSet$7;->$SwitchMap$com$oneplus$gallery$media$MediaType:[I

    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_TargetMediaType:Lcom/oneplus/gallery/media/MediaType;

    invoke-virtual {v1}, Lcom/oneplus/gallery/media/MediaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 657
    const/4 v0, 0x0

    goto :goto_0

    .line 653
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->MEDIA_QUERY_CONDITION_PHOTO:Ljava/lang/String;

    goto :goto_0

    .line 655
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->MEDIA_QUERY_CONDITION_VIDEO:Ljava/lang/String;

    goto :goto_0

    .line 650
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getMediaIdTable()[J
    .locals 10

    .prologue
    .line 665
    iget-object v7, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_PhotoIdTable:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v5

    .line 666
    .local v5, "photoCount":I
    iget-object v7, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_VideoIdTable:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v6

    .line 667
    .local v6, "videoCount":I
    add-int v7, v5, v6

    new-array v4, v7, [J

    .line 668
    .local v4, "idArray":[J
    if-lez v5, :cond_0

    .line 670
    const/4 v0, 0x0

    .line 671
    .local v0, "i":I
    iget-object v7, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_PhotoIdTable:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 672
    .local v3, "id":Ljava/lang/Long;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    aput-wide v8, v4, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 674
    .end local v0    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "id":Ljava/lang/Long;
    :cond_0
    if-lez v6, :cond_1

    .line 676
    move v0, v5

    .line 677
    .restart local v0    # "i":I
    iget-object v7, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_VideoIdTable:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 678
    .restart local v3    # "id":Ljava/lang/Long;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    aput-wide v8, v4, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_1

    .line 680
    .end local v0    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "id":Ljava/lang/Long;
    :cond_1
    return-object v4
.end method

.method protected getMediaManager()Lcom/oneplus/gallery/media/OPMediaManager;
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    return-object v0
.end method

.method public final getTargetMediaType()Lcom/oneplus/gallery/media/MediaType;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_TargetMediaType:Lcom/oneplus/gallery/media/MediaType;

    return-object v0
.end method

.method public getType()Lcom/oneplus/gallery/media/MediaSet$Type;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_Type:Lcom/oneplus/gallery/media/MediaSet$Type;

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 714
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 774
    invoke-super {p0, p1}, Lcom/oneplus/base/HandlerBaseObject;->handleMessage(Landroid/os/Message;)V

    .line 777
    :goto_0
    return-void

    .line 717
    :sswitch_0
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/oneplus/gallery/media/Media;

    invoke-virtual {p0, v5}, Lcom/oneplus/gallery/media/BaseMediaSet;->addMediaToActiveMediaLists(Lcom/oneplus/gallery/media/Media;)V

    goto :goto_0

    .line 722
    :sswitch_1
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    move-object v3, v5

    check-cast v3, [Ljava/lang/Object;

    .line 723
    .local v3, "params":[Ljava/lang/Object;
    aget-object v5, v3, v7

    instance-of v5, v5, Lcom/oneplus/gallery/media/Media;

    if-eqz v5, :cond_0

    .line 724
    aget-object v5, v3, v8

    check-cast v5, Lcom/oneplus/gallery/media/MediaList;

    aget-object v6, v3, v7

    check-cast v6, Lcom/oneplus/gallery/media/Media;

    invoke-virtual {p0, v5, v6}, Lcom/oneplus/gallery/media/BaseMediaSet;->addMediaToMediaList(Lcom/oneplus/gallery/media/MediaList;Lcom/oneplus/gallery/media/Media;)V

    goto :goto_0

    .line 726
    :cond_0
    aget-object v5, v3, v8

    check-cast v5, Lcom/oneplus/gallery/media/MediaList;

    aget-object v6, v3, v7

    check-cast v6, Ljava/util/List;

    iget v9, p1, Landroid/os/Message;->arg1:I

    if-eqz v9, :cond_1

    :goto_1
    invoke-virtual {p0, v5, v6, v7}, Lcom/oneplus/gallery/media/BaseMediaSet;->addMediaToMediaList(Lcom/oneplus/gallery/media/MediaList;Ljava/util/List;Z)V

    goto :goto_0

    :cond_1
    move v7, v8

    goto :goto_1

    .line 730
    .end local v3    # "params":[Ljava/lang/Object;
    :sswitch_2
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseMediaSet;->deleteMediaSet()V

    goto :goto_0

    .line 734
    :sswitch_3
    invoke-direct {p0}, Lcom/oneplus/gallery/media/BaseMediaSet;->notifyMediaCountChanged()V

    goto :goto_0

    .line 738
    :sswitch_4
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/oneplus/gallery/media/Media;

    invoke-virtual {p0, v5}, Lcom/oneplus/gallery/media/BaseMediaSet;->removeMediaFromActiveMediaLists(Lcom/oneplus/gallery/media/Media;)V

    goto :goto_0

    .line 742
    :sswitch_5
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/oneplus/gallery/media/BaseMediaSet;->updateCoverHashCode(Ljava/lang/String;)V

    goto :goto_0

    .line 746
    :sswitch_6
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseMediaSet;->updateCoverHashCode()V

    goto :goto_0

    .line 751
    :sswitch_7
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    move-object v2, v5

    check-cast v2, [Ljava/lang/Object;

    .line 752
    .local v2, "objs":[Ljava/lang/Object;
    aget-object v5, v2, v8

    check-cast v5, [J

    move-object v0, v5

    check-cast v0, [J

    .line 753
    .local v0, "adds":[J
    aget-object v5, v2, v7

    check-cast v5, [J

    move-object v4, v5

    check-cast v4, [J

    .line 754
    .local v4, "removes":[J
    aget-object v5, v2, v6

    if-eqz v5, :cond_2

    .line 756
    aget-object v1, v2, v6

    check-cast v1, Lcom/oneplus/base/OperationCallback;

    .line 757
    .local v1, "callback":Lcom/oneplus/base/OperationCallback;, "Lcom/oneplus/base/OperationCallback<Ljava/lang/Object;Ljava/lang/Boolean;Ljava/lang/Object;>;"
    invoke-virtual {p0, v0, v4, v1}, Lcom/oneplus/gallery/media/BaseMediaSet;->updatePhotoIdTable([J[JLcom/oneplus/base/OperationCallback;)Z

    goto :goto_0

    .line 760
    .end local v1    # "callback":Lcom/oneplus/base/OperationCallback;, "Lcom/oneplus/base/OperationCallback<Ljava/lang/Object;Ljava/lang/Boolean;Ljava/lang/Object;>;"
    :cond_2
    invoke-virtual {p0, v0, v4}, Lcom/oneplus/gallery/media/BaseMediaSet;->updatePhotoIdTable([J[J)Z

    goto :goto_0

    .line 766
    .end local v0    # "adds":[J
    .end local v2    # "objs":[Ljava/lang/Object;
    .end local v4    # "removes":[J
    :sswitch_8
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    move-object v2, v5

    check-cast v2, [Ljava/lang/Object;

    .line 767
    .restart local v2    # "objs":[Ljava/lang/Object;
    aget-object v5, v2, v8

    check-cast v5, [J

    move-object v0, v5

    check-cast v0, [J

    .line 768
    .restart local v0    # "adds":[J
    aget-object v5, v2, v7

    check-cast v5, [J

    move-object v4, v5

    check-cast v4, [J

    .line 769
    .restart local v4    # "removes":[J
    invoke-virtual {p0, v0, v4}, Lcom/oneplus/gallery/media/BaseMediaSet;->updateVideoIdTable([J[J)Z

    goto/16 :goto_0

    .line 714
    :sswitch_data_0
    .sparse-switch
        -0x754f -> :sswitch_6
        -0x754e -> :sswitch_5
        -0x754a -> :sswitch_8
        -0x7549 -> :sswitch_7
        -0x7544 -> :sswitch_3
        -0x753f -> :sswitch_2
        -0x753a -> :sswitch_1
        -0x7538 -> :sswitch_4
        -0x7537 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLocaleChanged(Ljava/util/Locale;Ljava/util/Locale;)V
    .locals 0
    .param p1, "oldLocale"    # Ljava/util/Locale;
    .param p2, "newLocale"    # Ljava/util/Locale;

    .prologue
    .line 805
    return-void
.end method

.method protected onMediaCreated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 810
    return-void
.end method

.method protected onMediaDeleted(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 816
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/gallery/media/BaseMediaSet;->onMediaDeletedOrRecycled(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;)V

    .line 817
    return-void
.end method

.method protected onMediaRecycled(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 865
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/gallery/media/BaseMediaSet;->onMediaDeletedOrRecycled(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;)V

    .line 866
    return-void
.end method

.method protected onMediaRestored(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 877
    return-void
.end method

.method protected onMediaUpdated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 882
    return-void
.end method

.method protected onRelease()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 890
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 892
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->TAG:Ljava/lang/String;

    const-string v3, "onRelease() - Release all media lists"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 895
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/BaseMediaSet$MediaListImpl;

    .line 896
    .local v1, "mediaList":Lcom/oneplus/gallery/media/BaseMediaSet$MediaListImpl;
    if-eqz v1, :cond_0

    .line 897
    invoke-virtual {v1}, Lcom/oneplus/gallery/media/BaseMediaSet$MediaListImpl;->release()V

    .line 893
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 899
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 904
    .end local v0    # "i":I
    .end local v1    # "mediaList":Lcom/oneplus/gallery/media/BaseMediaSet$MediaListImpl;
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

    .line 905
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v2

    sget-object v3, Lcom/oneplus/gallery/GalleryApplication;->PROP_LOCALE:Lcom/oneplus/base/PropertyKey;

    iget-object v4, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_LocaleChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/gallery/GalleryApplication;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 908
    const/4 v2, 0x0

    invoke-virtual {p0, v5, v5, v2}, Lcom/oneplus/gallery/media/BaseMediaSet;->cleanUpRecycleBin(Lcom/oneplus/gallery/media/MediaDeletionCallback;Landroid/os/Handler;I)I

    .line 911
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_PhotoIdTable:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 912
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_VideoIdTable:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 913
    invoke-direct {p0}, Lcom/oneplus/gallery/media/BaseMediaSet;->notifyMediaCountChanged()V

    .line 916
    invoke-super {p0}, Lcom/oneplus/base/HandlerBaseObject;->onRelease()V

    .line 917
    return-void
.end method

.method protected abstract onUpdateCoverHashCode()Ljava/lang/String;
.end method

.method public openMediaList(Lcom/oneplus/gallery/media/MediaComparator;II)Lcom/oneplus/gallery/media/MediaList;
    .locals 4
    .param p1, "comparator"    # Lcom/oneplus/gallery/media/MediaComparator;
    .param p2, "maxMediaCount"    # I
    .param p3, "flags"    # I

    .prologue
    .line 932
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseMediaSet;->verifyReleaseState()V

    .line 935
    if-nez p1, :cond_0

    .line 936
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No comparator."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 939
    :cond_0
    new-instance v0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaListImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/gallery/media/BaseMediaSet$MediaListImpl;-><init>(Lcom/oneplus/gallery/media/BaseMediaSet;Lcom/oneplus/gallery/media/MediaComparator;I)V

    .line 940
    .local v0, "mediaList":Lcom/oneplus/gallery/media/BaseMediaSet$MediaListImpl;
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    if-nez v1, :cond_1

    .line 941
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    .line 942
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 943
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->TAG:Ljava/lang/String;

    const-string v2, "openMediaList() - Active media list count : "

    iget-object v3, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 946
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_MediaManagerActivatedHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 947
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    invoke-interface {v1}, Lcom/oneplus/gallery/media/OPMediaManager;->activate()Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_MediaManagerActivatedHandle:Lcom/oneplus/base/Handle;

    .line 950
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/oneplus/gallery/media/BaseMediaSet;->openMediaList(Lcom/oneplus/gallery/media/MediaComparator;IILcom/oneplus/gallery/media/MediaList;)Z

    .line 953
    return-object v0
.end method

.method protected abstract openMediaList(Lcom/oneplus/gallery/media/MediaComparator;IILcom/oneplus/gallery/media/MediaList;)Z
.end method

.method protected recycleMedia(Lcom/oneplus/gallery/media/Media;I)Lcom/oneplus/base/Handle;
    .locals 2
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 970
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseMediaSet;->verifyAccess()V

    .line 971
    sget-object v1, Lcom/oneplus/gallery/media/BaseMediaSet;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/media/BaseMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 983
    :cond_0
    :goto_0
    return-object v0

    .line 973
    :cond_1
    if-eqz p1, :cond_0

    .line 977
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_RecycledMedia:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/Handle;

    .line 978
    .local v0, "handle":Lcom/oneplus/base/Handle;
    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 980
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    invoke-interface {v1, p1, p2}, Lcom/oneplus/gallery/media/OPMediaManager;->recycleMedia(Lcom/oneplus/gallery/media/Media;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    .line 981
    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 982
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_RecycledMedia:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected removeFromMediaIdTable(JLcom/oneplus/gallery/media/MediaType;)Z
    .locals 1
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;

    .prologue
    .line 995
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/oneplus/gallery/media/BaseMediaSet;->removeFromMediaIdTable(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/base/OperationCallback;)Z

    move-result v0

    return v0
.end method

.method protected removeFromMediaIdTable(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/base/OperationCallback;)Z
    .locals 5
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/oneplus/gallery/media/MediaType;",
            "Lcom/oneplus/base/OperationCallback",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p4, "callback":Lcom/oneplus/base/OperationCallback;, "Lcom/oneplus/base/OperationCallback<Ljava/lang/Object;Ljava/lang/Boolean;Ljava/lang/Object;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 1008
    if-nez p3, :cond_1

    .line 1010
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->TAG:Ljava/lang/String;

    const-string v2, "removeFromMediaIdTable() - No media type"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    if-eqz p4, :cond_0

    .line 1013
    invoke-interface {p4, v4}, Lcom/oneplus/base/OperationCallback;->onStarted(Ljava/lang/Object;)V

    .line 1014
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p4, v1}, Lcom/oneplus/base/OperationCallback;->onCompleted(Ljava/lang/Object;)V

    .line 1031
    :cond_0
    :goto_0
    return v0

    .line 1018
    :cond_1
    sget-object v1, Lcom/oneplus/gallery/media/BaseMediaSet$7;->$SwitchMap$com$oneplus$gallery$media$MediaType:[I

    invoke-virtual {p3}, Lcom/oneplus/gallery/media/MediaType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1025
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeFromMediaIdTable() - Unsupported media type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    if-eqz p4, :cond_0

    .line 1028
    invoke-interface {p4, v4}, Lcom/oneplus/base/OperationCallback;->onStarted(Ljava/lang/Object;)V

    .line 1029
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p4, v1}, Lcom/oneplus/base/OperationCallback;->onCompleted(Ljava/lang/Object;)V

    goto :goto_0

    .line 1021
    :pswitch_0
    new-array v1, v3, [J

    aput-wide p1, v1, v0

    invoke-virtual {p0, v4, v1, p4}, Lcom/oneplus/gallery/media/BaseMediaSet;->updatePhotoIdTable([J[JLcom/oneplus/base/OperationCallback;)Z

    move-result v0

    goto :goto_0

    .line 1023
    :pswitch_1
    new-array v1, v3, [J

    aput-wide p1, v1, v0

    invoke-virtual {p0, v4, v1, p4}, Lcom/oneplus/gallery/media/BaseMediaSet;->updateVideoIdTable([J[JLcom/oneplus/base/OperationCallback;)Z

    move-result v0

    goto :goto_0

    .line 1018
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected removeMediaFromActiveMediaLists(Lcom/oneplus/gallery/media/Media;)V
    .locals 5
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 1039
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseMediaSet;->isDependencyThread()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1042
    if-nez p1, :cond_1

    .line 1044
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->TAG:Ljava/lang/String;

    const-string v3, "removeMediaFromActiveMediaList() - Media is null"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    :cond_0
    :goto_0
    return-void

    .line 1047
    :cond_1
    sget-object v2, Lcom/oneplus/gallery/media/BaseMediaSet;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery/media/BaseMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1049
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeMediaFromActiveMediaList() - Media set is released, media: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1052
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    if-nez v2, :cond_3

    .line 1054
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->TAG:Ljava/lang/String;

    const-string v3, "removeMediaFromActiveMediaList() - Active media lists is null"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1059
    :cond_3
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->TAG:Ljava/lang/String;

    const-string v3, "removeMediaFromActiveMediaList() - Media: "

    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1060
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1062
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_0

    .line 1064
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/BaseMediaSet$MediaListImpl;

    .line 1065
    .local v1, "mediaList":Lcom/oneplus/gallery/media/BaseMediaSet$MediaListImpl;
    if-eqz v1, :cond_4

    .line 1066
    invoke-virtual {v1, p1}, Lcom/oneplus/gallery/media/BaseMediaSet$MediaListImpl;->removeMedia(Lcom/oneplus/gallery/media/Media;)Z

    .line 1062
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1068
    :cond_4
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 1073
    .end local v0    # "i":I
    .end local v1    # "mediaList":Lcom/oneplus/gallery/media/BaseMediaSet$MediaListImpl;
    :cond_5
    const/16 v2, -0x7538

    invoke-static {p0, v2, p1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;ILjava/lang/Object;)Z

    goto :goto_0
.end method

.method public restoreMediaInRecycleBin(I)I
    .locals 7
    .param p1, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 1082
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseMediaSet;->verifyAccess()V

    .line 1083
    sget-object v3, Lcom/oneplus/gallery/media/BaseMediaSet;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery/media/BaseMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v4

    .line 1103
    :cond_0
    :goto_0
    return v2

    .line 1087
    :cond_1
    const/4 v2, 0x0

    .line 1088
    .local v2, "result":I
    iget-object v3, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_RecycledMedia:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1090
    iget-object v3, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_RecycledMedia:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    iget-object v5, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_RecycledMedia:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    new-array v5, v5, [Lcom/oneplus/base/Handle;

    invoke-interface {v3, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/base/Handle;

    .line 1091
    .local v0, "handles":[Lcom/oneplus/base/Handle;
    iget-object v3, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_RecycledMedia:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 1092
    array-length v3, v0

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_3

    .line 1094
    iget-object v3, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    aget-object v5, v0, v1

    invoke-interface {v3, v5}, Lcom/oneplus/gallery/media/OPMediaManager;->restoreMedia(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1095
    add-int/lit8 v2, v2, 0x1

    .line 1092
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1099
    .end local v0    # "handles":[Lcom/oneplus/base/Handle;
    .end local v1    # "i":I
    :cond_3
    sget-object v3, Lcom/oneplus/gallery/media/BaseMediaSet;->PROP_CONTAINS_RECYCLED_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/gallery/media/BaseMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1101
    if-lez v2, :cond_0

    .line 1102
    iget-object v3, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->TAG:Ljava/lang/String;

    const-string v4, "restoreMediaInRecycleBin() - Restore "

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, " media"

    invoke-static {v3, v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected updateCoverHashCode()V
    .locals 4

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    new-instance v1, Lcom/oneplus/gallery/media/BaseMediaSet$6;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/media/BaseMediaSet$6;-><init>(Lcom/oneplus/gallery/media/BaseMediaSet;)V

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/oneplus/gallery/media/OPMediaManager;->postToContentThread(Ljava/lang/Runnable;J)Z

    .line 1140
    return-void
.end method

.method protected updateCoverHashCode(Ljava/lang/String;)V
    .locals 1
    .param p1, "hashCode"    # Ljava/lang/String;

    .prologue
    .line 1113
    sget-object v0, Lcom/oneplus/gallery/media/BaseMediaSet;->PROP_COVER_HASH_CODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/gallery/media/BaseMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1114
    return-void
.end method

.method protected updateCoverHashCodeDelayed()V
    .locals 4

    .prologue
    .line 1148
    const/16 v0, -0x754f

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-static {p0, v0, v1, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 1149
    return-void
.end method

.method protected updatePhotoIdTable([J[J)Z
    .locals 1
    .param p1, "adds"    # [J
    .param p2, "removes"    # [J

    .prologue
    .line 1160
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/gallery/media/BaseMediaSet;->updatePhotoIdTable([J[JLcom/oneplus/base/OperationCallback;)Z

    move-result v0

    return v0
.end method

.method protected updatePhotoIdTable([J[JLcom/oneplus/base/OperationCallback;)Z
    .locals 7
    .param p1, "adds"    # [J
    .param p2, "removes"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J[J",
            "Lcom/oneplus/base/OperationCallback",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "callback":Lcom/oneplus/base/OperationCallback;, "Lcom/oneplus/base/OperationCallback<Ljava/lang/Object;Ljava/lang/Boolean;Ljava/lang/Object;>;"
    const/4 v6, 0x1

    .line 1173
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseMediaSet;->isDependencyThread()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1176
    const/4 v0, 0x0

    .line 1177
    .local v0, "hasChange":Z
    if-eqz p1, :cond_0

    array-length v2, p1

    if-lez v2, :cond_0

    .line 1179
    const/4 v0, 0x1

    .line 1180
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->TAG:Ljava/lang/String;

    const-string v3, "updatePhotoIdTable() - Add: "

    invoke-static {p1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1181
    array-length v2, p1

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1182
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_PhotoIdTable:Ljava/util/Set;

    aget-wide v4, p1, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1181
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1185
    .end local v1    # "i":I
    :cond_0
    if-eqz p2, :cond_1

    array-length v2, p2

    if-lez v2, :cond_1

    .line 1187
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->TAG:Ljava/lang/String;

    const-string v3, "updatePhotoIdTable() - Remove: "

    invoke-static {p2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1188
    array-length v2, p2

    add-int/lit8 v1, v2, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 1189
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_PhotoIdTable:Ljava/util/Set;

    aget-wide v4, p2, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 1188
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1193
    .end local v1    # "i":I
    :cond_1
    if-nez v0, :cond_2

    sget-object v2, Lcom/oneplus/gallery/media/BaseMediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery/media/BaseMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1194
    :cond_2
    invoke-direct {p0, v6}, Lcom/oneplus/gallery/media/BaseMediaSet;->notifyMediaCountChanged(Z)V

    .line 1197
    :cond_3
    if-eqz p3, :cond_4

    .line 1198
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/oneplus/base/OperationCallback;->onCompleted(Ljava/lang/Object;)V

    .line 1204
    .end local v0    # "hasChange":Z
    :cond_4
    :goto_2
    return v0

    :cond_5
    const/16 v2, -0x7549

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object p2, v3, v6

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {p0, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;ILjava/lang/Object;)Z

    move-result v0

    goto :goto_2
.end method

.method protected updateVideoIdTable([J[J)Z
    .locals 1
    .param p1, "adds"    # [J
    .param p2, "removes"    # [J

    .prologue
    .line 1216
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/gallery/media/BaseMediaSet;->updateVideoIdTable([J[JLcom/oneplus/base/OperationCallback;)Z

    move-result v0

    return v0
.end method

.method protected updateVideoIdTable([J[JLcom/oneplus/base/OperationCallback;)Z
    .locals 7
    .param p1, "adds"    # [J
    .param p2, "removes"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J[J",
            "Lcom/oneplus/base/OperationCallback",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "callback":Lcom/oneplus/base/OperationCallback;, "Lcom/oneplus/base/OperationCallback<Ljava/lang/Object;Ljava/lang/Boolean;Ljava/lang/Object;>;"
    const/4 v6, 0x1

    .line 1229
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseMediaSet;->isDependencyThread()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1232
    const/4 v0, 0x0

    .line 1233
    .local v0, "hasChange":Z
    if-eqz p1, :cond_0

    array-length v2, p1

    if-lez v2, :cond_0

    .line 1235
    const/4 v0, 0x1

    .line 1236
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->TAG:Ljava/lang/String;

    const-string v3, "updateVideoIdTable() - Add: "

    invoke-static {p1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1237
    array-length v2, p1

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1238
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_VideoIdTable:Ljava/util/Set;

    aget-wide v4, p1, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1237
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1241
    .end local v1    # "i":I
    :cond_0
    if-eqz p2, :cond_1

    array-length v2, p2

    if-lez v2, :cond_1

    .line 1243
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->TAG:Ljava/lang/String;

    const-string v3, "updateVideoIdTable() - Remove: "

    invoke-static {p2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1244
    array-length v2, p2

    add-int/lit8 v1, v2, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 1245
    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_VideoIdTable:Ljava/util/Set;

    aget-wide v4, p2, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 1244
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1249
    .end local v1    # "i":I
    :cond_1
    if-nez v0, :cond_2

    sget-object v2, Lcom/oneplus/gallery/media/BaseMediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery/media/BaseMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1250
    :cond_2
    invoke-direct {p0, v6}, Lcom/oneplus/gallery/media/BaseMediaSet;->notifyMediaCountChanged(Z)V

    .line 1253
    :cond_3
    if-eqz p3, :cond_4

    .line 1254
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/oneplus/base/OperationCallback;->onCompleted(Ljava/lang/Object;)V

    .line 1260
    .end local v0    # "hasChange":Z
    :cond_4
    :goto_2
    return v0

    :cond_5
    const/16 v2, -0x754a

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object p2, v3, v6

    invoke-static {p0, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;ILjava/lang/Object;)Z

    move-result v0

    goto :goto_2
.end method

.method protected verifyMediaToAdd(Lcom/oneplus/gallery/media/Media;)Z
    .locals 4
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 1271
    invoke-static {p1}, Lcom/oneplus/gallery/media/MediaUtils;->getId(Lcom/oneplus/gallery/media/Media;)J

    move-result-wide v0

    .line 1272
    .local v0, "id":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    invoke-interface {v2, v0, v1}, Lcom/oneplus/gallery/media/OPMediaManager;->isMediaRecycled(J)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
