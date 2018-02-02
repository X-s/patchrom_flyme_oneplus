.class public Lcom/oneplus/gallery2/media/MediaStoreMediaSource;
.super Lcom/oneplus/gallery2/media/BaseMediaSource;
.source "MediaStoreMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;,
        Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;,
        Lcom/oneplus/gallery2/media/MediaStoreMediaSource$QueryAllMediaStoreContentRunnable;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$oneplus$gallery2$media$MediaType:[I = null

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

.field private static final INTENT_NEW_PICTURE:Ljava/lang/String; = "com.oneplus.camera.intent.action.NEW_PICTURE"

.field private static final INTENT_NEW_VIDEO:Ljava/lang/String; = "com.oneplus.camera.intent.action.NEW_VIDEO"

.field private static final MAX_PENDING_MEDIA_SYNC_COUNT:I = 0x10

.field private static final MEDIA_STORE_QUERY_CHUNK_SIZE:I = 0x200

.field private static final MEDIA_STORE_QUERY_COND:Ljava/lang/String; = "media_type=1 OR media_type=3"

.field private static final MEDIA_STORE_QUERY_COND_CAMERA_ROLL:Ljava/lang/String; = "(media_type=1 OR media_type=3) AND _data LIKE \'%/DCIM/%\'"

.field private static final MEDIA_STORE_QUERY_SORT_ORDER:Ljava/lang/String; = "datetaken DESC, _id DESC"

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
.field private m_CameraRollMediaCount:I

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

.field private final m_TempDbValueList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;",
            ">;"
        }
    .end annotation
.end field

