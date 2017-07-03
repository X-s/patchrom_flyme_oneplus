.class public Lcom/oneplus/gallery2/media/MediaStoreMediaSource;
.super Lcom/oneplus/gallery2/media/BaseMediaSource;
.source "MediaStoreMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/media/MediaStoreMediaSource$16;,
        Lcom/oneplus/gallery2/media/MediaStoreMediaSource$QueryAllMediaStoreContentRunnable;,
        Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;,
        Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;
    }
.end annotation


# static fields
.field private static final ACTION_CLEAR_IMAGE_CACHE:Ljava/lang/String; = "com.oneplus.camera.service.CLEAR_IMAGE_CACHE"

.field private static final ACTION_MEDIA_DELETED:Ljava/lang/String; = "com.oneplus.gallery.MEDIA_STORE_MEDIA_DELETED"

.field private static final CONTENT_URI_FILE:Landroid/net/Uri;

.field private static final CONTENT_URI_IMAGE:Landroid/net/Uri;

.field private static final CONTENT_URI_OBJECT:Landroid/net/Uri;

.field private static final CONTENT_URI_STRING_FILE:Ljava/lang/String;

.field private static final CONTENT_URI_VIDEO:Landroid/net/Uri;

.field private static final DURATION_SYNC_MEDIA_WITH_MEDIA_STORE_DELAY:J = 0x3e8L

.field private static final DURATION_SYNC_SINGLE_MEDIA_WITH_MEDIA_STORE_DELAY:J = 0x32L

.field public static final EVENT_NEW_MEDIA_INTENT_RECEIVED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/base/IntentEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_CAMERA_ROLL_ONLY:I

.field private static final MAX_PENDING_MEDIA_SYNC_COUNT:I = 0x10

.field private static final MEDIA_STORE_QUERY_CHUNK_SIZE:I = 0x200

.field private static final MEDIA_STORE_QUERY_COND:Ljava/lang/String; = "media_type=1 OR media_type=3"

.field private static final MEDIA_STORE_QUERY_COND_CAMERA_ROLL:Ljava/lang/String; = "(media_type=1 OR media_type=3) AND _data LIKE \'%/DCIM/%\'"

.field private static final MODE_CAMERA_ROLL:I = 0x1

.field private static final MODE_NORMAL:I = 0x0

.field private static final MSG_MEDIA_CONTENT_URI_QUERIED:I = 0x2725

.field private static final MSG_MEDIA_DELETED:I = 0x271a

.field private static final MSG_MEDIA_STORE_ACCESS_COMPLETED:I = 0x2724

.field private static final MSG_START_SYNC_MEDIA_WITH_MEDIA_STORE:I = 0x2711

.field private static final MSG_START_SYNC_SINGLE_MEDIA_WITH_MEDIA_STORE:I = 0x2714

.field private static final MSG_SYNC_MEDIA_WITH_MEDIA_STORE:I = 0x2710

.field private static final MSG_SYNC_SINGLE_MEDIA_WITH_MEDIA_STORE:I = 0x2712

.field private static final RAW_FILE_DELETION_COND:Ljava/lang/String; = "_data=?"

.field private static final SIMULATE_SLOW_MEDIA_STORE_QUERY:Z


# instance fields
.field private m_CameraRollOnlyFlagCount:I

.field private final m_CandidateMediaToRemove:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;"
        }
    .end annotation
.end field

.field private final m_ContentChangeCallback:Lcom/oneplus/gallery2/media/ContentObserver$ContentChangeCallback;

.field private final m_ContentChangeCallbackHandles:Lcom/oneplus/base/HandleSet;

.field private m_HasPendingMediaSyncWithMediaStore:Z

.field private m_HasPendingSingleMediaSyncWithMediaStore:Z

.field private final m_HiddenPathPrefixList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_IsMediaTableReady:Z

.field private final m_MediaIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final m_MediaObtainCallbackHandles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/CallbackHandle",
            "<",
            "Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private m_MediaStoreSyncToken:Ljava/lang/Object;

.field private m_Mode:I

.field private m_NeedToSyncMediaWhenPermsReady:Z

.field private final m_PendingMediaIdToSync:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private m_PendingMediaSyncCount:I

.field private m_PermissionsReady:Z

