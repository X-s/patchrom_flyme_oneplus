.class public abstract Lcom/oneplus/gallery/media/MediaStoreMediaSet;
.super Lcom/oneplus/base/HandlerBaseObject;
.source "MediaStoreMediaSet.java"

# interfaces
.implements Lcom/oneplus/gallery/media/MediaSet;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/media/MediaStoreMediaSet$11;,
        Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle;,
        Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;
    }
.end annotation


# static fields
.field private static final CONTENT_URI_FILE:Landroid/net/Uri;

.field private static final DURATION_UPDATE_COVER_HASH_CODE_DELAY:J = 0x64L

.field private static final DURATION_UPDATE_MEDIA_ID_TABLE_DELAY:J = 0x3e8L

.field protected static final FLAG_SKIP_MEDIA_CHANGE_CALLBACK:I = 0x1

.field private static final INTERVAL_UPDATE_MEDIA_LIST:J = 0x1f4L

.field protected static final MAX_COVER_MEDIA_COUNT:I = 0xc

.field private static final MSG_ADD_MEDIA_TO_MEDIA_LIST:I = -0x271a

.field private static final MSG_MEDIA_ID_TABLE_UPDATED:I = -0x2713

.field private static final MSG_MEDIA_SET_DELETED:I = -0x2725

.field private static final MSG_REMOVE_MEDIA_FROM_MEDIA_LIST:I = -0x271b

.field private static final MSG_UPDATE_COVER_HASH_CODE:I = -0x272e

.field private static final MSG_UPDATE_COVER_HASH_CODE_DELAY:I = -0x272f

.field private static final MSG_UPDATE_MEDIA_ID_TABLE:I = -0x2712

.field private static final PRINT_LOGS:Z


# instance fields
.field private m_ActiveMediaLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_IsFirstMediaIdTableUpdate:Z

.field private m_IsMediaAddedWhenDeleting:Z

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

.field private final m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

.field private m_MediaManagerActivatedHandle:Lcom/oneplus/base/Handle;

.field private m_PeriodicMessageDispatcher:Lcom/oneplus/base/PeriodicMessageDispatcher;

.field private final m_PhotoGroupIdTable:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field private m_QueryCondition:Ljava/lang/String;

