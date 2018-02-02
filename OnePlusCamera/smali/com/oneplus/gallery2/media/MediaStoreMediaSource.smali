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

.field private static final DURATION_GET_ADDRESSES_DELAY:J = 0x1f4L

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

.field private static final MAX_PENDING_ADDRESS_OBTAINING_MEDIA:I = 0x40

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

.field private m_IsMediaAddressesObtainingScheduled:Z

.field private m_IsMediaTableReady:Z

.field private final m_MediaAddressCallback:Lcom/oneplus/gallery2/location/LocationManager$AddressCallback;

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

.field private final m_MediaSetIntentReceiver:Landroid/content/BroadcastReceiver;

.field private m_MediaStoreSyncToken:Ljava/lang/Object;

.field private m_Mode:I

.field private m_NeedToSyncMediaWhenPermsReady:Z

.field private final m_ObtainMediaAddressesRunnable:Ljava/lang/Runnable;

.field private final m_PendingAddressObtainingMedia:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/gallery2/media/MediaStoreMedia;",
            ">;"
        }
    .end annotation
.end field

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
    .line 71
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
    .line 76
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->FLAG_CAMERA_ROLL_ONLY:I

    .line 82
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "NewMediaIntentReceived"

    const-class v2, Lcom/oneplus/base/IntentEventArgs;

    const-class v3, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->EVENT_NEW_MEDIA_INTENT_RECEIVED:Lcom/oneplus/base/EventKey;

    const-string/jumbo v0, "external"

    .line 92
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_FILE:Landroid/net/Uri;

    .line 93
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_IMAGE:Landroid/net/Uri;

    .line 94
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_VIDEO:Landroid/net/Uri;

    const-string/jumbo v0, "content://media/external/object"

    .line 95
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_OBJECT:Landroid/net/Uri;

    .line 96
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_FILE:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_STRING_FILE:Ljava/lang/String;

    .line 115
    return-void
.end method