.field private final m_TempFileInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$com$oneplus$gallery2$media$MediaType()[I
    .locals 3

    .prologue
    .line 65
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->$SWITCH_TABLE$com$oneplus$gallery2$media$MediaType:[I

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
    sput-object v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->$SWITCH_TABLE$com$oneplus$gallery2$media$MediaType:[I

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
    .locals 4

    .prologue
    .line 70
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->FLAG_CAMERA_ROLL_ONLY:I

    .line 76
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "NewMediaIntentReceived"

    const-class v2, Lcom/oneplus/base/IntentEventArgs;

    const-class v3, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->EVENT_NEW_MEDIA_INTENT_RECEIVED:Lcom/oneplus/base/EventKey;

    const-string/jumbo v0, "external"

    .line 85
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_FILE:Landroid/net/Uri;

    .line 86
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_IMAGE:Landroid/net/Uri;

    .line 87
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_VIDEO:Landroid/net/Uri;

    const-string/jumbo v0, "content://media/external/object"

    .line 88
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_OBJECT:Landroid/net/Uri;

    .line 89
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_FILE:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_STRING_FILE:Ljava/lang/String;

    .line 107
    return-void
.end method

.method constructor <init>(Lcom/oneplus/base/BaseApplication;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v0, "Media store media source"

    .line 237
    invoke-direct {p0, v0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSource;-><init>(Ljava/lang/String;Lcom/oneplus/base/BaseApplication;)V

    .line 113
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CandidateMediaToRemove:Ljava/util/Set;

    .line 114
    new-instance v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$1;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_ContentChangeCallback:Lcom/oneplus/gallery2/media/ContentObserver$ContentChangeCallback;

    .line 122
    new-instance v0, Lcom/oneplus/base/HandleSet;

    new-array v1, v2, [Lcom/oneplus/base/Handle;

    invoke-direct {v0, v1}, Lcom/oneplus/base/HandleSet;-><init>([Lcom/oneplus/base/Handle;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_ContentChangeCallbackHandles:Lcom/oneplus/base/HandleSet;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_HiddenPathPrefixList:Ljava/util/List;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_MediaObtainCallbackHandles:Ljava/util/Map;

    .line 129
    iput v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_Mode:I

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_NeedToSyncMediaWhenPermsReady:Z

    .line 132
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaIdToSync:Ljava/util/Set;

    .line 134
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_RecycledMedia:Ljava/util/Set;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_TempDbValueList:Ljava/util/List;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_TempFileInfoList:Ljava/util/List;

    .line 140
    new-instance v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$2;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_MediaIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 238
    return-void
.end method

.method static synthetic access$0(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 1347
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->onMediaStoreContentChanged(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$1(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1287
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->onMediaIntentReceived(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$10(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)V
    .locals 0

    .prologue
    .line 1396
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->onPermissionsReady()V

    return-void
.end method

.method static synthetic access$11(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)V
    .locals 0

    .prologue
    .line 1231
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->onLocaleChanged()V

    return-void
.end method

.method static synthetic access$12(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;J)V
    .locals 1

    .prologue
    .line 1508
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->queryMediaStoreContent(J)V

    return-void
.end method

.method static synthetic access$2(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;)V
    .locals 0

    .prologue
    .line 1649
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->restoreMedia(Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;)V

    return-void
.end method

.method static synthetic access$3(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Ljava/lang/Object;II)V
    .locals 0

    .prologue
    .line 1409
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->queryAllMediaStoreContent(Ljava/lang/Object;II)V

    return-void
.end method

.method static synthetic access$4()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_FILE:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$5(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;)V
    .locals 0

    .prologue
    .line 441
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->deleteMedia(Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;)V

    return-void
.end method

.method static synthetic access$7(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_MediaObtainCallbackHandles:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$8()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_STRING_FILE:Ljava/lang/String;

    return-object v0
.end method

.method private addToGroupedMedia(Lcom/oneplus/gallery2/media/MediaStoreMedia;)Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 244
    if-nez p1, :cond_1

    .line 262
    :cond_0
    return v2

    .line 244
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isSubMedia()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia(Ljava/lang/String;I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    .line 247
    if-eqz v0, :cond_2

    move v1, v2

    .line 248
    :goto_0
    if-nez v1, :cond_3

    .line 255
    :goto_1
    invoke-virtual {v0, p1}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->addSubMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 257
    if-nez v1, :cond_5

    .line 259
    :goto_2
    return v3

    :cond_2
    move v1, v3

    .line 247
    goto :goto_0

    .line 250
    :cond_3
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->createGroupedMedia(Lcom/oneplus/gallery2/media/MediaStoreMedia;)Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    move-result-object v0

    .line 251
    if-eqz v0, :cond_4

    .line 253
    iget-object v4, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "addToGroupedMedia() - Create "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 252
    :cond_4
    return v2

    .line 258
    :cond_5
    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->prepareMediaFlagsForCallback(Lcom/oneplus/gallery2/media/Media;)I

    move-result v1

    invoke-virtual {p0, v0, v3, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->addMedia(Lcom/oneplus/gallery2/media/Media;ZI)Z

    goto :goto_2
.end method

.method private callOnMediaObtained(JLcom/oneplus/gallery2/media/Media;)V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 269
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_MediaObtainCallbackHandles:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/List;

    .line 270
    if-nez v6, :cond_1

    .line 282
    :cond_0
    return-void

    .line 272
    :cond_1
    if-nez p3, :cond_2

    .line 273
    :goto_0
    if-nez p3, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_STRING_FILE:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 274
    :goto_1
    if-nez p3, :cond_4

    invoke-static {p1, p2}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getId(J)Ljava/lang/String;

    move-result-object v3

    .line 275
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_3
    if-ltz v7, :cond_0

    .line 277
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/CallbackHandle;

    invoke-virtual {v0}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

    .line 278
    if-nez v0, :cond_5

    .line 275
    :goto_4
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_3

    .line 272
    :cond_2
    invoke-virtual {p0, p3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->prepareMediaFlagsForCallback(Lcom/oneplus/gallery2/media/Media;)I

    move-result v5

    goto :goto_0

    .line 273
    :cond_3
    invoke-interface {p3}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    goto :goto_1

    .line 274
    :cond_4
    invoke-interface {p3}, Lcom/oneplus/gallery2/media/Media;->getId()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_5
    move-object v1, p0

    move-object v4, p3

    .line 279
    invoke-interface/range {v0 .. v5}, Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;->onMediaObtained(Lcom/oneplus/gallery2/media/MediaSource;Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_4
.end method

.method private checkTakenTime(Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)V
    .locals 4

    .prologue
    .line 288
    if-nez p1, :cond_1

    .line 289
    :cond_0
    return-void

    .line 288
    :cond_1
    if-eqz p2, :cond_0

    .line 290
    iget-wide v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->takenTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    .line 292
    iget v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->mediaType:I

    packed-switch v0, :pswitch_data_0

    .line 302
    :cond_2
    :goto_1
    :pswitch_0
    return-void

    .line 290
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 295
    :pswitch_1
    iget-wide v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->id:J

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->createContentUri(J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->getTakenTimeFromFile(Landroid/net/Uri;)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;->takenTime:J

    goto :goto_1

    .line 298
    :pswitch_2
    iget-wide v0, p2, Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;->lastModifiedTime:J

    iput-wide v0, p2, Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;->takenTime:J

    goto :goto_1

    .line 292
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private createGroupedMedia(Lcom/oneplus/gallery2/media/MediaStoreMedia;)Lcom/oneplus/gallery2/media/BaseGroupedMedia;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 308
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getGroupId()Ljava/lang/String;

    move-result-object v0

    .line 309
    if-nez v0, :cond_1

    .line 314
    :cond_0
    return-object v2

    .line 311
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isBurstSubMedia()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    new-instance v1, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;

    invoke-direct {v1, p0, v0}, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Ljava/lang/String;)V

    return-object v1
.end method

.method private deleteMedia(Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;)V
    .locals 13

    .prologue
    const/16 v12, 0x271a

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 444
    invoke-static {p1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 446
    monitor-enter p1

    .line 448
    :try_start_0
    iget-boolean v3, p1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;->isCancelled:Z

    if-nez v3, :cond_3

    .line 450
    const/4 v3, 0x0

    iput-boolean v3, p1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;->isCancellable:Z

    .line 446
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;->getMedia()Lcom/oneplus/gallery2/media/Media;

    move-result-object v3

    .line 455
    instance-of v6, v3, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    if-eqz v6, :cond_4

    .line 463
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oneplus/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_FILE:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v7

    .line 464
    if-eqz v7, :cond_5

    .line 477
    :try_start_1
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;->getFlags()I

    move-result v6

    sget v8, Lcom/oneplus/gallery2/media/Media;->FLAG_INCLUDE_RAW_PHOTO:I

    and-int/2addr v6, v8

    if-nez v6, :cond_6

    move-object v6, v2

    .line 488
    :goto_0
    sget-object v8, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_FILE:Landroid/net/Uri;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "_id="

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getMediaId()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v2, v9}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_8

    .line 491
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "deleteMedia() - "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " is not found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    :goto_1
    if-nez v6, :cond_9

    .line 511
    :cond_0
    :goto_2
    move-object v0, v3

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getMediaId()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/oneplus/gallery2/media/GalleryDatabase;->deleteExtraMediaInfo(J)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 522
    invoke-virtual {v7}, Landroid/content/ContentProviderClient;->release()Z

    move v2, v4

    .line 526
    :goto_3
    if-nez v2, :cond_1

    move v4, v5

    :cond_1
    invoke-static {p0, v12, v4, v5, p1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 527
    return-void

    .line 445
    :cond_2
    return-void

    .line 449
    :cond_3
    :try_start_2
    monitor-exit p1

    return-void

    .line 446
    :catchall_0
    move-exception v2

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 457
    :cond_4
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "deleteMedia() - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is not a media store media"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    invoke-static {p0, v12, p1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;ILjava/lang/Object;)Z

    .line 459
    return-void

    .line 466
    :cond_5
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "deleteMedia() - Fail to acquire content provider client"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-static {p0, v12, p1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;ILjava/lang/Object;)Z

    .line 468
    return-void

    .line 479
    :cond_6
    :try_start_3
    invoke-interface {v3}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x2e

    .line 480
    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 481
    if-gez v6, :cond_7

    .line 484
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ".dng"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto/16 :goto_0

    .line 482
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    invoke-virtual {v2, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ".dng"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto/16 :goto_0

    .line 489
    :cond_8
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "deleteMedia() - "

    const-string/jumbo v9, " deleted"

    invoke-static {v2, v8, v3, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_1

    .line 515
    :catch_0
    move-exception v2

    .line 518
    :try_start_4
    iget-object v6, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "deleteMedia() - Fail to delete "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 522
    invoke-virtual {v7}, Landroid/content/ContentProviderClient;->release()Z

    move v2, v5

    goto/16 :goto_3

    .line 496
    :cond_9
    :try_start_5
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 498
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_a

    move v2, v5

    .line 505
    :goto_4
    sget-object v8, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_FILE:Landroid/net/Uri;

    const-string/jumbo v9, "_data=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 506
    if-eqz v2, :cond_0

    .line 507
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "deleteMedia() - RAW file "

    const-string/jumbo v9, " deleted"

    invoke-static {v2, v8, v6, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_2

    .line 522
    :catchall_1
    move-exception v2

    invoke-virtual {v7}, Landroid/content/ContentProviderClient;->release()Z

    .line 523
    throw v2

    .line 500
    :cond_a
    :try_start_6
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_b

    .line 503
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "deleteMedia() - Fail to delete RAW file "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move v2, v5

    goto :goto_4

    :cond_b
    move v2, v4

    .line 501
    goto :goto_4
.end method

.method private handleQueriedDataInMediaStore(Landroid/database/Cursor;Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 815
    invoke-static {p1}, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->read(Landroid/database/Cursor;)Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;

    move-result-object v0

    .line 816
    if-nez v0, :cond_1

    .line 820
    :cond_0
    return v2

    .line 816
    :cond_1
    iget-object v1, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->data:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->data:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->isPathInHiddenDirectory(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 817
    iget-object v1, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->data:Ljava/lang/String;

    invoke-static {v1}, Lcom/oneplus/io/FileUtils;->isRawFilePath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 818
    iget-object v1, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->data:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->isTiffFilePath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 824
    iget-wide v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->id:J

    invoke-static {v2, v3}, Lcom/oneplus/gallery2/media/GalleryDatabase;->getExtraMediaInfo(J)Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->extraInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    .line 827
    iget-object v1, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->data:Ljava/lang/String;

    invoke-static {v1}, Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;->read(Ljava/lang/String;)Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;

    move-result-object v1

    .line 830
    invoke-direct {p0, v0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->checkTakenTime(Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)V

    .line 833
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 834
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 837
    const/4 v0, 0x1

    return v0
.end method

.method private isTiffFilePath(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 973
    if-eqz p1, :cond_1

    .line 975
    invoke-static {p1}, Lcom/oneplus/io/Path;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 981
    :cond_0
    return v2

    .line 974
    :cond_1
    return v2

    :sswitch_0
    const-string/jumbo v1, ".tif"

    .line 975
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 979
    :goto_0
    const/4 v0, 0x1

    return v0

    :sswitch_1
    const-string/jumbo v1, ".tiff"

    .line 975
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x16a9a3 -> :sswitch_0
        0x2be8b23 -> :sswitch_1
    .end sparse-switch
.end method

.method private onLocaleChanged()V
    .locals 3

    .prologue
    .line 1233
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    .line 1235
    instance-of v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    if-eqz v2, :cond_0

    .line 1236
    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->onLocaleChanged()V

    goto :goto_0

    .line 1238
    :cond_1
    return-void
.end method

.method private onMediaContentUriQueried(Lcom/oneplus/base/CallbackHandle;Landroid/net/Uri;)V
    .locals 3
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
    const/4 v2, 0x0

    .line 1244
    invoke-static {p1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1246
    :cond_0
    :goto_0
    return-void

    .line 1244
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1245
    invoke-virtual {p1}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;

    if-nez p2, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;->onCompleted(Lcom/oneplus/base/Handle;Landroid/net/Uri;II)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private onMediaDeleted(Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;Z)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1253
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;->getMedia()Lcom/oneplus/gallery2/media/Media;

    move-result-object v1

    .line 1254
    if-nez p2, :cond_1

    .line 1262
    :goto_0
    invoke-virtual {p0, v4}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->isRunningOrInitializing(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1264
    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->prepareMediaFlagsForCallback(Lcom/oneplus/gallery2/media/Media;)I

    move-result v2

    .line 1265
    if-eqz p2, :cond_3

    .line 1274
    invoke-virtual {p0, v1, v4, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->removeMedia(Lcom/oneplus/gallery2/media/Media;ZI)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1281
    :cond_0
    :goto_1
    iget-object v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;->callback:Lcom/oneplus/gallery2/media/Media$DeletionCallback;

    if-nez v0, :cond_6

    .line 1283
    :goto_2
    return-void

    .line 1256
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.oneplus.gallery.MEDIA_STORE_MEDIA_DELETED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1257
    invoke-interface {v1}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1}, Lcom/oneplus/gallery2/media/Media;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1258
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/oneplus/base/BaseApplication;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1263
    :cond_2
    return-void

    .line 1267
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onMediaDeleted() - Fail to delete "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    iget-object v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;->callback:Lcom/oneplus/gallery2/media/Media$DeletionCallback;

    if-nez v0, :cond_4

    .line 1270
    :goto_3
    return-void

    .line 1269
    :cond_4
    iget-object v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;->callback:Lcom/oneplus/gallery2/media/Media$DeletionCallback;

    invoke-virtual {v0, v1, v5, v2}, Lcom/oneplus/gallery2/media/Media$DeletionCallback;->onDeletionCompleted(Lcom/oneplus/gallery2/media/Media;ZI)V

    goto :goto_3

    .line 1274
    :cond_5
    instance-of v0, v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 1276
    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->removeFromGroupedMedia(Lcom/oneplus/gallery2/media/MediaStoreMedia;)Z

    .line 1277
    invoke-direct {p0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->releaseMedia(Lcom/oneplus/gallery2/media/Media;)V

    goto :goto_1

    .line 1282
    :cond_6
    iget-object v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;->callback:Lcom/oneplus/gallery2/media/Media$DeletionCallback;

    invoke-virtual {v0, v1, v4, v2}, Lcom/oneplus/gallery2/media/Media$DeletionCallback;->onDeletionCompleted(Lcom/oneplus/gallery2/media/Media;ZI)V

    goto :goto_2
.end method

.method private onMediaIntentReceived(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1290
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 1291
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 1292
    if-nez v2, :cond_1

    .line 1293
    :cond_0
    return-void

    .line 1292
    :cond_1
    if-eqz v3, :cond_0

    .line 1297
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 1320
    :cond_2
    return-void

    :sswitch_0
    const-string/jumbo v0, "android.hardware.action.NEW_VIDEO"

    .line 1297
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1307
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onMediaIntentReceived() - New video : "

    invoke-static {v0, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v1

    .line 1323
    :goto_1
    iget-boolean v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PermissionsReady:Z

    if-eqz v2, :cond_3

    .line 1330
    invoke-direct {p0, v3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->syncMediaWithMediaStore(Landroid/net/Uri;)V

    .line 1333
    if-nez v0, :cond_4

    .line 1335
    :goto_2
    return-void

    :sswitch_1
    const-string/jumbo v0, "com.oneplus.camera.intent.action.NEW_VIDEO"

    .line 1297
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "com.oneplus.camera.intent.action.NEW_PICTURE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1301
    :goto_3
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onMediaIntentReceived() - New photo : "

    invoke-static {v0, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v1

    .line 1303
    goto :goto_1

    :sswitch_3
    const-string/jumbo v4, "com.oneplus.camera.service.CLEAR_IMAGE_CACHE"

    .line 1297
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1312
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onMediaIntentReceived() - Clear cache : "

    invoke-static {v2, v4, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :sswitch_4
    const-string/jumbo v0, "android.hardware.action.NEW_PICTURE"

    .line 1297
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :sswitch_5
    const-string/jumbo v4, "com.oneplus.gallery.MEDIA_STORE_MEDIA_DELETED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1316
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onMediaIntentReceived() - Media deleted : "

    invoke-static {v2, v4, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 1325
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onMediaIntentReceived() - Start full media sync when permissions ready"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    iput-boolean v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_NeedToSyncMediaWhenPermsReady:Z

    .line 1327
    return-void

    .line 1334
    :cond_4
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->EVENT_NEW_MEDIA_INTENT_RECEIVED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/oneplus/base/IntentEventArgs;

    invoke-direct {v1, p1}, Lcom/oneplus/base/IntentEventArgs;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    goto :goto_2

    .line 1297
    :sswitch_data_0
    .sparse-switch
        -0x7d14f855 -> :sswitch_0
        -0x4a7b33d8 -> :sswitch_1
        0x2a15d96b -> :sswitch_2
        0x2c9bc4c5 -> :sswitch_3
        0x36db402e -> :sswitch_4
        0x7767754e -> :sswitch_5
    .end sparse-switch
.end method

.method private onMediaStoreAccessCompleted(Lcom/oneplus/base/CallbackHandle;Landroid/net/Uri;II)V
    .locals 1
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
    .line 1341
    invoke-static {p1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1343
    :cond_0
    :goto_0
    return-void

    .line 1341
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1342
    invoke-virtual {p1}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;->onCompleted(Lcom/oneplus/base/Handle;Landroid/net/Uri;II)V

    goto :goto_0
.end method

.method private onMediaStoreContentChanged(Landroid/net/Uri;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1350
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->isRunningOrInitializing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1353
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onMediaStoreContentChanged() - Content URI : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PermissionsReady:Z

    if-eqz v0, :cond_3

    const-wide/16 v4, -0x1

    .line 1364
    if-nez p1, :cond_4

    :cond_0
    :goto_0
    const-wide/16 v6, 0x0

    .line 1381
    cmp-long v0, v4, v6

    if-gtz v0, :cond_5

    move v0, v1

    :goto_1
    if-nez v0, :cond_7

    .line 1383
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaIdToSync:Ljava/util/Set;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1392
    :cond_1
    :goto_2
    return-void

    .line 1351
    :cond_2
    return-void

    .line 1358
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onMediaStoreContentChanged() - Permissions not ready, ignore"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    return-void

    .line 1368
    :cond_4
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1369
    if-eqz v0, :cond_0

    .line 1370
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1371
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1373
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    goto :goto_0

    :cond_5
    move v0, v2

    .line 1381
    goto :goto_1

    .line 1383
    :cond_6
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_HasPendingSingleMediaSyncWithMediaStore:Z

    if-nez v0, :cond_1

    .line 1385
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onMediaStoreContentChanged() - Schedule single media sync"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    iput-boolean v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_HasPendingSingleMediaSyncWithMediaStore:Z

    const/16 v0, 0x2714

    const-wide/16 v2, 0x32

    .line 1387
    invoke-static {p0, v0, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IJ)Z

    goto :goto_2

    .line 1391
    :cond_7
    invoke-direct {p0, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->syncMediaWithMediaStoreDelayed(Z)V

    goto :goto_2

    .line 1375
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private onPermissionsReady()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1398
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPermissionsReady()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PermissionsReady:Z

    .line 1400
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_NeedToSyncMediaWhenPermsReady:Z

    if-nez v0, :cond_0

    .line 1405
    :goto_0
    return-void

    .line 1402
    :cond_0
    iput-boolean v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_NeedToSyncMediaWhenPermsReady:Z

    .line 1403
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->syncMediaWithMediaStore()V

    goto :goto_0
.end method

.method private queryAllMediaStoreContent(Ljava/lang/Object;II)V
    .locals 16

    .prologue
    .line 1411
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "queryAllMediaStoreContent() - Mode : "

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, ", offset : "

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1414
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 1415
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1416
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 1421
    :try_start_0
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_FILE:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    move-result-object v2

    .line 1422
    if-nez v2, :cond_1

    .line 1488
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "queryAllMediaStoreContent() - Fail to acquire content provider client"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1496
    :goto_0
    if-nez v2, :cond_1c

    .line 1499
    :cond_0
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v12

    .line 1500
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "queryAllMediaStoreContent() - Take "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ms to get "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " entries"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2710

    const/4 v3, 0x3

    .line 1503
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v11, v3, v4

    const/4 v4, 0x2

    aput-object v14, v3, v4

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v2, v1, v10, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 1504
    return-void

    .line 1425
    :cond_1
    if-eqz p2, :cond_4

    const/4 v3, 0x0

    move v8, v3

    .line 1426
    :goto_2
    if-nez p3, :cond_5

    .line 1428
    :cond_2
    if-eqz p3, :cond_6

    .line 1444
    :cond_3
    :goto_3
    :try_start_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CameraRollMediaCount:I

    move/from16 v0, p3

    if-lt v0, v3, :cond_b

    move v9, v10

    .line 1466
    :goto_4
    if-nez v8, :cond_14

    move v10, v9

    goto :goto_0

    :cond_4
    const/4 v3, 0x1

    move v8, v3

    .line 1425
    goto :goto_2

    .line 1426
    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CameraRollMediaCount:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move/from16 v0, p3

    if-lt v0, v3, :cond_2

    move v9, v10

    goto :goto_4

    :cond_6
    const/4 v9, 0x0

    .line 1430
    :try_start_3
    sget-object v3, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_FILE:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "COUNT(_id)"

    aput-object v6, v4, v5

    const-string/jumbo v5, "(media_type=1 OR media_type=3) AND _data LIKE \'%/DCIM/%\'"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    .line 1432
    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_7

    const/4 v3, 0x0

    .line 1435
    move-object/from16 v0, p0

    iput v3, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CameraRollMediaCount:I

    .line 1436
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "queryAllMediaStoreContent() - Media count in camera roll : "

    move-object/from16 v0, p0

    iget v6, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CameraRollMediaCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1437
    if-eqz v4, :cond_3

    :try_start_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v3

    move-object v4, v9

    :goto_6
    if-eqz v4, :cond_9

    if-ne v4, v3, :cond_a

    :goto_7
    :try_start_6
    throw v4
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catch_0
    move-exception v3

    .line 1440
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "queryAllMediaStoreContent() - Fail to query media count in camera roll"

    invoke-static {v4, v5, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v3, 0x0

    .line 1441
    move-object/from16 v0, p0

    iput v3, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CameraRollMediaCount:I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    .line 1489
    :catch_1
    move-exception v3

    move-object v15, v3

    move-object v3, v2

    move-object v2, v15

    .line 1492
    :goto_8
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "queryAllMediaStoreContent() - Fail to query from media store"

    invoke-static {v4, v5, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_a

    .line 1496
    if-eqz v3, :cond_0

    .line 1497
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_1

    :cond_7
    const/4 v3, 0x0

    .line 1433
    :try_start_9
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CameraRollMediaCount:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_5

    .line 1437
    :catchall_1
    move-exception v3

    if-nez v4, :cond_8

    :goto_9
    :try_start_a
    throw v3

    :catchall_2
    move-exception v4

    move-object v15, v4

    move-object v4, v3

    move-object v3, v15

    goto :goto_6

    :cond_8
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_9

    .line 1497
    :catchall_3
    move-exception v3

    move-object v15, v3

    move-object v3, v2

    move-object v2, v15

    .line 1496
    :goto_a
    if-nez v3, :cond_1b

    .line 1498
    :goto_b
    throw v2

    :cond_9
    move-object v4, v3

    .line 1437
    goto :goto_7

    :cond_a
    :try_start_b
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_7

    .line 1446
    :cond_b
    :try_start_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "queryAllMediaStoreContent() - Query media in camera roll first"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    const/4 v9, 0x0

    .line 1447
    :try_start_d
    sget-object v3, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_FILE:Landroid/net/Uri;

    sget-object v4, Lcom/oneplus/gallery2/media/MediaStoreMedia;->MEDIA_STORE_COLUMNS:[Ljava/lang/String;

    const-string/jumbo v5, "(media_type=1 OR media_type=3) AND _data LIKE \'%/DCIM/%\'"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "datetaken DESC, _id DESC LIMIT 512 OFFSET "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    move-result-object v4

    move v5, v10

    .line 1449
    :cond_c
    :goto_c
    :try_start_e
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1451
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11, v14}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->handleQueriedDataInMediaStore(Landroid/database/Cursor;Ljava/util/List;Ljava/util/List;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    move-result v3

    if-nez v3, :cond_c

    .line 1452
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 1454
    :cond_d
    if-nez v4, :cond_f

    .line 1455
    :goto_d
    if-eqz v5, :cond_13

    .line 1461
    :cond_e
    const/4 v8, 0x0

    move v9, v5

    goto/16 :goto_4

    .line 1454
    :cond_f
    :try_start_f
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    goto :goto_d

    :catchall_4
    move-exception v3

    move-object v4, v9

    :goto_e
    if-eqz v4, :cond_11

    if-ne v4, v3, :cond_12

    :goto_f
    :try_start_10
    throw v4
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 1489
    :catch_2
    move-exception v3

    move v10, v5

    move-object v15, v3

    move-object v3, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 1454
    :catchall_5
    move-exception v3

    if-nez v4, :cond_10

    :goto_10
    :try_start_11
    throw v3

    :catchall_6
    move-exception v4

    move-object v15, v4

    move-object v4, v3

    move-object v3, v15

    goto :goto_e

    :cond_10
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    goto :goto_10

    :cond_11
    move-object v4, v3

    goto :goto_f

    :cond_12
    :try_start_12
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_f

    .line 1455
    :cond_13
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1457
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "queryAllMediaStoreContent() - No more media in camera roll"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CameraRollMediaCount:I
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    move v9, v5

    .line 1459
    goto/16 :goto_4

    :cond_14
    const/4 v8, 0x0

    .line 1468
    :try_start_13
    sget-object v3, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_FILE:Landroid/net/Uri;

    sget-object v4, Lcom/oneplus/gallery2/media/MediaStoreMedia;->MEDIA_STORE_COLUMNS:[Ljava/lang/String;

    const-string/jumbo v5, "media_type=1 OR media_type=3"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "datetaken DESC, _id DESC LIMIT 512 OFFSET "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v7, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CameraRollMediaCount:I

    sub-int v7, p3, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    move-result-object v4

    move v5, v9

    .line 1470
    :cond_15
    :goto_11
    :try_start_14
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1472
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11, v14}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->handleQueriedDataInMediaStore(Landroid/database/Cursor;Ljava/util/List;Ljava/util/List;)Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    move-result v3

    if-nez v3, :cond_15

    .line 1473
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 1484
    :cond_16
    if-nez v4, :cond_17

    :goto_12
    move v10, v5

    goto/16 :goto_0

    :cond_17
    :try_start_15
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    goto :goto_12

    :catchall_7
    move-exception v3

    move-object v4, v8

    :goto_13
    if-eqz v4, :cond_19

    if-ne v4, v3, :cond_1a

    :goto_14
    :try_start_16
    throw v4
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_2
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    :catchall_8
    move-exception v3

    if-nez v4, :cond_18

    :goto_15
    :try_start_17
    throw v3

    :catchall_9
    move-exception v4

    move-object v15, v4

    move-object v4, v3

    move-object v3, v15

    goto :goto_13

    :cond_18
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    goto :goto_15

    :cond_19
    move-object v4, v3

    goto :goto_14

    :cond_1a
    :try_start_18
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_2
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    goto :goto_14

    .line 1497
    :cond_1b
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_b

    :cond_1c
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_1

    :catchall_a
    move-exception v2

    goto/16 :goto_a

    .line 1489
    :catch_3
    move-exception v2

    goto/16 :goto_8

    move-exception v3

    move v10, v9

    move-object v15, v3

    move-object v3, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 1484
    :catchall_b
    move-exception v3

    move-object v4, v8

    move v5, v9

    goto :goto_13

    .line 1454
    :catchall_c
    move-exception v3

    move-object v4, v9

    move v5, v10

    goto/16 :goto_e
.end method

.method private queryMediaStoreContent(J)V
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 1515
    :try_start_0
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_FILE:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move-result-object v0

    .line 1516
    if-nez v0, :cond_1

    .line 1549
    :try_start_1
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "queryMediaStoreContent() - Fail to acquire content provider client"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    move-object v2, v8

    .line 1557
    :cond_0
    :goto_0
    if-nez v0, :cond_c

    :goto_1
    const/16 v0, 0x2712

    const/4 v1, 0x3

    .line 1559
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    aput-object v6, v1, v3

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;ILjava/lang/Object;)Z

    .line 1561
    :goto_2
    return-void

    .line 1518
    :cond_1
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_STRING_FILE:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    move-result-object v1

    const/4 v7, 0x0

    .line 1519
    :try_start_3
    sget-object v2, Lcom/oneplus/gallery2/media/MediaStoreMedia;->MEDIA_STORE_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v3

    .line 1521
    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v1

    if-nez v1, :cond_2

    move-object v2, v8

    .line 1546
    :goto_3
    if-eqz v3, :cond_0

    :try_start_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v3, v2

    move-object v2, v7

    :goto_4
    if-eqz v2, :cond_8

    if-ne v2, v1, :cond_9

    :goto_5
    :try_start_6
    throw v2
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1550
    :catch_0
    move-exception v1

    move-object v8, v3

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    .line 1553
    :goto_6
    :try_start_7
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "queryMediaStoreContent() - Fail to query from media store, media ID : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 1557
    if-nez v1, :cond_a

    :goto_7
    const/16 v0, 0x2712

    const/4 v1, 0x3

    .line 1559
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v6, v1, v2

    const/4 v2, 0x2

    aput-object v8, v1, v2

    invoke-static {p0, v0, v1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;ILjava/lang/Object;)Z

    goto :goto_2

    .line 1524
    :cond_2
    :try_start_8
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_TempDbValueList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1525
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_TempFileInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1526
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_TempDbValueList:Ljava/util/List;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_TempFileInfoList:Ljava/util/List;

    invoke-direct {p0, v3, v1, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->handleQueriedDataInMediaStore(Landroid/database/Cursor;Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1546
    :cond_3
    if-nez v3, :cond_5

    .line 1557
    :goto_8
    if-nez v0, :cond_6

    :goto_9
    const/16 v1, 0x2712

    const/4 v2, 0x3

    .line 1559
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    aput-object v6, v2, v4

    const/4 v4, 0x2

    aput-object v8, v2, v4

    invoke-static {p0, v1, v2}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;ILjava/lang/Object;)Z

    .line 1530
    return-void

    .line 1527
    :cond_4
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_TempDbValueList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1528
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_TempFileInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1532
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_TempDbValueList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1533
    :try_start_9
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_TempFileInfoList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    move-object v6, v1

    goto/16 :goto_3

    .line 1546
    :cond_5
    :try_start_a
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v1

    move-object v2, v7

    move-object v3, v8

    goto/16 :goto_4

    .line 1558
    :cond_6
    :try_start_b
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_9

    .line 1546
    :catchall_2
    move-exception v1

    move-object v2, v6

    :goto_a
    if-nez v3, :cond_7

    :goto_b
    :try_start_c
    throw v1

    :catchall_3
    move-exception v3

    move-object v6, v2

    move-object v2, v1

    move-object v1, v3

    move-object v3, v8

    goto/16 :goto_4

    :cond_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_b

    .line 1550
    move-exception v1

    move-object v6, v2

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto/16 :goto_6

    :cond_8
    move-object v2, v1

    .line 1546
    goto/16 :goto_5

    :cond_9
    :try_start_d
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto/16 :goto_5

    .line 1559
    :catchall_4
    move-exception v1

    move-object v8, v3

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    .line 1557
    :goto_c
    if-nez v1, :cond_b

    :goto_d
    const/16 v1, 0x2712

    const/4 v2, 0x3

    .line 1559
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v6, v2, v3

    const/4 v3, 0x2

    aput-object v8, v2, v3

    invoke-static {p0, v1, v2}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;ILjava/lang/Object;)Z

    .line 1560
    throw v0

    .line 1558
    :cond_a
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_7

    :cond_b
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_d

    :cond_c
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_1

    .line 1559
    :catchall_5
    move-exception v0

    goto :goto_c

    :catchall_6
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_c

    move-exception v2

    move-object v6, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_c

    move-exception v1

    move-object v8, v2

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto :goto_c

    move-exception v1

    move-object v6, v2

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto :goto_c

    .line 1550
    :catch_1
    move-exception v0

    goto/16 :goto_6

    :catch_2
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto/16 :goto_6

    move-exception v2

    move-object v6, v1

    move-object v1, v0

    move-object v0, v2

    goto/16 :goto_6

    move-exception v1

    move-object v8, v2

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto/16 :goto_6

    .line 1546
    move-exception v2

    move-object v3, v8

    move-object v6, v1

    move-object v1, v2

    move-object v2, v7

    goto/16 :goto_4

    :catchall_7
    move-exception v2

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto/16 :goto_a
.end method

.method private releaseMedia(Lcom/oneplus/gallery2/media/Media;)V
    .locals 1

    .prologue
    .line 1639
    if-eqz p1, :cond_0

    .line 1641
    instance-of v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    if-nez v0, :cond_1

    .line 1643
    instance-of v0, p1, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;

    if-nez v0, :cond_2

    .line 1645
    :goto_0
    return-void

    .line 1640
    :cond_0
    return-void

    .line 1642
    :cond_1
    check-cast p1, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->release()V

    goto :goto_0

    .line 1644
    :cond_2
    check-cast p1, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;

    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;->release()V

    goto :goto_0
.end method

.method private removeFromGroupedMedia(Lcom/oneplus/gallery2/media/MediaStoreMedia;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1613
    if-nez p1, :cond_1

    .line 1615
    :cond_0
    return v1

    .line 1613
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isSubMedia()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1614
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->removeFromGroupedMedia(Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaStoreMedia;)Z

    move-result v0

    return v0
.end method

.method private removeFromGroupedMedia(Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaStoreMedia;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1619
    invoke-virtual {p0, p1, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia(Ljava/lang/String;I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    .line 1620
    if-nez v0, :cond_0

    .line 1632
    return v1

    .line 1622
    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->getSubMediaCount()I

    move-result v1

    if-eq v1, v4, :cond_2

    .line 1628
    :cond_1
    :goto_0
    invoke-virtual {v0, p2}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->removeSubMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v0

    .line 1629
    invoke-virtual {p2}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->release()V

    .line 1630
    return v0

    .line 1622
    :cond_2
    invoke-virtual {v0, p2}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->contains(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1624
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "removeFromGroupedMedia() - Remove "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1625
    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->prepareMediaFlagsForCallback(Lcom/oneplus/gallery2/media/Media;)I

    move-result v1

    invoke-virtual {p0, v0, v4, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->removeMedia(Lcom/oneplus/gallery2/media/Media;ZI)Z

    .line 1626
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->releaseMedia(Lcom/oneplus/gallery2/media/Media;)V

    goto :goto_0
.end method

.method private restoreMedia(Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;)V
    .locals 3

    .prologue
    .line 1652
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->verifyAccess()V

    .line 1653
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->isRunningOrInitializing(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1657
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;->getMedia()Lcom/oneplus/gallery2/media/Media;

    move-result-object v0

    .line 1658
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_RecycledMedia:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1665
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;->getFlags()I

    move-result v1

    sget v2, Lcom/oneplus/gallery2/media/Media;->FLAG_MOVE_TO_RECYCE_BIN:I

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    .line 1666
    sget v2, Lcom/oneplus/gallery2/media/Media;->FLAG_RESTORE_FROM_RECYCLE_BIN:I

    or-int/2addr v1, v2

    .line 1667
    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->notifyMediaCreated(Lcom/oneplus/gallery2/media/Media;I)V

    .line 1668
    return-void

    .line 1654
    :cond_0
    return-void

    .line 1660
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "restoreMedia() - Media is not contained in recycle bin"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1661
    return-void
.end method

.method private syncMediaWithMediaStore()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1674
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->isRunningOrInitializing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1676
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PermissionsReady:Z

    if-eqz v0, :cond_1

    .line 1682
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->PROP_IS_ACTIVE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1693
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia()Ljava/util/Collection;

    move-result-object v0

    .line 1694
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "syncMediaWithMediaStore() - Media table size : "

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1695
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CandidateMediaToRemove:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 1696
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CandidateMediaToRemove:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1697
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_MediaStoreSyncToken:Ljava/lang/Object;

    .line 1698
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_HasPendingMediaSyncWithMediaStore:Z

    if-nez v0, :cond_4

    .line 1703
    :goto_1
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v0

    new-instance v1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$QueryAllMediaStoreContentRunnable;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_MediaStoreSyncToken:Ljava/lang/Object;

    iget v3, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_Mode:I

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$QueryAllMediaStoreContentRunnable;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Ljava/lang/Object;II)V

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 1704
    return-void

    .line 1675
    :cond_0
    return-void

    .line 1678
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "syncMediaWithMediaStore() - Start full media sync when permissions ready"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1679
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_NeedToSyncMediaWhenPermsReady:Z

    .line 1680
    return-void

    .line 1684
    :cond_2
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaSyncCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaSyncCount:I

    .line 1685
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaSyncCount:I

    const/16 v1, 0x10

    if-le v0, v1, :cond_3

    .line 1690
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "syncMediaWithMediaStore() - Too many pending full media sync"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1691
    iput v4, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaSyncCount:I

    goto :goto_0

    .line 1687
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "syncMediaWithMediaStore() - Start full media sync when activated, pending sync count : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaSyncCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1688
    return-void

    .line 1700
    :cond_4
    iput-boolean v4, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_HasPendingMediaSyncWithMediaStore:Z

    const/16 v0, 0x2711

    .line 1701
    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    goto :goto_1
.end method

.method private syncMediaWithMediaStore(JLcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 1731
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->isRunningOrInitializing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1735
    invoke-static {p1, p2}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getId(J)Ljava/lang/String;

    move-result-object v0

    .line 1736
    invoke-virtual {p0, v0, v6}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia(Ljava/lang/String;I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    .line 1737
    if-eqz p3, :cond_1

    .line 1751
    if-eqz v0, :cond_3

    .line 1765
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getGroupId()Ljava/lang/String;

    move-result-object v1

    .line 1766
    invoke-virtual {v0, p3, p4}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->update(Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)I

    move-result v2

    .line 1767
    if-nez v2, :cond_5

    .line 1788
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->callOnMediaObtained(JLcom/oneplus/gallery2/media/Media;)V

    .line 1789
    return-void

    .line 1732
    :cond_0
    return-void

    .line 1739
    :cond_1
    if-nez v0, :cond_2

    .line 1746
    :goto_1
    invoke-direct {p0, p1, p2, v4}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->callOnMediaObtained(JLcom/oneplus/gallery2/media/Media;)V

    .line 1747
    return-void

    .line 1741
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "syncMediaWithMediaStore() - Remove "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1742
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->removeFromGroupedMedia(Lcom/oneplus/gallery2/media/MediaStoreMedia;)Z

    .line 1743
    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->prepareMediaFlagsForCallback(Lcom/oneplus/gallery2/media/Media;)I

    move-result v1

    invoke-virtual {p0, v0, v5, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->removeMedia(Lcom/oneplus/gallery2/media/Media;ZI)Z

    .line 1744
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->releaseMedia(Lcom/oneplus/gallery2/media/Media;)V

    goto :goto_1

    .line 1753
    :cond_3
    invoke-static {p0, p3, p4}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->create(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)Lcom/oneplus/gallery2/media/MediaStoreMedia;

    move-result-object v0

    .line 1754
    if-nez v0, :cond_4

    .line 1760
    :goto_2
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->callOnMediaObtained(JLcom/oneplus/gallery2/media/Media;)V

    .line 1761
    return-void

    .line 1756
    :cond_4
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "syncMediaWithMediaStore() - Add "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1757
    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->prepareMediaFlagsForCallback(Lcom/oneplus/gallery2/media/Media;)I

    move-result v1

    invoke-virtual {p0, v0, v5, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->addMedia(Lcom/oneplus/gallery2/media/Media;ZI)Z

    .line 1758
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->addToGroupedMedia(Lcom/oneplus/gallery2/media/MediaStoreMedia;)Z

    goto :goto_2

    .line 1769
    :cond_5
    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "syncMediaWithMediaStore() - Update "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1770
    sget v3, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_GROUP_CHANGED:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_7

    .line 1781
    invoke-direct {p0, v1, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->removeFromGroupedMedia(Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaStoreMedia;)Z

    .line 1782
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->addToGroupedMedia(Lcom/oneplus/gallery2/media/MediaStoreMedia;)Z

    .line 1784
    :cond_6
    :goto_3
    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->prepareMediaFlagsForCallback(Lcom/oneplus/gallery2/media/Media;)I

    move-result v1

    or-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->notifyMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_0

    .line 1772
    :cond_7
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isSubMedia()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1774
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v6}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia(Ljava/lang/String;I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    .line 1775
    if-eqz v1, :cond_6

    .line 1776
    invoke-virtual {v1, v0, v2}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->notifySubMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_3
.end method

.method private syncMediaWithMediaStore(Landroid/net/Uri;)V
    .locals 4

    .prologue
    .line 1707
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->isRunningOrInitializing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1713
    :try_start_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 1719
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v2

    new-instance v3, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$13;

    invoke-direct {v3, p0, v0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$13;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;J)V

    invoke-static {v2, v3}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 1727
    return-void

    .line 1708
    :cond_0
    return-void

    .line 1714
    :catch_0
    move-exception v0

    .line 1717
    return-void
.end method

.method private syncMediaWithMediaStore(Ljava/lang/Object;IILjava/util/List;Ljava/util/List;)V
    .locals 17
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
    .line 1793
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->isRunningOrInitializing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1795
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_MediaStoreSyncToken:Ljava/lang/Object;

    move-object/from16 v0, p1

    if-ne v2, v0, :cond_2

    .line 1801
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "syncMediaWithMediaStore() - Offset : "

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1804
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1808
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 1809
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 1810
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v8, v2

    :goto_0
    if-ltz v8, :cond_1d

    .line 1813
    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;

    .line 1814
    move-object/from16 v0, p5

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;

    .line 1815
    iget-wide v14, v2, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->id:J

    invoke-static {v14, v15}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getId(J)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    .line 1816
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia(Ljava/lang/String;I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    const/4 v9, 0x0

    .line 1820
    if-eqz v4, :cond_3

    .line 1859
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CandidateMediaToRemove:Ljava/util/Set;

    invoke-interface {v14, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1860
    invoke-virtual {v4}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getGroupId()Ljava/lang/String;

    move-result-object v14

    .line 1861
    invoke-virtual {v4, v2, v3}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->update(Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)I

    move-result v15

    .line 1862
    if-nez v15, :cond_b

    .line 1928
    invoke-virtual {v4}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isSubMedia()Z

    move-result v2

    if-nez v2, :cond_1b

    move-object v2, v9

    .line 1932
    :goto_1
    if-nez v2, :cond_1c

    .line 1810
    :cond_0
    :goto_2
    add-int/lit8 v2, v8, -0x1

    move v8, v2

    goto :goto_0

    .line 1794
    :cond_1
    return-void

    .line 1797
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "syncMediaWithMediaStore() - Different token, ignore"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1798
    return-void

    .line 1822
    :cond_3
    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->create(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)Lcom/oneplus/gallery2/media/MediaStoreMedia;

    move-result-object v4

    .line 1823
    if-eqz v4, :cond_0

    const/4 v2, 0x0

    .line 1826
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->addMedia(Lcom/oneplus/gallery2/media/Media;ZI)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1828
    if-eqz v5, :cond_4

    move-object v3, v5

    .line 1830
    :goto_3
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1834
    invoke-virtual {v4}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isSubMedia()Z

    move-result v2

    if-nez v2, :cond_5

    move-object v5, v3

    goto :goto_2

    .line 1829
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v2

    goto :goto_3

    .line 1836
    :cond_5
    invoke-virtual {v4}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getGroupId()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia(Ljava/lang/String;I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    .line 1837
    if-eqz v2, :cond_6

    .line 1839
    :goto_4
    if-eqz v2, :cond_7

    .line 1849
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CandidateMediaToRemove:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1850
    :goto_5
    invoke-interface {v13, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 1852
    :goto_6
    invoke-virtual {v2, v4}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->addSubMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-object v5, v3

    .line 1855
    goto :goto_2

    .line 1838
    :cond_6
    invoke-virtual {v4}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    goto :goto_4

    .line 1841
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->createGroupedMedia(Lcom/oneplus/gallery2/media/MediaStoreMedia;)Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    move-result-object v2

    .line 1842
    if-nez v2, :cond_8

    move-object v5, v3

    goto :goto_2

    :cond_8
    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9, v5}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->addMedia(Lcom/oneplus/gallery2/media/Media;ZI)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1844
    invoke-virtual {v2}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v12, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1845
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    move-object v5, v3

    .line 1843
    goto/16 :goto_2

    .line 1851
    :cond_a
    invoke-virtual {v2}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->startSubMediaUpdate()V

    goto :goto_6

    .line 1865
    :cond_b
    if-eqz v7, :cond_d

    move-object v3, v6

    move-object v6, v7

    .line 1870
    :goto_7
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1871
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1872
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "syncMediaWithMediaStore() - Update "

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1875
    sget v2, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_GROUP_CHANGED:I

    and-int/2addr v2, v15

    if-eqz v2, :cond_e

    .line 1891
    if-nez v14, :cond_12

    .line 1903
    :cond_c
    :goto_8
    invoke-virtual {v4}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isSubMedia()Z

    move-result v2

    if-nez v2, :cond_14

    const/4 v2, 0x0

    move-object v7, v6

    move-object v6, v3

    .line 1927
    goto/16 :goto_1

    .line 1867
    :cond_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1868
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v3

    move-object v3, v2

    goto :goto_7

    .line 1877
    :cond_e
    invoke-virtual {v4}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isSubMedia()Z

    move-result v2

    if-nez v2, :cond_f

    move-object v2, v9

    move-object v7, v6

    move-object v6, v3

    goto/16 :goto_1

    .line 1879
    :cond_f
    invoke-virtual {v4}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getGroupId()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia(Ljava/lang/String;I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    .line 1880
    if-nez v2, :cond_10

    move-object v7, v6

    move-object v6, v3

    goto/16 :goto_1

    .line 1882
    :cond_10
    invoke-interface {v13, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 1884
    :goto_9
    invoke-virtual {v2, v4, v15}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->notifySubMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V

    move-object v7, v6

    move-object v6, v3

    .line 1887
    goto/16 :goto_1

    .line 1883
    :cond_11
    invoke-virtual {v2}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->startSubMediaUpdate()V

    goto :goto_9

    :cond_12
    const/4 v2, 0x0

    .line 1893
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia(Ljava/lang/String;I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    .line 1894
    if-eqz v2, :cond_c

    .line 1896
    invoke-interface {v13, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    .line 1898
    :goto_a
    invoke-virtual {v2, v4}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->removeSubMedia(Lcom/oneplus/gallery2/media/Media;)Z

    goto :goto_8

    .line 1897
    :cond_13
    invoke-virtual {v2}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->startSubMediaUpdate()V

    goto :goto_a

    .line 1905
    :cond_14
    invoke-virtual {v4}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getGroupId()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia(Ljava/lang/String;I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    .line 1906
    if-eqz v2, :cond_15

    .line 1908
    :goto_b
    if-eqz v2, :cond_16

    .line 1919
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CandidateMediaToRemove:Ljava/util/Set;

    invoke-interface {v7, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1920
    :goto_c
    invoke-interface {v13, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1a

    .line 1922
    :goto_d
    invoke-virtual {v2, v4}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->addSubMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-object v7, v6

    move-object v6, v3

    .line 1923
    goto/16 :goto_1

    .line 1907
    :cond_15
    invoke-virtual {v4}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    goto :goto_b

    .line 1910
    :cond_16
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->createGroupedMedia(Lcom/oneplus/gallery2/media/MediaStoreMedia;)Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    move-result-object v2

    .line 1911
    if-nez v2, :cond_17

    move-object v7, v6

    move-object v6, v3

    goto/16 :goto_2

    :cond_17
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9, v7}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->addMedia(Lcom/oneplus/gallery2/media/Media;ZI)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 1913
    invoke-virtual {v2}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v12, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1914
    if-eqz v5, :cond_19

    .line 1916
    :goto_e
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_18
    move-object v7, v6

    move-object v6, v3

    .line 1912
    goto/16 :goto_2

    .line 1915
    :cond_19
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    goto :goto_e

    .line 1921
    :cond_1a
    invoke-virtual {v2}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->startSubMediaUpdate()V

    goto :goto_d

    .line 1929
    :cond_1b
    invoke-virtual {v4}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getGroupId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia(Ljava/lang/String;I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    goto/16 :goto_1

    .line 1933
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CandidateMediaToRemove:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1937
    :cond_1d
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_23

    .line 1938
    :cond_1e
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v2

    new-instance v3, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$QueryAllMediaStoreContentRunnable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_MediaStoreSyncToken:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_Mode:I

    add-int v9, p2, p3

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v12

    add-int/2addr v9, v12

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v8, v9}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$QueryAllMediaStoreContentRunnable;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Ljava/lang/Object;II)V

    invoke-static {v2, v3}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 1976
    :cond_1f
    invoke-interface {v13}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1994
    :cond_20
    if-nez v5, :cond_2a

    .line 2003
    :cond_21
    if-nez v7, :cond_2b

    .line 2013
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "syncMediaWithMediaStore() - Media table size : "

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2016
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 2021
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_IsMediaTableReady:Z

    if-eqz v2, :cond_2d

    .line 2026
    :goto_f
    return-void

    .line 1937
    :cond_23
    if-gtz p3, :cond_1e

    .line 1941
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "syncMediaWithMediaStore() - This is last chunk"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1942
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CandidateMediaToRemove:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 1944
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "syncMediaWithMediaStore() - Remove "

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CandidateMediaToRemove:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v8, " media"

    invoke-static {v2, v3, v4, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1945
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CandidateMediaToRemove:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CandidateMediaToRemove:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/oneplus/gallery2/media/Media;

    .line 1946
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CandidateMediaToRemove:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 1947
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    move v8, v3

    :goto_10
    if-ltz v8, :cond_1f

    .line 1950
    aget-object v4, v2, v8

    .line 1951
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "syncMediaWithMediaStore() - Remove "

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1952
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->prepareMediaFlagsForCallback(Lcom/oneplus/gallery2/media/Media;)I

    move-result v3

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9, v3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->removeMedia(Lcom/oneplus/gallery2/media/Media;ZI)Z

    .line 1953
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->releaseMedia(Lcom/oneplus/gallery2/media/Media;)V

    .line 1956
    instance-of v9, v4, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    .line 1957
    if-nez v9, :cond_25

    .line 1969
    :cond_24
    :goto_11
    if-nez v9, :cond_27

    .line 1947
    :goto_12
    add-int/lit8 v3, v8, -0x1

    move v8, v3

    goto :goto_10

    :cond_25
    move-object v3, v4

    .line 1957
    check-cast v3, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    invoke-virtual {v3}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isSubMedia()Z

    move-result v3

    if-eqz v3, :cond_24

    move-object v3, v4

    .line 1959
    check-cast v3, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    invoke-virtual {v3}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getGroupId()Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia(Ljava/lang/String;I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    .line 1960
    if-eqz v3, :cond_24

    .line 1962
    invoke-interface {v13, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_26

    .line 1964
    :goto_13
    invoke-virtual {v3, v4}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->removeSubMedia(Lcom/oneplus/gallery2/media/Media;)Z

    goto :goto_11

    .line 1963
    :cond_26
    invoke-virtual {v3}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->startSubMediaUpdate()V

    goto :goto_13

    .line 1970
    :cond_27
    check-cast v4, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    invoke-virtual {v4}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->release()V

    goto :goto_12

    .line 1978
    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "syncMediaWithMediaStore() - Complete updating "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v13}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " grouped media"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1979
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_29
    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    .line 1982
    invoke-virtual {v2}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->completeSubMediaUpdate()V

    .line 1985
    invoke-virtual {v2}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->getSubMediaCount()I

    move-result v4

    if-nez v4, :cond_29

    .line 1987
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->prepareMediaFlagsForCallback(Lcom/oneplus/gallery2/media/Media;)I

    move-result v4

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8, v4}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->removeMedia(Lcom/oneplus/gallery2/media/Media;ZI)Z

    .line 1988
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->releaseMedia(Lcom/oneplus/gallery2/media/Media;)V

    goto :goto_14

    .line 1996
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "syncMediaWithMediaStore() - Add "

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v8, " media"

    invoke-static {v2, v3, v4, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1997
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v3, v2

    :goto_15
    if-ltz v3, :cond_21

    .line 1999
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/Media;

    .line 2000
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->prepareMediaFlagsForCallback(Lcom/oneplus/gallery2/media/Media;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->notifyMediaCreated(Lcom/oneplus/gallery2/media/Media;I)V

    .line 1997
    add-int/lit8 v2, v3, -0x1

    move v3, v2

    goto :goto_15

    .line 2005
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "syncMediaWithMediaStore() - Update "

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, " media"

    invoke-static {v2, v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2006
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v4, v2

    :goto_16
    if-ltz v4, :cond_22

    .line 2008
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/Media;

    .line 2009
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->prepareMediaFlagsForCallback(Lcom/oneplus/gallery2/media/Media;)I

    move-result v5

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    or-int/2addr v3, v5

    .line 2010
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->notifyMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V

    .line 2006
    add-int/lit8 v2, v4, -0x1

    move v4, v2

    goto :goto_16

    .line 2018
    :cond_2c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v4, v2, v10

    .line 2019
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "syncMediaWithMediaStore() - Take "

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string/jumbo v5, " ms to handle "

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v7, " entries"

    invoke-static/range {v2 .. v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 2023
    :cond_2d
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_IsMediaTableReady:Z

    .line 2024
    sget-object v2, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->PROP_IS_MEDIA_TABLE_READY:Lcom/oneplus/base/PropertyKey;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_f
.end method

.method private syncMediaWithMediaStoreDelayed(Z)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2032
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_HasPendingMediaSyncWithMediaStore:Z

    if-eqz v0, :cond_0

    .line 2053
    :goto_0
    return-void

    .line 2034
    :cond_0
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->PROP_IS_ACTIVE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2036
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onMediaStoreContentChanged() - Schedule full media sync"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2037
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_HasPendingMediaSyncWithMediaStore:Z

    .line 2038
    iput v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaSyncCount:I

    const/16 v0, 0x2711

    const-wide/16 v2, 0x3e8

    .line 2039
    invoke-static {p0, v0, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IJ)Z

    goto :goto_0

    .line 2034
    :cond_2
    if-nez p1, :cond_1

    .line 2043
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaSyncCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaSyncCount:I

    .line 2044
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaSyncCount:I

    const/16 v1, 0x10

    if-le v0, v1, :cond_3

    .line 2048
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "syncMediaWithMediaStoreDelayed() - Too many pending full media sync"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2049
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->syncMediaWithMediaStore()V

    goto :goto_0

    .line 2045
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "syncMediaWithMediaStoreDelayed() - Start full media sync when activated, pending sync count : "

    iget v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaSyncCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private updateMode()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 2132
    iget v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_Mode:I

    .line 2133
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getActivationHandleCount()I

    move-result v2

    .line 2134
    if-eqz v2, :cond_0

    .line 2136
    iget v3, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CameraRollOnlyFlagCount:I

    if-ge v3, v2, :cond_1

    :goto_0
    iput v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_Mode:I

    .line 2137
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_Mode:I

    if-ne v1, v0, :cond_2

    .line 2149
    :goto_1
    return-void

    .line 2135
    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    .line 2136
    goto :goto_0

    .line 2139
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateMode() - Change mode from "

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v3, " to "

    iget v4, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_Mode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v2, v1, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2140
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_Mode:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 2144
    :pswitch_0
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->syncMediaWithMediaStore()V

    goto :goto_1

    .line 2140
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public deleteFromMediaStore(Ljava/lang/CharSequence;[Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;)Lcom/oneplus/base/Handle;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 328
    if-eqz p1, :cond_0

    .line 335
    new-instance v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$3;

    const-string/jumbo v1, "DeleteFromMediaStore"

    invoke-direct {v0, p0, v1, p3, v3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$3;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;Landroid/os/Handler;)V

    .line 341
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$4;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$4;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/base/CallbackHandle;Ljava/lang/CharSequence;[Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v1

    .line 370
    if-eqz v1, :cond_1

    .line 375
    return-object v0

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteFromMediaStore() - No selection"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    return-object v3

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteFromMediaStore() - Fail to post to media content thread"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    return-object v3
.end method

.method final deleteMedia(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 389
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->verifyAccess()V

    .line 390
    invoke-virtual {p0, v5}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->isRunningOrInitializing(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    if-eqz p1, :cond_2

    .line 399
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->containsMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 406
    sget v0, Lcom/oneplus/gallery2/media/Media;->FLAG_MOVE_TO_RECYCE_BIN:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p3

    .line 407
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->prepareMediaFlagsForCallback(Lcom/oneplus/gallery2/media/Media;)I

    move-result v1

    or-int/2addr v0, v1

    .line 408
    new-instance v1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)V

    .line 409
    if-nez p2, :cond_4

    .line 413
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_RecycledMedia:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 417
    :goto_1
    instance-of v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    if-nez v0, :cond_6

    .line 433
    invoke-direct {p0, v1, v5}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->onMediaDeleted(Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;Z)V

    .line 436
    :cond_0
    :goto_2
    return-object v1

    .line 391
    :cond_1
    return-object v3

    .line 396
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteMedia() - No media to delete"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    return-object v3

    .line 401
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "deleteMedia() - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not contained in media table"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    return-object v3

    .line 410
    :cond_4
    invoke-virtual {p2, p1, v0}, Lcom/oneplus/gallery2/media/Media$DeletionCallback;->onDeletionStarted(Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_0

    .line 414
    :cond_5
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "deleteMedia() - Remove "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " from recycle bin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 419
    :cond_6
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v0

    new-instance v2, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$5;

    invoke-direct {v2, p0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$5;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;)V

    invoke-static {v0, v2}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    .line 426
    if-nez v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "deleteMedia() - Fail to post to media content thread"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    invoke-direct {p0, v1, v4}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->onMediaDeleted(Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;Z)V

    goto :goto_2
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
    .line 535
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->PROP_IS_MEDIA_TABLE_READY:Lcom/oneplus/base/PropertyKey;

    if-eq p1, v0, :cond_0

    .line 537
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSource;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 536
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_IsMediaTableReady:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getGroupedMedia(Lcom/oneplus/gallery2/media/Media;I)[Lcom/oneplus/gallery2/media/GroupedMedia;
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 545
    instance-of v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    if-nez v0, :cond_1

    .line 556
    :cond_0
    return-object v1

    .line 547
    :cond_1
    check-cast p1, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    .line 548
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isSubMedia()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getGroupId()Ljava/lang/String;

    move-result-object v0

    .line 551
    invoke-virtual {p0, v0, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia(Ljava/lang/String;I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/GroupedMedia;

    .line 552
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 553
    new-array v1, v1, [Lcom/oneplus/gallery2/media/GroupedMedia;

    aput-object v0, v1, v2

    return-object v1
.end method

.method public getMedia(Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;I)Lcom/oneplus/base/Handle;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 576
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->verifyAccess()V

    .line 577
    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->isRunningOrInitializing(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 579
    if-eqz p1, :cond_2

    .line 586
    sget v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->FLAG_ALWAYS_REFRESH:I

    and-int/2addr v0, p3

    if-eqz v0, :cond_3

    .line 598
    :cond_0
    new-instance v0, Lcom/oneplus/base/SimpleRef;

    invoke-direct {v0}, Lcom/oneplus/base/SimpleRef;-><init>()V

    .line 599
    invoke-static {p1, v0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isValidId(Ljava/lang/String;Lcom/oneplus/base/Ref;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 604
    invoke-interface {v0}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_STRING_FILE:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 608
    new-instance v1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$6;

    const-string/jumbo v3, "GetMedia"

    move-object v2, p0

    move-object v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$6;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;Landroid/os/Handler;J)V

    .line 618
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_MediaObtainCallbackHandles:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 619
    if-eqz v0, :cond_6

    .line 624
    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    invoke-direct {p0, v8}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->syncMediaWithMediaStore(Landroid/net/Uri;)V

    .line 630
    return-object v1

    .line 578
    :cond_1
    return-object v5

    .line 581
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getMedia() - No media ID"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    return-object v5

    .line 588
    :cond_3
    invoke-virtual {p0, p1, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia(Ljava/lang/String;I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v4

    .line 589
    if-eqz v4, :cond_0

    .line 591
    if-nez p2, :cond_4

    .line 593
    :goto_1
    new-instance v0, Lcom/oneplus/base/EmptyHandle;

    const-string/jumbo v1, "GetMedia"

    invoke-direct {v0, v1}, Lcom/oneplus/base/EmptyHandle;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 592
    :cond_4
    invoke-interface {v4}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->prepareMediaFlagsForCallback(Lcom/oneplus/gallery2/media/Media;)I

    move-result v5

    move-object v0, p2

    move-object v1, p0

    move-object v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;->onMediaObtained(Lcom/oneplus/gallery2/media/MediaSource;Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_1

    .line 601
    :cond_5
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getMedia() - Invalid ID : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    return-object v5

    .line 621
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 622
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_MediaObtainCallbackHandles:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getMedia(J)Lcom/oneplus/gallery2/media/MediaStoreMedia;
    .locals 3

    .prologue
    .line 567
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

    .prologue
    const/4 v3, 0x0

    .line 643
    if-eqz p1, :cond_0

    .line 648
    if-eqz p2, :cond_1

    .line 655
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PermissionsReady:Z

    if-eqz v0, :cond_2

    .line 662
    new-instance v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$7;

    const-string/jumbo v1, "GetMediaContentURI"

    invoke-direct {v0, p0, v1, p2, v3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$7;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;Landroid/os/Handler;)V

    .line 668
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$8;

    invoke-direct {v2, p0, v0, p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$8;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/base/CallbackHandle;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v1

    .line 702
    if-eqz v1, :cond_3

    .line 707
    return-object v0

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getMediaContentUri() - No file path"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    return-object v3

    .line 650
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getMediaContentUri() - No call-back to receive result"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    return-object v3

    .line 657
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getMediaContentUri() - Permissions not ready"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    return-object v3

    .line 704
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getMediaContentUri() - Fail to post to media content thread"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    return-object v3
.end method

.method public getMediaId(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 715
    new-instance v0, Lcom/oneplus/base/SimpleRef;

    invoke-direct {v0}, Lcom/oneplus/base/SimpleRef;-><init>()V

    .line 716
    invoke-static {p1, v0}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->parsePhotoContentUri(Landroid/net/Uri;Lcom/oneplus/base/Ref;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 720
    :cond_0
    invoke-interface {v0}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getId(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 717
    :cond_1
    invoke-static {p1, v0}, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->parseVideoContentUri(Landroid/net/Uri;Lcom/oneplus/base/Ref;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 718
    invoke-static {p1, v0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->parseFileContentUri(Landroid/net/Uri;Lcom/oneplus/base/Ref;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 722
    return-object v0
.end method

.method protected getRecycledMedia(Lcom/oneplus/gallery2/media/MediaType;I)Ljava/lang/Iterable;
    .locals 2
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
    .line 730
    sget v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->FLAG_EXPAND_GROUPED_MEDIA:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    .line 732
    new-instance v0, Lcom/oneplus/gallery2/media/BaseMediaSource$ExpandedMediaIterable;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_RecycledMedia:Ljava/util/Set;

    invoke-direct {v0, p0, p1, v1}, Lcom/oneplus/gallery2/media/BaseMediaSource$ExpandedMediaIterable;-><init>(Lcom/oneplus/gallery2/media/BaseMediaSource;Lcom/oneplus/gallery2/media/MediaType;Ljava/lang/Iterable;)V

    return-object v0

    .line 731
    :cond_0
    new-instance v0, Lcom/oneplus/gallery2/media/BaseMediaSource$NormalMediaIterable;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_RecycledMedia:Ljava/util/Set;

    invoke-direct {v0, p0, p1, v1}, Lcom/oneplus/gallery2/media/BaseMediaSource$NormalMediaIterable;-><init>(Lcom/oneplus/gallery2/media/BaseMediaSource;Lcom/oneplus/gallery2/media/MediaType;Ljava/lang/Iterable;)V

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 741
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 805
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSource;->handleMessage(Landroid/os/Message;)V

    .line 808
    :cond_0
    :goto_0
    return-void

    .line 745
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 746
    aget-object v1, v0, v1

    check-cast v1, Lcom/oneplus/base/CallbackHandle;

    aget-object v0, v0, v4

    check-cast v0, Landroid/net/Uri;

    invoke-direct {p0, v1, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->onMediaContentUriQueried(Lcom/oneplus/base/CallbackHandle;Landroid/net/Uri;)V

    goto :goto_0

    .line 752
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_1

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->onMediaDeleted(Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;Z)V

    goto :goto_0

    :cond_1
    move v1, v4

    goto :goto_1

    .line 758
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 759
    aget-object v1, v0, v1

    check-cast v1, Lcom/oneplus/base/CallbackHandle;

    aget-object v0, v0, v4

    check-cast v0, Landroid/net/Uri;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->onMediaStoreAccessCompleted(Lcom/oneplus/base/CallbackHandle;Landroid/net/Uri;II)V

    goto :goto_0

    .line 765
    :sswitch_3
    iput-boolean v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_HasPendingMediaSyncWithMediaStore:Z

    .line 766
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->syncMediaWithMediaStore()V

    goto :goto_0

    .line 772
    :sswitch_4
    iput-boolean v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_HasPendingSingleMediaSyncWithMediaStore:Z

    .line 774
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PermissionsReady:Z

    if-eqz v0, :cond_2

    .line 781
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaIdToSync:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaIdToSync:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 784
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_STRING_FILE:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->syncMediaWithMediaStore(Landroid/net/Uri;)V

    goto :goto_2

    .line 776
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleMessage() - Start full media sync when permissions ready"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    iput-boolean v4, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_NeedToSyncMediaWhenPermsReady:Z

    .line 778
    return-void

    .line 785
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaIdToSync:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto/16 :goto_0

    .line 792
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 793
    aget-object v1, v0, v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    aget-object v4, v0, v4

    check-cast v4, Ljava/util/List;

    aget-object v5, v0, v5

    check-cast v5, Ljava/util/List;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->syncMediaWithMediaStore(Ljava/lang/Object;IILjava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 799
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 800
    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aget-object v1, v0, v4

    check-cast v1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;

    aget-object v0, v0, v5

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->syncMediaWithMediaStore(JLcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)V

    goto/16 :goto_0

    .line 741
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
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 851
    if-eqz p1, :cond_0

    .line 856
    if-eqz p2, :cond_1

    .line 864
    invoke-static {}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->$SWITCH_TABLE$com$oneplus$gallery2$media$MediaType()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MediaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 873
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "insertIntoMediaStore() - Invalid media type : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    return-object v4

    .line 853
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "insertIntoMediaStore() - No media type"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    return-object v4

    .line 858
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "insertIntoMediaStore() - No values to insert"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    return-object v4

    .line 867
    :pswitch_0
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_IMAGE:Landroid/net/Uri;

    .line 878
    :goto_0
    new-instance v1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$9;

    const-string/jumbo v2, "InsertIntoMediaStore"

    invoke-direct {v1, p0, v2, p3, v4}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$9;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;Landroid/os/Handler;)V

    .line 886
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v2

    new-instance v3, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$10;

    invoke-direct {v3, p0, v1, v0, p2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$10;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/base/CallbackHandle;Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-static {v2, v3}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    .line 915
    if-eqz v0, :cond_2

    .line 922
    return-object v1

    .line 870
    :pswitch_1
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_VIDEO:Landroid/net/Uri;

    goto :goto_0

    .line 917
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "insertIntoMediaStore() - Fail to post to media content thread"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    return-object v4

    .line 864
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isMediaIdSupported(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 930
    invoke-static {p1, v0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isValidId(Ljava/lang/String;Lcom/oneplus/base/Ref;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-static {p1}, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;->isValidId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1
.end method

.method public isPathInHiddenDirectory(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 941
    if-eqz p1, :cond_0

    .line 943
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_HiddenPathPrefixList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 945
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_HiddenPathPrefixList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 943
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 942
    :cond_0
    return v2

    .line 946
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 948
    :cond_2
    return v2
.end method

.method public isRecycledMedia(Lcom/oneplus/gallery2/media/Media;)Z
    .locals 1

    .prologue
    .line 956
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_RecycledMedia:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSubMedia(Lcom/oneplus/gallery2/media/Media;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 964
    instance-of v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    if-nez v0, :cond_0

    .line 966
    return v1

    .line 965
    :cond_0
    check-cast p1, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isSubMedia()Z

    move-result v0

    return v0
.end method

.method final notifyMediaSetDeleted(Lcom/oneplus/gallery2/media/MediaSet;[Lcom/oneplus/gallery2/media/Media;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 994
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->verifyAccess()V

    .line 995
    invoke-virtual {p0, v6}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->isRunningOrInitializing(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 997
    if-nez p1, :cond_2

    .line 998
    :cond_0
    return-void

    .line 996
    :cond_1
    return-void

    .line 997
    :cond_2
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/MediaSet;->isVirtual()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p2

    if-eqz v0, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "notifyMediaSetDeleted() - Media set : "

    const-string/jumbo v3, ", "

    array-length v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, " media in this set"

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1003
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_0
    if-ltz v4, :cond_7

    .line 1005
    aget-object v1, p2, v4

    .line 1006
    if-eqz v1, :cond_3

    .line 1008
    instance-of v0, v1, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    if-nez v0, :cond_4

    .line 1025
    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->prepareMediaFlagsForCallback(Lcom/oneplus/gallery2/media/Media;)I

    move-result v0

    invoke-virtual {p0, v1, v6, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->removeMedia(Lcom/oneplus/gallery2/media/Media;ZI)Z

    .line 1026
    invoke-direct {p0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->releaseMedia(Lcom/oneplus/gallery2/media/Media;)V

    .line 1003
    :cond_3
    :goto_1
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 1010
    check-cast v0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->getSubMedia()Ljava/lang/Iterable;

    move-result-object v0

    const-class v2, Lcom/oneplus/gallery2/media/Media;

    invoke-static {v0, v2}, Lcom/oneplus/util/CollectionUtils;->toArray(Ljava/lang/Iterable;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery2/media/Media;

    .line 1011
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    move v5, v2

    :goto_2
    if-ltz v5, :cond_6

    .line 1013
    aget-object v3, v0, v5

    .line 1014
    instance-of v2, v3, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    if-nez v2, :cond_5

    .line 1019
    :goto_3
    invoke-virtual {p0, v3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->prepareMediaFlagsForCallback(Lcom/oneplus/gallery2/media/Media;)I

    move-result v2

    invoke-virtual {p0, v3, v6, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->removeMedia(Lcom/oneplus/gallery2/media/Media;ZI)Z

    .line 1011
    add-int/lit8 v2, v5, -0x1

    move v5, v2

    goto :goto_2

    :cond_5
    move-object v2, v3

    .line 1016
    check-cast v2, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    invoke-direct {p0, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->removeFromGroupedMedia(Lcom/oneplus/gallery2/media/MediaStoreMedia;)Z

    .line 1017
    invoke-direct {p0, v3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->releaseMedia(Lcom/oneplus/gallery2/media/Media;)V

    goto :goto_3

    .line 1021
    :cond_6
    invoke-direct {p0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->releaseMedia(Lcom/oneplus/gallery2/media/Media;)V

    goto :goto_1

    .line 1031
    :cond_7
    invoke-direct {p0, v6}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->syncMediaWithMediaStoreDelayed(Z)V

    .line 1032
    return-void
.end method

.method protected notifyMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1040
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery2/media/BaseMediaSource;->notifyMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V

    .line 1043
    instance-of v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    if-nez v0, :cond_1

    .line 1053
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 1045
    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    .line 1046
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isSubMedia()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1048
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia(Ljava/lang/String;I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    .line 1049
    if-eqz v0, :cond_0

    .line 1050
    invoke-virtual {v0, p1, p2}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->notifySubMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_0
.end method

.method protected onActivated()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1061
    invoke-super {p0}, Lcom/oneplus/gallery2/media/BaseMediaSource;->onActivated()V

    .line 1064
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaSyncCount:I

    if-gtz v0, :cond_0

    .line 1069
    :goto_0
    return-void

    .line 1066
    :cond_0
    iput v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaSyncCount:I

    .line 1067
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->syncMediaWithMediaStore()V

    goto :goto_0
.end method

.method protected onActivationHandleClosed(Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;)V
    .locals 2

    .prologue
    .line 1077
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;->getFlags()I

    move-result v0

    sget v1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->FLAG_CAMERA_ROLL_ONLY:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 1079
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->updateMode()V

    .line 1082
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSource;->onActivationHandleClosed(Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;)V

    .line 1083
    return-void

    .line 1078
    :cond_0
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CameraRollOnlyFlagCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CameraRollOnlyFlagCount:I

    goto :goto_0
.end method

.method protected onActivationHandleCreated(Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;)Z
    .locals 2

    .prologue
    .line 1091
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSource;->onActivationHandleCreated(Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;)Z

    .line 1094
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;->getFlags()I

    move-result v0

    sget v1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->FLAG_CAMERA_ROLL_ONLY:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 1096
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->updateMode()V

    .line 1099
    const/4 v0, 0x1

    return v0

    .line 1095
    :cond_0
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CameraRollOnlyFlagCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CameraRollOnlyFlagCount:I

    goto :goto_0
.end method

.method protected onDeactivated()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1108
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_HasPendingMediaSyncWithMediaStore:Z

    if-nez v0, :cond_0

    .line 1117
    :goto_0
    invoke-super {p0}, Lcom/oneplus/gallery2/media/BaseMediaSource;->onDeactivated()V

    .line 1118
    return-void

    .line 1110
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDeactivated() - Cancel scheduled full media sync"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaSyncCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaSyncCount:I

    .line 1112
    iput-boolean v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_HasPendingMediaSyncWithMediaStore:Z

    const/16 v0, 0x2711

    .line 1113
    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    goto :goto_0
.end method

.method protected onDeinitialize()V
    .locals 3

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_ContentChangeCallbackHandles:Lcom/oneplus/base/HandleSet;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 1131
    :try_start_0
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_MediaIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/oneplus/base/BaseApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1139
    :goto_0
    invoke-super {p0}, Lcom/oneplus/gallery2/media/BaseMediaSource;->onDeinitialize()V

    .line 1140
    return-void

    .line 1132
    :catch_0
    move-exception v0

    .line 1135
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onDeinitialize() - Fail to unregister receiver"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onInitialize()V
    .locals 6

    .prologue
    .line 1148
    invoke-super {p0}, Lcom/oneplus/gallery2/media/BaseMediaSource;->onInitialize()V

    .line 1151
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v0

    .line 1152
    if-eqz v0, :cond_0

    .line 1156
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    const-class v1, Lcom/oneplus/gallery2/media/ContentObserver;

    invoke-virtual {v0, v1}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/ContentObserver;

    .line 1159
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 1160
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_HiddenPathPrefixList:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "/Android/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1161
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_HiddenPathPrefixList:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "/oem_log/"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1162
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_HiddenPathPrefixList:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1165
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v2

    .line 1166
    sget-object v1, Lcom/oneplus/base/BaseApplication;->PROP_IS_READ_STORAGE_PERM_GRANTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v1}, Lcom/oneplus/base/BaseApplication;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1170
    sget-object v1, Lcom/oneplus/base/BaseApplication;->PROP_IS_READ_STORAGE_PERM_GRANTED:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$11;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$11;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)V

    invoke-virtual {v2, v1, v3}, Lcom/oneplus/base/BaseApplication;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1182
    :goto_0
    if-nez v0, :cond_2

    .line 1190
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onInitialize() - No ContentObserver"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    :goto_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1194
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1195
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v0, v3, :cond_3

    const-string/jumbo v0, "com.oneplus.camera.intent.action.NEW_PICTURE"

    .line 1202
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "com.oneplus.camera.intent.action.NEW_VIDEO"

    .line 1203
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :goto_2
    const-string/jumbo v0, "com.oneplus.camera.service.CLEAR_IMAGE_CACHE"

    .line 1205
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "com.oneplus.gallery.MEDIA_STORE_MEDIA_DELETED"

    .line 1206
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v0, "image/*"

    .line 1209
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    const-string/jumbo v0, "video/*"

    .line 1210
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1216
    :goto_3
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_MediaIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v0, v1}, Lcom/oneplus/base/BaseApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1219
    sget-object v0, Lcom/oneplus/base/BaseApplication;->PROP_LOCALE:Lcom/oneplus/base/PropertyKey;

    new-instance v1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$12;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$12;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)V

    invoke-virtual {v2, v0, v1}, Lcom/oneplus/base/BaseApplication;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1227
    return-void

    .line 1153
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "No media content thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1167
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->onPermissionsReady()V

    goto :goto_0

    .line 1184
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 1185
    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_ContentChangeCallbackHandles:Lcom/oneplus/base/HandleSet;

    sget-object v4, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_IMAGE:Landroid/net/Uri;

    iget-object v5, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_ContentChangeCallback:Lcom/oneplus/gallery2/media/ContentObserver$ContentChangeCallback;

    invoke-interface {v0, v4, v5, v1}, Lcom/oneplus/gallery2/media/ContentObserver;->registerContentChangedCallback(Landroid/net/Uri;Lcom/oneplus/gallery2/media/ContentObserver$ContentChangeCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 1186
    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_ContentChangeCallbackHandles:Lcom/oneplus/base/HandleSet;

    sget-object v4, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_VIDEO:Landroid/net/Uri;

    iget-object v5, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_ContentChangeCallback:Lcom/oneplus/gallery2/media/ContentObserver$ContentChangeCallback;

    invoke-interface {v0, v4, v5, v1}, Lcom/oneplus/gallery2/media/ContentObserver;->registerContentChangedCallback(Landroid/net/Uri;Lcom/oneplus/gallery2/media/ContentObserver$ContentChangeCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 1187
    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_ContentChangeCallbackHandles:Lcom/oneplus/base/HandleSet;

    sget-object v4, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_OBJECT:Landroid/net/Uri;

    iget-object v5, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_ContentChangeCallback:Lcom/oneplus/gallery2/media/ContentObserver$ContentChangeCallback;

    invoke-interface {v0, v4, v5, v1}, Lcom/oneplus/gallery2/media/ContentObserver;->registerContentChangedCallback(Landroid/net/Uri;Lcom/oneplus/gallery2/media/ContentObserver$ContentChangeCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "android.hardware.action.NEW_PICTURE"

    .line 1197
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.hardware.action.NEW_VIDEO"

    .line 1198
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_2

    .line 1211
    :catch_0
    move-exception v0

    .line 1214
    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onInitialize() - Unknown error while preparing intent filter"

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method final recycleMedia(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1574
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->verifyAccess()V

    .line 1575
    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->isRunningOrInitializing(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1579
    if-eqz p1, :cond_1

    .line 1584
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->containsMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1591
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_RecycledMedia:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1598
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->prepareMediaFlagsForCallback(Lcom/oneplus/gallery2/media/Media;)I

    move-result v0

    sget v1, Lcom/oneplus/gallery2/media/Media;->FLAG_MOVE_TO_RECYCE_BIN:I

    or-int/2addr v0, v1

    or-int/2addr v0, p3

    .line 1599
    if-nez p2, :cond_4

    .line 1601
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->notifyMediaDeleted(Lcom/oneplus/gallery2/media/Media;I)V

    .line 1602
    if-nez p2, :cond_5

    .line 1606
    :goto_1
    new-instance v1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)V

    return-object v1

    .line 1576
    :cond_0
    return-object v3

    .line 1581
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "recycleMedia() - No media to delete"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1582
    return-object v3

    .line 1586
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "recycleMedia() - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not contained in media table"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    return-object v3

    .line 1593
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "recycleMedia() - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is already recycled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1594
    return-object v3

    .line 1600
    :cond_4
    invoke-virtual {p2, p1, v0}, Lcom/oneplus/gallery2/media/Media$DeletionCallback;->onDeletionStarted(Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_0

    .line 1603
    :cond_5
    invoke-virtual {p2, p1, v2, v0}, Lcom/oneplus/gallery2/media/Media$DeletionCallback;->onDeletionCompleted(Lcom/oneplus/gallery2/media/Media;ZI)V

    goto :goto_1
.end method

.method updateAddress(Lcom/oneplus/gallery2/media/MediaStoreMedia;Landroid/location/Address;)V
    .locals 19

    .prologue
    .line 2071
    if-nez p2, :cond_0

    const/4 v5, 0x0

    const-wide/high16 v6, 0x7ff8000000000000L    # NaN

    const-wide/high16 v8, 0x7ff8000000000000L    # NaN

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 2101
    :goto_0
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v18

    new-instance v2, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$14;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v17}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$14;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMedia;Ljava/lang/String;DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 2126
    return-void

    .line 2073
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/location/Address;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2074
    invoke-virtual/range {p2 .. p2}, Landroid/location/Address;->getLatitude()D

    move-result-wide v6

    .line 2075
    invoke-virtual/range {p2 .. p2}, Landroid/location/Address;->getLongitude()D

    move-result-wide v8

    .line 2076
    invoke-virtual/range {p2 .. p2}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v10

    .line 2077
    invoke-virtual/range {p2 .. p2}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v11

    .line 2078
    invoke-virtual/range {p2 .. p2}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v12

    .line 2079
    invoke-virtual/range {p2 .. p2}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v13

    .line 2080
    invoke-virtual/range {p2 .. p2}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v14

    .line 2081
    invoke-virtual/range {p2 .. p2}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v15

    const/4 v2, 0x0

    .line 2082
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v16

    const/4 v2, 0x1

    .line 2083
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v17

    goto :goto_0
.end method

.method updateOnePlusFlags(Lcom/oneplus/gallery2/media/MediaStoreMedia;II)V
    .locals 2

    .prologue
    .line 2160
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v0

    new-instance v1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$15;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$15;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMedia;II)V

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 2176
    return-void
.end method