.field private final m_RecycledMedia:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 66
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->FLAG_CAMERA_ROLL_ONLY:I

    .line 72
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "NewMediaIntentReceived"

    const-class v2, Lcom/oneplus/base/IntentEventArgs;

    const-class v3, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->EVENT_NEW_MEDIA_INTENT_RECEIVED:Lcom/oneplus/base/EventKey;

    .line 81
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_FILE:Landroid/net/Uri;

    .line 82
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_IMAGE:Landroid/net/Uri;

    .line 83
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_VIDEO:Landroid/net/Uri;

    .line 84
    const-string v0, "content://media/external/object"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_OBJECT:Landroid/net/Uri;

    .line 85
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_FILE:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_STRING_FILE:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/oneplus/base/BaseApplication;)V
    .locals 3
    .param p1, "app"    # Lcom/oneplus/base/BaseApplication;

    .prologue
    const/4 v2, 0x0

    .line 227
    const-string v0, "Media store media source"

    invoke-direct {p0, v0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSource;-><init>(Ljava/lang/String;Lcom/oneplus/base/BaseApplication;)V

    .line 105
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CandidateMediaToRemove:Ljava/util/Set;

    .line 106
    new-instance v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$1;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_ContentChangeCallback:Lcom/oneplus/gallery2/media/ContentObserver$ContentChangeCallback;

    .line 114
    new-instance v0, Lcom/oneplus/base/HandleSet;

    new-array v1, v2, [Lcom/oneplus/base/Handle;

    invoke-direct {v0, v1}, Lcom/oneplus/base/HandleSet;-><init>([Lcom/oneplus/base/Handle;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_ContentChangeCallbackHandles:Lcom/oneplus/base/HandleSet;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_HiddenPathPrefixList:Ljava/util/List;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_MediaObtainCallbackHandles:Ljava/util/Map;

    .line 121
    iput v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_Mode:I

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_NeedToSyncMediaWhenPermsReady:Z

    .line 124
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaIdToSync:Ljava/util/Set;

    .line 126
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_RecycledMedia:Ljava/util/Set;

    .line 130
    new-instance v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$2;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_MediaIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 228
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/MediaStoreMediaSource;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->onMediaStoreContentChanged(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/MediaStoreMediaSource;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->onMediaIntentReceived(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->onPermissionsReady()V

    return-void
.end method

.method static synthetic access$1500(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->onLocaleChanged()V

    return-void
.end method

.method static synthetic access$1600(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;J)V
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/MediaStoreMediaSource;
    .param p1, "x1"    # J

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->queryMediaStoreContent(J)V

    return-void
.end method

.method static synthetic access$1700(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/MediaStoreMediaSource;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->restoreMedia(Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Ljava/lang/Object;II)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/MediaStoreMediaSource;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->queryAllMediaStoreContent(Ljava/lang/Object;II)V

    return-void
.end method

.method static synthetic access$400()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_FILE:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/MediaStoreMediaSource;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->deleteMedia(Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;)V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_MediaObtainCallbackHandles:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_STRING_FILE:Ljava/lang/String;

    return-object v0
.end method

.method private addToGroupedMedia(Lcom/oneplus/gallery2/media/MediaStoreMedia;)Z
    .locals 7
    .param p1, "media"    # Lcom/oneplus/gallery2/media/MediaStoreMedia;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 234
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isSubMedia()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 236
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getGroupId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia(Ljava/lang/String;I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    .line 237
    .local v0, "groupedMedia":Lcom/oneplus/gallery2/media/BaseGroupedMedia;
    if-nez v0, :cond_1

    move v1, v3

    .line 238
    .local v1, "isNewGroupedMedia":Z
    :goto_0
    if-eqz v1, :cond_3

    .line 240
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->createGroupedMedia(Lcom/oneplus/gallery2/media/MediaStoreMedia;)Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    move-result-object v0

    .line 241
    if-nez v0, :cond_2

    .line 252
    .end local v0    # "groupedMedia":Lcom/oneplus/gallery2/media/BaseGroupedMedia;
    .end local v1    # "isNewGroupedMedia":Z
    :cond_0
    :goto_1
    return v2

    .restart local v0    # "groupedMedia":Lcom/oneplus/gallery2/media/BaseGroupedMedia;
    :cond_1
    move v1, v2

    .line 237
    goto :goto_0

    .line 243
    .restart local v1    # "isNewGroupedMedia":Z
    :cond_2
    iget-object v4, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addToGroupedMedia() - Create "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_3
    invoke-virtual {v0, p1}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->addSubMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 247
    if-eqz v1, :cond_4

    .line 248
    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->prepareMediaFlagsForCallback(Lcom/oneplus/gallery2/media/Media;)I

    move-result v2

    invoke-virtual {p0, v0, v3, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->addMedia(Lcom/oneplus/gallery2/media/Media;ZI)Z

    :cond_4
    move v2, v3

    .line 249
    goto :goto_1
.end method

.method private callOnMediaObtained(JLcom/oneplus/gallery2/media/Media;)V
    .locals 9
    .param p1, "mediaId"    # J
    .param p3, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 259
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_MediaObtainCallbackHandles:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 260
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/CallbackHandle<Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;>;>;"
    if-eqz v7, :cond_4

    .line 262
    if-eqz p3, :cond_1

    invoke-virtual {p0, p3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->prepareMediaFlagsForCallback(Lcom/oneplus/gallery2/media/Media;)I

    move-result v5

    .line 263
    .local v5, "flags":I
    :goto_0
    if-eqz p3, :cond_2

    invoke-interface {p3}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    .line 264
    .local v2, "contentUri":Landroid/net/Uri;
    :goto_1
    if-eqz p3, :cond_3

    invoke-interface {p3}, Lcom/oneplus/gallery2/media/Media;->getId()Ljava/lang/String;

    move-result-object v3

    .line 265
    .local v3, "id":Ljava/lang/String;
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v6, v1, -0x1

    .local v6, "i":I
    :goto_3
    if-ltz v6, :cond_4

    .line 267
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/base/CallbackHandle;

    invoke-virtual {v1}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

    .line 268
    .local v0, "callback":Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;
    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v4, p3

    .line 269
    invoke-interface/range {v0 .. v5}, Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;->onMediaObtained(Lcom/oneplus/gallery2/media/MediaSource;Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/Media;I)V

    .line 265
    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 262
    .end local v0    # "callback":Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;
    .end local v2    # "contentUri":Landroid/net/Uri;
    .end local v3    # "id":Ljava/lang/String;
    .end local v5    # "flags":I
    .end local v6    # "i":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 263
    .restart local v5    # "flags":I
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_STRING_FILE:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_1

    .line 264
    .restart local v2    # "contentUri":Landroid/net/Uri;
    :cond_3
    invoke-static {p1, p2}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getId(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 272
    .end local v2    # "contentUri":Landroid/net/Uri;
    .end local v5    # "flags":I
    :cond_4
    return-void
.end method

.method private checkTakenTime(Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)V
    .locals 4
    .param p1, "values"    # Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;
    .param p2, "fileInfo"    # Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;

    .prologue
    .line 278
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    iget-wide v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->takenTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 282
    iget v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->mediaType:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 285
    :pswitch_1
    iget-wide v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->id:J

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->createContentUri(J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->getTakenTimeFromFile(Landroid/net/Uri;)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;->takenTime:J

    goto :goto_0

    .line 288
    :pswitch_2
    iget-wide v0, p2, Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;->lastModifiedTime:J

    iput-wide v0, p2, Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;->takenTime:J

    goto :goto_0

    .line 282
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private createGroupedMedia(Lcom/oneplus/gallery2/media/MediaStoreMedia;)Lcom/oneplus/gallery2/media/BaseGroupedMedia;
    .locals 2
    .param p1, "media"    # Lcom/oneplus/gallery2/media/MediaStoreMedia;

    .prologue
    .line 298
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getGroupId()Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "groupId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isBurstSubMedia()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    new-instance v1, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;

    invoke-direct {v1, p0, v0}, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Ljava/lang/String;)V

    .line 304
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private deleteMedia(Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;)V
    .locals 16
    .param p1, "handle"    # Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;

    .prologue
    .line 434
    invoke-static/range {p1 .. p1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 517
    :goto_0
    return-void

    .line 436
    :cond_0
    monitor-enter p1

    .line 438
    :try_start_0
    move-object/from16 v0, p1

    iget-boolean v11, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;->isCancelled:Z

    if-eqz v11, :cond_1

    .line 439
    monitor-exit p1

    goto :goto_0

    .line 441
    :catchall_0
    move-exception v11

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 440
    :cond_1
    const/4 v11, 0x0

    :try_start_1
    move-object/from16 v0, p1

    iput-boolean v11, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;->isCancellable:Z

    .line 441
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 444
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;->getMedia()Lcom/oneplus/gallery2/media/Media;

    move-result-object v6

    .line 445
    .local v6, "media":Lcom/oneplus/gallery2/media/Media;
    instance-of v11, v6, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    if-nez v11, :cond_2

    .line 447
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "deleteMedia() - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is not a media store media"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const/16 v11, 0x271a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v11, v1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;ILjava/lang/Object;)Z

    goto :goto_0

    .line 453
    :cond_2
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v11

    invoke-virtual {v11}, Lcom/oneplus/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_FILE:Landroid/net/Uri;

    invoke-virtual {v11, v12}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    .line 454
    .local v2, "client":Landroid/content/ContentProviderClient;
    if-nez v2, :cond_3

    .line 456
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string v12, "deleteMedia() - Fail to acquire content provider client"

    invoke-static {v11, v12}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const/16 v11, 0x271a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v11, v1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;ILjava/lang/Object;)Z

    goto :goto_0

    .line 462
    :cond_3
    const/4 v10, 0x0

    .line 466
    .local v10, "success":Z
    const/4 v9, 0x0

    .line 467
    .local v9, "rawFilePath":Ljava/lang/String;
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;->getFlags()I

    move-result v11

    sget v12, Lcom/oneplus/gallery2/media/Media;->FLAG_INCLUDE_RAW_PHOTO:I

    and-int/2addr v11, v12

    if-eqz v11, :cond_4

    .line 469
    invoke-interface {v6}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v4

    .line 470
    .local v4, "filePath":Ljava/lang/String;
    const/16 v11, 0x2e

    invoke-virtual {v4, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 471
    .local v5, "indexOfDot":I
    if-ltz v5, :cond_7

    .line 472
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    invoke-virtual {v4, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".dng"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 478
    .end local v4    # "filePath":Ljava/lang/String;
    .end local v5    # "indexOfDot":I
    :cond_4
    :goto_1
    sget-object v12, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_FILE:Landroid/net/Uri;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "_id="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v6

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    move-object v11, v0

    invoke-virtual {v11}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getMediaId()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v11, v13}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    if-lez v11, :cond_8

    .line 479
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string v12, "deleteMedia() - "

    const-string v13, " deleted"

    invoke-static {v11, v12, v6, v13}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 484
    :goto_2
    if-eqz v9, :cond_6

    .line 486
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 487
    .local v7, "rawFile":Ljava/io/File;
    const/4 v8, 0x0

    .line 488
    .local v8, "rawFileDeleted":Z
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 490
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 491
    const/4 v8, 0x1

    .line 495
    :cond_5
    :goto_3
    sget-object v11, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_FILE:Landroid/net/Uri;

    const-string v12, "_data=?"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    invoke-virtual {v2, v11, v12, v13}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 496
    if-eqz v8, :cond_6

    .line 497
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string v12, "deleteMedia() - RAW file "

    const-string v13, " deleted"

    invoke-static {v11, v12, v9, v13}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 501
    .end local v7    # "rawFile":Ljava/io/File;
    .end local v8    # "rawFileDeleted":Z
    :cond_6
    move-object v0, v6

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    move-object v11, v0

    invoke-virtual {v11}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getMediaId()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/oneplus/gallery2/media/GalleryDatabase;->deleteExtraMediaInfo(J)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 504
    const/4 v10, 0x1

    .line 512
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 516
    :goto_4
    const/16 v12, 0x271a

    if-eqz v10, :cond_a

    const/4 v11, 0x1

    :goto_5
    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v12, v11, v13, v1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 474
    .restart local v4    # "filePath":Ljava/lang/String;
    .restart local v5    # "indexOfDot":I
    :cond_7
    :try_start_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".dng"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 481
    .end local v4    # "filePath":Ljava/lang/String;
    .end local v5    # "indexOfDot":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "deleteMedia() - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is not found"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_2

    .line 506
    :catch_0
    move-exception v3

    .line 508
    .local v3, "ex":Ljava/lang/Throwable;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "deleteMedia() - Fail to delete "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 512
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_4

    .line 493
    .end local v3    # "ex":Ljava/lang/Throwable;
    .restart local v7    # "rawFile":Ljava/io/File;
    .restart local v8    # "rawFileDeleted":Z
    :cond_9
    :try_start_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "deleteMedia() - Fail to delete RAW file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_3

    .line 512
    .end local v7    # "rawFile":Ljava/io/File;
    .end local v8    # "rawFileDeleted":Z
    :catchall_1
    move-exception v11

    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    throw v11

    .line 516
    :cond_a
    const/4 v11, 0x0

    goto/16 :goto_5
.end method

.method private onLocaleChanged()V
    .locals 3

    .prologue
    .line 1147
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    .line 1149
    .local v1, "media":Lcom/oneplus/gallery2/media/Media;
    instance-of v2, v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    if-eqz v2, :cond_0

    .line 1150
    check-cast v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    .end local v1    # "media":Lcom/oneplus/gallery2/media/Media;
    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->onLocaleChanged()V

    goto :goto_0

    .line 1152
    :cond_1
    return-void
.end method

.method private onMediaContentUriQueried(Lcom/oneplus/base/CallbackHandle;Landroid/net/Uri;)V
    .locals 3
    .param p2, "contentUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/CallbackHandle",
            "<",
            "Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "handle":Lcom/oneplus/base/CallbackHandle;, "Lcom/oneplus/base/CallbackHandle<Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;>;"
    const/4 v2, 0x0

    .line 1158
    invoke-static {p1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1159
    invoke-virtual {p1}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;->onCompleted(Lcom/oneplus/base/Handle;Landroid/net/Uri;II)V

    .line 1160
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 1159
    goto :goto_0
.end method

.method private onMediaDeleted(Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;Z)V
    .locals 6
    .param p1, "handle"    # Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;
    .param p2, "success"    # Z

    .prologue
    const/4 v5, 0x1

    .line 1167
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;->getMedia()Lcom/oneplus/gallery2/media/Media;

    move-result-object v2

    .line 1168
    .local v2, "media":Lcom/oneplus/gallery2/media/Media;
    if-eqz p2, :cond_0

    .line 1170
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.oneplus.gallery.MEDIA_STORE_MEDIA_DELETED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1171
    .local v1, "intent":Landroid/content/Intent;
    invoke-interface {v2}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/Media;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1172
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/oneplus/base/BaseApplication;->sendBroadcast(Landroid/content/Intent;)V

    .line 1176
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0, v5}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->isRunningOrInitializing(Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1194
    :cond_1
    :goto_0
    return-void

    .line 1178
    :cond_2
    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->prepareMediaFlagsForCallback(Lcom/oneplus/gallery2/media/Media;)I

    move-result v0

    .line 1179
    .local v0, "cbFlags":I
    if-nez p2, :cond_3

    .line 1181
    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMediaDeleted() - Fail to delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    iget-object v3, p1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;->callback:Lcom/oneplus/gallery2/media/Media$DeletionCallback;

    if-eqz v3, :cond_1

    .line 1183
    iget-object v3, p1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;->callback:Lcom/oneplus/gallery2/media/Media$DeletionCallback;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v0}, Lcom/oneplus/gallery2/media/Media$DeletionCallback;->onDeletionCompleted(Lcom/oneplus/gallery2/media/Media;ZI)V

    goto :goto_0

    .line 1188
    :cond_3
    invoke-virtual {p0, v2, v5, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->removeMedia(Lcom/oneplus/gallery2/media/Media;ZI)Z

    move-result v3

    if-eqz v3, :cond_4

    instance-of v3, v2, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    if-eqz v3, :cond_4

    move-object v3, v2

    .line 1189
    check-cast v3, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    invoke-direct {p0, v3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->removeFromGroupedMedia(Lcom/oneplus/gallery2/media/MediaStoreMedia;)Z

    .line 1192
    :cond_4
    iget-object v3, p1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;->callback:Lcom/oneplus/gallery2/media/Media$DeletionCallback;

    if-eqz v3, :cond_1

    .line 1193
    iget-object v3, p1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;->callback:Lcom/oneplus/gallery2/media/Media$DeletionCallback;

    invoke-virtual {v3, v2, v5, v0}, Lcom/oneplus/gallery2/media/Media$DeletionCallback;->onDeletionCompleted(Lcom/oneplus/gallery2/media/Media;ZI)V

    goto :goto_0
.end method

.method private onMediaIntentReceived(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1201
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1202
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1203
    .local v1, "contentUri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 1236
    :cond_0
    :goto_0
    return-void

    .line 1207
    :cond_1
    const/4 v2, 0x0

    .line 1208
    .local v2, "isNewNediaIntent":Z
    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 1211
    :pswitch_0
    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string v4, "onMediaIntentReceived() - New photo : "

    invoke-static {v3, v4, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1212
    const/4 v2, 0x1

    .line 1231
    :goto_2
    invoke-direct {p0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->syncMediaWithMediaStore(Landroid/net/Uri;)V

    .line 1234
    if-eqz v2, :cond_0

    .line 1235
    sget-object v3, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->EVENT_NEW_MEDIA_INTENT_RECEIVED:Lcom/oneplus/base/EventKey;

    new-instance v4, Lcom/oneplus/base/IntentEventArgs;

    invoke-direct {v4, p1}, Lcom/oneplus/base/IntentEventArgs;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    goto :goto_0

    .line 1208
    :sswitch_0
    const-string v4, "android.hardware.action.NEW_PICTURE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_1
    const-string v4, "android.hardware.action.NEW_VIDEO"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_2
    const-string v4, "com.oneplus.camera.service.CLEAR_IMAGE_CACHE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_3
    const-string v4, "com.oneplus.gallery.MEDIA_STORE_MEDIA_DELETED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x3

    goto :goto_1

    .line 1216
    :pswitch_1
    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string v4, "onMediaIntentReceived() - New video : "

    invoke-static {v3, v4, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1217
    const/4 v2, 0x1

    .line 1218
    goto :goto_2

    .line 1221
    :pswitch_2
    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string v4, "onMediaIntentReceived() - Clear cache : "

    invoke-static {v3, v4, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 1225
    :pswitch_3
    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string v4, "onMediaIntentReceived() - Media deleted : "

    invoke-static {v3, v4, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 1208
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d14f855 -> :sswitch_1
        0x2c9bc4c5 -> :sswitch_2
        0x36db402e -> :sswitch_0
        0x7767754e -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onMediaStoreAccessCompleted(Lcom/oneplus/base/CallbackHandle;Landroid/net/Uri;II)V
    .locals 1
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "result"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/CallbackHandle",
            "<",
            "Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;",
            ">;",
            "Landroid/net/Uri;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 1242
    .local p1, "handle":Lcom/oneplus/base/CallbackHandle;, "Lcom/oneplus/base/CallbackHandle<Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;>;"
    invoke-static {p1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1243
    invoke-virtual {p1}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;->onCompleted(Lcom/oneplus/base/Handle;Landroid/net/Uri;II)V

    .line 1244
    :cond_0
    return-void
.end method

.method private onMediaStoreContentChanged(Landroid/net/Uri;)V
    .locals 6
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 1251
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->isRunningOrInitializing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1293
    :cond_0
    :goto_0
    return-void

    .line 1254
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMediaStoreContentChanged() - Content URI : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    iget-boolean v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PermissionsReady:Z

    if-nez v1, :cond_2

    .line 1259
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string v4, "onMediaStoreContentChanged() - Permissions not ready, ignore"

    invoke-static {v1, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1264
    :cond_2
    const-wide/16 v2, -0x1

    .line 1265
    .local v2, "mediaId":J
    if-eqz p1, :cond_3

    .line 1269
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1270
    .local v0, "contentUriString":Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1274
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1282
    .end local v0    # "contentUriString":Ljava/lang/String;
    :cond_3
    :goto_1
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_4

    .line 1284
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaIdToSync:Ljava/util/Set;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_HasPendingSingleMediaSyncWithMediaStore:Z

    if-nez v1, :cond_0

    .line 1286
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string v4, "onMediaStoreContentChanged() - Schedule single media sync"

    invoke-static {v1, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_HasPendingSingleMediaSyncWithMediaStore:Z

    .line 1288
    const/16 v1, 0x2714

    const-wide/16 v4, 0x32

    invoke-static {p0, v1, v4, v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IJ)Z

    goto :goto_0

    .line 1292
    :cond_4
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->syncMediaWithMediaStoreDelayed(Z)V

    goto :goto_0

    .line 1277
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private onPermissionsReady()V
    .locals 2

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string v1, "onPermissionsReady()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PermissionsReady:Z

    .line 1301
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_NeedToSyncMediaWhenPermsReady:Z

    if-eqz v0, :cond_0

    .line 1303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_NeedToSyncMediaWhenPermsReady:Z

    .line 1304
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->syncMediaWithMediaStore()V

    .line 1306
    :cond_0
    return-void
.end method

.method private queryAllMediaStoreContent(Ljava/lang/Object;II)V
    .locals 20
    .param p1, "token"    # Ljava/lang/Object;
    .param p2, "mode"    # I
    .param p3, "contentStartOffset"    # I

    .prologue
    .line 1312
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string v4, "queryAllMediaStoreContent() - Mode : "

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, ", offset : "

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v3, v4, v6, v7, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1315
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 1316
    .local v14, "time":J
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1317
    .local v13, "valueList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1318
    .local v11, "fileInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;>;"
    const/4 v2, 0x0

    .line 1319
    .local v2, "client":Landroid/content/ContentProviderClient;
    const/4 v12, 0x0

    .line 1322
    .local v12, "skipCount":I
    :try_start_0
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_FILE:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    .line 1323
    if-eqz v2, :cond_a

    .line 1325
    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_1

    const-string v5, "(media_type=1 OR media_type=3) AND _data LIKE \'%/DCIM/%\'"

    .line 1326
    .local v5, "condition":Ljava/lang/String;
    :goto_0
    sget-object v3, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_FILE:Landroid/net/Uri;

    sget-object v4, Lcom/oneplus/gallery2/media/MediaStoreMedia;->MEDIA_STORE_COLUMNS:[Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "_id DESC LIMIT 512 OFFSET "

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 1328
    :goto_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1331
    invoke-static {v8}, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->read(Landroid/database/Cursor;)Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;

    move-result-object v16

    .line 1332
    .local v16, "values":Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;
    if-eqz v16, :cond_0

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->data:Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->data:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->isPathInHiddenDirectory(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v3

    if-eqz v3, :cond_2

    .line 1334
    :cond_0
    add-int/lit8 v12, v12, 0x1

    .line 1335
    goto :goto_1

    .line 1325
    .end local v5    # "condition":Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v16    # "values":Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;
    :cond_1
    :try_start_2
    const-string v5, "media_type=1 OR media_type=3"
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 1339
    .restart local v5    # "condition":Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v16    # "values":Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;
    :cond_2
    :try_start_3
    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->id:J

    invoke-static {v6, v7}, Lcom/oneplus/gallery2/media/GalleryDatabase;->getExtraMediaInfo(J)Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    move-result-object v3

    move-object/from16 v0, v16

    iput-object v3, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->extraInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    .line 1342
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->data:Ljava/lang/String;

    invoke-static {v3}, Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;->read(Ljava/lang/String;)Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;

    move-result-object v10

    .line 1345
    .local v10, "fileInfo":Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v10}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->checkTakenTime(Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)V

    .line 1348
    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1349
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    .line 1326
    .end local v10    # "fileInfo":Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;
    .end local v16    # "values":Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;
    :catch_0
    move-exception v3

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1362
    :catchall_0
    move-exception v4

    move-object/from16 v19, v4

    move-object v4, v3

    move-object/from16 v3, v19

    :goto_2
    if-eqz v8, :cond_3

    if-eqz v4, :cond_9

    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_3
    :goto_3
    :try_start_6
    throw v3
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1367
    .end local v5    # "condition":Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catch_1
    move-exception v9

    .line 1369
    .local v9, "ex":Ljava/lang/Throwable;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string v4, "queryAllMediaStoreContent() - Fail to query from media store"

    invoke-static {v3, v4, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1373
    if-eqz v2, :cond_4

    .line 1374
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 1376
    .end local v9    # "ex":Ljava/lang/Throwable;
    :cond_4
    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v14, v6, v14

    .line 1377
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "queryAllMediaStoreContent() - Take "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ms to get "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " entries"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    const/16 v3, 0x2710

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    const/4 v6, 0x1

    aput-object v13, v4, v6

    const/4 v6, 0x2

    aput-object v11, v4, v6

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v3, v1, v12, v4}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 1381
    return-void

    .line 1362
    .restart local v5    # "condition":Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_5
    if-eqz v8, :cond_6

    if-eqz v4, :cond_8

    :try_start_8
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1373
    .end local v5    # "condition":Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_6
    :goto_5
    if-eqz v2, :cond_4

    .line 1374
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_4

    .line 1362
    .restart local v5    # "condition":Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catch_2
    move-exception v17

    .local v17, "x2":Ljava/lang/Throwable;
    :try_start_9
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_5

    .line 1373
    .end local v5    # "condition":Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v17    # "x2":Ljava/lang/Throwable;
    :catchall_1
    move-exception v3

    if-eqz v2, :cond_7

    .line 1374
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    :cond_7
    throw v3

    .line 1362
    .restart local v5    # "condition":Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_8
    :try_start_a
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catch_3
    move-exception v17

    .restart local v17    # "x2":Ljava/lang/Throwable;
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v17    # "x2":Ljava/lang/Throwable;
    :cond_9
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 1365
    .end local v5    # "condition":Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string v4, "queryAllMediaStoreContent() - Fail to acquire content provider client"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_5

    .line 1362
    .restart local v5    # "condition":Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catchall_2
    move-exception v3

    goto/16 :goto_2
.end method

.method private queryMediaStoreContent(J)V
    .locals 13
    .param p1, "id"    # J

    .prologue
    const/4 v11, 0x0

    .line 1387
    const/4 v9, 0x0

    .line 1388
    .local v9, "values":Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;
    const/4 v8, 0x0

    .line 1389
    .local v8, "fileInfo":Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;
    const/4 v0, 0x0

    .line 1392
    .local v0, "client":Landroid/content/ContentProviderClient;
    :try_start_0
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_FILE:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 1393
    if-eqz v0, :cond_8

    .line 1395
    sget-object v1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_FILE:Landroid/net/Uri;

    sget-object v2, Lcom/oneplus/gallery2/media/MediaStoreMedia;->MEDIA_STORE_COLUMNS:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 1397
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1400
    invoke-static {v6}, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->read(Landroid/database/Cursor;)Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;

    move-result-object v9

    .line 1403
    iget-wide v2, v9, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->id:J

    invoke-static {v2, v3}, Lcom/oneplus/gallery2/media/GalleryDatabase;->getExtraMediaInfo(J)Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    move-result-object v2

    iput-object v2, v9, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->extraInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    .line 1406
    if-eqz v9, :cond_0

    iget-object v2, v9, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->data:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1407
    iget-object v2, v9, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->data:Ljava/lang/String;

    invoke-static {v2}, Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;->read(Ljava/lang/String;)Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;

    move-result-object v8

    .line 1410
    :cond_0
    invoke-direct {p0, v9, v8}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->checkTakenTime(Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1423
    :cond_1
    if-eqz v6, :cond_2

    if-eqz v11, :cond_4

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1434
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 1435
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 1437
    :cond_3
    :goto_1
    const/16 v1, 0x2712

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v9, v2, v3

    const/4 v3, 0x2

    aput-object v8, v2, v3

    invoke-static {p0, v1, v2}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;ILjava/lang/Object;)Z

    .line 1438
    return-void

    .line 1423
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v10

    .local v10, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v1, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1428
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v10    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v7

    .line 1430
    .local v7, "ex":Ljava/lang/Throwable;
    :try_start_4
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryMediaStoreContent() - Fail to query from media store, media ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1434
    if-eqz v0, :cond_3

    .line 1435
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_1

    .line 1423
    .end local v7    # "ex":Ljava/lang/Throwable;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_4
    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 1434
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_5

    .line 1435
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_5
    throw v1

    .line 1395
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catch_2
    move-exception v1

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1423
    :catchall_1
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    :goto_2
    if-eqz v6, :cond_6

    if-eqz v2, :cond_7

    :try_start_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_6
    :goto_3
    :try_start_8
    throw v1

    :catch_3
    move-exception v10

    .restart local v10    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v2, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v10    # "x2":Ljava/lang/Throwable;
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 1426
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_8
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string v2, "queryMediaStoreContent() - Fail to acquire content provider client"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 1423
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catchall_2
    move-exception v1

    move-object v2, v11

    goto :goto_2
.end method

.method private removeFromGroupedMedia(Lcom/oneplus/gallery2/media/MediaStoreMedia;)Z
    .locals 1
    .param p1, "media"    # Lcom/oneplus/gallery2/media/MediaStoreMedia;

    .prologue
    .line 1490
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isSubMedia()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1491
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->removeFromGroupedMedia(Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaStoreMedia;)Z

    move-result v0

    .line 1492
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeFromGroupedMedia(Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaStoreMedia;)Z
    .locals 5
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "media"    # Lcom/oneplus/gallery2/media/MediaStoreMedia;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1496
    invoke-virtual {p0, p1, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia(Ljava/lang/String;I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    .line 1497
    .local v0, "groupedMedia":Lcom/oneplus/gallery2/media/BaseGroupedMedia;
    if-eqz v0, :cond_1

    .line 1499
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->getSubMediaCount()I

    move-result v1

    if-ne v1, v4, :cond_0

    invoke-virtual {v0, p2}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->contains(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1501
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeFromGroupedMedia() - Remove "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1502
    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->prepareMediaFlagsForCallback(Lcom/oneplus/gallery2/media/Media;)I

    move-result v1

    invoke-virtual {p0, v0, v4, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->removeMedia(Lcom/oneplus/gallery2/media/Media;ZI)Z

    .line 1504
    :cond_0
    invoke-virtual {v0, p2}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->removeSubMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v1

    .line 1506
    :cond_1
    return v1
.end method

.method private restoreMedia(Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;)V
    .locals 4
    .param p1, "handle"    # Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;

    .prologue
    .line 1514
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->verifyAccess()V

    .line 1515
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->isRunningOrInitializing(Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1530
    :goto_0
    return-void

    .line 1519
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;->getMedia()Lcom/oneplus/gallery2/media/Media;

    move-result-object v1

    .line 1520
    .local v1, "media":Lcom/oneplus/gallery2/media/Media;
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_RecycledMedia:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1522
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string v3, "restoreMedia() - Media is not contained in recycle bin"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1527
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;->getFlags()I

    move-result v2

    sget v3, Lcom/oneplus/gallery2/media/Media;->FLAG_MOVE_TO_RECYCE_BIN:I

    xor-int/lit8 v3, v3, -0x1

    and-int v0, v2, v3

    .line 1528
    .local v0, "flags":I
    sget v2, Lcom/oneplus/gallery2/media/Media;->FLAG_RESTORE_FROM_RECYCLE_BIN:I

    or-int/2addr v0, v2

    .line 1529
    invoke-virtual {p0, v1, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->notifyMediaCreated(Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_0
.end method

.method private syncMediaWithMediaStore()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1536
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->isRunningOrInitializing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1566
    :goto_0
    return-void

    .line 1538
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PermissionsReady:Z

    if-nez v1, :cond_1

    .line 1540
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string v2, "syncMediaWithMediaStore() - Start full media sync when permissions ready"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_NeedToSyncMediaWhenPermsReady:Z

    goto :goto_0

    .line 1544
    :cond_1
    sget-object v1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->PROP_IS_ACTIVE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1546
    iget v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaSyncCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaSyncCount:I

    .line 1547
    iget v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaSyncCount:I

    const/16 v2, 0x10

    if-gt v1, v2, :cond_2

    .line 1549
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncMediaWithMediaStore() - Start full media sync when activated, pending sync count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaSyncCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1552
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string v2, "syncMediaWithMediaStore() - Too many pending full media sync"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    iput v5, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaSyncCount:I

    .line 1555
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia()Ljava/util/Collection;

    move-result-object v0

    .line 1556
    .local v0, "allMedia":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/oneplus/gallery2/media/Media;>;"
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string v2, "syncMediaWithMediaStore() - Media table size : "

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1557
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CandidateMediaToRemove:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 1558
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CandidateMediaToRemove:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1559
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_MediaStoreSyncToken:Ljava/lang/Object;

    .line 1560
    iget-boolean v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_HasPendingMediaSyncWithMediaStore:Z

    if-eqz v1, :cond_4

    .line 1562
    iput-boolean v5, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_HasPendingMediaSyncWithMediaStore:Z

    .line 1563
    const/16 v1, 0x2711

    invoke-static {p0, v1}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 1565
    :cond_4
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$QueryAllMediaStoreContentRunnable;

    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_MediaStoreSyncToken:Ljava/lang/Object;

    iget v4, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_Mode:I

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$QueryAllMediaStoreContentRunnable;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Ljava/lang/Object;II)V

    invoke-static {v1, v2}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method private syncMediaWithMediaStore(JLcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)V
    .locals 11
    .param p1, "mediaId"    # J
    .param p3, "values"    # Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;
    .param p4, "fileInfo"    # Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1590
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->isRunningOrInitializing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1647
    :goto_0
    return-void

    .line 1594
    :cond_0
    invoke-static {p1, p2}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getId(J)Ljava/lang/String;

    move-result-object v1

    .line 1595
    .local v1, "id":Ljava/lang/String;
    invoke-virtual {p0, v1, v8}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia(Ljava/lang/String;I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    .line 1596
    .local v2, "media":Lcom/oneplus/gallery2/media/MediaStoreMedia;
    if-nez p3, :cond_2

    .line 1598
    if-eqz v2, :cond_1

    .line 1600
    iget-object v5, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "syncMediaWithMediaStore() - Remove "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1601
    invoke-direct {p0, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->removeFromGroupedMedia(Lcom/oneplus/gallery2/media/MediaStoreMedia;)Z

    .line 1602
    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->prepareMediaFlagsForCallback(Lcom/oneplus/gallery2/media/Media;)I

    move-result v5

    invoke-virtual {p0, v2, v9, v5}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->removeMedia(Lcom/oneplus/gallery2/media/Media;ZI)Z

    .line 1604
    :cond_1
    const/4 v5, 0x0

    invoke-direct {p0, p1, p2, v5}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->callOnMediaObtained(JLcom/oneplus/gallery2/media/Media;)V

    goto :goto_0

    .line 1609
    :cond_2
    if-nez v2, :cond_4

    .line 1611
    invoke-static {p0, p3, p4}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->create(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)Lcom/oneplus/gallery2/media/MediaStoreMedia;

    move-result-object v2

    .line 1612
    if-eqz v2, :cond_3

    .line 1614
    iget-object v5, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "syncMediaWithMediaStore() - Add "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1615
    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->prepareMediaFlagsForCallback(Lcom/oneplus/gallery2/media/Media;)I

    move-result v5

    invoke-virtual {p0, v2, v9, v5}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->addMedia(Lcom/oneplus/gallery2/media/Media;ZI)Z

    .line 1616
    invoke-direct {p0, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->addToGroupedMedia(Lcom/oneplus/gallery2/media/MediaStoreMedia;)Z

    .line 1618
    :cond_3
    invoke-direct {p0, p1, p2, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->callOnMediaObtained(JLcom/oneplus/gallery2/media/Media;)V

    goto :goto_0

    .line 1623
    :cond_4
    invoke-virtual {v2}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getGroupId()Ljava/lang/String;

    move-result-object v3

    .line 1624
    .local v3, "oldGroupId":Ljava/lang/String;
    invoke-virtual {v2, p3, p4}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->update(Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)I

    move-result v4

    .line 1625
    .local v4, "updateFlags":I
    if-eqz v4, :cond_6

    .line 1627
    iget-object v5, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "syncMediaWithMediaStore() - Update "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1628
    sget v5, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_GROUP_CHANGED:I

    and-int/2addr v5, v4

    if-nez v5, :cond_7

    .line 1630
    invoke-virtual {v2}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isSubMedia()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1632
    invoke-virtual {v2}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getGroupId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v8}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia(Ljava/lang/String;I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    .line 1633
    .local v0, "groupedMedia":Lcom/oneplus/gallery2/media/BaseGroupedMedia;
    if-eqz v0, :cond_5

    .line 1634
    invoke-virtual {v0, v2, v4}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->notifySubMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V

    .line 1642
    .end local v0    # "groupedMedia":Lcom/oneplus/gallery2/media/BaseGroupedMedia;
    :cond_5
    :goto_1
    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->prepareMediaFlagsForCallback(Lcom/oneplus/gallery2/media/Media;)I

    move-result v5

    or-int/2addr v5, v4

    invoke-virtual {p0, v2, v5}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->notifyMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V

    .line 1646
    :cond_6
    invoke-direct {p0, p1, p2, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->callOnMediaObtained(JLcom/oneplus/gallery2/media/Media;)V

    goto/16 :goto_0

    .line 1639
    :cond_7
    invoke-direct {p0, v3, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->removeFromGroupedMedia(Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaStoreMedia;)Z

    .line 1640
    invoke-direct {p0, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->addToGroupedMedia(Lcom/oneplus/gallery2/media/MediaStoreMedia;)Z

    goto :goto_1
.end method

.method private syncMediaWithMediaStore(Landroid/net/Uri;)V
    .locals 5
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 1572
    :try_start_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1578
    .local v2, "id":J
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v1

    new-instance v4, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$13;

    invoke-direct {v4, p0, v2, v3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$13;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;J)V

    invoke-static {v1, v4}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 1586
    .end local v2    # "id":J
    :goto_0
    return-void

    .line 1574
    :catch_0
    move-exception v0

    .line 1576
    .local v0, "ex":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method private syncMediaWithMediaStore(Ljava/lang/Object;IILjava/util/List;Ljava/util/List;)V
    .locals 27
    .param p1, "token"    # Ljava/lang/Object;
    .param p2, "contentStartOffset"    # I
    .param p3, "skipCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1651
    .local p4, "valueList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;>;"
    .local p5, "fileInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->isRunningOrInitializing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1880
    :cond_0
    :goto_0
    return-void

    .line 1653
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_MediaStoreSyncToken:Ljava/lang/Object;

    move-object/from16 v0, p1

    if-eq v2, v0, :cond_2

    .line 1655
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string v3, "syncMediaWithMediaStore() - Different token, ignore"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1659
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string v3, "syncMediaWithMediaStore() - Offset : "

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1662
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 1663
    .local v20, "time":J
    const/4 v8, 0x0

    .line 1664
    .local v8, "addedMedia":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/Media;>;"
    const/16 v24, 0x0

    .line 1665
    .local v24, "updatedMedia":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/Media;>;"
    const/16 v25, 0x0

    .line 1666
    .local v25, "updatedMediaFlags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 1667
    .local v17, "newGroupedMedia":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/oneplus/gallery2/media/BaseGroupedMedia;>;"
    new-instance v23, Ljava/util/HashSet;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashSet;-><init>()V

    .line 1668
    .local v23, "updatedGroupedMedia":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/BaseGroupedMedia;>;"
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v12, v2, -0x1

    .local v12, "i":I
    :goto_1
    if-ltz v12, :cond_16

    .line 1671
    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;

    .line 1672
    .local v26, "values":Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;
    move-object/from16 v0, p5

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;

    .line 1673
    .local v9, "fileInfo":Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;
    move-object/from16 v0, v26

    iget-wide v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->id:J

    invoke-static {v2, v3}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getId(J)Ljava/lang/String;

    move-result-object v14

    .line 1674
    .local v14, "id":Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia(Ljava/lang/String;I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v16

    check-cast v16, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    .line 1675
    .local v16, "media":Lcom/oneplus/gallery2/media/MediaStoreMedia;
    const/4 v11, 0x0

    .line 1678
    .local v11, "groupedMedia":Lcom/oneplus/gallery2/media/BaseGroupedMedia;
    if-nez v16, :cond_9

    .line 1680
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-static {v0, v1, v9}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->create(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)Lcom/oneplus/gallery2/media/MediaStoreMedia;

    move-result-object v16

    .line 1681
    if-eqz v16, :cond_3

    .line 1684
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->addMedia(Lcom/oneplus/gallery2/media/Media;ZI)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1668
    :cond_3
    :goto_2
    add-int/lit8 v12, v12, -0x1

    goto :goto_1

    .line 1686
    :cond_4
    if-nez v8, :cond_5

    .line 1687
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "addedMedia":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/Media;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1688
    .restart local v8    # "addedMedia":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/Media;>;"
    :cond_5
    move-object/from16 v0, v16

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1692
    invoke-virtual/range {v16 .. v16}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isSubMedia()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1694
    invoke-virtual/range {v16 .. v16}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getGroupId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia(Ljava/lang/String;I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v11

    .end local v11    # "groupedMedia":Lcom/oneplus/gallery2/media/BaseGroupedMedia;
    check-cast v11, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    .line 1695
    .restart local v11    # "groupedMedia":Lcom/oneplus/gallery2/media/BaseGroupedMedia;
    if-nez v11, :cond_6

    .line 1696
    invoke-virtual/range {v16 .. v16}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getGroupId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "groupedMedia":Lcom/oneplus/gallery2/media/BaseGroupedMedia;
    check-cast v11, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    .line 1697
    .restart local v11    # "groupedMedia":Lcom/oneplus/gallery2/media/BaseGroupedMedia;
    :cond_6
    if-nez v11, :cond_8

    .line 1699
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->createGroupedMedia(Lcom/oneplus/gallery2/media/MediaStoreMedia;)Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    move-result-object v11

    .line 1700
    if-eqz v11, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v2, v3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->addMedia(Lcom/oneplus/gallery2/media/Media;ZI)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1702
    invoke-virtual {v11}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->getId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1703
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1708
    :goto_3
    move-object/from16 v0, v23

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1709
    invoke-virtual {v11}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->startSubMediaUpdate()V

    .line 1710
    :cond_7
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->addSubMedia(Lcom/oneplus/gallery2/media/Media;)Z

    goto :goto_2

    .line 1707
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CandidateMediaToRemove:Ljava/util/Set;

    invoke-interface {v2, v11}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1717
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CandidateMediaToRemove:Ljava/util/Set;

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1718
    invoke-virtual/range {v16 .. v16}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getGroupId()Ljava/lang/String;

    move-result-object v18

    .line 1719
    .local v18, "oldGroupId":Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v9}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->update(Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)I

    move-result v22

    .line 1720
    .local v22, "updateFlags":I
    if-eqz v22, :cond_15

    .line 1723
    if-nez v24, :cond_a

    .line 1725
    new-instance v24, Ljava/util/ArrayList;

    .end local v24    # "updatedMedia":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/Media;>;"
    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 1726
    .restart local v24    # "updatedMedia":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/Media;>;"
    new-instance v25, Ljava/util/ArrayList;

    .end local v25    # "updatedMediaFlags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 1728
    .restart local v25    # "updatedMediaFlags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_a
    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1729
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1730
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncMediaWithMediaStore() - Update "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1733
    sget v2, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_GROUP_CHANGED:I

    and-int v2, v2, v22

    if-nez v2, :cond_d

    .line 1735
    invoke-virtual/range {v16 .. v16}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isSubMedia()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1737
    invoke-virtual/range {v16 .. v16}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getGroupId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia(Ljava/lang/String;I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v11

    .end local v11    # "groupedMedia":Lcom/oneplus/gallery2/media/BaseGroupedMedia;
    check-cast v11, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    .line 1738
    .restart local v11    # "groupedMedia":Lcom/oneplus/gallery2/media/BaseGroupedMedia;
    if-eqz v11, :cond_c

    .line 1740
    move-object/from16 v0, v23

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1741
    invoke-virtual {v11}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->startSubMediaUpdate()V

    .line 1742
    :cond_b
    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->notifySubMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V

    .line 1790
    :cond_c
    :goto_4
    if-eqz v11, :cond_3

    .line 1791
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CandidateMediaToRemove:Ljava/util/Set;

    invoke-interface {v2, v11}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1749
    :cond_d
    if-eqz v18, :cond_f

    .line 1751
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia(Ljava/lang/String;I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v11

    .end local v11    # "groupedMedia":Lcom/oneplus/gallery2/media/BaseGroupedMedia;
    check-cast v11, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    .line 1752
    .restart local v11    # "groupedMedia":Lcom/oneplus/gallery2/media/BaseGroupedMedia;
    if-eqz v11, :cond_f

    .line 1754
    move-object/from16 v0, v23

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1755
    invoke-virtual {v11}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->startSubMediaUpdate()V

    .line 1756
    :cond_e
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->removeSubMedia(Lcom/oneplus/gallery2/media/Media;)Z

    .line 1761
    :cond_f
    invoke-virtual/range {v16 .. v16}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isSubMedia()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1763
    invoke-virtual/range {v16 .. v16}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getGroupId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia(Ljava/lang/String;I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v11

    .end local v11    # "groupedMedia":Lcom/oneplus/gallery2/media/BaseGroupedMedia;
    check-cast v11, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    .line 1764
    .restart local v11    # "groupedMedia":Lcom/oneplus/gallery2/media/BaseGroupedMedia;
    if-nez v11, :cond_10

    .line 1765
    invoke-virtual/range {v16 .. v16}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getGroupId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "groupedMedia":Lcom/oneplus/gallery2/media/BaseGroupedMedia;
    check-cast v11, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    .line 1766
    .restart local v11    # "groupedMedia":Lcom/oneplus/gallery2/media/BaseGroupedMedia;
    :cond_10
    if-nez v11, :cond_13

    .line 1768
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->createGroupedMedia(Lcom/oneplus/gallery2/media/MediaStoreMedia;)Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    move-result-object v11

    .line 1769
    if-eqz v11, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v2, v3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->addMedia(Lcom/oneplus/gallery2/media/Media;ZI)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1771
    invoke-virtual {v11}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->getId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1772
    if-nez v8, :cond_11

    .line 1773
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "addedMedia":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/Media;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1774
    .restart local v8    # "addedMedia":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/Media;>;"
    :cond_11
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1778
    :goto_5
    move-object/from16 v0, v23

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1779
    invoke-virtual {v11}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->startSubMediaUpdate()V

    .line 1780
    :cond_12
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->addSubMedia(Lcom/oneplus/gallery2/media/Media;)Z

    goto/16 :goto_4

    .line 1777
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CandidateMediaToRemove:Ljava/util/Set;

    invoke-interface {v2, v11}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1783
    :cond_14
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 1786
    :cond_15
    invoke-virtual/range {v16 .. v16}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isSubMedia()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1787
    invoke-virtual/range {v16 .. v16}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getGroupId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia(Ljava/lang/String;I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v11

    .end local v11    # "groupedMedia":Lcom/oneplus/gallery2/media/BaseGroupedMedia;
    check-cast v11, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    .restart local v11    # "groupedMedia":Lcom/oneplus/gallery2/media/BaseGroupedMedia;
    goto/16 :goto_4

    .line 1795
    .end local v9    # "fileInfo":Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;
    .end local v11    # "groupedMedia":Lcom/oneplus/gallery2/media/BaseGroupedMedia;
    .end local v14    # "id":Ljava/lang/String;
    .end local v16    # "media":Lcom/oneplus/gallery2/media/MediaStoreMedia;
    .end local v18    # "oldGroupId":Ljava/lang/String;
    .end local v22    # "updateFlags":I
    .end local v26    # "values":Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;
    :cond_16
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_17

    if-lez p3, :cond_1a

    .line 1796
    :cond_17
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v2

    new-instance v3, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$QueryAllMediaStoreContentRunnable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_MediaStoreSyncToken:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_Mode:I

    add-int v6, p2, p3

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$QueryAllMediaStoreContentRunnable;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Ljava/lang/Object;II)V

    invoke-static {v2, v3}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 1833
    :cond_18
    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 1835
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncMediaWithMediaStore() - Complete updating "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " grouped media"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1836
    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_19
    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    .line 1839
    .restart local v11    # "groupedMedia":Lcom/oneplus/gallery2/media/BaseGroupedMedia;
    invoke-virtual {v11}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->completeSubMediaUpdate()V

    .line 1842
    invoke-virtual {v11}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->getSubMediaCount()I

    move-result v2

    if-nez v2, :cond_19

    .line 1843
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->prepareMediaFlagsForCallback(Lcom/oneplus/gallery2/media/Media;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v2, v3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->removeMedia(Lcom/oneplus/gallery2/media/Media;ZI)Z

    goto :goto_6

    .line 1799
    .end local v11    # "groupedMedia":Lcom/oneplus/gallery2/media/BaseGroupedMedia;
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string v3, "syncMediaWithMediaStore() - This is last chunk"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CandidateMediaToRemove:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_18

    .line 1802
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string v3, "syncMediaWithMediaStore() - Remove "

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CandidateMediaToRemove:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, " media"

    invoke-static {v2, v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1803
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CandidateMediaToRemove:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CandidateMediaToRemove:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Lcom/oneplus/gallery2/media/Media;

    .line 1804
    .local v19, "removingMedia":[Lcom/oneplus/gallery2/media/Media;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CandidateMediaToRemove:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 1805
    move-object/from16 v0, v19

    array-length v2, v0

    add-int/lit8 v12, v2, -0x1

    :goto_7
    if-ltz v12, :cond_18

    .line 1808
    aget-object v16, v19, v12

    .line 1809
    .local v16, "media":Lcom/oneplus/gallery2/media/Media;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncMediaWithMediaStore() - Remove "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1810
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->prepareMediaFlagsForCallback(Lcom/oneplus/gallery2/media/Media;)I

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->removeMedia(Lcom/oneplus/gallery2/media/Media;ZI)Z

    .line 1813
    move-object/from16 v0, v16

    instance-of v15, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    .line 1814
    .local v15, "isMediaStoreMedia":Z
    if-eqz v15, :cond_1c

    move-object/from16 v2, v16

    check-cast v2, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    invoke-virtual {v2}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isSubMedia()Z

    move-result v2

    if-eqz v2, :cond_1c

    move-object/from16 v2, v16

    .line 1816
    check-cast v2, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    invoke-virtual {v2}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getGroupId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia(Ljava/lang/String;I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v11

    check-cast v11, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    .line 1817
    .restart local v11    # "groupedMedia":Lcom/oneplus/gallery2/media/BaseGroupedMedia;
    if-eqz v11, :cond_1c

    .line 1819
    move-object/from16 v0, v23

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1820
    invoke-virtual {v11}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->startSubMediaUpdate()V

    .line 1821
    :cond_1b
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->removeSubMedia(Lcom/oneplus/gallery2/media/Media;)Z

    .line 1826
    .end local v11    # "groupedMedia":Lcom/oneplus/gallery2/media/BaseGroupedMedia;
    :cond_1c
    if-eqz v15, :cond_1d

    .line 1827
    check-cast v16, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    .end local v16    # "media":Lcom/oneplus/gallery2/media/Media;
    invoke-virtual/range {v16 .. v16}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->release()V

    .line 1805
    :cond_1d
    add-int/lit8 v12, v12, -0x1

    goto :goto_7

    .line 1848
    .end local v15    # "isMediaStoreMedia":Z
    .end local v19    # "removingMedia":[Lcom/oneplus/gallery2/media/Media;
    :cond_1e
    if-eqz v8, :cond_1f

    .line 1850
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string v3, "syncMediaWithMediaStore() - Add "

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, " media"

    invoke-static {v2, v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1851
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v12, v2, -0x1

    :goto_8
    if-ltz v12, :cond_1f

    .line 1853
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/oneplus/gallery2/media/Media;

    .line 1854
    .restart local v16    # "media":Lcom/oneplus/gallery2/media/Media;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->prepareMediaFlagsForCallback(Lcom/oneplus/gallery2/media/Media;)I

    move-result v2

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->notifyMediaCreated(Lcom/oneplus/gallery2/media/Media;I)V

    .line 1851
    add-int/lit8 v12, v12, -0x1

    goto :goto_8

    .line 1857
    .end local v16    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_1f
    if-eqz v24, :cond_20

    .line 1859
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string v3, "syncMediaWithMediaStore() - Update "

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, " media"

    invoke-static {v2, v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1860
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v12, v2, -0x1

    :goto_9
    if-ltz v12, :cond_20

    .line 1862
    move-object/from16 v0, v24

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/oneplus/gallery2/media/Media;

    .line 1863
    .restart local v16    # "media":Lcom/oneplus/gallery2/media/Media;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->prepareMediaFlagsForCallback(Lcom/oneplus/gallery2/media/Media;)I

    move-result v3

    move-object/from16 v0, v25

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    or-int v10, v3, v2

    .line 1864
    .local v10, "flags":I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v10}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->notifyMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V

    .line 1860
    add-int/lit8 v12, v12, -0x1

    goto :goto_9

    .line 1867
    .end local v10    # "flags":I
    .end local v16    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string v3, "syncMediaWithMediaStore() - Media table size : "

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1870
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_21

    .line 1872
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v20, v2, v20

    .line 1873
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string v3, "syncMediaWithMediaStore() - Take "

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, " ms to handle "

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, " entries"

    invoke-static/range {v2 .. v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1875
    :cond_21
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_IsMediaTableReady:Z

    if-nez v2, :cond_0

    .line 1877
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_IsMediaTableReady:Z

    .line 1878
    sget-object v2, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->PROP_IS_MEDIA_TABLE_READY:Lcom/oneplus/base/PropertyKey;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private syncMediaWithMediaStoreDelayed(Z)V
    .locals 4
    .param p1, "forceSync"    # Z

    .prologue
    .line 1886
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_HasPendingMediaSyncWithMediaStore:Z

    if-nez v0, :cond_1

    .line 1888
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->PROP_IS_ACTIVE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_2

    .line 1890
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string v1, "onMediaStoreContentChanged() - Schedule full media sync"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1891
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_HasPendingMediaSyncWithMediaStore:Z

    .line 1892
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaSyncCount:I

    .line 1893
    const/16 v0, 0x2711

    const-wide/16 v2, 0x3e8

    invoke-static {p0, v0, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IJ)Z

    .line 1907
    :cond_1
    :goto_0
    return-void

    .line 1897
    :cond_2
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaSyncCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaSyncCount:I

    .line 1898
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaSyncCount:I

    const/16 v1, 0x10

    if-gt v0, v1, :cond_3

    .line 1899
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string v1, "syncMediaWithMediaStoreDelayed() - Start full media sync when activated, pending sync count : "

    iget v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaSyncCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1902
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string v1, "syncMediaWithMediaStoreDelayed() - Too many pending full media sync"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1903
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->syncMediaWithMediaStore()V

    goto :goto_0
.end method

.method private updateMode()V
    .locals 7

    .prologue
    .line 1986
    iget v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_Mode:I

    .line 1987
    .local v1, "prevMode":I
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getActivationHandleCount()I

    move-result v0

    .line 1988
    .local v0, "handleCount":I
    if-nez v0, :cond_1

    .line 2003
    :cond_0
    :goto_0
    return-void

    .line 1990
    :cond_1
    iget v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CameraRollOnlyFlagCount:I

    if-lt v2, v0, :cond_2

    const/4 v2, 0x1

    :goto_1
    iput v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_Mode:I

    .line 1991
    iget v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_Mode:I

    if-eq v1, v2, :cond_0

    .line 1993
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string v3, "updateMode() - Change mode from "

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, " to "

    iget v6, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_Mode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1994
    iget v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_Mode:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1998
    :pswitch_0
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->syncMediaWithMediaStore()V

    goto :goto_0

    .line 1990
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 1994
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public deleteFromMediaStore(Ljava/lang/CharSequence;[Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;)Lcom/oneplus/base/Handle;
    .locals 4
    .param p1, "selection"    # Ljava/lang/CharSequence;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .param p3, "callback"    # Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;

    .prologue
    const/4 v1, 0x0

    .line 318
    if-nez p1, :cond_1

    .line 320
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string v3, "deleteFromMediaStore() - No selection"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 365
    :cond_0
    :goto_0
    return-object v0

    .line 325
    :cond_1
    new-instance v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$3;

    const-string v2, "DeleteFromMediaStore"

    invoke-direct {v0, p0, v2, p3, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$3;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;Landroid/os/Handler;)V

    .line 331
    .local v0, "handle":Lcom/oneplus/base/CallbackHandle;, "Lcom/oneplus/base/CallbackHandle<Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;>;"
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v2

    new-instance v3, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$4;

    invoke-direct {v3, p0, v0, p1, p2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$4;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/base/CallbackHandle;Ljava/lang/CharSequence;[Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 362
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string v3, "deleteFromMediaStore() - Fail to post to media content thread"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 363
    goto :goto_0
.end method

.method final deleteMedia(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;
    .locals 5
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "callback"    # Lcom/oneplus/gallery2/media/Media$DeletionCallback;
    .param p3, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 379
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->verifyAccess()V

    .line 380
    invoke-virtual {p0, v4}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->isRunningOrInitializing(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 426
    :cond_0
    :goto_0
    return-object v0

    .line 384
    :cond_1
    if-nez p1, :cond_2

    .line 386
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string v2, "deleteMedia() - No media to delete"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 389
    :cond_2
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->containsMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 391
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteMedia() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not contained in media table"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 396
    :cond_3
    sget v1, Lcom/oneplus/gallery2/media/Media;->FLAG_MOVE_TO_RECYCE_BIN:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr p3, v1

    .line 397
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->prepareMediaFlagsForCallback(Lcom/oneplus/gallery2/media/Media;)I

    move-result v1

    or-int/2addr p3, v1

    .line 398
    new-instance v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)V

    .line 399
    .local v0, "handle":Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;
    if-eqz p2, :cond_4

    .line 400
    invoke-virtual {p2, p1, p3}, Lcom/oneplus/gallery2/media/Media$DeletionCallback;->onDeletionStarted(Lcom/oneplus/gallery2/media/Media;I)V

    .line 403
    :cond_4
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_RecycledMedia:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 404
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteMedia() - Remove "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from recycle bin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :cond_5
    instance-of v1, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    if-eqz v1, :cond_6

    .line 409
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$5;

    invoke-direct {v2, p0, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$5;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;)V

    invoke-static {v1, v2}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 418
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string v2, "deleteMedia() - Fail to post to media content thread"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->onMediaDeleted(Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;Z)V

    goto/16 :goto_0

    .line 423
    :cond_6
    invoke-direct {p0, v0, v4}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->onMediaDeleted(Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;Z)V

    goto/16 :goto_0
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
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->PROP_IS_MEDIA_TABLE_READY:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 526
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_IsMediaTableReady:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 527
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSource;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getGroupedMedia(Lcom/oneplus/gallery2/media/Media;I)[Lcom/oneplus/gallery2/media/GroupedMedia;
    .locals 5
    .param p1, "subMedia"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 535
    instance-of v3, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 537
    check-cast v2, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    .line 538
    .local v2, "media":Lcom/oneplus/gallery2/media/MediaStoreMedia;
    invoke-virtual {v2}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isSubMedia()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 540
    invoke-virtual {v2}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getGroupId()Ljava/lang/String;

    move-result-object v0

    .line 541
    .local v0, "groupId":Ljava/lang/String;
    invoke-virtual {p0, v0, v4}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia(Ljava/lang/String;I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/GroupedMedia;

    .line 542
    .local v1, "groupedMedia":Lcom/oneplus/gallery2/media/GroupedMedia;
    if-eqz v1, :cond_0

    .line 543
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/oneplus/gallery2/media/GroupedMedia;

    aput-object v1, v3, v4

    .line 546
    .end local v0    # "groupId":Ljava/lang/String;
    .end local v1    # "groupedMedia":Lcom/oneplus/gallery2/media/GroupedMedia;
    .end local v2    # "media":Lcom/oneplus/gallery2/media/MediaStoreMedia;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getMedia(Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;I)Lcom/oneplus/base/Handle;
    .locals 17
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;
    .param p3, "flags"    # I

    .prologue
    .line 566
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->verifyAccess()V

    .line 567
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->isRunningOrInitializing(Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 568
    const/4 v7, 0x0

    .line 620
    :goto_0
    return-object v7

    .line 569
    :cond_0
    if-nez p1, :cond_1

    .line 571
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string v3, "getMedia() - No media ID"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    const/4 v7, 0x0

    goto :goto_0

    .line 576
    :cond_1
    sget v2, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->FLAG_ALWAYS_REFRESH:I

    and-int v2, v2, p3

    if-nez v2, :cond_3

    .line 578
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia(Ljava/lang/String;I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v6

    .line 579
    .local v6, "media":Lcom/oneplus/gallery2/media/Media;
    if-eqz v6, :cond_3

    .line 581
    if-eqz p2, :cond_2

    .line 582
    invoke-interface {v6}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->prepareMediaFlagsForCallback(Lcom/oneplus/gallery2/media/Media;)I

    move-result v7

    move-object/from16 v2, p2

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    invoke-interface/range {v2 .. v7}, Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;->onMediaObtained(Lcom/oneplus/gallery2/media/MediaSource;Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/Media;I)V

    .line 583
    :cond_2
    new-instance v7, Lcom/oneplus/base/EmptyHandle;

    const-string v2, "GetMedia"

    invoke-direct {v7, v2}, Lcom/oneplus/base/EmptyHandle;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 588
    .end local v6    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_3
    new-instance v16, Lcom/oneplus/base/SimpleRef;

    invoke-direct/range {v16 .. v16}, Lcom/oneplus/base/SimpleRef;-><init>()V

    .line 589
    .local v16, "mediaIdRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isValidId(Ljava/lang/String;Lcom/oneplus/base/Ref;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMedia() - Invalid ID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const/4 v7, 0x0

    goto :goto_0

    .line 594
    :cond_4
    invoke-interface/range {v16 .. v16}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 595
    .local v12, "mediaId":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_STRING_FILE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 598
    .local v14, "contentUri":Landroid/net/Uri;
    new-instance v7, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$6;

    const-string v9, "GetMedia"

    const/4 v11, 0x0

    move-object/from16 v8, p0

    move-object/from16 v10, p2

    invoke-direct/range {v7 .. v13}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$6;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;Landroid/os/Handler;J)V

    .line 608
    .local v7, "handle":Lcom/oneplus/base/CallbackHandle;, "Lcom/oneplus/base/CallbackHandle<Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_MediaObtainCallbackHandles:Ljava/util/Map;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    .line 609
    .local v15, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/CallbackHandle<Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;>;>;"
    if-nez v15, :cond_5

    .line 611
    new-instance v15, Ljava/util/ArrayList;

    .end local v15    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/CallbackHandle<Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;>;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 612
    .restart local v15    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/CallbackHandle<Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;>;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_MediaObtainCallbackHandles:Ljava/util/Map;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    :cond_5
    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->syncMediaWithMediaStore(Landroid/net/Uri;)V

    goto/16 :goto_0
.end method

.method public getMedia(J)Lcom/oneplus/gallery2/media/MediaStoreMedia;
    .locals 3
    .param p1, "mediaId"    # J

    .prologue
    .line 557
    invoke-static {p1, p2}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getId(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia(Ljava/lang/String;I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    return-object v0
.end method

.method public getMediaContentUri(Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;)Lcom/oneplus/base/Handle;
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;

    .prologue
    const/4 v1, 0x0

    .line 633
    if-nez p1, :cond_1

    .line 635
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string v3, "getMediaContentUri() - No file path"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 690
    :cond_0
    :goto_0
    return-object v0

    .line 638
    :cond_1
    if-nez p2, :cond_2

    .line 640
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string v3, "getMediaContentUri() - No call-back to receive result"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 641
    goto :goto_0

    .line 645
    :cond_2
    new-instance v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$7;

    const-string v2, "GetMediaContentURI"

    invoke-direct {v0, p0, v2, p2, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$7;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;Landroid/os/Handler;)V

    .line 651
    .local v0, "handle":Lcom/oneplus/base/CallbackHandle;, "Lcom/oneplus/base/CallbackHandle<Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;>;"
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v2

    new-instance v3, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$8;

    invoke-direct {v3, p0, v0, p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$8;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/base/CallbackHandle;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 687
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string v3, "getMediaContentUri() - Fail to post to media content thread"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 688
    goto :goto_0
.end method

.method public getMediaId(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 698
    new-instance v0, Lcom/oneplus/base/SimpleRef;

    invoke-direct {v0}, Lcom/oneplus/base/SimpleRef;-><init>()V

    .line 699
    .local v0, "mediaIdRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    invoke-static {p1, v0}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->parsePhotoContentUri(Landroid/net/Uri;Lcom/oneplus/base/Ref;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1, v0}, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->parseVideoContentUri(Landroid/net/Uri;Lcom/oneplus/base/Ref;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1, v0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->parseFileContentUri(Landroid/net/Uri;Lcom/oneplus/base/Ref;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 703
    :cond_0
    invoke-interface {v0}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getId(J)Ljava/lang/String;

    move-result-object v1

    .line 705
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getRecycledMedia(Lcom/oneplus/gallery2/media/MediaType;I)Ljava/lang/Iterable;
    .locals 2
    .param p1, "targetMediaType"    # Lcom/oneplus/gallery2/media/MediaType;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery2/media/MediaType;",
            "I)",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;"
        }
    .end annotation

    .prologue
    .line 713
    sget v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->FLAG_EXPAND_GROUPED_MEDIA:I

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    .line 714
    new-instance v0, Lcom/oneplus/gallery2/media/BaseMediaSource$NormalMediaIterable;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_RecycledMedia:Ljava/util/Set;

    invoke-direct {v0, p0, p1, v1}, Lcom/oneplus/gallery2/media/BaseMediaSource$NormalMediaIterable;-><init>(Lcom/oneplus/gallery2/media/BaseMediaSource;Lcom/oneplus/gallery2/media/MediaType;Ljava/lang/Iterable;)V

    .line 715
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/oneplus/gallery2/media/BaseMediaSource$ExpandedMediaIterable;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_RecycledMedia:Ljava/util/Set;

    invoke-direct {v0, p0, p1, v1}, Lcom/oneplus/gallery2/media/BaseMediaSource$ExpandedMediaIterable;-><init>(Lcom/oneplus/gallery2/media/BaseMediaSource;Lcom/oneplus/gallery2/media/MediaType;Ljava/lang/Iterable;)V

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 724
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 780
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSource;->handleMessage(Landroid/os/Message;)V

    .line 783
    :cond_0
    :goto_0
    return-void

    .line 728
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, [Ljava/lang/Object;

    .line 729
    .local v8, "params":[Ljava/lang/Object;
    aget-object v0, v8, v1

    check-cast v0, Lcom/oneplus/base/CallbackHandle;

    aget-object v1, v8, v4

    check-cast v1, Landroid/net/Uri;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->onMediaContentUriQueried(Lcom/oneplus/base/CallbackHandle;Landroid/net/Uri;)V

    goto :goto_0

    .line 735
    .end local v8    # "params":[Ljava/lang/Object;
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_1

    move v1, v4

    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->onMediaDeleted(Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;Z)V

    goto :goto_0

    .line 741
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, [Ljava/lang/Object;

    .line 742
    .restart local v8    # "params":[Ljava/lang/Object;
    aget-object v0, v8, v1

    check-cast v0, Lcom/oneplus/base/CallbackHandle;

    aget-object v1, v8, v4

    check-cast v1, Landroid/net/Uri;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->onMediaStoreAccessCompleted(Lcom/oneplus/base/CallbackHandle;Landroid/net/Uri;II)V

    goto :goto_0

    .line 748
    .end local v8    # "params":[Ljava/lang/Object;
    :sswitch_3
    iput-boolean v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_HasPendingMediaSyncWithMediaStore:Z

    .line 749
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->syncMediaWithMediaStore()V

    goto :goto_0

    .line 755
    :sswitch_4
    iput-boolean v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_HasPendingSingleMediaSyncWithMediaStore:Z

    .line 756
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaIdToSync:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaIdToSync:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 759
    .local v7, "mediaId":Ljava/lang/Long;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_STRING_FILE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->syncMediaWithMediaStore(Landroid/net/Uri;)V

    goto :goto_1

    .line 760
    .end local v7    # "mediaId":Ljava/lang/Long;
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaIdToSync:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto :goto_0

    .line 767
    .end local v6    # "i$":Ljava/util/Iterator;
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, [Ljava/lang/Object;

    .line 768
    .restart local v8    # "params":[Ljava/lang/Object;
    aget-object v1, v8, v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    aget-object v4, v8, v4

    check-cast v4, Ljava/util/List;

    aget-object v5, v8, v5

    check-cast v5, Ljava/util/List;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->syncMediaWithMediaStore(Ljava/lang/Object;IILjava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 774
    .end local v8    # "params":[Ljava/lang/Object;
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, [Ljava/lang/Object;

    .line 775
    .restart local v8    # "params":[Ljava/lang/Object;
    aget-object v0, v8, v1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aget-object v0, v8, v4

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;

    aget-object v1, v8, v5

    check-cast v1, Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->syncMediaWithMediaStore(JLcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)V

    goto/16 :goto_0

    .line 724
    nop

    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_5
        0x2711 -> :sswitch_3
        0x2712 -> :sswitch_6
        0x2714 -> :sswitch_4
        0x271a -> :sswitch_1
        0x2724 -> :sswitch_2
        0x2725 -> :sswitch_0
    .end sparse-switch
.end method

.method public insertIntoMediaStore(Lcom/oneplus/gallery2/media/MediaType;Landroid/content/ContentValues;Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;)Lcom/oneplus/base/Handle;
    .locals 6
    .param p1, "mediaType"    # Lcom/oneplus/gallery2/media/MediaType;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "callback"    # Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;

    .prologue
    const/4 v2, 0x0

    .line 796
    if-nez p1, :cond_1

    .line 798
    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string v4, "insertIntoMediaStore() - No media type"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 867
    :cond_0
    :goto_0
    return-object v1

    .line 801
    :cond_1
    if-nez p2, :cond_2

    .line 803
    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string v4, "insertIntoMediaStore() - No values to insert"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 804
    goto :goto_0

    .line 809
    :cond_2
    sget-object v3, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$16;->$SwitchMap$com$oneplus$gallery2$media$MediaType:[I

    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MediaType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 818
    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertIntoMediaStore() - Invalid media type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 819
    goto :goto_0

    .line 812
    :pswitch_0
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_IMAGE:Landroid/net/Uri;

    .line 823
    .local v0, "contentUri":Landroid/net/Uri;
    :goto_1
    new-instance v1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$9;

    const-string v3, "InsertIntoMediaStore"

    invoke-direct {v1, p0, v3, p3, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$9;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;Landroid/os/Handler;)V

    .line 831
    .local v1, "handle":Lcom/oneplus/base/CallbackHandle;, "Lcom/oneplus/base/CallbackHandle<Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;>;"
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v3

    new-instance v4, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$10;

    invoke-direct {v4, p0, v1, v0, p2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$10;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/base/CallbackHandle;Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-static {v3, v4}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 862
    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string v4, "insertIntoMediaStore() - Fail to post to media content thread"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 863
    goto :goto_0

    .line 815
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "handle":Lcom/oneplus/base/CallbackHandle;, "Lcom/oneplus/base/CallbackHandle<Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;>;"
    :pswitch_1
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_VIDEO:Landroid/net/Uri;

    .line 816
    .restart local v0    # "contentUri":Landroid/net/Uri;
    goto :goto_1

    .line 809
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isMediaIdSupported(Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 875
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isValidId(Ljava/lang/String;Lcom/oneplus/base/Ref;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;->isValidId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPathInHiddenDirectory(Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 886
    if-nez p1, :cond_0

    move v1, v2

    .line 893
    :goto_0
    return v1

    .line 888
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_HiddenPathPrefixList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 890
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_HiddenPathPrefixList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 891
    const/4 v1, 0x1

    goto :goto_0

    .line 888
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 893
    goto :goto_0
.end method

.method public isRecycledMedia(Lcom/oneplus/gallery2/media/Media;)Z
    .locals 1
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 901
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_RecycledMedia:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSubMedia(Lcom/oneplus/gallery2/media/Media;)Z
    .locals 1
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 909
    instance-of v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    if-eqz v0, :cond_0

    .line 910
    check-cast p1, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    .end local p1    # "media":Lcom/oneplus/gallery2/media/Media;
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isSubMedia()Z

    move-result v0

    .line 911
    :goto_0
    return v0

    .restart local p1    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final notifyMediaSetDeleted(Lcom/oneplus/gallery2/media/MediaSet;[Lcom/oneplus/gallery2/media/Media;)V
    .locals 12
    .param p1, "mediaSet"    # Lcom/oneplus/gallery2/media/MediaSet;
    .param p2, "mediaInMediaSet"    # [Lcom/oneplus/gallery2/media/Media;

    .prologue
    const/4 v11, 0x1

    .line 923
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->verifyAccess()V

    .line 924
    invoke-virtual {p0, v11}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->isRunningOrInitializing(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 954
    :cond_0
    :goto_0
    return-void

    .line 926
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/MediaSet;->isVirtual()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p2

    if-eqz v0, :cond_0

    .line 929
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string v1, "notifyMediaSetDeleted() - Media set : "

    const-string v3, ", "

    array-length v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, " media in this set"

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 932
    array-length v0, p2

    add-int/lit8 v6, v0, -0x1

    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_6

    .line 934
    aget-object v8, p2, v6

    .line 935
    .local v8, "media":Lcom/oneplus/gallery2/media/Media;
    if-nez v8, :cond_3

    .line 932
    .end local v8    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 937
    .restart local v8    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_3
    instance-of v0, v8, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    if-eqz v0, :cond_5

    .line 939
    check-cast v8, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    .end local v8    # "media":Lcom/oneplus/gallery2/media/Media;
    invoke-virtual {v8}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->getSubMedia()Ljava/lang/Iterable;

    move-result-object v0

    const-class v1, Lcom/oneplus/gallery2/media/Media;

    invoke-static {v0, v1}, Lcom/oneplus/util/CollectionUtils;->toArray(Ljava/lang/Iterable;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/oneplus/gallery2/media/Media;

    .line 940
    .local v10, "subMediaArray":[Lcom/oneplus/gallery2/media/Media;
    array-length v0, v10

    add-int/lit8 v7, v0, -0x1

    .local v7, "j":I
    :goto_3
    if-ltz v7, :cond_2

    .line 942
    aget-object v9, v10, v7

    .line 943
    .local v9, "subMedia":Lcom/oneplus/gallery2/media/Media;
    instance-of v0, v9, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    if-eqz v0, :cond_4

    move-object v0, v9

    .line 944
    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->removeFromGroupedMedia(Lcom/oneplus/gallery2/media/MediaStoreMedia;)Z

    .line 945
    :cond_4
    invoke-virtual {p0, v9}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->prepareMediaFlagsForCallback(Lcom/oneplus/gallery2/media/Media;)I

    move-result v0

    invoke-virtual {p0, v9, v11, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->removeMedia(Lcom/oneplus/gallery2/media/Media;ZI)Z

    .line 940
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 949
    .end local v7    # "j":I
    .end local v9    # "subMedia":Lcom/oneplus/gallery2/media/Media;
    .end local v10    # "subMediaArray":[Lcom/oneplus/gallery2/media/Media;
    .restart local v8    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_5
    invoke-virtual {p0, v8}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->prepareMediaFlagsForCallback(Lcom/oneplus/gallery2/media/Media;)I

    move-result v0

    invoke-virtual {p0, v8, v11, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->removeMedia(Lcom/oneplus/gallery2/media/Media;ZI)Z

    goto :goto_2

    .line 953
    .end local v8    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_6
    invoke-direct {p0, v11}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->syncMediaWithMediaStoreDelayed(Z)V

    goto :goto_0
.end method

.method protected notifyMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 4
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "flags"    # I

    .prologue
    .line 962
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery2/media/BaseMediaSource;->notifyMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V

    .line 965
    instance-of v2, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 967
    check-cast v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    .line 968
    .local v1, "mediaStoreMedia":Lcom/oneplus/gallery2/media/MediaStoreMedia;
    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isSubMedia()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 970
    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getGroupId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia(Ljava/lang/String;I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    .line 971
    .local v0, "groupedMedia":Lcom/oneplus/gallery2/media/BaseGroupedMedia;
    if-eqz v0, :cond_0

    .line 972
    invoke-virtual {v0, p1, p2}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->notifySubMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V

    .line 975
    .end local v0    # "groupedMedia":Lcom/oneplus/gallery2/media/BaseGroupedMedia;
    .end local v1    # "mediaStoreMedia":Lcom/oneplus/gallery2/media/MediaStoreMedia;
    :cond_0
    return-void
.end method

.method protected onActivated()V
    .locals 1

    .prologue
    .line 983
    invoke-super {p0}, Lcom/oneplus/gallery2/media/BaseMediaSource;->onActivated()V

    .line 986
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaSyncCount:I

    if-lez v0, :cond_0

    .line 988
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaSyncCount:I

    .line 989
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->syncMediaWithMediaStore()V

    .line 991
    :cond_0
    return-void
.end method

.method protected onActivationHandleClosed(Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;)V
    .locals 2
    .param p1, "handle"    # Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;

    .prologue
    .line 999
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;->getFlags()I

    move-result v0

    sget v1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->FLAG_CAMERA_ROLL_ONLY:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 1000
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CameraRollOnlyFlagCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CameraRollOnlyFlagCount:I

    .line 1001
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->updateMode()V

    .line 1004
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSource;->onActivationHandleClosed(Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;)V

    .line 1005
    return-void
.end method

.method protected onActivationHandleCreated(Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;)Z
    .locals 2
    .param p1, "handle"    # Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;

    .prologue
    .line 1013
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSource;->onActivationHandleCreated(Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;)Z

    .line 1016
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;->getFlags()I

    move-result v0

    sget v1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->FLAG_CAMERA_ROLL_ONLY:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 1017
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CameraRollOnlyFlagCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CameraRollOnlyFlagCount:I

    .line 1018
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->updateMode()V

    .line 1021
    const/4 v0, 0x1

    return v0
.end method

.method protected onDeactivated()V
    .locals 2

    .prologue
    .line 1030
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_HasPendingMediaSyncWithMediaStore:Z

    if-eqz v0, :cond_0

    .line 1032
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string v1, "onDeactivated() - Cancel scheduled full media sync"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaSyncCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaSyncCount:I

    .line 1034
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_HasPendingMediaSyncWithMediaStore:Z

    .line 1035
    const/16 v0, 0x2711

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 1039
    :cond_0
    invoke-super {p0}, Lcom/oneplus/gallery2/media/BaseMediaSource;->onDeactivated()V

    .line 1040
    return-void
.end method

.method protected onDeinitialize()V
    .locals 3

    .prologue
    .line 1048
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_ContentChangeCallbackHandles:Lcom/oneplus/base/HandleSet;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 1053
    :try_start_0
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_MediaIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/oneplus/base/BaseApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1061
    :goto_0
    invoke-super {p0}, Lcom/oneplus/gallery2/media/BaseMediaSource;->onDeinitialize()V

    .line 1062
    return-void

    .line 1055
    :catch_0
    move-exception v0

    .line 1057
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string v2, "onDeinitialize() - Fail to unregister receiver"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onInitialize()V
    .locals 10

    .prologue
    .line 1070
    invoke-super {p0}, Lcom/oneplus/gallery2/media/BaseMediaSource;->onInitialize()V

    .line 1073
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v1

    .line 1074
    .local v1, "contentThread":Lcom/oneplus/gallery2/MediaContentThread;
    if-nez v1, :cond_0

    .line 1075
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "No media content thread"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1078
    :cond_0
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v7

    const-class v8, Lcom/oneplus/gallery2/media/ContentObserver;

    invoke-virtual {v7, v8}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/ContentObserver;

    .line 1081
    .local v2, "contntObserver":Lcom/oneplus/gallery2/media/ContentObserver;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 1082
    .local v6, "rootExternalDirPath":Ljava/lang/String;
    iget-object v7, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_HiddenPathPrefixList:Ljava/util/List;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/Android/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1083
    iget-object v7, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_HiddenPathPrefixList:Ljava/util/List;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/oem_log/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1084
    iget-object v7, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_HiddenPathPrefixList:Ljava/util/List;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-static {v9}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1087
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    .line 1088
    .local v0, "app":Lcom/oneplus/base/BaseApplication;
    sget-object v7, Lcom/oneplus/base/BaseApplication;->PROP_IS_READ_STORAGE_PERM_GRANTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v7}, Lcom/oneplus/base/BaseApplication;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1089
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->onPermissionsReady()V

    .line 1104
    :goto_0
    if-eqz v2, :cond_2

    .line 1106
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getHandler()Landroid/os/Handler;

    move-result-object v5

    .line 1107
    .local v5, "handler":Landroid/os/Handler;
    iget-object v7, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_ContentChangeCallbackHandles:Lcom/oneplus/base/HandleSet;

    sget-object v8, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_IMAGE:Landroid/net/Uri;

    iget-object v9, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_ContentChangeCallback:Lcom/oneplus/gallery2/media/ContentObserver$ContentChangeCallback;

    invoke-interface {v2, v8, v9, v5}, Lcom/oneplus/gallery2/media/ContentObserver;->registerContentChangedCallback(Landroid/net/Uri;Lcom/oneplus/gallery2/media/ContentObserver$ContentChangeCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 1108
    iget-object v7, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_ContentChangeCallbackHandles:Lcom/oneplus/base/HandleSet;

    sget-object v8, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_VIDEO:Landroid/net/Uri;

    iget-object v9, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_ContentChangeCallback:Lcom/oneplus/gallery2/media/ContentObserver$ContentChangeCallback;

    invoke-interface {v2, v8, v9, v5}, Lcom/oneplus/gallery2/media/ContentObserver;->registerContentChangedCallback(Landroid/net/Uri;Lcom/oneplus/gallery2/media/ContentObserver$ContentChangeCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 1109
    iget-object v7, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_ContentChangeCallbackHandles:Lcom/oneplus/base/HandleSet;

    sget-object v8, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_OBJECT:Landroid/net/Uri;

    iget-object v9, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_ContentChangeCallback:Lcom/oneplus/gallery2/media/ContentObserver$ContentChangeCallback;

    invoke-interface {v2, v8, v9, v5}, Lcom/oneplus/gallery2/media/ContentObserver;->registerContentChangedCallback(Landroid/net/Uri;Lcom/oneplus/gallery2/media/ContentObserver$ContentChangeCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 1115
    .end local v5    # "handler":Landroid/os/Handler;
    :goto_1
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 1116
    .local v4, "filter":Landroid/content/IntentFilter;
    new-instance v4, Landroid/content/IntentFilter;

    .end local v4    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 1117
    .restart local v4    # "filter":Landroid/content/IntentFilter;
    const-string v7, "android.hardware.action.NEW_PICTURE"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1118
    const-string v7, "android.hardware.action.NEW_VIDEO"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1119
    const-string v7, "com.oneplus.camera.service.CLEAR_IMAGE_CACHE"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1120
    const-string v7, "com.oneplus.gallery.MEDIA_STORE_MEDIA_DELETED"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1123
    :try_start_0
    const-string v7, "image/*"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    .line 1124
    const-string v7, "video/*"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1130
    :goto_2
    iget-object v7, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_MediaIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v7, v4}, Lcom/oneplus/base/BaseApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1133
    sget-object v7, Lcom/oneplus/base/BaseApplication;->PROP_LOCALE:Lcom/oneplus/base/PropertyKey;

    new-instance v8, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$12;

    invoke-direct {v8, p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$12;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)V

    invoke-virtual {v0, v7, v8}, Lcom/oneplus/base/BaseApplication;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1141
    return-void

    .line 1092
    .end local v4    # "filter":Landroid/content/IntentFilter;
    :cond_1
    sget-object v7, Lcom/oneplus/base/BaseApplication;->PROP_IS_READ_STORAGE_PERM_GRANTED:Lcom/oneplus/base/PropertyKey;

    new-instance v8, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$11;

    invoke-direct {v8, p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$11;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)V

    invoke-virtual {v0, v7, v8}, Lcom/oneplus/base/BaseApplication;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    goto :goto_0

    .line 1112
    :cond_2
    iget-object v7, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string v8, "onInitialize() - No ContentObserver"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1126
    .restart local v4    # "filter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v3

    .line 1128
    .local v3, "ex":Landroid/content/IntentFilter$MalformedMimeTypeException;
    iget-object v7, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string v8, "onInitialize() - Unknown error while preparing intent filter"

    invoke-static {v7, v8, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method final recycleMedia(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;
    .locals 4
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "callback"    # Lcom/oneplus/gallery2/media/Media$DeletionCallback;
    .param p3, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 1451
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->verifyAccess()V

    .line 1452
    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->isRunningOrInitializing(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1483
    :goto_0
    return-object v0

    .line 1456
    :cond_0
    if-nez p1, :cond_1

    .line 1458
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string v2, "recycleMedia() - No media to delete"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1461
    :cond_1
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->containsMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1463
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recycleMedia() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not contained in media table"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1468
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_RecycledMedia:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1470
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recycleMedia() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is already recycled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1475
    :cond_3
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->prepareMediaFlagsForCallback(Lcom/oneplus/gallery2/media/Media;)I

    move-result v0

    sget v1, Lcom/oneplus/gallery2/media/Media;->FLAG_MOVE_TO_RECYCE_BIN:I

    or-int/2addr v0, v1

    or-int/2addr p3, v0

    .line 1476
    if-eqz p2, :cond_4

    .line 1477
    invoke-virtual {p2, p1, p3}, Lcom/oneplus/gallery2/media/Media$DeletionCallback;->onDeletionStarted(Lcom/oneplus/gallery2/media/Media;I)V

    .line 1478
    :cond_4
    invoke-virtual {p0, p1, p3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->notifyMediaDeleted(Lcom/oneplus/gallery2/media/Media;I)V

    .line 1479
    if-eqz p2, :cond_5

    .line 1480
    invoke-virtual {p2, p1, v2, p3}, Lcom/oneplus/gallery2/media/Media$DeletionCallback;->onDeletionCompleted(Lcom/oneplus/gallery2/media/Media;ZI)V

    .line 1483
    :cond_5
    new-instance v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)V

    goto :goto_0
.end method

.method updateAddress(Lcom/oneplus/gallery2/media/MediaStoreMedia;Landroid/location/Address;)V
    .locals 19
    .param p1, "media"    # Lcom/oneplus/gallery2/media/MediaStoreMedia;
    .param p2, "address"    # Landroid/location/Address;

    .prologue
    .line 1925
    if-eqz p2, :cond_0

    .line 1927
    invoke-virtual/range {p2 .. p2}, Landroid/location/Address;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1928
    .local v5, "locale":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/location/Address;->getLatitude()D

    move-result-wide v6

    .line 1929
    .local v6, "lat":D
    invoke-virtual/range {p2 .. p2}, Landroid/location/Address;->getLongitude()D

    move-result-wide v8

    .line 1930
    .local v8, "lng":D
    invoke-virtual/range {p2 .. p2}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v10

    .line 1931
    .local v10, "country":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v11

    .line 1932
    .local v11, "adminArea":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v12

    .line 1933
    .local v12, "subAdminArea":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v13

    .line 1934
    .local v13, "locality":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v14

    .line 1935
    .local v14, "subLocality":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v15

    .line 1936
    .local v15, "feature":Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v16

    .line 1937
    .local v16, "addrLine0":Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v17

    .line 1955
    .local v17, "addrLine1":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v18

    new-instance v2, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$14;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v17}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$14;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMedia;Ljava/lang/String;DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 1980
    return-void

    .line 1941
    .end local v5    # "locale":Ljava/lang/String;
    .end local v6    # "lat":D
    .end local v8    # "lng":D
    .end local v10    # "country":Ljava/lang/String;
    .end local v11    # "adminArea":Ljava/lang/String;
    .end local v12    # "subAdminArea":Ljava/lang/String;
    .end local v13    # "locality":Ljava/lang/String;
    .end local v14    # "subLocality":Ljava/lang/String;
    .end local v15    # "feature":Ljava/lang/String;
    .end local v16    # "addrLine0":Ljava/lang/String;
    .end local v17    # "addrLine1":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    .line 1942
    .restart local v5    # "locale":Ljava/lang/String;
    const-wide/high16 v6, 0x7ff8000000000000L    # NaN

    .line 1943
    .restart local v6    # "lat":D
    const-wide/high16 v8, 0x7ff8000000000000L    # NaN

    .line 1944
    .restart local v8    # "lng":D
    const/4 v10, 0x0

    .line 1945
    .restart local v10    # "country":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1946
    .restart local v11    # "adminArea":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1947
    .restart local v12    # "subAdminArea":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1948
    .restart local v13    # "locality":Ljava/lang/String;
    const/4 v14, 0x0

    .line 1949
    .restart local v14    # "subLocality":Ljava/lang/String;
    const/4 v15, 0x0

    .line 1950
    .restart local v15    # "feature":Ljava/lang/String;
    const/16 v16, 0x0

    .line 1951
    .restart local v16    # "addrLine0":Ljava/lang/String;
    const/16 v17, 0x0

    .restart local v17    # "addrLine1":Ljava/lang/String;
    goto :goto_0
.end method

.method updateOnePlusFlags(Lcom/oneplus/gallery2/media/MediaStoreMedia;II)V
    .locals 2
    .param p1, "media"    # Lcom/oneplus/gallery2/media/MediaStoreMedia;
    .param p2, "addFlags"    # I
    .param p3, "removeFlags"    # I

    .prologue
    .line 2014
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v0

    new-instance v1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$15;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$15;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMedia;II)V

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 2030
    return-void
.end method