.method constructor <init>(Lcom/oneplus/base/BaseApplication;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v0, "Media store media source"

    .line 271
    invoke-direct {p0, v0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSource;-><init>(Ljava/lang/String;Lcom/oneplus/base/BaseApplication;)V

    .line 121
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CandidateMediaToRemove:Ljava/util/Set;

    .line 122
    new-instance v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$1;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_ContentChangeCallback:Lcom/oneplus/gallery2/media/ContentObserver$ContentChangeCallback;

    .line 130
    new-instance v0, Lcom/oneplus/base/HandleSet;

    new-array v1, v2, [Lcom/oneplus/base/Handle;

    invoke-direct {v0, v1}, Lcom/oneplus/base/HandleSet;-><init>([Lcom/oneplus/base/Handle;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_ContentChangeCallbackHandles:Lcom/oneplus/base/HandleSet;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_HiddenPathPrefixList:Ljava/util/List;

    .line 136
    new-instance v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$2;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_MediaAddressCallback:Lcom/oneplus/gallery2/location/LocationManager$AddressCallback;

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_MediaObtainCallbackHandles:Ljava/util/Map;

    .line 146
    iput v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_Mode:I

    .line 147
    new-instance v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$3;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$3;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_ObtainMediaAddressesRunnable:Ljava/lang/Runnable;

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_NeedToSyncMediaWhenPermsReady:Z

    .line 157
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingAddressObtainingMedia:Ljava/util/Set;

    .line 158
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaIdToSync:Ljava/util/Set;

    .line 160
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_RecycledMedia:Ljava/util/Set;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_TempDbValueList:Ljava/util/List;

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_TempFileInfoList:Ljava/util/List;

    .line 166
    new-instance v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$4;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$4;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_MediaIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 174
    new-instance v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$5;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$5;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_MediaSetIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 272
    return-void
.end method

.method static synthetic access$0(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 1518
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->onMediaStoreContentChanged(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$1(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/base/Handle;Ljava/util/Locale;Ljava/util/Map;I)V
    .locals 0

    .prologue
    .line 1365
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->onMediaAddressesObtained(Lcom/oneplus/base/Handle;Ljava/util/Locale;Ljava/util/Map;I)V

    return-void
.end method

.method static synthetic access$10(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_MediaObtainCallbackHandles:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$11()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_STRING_FILE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)V
    .locals 0

    .prologue
    .line 1578
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->onPermissionsReady()V

    return-void
.end method

.method static synthetic access$14(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)V
    .locals 0

    .prologue
    .line 1354
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->onLocaleChanged()V

    return-void
.end method

.method static synthetic access$15(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Z)V
    .locals 0

    .prologue
    .line 1567
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->onNetworkConnectionStateChanged(Z)V

    return-void
.end method

.method static synthetic access$16(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;J)V
    .locals 1

    .prologue
    .line 1690
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->queryMediaStoreContent(J)V

    return-void
.end method

.method static synthetic access$2(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)V
    .locals 0

    .prologue
    .line 1124
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->obtainMediaAddresses()V

    return-void
.end method

.method static synthetic access$3(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1422
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->onMediaIntentReceived(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$4(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1476
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->onMediaSetIntentReceived(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$5(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;)V
    .locals 0

    .prologue
    .line 1831
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->restoreMedia(Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;)V

    return-void
.end method

.method static synthetic access$6(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Ljava/lang/Object;II)V
    .locals 0

    .prologue
    .line 1591
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->queryAllMediaStoreContent(Ljava/lang/Object;II)V

    return-void
.end method

.method static synthetic access$7()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_FILE:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$8(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;)V
    .locals 0

    .prologue
    .line 475
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->deleteMedia(Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;)V

    return-void
.end method

.method private addToGroupedMedia(Lcom/oneplus/gallery2/media/MediaStoreMedia;)Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 278
    if-nez p1, :cond_1

    .line 296
    :cond_0
    return v2

    .line 278
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isSubMedia()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia(Ljava/lang/String;I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    .line 281
    if-eqz v0, :cond_2

    move v1, v2

    .line 282
    :goto_0
    if-nez v1, :cond_3

    .line 289
    :goto_1
    invoke-virtual {v0, p1}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->addSubMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 291
    if-nez v1, :cond_5

    .line 293
    :goto_2
    return v3

    :cond_2
    move v1, v3

    .line 281
    goto :goto_0

    .line 284
    :cond_3
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->createGroupedMedia(Lcom/oneplus/gallery2/media/MediaStoreMedia;)Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    move-result-object v0

    .line 285
    if-eqz v0, :cond_4

    .line 287
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

    .line 286
    :cond_4
    return v2

    .line 292
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

    .line 303
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_MediaObtainCallbackHandles:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/List;

    .line 304
    if-nez v6, :cond_1

    .line 316
    :cond_0
    return-void

    .line 306
    :cond_1
    if-nez p3, :cond_2

    .line 307
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

    .line 308
    :goto_1
    if-nez p3, :cond_4

    invoke-static {p1, p2}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getId(J)Ljava/lang/String;

    move-result-object v3

    .line 309
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_3
    if-ltz v7, :cond_0

    .line 311
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/CallbackHandle;

    invoke-virtual {v0}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

    .line 312
    if-nez v0, :cond_5

    .line 309
    :goto_4
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_3

    .line 306
    :cond_2
    invoke-virtual {p0, p3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->prepareMediaFlagsForCallback(Lcom/oneplus/gallery2/media/Media;)I

    move-result v5

    goto :goto_0

    .line 307
    :cond_3
    invoke-interface {p3}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    goto :goto_1

    .line 308
    :cond_4
    invoke-interface {p3}, Lcom/oneplus/gallery2/media/Media;->getId()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_5
    move-object v1, p0

    move-object v4, p3

    .line 313
    invoke-interface/range {v0 .. v5}, Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;->onMediaObtained(Lcom/oneplus/gallery2/media/MediaSource;Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_4
.end method

.method private checkTakenTime(Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)V
    .locals 4

    .prologue
    .line 322
    if-nez p1, :cond_1

    .line 323
    :cond_0
    return-void

    .line 322
    :cond_1
    if-eqz p2, :cond_0

    .line 324
    iget-wide v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->takenTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    .line 326
    iget v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->mediaType:I

    packed-switch v0, :pswitch_data_0

    .line 336
    :cond_2
    :goto_1
    :pswitch_0
    return-void

    .line 324
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 329
    :pswitch_1
    iget-wide v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->id:J

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->createContentUri(J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->getTakenTimeFromFile(Landroid/net/Uri;)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;->takenTime:J

    goto :goto_1

    .line 332
    :pswitch_2
    iget-wide v0, p2, Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;->lastModifiedTime:J

    iput-wide v0, p2, Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;->takenTime:J

    goto :goto_1

    .line 326
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

    .line 342
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getGroupId()Ljava/lang/String;

    move-result-object v0

    .line 343
    if-nez v0, :cond_1

    .line 348
    :cond_0
    return-object v2

    .line 345
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isBurstSubMedia()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
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

    .line 478
    invoke-static {p1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 480
    monitor-enter p1

    .line 482
    :try_start_0
    iget-boolean v3, p1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;->isCancelled:Z

    if-nez v3, :cond_3

    .line 484
    const/4 v3, 0x0

    iput-boolean v3, p1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;->isCancellable:Z

    .line 480
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;->getMedia()Lcom/oneplus/gallery2/media/Media;

    move-result-object v3

    .line 489
    instance-of v6, v3, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    if-eqz v6, :cond_4

    .line 497
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oneplus/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_FILE:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v7

    .line 498
    if-eqz v7, :cond_5

    .line 511
    :try_start_1
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;->getFlags()I

    move-result v6

    sget v8, Lcom/oneplus/gallery2/media/Media;->FLAG_INCLUDE_RAW_PHOTO:I

    and-int/2addr v6, v8

    if-nez v6, :cond_6

    move-object v6, v2

    .line 522
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

    .line 525
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

    .line 528
    :goto_1
    if-nez v6, :cond_9

    .line 545
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

    .line 556
    invoke-virtual {v7}, Landroid/content/ContentProviderClient;->release()Z

    move v2, v4

    .line 560
    :goto_3
    if-nez v2, :cond_1

    move v4, v5

    :cond_1
    invoke-static {p0, v12, v4, v5, p1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 561
    return-void

    .line 479
    :cond_2
    return-void

    .line 483
    :cond_3
    :try_start_2
    monitor-exit p1

    return-void

    .line 480
    :catchall_0
    move-exception v2

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 491
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

    .line 492
    invoke-static {p0, v12, p1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;ILjava/lang/Object;)Z

    .line 493
    return-void

    .line 500
    :cond_5
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "deleteMedia() - Fail to acquire content provider client"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    invoke-static {p0, v12, p1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;ILjava/lang/Object;)Z

    .line 502
    return-void

    .line 513
    :cond_6
    :try_start_3
    invoke-interface {v3}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x2e

    .line 514
    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 515
    if-gez v6, :cond_7

    .line 518
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

    .line 516
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

    .line 523
    :cond_8
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "deleteMedia() - "

    const-string/jumbo v9, " deleted"

    invoke-static {v2, v8, v3, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_1

    .line 549
    :catch_0
    move-exception v2

    .line 552
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

    .line 556
    invoke-virtual {v7}, Landroid/content/ContentProviderClient;->release()Z

    move v2, v5

    goto/16 :goto_3

    .line 530
    :cond_9
    :try_start_5
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 532
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_a

    move v2, v5

    .line 539
    :goto_4
    sget-object v8, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_FILE:Landroid/net/Uri;

    const-string/jumbo v9, "_data=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 540
    if-eqz v2, :cond_0

    .line 541
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "deleteMedia() - RAW file "

    const-string/jumbo v9, " deleted"

    invoke-static {v2, v8, v6, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_2

    .line 556
    :catchall_1
    move-exception v2

    invoke-virtual {v7}, Landroid/content/ContentProviderClient;->release()Z

    .line 557
    throw v2

    .line 534
    :cond_a
    :try_start_6
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_b

    .line 537
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

    .line 535
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

    .line 849
    invoke-static {p1}, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->read(Landroid/database/Cursor;)Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;

    move-result-object v0

    .line 850
    if-nez v0, :cond_1

    .line 854
    :cond_0
    return v2

    .line 850
    :cond_1
    iget-object v1, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->data:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->data:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->isPathInHiddenDirectory(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 851
    iget-object v1, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->data:Ljava/lang/String;

    invoke-static {v1}, Lcom/oneplus/io/FileUtils;->isRawFilePath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 852
    iget-object v1, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->data:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->isTiffFilePath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 858
    iget-wide v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->id:J

    invoke-static {v2, v3}, Lcom/oneplus/gallery2/media/GalleryDatabase;->getExtraMediaInfo(J)Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->extraInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    .line 861
    iget-object v1, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->data:Ljava/lang/String;

    invoke-static {v1}, Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;->read(Ljava/lang/String;)Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;

    move-result-object v1

    .line 864
    invoke-direct {p0, v0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->checkTakenTime(Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)V

    .line 867
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 868
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 871
    const/4 v0, 0x1

    return v0
.end method

.method private isTiffFilePath(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1038
    if-eqz p1, :cond_1

    .line 1040
    invoke-static {p1}, Lcom/oneplus/io/Path;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1046
    :cond_0
    return v2

    .line 1039
    :cond_1
    return v2

    :sswitch_0
    const-string/jumbo v1, ".tif"

    .line 1040
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1044
    :goto_0
    const/4 v0, 0x1

    return v0

    :sswitch_1
    const-string/jumbo v1, ".tiff"

    .line 1040
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

.method private obtainMediaAddresses()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1127
    invoke-static {}, Lcom/oneplus/gallery2/GalleryLib;->isClient()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1129
    iput-boolean v6, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_IsMediaAddressesObtainingScheduled:Z

    .line 1130
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingAddressObtainingMedia:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1134
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    const-class v1, Lcom/oneplus/gallery2/location/LocationManager;

    invoke-virtual {v0, v1}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/location/LocationManager;

    .line 1135
    if-eqz v0, :cond_3

    .line 1142
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1143
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingAddressObtainingMedia:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    .line 1145
    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getLocation()Landroid/location/Location;

    move-result-object v4

    .line 1146
    if-eqz v4, :cond_0

    .line 1147
    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1128
    :cond_1
    return-void

    .line 1131
    :cond_2
    return-void

    .line 1137
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingAddressObtainingMedia:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1138
    return-void

    .line 1149
    :cond_4
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingAddressObtainingMedia:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 1150
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1156
    :cond_5
    :goto_1
    return-void

    .line 1152
    :cond_6
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "obtainMediaAddresses() - Start obtaining addresses for "

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, " media"

    invoke-static {v1, v3, v4, v5}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1153
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_MediaAddressCallback:Lcom/oneplus/gallery2/location/LocationManager$AddressCallback;

    invoke-interface {v0, v2, v7, v1, v6}, Lcom/oneplus/gallery2/location/LocationManager;->getAddresses(Ljava/util/Map;Ljava/util/Locale;Lcom/oneplus/gallery2/location/LocationManager$AddressCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1154
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "obtainMediaAddresses() - Fail to start obtaining addresses"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onLocaleChanged()V
    .locals 3

    .prologue
    .line 1356
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

    .line 1358
    instance-of v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    if-eqz v2, :cond_0

    .line 1359
    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->onLocaleChanged()V

    goto :goto_0

    .line 1361
    :cond_1
    return-void
.end method

.method private onMediaAddressesObtained(Lcom/oneplus/base/Handle;Ljava/util/Locale;Ljava/util/Map;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/Handle;",
            "Ljava/util/Locale;",
            "Ljava/util/Map",
            "<*",
            "Landroid/location/Address;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1367
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1369
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    .line 1370
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    invoke-virtual {v1, v0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->onAddressObtained(Landroid/location/Address;)V

    goto :goto_0

    .line 1372
    :cond_0
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

    .line 1378
    invoke-static {p1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1380
    :cond_0
    :goto_0
    return-void

    .line 1378
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1379
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

    .line 1387
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;->getMedia()Lcom/oneplus/gallery2/media/Media;

    move-result-object v1

    .line 1388
    if-nez p2, :cond_1

    .line 1396
    :goto_0
    invoke-virtual {p0, v4}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->isRunningOrInitializing(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1398
    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->prepareMediaFlagsForCallback(Lcom/oneplus/gallery2/media/Media;)I

    move-result v2

    .line 1399
    if-eqz p2, :cond_3

    .line 1408
    invoke-virtual {p0, v1, v4, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->removeMedia(Lcom/oneplus/gallery2/media/Media;ZI)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1416
    :cond_0
    :goto_1
    iget-object v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;->callback:Lcom/oneplus/gallery2/media/Media$DeletionCallback;

    if-nez v0, :cond_6

    .line 1418
    :goto_2
    return-void

    .line 1390
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.oneplus.gallery.MEDIA_STORE_MEDIA_DELETED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1391
    invoke-interface {v1}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1}, Lcom/oneplus/gallery2/media/Media;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1392
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/oneplus/base/BaseApplication;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1397
    :cond_2
    return-void

    .line 1401
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

    .line 1402
    iget-object v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;->callback:Lcom/oneplus/gallery2/media/Media$DeletionCallback;

    if-nez v0, :cond_4

    .line 1404
    :goto_3
    return-void

    .line 1403
    :cond_4
    iget-object v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;->callback:Lcom/oneplus/gallery2/media/Media$DeletionCallback;

    invoke-virtual {v0, v1, v5, v2}, Lcom/oneplus/gallery2/media/Media$DeletionCallback;->onDeletionCompleted(Lcom/oneplus/gallery2/media/Media;ZI)V

    goto :goto_3

    .line 1408
    :cond_5
    instance-of v0, v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 1410
    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->removeFromGroupedMedia(Lcom/oneplus/gallery2/media/MediaStoreMedia;)Z

    .line 1411
    invoke-direct {p0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->releaseMedia(Lcom/oneplus/gallery2/media/Media;)V

    .line 1412
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingAddressObtainingMedia:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1417
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

    .line 1425
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 1426
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 1427
    if-nez v2, :cond_1

    .line 1428
    :cond_0
    return-void

    .line 1427
    :cond_1
    if-eqz v3, :cond_0

    .line 1432
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 1455
    :cond_2
    return-void

    :sswitch_0
    const-string/jumbo v0, "android.hardware.action.NEW_VIDEO"

    .line 1432
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1442
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onMediaIntentReceived() - New video : "

    invoke-static {v0, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v1

    .line 1459
    :goto_1
    iget-boolean v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PermissionsReady:Z

    if-eqz v2, :cond_3

    .line 1467
    invoke-direct {p0, v3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->syncMediaWithMediaStore(Landroid/net/Uri;)V

    .line 1470
    if-nez v0, :cond_4

    .line 1472
    :goto_2
    return-void

    :sswitch_1
    const-string/jumbo v0, "com.oneplus.camera.intent.action.NEW_VIDEO"

    .line 1432
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "com.oneplus.camera.intent.action.NEW_PICTURE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1436
    :goto_3
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onMediaIntentReceived() - New photo : "

    invoke-static {v0, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v1

    .line 1438
    goto :goto_1

    :sswitch_3
    const-string/jumbo v4, "com.oneplus.camera.service.CLEAR_IMAGE_CACHE"

    .line 1432
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1447
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onMediaIntentReceived() - Clear cache : "

    invoke-static {v2, v4, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :sswitch_4
    const-string/jumbo v0, "android.hardware.action.NEW_PICTURE"

    .line 1432
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :sswitch_5
    const-string/jumbo v4, "com.oneplus.gallery.MEDIA_STORE_MEDIA_DELETED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1451
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onMediaIntentReceived() - Media deleted : "

    invoke-static {v2, v4, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 1461
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onMediaIntentReceived() - Start full media sync when permissions ready"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    iput-boolean v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_NeedToSyncMediaWhenPermsReady:Z

    .line 1463
    return-void

    .line 1471
    :cond_4
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->EVENT_NEW_MEDIA_INTENT_RECEIVED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/oneplus/base/IntentEventArgs;

    invoke-direct {v1, p1}, Lcom/oneplus/base/IntentEventArgs;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    goto :goto_2

    .line 1432
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

.method private onMediaSetIntentReceived(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 1479
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "MediaSetId"

    .line 1480
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1481
    if-nez v0, :cond_1

    .line 1482
    :cond_0
    return-void

    .line 1481
    :cond_1
    if-eqz v1, :cond_0

    .line 1485
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1492
    :cond_2
    return-void

    :pswitch_0
    const-string/jumbo v2, "com.oneplus.gallery2.media.action.MEDIA_SET_DELETED"

    .line 1485
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1488
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onMediaSetIntentReceived() - Media set deleted : "

    invoke-static {v0, v2, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1496
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PermissionsReady:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "CameraRoll"

    .line 1504
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1506
    :goto_0
    return-void

    .line 1498
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onMediaSetIntentReceived() - Start full media sync when permissions ready"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_NeedToSyncMediaWhenPermsReady:Z

    .line 1500
    return-void

    .line 1505
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->syncMediaWithMediaStore()V

    goto :goto_0

    .line 1485
    nop

    :pswitch_data_0
    .packed-switch 0x48bd5546
        :pswitch_0
    .end packed-switch
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
    .line 1512
    invoke-static {p1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1514
    :cond_0
    :goto_0
    return-void

    .line 1512
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1513
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

    .line 1521
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->isRunningOrInitializing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1524
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onMediaStoreContentChanged() - Content URI : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PermissionsReady:Z

    if-eqz v0, :cond_3

    const-wide/16 v4, -0x1

    .line 1535
    if-nez p1, :cond_4

    :cond_0
    :goto_0
    const-wide/16 v6, 0x0

    .line 1552
    cmp-long v0, v4, v6

    if-gtz v0, :cond_5

    move v0, v1

    :goto_1
    if-nez v0, :cond_7

    .line 1554
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaIdToSync:Ljava/util/Set;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1563
    :cond_1
    :goto_2
    return-void

    .line 1522
    :cond_2
    return-void

    .line 1529
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onMediaStoreContentChanged() - Permissions not ready, ignore"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    return-void

    .line 1539
    :cond_4
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1540
    if-eqz v0, :cond_0

    .line 1541
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1542
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1544
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    goto :goto_0

    :cond_5
    move v0, v2

    .line 1552
    goto :goto_1

    .line 1554
    :cond_6
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_HasPendingSingleMediaSyncWithMediaStore:Z

    if-nez v0, :cond_1

    .line 1556
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onMediaStoreContentChanged() - Schedule single media sync"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1557
    iput-boolean v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_HasPendingSingleMediaSyncWithMediaStore:Z

    const/16 v0, 0x2714

    const-wide/16 v2, 0x32

    .line 1558
    invoke-static {p0, v0, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IJ)Z

    goto :goto_2

    .line 1562
    :cond_7
    invoke-direct {p0, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->syncMediaWithMediaStoreDelayed(Z)V

    goto :goto_2

    .line 1546
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private onNetworkConnectionStateChanged(Z)V
    .locals 3

    .prologue
    .line 1569
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

    .line 1571
    instance-of v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    if-eqz v2, :cond_0

    .line 1572
    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    invoke-virtual {v0, p1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->onNetworkConnectionStateChanged(Z)V

    goto :goto_0

    .line 1574
    :cond_1
    return-void
.end method

.method private onPermissionsReady()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1580
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPermissionsReady()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1581
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PermissionsReady:Z

    .line 1582
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_NeedToSyncMediaWhenPermsReady:Z

    if-nez v0, :cond_0

    .line 1587
    :goto_0
    return-void

    .line 1584
    :cond_0
    iput-boolean v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_NeedToSyncMediaWhenPermsReady:Z

    .line 1585
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->syncMediaWithMediaStore()V

    goto :goto_0
.end method

.method private queryAllMediaStoreContent(Ljava/lang/Object;II)V
    .locals 16

    .prologue
    .line 1593
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "queryAllMediaStoreContent() - Mode : "

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, ", offset : "

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1596
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 1597
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1598
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 1603
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

    .line 1604
    if-nez v2, :cond_1

    .line 1670
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "queryAllMediaStoreContent() - Fail to acquire content provider client"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1678
    :goto_0
    if-nez v2, :cond_1c

    .line 1681
    :cond_0
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v12

    .line 1682
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

    .line 1685
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

    .line 1686
    return-void

    .line 1607
    :cond_1
    if-eqz p2, :cond_4

    const/4 v3, 0x0

    move v8, v3

    .line 1608
    :goto_2
    if-nez p3, :cond_5

    .line 1610
    :cond_2
    if-eqz p3, :cond_6

    .line 1626
    :cond_3
    :goto_3
    :try_start_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CameraRollMediaCount:I

    move/from16 v0, p3

    if-lt v0, v3, :cond_b

    move v9, v10

    .line 1648
    :goto_4
    if-nez v8, :cond_14

    move v10, v9

    goto :goto_0

    :cond_4
    const/4 v3, 0x1

    move v8, v3

    .line 1607
    goto :goto_2

    .line 1608
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

    .line 1612
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

    .line 1614
    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_7

    const/4 v3, 0x0

    .line 1617
    move-object/from16 v0, p0

    iput v3, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CameraRollMediaCount:I

    .line 1618
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

    .line 1619
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

    .line 1622
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "queryAllMediaStoreContent() - Fail to query media count in camera roll"

    invoke-static {v4, v5, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v3, 0x0

    .line 1623
    move-object/from16 v0, p0

    iput v3, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CameraRollMediaCount:I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    .line 1671
    :catch_1
    move-exception v3

    move-object v15, v3

    move-object v3, v2

    move-object v2, v15

    .line 1674
    :goto_8
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "queryAllMediaStoreContent() - Fail to query from media store"

    invoke-static {v4, v5, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_a

    .line 1678
    if-eqz v3, :cond_0

    .line 1679
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_1

    :cond_7
    const/4 v3, 0x0

    .line 1615
    :try_start_9
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CameraRollMediaCount:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_5

    .line 1619
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

    .line 1679
    :catchall_3
    move-exception v3

    move-object v15, v3

    move-object v3, v2

    move-object v2, v15

    .line 1678
    :goto_a
    if-nez v3, :cond_1b

    .line 1680
    :goto_b
    throw v2

    :cond_9
    move-object v4, v3

    .line 1619
    goto :goto_7

    :cond_a
    :try_start_b
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_7

    .line 1628
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

    .line 1629
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

    .line 1631
    :cond_c
    :goto_c
    :try_start_e
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1633
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11, v14}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->handleQueriedDataInMediaStore(Landroid/database/Cursor;Ljava/util/List;Ljava/util/List;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    move-result v3

    if-nez v3, :cond_c

    .line 1634
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 1636
    :cond_d
    if-nez v4, :cond_f

    .line 1637
    :goto_d
    if-eqz v5, :cond_13

    .line 1643
    :cond_e
    const/4 v8, 0x0

    move v9, v5

    goto/16 :goto_4

    .line 1636
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

    .line 1671
    :catch_2
    move-exception v3

    move v10, v5

    move-object v15, v3

    move-object v3, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 1636
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

    .line 1637
    :cond_13
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1639
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "queryAllMediaStoreContent() - No more media in camera roll"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1640
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CameraRollMediaCount:I
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    move v9, v5

    .line 1641
    goto/16 :goto_4

    :cond_14
    const/4 v8, 0x0

    .line 1650
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

    .line 1652
    :cond_15
    :goto_11
    :try_start_14
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1654
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11, v14}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->handleQueriedDataInMediaStore(Landroid/database/Cursor;Ljava/util/List;Ljava/util/List;)Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    move-result v3

    if-nez v3, :cond_15

    .line 1655
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 1666
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

    .line 1679
    :cond_1b
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_b

    :cond_1c
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_1

    :catchall_a
    move-exception v2

    goto/16 :goto_a

    .line 1671
    :catch_3
    move-exception v2

    goto/16 :goto_8

    move-exception v3

    move v10, v9

    move-object v15, v3

    move-object v3, v2

    move-object v2, v15

    goto/16 :goto_8

    .line 1666
    :catchall_b
    move-exception v3

    move-object v4, v8

    move v5, v9

    goto :goto_13

    .line 1636
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

    .line 1697
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

    .line 1698
    if-nez v0, :cond_1

    .line 1731
    :try_start_1
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "queryMediaStoreContent() - Fail to acquire content provider client"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    move-object v2, v8

    .line 1739
    :cond_0
    :goto_0
    if-nez v0, :cond_c

    :goto_1
    const/16 v0, 0x2712

    const/4 v1, 0x3

    .line 1741
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

    .line 1743
    :goto_2
    return-void

    .line 1700
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

    .line 1701
    :try_start_3
    sget-object v2, Lcom/oneplus/gallery2/media/MediaStoreMedia;->MEDIA_STORE_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v3

    .line 1703
    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v1

    if-nez v1, :cond_2

    move-object v2, v8

    .line 1728
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

    .line 1732
    :catch_0
    move-exception v1

    move-object v8, v3

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    .line 1735
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

    .line 1739
    if-nez v1, :cond_a

    :goto_7
    const/16 v0, 0x2712

    const/4 v1, 0x3

    .line 1741
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

    .line 1706
    :cond_2
    :try_start_8
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_TempDbValueList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1707
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_TempFileInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1708
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_TempDbValueList:Ljava/util/List;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_TempFileInfoList:Ljava/util/List;

    invoke-direct {p0, v3, v1, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->handleQueriedDataInMediaStore(Landroid/database/Cursor;Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1728
    :cond_3
    if-nez v3, :cond_5

    .line 1739
    :goto_8
    if-nez v0, :cond_6

    :goto_9
    const/16 v1, 0x2712

    const/4 v2, 0x3

    .line 1741
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

    .line 1712
    return-void

    .line 1709
    :cond_4
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_TempDbValueList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1710
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_TempFileInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1714
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_TempDbValueList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1715
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

    .line 1728
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

    .line 1740
    :cond_6
    :try_start_b
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_9

    .line 1728
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

    .line 1732
    move-exception v1

    move-object v6, v2

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto/16 :goto_6

    :cond_8
    move-object v2, v1

    .line 1728
    goto/16 :goto_5

    :cond_9
    :try_start_d
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto/16 :goto_5

    .line 1741
    :catchall_4
    move-exception v1

    move-object v8, v3

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    .line 1739
    :goto_c
    if-nez v1, :cond_b

    :goto_d
    const/16 v1, 0x2712

    const/4 v2, 0x3

    .line 1741
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

    .line 1742
    throw v0

    .line 1740
    :cond_a
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_7

    :cond_b
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_d

    :cond_c
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_1

    .line 1741
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

    .line 1732
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

    .line 1728
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
    .line 1821
    if-eqz p1, :cond_0

    .line 1823
    instance-of v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    if-nez v0, :cond_1

    .line 1825
    instance-of v0, p1, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;

    if-nez v0, :cond_2

    .line 1827
    :goto_0
    return-void

    .line 1822
    :cond_0
    return-void

    .line 1824
    :cond_1
    check-cast p1, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->release()V

    goto :goto_0

    .line 1826
    :cond_2
    check-cast p1, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;

    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;->release()V

    goto :goto_0
.end method

.method private removeFromGroupedMedia(Lcom/oneplus/gallery2/media/MediaStoreMedia;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1795
    if-nez p1, :cond_1

    .line 1797
    :cond_0
    return v1

    .line 1795
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isSubMedia()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1796
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

    .line 1801
    invoke-virtual {p0, p1, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia(Ljava/lang/String;I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    .line 1802
    if-nez v0, :cond_0

    .line 1814
    return v1

    .line 1804
    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->getSubMediaCount()I

    move-result v1

    if-eq v1, v4, :cond_2

    .line 1810
    :cond_1
    :goto_0
    invoke-virtual {v0, p2}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->removeSubMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v0

    .line 1811
    invoke-virtual {p2}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->release()V

    .line 1812
    return v0

    .line 1804
    :cond_2
    invoke-virtual {v0, p2}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->contains(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1806
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "removeFromGroupedMedia() - Remove "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1807
    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->prepareMediaFlagsForCallback(Lcom/oneplus/gallery2/media/Media;)I

    move-result v1

    invoke-virtual {p0, v0, v4, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->removeMedia(Lcom/oneplus/gallery2/media/Media;ZI)Z

    .line 1808
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->releaseMedia(Lcom/oneplus/gallery2/media/Media;)V

    goto :goto_0
.end method

.method private restoreMedia(Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;)V
    .locals 3

    .prologue
    .line 1834
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->verifyAccess()V

    .line 1835
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->isRunningOrInitializing(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1839
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;->getMedia()Lcom/oneplus/gallery2/media/Media;

    move-result-object v0

    .line 1840
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_RecycledMedia:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1847
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;->getFlags()I

    move-result v1

    sget v2, Lcom/oneplus/gallery2/media/Media;->FLAG_MOVE_TO_RECYCE_BIN:I

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    .line 1848
    sget v2, Lcom/oneplus/gallery2/media/Media;->FLAG_RESTORE_FROM_RECYCLE_BIN:I

    or-int/2addr v1, v2

    .line 1849
    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->notifyMediaCreated(Lcom/oneplus/gallery2/media/Media;I)V

    .line 1850
    return-void

    .line 1836
    :cond_0
    return-void

    .line 1842
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "restoreMedia() - Media is not contained in recycle bin"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1843
    return-void
.end method

.method private syncMediaWithMediaStore()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1874
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->isRunningOrInitializing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1876
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PermissionsReady:Z

    if-eqz v0, :cond_1

    .line 1882
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->PROP_IS_ACTIVE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1893
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia()Ljava/util/Collection;

    move-result-object v0

    .line 1894
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "syncMediaWithMediaStore() - Media table size : "

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1895
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CandidateMediaToRemove:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 1896
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CandidateMediaToRemove:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1897
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_MediaStoreSyncToken:Ljava/lang/Object;

    .line 1898
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_HasPendingMediaSyncWithMediaStore:Z

    if-nez v0, :cond_4

    .line 1903
    :goto_1
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v0

    new-instance v1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$QueryAllMediaStoreContentRunnable;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_MediaStoreSyncToken:Ljava/lang/Object;

    iget v3, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_Mode:I

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$QueryAllMediaStoreContentRunnable;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Ljava/lang/Object;II)V

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 1904
    return-void

    .line 1875
    :cond_0
    return-void

    .line 1878
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "syncMediaWithMediaStore() - Start full media sync when permissions ready"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1879
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_NeedToSyncMediaWhenPermsReady:Z

    .line 1880
    return-void

    .line 1884
    :cond_2
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaSyncCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaSyncCount:I

    .line 1885
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaSyncCount:I

    const/16 v1, 0x10

    if-le v0, v1, :cond_3

    .line 1890
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "syncMediaWithMediaStore() - Too many pending full media sync"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1891
    iput v4, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaSyncCount:I

    goto :goto_0

    .line 1887
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

    .line 1888
    return-void

    .line 1900
    :cond_4
    iput-boolean v4, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_HasPendingMediaSyncWithMediaStore:Z

    const/16 v0, 0x2711

    .line 1901
    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    goto :goto_1
.end method

.method private syncMediaWithMediaStore(JLcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 1931
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->isRunningOrInitializing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1935
    invoke-static {p1, p2}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getId(J)Ljava/lang/String;

    move-result-object v0

    .line 1936
    invoke-virtual {p0, v0, v6}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia(Ljava/lang/String;I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    .line 1937
    if-eqz p3, :cond_1

    .line 1952
    if-eqz v0, :cond_3

    .line 1966
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getGroupId()Ljava/lang/String;

    move-result-object v1

    .line 1967
    invoke-virtual {v0, p3, p4}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->update(Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)I

    move-result v2

    .line 1968
    if-nez v2, :cond_5

    .line 1989
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->callOnMediaObtained(JLcom/oneplus/gallery2/media/Media;)V

    .line 1990
    return-void

    .line 1932
    :cond_0
    return-void

    .line 1939
    :cond_1
    if-nez v0, :cond_2

    .line 1947
    :goto_1
    invoke-direct {p0, p1, p2, v4}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->callOnMediaObtained(JLcom/oneplus/gallery2/media/Media;)V

    .line 1948
    return-void

    .line 1941
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

    .line 1942
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->removeFromGroupedMedia(Lcom/oneplus/gallery2/media/MediaStoreMedia;)Z

    .line 1943
    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->prepareMediaFlagsForCallback(Lcom/oneplus/gallery2/media/Media;)I

    move-result v1

    invoke-virtual {p0, v0, v5, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->removeMedia(Lcom/oneplus/gallery2/media/Media;ZI)Z

    .line 1944
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->releaseMedia(Lcom/oneplus/gallery2/media/Media;)V

    .line 1945
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingAddressObtainingMedia:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1954
    :cond_3
    invoke-static {p0, p3, p4}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->create(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)Lcom/oneplus/gallery2/media/MediaStoreMedia;

    move-result-object v0

    .line 1955
    if-nez v0, :cond_4

    .line 1961
    :goto_2
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->callOnMediaObtained(JLcom/oneplus/gallery2/media/Media;)V

    .line 1962
    return-void

    .line 1957
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

    .line 1958
    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->prepareMediaFlagsForCallback(Lcom/oneplus/gallery2/media/Media;)I

    move-result v1

    invoke-virtual {p0, v0, v5, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->addMedia(Lcom/oneplus/gallery2/media/Media;ZI)Z

    .line 1959
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->addToGroupedMedia(Lcom/oneplus/gallery2/media/MediaStoreMedia;)Z

    goto :goto_2

    .line 1970
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

    .line 1971
    sget v3, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_GROUP_CHANGED:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_7

    .line 1982
    invoke-direct {p0, v1, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->removeFromGroupedMedia(Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaStoreMedia;)Z

    .line 1983
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->addToGroupedMedia(Lcom/oneplus/gallery2/media/MediaStoreMedia;)Z

    .line 1985
    :cond_6
    :goto_3
    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->prepareMediaFlagsForCallback(Lcom/oneplus/gallery2/media/Media;)I

    move-result v1

    or-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->notifyMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V

    goto/16 :goto_0

    .line 1973
    :cond_7
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isSubMedia()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1975
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v6}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia(Ljava/lang/String;I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    .line 1976
    if-eqz v1, :cond_6

    .line 1977
    invoke-virtual {v1, v0, v2}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->notifySubMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_3
.end method

.method private syncMediaWithMediaStore(Landroid/net/Uri;)V
    .locals 4

    .prologue
    .line 1907
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->isRunningOrInitializing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1913
    :try_start_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 1919
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/gallery2/MediaContentThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$17;

    invoke-direct {v3, p0, v0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$17;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 1927
    return-void

    .line 1908
    :cond_0
    return-void

    .line 1914
    :catch_0
    move-exception v0

    .line 1917
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
    .line 1994
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->isRunningOrInitializing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1996
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_MediaStoreSyncToken:Ljava/lang/Object;

    move-object/from16 v0, p1

    if-ne v2, v0, :cond_2

    .line 2002
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "syncMediaWithMediaStore() - Offset : "

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2005
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 2009
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 2010
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 2011
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v8, v2

    :goto_0
    if-ltz v8, :cond_1d

    .line 2014
    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;

    .line 2015
    move-object/from16 v0, p5

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;

    .line 2016
    iget-wide v14, v2, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->id:J

    invoke-static {v14, v15}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getId(J)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    .line 2017
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia(Ljava/lang/String;I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    const/4 v9, 0x0

    .line 2021
    if-eqz v4, :cond_3

    .line 2060
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CandidateMediaToRemove:Ljava/util/Set;

    invoke-interface {v14, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2061
    invoke-virtual {v4}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getGroupId()Ljava/lang/String;

    move-result-object v14

    .line 2062
    invoke-virtual {v4, v2, v3}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->update(Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)I

    move-result v15

    .line 2063
    if-nez v15, :cond_b

    .line 2129
    invoke-virtual {v4}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isSubMedia()Z

    move-result v2

    if-nez v2, :cond_1b

    move-object v2, v9

    .line 2133
    :goto_1
    if-nez v2, :cond_1c

    .line 2011
    :cond_0
    :goto_2
    add-int/lit8 v2, v8, -0x1

    move v8, v2

    goto :goto_0

    .line 1995
    :cond_1
    return-void

    .line 1998
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "syncMediaWithMediaStore() - Different token, ignore"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1999
    return-void

    .line 2023
    :cond_3
    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->create(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)Lcom/oneplus/gallery2/media/MediaStoreMedia;

    move-result-object v4

    .line 2024
    if-eqz v4, :cond_0

    const/4 v2, 0x0

    .line 2027
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->addMedia(Lcom/oneplus/gallery2/media/Media;ZI)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2029
    if-eqz v5, :cond_4

    move-object v3, v5

    .line 2031
    :goto_3
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2035
    invoke-virtual {v4}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isSubMedia()Z

    move-result v2

    if-nez v2, :cond_5

    move-object v5, v3

    goto :goto_2

    .line 2030
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v2

    goto :goto_3

    .line 2037
    :cond_5
    invoke-virtual {v4}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getGroupId()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia(Ljava/lang/String;I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    .line 2038
    if-eqz v2, :cond_6

    .line 2040
    :goto_4
    if-eqz v2, :cond_7

    .line 2050
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CandidateMediaToRemove:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2051
    :goto_5
    invoke-interface {v13, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 2053
    :goto_6
    invoke-virtual {v2, v4}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->addSubMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-object v5, v3

    .line 2056
    goto :goto_2

    .line 2039
    :cond_6
    invoke-virtual {v4}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    goto :goto_4

    .line 2042
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->createGroupedMedia(Lcom/oneplus/gallery2/media/MediaStoreMedia;)Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    move-result-object v2

    .line 2043
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

    .line 2045
    invoke-virtual {v2}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v12, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2046
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    move-object v5, v3

    .line 2044
    goto/16 :goto_2

    .line 2052
    :cond_a
    invoke-virtual {v2}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->startSubMediaUpdate()V

    goto :goto_6

    .line 2066
    :cond_b
    if-eqz v7, :cond_d

    move-object v3, v6

    move-object v6, v7

    .line 2071
    :goto_7
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2072
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2073
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

    .line 2076
    sget v2, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_GROUP_CHANGED:I

    and-int/2addr v2, v15

    if-eqz v2, :cond_e

    .line 2092
    if-nez v14, :cond_12

    .line 2104
    :cond_c
    :goto_8
    invoke-virtual {v4}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isSubMedia()Z

    move-result v2

    if-nez v2, :cond_14

    const/4 v2, 0x0

    move-object v7, v6

    move-object v6, v3

    .line 2128
    goto/16 :goto_1

    .line 2068
    :cond_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2069
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v3

    move-object v3, v2

    goto :goto_7

    .line 2078
    :cond_e
    invoke-virtual {v4}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isSubMedia()Z

    move-result v2

    if-nez v2, :cond_f

    move-object v2, v9

    move-object v7, v6

    move-object v6, v3

    goto/16 :goto_1

    .line 2080
    :cond_f
    invoke-virtual {v4}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getGroupId()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia(Ljava/lang/String;I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    .line 2081
    if-nez v2, :cond_10

    move-object v7, v6

    move-object v6, v3

    goto/16 :goto_1

    .line 2083
    :cond_10
    invoke-interface {v13, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 2085
    :goto_9
    invoke-virtual {v2, v4, v15}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->notifySubMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V

    move-object v7, v6

    move-object v6, v3

    .line 2088
    goto/16 :goto_1

    .line 2084
    :cond_11
    invoke-virtual {v2}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->startSubMediaUpdate()V

    goto :goto_9

    :cond_12
    const/4 v2, 0x0

    .line 2094
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia(Ljava/lang/String;I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    .line 2095
    if-eqz v2, :cond_c

    .line 2097
    invoke-interface {v13, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    .line 2099
    :goto_a
    invoke-virtual {v2, v4}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->removeSubMedia(Lcom/oneplus/gallery2/media/Media;)Z

    goto :goto_8

    .line 2098
    :cond_13
    invoke-virtual {v2}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->startSubMediaUpdate()V

    goto :goto_a

    .line 2106
    :cond_14
    invoke-virtual {v4}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getGroupId()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia(Ljava/lang/String;I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    .line 2107
    if-eqz v2, :cond_15

    .line 2109
    :goto_b
    if-eqz v2, :cond_16

    .line 2120
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CandidateMediaToRemove:Ljava/util/Set;

    invoke-interface {v7, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2121
    :goto_c
    invoke-interface {v13, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1a

    .line 2123
    :goto_d
    invoke-virtual {v2, v4}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->addSubMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-object v7, v6

    move-object v6, v3

    .line 2124
    goto/16 :goto_1

    .line 2108
    :cond_15
    invoke-virtual {v4}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    goto :goto_b

    .line 2111
    :cond_16
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->createGroupedMedia(Lcom/oneplus/gallery2/media/MediaStoreMedia;)Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    move-result-object v2

    .line 2112
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

    .line 2114
    invoke-virtual {v2}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v12, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2115
    if-eqz v5, :cond_19

    .line 2117
    :goto_e
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_18
    move-object v7, v6

    move-object v6, v3

    .line 2113
    goto/16 :goto_2

    .line 2116
    :cond_19
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    goto :goto_e

    .line 2122
    :cond_1a
    invoke-virtual {v2}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->startSubMediaUpdate()V

    goto :goto_d

    .line 2130
    :cond_1b
    invoke-virtual {v4}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getGroupId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia(Ljava/lang/String;I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    goto/16 :goto_1

    .line 2134
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CandidateMediaToRemove:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2138
    :cond_1d
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_23

    .line 2139
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

    .line 2178
    :cond_1f
    if-nez v5, :cond_28

    .line 2187
    :cond_20
    if-nez v7, :cond_29

    .line 2197
    :cond_21
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

    .line 2200
    invoke-interface {v13}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 2218
    :cond_22
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 2223
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_IsMediaTableReady:Z

    if-eqz v2, :cond_2d

    .line 2228
    :goto_f
    return-void

    .line 2138
    :cond_23
    if-gtz p3, :cond_1e

    .line 2142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "syncMediaWithMediaStore() - This is last chunk"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CandidateMediaToRemove:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 2145
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

    .line 2146
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

    .line 2147
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CandidateMediaToRemove:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 2148
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    move v8, v3

    :goto_10
    if-ltz v8, :cond_1f

    .line 2151
    aget-object v4, v2, v8

    .line 2152
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

    .line 2153
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->prepareMediaFlagsForCallback(Lcom/oneplus/gallery2/media/Media;)I

    move-result v3

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9, v3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->removeMedia(Lcom/oneplus/gallery2/media/Media;ZI)Z

    .line 2154
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->releaseMedia(Lcom/oneplus/gallery2/media/Media;)V

    .line 2155
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingAddressObtainingMedia:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2158
    instance-of v9, v4, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    .line 2159
    if-nez v9, :cond_25

    .line 2171
    :cond_24
    :goto_11
    if-nez v9, :cond_27

    .line 2148
    :goto_12
    add-int/lit8 v3, v8, -0x1

    move v8, v3

    goto :goto_10

    :cond_25
    move-object v3, v4

    .line 2159
    check-cast v3, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    invoke-virtual {v3}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isSubMedia()Z

    move-result v3

    if-eqz v3, :cond_24

    move-object v3, v4

    .line 2161
    check-cast v3, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    invoke-virtual {v3}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getGroupId()Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia(Ljava/lang/String;I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    .line 2162
    if-eqz v3, :cond_24

    .line 2164
    invoke-interface {v13, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_26

    .line 2166
    :goto_13
    invoke-virtual {v3, v4}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->removeSubMedia(Lcom/oneplus/gallery2/media/Media;)Z

    goto :goto_11

    .line 2165
    :cond_26
    invoke-virtual {v3}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->startSubMediaUpdate()V

    goto :goto_13

    .line 2172
    :cond_27
    check-cast v4, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    invoke-virtual {v4}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->release()V

    goto :goto_12

    .line 2180
    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "syncMediaWithMediaStore() - Add "

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v8, " media"

    invoke-static {v2, v3, v4, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2181
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v3, v2

    :goto_14
    if-ltz v3, :cond_20

    .line 2183
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/Media;

    .line 2184
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->prepareMediaFlagsForCallback(Lcom/oneplus/gallery2/media/Media;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->notifyMediaCreated(Lcom/oneplus/gallery2/media/Media;I)V

    .line 2181
    add-int/lit8 v2, v3, -0x1

    move v3, v2

    goto :goto_14

    .line 2189
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "syncMediaWithMediaStore() - Update "

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, " media"

    invoke-static {v2, v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2190
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v4, v2

    :goto_15
    if-ltz v4, :cond_21

    .line 2192
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/Media;

    .line 2193
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->prepareMediaFlagsForCallback(Lcom/oneplus/gallery2/media/Media;)I

    move-result v5

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    or-int/2addr v3, v5

    .line 2194
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->notifyMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V

    .line 2190
    add-int/lit8 v2, v4, -0x1

    move v4, v2

    goto :goto_15

    .line 2202
    :cond_2a
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

    .line 2203
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2b
    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    .line 2206
    invoke-virtual {v2}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->completeSubMediaUpdate()V

    .line 2209
    invoke-virtual {v2}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->getSubMediaCount()I

    move-result v4

    if-nez v4, :cond_2b

    .line 2211
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->prepareMediaFlagsForCallback(Lcom/oneplus/gallery2/media/Media;)I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5, v4}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->removeMedia(Lcom/oneplus/gallery2/media/Media;ZI)Z

    .line 2212
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->releaseMedia(Lcom/oneplus/gallery2/media/Media;)V

    goto :goto_16

    .line 2220
    :cond_2c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v4, v2, v10

    .line 2221
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

    .line 2225
    :cond_2d
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_IsMediaTableReady:Z

    .line 2226
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

    .line 2234
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_HasPendingMediaSyncWithMediaStore:Z

    if-eqz v0, :cond_0

    .line 2255
    :goto_0
    return-void

    .line 2236
    :cond_0
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->PROP_IS_ACTIVE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2238
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onMediaStoreContentChanged() - Schedule full media sync"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_HasPendingMediaSyncWithMediaStore:Z

    .line 2240
    iput v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaSyncCount:I

    const/16 v0, 0x2711

    const-wide/16 v2, 0x3e8

    .line 2241
    invoke-static {p0, v0, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IJ)Z

    goto :goto_0

    .line 2236
    :cond_2
    if-nez p1, :cond_1

    .line 2245
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaSyncCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaSyncCount:I

    .line 2246
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaSyncCount:I

    const/16 v1, 0x10

    if-le v0, v1, :cond_3

    .line 2250
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "syncMediaWithMediaStoreDelayed() - Too many pending full media sync"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2251
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->syncMediaWithMediaStore()V

    goto :goto_0

    .line 2247
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

    .line 2334
    iget v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_Mode:I

    .line 2335
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getActivationHandleCount()I

    move-result v2

    .line 2336
    if-eqz v2, :cond_0

    .line 2338
    iget v3, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CameraRollOnlyFlagCount:I

    if-ge v3, v2, :cond_1

    :goto_0
    iput v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_Mode:I

    .line 2339
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_Mode:I

    if-ne v1, v0, :cond_2

    .line 2351
    :goto_1
    return-void

    .line 2337
    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    .line 2338
    goto :goto_0

    .line 2341
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

    .line 2342
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_Mode:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 2346
    :pswitch_0
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->syncMediaWithMediaStore()V

    goto :goto_1

    .line 2342
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

    .line 362
    if-eqz p1, :cond_0

    .line 369
    new-instance v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$6;

    const-string/jumbo v1, "DeleteFromMediaStore"

    invoke-direct {v0, p0, v1, p3, v3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$6;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;Landroid/os/Handler;)V

    .line 375
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$7;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$7;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/base/CallbackHandle;Ljava/lang/CharSequence;[Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v1

    .line 404
    if-eqz v1, :cond_1

    .line 409
    return-object v0

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteFromMediaStore() - No selection"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    return-object v3

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteFromMediaStore() - Fail to post to media content thread"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    return-object v3
.end method

.method final deleteMedia(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 423
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->verifyAccess()V

    .line 424
    invoke-virtual {p0, v5}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->isRunningOrInitializing(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    if-eqz p1, :cond_2

    .line 433
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->containsMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 440
    sget v0, Lcom/oneplus/gallery2/media/Media;->FLAG_MOVE_TO_RECYCE_BIN:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p3

    .line 441
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->prepareMediaFlagsForCallback(Lcom/oneplus/gallery2/media/Media;)I

    move-result v1

    or-int/2addr v0, v1

    .line 442
    new-instance v1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)V

    .line 443
    if-nez p2, :cond_4

    .line 447
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_RecycledMedia:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 451
    :goto_1
    instance-of v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    if-nez v0, :cond_6

    .line 467
    invoke-direct {p0, v1, v5}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->onMediaDeleted(Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;Z)V

    .line 470
    :cond_0
    :goto_2
    return-object v1

    .line 425
    :cond_1
    return-object v3

    .line 430
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteMedia() - No media to delete"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    return-object v3

    .line 435
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

    .line 436
    return-object v3

    .line 444
    :cond_4
    invoke-virtual {p2, p1, v0}, Lcom/oneplus/gallery2/media/Media$DeletionCallback;->onDeletionStarted(Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_0

    .line 448
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

    .line 453
    :cond_6
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v0

    new-instance v2, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$8;

    invoke-direct {v2, p0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$8;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;)V

    invoke-static {v0, v2}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    .line 460
    if-nez v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "deleteMedia() - Fail to post to media content thread"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
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
    .line 569
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->PROP_IS_MEDIA_TABLE_READY:Lcom/oneplus/base/PropertyKey;

    if-eq p1, v0, :cond_0

    .line 571
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSource;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 570
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

    .line 579
    instance-of v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    if-nez v0, :cond_1

    .line 590
    :cond_0
    return-object v1

    .line 581
    :cond_1
    check-cast p1, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    .line 582
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isSubMedia()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getGroupId()Ljava/lang/String;

    move-result-object v0

    .line 585
    invoke-virtual {p0, v0, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia(Ljava/lang/String;I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/GroupedMedia;

    .line 586
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 587
    new-array v1, v1, [Lcom/oneplus/gallery2/media/GroupedMedia;

    aput-object v0, v1, v2

    return-object v1
.end method

.method public getMedia(Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;I)Lcom/oneplus/base/Handle;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 610
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->verifyAccess()V

    .line 611
    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->isRunningOrInitializing(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 613
    if-eqz p1, :cond_2

    .line 620
    sget v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->FLAG_ALWAYS_REFRESH:I

    and-int/2addr v0, p3

    if-eqz v0, :cond_3

    .line 632
    :cond_0
    new-instance v0, Lcom/oneplus/base/SimpleRef;

    invoke-direct {v0}, Lcom/oneplus/base/SimpleRef;-><init>()V

    .line 633
    invoke-static {p1, v0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isValidId(Ljava/lang/String;Lcom/oneplus/base/Ref;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 638
    invoke-interface {v0}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 639
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

    .line 642
    new-instance v1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$9;

    const-string/jumbo v3, "GetMedia"

    move-object v2, p0

    move-object v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$9;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;Landroid/os/Handler;J)V

    .line 652
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_MediaObtainCallbackHandles:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 653
    if-eqz v0, :cond_6

    .line 658
    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    invoke-direct {p0, v8}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->syncMediaWithMediaStore(Landroid/net/Uri;)V

    .line 664
    return-object v1

    .line 612
    :cond_1
    return-object v5

    .line 615
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getMedia() - No media ID"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    return-object v5

    .line 622
    :cond_3
    invoke-virtual {p0, p1, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia(Ljava/lang/String;I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v4

    .line 623
    if-eqz v4, :cond_0

    .line 625
    if-nez p2, :cond_4

    .line 627
    :goto_1
    new-instance v0, Lcom/oneplus/base/EmptyHandle;

    const-string/jumbo v1, "GetMedia"

    invoke-direct {v0, v1}, Lcom/oneplus/base/EmptyHandle;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 626
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

    .line 635
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

    .line 636
    return-object v5

    .line 655
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 656
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_MediaObtainCallbackHandles:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getMedia(J)Lcom/oneplus/gallery2/media/MediaStoreMedia;
    .locals 3

    .prologue
    .line 601
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

    .line 677
    if-eqz p1, :cond_0

    .line 682
    if-eqz p2, :cond_1

    .line 689
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PermissionsReady:Z

    if-eqz v0, :cond_2

    .line 696
    new-instance v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$10;

    const-string/jumbo v1, "GetMediaContentURI"

    invoke-direct {v0, p0, v1, p2, v3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$10;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;Landroid/os/Handler;)V

    .line 702
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$11;

    invoke-direct {v2, p0, v0, p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$11;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/base/CallbackHandle;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v1

    .line 736
    if-eqz v1, :cond_3

    .line 741
    return-object v0

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getMediaContentUri() - No file path"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    return-object v3

    .line 684
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getMediaContentUri() - No call-back to receive result"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    return-object v3

    .line 691
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getMediaContentUri() - Permissions not ready"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    return-object v3

    .line 738
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getMediaContentUri() - Fail to post to media content thread"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    return-object v3
.end method

.method public getMediaId(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 749
    new-instance v0, Lcom/oneplus/base/SimpleRef;

    invoke-direct {v0}, Lcom/oneplus/base/SimpleRef;-><init>()V

    .line 750
    invoke-static {p1, v0}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->parsePhotoContentUri(Landroid/net/Uri;Lcom/oneplus/base/Ref;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 754
    :cond_0
    invoke-interface {v0}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getId(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 751
    :cond_1
    invoke-static {p1, v0}, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->parseVideoContentUri(Landroid/net/Uri;Lcom/oneplus/base/Ref;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 752
    invoke-static {p1, v0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->parseFileContentUri(Landroid/net/Uri;Lcom/oneplus/base/Ref;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 756
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
    .line 764
    sget v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->FLAG_EXPAND_GROUPED_MEDIA:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    .line 766
    new-instance v0, Lcom/oneplus/gallery2/media/BaseMediaSource$ExpandedMediaIterable;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_RecycledMedia:Ljava/util/Set;

    invoke-direct {v0, p0, p1, v1}, Lcom/oneplus/gallery2/media/BaseMediaSource$ExpandedMediaIterable;-><init>(Lcom/oneplus/gallery2/media/BaseMediaSource;Lcom/oneplus/gallery2/media/MediaType;Ljava/lang/Iterable;)V

    return-object v0

    .line 765
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

    .line 775
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 839
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSource;->handleMessage(Landroid/os/Message;)V

    .line 842
    :cond_0
    :goto_0
    return-void

    .line 779
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 780
    aget-object v1, v0, v1

    check-cast v1, Lcom/oneplus/base/CallbackHandle;

    aget-object v0, v0, v4

    check-cast v0, Landroid/net/Uri;

    invoke-direct {p0, v1, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->onMediaContentUriQueried(Lcom/oneplus/base/CallbackHandle;Landroid/net/Uri;)V

    goto :goto_0

    .line 786
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

    .line 792
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 793
    aget-object v1, v0, v1

    check-cast v1, Lcom/oneplus/base/CallbackHandle;

    aget-object v0, v0, v4

    check-cast v0, Landroid/net/Uri;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->onMediaStoreAccessCompleted(Lcom/oneplus/base/CallbackHandle;Landroid/net/Uri;II)V

    goto :goto_0

    .line 799
    :sswitch_3
    iput-boolean v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_HasPendingMediaSyncWithMediaStore:Z

    .line 800
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->syncMediaWithMediaStore()V

    goto :goto_0

    .line 806
    :sswitch_4
    iput-boolean v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_HasPendingSingleMediaSyncWithMediaStore:Z

    .line 808
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PermissionsReady:Z

    if-eqz v0, :cond_2

    .line 815
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaIdToSync:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 817
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

    .line 818
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

    .line 810
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleMessage() - Start full media sync when permissions ready"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    iput-boolean v4, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_NeedToSyncMediaWhenPermsReady:Z

    .line 812
    return-void

    .line 819
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaIdToSync:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto/16 :goto_0

    .line 826
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 827
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

    .line 833
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 834
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

    .line 775
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

    .line 885
    if-eqz p1, :cond_0

    .line 890
    if-eqz p2, :cond_1

    .line 898
    invoke-static {}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->$SWITCH_TABLE$com$oneplus$gallery2$media$MediaType()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/MediaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 907
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "insertIntoMediaStore() - Invalid media type : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    return-object v4

    .line 887
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "insertIntoMediaStore() - No media type"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    return-object v4

    .line 892
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "insertIntoMediaStore() - No values to insert"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    return-object v4

    .line 901
    :pswitch_0
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_IMAGE:Landroid/net/Uri;

    .line 912
    :goto_0
    new-instance v1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$12;

    const-string/jumbo v2, "InsertIntoMediaStore"

    invoke-direct {v1, p0, v2, p3, v4}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$12;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;Landroid/os/Handler;)V

    .line 920
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v2

    new-instance v3, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$13;

    invoke-direct {v3, p0, v1, v0, p2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$13;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/base/CallbackHandle;Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-static {v2, v3}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    .line 980
    if-eqz v0, :cond_2

    .line 987
    return-object v1

    .line 904
    :pswitch_1
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_VIDEO:Landroid/net/Uri;

    goto :goto_0

    .line 982
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "insertIntoMediaStore() - Fail to post to media content thread"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    return-object v4

    .line 898
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

    .line 995
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

    .line 1006
    if-eqz p1, :cond_0

    .line 1008
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_HiddenPathPrefixList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 1010
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_HiddenPathPrefixList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1008
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1007
    :cond_0
    return v2

    .line 1011
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 1013
    :cond_2
    return v2
.end method

.method public isRecycledMedia(Lcom/oneplus/gallery2/media/Media;)Z
    .locals 1

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_RecycledMedia:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSubMedia(Lcom/oneplus/gallery2/media/Media;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1029
    instance-of v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    if-nez v0, :cond_0

    .line 1031
    return v1

    .line 1030
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

    .line 1059
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->verifyAccess()V

    .line 1060
    invoke-virtual {p0, v6}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->isRunningOrInitializing(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1062
    if-nez p1, :cond_2

    .line 1063
    :cond_0
    return-void

    .line 1061
    :cond_1
    return-void

    .line 1062
    :cond_2
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/MediaSet;->isVirtual()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p2

    if-eqz v0, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "notifyMediaSetDeleted() - Media set : "

    const-string/jumbo v3, ", "

    array-length v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, " media in this set"

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1068
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_0
    if-ltz v4, :cond_7

    .line 1070
    aget-object v1, p2, v4

    .line 1071
    if-eqz v1, :cond_3

    .line 1073
    instance-of v0, v1, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    if-nez v0, :cond_4

    .line 1090
    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->prepareMediaFlagsForCallback(Lcom/oneplus/gallery2/media/Media;)I

    move-result v0

    invoke-virtual {p0, v1, v6, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->removeMedia(Lcom/oneplus/gallery2/media/Media;ZI)Z

    .line 1091
    invoke-direct {p0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->releaseMedia(Lcom/oneplus/gallery2/media/Media;)V

    .line 1093
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingAddressObtainingMedia:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1068
    :cond_3
    :goto_1
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 1075
    check-cast v0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->getSubMedia()Ljava/lang/Iterable;

    move-result-object v0

    const-class v2, Lcom/oneplus/gallery2/media/Media;

    invoke-static {v0, v2}, Lcom/oneplus/util/CollectionUtils;->toArray(Ljava/lang/Iterable;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery2/media/Media;

    .line 1076
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    move v5, v2

    :goto_2
    if-ltz v5, :cond_6

    .line 1078
    aget-object v3, v0, v5

    .line 1079
    instance-of v2, v3, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    if-nez v2, :cond_5

    .line 1084
    :goto_3
    invoke-virtual {p0, v3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->prepareMediaFlagsForCallback(Lcom/oneplus/gallery2/media/Media;)I

    move-result v2

    invoke-virtual {p0, v3, v6, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->removeMedia(Lcom/oneplus/gallery2/media/Media;ZI)Z

    .line 1076
    add-int/lit8 v2, v5, -0x1

    move v5, v2

    goto :goto_2

    :cond_5
    move-object v2, v3

    .line 1081
    check-cast v2, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    invoke-direct {p0, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->removeFromGroupedMedia(Lcom/oneplus/gallery2/media/MediaStoreMedia;)Z

    .line 1082
    invoke-direct {p0, v3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->releaseMedia(Lcom/oneplus/gallery2/media/Media;)V

    goto :goto_3

    .line 1086
    :cond_6
    invoke-direct {p0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->releaseMedia(Lcom/oneplus/gallery2/media/Media;)V

    goto :goto_1

    .line 1098
    :cond_7
    invoke-direct {p0, v6}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->syncMediaWithMediaStoreDelayed(Z)V

    .line 1099
    return-void
.end method

.method protected notifyMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1107
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery2/media/BaseMediaSource;->notifyMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V

    .line 1110
    instance-of v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    if-nez v0, :cond_1

    .line 1120
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 1112
    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    .line 1113
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isSubMedia()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1115
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia(Ljava/lang/String;I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/BaseGroupedMedia;

    .line 1116
    if-eqz v0, :cond_0

    .line 1117
    invoke-virtual {v0, p1, p2}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->notifySubMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_0
.end method

.method protected onActivated()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1164
    invoke-super {p0}, Lcom/oneplus/gallery2/media/BaseMediaSource;->onActivated()V

    .line 1167
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaSyncCount:I

    if-gtz v0, :cond_0

    .line 1172
    :goto_0
    return-void

    .line 1169
    :cond_0
    iput v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaSyncCount:I

    .line 1170
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->syncMediaWithMediaStore()V

    goto :goto_0
.end method

.method protected onActivationHandleClosed(Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;)V
    .locals 2

    .prologue
    .line 1180
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;->getFlags()I

    move-result v0

    sget v1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->FLAG_CAMERA_ROLL_ONLY:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 1182
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->updateMode()V

    .line 1185
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSource;->onActivationHandleClosed(Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;)V

    .line 1186
    return-void

    .line 1181
    :cond_0
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CameraRollOnlyFlagCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_CameraRollOnlyFlagCount:I

    goto :goto_0
.end method

.method protected onActivationHandleCreated(Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;)Z
    .locals 2

    .prologue
    .line 1194
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSource;->onActivationHandleCreated(Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;)Z

    .line 1197
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;->getFlags()I

    move-result v0

    sget v1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->FLAG_CAMERA_ROLL_ONLY:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 1199
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->updateMode()V

    .line 1202
    const/4 v0, 0x1

    return v0

    .line 1198
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

    .line 1211
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_HasPendingMediaSyncWithMediaStore:Z

    if-nez v0, :cond_0

    .line 1220
    :goto_0
    invoke-super {p0}, Lcom/oneplus/gallery2/media/BaseMediaSource;->onDeactivated()V

    .line 1221
    return-void

    .line 1213
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDeactivated() - Cancel scheduled full media sync"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaSyncCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingMediaSyncCount:I

    .line 1215
    iput-boolean v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_HasPendingMediaSyncWithMediaStore:Z

    const/16 v0, 0x2711

    .line 1216
    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    goto :goto_0
.end method

.method protected onDeinitialize()V
    .locals 3

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_ContentChangeCallbackHandles:Lcom/oneplus/base/HandleSet;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 1234
    :try_start_0
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_MediaIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/oneplus/base/BaseApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1235
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_MediaSetIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/oneplus/base/BaseApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1243
    :goto_0
    invoke-super {p0}, Lcom/oneplus/gallery2/media/BaseMediaSource;->onDeinitialize()V

    .line 1244
    return-void

    .line 1236
    :catch_0
    move-exception v0

    .line 1239
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onDeinitialize() - Fail to unregister receiver"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onInitialize()V
    .locals 7

    .prologue
    .line 1252
    invoke-super {p0}, Lcom/oneplus/gallery2/media/BaseMediaSource;->onInitialize()V

    .line 1255
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v0

    .line 1256
    if-eqz v0, :cond_0

    .line 1260
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v3

    const-class v0, Lcom/oneplus/gallery2/media/ContentObserver;

    .line 1261
    invoke-virtual {v3, v0}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/ContentObserver;

    const-class v1, Lcom/oneplus/net/NetworkManager;

    .line 1262
    invoke-virtual {v3, v1}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/net/NetworkManager;

    .line 1265
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 1266
    iget-object v4, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_HiddenPathPrefixList:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "/Android/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1267
    iget-object v4, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_HiddenPathPrefixList:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "/oem_log/"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1268
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_HiddenPathPrefixList:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-static {v5}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1271
    sget-object v2, Lcom/oneplus/base/BaseApplication;->PROP_IS_READ_STORAGE_PERM_GRANTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v2}, Lcom/oneplus/base/BaseApplication;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1275
    sget-object v2, Lcom/oneplus/base/BaseApplication;->PROP_IS_READ_STORAGE_PERM_GRANTED:Lcom/oneplus/base/PropertyKey;

    new-instance v4, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$14;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$14;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)V

    invoke-virtual {v3, v2, v4}, Lcom/oneplus/base/BaseApplication;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1287
    :goto_0
    if-nez v0, :cond_2

    .line 1295
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onInitialize() - No ContentObserver"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    :goto_1
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1299
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v0, v4, :cond_3

    const-string/jumbo v0, "com.oneplus.camera.intent.action.NEW_PICTURE"

    .line 1306
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "com.oneplus.camera.intent.action.NEW_VIDEO"

    .line 1307
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :goto_2
    const-string/jumbo v0, "com.oneplus.camera.service.CLEAR_IMAGE_CACHE"

    .line 1309
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "com.oneplus.gallery.MEDIA_STORE_MEDIA_DELETED"

    .line 1310
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "com.oneplus.gallery2.media.action.MEDIA_SET_DELETED"

    .line 1311
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v0, "image/*"

    .line 1314
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    const-string/jumbo v0, "video/*"

    .line 1315
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1321
    :goto_3
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_MediaIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v0, v2}, Lcom/oneplus/base/BaseApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1324
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "com.oneplus.gallery2.media.action.MEDIA_SET_DELETED"

    .line 1325
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1326
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_MediaSetIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v2, v0}, Lcom/oneplus/base/BaseApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1329
    sget-object v0, Lcom/oneplus/base/BaseApplication;->PROP_LOCALE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$15;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$15;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)V

    invoke-virtual {v3, v0, v2}, Lcom/oneplus/base/BaseApplication;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1337
    if-nez v1, :cond_4

    .line 1349
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onInitialize() - No NetworkManager"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    :goto_4
    return-void

    .line 1257
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "No media content thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1272
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->onPermissionsReady()V

    goto :goto_0

    .line 1289
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1290
    iget-object v4, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_ContentChangeCallbackHandles:Lcom/oneplus/base/HandleSet;

    sget-object v5, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_IMAGE:Landroid/net/Uri;

    iget-object v6, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_ContentChangeCallback:Lcom/oneplus/gallery2/media/ContentObserver$ContentChangeCallback;

    invoke-interface {v0, v5, v6, v2}, Lcom/oneplus/gallery2/media/ContentObserver;->registerContentChangedCallback(Landroid/net/Uri;Lcom/oneplus/gallery2/media/ContentObserver$ContentChangeCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 1291
    iget-object v4, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_ContentChangeCallbackHandles:Lcom/oneplus/base/HandleSet;

    sget-object v5, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_VIDEO:Landroid/net/Uri;

    iget-object v6, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_ContentChangeCallback:Lcom/oneplus/gallery2/media/ContentObserver$ContentChangeCallback;

    invoke-interface {v0, v5, v6, v2}, Lcom/oneplus/gallery2/media/ContentObserver;->registerContentChangedCallback(Landroid/net/Uri;Lcom/oneplus/gallery2/media/ContentObserver$ContentChangeCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 1292
    iget-object v4, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_ContentChangeCallbackHandles:Lcom/oneplus/base/HandleSet;

    sget-object v5, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->CONTENT_URI_OBJECT:Landroid/net/Uri;

    iget-object v6, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_ContentChangeCallback:Lcom/oneplus/gallery2/media/ContentObserver$ContentChangeCallback;

    invoke-interface {v0, v5, v6, v2}, Lcom/oneplus/gallery2/media/ContentObserver;->registerContentChangedCallback(Landroid/net/Uri;Lcom/oneplus/gallery2/media/ContentObserver$ContentChangeCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    goto/16 :goto_1

    :cond_3
    const-string/jumbo v0, "android.hardware.action.NEW_PICTURE"

    .line 1301
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.hardware.action.NEW_VIDEO"

    .line 1302
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1316
    :catch_0
    move-exception v0

    .line 1319
    iget-object v4, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onInitialize() - Unknown error while preparing intent filter"

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 1339
    :cond_4
    sget-object v0, Lcom/oneplus/net/NetworkManager;->PROP_IS_NETWORK_CONNECTED:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$16;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$16;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)V

    invoke-interface {v1, v0, v2}, Lcom/oneplus/net/NetworkManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    goto :goto_4
.end method

.method final recycleMedia(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1756
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->verifyAccess()V

    .line 1757
    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->isRunningOrInitializing(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1761
    if-eqz p1, :cond_1

    .line 1766
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->containsMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1773
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_RecycledMedia:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1780
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->prepareMediaFlagsForCallback(Lcom/oneplus/gallery2/media/Media;)I

    move-result v0

    sget v1, Lcom/oneplus/gallery2/media/Media;->FLAG_MOVE_TO_RECYCE_BIN:I

    or-int/2addr v0, v1

    or-int/2addr v0, p3

    .line 1781
    if-nez p2, :cond_4

    .line 1783
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->notifyMediaDeleted(Lcom/oneplus/gallery2/media/Media;I)V

    .line 1784
    if-nez p2, :cond_5

    .line 1788
    :goto_1
    new-instance v1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)V

    return-object v1

    .line 1758
    :cond_0
    return-object v3

    .line 1763
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "recycleMedia() - No media to delete"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1764
    return-object v3

    .line 1768
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

    .line 1769
    return-object v3

    .line 1775
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

    .line 1776
    return-object v3

    .line 1782
    :cond_4
    invoke-virtual {p2, p1, v0}, Lcom/oneplus/gallery2/media/Media$DeletionCallback;->onDeletionStarted(Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_0

    .line 1785
    :cond_5
    invoke-virtual {p2, p1, v2, v0}, Lcom/oneplus/gallery2/media/Media$DeletionCallback;->onDeletionCompleted(Lcom/oneplus/gallery2/media/Media;ZI)V

    goto :goto_1
.end method

.method final scheduleAddressObtaining(Lcom/oneplus/gallery2/media/MediaStoreMedia;)V
    .locals 4

    .prologue
    .line 1859
    invoke-static {}, Lcom/oneplus/gallery2/GalleryLib;->isClient()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1860
    :cond_0
    return-void

    .line 1859
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingAddressObtainingMedia:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1861
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_IsMediaAddressesObtainingScheduled:Z

    if-eqz v0, :cond_2

    .line 1866
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_PendingAddressObtainingMedia:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v1, 0x40

    if-ge v0, v1, :cond_3

    .line 1868
    :goto_0
    return-void

    .line 1863
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_IsMediaAddressesObtainingScheduled:Z

    .line 1864
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_ObtainMediaAddressesRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1867
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->m_ObtainMediaAddressesRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method updateAddress(Lcom/oneplus/gallery2/media/MediaStoreMedia;Landroid/location/Address;)V
    .locals 19

    .prologue
    .line 2273
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

    .line 2303
    :goto_0
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v18

    new-instance v2, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$18;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v17}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$18;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMedia;Ljava/lang/String;DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 2328
    return-void

    .line 2275
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/location/Address;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2276
    invoke-virtual/range {p2 .. p2}, Landroid/location/Address;->getLatitude()D

    move-result-wide v6

    .line 2277
    invoke-virtual/range {p2 .. p2}, Landroid/location/Address;->getLongitude()D

    move-result-wide v8

    .line 2278
    invoke-virtual/range {p2 .. p2}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v10

    .line 2279
    invoke-virtual/range {p2 .. p2}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v11

    .line 2280
    invoke-virtual/range {p2 .. p2}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v12

    .line 2281
    invoke-virtual/range {p2 .. p2}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v13

    .line 2282
    invoke-virtual/range {p2 .. p2}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v14

    .line 2283
    invoke-virtual/range {p2 .. p2}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v15

    const/4 v2, 0x0

    .line 2284
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v16

    const/4 v2, 0x1

    .line 2285
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v17

    goto :goto_0
.end method

.method updateObjectDetectionResult(Lcom/oneplus/gallery2/media/MediaStoreMedia;JJLjava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery2/media/MediaStoreMedia;",
            "JJ",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/GalleryDatabase$ObjectDetectionResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2363
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v0

    new-instance v1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$19;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$19;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMedia;JJLjava/util/List;)V

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 2391
    return-void
.end method

.method updateOnePlusFlags(Lcom/oneplus/gallery2/media/MediaStoreMedia;II)V
    .locals 2

    .prologue
    .line 2402
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v0

    new-instance v1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$20;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$20;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMedia;II)V

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 2418
    return-void
.end method

.method updateSceneDetectionResult(Lcom/oneplus/gallery2/media/MediaStoreMedia;JJLjava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery2/media/MediaStoreMedia;",
            "JJ",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/GalleryDatabase$SceneDetectionResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2430
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v0

    new-instance v1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$21;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$21;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMedia;JJLjava/util/List;)V

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 2458
    return-void
.end method