.field private m_QueryConditionArgs:[Ljava/lang/String;

.field private final m_ReadExternalStorageChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
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

.field private final m_VideoGroupIdTable:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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
    .line 56
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->CONTENT_URI_FILE:Landroid/net/Uri;

    return-void
.end method

.method protected constructor <init>(Lcom/oneplus/gallery/media/MediaSet$Type;Lcom/oneplus/gallery/media/MediaType;)V
    .locals 1
    .param p1, "type"    # Lcom/oneplus/gallery/media/MediaSet$Type;
    .param p2, "targetMediaType"    # Lcom/oneplus/gallery/media/MediaType;

    .prologue
    .line 250
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;-><init>(Lcom/oneplus/gallery/media/MediaSet$Type;Lcom/oneplus/gallery/media/MediaType;I)V

    .line 251
    return-void
.end method

.method protected constructor <init>(Lcom/oneplus/gallery/media/MediaSet$Type;Lcom/oneplus/gallery/media/MediaType;I)V
    .locals 4
    .param p1, "type"    # Lcom/oneplus/gallery/media/MediaSet$Type;
    .param p2, "targetMediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p3, "flags"    # I

    .prologue
    const/4 v3, 0x1

    .line 262
    invoke-direct {p0, v3}, Lcom/oneplus/base/HandlerBaseObject;-><init>(Z)V

    .line 74
    iput-boolean v3, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_IsFirstMediaIdTableUpdate:Z

    .line 80
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_PhotoGroupIdTable:Ljava/util/Set;

    .line 81
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_PhotoIdTable:Ljava/util/Set;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_RecycledMedia:Ljava/util/Map;

    .line 87
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_VideoGroupIdTable:Ljava/util/Set;

    .line 88
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_VideoIdTable:Ljava/util/Set;

    .line 92
    new-instance v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet$1;-><init>(Lcom/oneplus/gallery/media/MediaStoreMediaSet;)V

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_LocaleChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 100
    new-instance v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet$2;-><init>(Lcom/oneplus/gallery/media/MediaStoreMediaSet;)V

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_ReadExternalStorageChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 112
    new-instance v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$3;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet$3;-><init>(Lcom/oneplus/gallery/media/MediaStoreMediaSet;)V

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_MediaChangeCallback:Lcom/oneplus/gallery/media/MediaManager$MediaChangeCallback;

    .line 263
    if-nez p1, :cond_0

    .line 264
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No type specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_0
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_Type:Lcom/oneplus/gallery/media/MediaSet$Type;

    .line 266
    iput-object p2, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_TargetMediaType:Lcom/oneplus/gallery/media/MediaType;

    .line 267
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v0

    const-class v1, Lcom/oneplus/gallery/media/OPMediaManager;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GalleryApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/OPMediaManager;

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    .line 268
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v0

    const-class v1, Lcom/oneplus/base/PeriodicMessageDispatcher;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GalleryApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/PeriodicMessageDispatcher;

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_PeriodicMessageDispatcher:Lcom/oneplus/base/PeriodicMessageDispatcher;

    .line 269
    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_MediaChangeCallback:Lcom/oneplus/gallery/media/MediaManager$MediaChangeCallback;

    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery/media/OPMediaManager;->registerMediaChangeCallback(Lcom/oneplus/gallery/media/MediaManager$MediaChangeCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

    .line 271
    :cond_1
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery/GalleryApplication;->PROP_LOCALE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_LocaleChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/GalleryApplication;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 272
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery/GalleryApplication;->PROP_IS_READ_STORAGE_PERM_GRANTED:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_ReadExternalStorageChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/GalleryApplication;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 273
    sget-object v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->PROP_COVER_HASH_CODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v3}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 274
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery/media/MediaStoreMediaSet;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/gallery/media/MediaStoreMediaSet;Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaStoreMediaSet;
    .param p1, "x1"    # Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->onMediaListReleased(Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/gallery/media/MediaStoreMediaSet;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/oneplus/gallery/media/MediaStoreMediaSet;)Lcom/oneplus/base/PeriodicMessageDispatcher;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_PeriodicMessageDispatcher:Lcom/oneplus/base/PeriodicMessageDispatcher;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/oneplus/gallery/media/MediaStoreMediaSet;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_IsFirstMediaIdTableUpdate:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/oneplus/gallery/media/MediaStoreMediaSet;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaStoreMediaSet;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_IsFirstMediaIdTableUpdate:Z

    return p1
.end method

.method static synthetic access$200(Lcom/oneplus/gallery/media/MediaStoreMediaSet;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/gallery/media/MediaStoreMediaSet;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/gallery/media/MediaStoreMediaSet;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/gallery/media/MediaStoreMediaSet;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_QueryCondition:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/gallery/media/MediaStoreMediaSet;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_QueryConditionArgs:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/gallery/media/MediaStoreMediaSet;)Lcom/oneplus/gallery/media/OPMediaManager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oneplus/gallery/media/MediaStoreMediaSet;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oneplus/gallery/media/MediaStoreMediaSet;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addMediaToMediaList(Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;Lcom/oneplus/gallery/media/Media;)V
    .locals 1
    .param p1, "mediaList"    # Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;
    .param p2, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 280
    sget-object v0, Lcom/oneplus/gallery/media/MediaList;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p1, v0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    invoke-virtual {p1, p2}, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;->addMedia(Lcom/oneplus/gallery/media/Media;)I

    .line 283
    sget-object v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->PROP_IS_DELETING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_IsMediaAddedWhenDeleting:Z

    .line 286
    :cond_0
    return-void
.end method

.method private addMediaToMediaList(Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;Ljava/util/List;Z)V
    .locals 1
    .param p1, "mediaList"    # Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;
    .param p3, "isSorted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/media/Media;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 289
    .local p2, "media":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    sget-object v0, Lcom/oneplus/gallery/media/MediaList;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p1, v0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    invoke-virtual {p1, p2, p3}, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;->addMedia(Ljava/util/List;Z)V

    .line 292
    sget-object v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->PROP_IS_DELETING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_IsMediaAddedWhenDeleting:Z

    .line 295
    :cond_0
    return-void
.end method

.method public static createCoverHashCode(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .param p0, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 332
    .local p1, "coverMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;>;"
    if-nez p1, :cond_0

    .line 333
    const/4 v5, 0x0

    .line 347
    :goto_0
    return-object v5

    .line 334
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    .local v1, "coverHashCode":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_1

    .line 336
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    :goto_1
    if-ge v3, v0, :cond_4

    .line 339
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;

    .line 340
    .local v4, "mediaInfo":Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;
    if-lez v3, :cond_2

    .line 341
    const/16 v5, 0x2c

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 342
    :cond_2
    iget-wide v6, v4, Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;->id:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 343
    new-instance v2, Ljava/io/File;

    iget-object v5, v4, Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;->filePath:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 344
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 345
    const-string v5, ":time-"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 337
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 347
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "mediaInfo":Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private onMediaCreatedOrRestored(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 13
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 712
    if-eqz p4, :cond_0

    .line 713
    iget-object v8, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_RecycledMedia:Ljava/util/Map;

    move-object/from16 v0, p4

    invoke-interface {v8, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    :cond_0
    move/from16 v0, p5

    and-int/lit16 v8, v0, 0x400

    if-eqz v8, :cond_2

    .line 780
    :cond_1
    :goto_0
    return-void

    .line 716
    :cond_2
    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->isOwnedByMediaSet(Lcom/oneplus/gallery/media/Media;)Ljava/lang/Boolean;

    move-result-object v6

    .line 717
    .local v6, "isOwned":Ljava/lang/Boolean;
    if-nez v6, :cond_4

    .line 718
    and-int/lit8 v8, p5, 0x2

    if-nez v8, :cond_3

    const/4 v8, 0x1

    :goto_1
    invoke-direct {p0, v8}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->updateMediaIdTable(Z)V

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 719
    :cond_4
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 722
    const/4 v5, 0x0

    .line 723
    .local v5, "isIdTableChanged":Z
    move-object/from16 v0, p4

    instance-of v8, v0, Lcom/oneplus/gallery/media/GroupMedia;

    if-eqz v8, :cond_5

    move-object/from16 v3, p4

    .line 725
    check-cast v3, Lcom/oneplus/gallery/media/GroupMedia;

    .line 726
    .local v3, "groupMedia":Lcom/oneplus/gallery/media/GroupMedia;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 727
    .local v2, "addedIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Lcom/oneplus/gallery/media/GroupMedia;->getGroupId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 728
    sget-object v8, Lcom/oneplus/gallery/media/MediaStoreMediaSet$11;->$SwitchMap$com$oneplus$gallery$media$MediaType:[I

    invoke-virtual/range {p3 .. p3}, Lcom/oneplus/gallery/media/MediaType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 737
    iget-object v8, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onMediaCreatedOrRestored() - Unsupported group media type : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 731
    :pswitch_0
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct {p0, v2, v8, v9}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->onPhotoGroupIdTableUpdated(Ljava/util/Set;Ljava/util/Set;Z)Z

    move-result v5

    .line 758
    .end local v2    # "addedIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "groupMedia":Lcom/oneplus/gallery/media/GroupMedia;
    :goto_2
    if-eqz v5, :cond_1

    .line 765
    iget-object v8, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    if-eqz v8, :cond_7

    .line 767
    iget-object v8, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .local v4, "i":I
    :goto_3
    if-ltz v4, :cond_7

    .line 769
    iget-object v8, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;

    .line 770
    .local v7, "mediaList":Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;
    if-eqz v7, :cond_6

    .line 771
    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;->addMedia(Lcom/oneplus/gallery/media/Media;)I

    .line 767
    :goto_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 734
    .end local v4    # "i":I
    .end local v7    # "mediaList":Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;
    .restart local v2    # "addedIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v3    # "groupMedia":Lcom/oneplus/gallery/media/GroupMedia;
    :pswitch_1
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct {p0, v2, v8, v9}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->onVideoGroupIdTableUpdated(Ljava/util/Set;Ljava/util/Set;Z)Z

    move-result v5

    .line 735
    goto :goto_2

    .line 743
    .end local v2    # "addedIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "groupMedia":Lcom/oneplus/gallery/media/GroupMedia;
    :cond_5
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 744
    .local v1, "addedIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 745
    sget-object v8, Lcom/oneplus/gallery/media/MediaStoreMediaSet$11;->$SwitchMap$com$oneplus$gallery$media$MediaType:[I

    invoke-virtual/range {p3 .. p3}, Lcom/oneplus/gallery/media/MediaType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_1

    .line 754
    iget-object v8, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onMediaCreatedOrRestored() - Unsupported media type : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 748
    :pswitch_2
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct {p0, v1, v8, v9}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->onPhotoIdTableUpdated(Ljava/util/Set;Ljava/util/Set;Z)Z

    move-result v5

    .line 749
    goto :goto_2

    .line 751
    :pswitch_3
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct {p0, v1, v8, v9}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->onVideoIdTableUpdated(Ljava/util/Set;Ljava/util/Set;Z)Z

    move-result v5

    .line 752
    goto :goto_2

    .line 773
    .end local v1    # "addedIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v4    # "i":I
    .restart local v7    # "mediaList":Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;
    :cond_6
    iget-object v8, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 778
    .end local v4    # "i":I
    .end local v7    # "mediaList":Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;
    :cond_7
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->updateCoverHashCodeDelayed()V

    goto/16 :goto_0

    .line 728
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 745
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onMediaDeletedOrRecycled(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;IZ)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I
    .param p6, "isRecycled"    # Z

    .prologue
    .line 799
    if-eqz p4, :cond_0

    if-nez p6, :cond_0

    .line 800
    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_RecycledMedia:Ljava/util/Map;

    invoke-interface {v4, p4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    :cond_0
    and-int/lit16 v4, p5, 0x400

    if-eqz v4, :cond_2

    .line 847
    :cond_1
    :goto_0
    return-void

    .line 803
    :cond_2
    instance-of v4, p4, Lcom/oneplus/gallery/media/GroupMedia;

    if-eqz v4, :cond_5

    move-object v1, p4

    .line 805
    check-cast v1, Lcom/oneplus/gallery/media/GroupMedia;

    .line 806
    .local v1, "groupMedia":Lcom/oneplus/gallery/media/GroupMedia;
    invoke-interface {v1}, Lcom/oneplus/gallery/media/GroupMedia;->getGroupId()Ljava/lang/String;

    move-result-object v0

    .line 807
    .local v0, "groupId":Ljava/lang/String;
    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_PhotoGroupIdTable:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_VideoGroupIdTable:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 819
    .end local v0    # "groupId":Ljava/lang/String;
    .end local v1    # "groupMedia":Lcom/oneplus/gallery/media/GroupMedia;
    :cond_3
    if-eqz p4, :cond_7

    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    if-eqz v4, :cond_7

    .line 821
    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_7

    .line 823
    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;

    .line 824
    .local v3, "mediaList":Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;
    if-eqz v3, :cond_6

    .line 826
    invoke-virtual {v3, p4}, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;->removeMedia(Lcom/oneplus/gallery/media/Media;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 821
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 814
    .end local v2    # "i":I
    .end local v3    # "mediaList":Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;
    :cond_5
    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_PhotoIdTable:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_VideoIdTable:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    .line 842
    .restart local v2    # "i":I
    .restart local v3    # "mediaList":Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;
    :cond_6
    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 845
    .end local v2    # "i":I
    .end local v3    # "mediaList":Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;
    :cond_7
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->updateCoverHashCodeDelayed()V

    .line 846
    invoke-direct {p0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->onMediaIdTableUpdated()V

    goto :goto_0
.end method

.method private onMediaIdTableUpdated()V
    .locals 3

    .prologue
    .line 853
    sget-object v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->PROP_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_PhotoIdTable:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_PhotoGroupIdTable:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 854
    sget-object v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->PROP_VIDEO_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_VideoIdTable:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_VideoGroupIdTable:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 855
    sget-object v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_PhotoIdTable:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_VideoIdTable:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_PhotoGroupIdTable:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_VideoGroupIdTable:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 856
    return-void
.end method

.method private onMediaListReleased(Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;)V
    .locals 5
    .param p1, "mediaList"    # Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;

    .prologue
    .line 862
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 864
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;

    .line 865
    .local v0, "candMediaList":Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;
    if-ne v0, p1, :cond_2

    .line 867
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 868
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->TAG:Ljava/lang/String;

    const-string v3, "onMediaListReleased() - Active media list count : "

    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 876
    .end local v0    # "candMediaList":Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 877
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_MediaManagerActivatedHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_MediaManagerActivatedHandle:Lcom/oneplus/base/Handle;

    .line 878
    :cond_1
    return-void

    .line 871
    .restart local v0    # "candMediaList":Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;
    :cond_2
    if-nez v0, :cond_3

    .line 872
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 862
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private onPhotoGroupIdTableUpdated(Ljava/util/Set;Ljava/util/Set;Z)Z
    .locals 5
    .param p3, "updateMediaCount"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 953
    .local p1, "addedId":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p2, "removedId":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 954
    .local v0, "changed":Z
    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_PhotoGroupIdTable:Ljava/util/Set;

    monitor-enter v4

    .line 956
    if-eqz p1, :cond_0

    .line 958
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 959
    .local v2, "id":Ljava/lang/String;
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_PhotoGroupIdTable:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    goto :goto_0

    .line 961
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "id":Ljava/lang/String;
    :cond_0
    if-eqz p2, :cond_1

    .line 963
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 964
    .restart local v2    # "id":Ljava/lang/String;
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_PhotoGroupIdTable:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    goto :goto_1

    .line 966
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "id":Ljava/lang/String;
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 967
    if-eqz p3, :cond_2

    if-eqz v0, :cond_2

    .line 968
    invoke-direct {p0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->onMediaIdTableUpdated()V

    .line 970
    :cond_2
    return v0

    .line 966
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private onPhotoIdTableUpdated(Ljava/util/Set;Ljava/util/Set;Z)Z
    .locals 5
    .param p3, "updateMediaCount"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 977
    .local p1, "addedId":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .local p2, "removedId":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .line 978
    .local v0, "changed":Z
    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_PhotoIdTable:Ljava/util/Set;

    monitor-enter v4

    .line 980
    if-eqz p1, :cond_0

    .line 982
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 983
    .local v2, "id":Ljava/lang/Long;
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_PhotoIdTable:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    goto :goto_0

    .line 985
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "id":Ljava/lang/Long;
    :cond_0
    if-eqz p2, :cond_1

    .line 987
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 988
    .restart local v2    # "id":Ljava/lang/Long;
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_PhotoIdTable:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    goto :goto_1

    .line 990
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "id":Ljava/lang/Long;
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 991
    if-eqz p3, :cond_2

    if-eqz v0, :cond_2

    .line 992
    invoke-direct {p0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->onMediaIdTableUpdated()V

    .line 994
    :cond_2
    return v0

    .line 990
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private onVideoGroupIdTableUpdated(Ljava/util/Set;Ljava/util/Set;Z)Z
    .locals 5
    .param p3, "updateMediaCount"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 1085
    .local p1, "addedId":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p2, "removedId":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1086
    .local v0, "changed":Z
    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_VideoGroupIdTable:Ljava/util/Set;

    monitor-enter v4

    .line 1088
    if-eqz p1, :cond_0

    .line 1090
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1091
    .local v2, "id":Ljava/lang/String;
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_VideoGroupIdTable:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    goto :goto_0

    .line 1093
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "id":Ljava/lang/String;
    :cond_0
    if-eqz p2, :cond_1

    .line 1095
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1096
    .restart local v2    # "id":Ljava/lang/String;
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_VideoGroupIdTable:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    goto :goto_1

    .line 1098
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "id":Ljava/lang/String;
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1099
    if-eqz p3, :cond_2

    if-eqz v0, :cond_2

    .line 1100
    invoke-direct {p0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->onMediaIdTableUpdated()V

    .line 1102
    :cond_2
    return v0

    .line 1098
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private onVideoIdTableUpdated(Ljava/util/Set;Ljava/util/Set;Z)Z
    .locals 5
    .param p3, "updateMediaCount"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 1109
    .local p1, "addedId":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .local p2, "removedId":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .line 1110
    .local v0, "changed":Z
    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_VideoIdTable:Ljava/util/Set;

    monitor-enter v4

    .line 1112
    if-eqz p1, :cond_0

    .line 1114
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 1115
    .local v2, "id":Ljava/lang/Long;
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_VideoIdTable:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    goto :goto_0

    .line 1117
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "id":Ljava/lang/Long;
    :cond_0
    if-eqz p2, :cond_1

    .line 1119
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 1120
    .restart local v2    # "id":Ljava/lang/Long;
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_VideoIdTable:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    goto :goto_1

    .line 1122
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "id":Ljava/lang/Long;
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1123
    if-eqz p3, :cond_2

    if-eqz v0, :cond_2

    .line 1124
    invoke-direct {p0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->onMediaIdTableUpdated()V

    .line 1126
    :cond_2
    return v0

    .line 1122
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private refreshMediaList(Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;)V
    .locals 4
    .param p1, "mediaList"    # Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;

    .prologue
    .line 1317
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1318
    .local v0, "srcContentUris":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    invoke-virtual {p1, v0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;->getAllContentUris(Ljava/util/Set;)V

    .line 1319
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    sget-object v2, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->CONTENT_URI_FILE:Landroid/net/Uri;

    new-instance v3, Lcom/oneplus/gallery/media/MediaStoreMediaSet$8;

    invoke-direct {v3, p0, p1, v0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet$8;-><init>(Lcom/oneplus/gallery/media/MediaStoreMediaSet;Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;Ljava/util/HashSet;)V

    invoke-interface {v1, v2, v3}, Lcom/oneplus/gallery/media/OPMediaManager;->accessContentProvider(Landroid/net/Uri;Lcom/oneplus/gallery/media/MediaManager$ContentProviderAccessCallback;)Lcom/oneplus/base/Handle;

    .line 1355
    return-void
.end method

.method private refreshMediaLists()V
    .locals 3

    .prologue
    .line 1361
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 1363
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1365
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;

    .line 1366
    .local v1, "mediaList":Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;
    if-eqz v1, :cond_0

    .line 1367
    invoke-direct {p0, v1}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->refreshMediaList(Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;)V

    .line 1363
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1369
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1372
    .end local v0    # "i":I
    .end local v1    # "mediaList":Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;
    :cond_1
    return-void
.end method

.method private removeMediaFromMediaList(Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;Lcom/oneplus/gallery/media/Media;)V
    .locals 0
    .param p1, "mediaList"    # Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;
    .param p2, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 1378
    invoke-virtual {p1, p2}, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;->removeMedia(Lcom/oneplus/gallery/media/Media;)Z

    .line 1379
    return-void
.end method

.method private removeMediaFromMediaList(Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;Ljava/util/Set;)V
    .locals 0
    .param p1, "mediaList"    # Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;",
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1382
    .local p2, "media":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/Uri;>;"
    invoke-virtual {p1, p2}, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;->removeMedia(Ljava/util/Set;)V

    .line 1383
    return-void
.end method

.method private updateMediaIdTable(Z)V
    .locals 5
    .param p1, "delay"    # Z

    .prologue
    const/16 v4, -0x2712

    .line 1624
    sget-object v1, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1637
    :cond_0
    :goto_0
    return-void

    .line 1626
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1627
    .local v0, "handler":Landroid/os/Handler;
    if-eqz p1, :cond_2

    .line 1629
    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1630
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1634
    :cond_2
    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1635
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->updateMediaIdTable()V

    goto :goto_0
.end method


# virtual methods
.method public cleanUpRecycleBin(Lcom/oneplus/gallery/media/MediaDeletionCallback;Landroid/os/Handler;I)I
    .locals 7
    .param p1, "callback"    # Lcom/oneplus/gallery/media/MediaDeletionCallback;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 303
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->verifyAccess()V

    .line 304
    sget-object v3, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v4

    .line 320
    :cond_0
    :goto_0
    return v2

    .line 308
    :cond_1
    const/4 v2, 0x0

    .line 309
    .local v2, "result":I
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_RecycledMedia:Ljava/util/Map;

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

    .line 311
    .local v1, "media":Lcom/oneplus/gallery/media/Media;
    invoke-virtual {p0, v1, p1, p2, v4}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->deleteMedia(Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/media/MediaDeletionCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 312
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 314
    .end local v1    # "media":Lcom/oneplus/gallery/media/Media;
    :cond_3
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_RecycledMedia:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 316
    sget-object v3, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->PROP_CONTAINS_RECYCLED_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 318
    if-lez v2, :cond_0

    .line 319
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->TAG:Ljava/lang/String;

    const-string v4, "cleanUpRecycleBin() - Clean up "

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, " media"

    invoke-static {v3, v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected completeDeletion(Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle;Z)V
    .locals 3
    .param p1, "handle"    # Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle;
    .param p2, "success"    # Z

    .prologue
    .line 358
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "completeDeletion() - Handle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    if-eqz p2, :cond_0

    .line 362
    const/16 v0, -0x2725

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;I)Z

    .line 365
    :cond_0
    invoke-virtual {p1, p2}, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle;->callOnDeletionCompleted(Z)V

    .line 366
    return-void
.end method

.method public delete(Lcom/oneplus/gallery/media/MediaSet$DeletionCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;
    .locals 4
    .param p1, "callback"    # Lcom/oneplus/gallery/media/MediaSet$DeletionCallback;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "flags"    # I

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->verifyAccess()V

    .line 375
    sget-object v1, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 377
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->TAG:Ljava/lang/String;

    const-string v2, "delete() - Media set is released"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const/4 v0, 0x0

    .line 412
    :goto_0
    return-object v0

    .line 382
    :cond_0
    new-instance v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle;-><init>(Lcom/oneplus/gallery/media/MediaStoreMediaSet;Lcom/oneplus/gallery/media/MediaSet$DeletionCallback;Landroid/os/Handler;)V

    .line 384
    .local v0, "handle":Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle;
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete() - Handle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    sget-object v1, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->PROP_IS_DELETING:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 388
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    sget-object v2, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->CONTENT_URI_FILE:Landroid/net/Uri;

    new-instance v3, Lcom/oneplus/gallery/media/MediaStoreMediaSet$4;

    invoke-direct {v3, p0, v0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet$4;-><init>(Lcom/oneplus/gallery/media/MediaStoreMediaSet;Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle;)V

    invoke-interface {v1, v2, v3}, Lcom/oneplus/gallery/media/OPMediaManager;->accessContentProvider(Landroid/net/Uri;Lcom/oneplus/gallery/media/MediaManager$ContentProviderAccessCallback;)Lcom/oneplus/base/Handle;

    goto :goto_0
.end method

.method protected delete(Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentProviderClient;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle;
    .param p2, "contentResolver"    # Landroid/content/ContentResolver;
    .param p3, "contentUri"    # Landroid/net/Uri;
    .param p4, "client"    # Landroid/content/ContentProviderClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 425
    return-void
.end method

.method public deleteMedia(Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/media/MediaDeletionCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;
    .locals 6
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p2, "callback"    # Lcom/oneplus/gallery/media/MediaDeletionCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "flags"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 433
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->verifyAccess()V

    .line 434
    sget-object v1, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 436
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->TAG:Ljava/lang/String;

    const-string v3, "deleteMedia() - Media set is released"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 467
    :goto_0
    return-object v1

    .line 439
    :cond_0
    instance-of v1, p1, Lcom/oneplus/gallery/media/MediaStoreMedia;

    if-nez v1, :cond_1

    instance-of v1, p1, Lcom/oneplus/gallery/media/GroupMedia;

    if-nez v1, :cond_1

    .line 441
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->TAG:Ljava/lang/String;

    const-string v3, "deleteMedia() - Invalid media"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 442
    goto :goto_0

    .line 446
    :cond_1
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_3

    .line 448
    sget-object v1, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->PROP_CONTAINS_RECYCLED_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 449
    invoke-static {p2, p1, p3}, Lcom/oneplus/gallery/media/MediaDeletionCallbackUtils;->callOnDeletionStarted(Lcom/oneplus/gallery/media/MediaDeletionCallback;Lcom/oneplus/gallery/media/Media;Landroid/os/Handler;)V

    .line 450
    invoke-virtual {p0, p1, v4}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->recycleMedia(Lcom/oneplus/gallery/media/Media;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    .line 451
    .local v0, "recyclingHandle":Lcom/oneplus/base/Handle;
    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 453
    invoke-static {p2, p1, v5, p3}, Lcom/oneplus/gallery/media/MediaDeletionCallbackUtils;->callOnDeletionCompleted(Lcom/oneplus/gallery/media/MediaDeletionCallback;Lcom/oneplus/gallery/media/Media;ZLandroid/os/Handler;)V

    .line 454
    new-instance v1, Lcom/oneplus/gallery/media/MediaStoreMediaSet$5;

    const-string v2, "MoveMediaToRecycleBin"

    invoke-direct {v1, p0, v2}, Lcom/oneplus/gallery/media/MediaStoreMediaSet$5;-><init>(Lcom/oneplus/gallery/media/MediaStoreMediaSet;Ljava/lang/String;)V

    goto :goto_0

    .line 461
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->TAG:Ljava/lang/String;

    const-string v3, "deleteMedia() - Fail to recycle media"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    invoke-static {p2, p1, v4, p3}, Lcom/oneplus/gallery/media/MediaDeletionCallbackUtils;->callOnDeletionCompleted(Lcom/oneplus/gallery/media/MediaDeletionCallback;Lcom/oneplus/gallery/media/Media;ZLandroid/os/Handler;)V

    move-object v1, v2

    .line 463
    goto :goto_0

    .line 467
    .end local v0    # "recyclingHandle":Lcom/oneplus/base/Handle;
    :cond_3
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    invoke-interface {v1, p1, p2, p3, v4}, Lcom/oneplus/gallery/media/OPMediaManager;->deleteMedia(Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/media/MediaDeletionCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    goto :goto_0
.end method

.method protected getMediaIdTables(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 483
    .local p1, "photoIdTable":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    .local p2, "videoIdTable":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    .local p3, "photoGroupIdTable":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p4, "videoGroupIdTable":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz p1, :cond_2

    .line 485
    :try_start_0
    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_PhotoIdTable:Ljava/util/Set;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    :try_start_1
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_PhotoIdTable:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 488
    .local v2, "id":Ljava/lang/Long;
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 489
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "id":Ljava/lang/Long;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 516
    :catch_0
    move-exception v0

    .line 518
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->TAG:Ljava/lang/String;

    const-string v4, "getMediaIdTables() - Error when get media id tables"

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 520
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-void

    .line 489
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 491
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    if-eqz p2, :cond_4

    .line 493
    :try_start_4
    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_VideoIdTable:Ljava/util/Set;

    monitor-enter v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 495
    :try_start_5
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_VideoIdTable:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 496
    .restart local v2    # "id":Ljava/lang/Long;
    invoke-interface {p2, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 497
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "id":Ljava/lang/Long;
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 499
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    if-eqz p3, :cond_6

    .line 501
    :try_start_8
    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_PhotoGroupIdTable:Ljava/util/Set;

    monitor-enter v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 503
    :try_start_9
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_PhotoGroupIdTable:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 504
    .local v2, "id":Ljava/lang/String;
    invoke-interface {p3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 505
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "id":Ljava/lang/String;
    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_5
    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 507
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_6
    if-eqz p4, :cond_0

    .line 509
    :try_start_c
    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_VideoGroupIdTable:Ljava/util/Set;

    monitor-enter v4
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 511
    :try_start_d
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_VideoGroupIdTable:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 512
    .restart local v2    # "id":Ljava/lang/String;
    invoke-interface {p4, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 513
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "id":Ljava/lang/String;
    :catchall_3
    move-exception v3

    monitor-exit v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw v3
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_7
    :try_start_f
    monitor-exit v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto :goto_1
.end method

.method protected final getMediaManager()Lcom/oneplus/gallery/media/OPMediaManager;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    return-object v0
.end method

.method protected final getPeriodicMessageDispatcher()Lcom/oneplus/base/PeriodicMessageDispatcher;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_PeriodicMessageDispatcher:Lcom/oneplus/base/PeriodicMessageDispatcher;

    return-object v0
.end method

.method protected final getQueryCondition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_QueryCondition:Ljava/lang/String;

    return-object v0
.end method

.method protected final getQueryConditionArgs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_QueryConditionArgs:[Ljava/lang/String;

    return-object v0
.end method

.method public final getTargetMediaType()Lcom/oneplus/gallery/media/MediaType;
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_TargetMediaType:Lcom/oneplus/gallery/media/MediaType;

    return-object v0
.end method

.method public getType()Lcom/oneplus/gallery/media/MediaSet$Type;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_Type:Lcom/oneplus/gallery/media/MediaSet$Type;

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 586
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 648
    invoke-super {p0, p1}, Lcom/oneplus/base/HandlerBaseObject;->handleMessage(Landroid/os/Message;)V

    .line 651
    :cond_0
    :goto_0
    return-void

    .line 590
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 591
    .local v0, "params":[Ljava/lang/Object;
    aget-object v1, v0, v3

    instance-of v1, v1, Lcom/oneplus/gallery/media/Media;

    if-eqz v1, :cond_1

    .line 592
    aget-object v1, v0, v4

    check-cast v1, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;

    aget-object v2, v0, v3

    check-cast v2, Lcom/oneplus/gallery/media/Media;

    invoke-direct {p0, v1, v2}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->addMediaToMediaList(Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;Lcom/oneplus/gallery/media/Media;)V

    goto :goto_0

    .line 594
    :cond_1
    aget-object v1, v0, v4

    check-cast v1, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;

    aget-object v2, v0, v3

    check-cast v2, Ljava/util/List;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_2

    :goto_1
    invoke-direct {p0, v1, v2, v3}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->addMediaToMediaList(Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;Ljava/util/List;Z)V

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1

    .line 600
    .end local v0    # "params":[Ljava/lang/Object;
    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 601
    .restart local v0    # "params":[Ljava/lang/Object;
    aget-object v1, v0, v4

    check-cast v1, Ljava/util/Set;

    aget-object v2, v0, v3

    check-cast v2, Ljava/util/Set;

    invoke-direct {p0, v1, v2, v4}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->onPhotoIdTableUpdated(Ljava/util/Set;Ljava/util/Set;Z)Z

    .line 602
    const/4 v1, 0x2

    aget-object v1, v0, v1

    check-cast v1, Ljava/util/Set;

    const/4 v2, 0x3

    aget-object v2, v0, v2

    check-cast v2, Ljava/util/Set;

    invoke-direct {p0, v1, v2, v4}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->onVideoIdTableUpdated(Ljava/util/Set;Ljava/util/Set;Z)Z

    .line 603
    const/4 v1, 0x4

    aget-object v1, v0, v1

    check-cast v1, Ljava/util/Set;

    const/4 v2, 0x5

    aget-object v2, v0, v2

    check-cast v2, Ljava/util/Set;

    invoke-direct {p0, v1, v2, v4}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->onPhotoGroupIdTableUpdated(Ljava/util/Set;Ljava/util/Set;Z)Z

    .line 604
    const/4 v1, 0x6

    aget-object v1, v0, v1

    check-cast v1, Ljava/util/Set;

    const/4 v2, 0x7

    aget-object v2, v0, v2

    check-cast v2, Ljava/util/Set;

    invoke-direct {p0, v1, v2, v4}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->onVideoGroupIdTableUpdated(Ljava/util/Set;Ljava/util/Set;Z)Z

    .line 605
    invoke-direct {p0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->onMediaIdTableUpdated()V

    goto :goto_0

    .line 612
    .end local v0    # "params":[Ljava/lang/Object;
    :sswitch_2
    iget-boolean v1, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_IsMediaAddedWhenDeleting:Z

    if-eqz v1, :cond_3

    .line 613
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->updateMediaIdTable()V

    .line 618
    :goto_2
    sget-object v1, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->PROP_IS_DELETING:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 619
    sget-object v1, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->PROP_CONTAINS_RECYCLED_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 620
    iput-boolean v4, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_IsMediaAddedWhenDeleting:Z

    goto/16 :goto_0

    .line 615
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->onDeleted()V

    goto :goto_2

    .line 627
    :sswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 628
    .restart local v0    # "params":[Ljava/lang/Object;
    aget-object v1, v0, v3

    instance-of v1, v1, Lcom/oneplus/gallery/media/Media;

    if-eqz v1, :cond_4

    .line 629
    aget-object v1, v0, v4

    check-cast v1, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;

    aget-object v2, v0, v3

    check-cast v2, Lcom/oneplus/gallery/media/Media;

    invoke-direct {p0, v1, v2}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->removeMediaFromMediaList(Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;Lcom/oneplus/gallery/media/Media;)V

    goto/16 :goto_0

    .line 630
    :cond_4
    aget-object v1, v0, v3

    instance-of v1, v1, Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 631
    aget-object v1, v0, v4

    check-cast v1, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;

    aget-object v2, v0, v3

    check-cast v2, Ljava/util/Set;

    invoke-direct {p0, v1, v2}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->removeMediaFromMediaList(Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;Ljava/util/Set;)V

    goto/16 :goto_0

    .line 636
    .end local v0    # "params":[Ljava/lang/Object;
    :sswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->updateCoverHashCode(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 640
    :sswitch_5
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->updateCoverHashCode()V

    goto/16 :goto_0

    .line 644
    :sswitch_6
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->updateMediaIdTable()V

    goto/16 :goto_0

    .line 586
    :sswitch_data_0
    .sparse-switch
        -0x272f -> :sswitch_5
        -0x272e -> :sswitch_4
        -0x2725 -> :sswitch_2
        -0x271b -> :sswitch_3
        -0x271a -> :sswitch_0
        -0x2713 -> :sswitch_1
        -0x2712 -> :sswitch_6
    .end sparse-switch
.end method

.method protected abstract isOwnedByMediaSet(Lcom/oneplus/gallery/media/Media;)Ljava/lang/Boolean;
.end method

.method protected onDeleted()V
    .locals 4

    .prologue
    .line 664
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    invoke-interface {v2, p0}, Lcom/oneplus/gallery/media/OPMediaManager;->notifyMediaSetDeleted(Lcom/oneplus/gallery/media/MediaSet;)V

    .line 667
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 669
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->TAG:Ljava/lang/String;

    const-string v3, "onDeleted() - Release all media lists"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 672
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;

    .line 673
    .local v1, "mediaList":Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;
    if-eqz v1, :cond_0

    .line 674
    invoke-virtual {v1}, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;->release()V

    .line 670
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 679
    .end local v0    # "i":I
    .end local v1    # "mediaList":Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_PhotoIdTable:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 680
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_VideoIdTable:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 681
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_PhotoGroupIdTable:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 682
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_VideoGroupIdTable:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 683
    invoke-direct {p0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->onMediaIdTableUpdated()V

    .line 684
    return-void
.end method

.method protected onLocaleChanged(Ljava/util/Locale;Ljava/util/Locale;)V
    .locals 0
    .param p1, "oldLocale"    # Ljava/util/Locale;
    .param p2, "newLocale"    # Ljava/util/Locale;

    .prologue
    .line 693
    return-void
.end method

.method protected onMediaCreated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 705
    invoke-direct/range {p0 .. p5}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->onMediaCreatedOrRestored(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    .line 706
    return-void
.end method

.method protected onMediaDeleted(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 792
    const/4 v7, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->onMediaDeletedOrRecycled(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;IZ)V

    .line 793
    return-void
.end method

.method protected onMediaManagerActivated()V
    .locals 0

    .prologue
    .line 885
    return-void
.end method

.method protected onMediaManagerDeactivated()V
    .locals 0

    .prologue
    .line 892
    return-void
.end method

.method protected onMediaRecycled(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 904
    const/4 v7, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->onMediaDeletedOrRecycled(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;IZ)V

    .line 905
    return-void
.end method

.method protected onMediaRestored(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 917
    invoke-direct/range {p0 .. p5}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->onMediaCreatedOrRestored(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    .line 918
    return-void
.end method

.method protected onMediaUpdated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 930
    invoke-virtual {p0, p4}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->isOwnedByMediaSet(Lcom/oneplus/gallery/media/Media;)Ljava/lang/Boolean;

    move-result-object v0

    .line 931
    .local v0, "ret":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 933
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 935
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_RecycledMedia:Ljava/util/Map;

    invoke-interface {v1, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 936
    invoke-direct/range {p0 .. p5}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->onMediaCreatedOrRestored(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    .line 947
    :cond_0
    :goto_0
    return-void

    .line 939
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMediaUpdated() - media is recycled :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 944
    :cond_2
    const/4 v7, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->onMediaDeletedOrRecycled(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;IZ)V

    goto :goto_0
.end method

.method protected onRelease()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1003
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1005
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->TAG:Ljava/lang/String;

    const-string v3, "onRelease() - Release all media lists"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1008
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;

    .line 1009
    .local v1, "mediaList":Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;
    if-eqz v1, :cond_0

    .line 1010
    invoke-virtual {v1}, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;->release()V

    .line 1006
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1015
    .end local v0    # "i":I
    .end local v1    # "mediaList":Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

    .line 1016
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v2

    sget-object v3, Lcom/oneplus/gallery/GalleryApplication;->PROP_LOCALE:Lcom/oneplus/base/PropertyKey;

    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_LocaleChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/gallery/GalleryApplication;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1017
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v2

    sget-object v3, Lcom/oneplus/gallery/GalleryApplication;->PROP_IS_READ_STORAGE_PERM_GRANTED:Lcom/oneplus/base/PropertyKey;

    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_ReadExternalStorageChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/gallery/GalleryApplication;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1020
    const/4 v2, 0x0

    invoke-virtual {p0, v5, v5, v2}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->cleanUpRecycleBin(Lcom/oneplus/gallery/media/MediaDeletionCallback;Landroid/os/Handler;I)I

    .line 1023
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_PhotoIdTable:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 1024
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_VideoIdTable:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 1025
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_PhotoGroupIdTable:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 1026
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_VideoGroupIdTable:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 1029
    invoke-super {p0}, Lcom/oneplus/base/HandlerBaseObject;->onRelease()V

    .line 1030
    return-void
.end method

.method protected onUpdateCoverHashCode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1039
    new-instance v0, Lcom/oneplus/base/SimpleRef;

    invoke-direct {v0}, Lcom/oneplus/base/SimpleRef;-><init>()V

    .line 1040
    .local v0, "coverHashCodeRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    sget-object v2, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->CONTENT_URI_FILE:Landroid/net/Uri;

    new-instance v3, Lcom/oneplus/gallery/media/MediaStoreMediaSet$6;

    invoke-direct {v3, p0, v0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet$6;-><init>(Lcom/oneplus/gallery/media/MediaStoreMediaSet;Lcom/oneplus/base/Ref;)V

    invoke-interface {v1, v2, v3}, Lcom/oneplus/gallery/media/OPMediaManager;->accessContentProvider(Landroid/net/Uri;Lcom/oneplus/gallery/media/MediaManager$ContentProviderAccessCallback;)Lcom/oneplus/base/Handle;

    .line 1078
    invoke-interface {v0}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public openMediaList(Lcom/oneplus/gallery/media/MediaComparator;II)Lcom/oneplus/gallery/media/MediaList;
    .locals 4
    .param p1, "comparator"    # Lcom/oneplus/gallery/media/MediaComparator;
    .param p2, "maxMediaCount"    # I
    .param p3, "flags"    # I

    .prologue
    .line 1135
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->verifyReleaseState()V

    .line 1138
    if-nez p1, :cond_0

    .line 1139
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No comparator."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1142
    :cond_0
    new-instance v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;-><init>(Lcom/oneplus/gallery/media/MediaStoreMediaSet;Lcom/oneplus/gallery/media/MediaComparator;I)V

    .line 1143
    .local v0, "mediaList":Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    if-nez v1, :cond_1

    .line 1144
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    .line 1145
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1146
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->TAG:Ljava/lang/String;

    const-string v2, "openMediaList() - Active media list count : "

    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1149
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_MediaManagerActivatedHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 1150
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    invoke-interface {v1}, Lcom/oneplus/gallery/media/OPMediaManager;->activate()Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_MediaManagerActivatedHandle:Lcom/oneplus/base/Handle;

    .line 1153
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    sget-object v2, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->CONTENT_URI_FILE:Landroid/net/Uri;

    new-instance v3, Lcom/oneplus/gallery/media/MediaStoreMediaSet$7;

    invoke-direct {v3, p0, p1, p2, v0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet$7;-><init>(Lcom/oneplus/gallery/media/MediaStoreMediaSet;Lcom/oneplus/gallery/media/MediaComparator;ILcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;)V

    invoke-interface {v1, v2, v3}, Lcom/oneplus/gallery/media/OPMediaManager;->accessContentProvider(Landroid/net/Uri;Lcom/oneplus/gallery/media/MediaManager$ContentProviderAccessCallback;)Lcom/oneplus/base/Handle;

    .line 1281
    return-object v0
.end method

.method protected recycleMedia(Lcom/oneplus/gallery/media/Media;I)Lcom/oneplus/base/Handle;
    .locals 2
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 1297
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->verifyAccess()V

    .line 1298
    sget-object v1, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1310
    :cond_0
    :goto_0
    return-object v0

    .line 1300
    :cond_1
    if-eqz p1, :cond_0

    .line 1304
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_RecycledMedia:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/Handle;

    .line 1305
    .local v0, "handle":Lcom/oneplus/base/Handle;
    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1307
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    invoke-interface {v1, p1, p2}, Lcom/oneplus/gallery/media/OPMediaManager;->recycleMedia(Lcom/oneplus/gallery/media/Media;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    .line 1308
    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1309
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_RecycledMedia:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public restoreMediaInRecycleBin(I)I
    .locals 7
    .param p1, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 1391
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->verifyAccess()V

    .line 1392
    sget-object v3, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v4

    .line 1412
    :cond_0
    :goto_0
    return v2

    .line 1396
    :cond_1
    const/4 v2, 0x0

    .line 1397
    .local v2, "result":I
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_RecycledMedia:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1399
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_RecycledMedia:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    iget-object v5, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_RecycledMedia:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    new-array v5, v5, [Lcom/oneplus/base/Handle;

    invoke-interface {v3, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/base/Handle;

    .line 1400
    .local v0, "handles":[Lcom/oneplus/base/Handle;
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_RecycledMedia:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 1401
    array-length v3, v0

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_3

    .line 1403
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    aget-object v5, v0, v1

    invoke-interface {v3, v5}, Lcom/oneplus/gallery/media/OPMediaManager;->restoreMedia(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1404
    add-int/lit8 v2, v2, 0x1

    .line 1401
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1408
    .end local v0    # "handles":[Lcom/oneplus/base/Handle;
    .end local v1    # "i":I
    :cond_3
    sget-object v3, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->PROP_CONTAINS_RECYCLED_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1410
    if-lez v2, :cond_0

    .line 1411
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->TAG:Ljava/lang/String;

    const-string v4, "restoreMediaInRecycleBin() - Restore "

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, " media"

    invoke-static {v3, v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected varargs setQueryCondition(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "condition"    # Ljava/lang/String;
    .param p2, "conditionArgs"    # [Ljava/lang/String;

    .prologue
    .line 1423
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->verifyAccess()V

    .line 1424
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_TargetMediaType:Lcom/oneplus/gallery/media/MediaType;

    if-nez v0, :cond_1

    .line 1425
    const-string v0, "(media_type=1 OR media_type=3)"

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_QueryCondition:Ljava/lang/String;

    .line 1441
    :goto_0
    iput-object p2, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_QueryConditionArgs:[Ljava/lang/String;

    .line 1442
    if-eqz p1, :cond_0

    .line 1443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_QueryCondition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_QueryCondition:Ljava/lang/String;

    .line 1444
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->updateMediaIdTable()V

    .line 1445
    :goto_1
    return-void

    .line 1428
    :cond_1
    sget-object v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$11;->$SwitchMap$com$oneplus$gallery$media$MediaType:[I

    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_TargetMediaType:Lcom/oneplus/gallery/media/MediaType;

    invoke-virtual {v1}, Lcom/oneplus/gallery/media/MediaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1437
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setQueryCondition() - Unsupported target media type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_TargetMediaType:Lcom/oneplus/gallery/media/MediaType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1431
    :pswitch_0
    const-string v0, "(media_type=1)"

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_QueryCondition:Ljava/lang/String;

    goto :goto_0

    .line 1434
    :pswitch_1
    const-string v0, "(media_type=3)"

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_QueryCondition:Ljava/lang/String;

    goto :goto_0

    .line 1428
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected updateCoverHashCode()V
    .locals 4

    .prologue
    .line 1463
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    new-instance v1, Lcom/oneplus/gallery/media/MediaStoreMediaSet$9;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet$9;-><init>(Lcom/oneplus/gallery/media/MediaStoreMediaSet;)V

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/oneplus/gallery/media/OPMediaManager;->postToContentThread(Ljava/lang/Runnable;J)Z

    .line 1481
    return-void
.end method

.method protected updateCoverHashCode(Ljava/lang/String;)V
    .locals 1
    .param p1, "hashCode"    # Ljava/lang/String;

    .prologue
    .line 1454
    sget-object v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->PROP_COVER_HASH_CODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1455
    return-void
.end method

.method protected updateCoverHashCodeDelayed()V
    .locals 4

    .prologue
    .line 1489
    const/16 v0, -0x272f

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-static {p0, v0, v1, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 1490
    return-void
.end method

.method protected updateMediaIdTable()V
    .locals 8

    .prologue
    .line 1497
    sget-object v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1618
    :goto_0
    return-void

    .line 1501
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, -0x2712

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1504
    new-instance v3, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_PhotoIdTable:Ljava/util/Set;

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1505
    .local v3, "currentPhotoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    new-instance v5, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_VideoIdTable:Ljava/util/Set;

    invoke-direct {v5, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1506
    .local v5, "currentVideoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    new-instance v2, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_PhotoGroupIdTable:Ljava/util/Set;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1507
    .local v2, "currentPhotoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_VideoGroupIdTable:Ljava/util/Set;

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1508
    .local v4, "currentVideoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    sget-object v7, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->CONTENT_URI_FILE:Landroid/net/Uri;

    new-instance v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$10;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/gallery/media/MediaStoreMediaSet$10;-><init>(Lcom/oneplus/gallery/media/MediaStoreMediaSet;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;)V

    invoke-interface {v6, v7, v0}, Lcom/oneplus/gallery/media/OPMediaManager;->accessContentProvider(Landroid/net/Uri;Lcom/oneplus/gallery/media/MediaManager$ContentProviderAccessCallback;)Lcom/oneplus/base/Handle;

    .line 1617
    invoke-direct {p0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->refreshMediaLists()V

    goto :goto_0
.end method

.method protected verifyMediaToAdd(Lcom/oneplus/gallery/media/Media;)Z
    .locals 4
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 1647
    invoke-static {p1}, Lcom/oneplus/gallery/media/MediaUtils;->getId(Lcom/oneplus/gallery/media/Media;)J

    move-result-wide v0

    .line 1648
    .local v0, "id":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

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
