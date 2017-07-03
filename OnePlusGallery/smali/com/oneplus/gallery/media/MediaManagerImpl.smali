.class public Lcom/oneplus/gallery/media/MediaManagerImpl;
.super Lcom/oneplus/base/component/BasicComponent;
.source "MediaManagerImpl.java"

# interfaces
.implements Lcom/oneplus/gallery/media/OPMediaManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/media/MediaManagerImpl$37;,
        Lcom/oneplus/gallery/media/MediaManagerImpl$GroupMediaListImpl;,
        Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;,
        Lcom/oneplus/gallery/media/MediaManagerImpl$DirectoryRenameHandle;,
        Lcom/oneplus/gallery/media/MediaManagerImpl$ContentObserver;,
        Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;,
        Lcom/oneplus/gallery/media/MediaManagerImpl$MediaRecyclingHandle;,
        Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;,
        Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;,
        Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeCallbackHandle;,
        Lcom/oneplus/gallery/media/MediaManagerImpl$CallbackHandle;,
        Lcom/oneplus/gallery/media/MediaManagerImpl$ContentProviderAccessHandle;,
        Lcom/oneplus/gallery/media/MediaManagerImpl$MediaIdIterable;,
        Lcom/oneplus/gallery/media/MediaManagerImpl$MediaIdIteratorImpl;,
        Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;,
        Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeInfo;,
        Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;
    }
.end annotation


# static fields
.field private static final CONTENT_URI_FILE:Landroid/net/Uri;

.field private static final CONTENT_URI_IMAGE:Landroid/net/Uri;

.field private static final CONTENT_URI_VIDEO:Landroid/net/Uri;

.field private static final DIR_COLUMNS:[Ljava/lang/String;

.field private static final DIR_QUERY_BASE_CONDITION:Ljava/lang/String; = "(media_type=1 OR media_type=3)"

.field private static final DIR_QUERY_BASE_CONDITION_PHOTO:Ljava/lang/String; = "(media_type=1)"

.field private static final DIR_QUERY_BASE_CONDITION_VIDEO:Ljava/lang/String; = "(media_type=3)"

.field private static final DURATION_CLEAR_USELESS_MEDIA_CACHE:J = 0x3e8L

.field private static final DURATION_MAX_CLEAR_USELESS_CACHE:J = 0x3e8L

.field private static final DURATION_RELEASE_MEDIA_TABLE_DELAY:J = 0xbb8L

.field private static final EMPTY_MEDIA_ID:I = 0x0

.field private static final ENABLE_GROUP_MEDIA:Z = false

.field private static final INTERVAL_CHECK_CONTENT_CHANGES:J = 0x7d0L

.field private static final MEDIA_QUERY_CONDITION:Ljava/lang/String; = "media_type=1 OR media_type=3"

.field private static final MEDIA_TABLE_SYNC_CHUNK_SIZE:J = 0x100L

.field private static final MIN_MEDIA_COLUMNS:[Ljava/lang/String;

.field private static final MSG_ACCESS_CONTENT_PROVIDER:I = 0x2710

.field private static final MSG_ADD_MEDIA_TO_ALBUM:I = 0x2762

.field private static final MSG_CHECK_CONTENT_CHANGES:I = 0x2738

.field private static final MSG_CLEAR_USELESS_MEDIA_CACHE:I = 0x276a

.field private static final MSG_CREATE_ALBUM:I = 0x2760

.field private static final MSG_DELETE_ALBUM:I = 0x2761

.field private static final MSG_DELETE_MEDIA:I = 0x274c

.field private static final MSG_MEDIA_CHANGE_CB_MEDIA_CREATED:I = 0x2710

.field private static final MSG_MEDIA_CHANGE_CB_MEDIA_DELETED:I = 0x2711

.field private static final MSG_MEDIA_CHANGE_CB_MEDIA_UPDATED:I = 0x2714

.field private static final MSG_MEDIA_HANDLE_SCHEDULED_MEDIA_CHANGE_CB:I = 0x2715

.field private static final MSG_NOTIFY_CONTENT_CHANGED:I = 0x2739

.field private static final MSG_REFRESH_ALBUM_MEDIA_SETS:I = 0x2764

.field private static final MSG_REGISTER_CONTENT_CHANGED_CB:I = 0x271a

.field private static final MSG_REGISTER_DIRECTORY_RENAME_CB:I = 0x271c

.field private static final MSG_RELEASE_MEDIA_TABLE:I = 0x2712

.field private static final MSG_REMOVE_MEDIA_FROM_ALBUM:I = 0x2763

.field private static final MSG_SETUP_MEDIA_TABLE:I = 0x2711

.field private static final MSG_SYNC_MEDIA_TABLE:I = 0x2713

.field private static final MSG_UI_ALBUM_MEDIA_SET_CREATED:I = 0x2729

.field private static final MSG_UI_ALBUM_MEDIA_SET_DELETED:I = 0x272a

.field private static final MSG_UI_DIR_MEDIA_SET_CREATED:I = 0x2724

.field private static final MSG_UI_DIR_MEDIA_SET_DELETED:I = 0x2725

.field private static final MSG_UI_DIR_MEDIA_SET_RENAMED:I = 0x2726

.field private static final MSG_UI_HANDLE_SCHEDULED_MESSAGES:I = 0x2733

.field private static final MSG_UI_REFRESH_MEDIA_SET_LISTS:I = 0x272e

.field private static final MSG_UNREGISTER_CONTENT_CHANGED_CB:I = 0x271b

.field private static final MSG_UNREGISTER_DIRECTORY_RENAME_CB:I = 0x271d

.field private static final MSG_UPDATE_ONEPLUS_FLAGS:I = 0x2756

.field private static final MTP_URI_OBJECT:Landroid/net/Uri;

.field private static final PATTERN_SPECIFIC_CONTENT_URI:Ljava/lang/String; = ".+/[\\d]+$"

.field private static final PRINT_LOGS:Z = false

.field private static final REGEX_BURST_FILE_NAME:Ljava/lang/String; = "^IMG_.+_\\d{3}$"

.field private static final SYSTEM_MEDIA_SET_PRIORITIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final m_ActivateHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_ActiveGroupMediaLists:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/oneplus/gallery/media/MediaManagerImpl$GroupMediaListImpl;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final m_ActiveMediaSetLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;",
            ">;>;"
        }
    .end annotation
.end field

.field private final m_AlbumMediaSetReleasedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final m_AlbumMediaSetTables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/oneplus/gallery/media/MediaType;",
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/oneplus/gallery/media/AlbumMediaSet;",
            ">;>;"
        }
    .end annotation
.end field

.field private final m_AllMediaMediaSets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/oneplus/gallery/media/MediaType;",
            "Lcom/oneplus/gallery/media/AllMediaMediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private final m_CameraRollMediaSets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/oneplus/gallery/media/MediaType;",
            "Lcom/oneplus/gallery/media/CameraRollMediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private m_ClearCacheReceiver:Landroid/content/BroadcastReceiver;

.field private m_ContentObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Lcom/oneplus/gallery/media/MediaManagerImpl$ContentObserver;",
            ">;"
        }
    .end annotation
.end field

.field private m_ContentResolver:Landroid/content/ContentResolver;

.field private volatile m_ContentThread:Landroid/os/HandlerThread;

.field private volatile m_ContentThreadHandler:Landroid/os/Handler;

.field private m_ContentThreadMonitorHandle:Lcom/oneplus/base/Handle;

.field private final m_DirectoryMediaSetContainsRecycledMediaCB:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final m_DirectoryMediaSetMediaCountChangedCB:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final m_DirectoryMediaSetReleasedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final m_DirectoryMediaSetTables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/oneplus/gallery/media/MediaType;",
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/oneplus/gallery/media/DirectoryMediaSet;",
            ">;>;"
        }
    .end annotation
.end field

.field private final m_DirectoryPathTables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/oneplus/gallery/media/MediaType;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final m_DirectoryRenameHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/media/MediaManagerImpl$DirectoryRenameHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_EmptyMediaObtainCallback:Lcom/oneplus/gallery/media/MediaObtainCallback;

.field private m_ExtraMediaChangedListenerHandle:Lcom/oneplus/base/Handle;

.field private final m_FavoriteMediaSets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/oneplus/gallery/media/MediaType;",
            "Lcom/oneplus/gallery/media/FavoriteMediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private m_GalleryDataChangeListener:Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener",
            "<",
            "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final m_GroupMediaChangeCallback:Lcom/oneplus/gallery/media/GroupMedia$GroupMediaChangeCallback;

.field private final m_GroupMediaTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/oneplus/gallery/media/GroupMedia;",
            ">;"
        }
    .end annotation
.end field

.field private final m_HiddenDirectoryPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile m_IsStorageChecked:Z

.field private volatile m_IsStorageChecking:Z

.field private final m_Lock:Ljava/lang/Object;

.field private final m_MediaChangeHandlers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final m_MediaContentChangeCB:Lcom/oneplus/gallery/media/MediaManager$ContentChangeCallback;

.field private m_MediaContentChangeCBHandle:Lcom/oneplus/base/Handle;

.field private final m_MediaRecyclingHandles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/oneplus/gallery/media/MediaManagerImpl$MediaRecyclingHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_MediaTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final m_NewMediaIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final m_PendingContentProviderAccessHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/gallery/media/MediaManagerImpl$ContentProviderAccessHandle;",
            ">;"
        }
    .end annotation
.end field

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

.field private final m_SDCardPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final m_ScheduledUIMessages:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private m_ScreenshotMediaSet:Lcom/oneplus/gallery/media/ScreenshotMediaSet;

.field private final m_SelfieMediaSets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/oneplus/gallery/media/MediaType;",
            "Lcom/oneplus/gallery/media/SelfieMediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private final m_SpecialDirectoryPaths:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final m_StorageCheckLock:Ljava/lang/Object;

.field private final m_SysMediaSetMediaCountChangedCB:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile m_ThumbnailImageManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->CONTENT_URI_FILE:Landroid/net/Uri;

    .line 98
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->CONTENT_URI_IMAGE:Landroid/net/Uri;

    .line 99
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->CONTENT_URI_VIDEO:Landroid/net/Uri;

    .line 101
    const-string v0, "content://media/external/object"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->MTP_URI_OBJECT:Landroid/net/Uri;

    .line 103
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "parent"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "date_added"

    aput-object v1, v0, v4

    sput-object v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->DIR_COLUMNS:[Ljava/lang/String;

    .line 108
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "media_type"

    aput-object v1, v0, v3

    sput-object v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->MIN_MEDIA_COLUMNS:[Ljava/lang/String;

    .line 127
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/oneplus/gallery/media/AllMediaMediaSet;

    aput-object v1, v0, v2

    const-class v1, Lcom/oneplus/gallery/media/CameraRollMediaSet;

    aput-object v1, v0, v3

    const-class v1, Lcom/oneplus/gallery/media/SelfieMediaSet;

    aput-object v1, v0, v4

    const-class v1, Lcom/oneplus/gallery/media/FavoriteMediaSet;

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-class v2, Lcom/oneplus/gallery/media/ScreenshotMediaSet;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->SYSTEM_MEDIA_SET_PRIORITIES:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lcom/oneplus/gallery/GalleryApplication;)V
    .locals 2
    .param p1, "application"    # Lcom/oneplus/gallery/GalleryApplication;

    .prologue
    .line 1318
    const-string v0, "Media manager"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/base/component/BasicComponent;-><init>(Ljava/lang/String;Lcom/oneplus/base/component/ComponentOwner;Z)V

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActivateHandles:Ljava/util/List;

    .line 174
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveGroupMediaLists:Ljava/util/HashMap;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveMediaSetLists:Ljava/util/List;

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_AlbumMediaSetTables:Ljava/util/HashMap;

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_AllMediaMediaSets:Ljava/util/HashMap;

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_CameraRollMediaSets:Ljava/util/HashMap;

    .line 185
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_DirectoryMediaSetTables:Ljava/util/HashMap;

    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_DirectoryPathTables:Ljava/util/HashMap;

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_DirectoryRenameHandles:Ljava/util/List;

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_FavoriteMediaSets:Ljava/util/HashMap;

    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_GroupMediaTable:Ljava/util/HashMap;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_HiddenDirectoryPaths:Ljava/util/List;

    .line 196
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_Lock:Ljava/lang/Object;

    .line 197
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaChangeHandlers:Ljava/util/Set;

    .line 199
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaRecyclingHandles:Ljava/util/Map;

    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaTable:Ljava/util/Map;

    .line 201
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_PendingContentProviderAccessHandles:Ljava/util/LinkedList;

    .line 202
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ScheduledUIMessages:Ljava/util/Deque;

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_SDCardPaths:Ljava/util/List;

    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_SelfieMediaSets:Ljava/util/HashMap;

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_SpecialDirectoryPaths:Ljava/util/HashMap;

    .line 207
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_StorageCheckLock:Ljava/lang/Object;

    .line 212
    new-instance v0, Lcom/oneplus/gallery/media/MediaManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/media/MediaManagerImpl$1;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;)V

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_AlbumMediaSetReleasedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 220
    new-instance v0, Lcom/oneplus/gallery/media/MediaManagerImpl$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/media/MediaManagerImpl$2;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;)V

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ReadExternalStorageChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 232
    new-instance v0, Lcom/oneplus/gallery/media/MediaManagerImpl$3;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/media/MediaManagerImpl$3;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;)V

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_DirectoryMediaSetContainsRecycledMediaCB:Lcom/oneplus/base/PropertyChangedCallback;

    .line 251
    new-instance v0, Lcom/oneplus/gallery/media/MediaManagerImpl$4;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/media/MediaManagerImpl$4;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;)V

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_DirectoryMediaSetMediaCountChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    .line 272
    new-instance v0, Lcom/oneplus/gallery/media/MediaManagerImpl$5;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/media/MediaManagerImpl$5;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;)V

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_DirectoryMediaSetReleasedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 280
    new-instance v0, Lcom/oneplus/gallery/media/MediaManagerImpl$6;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/media/MediaManagerImpl$6;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;)V

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaContentChangeCB:Lcom/oneplus/gallery/media/MediaManager$ContentChangeCallback;

    .line 310
    new-instance v0, Lcom/oneplus/gallery/media/MediaManagerImpl$7;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/media/MediaManagerImpl$7;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;)V

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_SysMediaSetMediaCountChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    .line 318
    new-instance v0, Lcom/oneplus/gallery/media/MediaManagerImpl$8;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/media/MediaManagerImpl$8;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;)V

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_GroupMediaChangeCallback:Lcom/oneplus/gallery/media/GroupMedia$GroupMediaChangeCallback;

    .line 499
    new-instance v0, Lcom/oneplus/gallery/media/MediaManagerImpl$9;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/media/MediaManagerImpl$9;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;)V

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_NewMediaIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1319
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery/media/MediaManagerImpl;J)V
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;
    .param p1, "x1"    # J

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/media/MediaManagerImpl;->onAlbumMediaSetReleased(J)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/gallery/media/MediaManagerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->refreshMediaSetLists()V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/MediaSet;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;
    .param p1, "x1"    # Lcom/oneplus/gallery/media/MediaSet;
    .param p2, "x2"    # Ljava/lang/Integer;
    .param p3, "x3"    # Ljava/lang/Integer;

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery/media/MediaManagerImpl;->onSystemMediaSetMediaCountChanged(Lcom/oneplus/gallery/media/MediaSet;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/GroupMedia;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;
    .param p1, "x1"    # Lcom/oneplus/gallery/media/GroupMedia;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/media/MediaManagerImpl;->onGroupMediaSubMediaSizeChanged(Lcom/oneplus/gallery/media/GroupMedia;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/GroupMedia;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;
    .param p1, "x1"    # Lcom/oneplus/gallery/media/GroupMedia;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/media/MediaManagerImpl;->onGroupMediaCoverChanged(Lcom/oneplus/gallery/media/GroupMedia;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/oneplus/gallery/media/MediaManagerImpl;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/media/MediaManagerImpl;->onNewMediaIntentReceived(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaTable:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaRecyclingHandles:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/MediaManagerImpl$ContentProviderAccessHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;
    .param p1, "x1"    # Lcom/oneplus/gallery/media/MediaManagerImpl$ContentProviderAccessHandle;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/media/MediaManagerImpl;->cancelContentProviderAccess(Lcom/oneplus/gallery/media/MediaManagerImpl$ContentProviderAccessHandle;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeCallbackHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;
    .param p1, "x1"    # Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeCallbackHandle;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/media/MediaManagerImpl;->unregisterMediaChangeCallback(Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeCallbackHandle;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;
    .param p1, "x1"    # Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/media/MediaManagerImpl;->unregisterContentChangedCallback(Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/MediaManagerImpl$DirectoryRenameHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;
    .param p1, "x1"    # Lcom/oneplus/gallery/media/MediaManagerImpl$DirectoryRenameHandle;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/media/MediaManagerImpl;->unregisterDirectoryRenameCallback(Lcom/oneplus/gallery/media/MediaManagerImpl$DirectoryRenameHandle;)V

    return-void
.end method

.method static synthetic access$2300()Ljava/util/List;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->SYSTEM_MEDIA_SET_PRIORITIES:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;
    .param p1, "x1"    # Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/media/MediaManagerImpl;->onMediaSetListReleased(Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/MediaManagerImpl$GroupMediaListImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;
    .param p1, "x1"    # Lcom/oneplus/gallery/media/MediaManagerImpl$GroupMediaListImpl;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/media/MediaManagerImpl;->onGroupMediaListReleased(Lcom/oneplus/gallery/media/MediaManagerImpl$GroupMediaListImpl;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/base/Handle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/media/MediaManagerImpl;->deactivate(Lcom/oneplus/base/Handle;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/gallery/media/MediaManagerImpl;J)V
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;
    .param p1, "x1"    # J

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/media/MediaManagerImpl;->onDirectoryMediaSetDeleted(J)V

    return-void
.end method

.method static synthetic access$3000(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_GroupMediaTable:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/oneplus/gallery/media/MediaManagerImpl;JLcom/oneplus/gallery/media/Media;I)V
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;
    .param p1, "x1"    # J
    .param p3, "x2"    # Lcom/oneplus/gallery/media/Media;
    .param p4, "x3"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/gallery/media/MediaManagerImpl;->addToGroupMedia(JLcom/oneplus/gallery/media/Media;I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/oneplus/gallery/media/MediaManagerImpl;JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;
    .param p1, "x1"    # J
    .param p3, "x2"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "x3"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "x4"    # I

    .prologue
    .line 92
    invoke-direct/range {p0 .. p5}, Lcom/oneplus/gallery/media/MediaManagerImpl;->addToMediaTable(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/oneplus/gallery/media/MediaManagerImpl;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThreadMonitorHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThreadMonitorHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic access$4102(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/ThumbnailImageManager;)Lcom/oneplus/gallery/media/ThumbnailImageManager;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;
    .param p1, "x1"    # Lcom/oneplus/gallery/media/ThumbnailImageManager;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ThumbnailImageManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/oneplus/gallery/media/MediaManagerImpl;Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/gallery/media/MediaObtainCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/oneplus/gallery/media/MediaObtainCallback;
    .param p4, "x4"    # Landroid/os/Handler;
    .param p5, "x5"    # I

    .prologue
    .line 92
    invoke-direct/range {p0 .. p5}, Lcom/oneplus/gallery/media/MediaManagerImpl;->obtainMedia(Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/gallery/media/MediaObtainCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500(Lcom/oneplus/gallery/media/MediaManagerImpl;)Lcom/oneplus/gallery/media/MediaObtainCallback;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_EmptyMediaObtainCallback:Lcom/oneplus/gallery/media/MediaObtainCallback;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_DirectoryPathTables:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4800()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->CONTENT_URI_FILE:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/gallery/media/MediaManagerImpl;J)V
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;
    .param p1, "x1"    # J

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/media/MediaManagerImpl;->removeDirectoryMediaSetFromActiveSetList(J)V

    return-void
.end method

.method static synthetic access$5000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->DIR_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_DirectoryMediaSetTables:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/oneplus/gallery/media/MediaManagerImpl;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/media/MediaManagerImpl;->isSpecialDirectoryPath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Lcom/oneplus/gallery/media/MediaManagerImpl;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/media/MediaManagerImpl;->scheduleUIMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_DirectoryRenameHandles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/oneplus/gallery/media/MediaManagerImpl;JLjava/lang/String;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;Lcom/oneplus/gallery/media/MediaType;)V
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;
    .param p5, "x4"    # Lcom/oneplus/gallery/media/MediaType;

    .prologue
    .line 92
    invoke-direct/range {p0 .. p5}, Lcom/oneplus/gallery/media/MediaManagerImpl;->onDirectoryMediaSetCreated(JLjava/lang/String;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;Lcom/oneplus/gallery/media/MediaType;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/oneplus/gallery/media/MediaManagerImpl;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/media/MediaManagerImpl;->handleContentThreadMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/oneplus/gallery/media/MediaManagerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->checkStorages()V

    return-void
.end method

.method static synthetic access$5800(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_PendingContentProviderAccessHandles:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/DirectoryMediaSet;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;
    .param p1, "x1"    # Lcom/oneplus/gallery/media/DirectoryMediaSet;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/media/MediaManagerImpl;->addDirectoryMediaSetToActiveSetList(Lcom/oneplus/gallery/media/DirectoryMediaSet;)V

    return-void
.end method

.method static synthetic access$6000(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/MediaManagerImpl$ContentProviderAccessHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;
    .param p1, "x1"    # Lcom/oneplus/gallery/media/MediaManagerImpl$ContentProviderAccessHandle;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/media/MediaManagerImpl;->accessContentProvider(Lcom/oneplus/gallery/media/MediaManagerImpl$ContentProviderAccessHandle;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/oneplus/gallery/media/MediaManagerImpl;JI)Lcom/oneplus/gallery/media/Media;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery/media/MediaManagerImpl;->removeFromMediaTable(JI)Lcom/oneplus/gallery/media/Media;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6500(Lcom/oneplus/gallery/media/MediaManagerImpl;JLcom/oneplus/gallery/media/Media;I)V
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;
    .param p1, "x1"    # J
    .param p3, "x2"    # Lcom/oneplus/gallery/media/Media;
    .param p4, "x3"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/gallery/media/MediaManagerImpl;->removeFromGroupMedia(JLcom/oneplus/gallery/media/Media;I)V

    return-void
.end method

.method static synthetic access$6600(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/gallery/media/MediaManagerImpl;J)V
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;
    .param p1, "x1"    # J

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/media/MediaManagerImpl;->onDirectoryMediaSetReleased(J)V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oneplus/gallery/media/MediaManagerImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private accessContentProvider(Lcom/oneplus/gallery/media/MediaManagerImpl$ContentProviderAccessHandle;)V
    .locals 5
    .param p1, "handle"    # Lcom/oneplus/gallery/media/MediaManagerImpl$ContentProviderAccessHandle;

    .prologue
    .line 1367
    const/4 v0, 0x0

    .line 1370
    .local v0, "client":Landroid/content/ContentProviderClient;
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentResolver:Landroid/content/ContentResolver;

    if-nez v2, :cond_0

    .line 1371
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/gallery/GalleryApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentResolver:Landroid/content/ContentResolver;

    .line 1372
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p1, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentProviderAccessHandle;->contentUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 1373
    iget-object v2, p1, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentProviderAccessHandle;->callback:Lcom/oneplus/gallery/media/MediaManager$ContentProviderAccessCallback;

    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p1, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentProviderAccessHandle;->contentUri:Landroid/net/Uri;

    invoke-interface {v2, v3, v4, v0}, Lcom/oneplus/gallery/media/MediaManager$ContentProviderAccessCallback;->onAccessContentProvider(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentProviderClient;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1381
    if-eqz v0, :cond_1

    .line 1382
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 1383
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentProviderAccessHandle;->complete()V

    .line 1385
    :goto_0
    return-void

    .line 1375
    :catch_0
    move-exception v1

    .line 1377
    .local v1, "ex":Ljava/lang/Throwable;
    :try_start_1
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v3, "accessContentProvider() - Fail to access content provider"

    invoke-static {v2, v3, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1381
    if-eqz v0, :cond_2

    .line 1382
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 1383
    :cond_2
    invoke-virtual {p1}, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentProviderAccessHandle;->complete()V

    goto :goto_0

    .line 1381
    .end local v1    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_3

    .line 1382
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 1383
    :cond_3
    invoke-virtual {p1}, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentProviderAccessHandle;->complete()V

    throw v2
.end method

.method private addDirectoryMediaSetToActiveSetList(JLjava/lang/String;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;Lcom/oneplus/gallery/media/MediaType;)Lcom/oneplus/gallery/media/DirectoryMediaSet;
    .locals 7
    .param p1, "id"    # J
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "extraInfo"    # Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;
    .param p5, "targetMediaType"    # Lcom/oneplus/gallery/media/MediaType;

    .prologue
    const/4 v0, 0x0

    .line 1449
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveMediaSetLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1461
    :cond_0
    :goto_0
    return-object v0

    .line 1451
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_DirectoryMediaSetTables:Ljava/util/HashMap;

    invoke-virtual {v1, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/LongSparseArray;

    .line 1452
    .local v6, "table":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/oneplus/gallery/media/DirectoryMediaSet;>;"
    if-eqz v6, :cond_0

    .line 1454
    invoke-virtual {v6, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/DirectoryMediaSet;

    .line 1455
    .local v0, "set":Lcom/oneplus/gallery/media/DirectoryMediaSet;
    if-nez v0, :cond_2

    .line 1457
    new-instance v0, Lcom/oneplus/gallery/media/DirectoryMediaSet;

    .end local v0    # "set":Lcom/oneplus/gallery/media/DirectoryMediaSet;
    move-object v1, p3

    move-wide v2, p1

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/gallery/media/DirectoryMediaSet;-><init>(Ljava/lang/String;JLcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;Lcom/oneplus/gallery/media/MediaType;)V

    .line 1458
    .restart local v0    # "set":Lcom/oneplus/gallery/media/DirectoryMediaSet;
    invoke-virtual {v6, p1, p2, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1460
    :cond_2
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->addDirectoryMediaSetToActiveSetList(Lcom/oneplus/gallery/media/DirectoryMediaSet;)V

    goto :goto_0
.end method

.method private addDirectoryMediaSetToActiveSetList(Lcom/oneplus/gallery/media/DirectoryMediaSet;)V
    .locals 4
    .param p1, "mediaSet"    # Lcom/oneplus/gallery/media/DirectoryMediaSet;

    .prologue
    .line 1465
    if-nez p1, :cond_1

    .line 1479
    :cond_0
    return-void

    .line 1467
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/gallery/media/DirectoryMediaSet;->getTargetMediaType()Lcom/oneplus/gallery/media/MediaType;

    move-result-object v2

    .line 1468
    .local v2, "targetMediaType":Lcom/oneplus/gallery/media/MediaType;
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveMediaSetLists:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1470
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveMediaSetLists:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;

    .line 1471
    .local v1, "list":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;
    if-eqz v1, :cond_3

    .line 1473
    invoke-virtual {v1}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->getTargetMediaType()Lcom/oneplus/gallery/media/MediaType;

    move-result-object v3

    if-ne v3, v2, :cond_2

    .line 1474
    invoke-virtual {v1, p1}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->addMediaSet(Lcom/oneplus/gallery/media/MediaSet;)V

    .line 1468
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1477
    :cond_3
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveMediaSetLists:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1
.end method

.method private addToGroupMedia(JLcom/oneplus/gallery/media/Media;I)V
    .locals 11
    .param p1, "id"    # J
    .param p3, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p4, "flags"    # I

    .prologue
    .line 1553
    instance-of v1, p3, Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;

    if-nez v1, :cond_1

    .line 1575
    :cond_0
    return-void

    :cond_1
    move-object v9, p3

    .line 1557
    check-cast v9, Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;

    .line 1558
    .local v9, "photoMedia":Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;
    invoke-virtual {v9}, Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;->getParentId()J

    move-result-wide v4

    invoke-virtual {v9}, Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;->getFilePath()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/gallery/media/MediaManagerImpl;->obtainGroupMedia(JJLjava/lang/String;)Lcom/oneplus/gallery/media/GroupMedia;

    move-result-object v0

    .line 1559
    .local v0, "groupMedia":Lcom/oneplus/gallery/media/GroupMedia;
    if-eqz v0, :cond_0

    .line 1563
    invoke-interface {v0, p3}, Lcom/oneplus/gallery/media/GroupMedia;->addSubMedia(Lcom/oneplus/gallery/media/Media;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1565
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v2, "addToGroupMedia() - Media: "

    invoke-static {v1, v2, p3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1569
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveGroupMediaLists:Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/oneplus/gallery/media/GroupMedia;->getGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1570
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/oneplus/gallery/media/MediaManagerImpl$GroupMediaListImpl;>;>;"
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1572
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-ge v7, v1, :cond_0

    .line 1573
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/MediaManagerImpl$GroupMediaListImpl;

    invoke-virtual {v1, p3}, Lcom/oneplus/gallery/media/MediaManagerImpl$GroupMediaListImpl;->addMedia(Lcom/oneplus/gallery/media/Media;)I

    .line 1572
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method private addToMediaTable(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 11
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 1581
    new-instance v2, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;-><init>(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;)V

    .line 1582
    .local v2, "holder":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;
    const/4 v9, 0x0

    .line 1583
    .local v9, "prevHolder":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;
    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaTable:Ljava/util/Map;

    monitor-enter v4

    .line 1585
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaTable:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;

    move-object v9, v0

    .line 1586
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1587
    if-eqz v9, :cond_1

    .line 1589
    iget-object v3, v9, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;->media:Lcom/oneplus/gallery/media/Media;

    if-ne v3, p4, :cond_0

    .line 1595
    :goto_0
    return-void

    .line 1586
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1591
    :cond_0
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addToMediaTable() - Duplicate media : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1592
    iget-object v7, v9, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;->media:Lcom/oneplus/gallery/media/Media;

    const/4 v8, 0x0

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v3 .. v8}, Lcom/oneplus/gallery/media/MediaManagerImpl;->onMediaDeleted(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    .line 1594
    :cond_1
    invoke-direct/range {p0 .. p5}, Lcom/oneplus/gallery/media/MediaManagerImpl;->onMediaCreated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    goto :goto_0
.end method

.method private callOnMediaCreated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 1601
    iget-object v8, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaChangeHandlers:Ljava/util/Set;

    monitor-enter v8

    .line 1603
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaChangeHandlers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;

    .line 1605
    .local v0, "handler":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1607
    :try_start_1
    iget-object v1, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->callbackHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1608
    monitor-exit v0

    goto :goto_0

    .line 1609
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 1612
    .end local v0    # "handler":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;
    .end local v7    # "i$":Ljava/util/Iterator;
    :catchall_1
    move-exception v1

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 1609
    .restart local v0    # "handler":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1610
    const/16 v1, 0x2710

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    :try_start_4
    invoke-virtual/range {v0 .. v6}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->scheduleMediaChangeCallback(IJLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    goto :goto_0

    .line 1612
    .end local v0    # "handler":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;
    :cond_1
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1613
    return-void
.end method

.method private callOnMediaDeleted(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 1619
    iget-object v8, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaChangeHandlers:Ljava/util/Set;

    monitor-enter v8

    .line 1621
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaChangeHandlers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;

    .line 1623
    .local v0, "handler":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1625
    :try_start_1
    iget-object v1, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->callbackHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1626
    monitor-exit v0

    goto :goto_0

    .line 1627
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 1630
    .end local v0    # "handler":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;
    .end local v7    # "i$":Ljava/util/Iterator;
    :catchall_1
    move-exception v1

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 1627
    .restart local v0    # "handler":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1628
    const/16 v1, 0x2711

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    :try_start_4
    invoke-virtual/range {v0 .. v6}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->scheduleMediaChangeCallback(IJLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    goto :goto_0

    .line 1630
    .end local v0    # "handler":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;
    :cond_1
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1631
    return-void
.end method

.method private callOnMediaRecycled(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 13
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 1637
    const/4 v11, 0x0

    .line 1638
    .local v11, "mediaChangeHandlers":[Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;
    iget-object v5, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaChangeHandlers:Ljava/util/Set;

    monitor-enter v5

    .line 1640
    :try_start_0
    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaChangeHandlers:Ljava/util/Set;

    iget-object v6, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaChangeHandlers:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    new-array v6, v6, [Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;

    invoke-interface {v4, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;

    move-object v11, v0

    .line 1641
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1642
    move-object v2, v11

    .local v2, "arr$":[Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_0
    if-ge v9, v10, :cond_0

    aget-object v3, v2, v9

    .local v3, "handler":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;
    move-wide v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    .line 1644
    invoke-virtual/range {v3 .. v8}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->callOnMediaRecycled(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    .line 1642
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1641
    .end local v2    # "arr$":[Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;
    .end local v3    # "handler":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 1646
    .restart local v2    # "arr$":[Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;
    .restart local v9    # "i$":I
    .restart local v10    # "len$":I
    :cond_0
    return-void
.end method

.method private callOnMediaRestored(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 13
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 1652
    const/4 v11, 0x0

    .line 1653
    .local v11, "mediaChangeHandlers":[Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;
    iget-object v5, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaChangeHandlers:Ljava/util/Set;

    monitor-enter v5

    .line 1655
    :try_start_0
    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaChangeHandlers:Ljava/util/Set;

    iget-object v6, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaChangeHandlers:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    new-array v6, v6, [Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;

    invoke-interface {v4, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;

    move-object v11, v0

    .line 1656
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1657
    move-object v2, v11

    .local v2, "arr$":[Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_0
    if-ge v9, v10, :cond_0

    aget-object v3, v2, v9

    .local v3, "handler":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;
    move-wide v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    .line 1659
    invoke-virtual/range {v3 .. v8}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->callOnMediaRestored(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    .line 1657
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1656
    .end local v2    # "arr$":[Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;
    .end local v3    # "handler":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 1661
    .restart local v2    # "arr$":[Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;
    .restart local v9    # "i$":I
    .restart local v10    # "len$":I
    :cond_0
    return-void
.end method

.method private callOnMediaUpdated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 1667
    iget-object v8, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaChangeHandlers:Ljava/util/Set;

    monitor-enter v8

    .line 1669
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaChangeHandlers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;

    .line 1671
    .local v0, "handler":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1673
    :try_start_1
    iget-object v1, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->callbackHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1674
    monitor-exit v0

    goto :goto_0

    .line 1675
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 1678
    .end local v0    # "handler":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;
    .end local v7    # "i$":Ljava/util/Iterator;
    :catchall_1
    move-exception v1

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 1675
    .restart local v0    # "handler":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1676
    const/16 v1, 0x2714

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    :try_start_4
    invoke-virtual/range {v0 .. v6}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->scheduleMediaChangeCallback(IJLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    goto :goto_0

    .line 1678
    .end local v0    # "handler":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;
    :cond_1
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1679
    return-void
.end method

.method private cancelContentProviderAccess(Lcom/oneplus/gallery/media/MediaManagerImpl$ContentProviderAccessHandle;)V
    .locals 2
    .param p1, "handle"    # Lcom/oneplus/gallery/media/MediaManagerImpl$ContentProviderAccessHandle;

    .prologue
    .line 1685
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_PendingContentProviderAccessHandles:Ljava/util/LinkedList;

    monitor-enter v1

    .line 1687
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_PendingContentProviderAccessHandles:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1688
    monitor-exit v1

    .line 1689
    return-void

    .line 1688
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private checkContentChanges(Landroid/net/Uri;)V
    .locals 7
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x1

    .line 1696
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentObservers:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentObservers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/oneplus/gallery/media/MediaManagerImpl;->PROP_IS_ACTIVE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery/media/MediaManagerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1713
    :cond_0
    return-void

    .line 1700
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentObservers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentObserver;

    .line 1702
    .local v1, "observer":Lcom/oneplus/gallery/media/MediaManagerImpl$ContentObserver;
    iget-wide v2, v1, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentObserver;->lastChangedTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 1704
    if-eqz p1, :cond_3

    .line 1706
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentObserver;->contentUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1707
    invoke-virtual {v1, p1, v6}, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentObserver;->notifyChange(Landroid/net/Uri;Z)V

    goto :goto_0

    .line 1710
    :cond_3
    invoke-virtual {v1, v6}, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentObserver;->notifyChange(Z)V

    goto :goto_0
.end method

.method private checkStorages()V
    .locals 32

    .prologue
    .line 1719
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_IsStorageChecked:Z

    move/from16 v28, v0

    if-eqz v28, :cond_0

    .line 1801
    :goto_0
    return-void

    .line 1721
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_StorageCheckLock:Ljava/lang/Object;

    move-object/from16 v29, v0

    monitor-enter v29

    .line 1723
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_IsStorageChecked:Z

    move/from16 v28, v0

    if-eqz v28, :cond_1

    .line 1724
    monitor-exit v29

    goto :goto_0

    .line 1740
    :catchall_0
    move-exception v28

    monitor-exit v29
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v28

    .line 1725
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_IsStorageChecking:Z

    move/from16 v28, v0

    if-eqz v28, :cond_2

    .line 1727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    move-object/from16 v28, v0

    const-string v30, "checkStorages() - Wait for storage check [start]"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1730
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_StorageCheckLock:Ljava/lang/Object;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->wait()V

    .line 1731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    move-object/from16 v28, v0

    const-string v30, "checkStorages() - Wait for storage check [end]"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1737
    :goto_1
    :try_start_3
    monitor-exit v29

    goto :goto_0

    .line 1733
    :catch_0
    move-exception v6

    .line 1735
    .local v6, "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    move-object/from16 v28, v0

    const-string v30, "checkStorages() - Wait for storage check [interrupted]"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1739
    .end local v6    # "ex":Ljava/lang/Throwable;
    :cond_2
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_IsStorageChecking:Z

    .line 1740
    monitor-exit v29
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1743
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    move-object/from16 v28, v0

    const-string v29, "checkStorages() - Start"

    invoke-static/range {v28 .. v29}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1744
    sget v28, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v29, 0x16

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_4

    .line 1746
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v28

    const-string v29, "storage"

    invoke-virtual/range {v28 .. v29}, Lcom/oneplus/gallery/GalleryApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/storage/StorageManager;

    .line 1747
    .local v22, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v28

    const-string v29, "getVolumes"

    const/16 v30, 0x0

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v30, v0

    invoke-virtual/range {v28 .. v30}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v16

    .line 1748
    .local v16, "mGetVolumes":Ljava/lang/reflect/Method;
    const-string v28, "android.os.storage.VolumeInfo"

    invoke-static/range {v28 .. v28}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v18

    .line 1749
    .local v18, "mVolumeInfo":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v28, "getPath"

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v29, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    .line 1750
    .local v15, "mGetPath":Ljava/lang/reflect/Method;
    const-string v28, "getDisk"

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v29, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    .line 1751
    .local v14, "mGetDisk":Ljava/lang/reflect/Method;
    const-string v28, "android.os.storage.DiskInfo"

    invoke-static/range {v28 .. v28}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    .line 1752
    .local v13, "mDiskInfoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v28, "isSd"

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    .line 1753
    .local v17, "mIsSd":Ljava/lang/reflect/Method;
    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    .line 1754
    .local v19, "m_VolumeInfos":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    .line 1756
    .local v27, "volumeinfo":Ljava/lang/Object;
    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v14, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1757
    .local v5, "diskInfo":Ljava/lang/Object;
    if-eqz v5, :cond_3

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v5, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Boolean;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    if-eqz v28, :cond_3

    .line 1759
    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v15, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/io/File;

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    .line 1760
    .local v20, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    move-object/from16 v28, v0

    const-string v29, "checkStorages() - SD card found, path : "

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_SDCardPaths:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_2

    .line 1787
    .end local v5    # "diskInfo":Ljava/lang/Object;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v13    # "mDiskInfoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "mGetDisk":Ljava/lang/reflect/Method;
    .end local v15    # "mGetPath":Ljava/lang/reflect/Method;
    .end local v16    # "mGetVolumes":Ljava/lang/reflect/Method;
    .end local v17    # "mIsSd":Ljava/lang/reflect/Method;
    .end local v18    # "mVolumeInfo":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v19    # "m_VolumeInfos":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v20    # "path":Ljava/lang/String;
    .end local v22    # "storageManager":Landroid/os/storage/StorageManager;
    .end local v27    # "volumeinfo":Ljava/lang/Object;
    :catch_1
    move-exception v6

    .line 1789
    .restart local v6    # "ex":Ljava/lang/Throwable;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    move-object/from16 v28, v0

    const-string v29, "checkStorages() - Fail to check storages"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    move-object/from16 v28, v0

    const-string v29, "checkStorages() - End"

    invoke-static/range {v28 .. v29}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_StorageCheckLock:Ljava/lang/Object;

    move-object/from16 v29, v0

    monitor-enter v29

    .line 1796
    const/16 v28, 0x1

    :try_start_6
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_IsStorageChecked:Z

    .line 1797
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_IsStorageChecking:Z

    .line 1798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_StorageCheckLock:Ljava/lang/Object;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    .line 1799
    monitor-exit v29

    goto/16 :goto_0

    :catchall_1
    move-exception v28

    monitor-exit v29
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v28

    .line 1767
    .end local v6    # "ex":Ljava/lang/Throwable;
    :cond_4
    :try_start_7
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v28

    const-string v29, "storage"

    invoke-virtual/range {v28 .. v29}, Lcom/oneplus/gallery/GalleryApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/storage/StorageManager;

    .line 1768
    .restart local v22    # "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    .line 1769
    .local v23, "storageManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v28, "android.os.storage.StorageVolume"

    invoke-static/range {v28 .. v28}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v25

    .line 1770
    .local v25, "storageVolumeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v28, "getVolumeList"

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v29, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 1771
    .local v9, "getVolumesMethod":Ljava/lang/reflect/Method;
    const-string v28, "getDescription"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const-class v31, Landroid/content/Context;

    aput-object v31, v29, v30

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 1772
    .local v7, "getDescMethod":Ljava/lang/reflect/Method;
    const-string v28, "getPath"

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v29, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 1773
    .local v8, "getPathMethod":Ljava/lang/reflect/Method;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v26

    .line 1774
    .local v26, "sysResources":Landroid/content/res/Resources;
    const-string v28, "storage_sd_card"

    const-string v29, "string"

    const-string v30, "android"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    .line 1775
    .local v21, "sdCardId":I
    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v9, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, [Ljava/lang/Object;

    move-object/from16 v0, v28

    check-cast v0, [Ljava/lang/Object;

    move-object v4, v0

    .local v4, "arr$":[Ljava/lang/Object;
    array-length v12, v4

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_3
    if-ge v10, v12, :cond_6

    aget-object v24, v4, v10

    .line 1777
    .local v24, "storageVolume":Ljava/lang/Object;
    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v7, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1778
    .local v11, "id":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_5

    .line 1780
    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 1781
    .restart local v20    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    move-object/from16 v28, v0

    const-string v29, "checkStorages() - SD card found, path : "

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_SDCardPaths:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1775
    .end local v20    # "path":Ljava/lang/String;
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1793
    .end local v4    # "arr$":[Ljava/lang/Object;
    .end local v7    # "getDescMethod":Ljava/lang/reflect/Method;
    .end local v8    # "getPathMethod":Ljava/lang/reflect/Method;
    .end local v9    # "getVolumesMethod":Ljava/lang/reflect/Method;
    .end local v10    # "i$":I
    .end local v11    # "id":Ljava/lang/String;
    .end local v12    # "len$":I
    .end local v21    # "sdCardId":I
    .end local v23    # "storageManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v24    # "storageVolume":Ljava/lang/Object;
    .end local v25    # "storageVolumeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v26    # "sysResources":Landroid/content/res/Resources;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    move-object/from16 v28, v0

    const-string v29, "checkStorages() - End"

    invoke-static/range {v28 .. v29}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_StorageCheckLock:Ljava/lang/Object;

    move-object/from16 v29, v0

    monitor-enter v29

    .line 1796
    const/16 v28, 0x1

    :try_start_8
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_IsStorageChecked:Z

    .line 1797
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_IsStorageChecking:Z

    .line 1798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_StorageCheckLock:Ljava/lang/Object;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    .line 1799
    monitor-exit v29

    goto/16 :goto_0

    :catchall_2
    move-exception v28

    monitor-exit v29
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v28

    .line 1793
    .end local v22    # "storageManager":Landroid/os/storage/StorageManager;
    :catchall_3
    move-exception v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    move-object/from16 v29, v0

    const-string v30, "checkStorages() - End"

    invoke-static/range {v29 .. v30}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_StorageCheckLock:Ljava/lang/Object;

    move-object/from16 v29, v0

    monitor-enter v29

    .line 1796
    const/16 v30, 0x1

    :try_start_9
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_IsStorageChecked:Z

    .line 1797
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_IsStorageChecking:Z

    .line 1798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_StorageCheckLock:Ljava/lang/Object;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->notifyAll()V

    .line 1799
    monitor-exit v29
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v28

    :catchall_4
    move-exception v28

    :try_start_a
    monitor-exit v29
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v28
.end method

.method private clearUselessMediaInfoCaches()V
    .locals 6

    .prologue
    .line 1806
    invoke-static {}, Lcom/oneplus/gallery/media/MediaStoreMedia;->getMediaInfoCache()Lcom/oneplus/gallery/cache/MediaInfoLruCache;

    move-result-object v0

    .line 1807
    .local v0, "cache":Lcom/oneplus/cache/Cache;, "Lcom/oneplus/cache/Cache<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-nez v0, :cond_1

    .line 1809
    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v5, "clearUselessMediaInfoCaches() - cache is null"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1859
    .end local v0    # "cache":Lcom/oneplus/cache/Cache;, "Lcom/oneplus/cache/Cache<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_0
    :goto_0
    return-void

    .line 1814
    .restart local v0    # "cache":Lcom/oneplus/cache/Cache;, "Lcom/oneplus/cache/Cache<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_1
    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v5, "clearUselessMediaInfoCaches() - Start"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1815
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1816
    .local v2, "startTime":J
    const/4 v4, 0x1

    new-array v1, v4, [I

    .line 1817
    .local v1, "count":[I
    new-instance v4, Lcom/oneplus/gallery/media/MediaManagerImpl$11;

    invoke-direct {v4, p0, v2, v3, v1}, Lcom/oneplus/gallery/media/MediaManagerImpl$11;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;J[I)V

    invoke-interface {v0, v4}, Lcom/oneplus/cache/Cache;->remove(Lcom/oneplus/cache/Cache$RemovingPredication;)V

    .line 1857
    instance-of v4, v0, Lcom/oneplus/cache/DiskLruCache;

    if-eqz v4, :cond_0

    .line 1858
    check-cast v0, Lcom/oneplus/cache/DiskLruCache;

    .end local v0    # "cache":Lcom/oneplus/cache/Cache;, "Lcom/oneplus/cache/Cache<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {v0}, Lcom/oneplus/cache/DiskLruCache;->flush()V

    goto :goto_0
.end method

.method private deactivate(Lcom/oneplus/base/Handle;)V
    .locals 4
    .param p1, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 2040
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->verifyAccess()V

    .line 2043
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActivateHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActivateHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2066
    :cond_0
    :goto_0
    return-void

    .line 2046
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "deactivate()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2049
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 2050
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x2738

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2053
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaContentChangeCBHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaContentChangeCBHandle:Lcom/oneplus/base/Handle;

    .line 2056
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x2712

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2059
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x276a

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2062
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ExtraMediaChangedListenerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ExtraMediaChangedListenerHandle:Lcom/oneplus/base/Handle;

    .line 2065
    sget-object v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->PROP_IS_ACTIVE:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/media/MediaManagerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private deleteMedia(Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;)V
    .locals 9
    .param p1, "handle"    # Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;

    .prologue
    .line 2141
    invoke-static {p1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2170
    :goto_0
    return-void

    .line 2145
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;->callOnDeletionStarted()V

    .line 2148
    const/4 v4, 0x1

    .line 2149
    .local v4, "success":Z
    iget-object v5, p1, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;->media:Lcom/oneplus/gallery/media/Media;

    instance-of v5, v5, Lcom/oneplus/gallery/media/GroupMedia;

    if-eqz v5, :cond_2

    .line 2151
    iget-object v0, p1, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;->media:Lcom/oneplus/gallery/media/Media;

    check-cast v0, Lcom/oneplus/gallery/media/GroupMedia;

    .line 2152
    .local v0, "groupMedia":Lcom/oneplus/gallery/media/GroupMedia;
    new-instance v3, Ljava/util/HashSet;

    invoke-interface {v0}, Lcom/oneplus/gallery/media/GroupMedia;->getSubMedia()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2153
    .local v3, "subMedia":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery/media/Media;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery/media/Media;

    .line 2157
    .local v2, "media":Lcom/oneplus/gallery/media/Media;
    invoke-static {v2}, Lcom/oneplus/gallery/media/MediaUtils;->getId(Lcom/oneplus/gallery/media/Media;)J

    move-result-wide v6

    iget v5, p1, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;->flags:I

    invoke-direct {p0, v6, v7, v2, v5}, Lcom/oneplus/gallery/media/MediaManagerImpl;->deleteMedia(JLcom/oneplus/gallery/media/Media;I)Z

    goto :goto_1

    .line 2159
    .end local v2    # "media":Lcom/oneplus/gallery/media/Media;
    :cond_1
    iget-object v5, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v6, "deleteMedia() - Group media: "

    invoke-static {v5, v6, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2169
    .end local v0    # "groupMedia":Lcom/oneplus/gallery/media/GroupMedia;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "subMedia":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery/media/Media;>;"
    :goto_2
    invoke-virtual {p1, v4}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;->callOnDeletionCompleted(Z)V

    goto :goto_0

    .line 2166
    :cond_2
    iget-wide v6, p1, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;->mediaId:J

    iget-object v5, p1, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;->media:Lcom/oneplus/gallery/media/Media;

    iget v8, p1, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;->flags:I

    invoke-direct {p0, v6, v7, v5, v8}, Lcom/oneplus/gallery/media/MediaManagerImpl;->deleteMedia(JLcom/oneplus/gallery/media/Media;I)Z

    move-result v4

    goto :goto_2
.end method

.method private deleteMedia(JLcom/oneplus/gallery/media/Media;I)Z
    .locals 11
    .param p1, "id"    # J
    .param p3, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p4, "flags"    # I

    .prologue
    .line 2178
    if-eqz p3, :cond_2

    .line 2179
    invoke-interface {p3}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v3

    .line 2207
    .local v3, "filePath":Ljava/lang/String;
    :goto_0
    and-int/lit8 v8, p4, 0x1

    if-eqz v8, :cond_0

    .line 2209
    if-eqz v3, :cond_0

    .line 2211
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/oneplus/io/Path;->getDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Lcom/oneplus/io/Path;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".dng"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2212
    .local v6, "rawFilePath":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2213
    .local v5, "rawFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2215
    iget-object v8, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deleteMedia() - Delete raw file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2216
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2218
    const-string v8, "external"

    invoke-static {v8}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    new-instance v9, Lcom/oneplus/gallery/media/MediaManagerImpl$13;

    invoke-direct {v9, p0, v6}, Lcom/oneplus/gallery/media/MediaManagerImpl$13;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Ljava/lang/String;)V

    invoke-virtual {p0, v8, v9}, Lcom/oneplus/gallery/media/MediaManagerImpl;->accessContentProvider(Landroid/net/Uri;Lcom/oneplus/gallery/media/MediaManager$ContentProviderAccessCallback;)Lcom/oneplus/base/Handle;

    .line 2238
    .end local v5    # "rawFile":Ljava/io/File;
    .end local v6    # "rawFilePath":Ljava/lang/String;
    :cond_0
    :goto_1
    if-eqz p3, :cond_4

    .line 2239
    invoke-interface {p3}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 2244
    .local v0, "contentUri":Landroid/net/Uri;
    :goto_2
    if-nez v0, :cond_8

    .line 2246
    const/4 v7, 0x0

    .line 2247
    .local v7, "success":Z
    if-eqz v3, :cond_7

    .line 2249
    iget-object v8, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v9, "deleteMedia() - Delete "

    invoke-static {v8, v9, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2252
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2253
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_6

    :cond_1
    const/4 v7, 0x1

    .line 2299
    .end local v2    # "file":Ljava/io/File;
    .end local v7    # "success":Z
    :goto_3
    return v7

    .line 2182
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v3    # "filePath":Ljava/lang/String;
    :cond_2
    const/4 v8, 0x1

    new-array v4, v8, [Ljava/lang/String;

    .line 2183
    .local v4, "filePathResult":[Ljava/lang/String;
    sget-object v8, Lcom/oneplus/gallery/media/MediaManagerImpl;->CONTENT_URI_FILE:Landroid/net/Uri;

    new-instance v9, Lcom/oneplus/gallery/media/MediaManagerImpl$12;

    invoke-direct {v9, p0, p1, p2, v4}, Lcom/oneplus/gallery/media/MediaManagerImpl$12;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;J[Ljava/lang/String;)V

    invoke-virtual {p0, v8, v9}, Lcom/oneplus/gallery/media/MediaManagerImpl;->accessContentProvider(Landroid/net/Uri;Lcom/oneplus/gallery/media/MediaManager$ContentProviderAccessCallback;)Lcom/oneplus/base/Handle;

    .line 2203
    const/4 v8, 0x0

    aget-object v3, v4, v8

    .restart local v3    # "filePath":Ljava/lang/String;
    goto/16 :goto_0

    .line 2230
    .end local v4    # "filePathResult":[Ljava/lang/String;
    .restart local v5    # "rawFile":Ljava/io/File;
    .restart local v6    # "rawFilePath":Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v9, "deleteMedia() - delete raw file failed"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2240
    .end local v5    # "rawFile":Ljava/io/File;
    .end local v6    # "rawFilePath":Ljava/lang/String;
    :cond_4
    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-ltz v8, :cond_5

    .line 2241
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/oneplus/gallery/media/MediaManagerImpl;->CONTENT_URI_FILE:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .restart local v0    # "contentUri":Landroid/net/Uri;
    goto :goto_2

    .line 2243
    .end local v0    # "contentUri":Landroid/net/Uri;
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "contentUri":Landroid/net/Uri;
    goto :goto_2

    .line 2253
    .restart local v2    # "file":Ljava/io/File;
    .restart local v7    # "success":Z
    :cond_6
    const/4 v7, 0x0

    goto :goto_3

    .line 2255
    .end local v2    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 2257
    .local v1, "ex":Ljava/lang/Throwable;
    iget-object v8, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deleteMedia() - Fail to delete "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 2262
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_7
    iget-object v8, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v9, "deleteMedia() - No content URI and file path to delete"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2268
    .end local v7    # "success":Z
    :cond_8
    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-gtz v8, :cond_9

    .line 2270
    iget-object v8, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deleteMedia() - Invalid content URI : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2271
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 2274
    :cond_9
    iget-object v8, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v9, "deleteMedia() - Delete "

    invoke-static {v8, v9, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2277
    new-instance v8, Lcom/oneplus/gallery/media/MediaManagerImpl$14;

    invoke-direct {v8, p0}, Lcom/oneplus/gallery/media/MediaManagerImpl$14;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;)V

    invoke-virtual {p0, v0, v8}, Lcom/oneplus/gallery/media/MediaManagerImpl;->accessContentProvider(Landroid/net/Uri;Lcom/oneplus/gallery/media/MediaManager$ContentProviderAccessCallback;)Lcom/oneplus/base/Handle;

    .line 2289
    invoke-static {p1, p2}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->removeExtraMediaInfo(J)I

    .line 2290
    invoke-static {p1, p2}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->removeMediaInfo(J)I

    .line 2293
    invoke-direct {p0, p1, p2, p4}, Lcom/oneplus/gallery/media/MediaManagerImpl;->removeFromMediaTable(JI)Lcom/oneplus/gallery/media/Media;

    .line 2296
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/gallery/media/MediaManagerImpl;->removeFromGroupMedia(JLcom/oneplus/gallery/media/Media;I)V

    .line 2299
    const/4 v7, 0x1

    goto/16 :goto_3
.end method

.method private evaluateGroupId(JLjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "parentId"    # J
    .param p3, "filePath"    # Ljava/lang/String;

    .prologue
    .line 2346
    invoke-static {p3}, Lcom/oneplus/io/Path;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2347
    .local v1, "fileName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2350
    .local v2, "groupId":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x13

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2356
    :goto_0
    return-object v2

    .line 2352
    :catch_0
    move-exception v0

    .line 2354
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v4, "evaluateGroupId() - Error to get group id"

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getSpecialDirectoryPaths()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2456
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2457
    .local v1, "pathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;->values()[Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;

    move-result-object v2

    .line 2458
    .local v2, "types":[Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;
    array-length v3, v2

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2459
    aget-object v3, v2, v0

    invoke-virtual {p0, v3, v1}, Lcom/oneplus/gallery/media/MediaManagerImpl;->getSpecialDirectoryPaths(Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;Ljava/util/List;)V

    .line 2458
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2460
    :cond_0
    return-object v1
.end method

.method private handleContentThreadMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2468
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 2557
    :cond_0
    :goto_0
    return-void

    .line 2473
    :sswitch_0
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_PendingContentProviderAccessHandles:Ljava/util/LinkedList;

    monitor-enter v3

    .line 2475
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_PendingContentProviderAccessHandles:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentProviderAccessHandle;

    .line 2476
    .local v0, "handle":Lcom/oneplus/gallery/media/MediaManagerImpl$ContentProviderAccessHandle;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2477
    if-eqz v0, :cond_0

    .line 2478
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->accessContentProvider(Lcom/oneplus/gallery/media/MediaManagerImpl$ContentProviderAccessHandle;)V

    goto :goto_0

    .line 2476
    .end local v0    # "handle":Lcom/oneplus/gallery/media/MediaManagerImpl$ContentProviderAccessHandle;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2484
    :sswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 2485
    .local v1, "objs":[Ljava/lang/Object;
    aget-object v2, v1, v4

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aget-object v2, v1, v3

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v4, v5, v2, v3}, Lcom/oneplus/gallery/media/MediaManagerImpl;->addMediaToAlbum(JJ)Z

    goto :goto_0

    .line 2490
    .end local v1    # "objs":[Ljava/lang/Object;
    :sswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Landroid/net/Uri;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/Uri;

    :goto_1
    invoke-direct {p0, v2}, Lcom/oneplus/gallery/media/MediaManagerImpl;->checkContentChanges(Landroid/net/Uri;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 2495
    :sswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 2496
    .restart local v1    # "objs":[Ljava/lang/Object;
    aget-object v2, v1, v4

    check-cast v2, Ljava/lang/String;

    aget-object v3, v1, v3

    check-cast v3, Lcom/oneplus/gallery/media/MediaType;

    aget-object v4, v1, v6

    check-cast v4, Lcom/oneplus/base/OperationCallback;

    const/4 v5, 0x3

    aget-object v5, v1, v5

    check-cast v5, Landroid/os/Handler;

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/oneplus/gallery/media/MediaManagerImpl;->createAlbum(Ljava/lang/String;Lcom/oneplus/gallery/media/MediaType;Lcom/oneplus/base/OperationCallback;Landroid/os/Handler;)Z

    goto :goto_0

    .line 2500
    .end local v1    # "objs":[Ljava/lang/Object;
    :sswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/gallery/media/MediaManagerImpl;->deleteAlbum(J)Z

    goto :goto_0

    .line 2504
    :sswitch_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/media/MediaManagerImpl;->deleteMedia(Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;)V

    goto :goto_0

    .line 2508
    :sswitch_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/media/MediaManagerImpl;->notifyContentChangedDirectly(Landroid/net/Uri;)V

    goto :goto_0

    .line 2512
    :sswitch_7
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/oneplus/gallery/media/MediaType;

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/media/MediaManagerImpl;->refreshAlbumMediaSets(Lcom/oneplus/gallery/media/MediaType;)V

    goto/16 :goto_0

    .line 2516
    :sswitch_8
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/media/MediaManagerImpl;->registerContentChangedCallback(Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;)V

    goto/16 :goto_0

    .line 2520
    :sswitch_9
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/oneplus/gallery/media/MediaManagerImpl$DirectoryRenameHandle;

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/media/MediaManagerImpl;->registerDirectoryRenameCallback(Lcom/oneplus/gallery/media/MediaManagerImpl$DirectoryRenameHandle;)V

    goto/16 :goto_0

    .line 2524
    :sswitch_a
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_2

    move v2, v3

    :goto_2
    invoke-direct {p0, v2}, Lcom/oneplus/gallery/media/MediaManagerImpl;->releaseMediaTable(Z)V

    goto/16 :goto_0

    :cond_2
    move v2, v4

    goto :goto_2

    .line 2528
    :sswitch_b
    invoke-direct {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->setupMediaTable()V

    goto/16 :goto_0

    .line 2532
    :sswitch_c
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v3, 0x2713

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2533
    invoke-direct {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->syncMediaTable()V

    goto/16 :goto_0

    .line 2537
    :sswitch_d
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/media/MediaManagerImpl;->unregisterContentChangedCallback(Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;)V

    goto/16 :goto_0

    .line 2541
    :sswitch_e
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/oneplus/gallery/media/MediaManagerImpl$DirectoryRenameHandle;

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/media/MediaManagerImpl;->unregisterDirectoryRenameCallback(Lcom/oneplus/gallery/media/MediaManagerImpl$DirectoryRenameHandle;)V

    goto/16 :goto_0

    .line 2546
    :sswitch_f
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 2547
    .restart local v1    # "objs":[Ljava/lang/Object;
    aget-object v2, v1, v4

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aget-object v2, v1, v3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v1, v6

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v4, v5, v3, v2}, Lcom/oneplus/gallery/media/MediaManagerImpl;->updateOnePlusFlags(JIZ)Z

    goto/16 :goto_0

    .line 2553
    .end local v1    # "objs":[Ljava/lang/Object;
    :sswitch_10
    invoke-direct {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->clearUselessMediaInfoCaches()V

    goto/16 :goto_0

    .line 2468
    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_0
        0x2711 -> :sswitch_b
        0x2712 -> :sswitch_a
        0x2713 -> :sswitch_c
        0x271a -> :sswitch_8
        0x271b -> :sswitch_d
        0x271c -> :sswitch_9
        0x271d -> :sswitch_e
        0x2738 -> :sswitch_2
        0x2739 -> :sswitch_6
        0x274c -> :sswitch_5
        0x2756 -> :sswitch_f
        0x2760 -> :sswitch_3
        0x2761 -> :sswitch_4
        0x2762 -> :sswitch_1
        0x2764 -> :sswitch_7
        0x276a -> :sswitch_10
    .end sparse-switch
.end method

.method private handleScheduledUIMessages()V
    .locals 12

    .prologue
    .line 2617
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ScheduledUIMessages:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2652
    :cond_0
    :goto_0
    return-void

    .line 2621
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ScheduledUIMessages:Ljava/util/Deque;

    monitor-enter v2

    .line 2623
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ScheduledUIMessages:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2624
    monitor-exit v2

    goto :goto_0

    .line 2634
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2627
    :cond_2
    :try_start_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2628
    .local v10, "partialScheduledList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Message;>;"
    const/4 v7, 0x0

    .local v7, "counter":I
    :goto_1
    const/16 v1, 0xa

    if-ge v7, v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ScheduledUIMessages:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Message;

    .local v9, "msg":Landroid/os/Message;
    if-eqz v9, :cond_3

    .line 2629
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2628
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2632
    .end local v9    # "msg":Landroid/os/Message;
    :cond_3
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ScheduledUIMessages:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v3, 0x2733

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2633
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v3, 0x2733

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2634
    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2637
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    .line 2638
    .local v11, "size":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v11, :cond_0

    .line 2640
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Message;

    .line 2641
    .restart local v9    # "msg":Landroid/os/Message;
    iget v1, v9, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 2650
    :goto_3
    invoke-virtual {v9}, Landroid/os/Message;->recycle()V

    .line 2638
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 2645
    :pswitch_0
    iget-object v1, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 2646
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v1, 0x1

    aget-object v4, v0, v1

    check-cast v4, Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v5, v0, v1

    check-cast v5, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;

    const/4 v1, 0x3

    aget-object v6, v0, v1

    check-cast v6, Lcom/oneplus/gallery/media/MediaType;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/gallery/media/MediaManagerImpl;->onDirectoryMediaSetCreated(JLjava/lang/String;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;Lcom/oneplus/gallery/media/MediaType;)V

    goto :goto_3

    .line 2641
    nop

    :pswitch_data_0
    .packed-switch 0x2724
        :pswitch_0
    .end packed-switch
.end method

.method private insertImageToMediaStore(Ljava/lang/String;Landroid/content/ContentValues;Lcom/oneplus/base/Ref;I)Landroid/net/Uri;
    .locals 11
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "prepareValues"    # Landroid/content/ContentValues;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            "Lcom/oneplus/base/Ref",
            "<",
            "Lcom/oneplus/gallery/media/Media;",
            ">;I)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .line 2658
    .local p3, "createdMedia":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Lcom/oneplus/gallery/media/Media;>;"
    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 2659
    .local v7, "lock":Ljava/lang/Object;
    const/4 v0, 0x1

    new-array v6, v0, [Landroid/net/Uri;

    .line 2660
    .local v6, "result":[Landroid/net/Uri;
    monitor-enter v7

    .line 2662
    :try_start_0
    sget-object v10, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Lcom/oneplus/gallery/media/MediaManagerImpl$15;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/oneplus/gallery/media/MediaManagerImpl$15;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Landroid/content/ContentValues;Ljava/lang/String;ILcom/oneplus/base/Ref;[Landroid/net/Uri;Ljava/lang/Object;)V

    invoke-virtual {p0, v10, v0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->accessContentProvider(Landroid/net/Uri;Lcom/oneplus/gallery/media/MediaManager$ContentProviderAccessCallback;)Lcom/oneplus/base/Handle;

    move-result-object v8

    .line 2773
    .local v8, "accessHandle":Lcom/oneplus/base/Handle;
    invoke-static {v8}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2775
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "insertImageToMediaStore() - Fail to access media provider"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2776
    const/4 v0, 0x0

    monitor-exit v7

    .line 2791
    :goto_0
    return-object v0

    .line 2778
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->isContentThread()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 2782
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2790
    :cond_1
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2791
    const/4 v0, 0x0

    aget-object v0, v6, v0

    goto :goto_0

    .line 2784
    :catch_0
    move-exception v9

    .line 2786
    .local v9, "ex":Ljava/lang/InterruptedException;
    :try_start_3
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "insertImageToMediaStore() - Interrupted"

    invoke-static {v0, v1, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2787
    const/4 v0, 0x0

    monitor-exit v7

    goto :goto_0

    .line 2790
    .end local v8    # "accessHandle":Lcom/oneplus/base/Handle;
    .end local v9    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private isGroupMedia(JLjava/lang/String;)Z
    .locals 1
    .param p1, "id"    # J
    .param p3, "filePath"    # Ljava/lang/String;

    .prologue
    .line 2860
    const/4 v0, 0x0

    return v0
.end method

.method private isMediaStoreUri(Landroid/net/Uri;)Z
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 2920
    if-nez p1, :cond_1

    .line 2923
    :cond_0
    :goto_0
    return v1

    .line 2922
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2923
    .local v0, "uriString":Ljava/lang/String;
    sget-object v2, Lcom/oneplus/gallery/media/MediaManagerImpl;->CONTENT_URI_IMAGE:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/oneplus/gallery/media/MediaManagerImpl;->CONTENT_URI_VIDEO:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/oneplus/gallery/media/MediaManagerImpl;->CONTENT_URI_FILE:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isSpecialDirectoryPath(Ljava/lang/String;)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 2933
    invoke-direct {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->getSpecialDirectoryPaths()Ljava/util/List;

    move-result-object v2

    .line 2934
    .local v2, "specialPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2936
    .local v1, "specialPath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2937
    :cond_1
    const/4 v3, 0x1

    .line 2939
    .end local v1    # "specialPath":Ljava/lang/String;
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private notifyContentChangedDirectly(Landroid/net/Uri;)V
    .locals 4
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 2999
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentObservers:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 3010
    :cond_0
    :goto_0
    return-void

    .line 3001
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3002
    .local v2, "uriString":Ljava/lang/String;
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentObservers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentObserver;

    .line 3004
    .local v1, "observer":Lcom/oneplus/gallery/media/MediaManagerImpl$ContentObserver;
    iget-object v3, v1, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentObserver;->contentUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3006
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentObserver;->notifyChange(Landroid/net/Uri;Z)V

    goto :goto_0
.end method

.method private obtainGroupMedia(JJLjava/lang/String;)Lcom/oneplus/gallery/media/GroupMedia;
    .locals 19
    .param p1, "id"    # J
    .param p3, "parentId"    # J
    .param p5, "filePath"    # Ljava/lang/String;

    .prologue
    .line 3096
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-object/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/gallery/media/MediaManagerImpl;->isGroupMedia(JLjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3097
    const/4 v5, 0x0

    .line 3134
    :goto_0
    return-object v5

    .line 3100
    :cond_0
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-object/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/gallery/media/MediaManagerImpl;->evaluateGroupId(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3101
    .local v4, "groupId":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 3102
    const/4 v5, 0x0

    goto :goto_0

    .line 3105
    :cond_1
    new-instance v17, Lcom/oneplus/base/SimpleRef;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_GroupMediaTable:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Lcom/oneplus/base/SimpleRef;-><init>(Ljava/lang/Object;)V

    .line 3106
    .local v17, "groupMediaRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Lcom/oneplus/gallery/media/GroupMedia;>;"
    invoke-interface/range {v17 .. v17}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    .line 3108
    new-instance v9, Lcom/oneplus/gallery/media/BurstMedia;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v9, v4, v5}, Lcom/oneplus/gallery/media/BurstMedia;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    .line 3109
    .local v9, "groupMedia":Lcom/oneplus/gallery/media/GroupMedia;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_GroupMediaChangeCallback:Lcom/oneplus/gallery/media/GroupMedia$GroupMediaChangeCallback;

    invoke-interface {v9, v5}, Lcom/oneplus/gallery/media/GroupMedia;->addGroupMediaChangeCallback(Lcom/oneplus/gallery/media/GroupMedia$GroupMediaChangeCallback;)V

    .line 3110
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_GroupMediaTable:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3111
    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 3113
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v6, "obtainGroupMedia() - Group media: "

    const-string v7, ", hash code: "

    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5, v6, v9, v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3116
    const-wide/16 v6, 0x0

    invoke-interface {v9}, Lcom/oneplus/gallery/media/GroupMedia;->getType()Lcom/oneplus/gallery/media/MediaType;

    move-result-object v8

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/oneplus/gallery/media/MediaManagerImpl;->onMediaCreated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    .line 3120
    .end local v9    # "groupMedia":Lcom/oneplus/gallery/media/GroupMedia;
    :cond_2
    new-instance v14, Lcom/oneplus/gallery/media/MediaManagerImpl$17;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v14, v0, v1}, Lcom/oneplus/gallery/media/MediaManagerImpl$17;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/base/Ref;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v16, 0x0

    move-object/from16 v11, p0

    move-wide/from16 v12, p1

    invoke-virtual/range {v11 .. v16}, Lcom/oneplus/gallery/media/MediaManagerImpl;->obtainMedia(JLcom/oneplus/gallery/media/MediaObtainCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;

    .line 3134
    invoke-interface/range {v17 .. v17}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery/media/GroupMedia;

    goto :goto_0
.end method

.method private obtainMedia(Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/gallery/media/MediaObtainCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;
    .locals 9
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/oneplus/gallery/media/MediaObtainCallback;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "flags"    # I

    .prologue
    const/4 v5, 0x0

    .line 3285
    new-instance v7, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;

    invoke-direct {v7, p0, p3, p4}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/MediaObtainCallback;Landroid/os/Handler;)V

    .line 3286
    .local v7, "obtainHandle":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;
    sget-object v1, Lcom/oneplus/gallery/media/MediaManagerImpl;->CONTENT_URI_FILE:Landroid/net/Uri;

    invoke-static {}, Lcom/oneplus/gallery/media/MediaStoreMedia;->getMediaColumns()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "_data=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    new-instance v6, Lcom/oneplus/gallery/media/MediaManagerImpl$20;

    invoke-direct {v6, p0, p1, p2, v7}, Lcom/oneplus/gallery/media/MediaManagerImpl$20;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/oneplus/gallery/media/MediaManagerImpl;->queryContentProvider(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/gallery/media/MediaManager$ContentProviderQueryCallback;)Lcom/oneplus/base/Handle;

    move-result-object v8

    .line 3319
    .local v8, "queryHandle":Lcom/oneplus/base/Handle;
    invoke-static {v8}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3321
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "obtainMedia() - Fail to query"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3324
    :goto_0
    return-object v5

    :cond_0
    move-object v5, v7

    goto :goto_0
.end method

.method private onAlbumMediaSetCreated(JLjava/lang/String;JJJLcom/oneplus/gallery/media/MediaType;ZLcom/oneplus/base/OperationCallbackHelper;)V
    .locals 16
    .param p1, "albumId"    # J
    .param p3, "displayName"    # Ljava/lang/String;
    .param p4, "dateAdded"    # J
    .param p6, "dateModified"    # J
    .param p8, "dateMediaAdded"    # J
    .param p10, "targetMediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p11, "isCreated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "JJJ",
            "Lcom/oneplus/gallery/media/MediaType;",
            "Z",
            "Lcom/oneplus/base/OperationCallbackHelper",
            "<",
            "Ljava/lang/Object;",
            "Lcom/oneplus/gallery/media/MediaSet;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3455
    .local p12, "callbackHelper":Lcom/oneplus/base/OperationCallbackHelper;, "Lcom/oneplus/base/OperationCallbackHelper<Ljava/lang/Object;Lcom/oneplus/gallery/media/MediaSet;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveMediaSetLists:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3484
    :cond_0
    :goto_0
    return-void

    .line 3457
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_AlbumMediaSetTables:Ljava/util/HashMap;

    move-object/from16 v0, p10

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/LongSparseArray;

    .line 3458
    .local v13, "albumSetTable":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/oneplus/gallery/media/AlbumMediaSet;>;"
    if-eqz v13, :cond_0

    move-wide/from16 v0, p1

    invoke-virtual {v13, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 3460
    new-instance v2, Lcom/oneplus/gallery/media/AlbumMediaSet;

    move-wide/from16 v3, p1

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-object/from16 v12, p10

    invoke-direct/range {v2 .. v12}, Lcom/oneplus/gallery/media/AlbumMediaSet;-><init>(JLjava/lang/String;JJJLcom/oneplus/gallery/media/MediaType;)V

    .line 3461
    .local v2, "set":Lcom/oneplus/gallery/media/AlbumMediaSet;
    move-wide/from16 v0, p1

    invoke-virtual {v13, v0, v1, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3462
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveMediaSetLists:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v14, v3, -0x1

    .local v14, "i":I
    :goto_1
    if-ltz v14, :cond_4

    .line 3464
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveMediaSetLists:Ljava/util/List;

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;

    .line 3465
    .local v15, "list":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;
    if-eqz v15, :cond_3

    .line 3467
    invoke-virtual {v15}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->getTargetMediaType()Lcom/oneplus/gallery/media/MediaType;

    move-result-object v3

    move-object/from16 v0, p10

    if-ne v3, v0, :cond_2

    .line 3468
    invoke-virtual {v15, v2}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->addMediaSet(Lcom/oneplus/gallery/media/MediaSet;)V

    .line 3462
    :cond_2
    :goto_2
    add-int/lit8 v14, v14, -0x1

    goto :goto_1

    .line 3471
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveMediaSetLists:Ljava/util/List;

    invoke-interface {v3, v14}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 3475
    .end local v15    # "list":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;
    :cond_4
    if-eqz p11, :cond_5

    .line 3476
    sget-object v3, Lcom/oneplus/gallery/media/MediaManagerImpl;->EVENT_ALBUM_CREATED:Lcom/oneplus/base/EventKey;

    new-instance v4, Lcom/oneplus/gallery/media/MediaSetEventArgs;

    invoke-direct {v4, v2}, Lcom/oneplus/gallery/media/MediaSetEventArgs;-><init>(Lcom/oneplus/gallery/media/MediaSet;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/oneplus/gallery/media/MediaManagerImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 3479
    :cond_5
    sget-object v3, Lcom/oneplus/gallery/media/AlbumMediaSet;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_AlbumMediaSetReleasedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/gallery/media/AlbumMediaSet;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 3482
    if-eqz p12, :cond_0

    .line 3483
    move-object/from16 v0, p12

    invoke-virtual {v0, v2}, Lcom/oneplus/base/OperationCallbackHelper;->callOnCompleted(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private onAlbumMediaSetDeleted(J)V
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 3490
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_AlbumMediaSetTables:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    .line 3492
    .local v0, "albumSetTable":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/oneplus/gallery/media/AlbumMediaSet;>;"
    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery/media/AlbumMediaSet;

    .line 3493
    .local v2, "set":Lcom/oneplus/gallery/media/AlbumMediaSet;
    if-eqz v2, :cond_0

    .line 3497
    sget-object v3, Lcom/oneplus/gallery/media/AlbumMediaSet;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_AlbumMediaSetReleasedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/gallery/media/AlbumMediaSet;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 3500
    invoke-virtual {v2}, Lcom/oneplus/gallery/media/AlbumMediaSet;->release()V

    goto :goto_0

    .line 3502
    .end local v0    # "albumSetTable":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/oneplus/gallery/media/AlbumMediaSet;>;"
    .end local v2    # "set":Lcom/oneplus/gallery/media/AlbumMediaSet;
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/media/MediaManagerImpl;->onAlbumMediaSetReleased(J)V

    .line 3503
    return-void
.end method

.method private onAlbumMediaSetReleased(J)V
    .locals 7
    .param p1, "id"    # J

    .prologue
    .line 3509
    iget-object v6, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_AlbumMediaSetTables:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    .line 3511
    .local v0, "albumSetTable":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/oneplus/gallery/media/AlbumMediaSet;>;"
    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery/media/AlbumMediaSet;

    .line 3512
    .local v4, "set":Lcom/oneplus/gallery/media/AlbumMediaSet;
    if-eqz v4, :cond_0

    .line 3514
    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 3515
    invoke-virtual {v4}, Lcom/oneplus/gallery/media/AlbumMediaSet;->getTargetMediaType()Lcom/oneplus/gallery/media/MediaType;

    move-result-object v5

    .line 3516
    .local v5, "targetMediaType":Lcom/oneplus/gallery/media/MediaType;
    iget-object v6, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveMediaSetLists:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 3518
    iget-object v6, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveMediaSetLists:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;

    .line 3519
    .local v3, "list":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;
    if-eqz v3, :cond_2

    .line 3521
    invoke-virtual {v3}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->getTargetMediaType()Lcom/oneplus/gallery/media/MediaType;

    move-result-object v6

    if-ne v6, v5, :cond_1

    .line 3522
    invoke-virtual {v3, v4}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->removeMediaSet(Lcom/oneplus/gallery/media/MediaSet;)Z

    .line 3516
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3525
    :cond_2
    iget-object v6, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveMediaSetLists:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 3528
    .end local v0    # "albumSetTable":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/oneplus/gallery/media/AlbumMediaSet;>;"
    .end local v1    # "i":I
    .end local v3    # "list":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;
    .end local v4    # "set":Lcom/oneplus/gallery/media/AlbumMediaSet;
    .end local v5    # "targetMediaType":Lcom/oneplus/gallery/media/MediaType;
    :cond_3
    return-void
.end method

.method private onDirectoryMediaSetCreated(JLjava/lang/String;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;Lcom/oneplus/gallery/media/MediaType;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "extraInfo"    # Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;
    .param p5, "targetMediaType"    # Lcom/oneplus/gallery/media/MediaType;

    .prologue
    .line 3563
    invoke-direct/range {p0 .. p5}, Lcom/oneplus/gallery/media/MediaManagerImpl;->addDirectoryMediaSetToActiveSetList(JLjava/lang/String;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;Lcom/oneplus/gallery/media/MediaType;)Lcom/oneplus/gallery/media/DirectoryMediaSet;

    move-result-object v0

    .line 3566
    .local v0, "set":Lcom/oneplus/gallery/media/DirectoryMediaSet;
    if-eqz v0, :cond_0

    .line 3568
    sget-object v1, Lcom/oneplus/gallery/media/DirectoryMediaSet;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_DirectoryMediaSetReleasedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/media/DirectoryMediaSet;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 3569
    sget-object v1, Lcom/oneplus/gallery/media/DirectoryMediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_DirectoryMediaSetMediaCountChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/media/DirectoryMediaSet;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 3570
    sget-object v1, Lcom/oneplus/gallery/media/DirectoryMediaSet;->PROP_CONTAINS_RECYCLED_MEDIA:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_DirectoryMediaSetContainsRecycledMediaCB:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/media/DirectoryMediaSet;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 3573
    :cond_0
    return-void
.end method

.method private onDirectoryMediaSetDeleted(J)V
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 3579
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_DirectoryMediaSetTables:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    .line 3581
    .local v0, "dirSetTable":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/oneplus/gallery/media/DirectoryMediaSet;>;"
    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery/media/DirectoryMediaSet;

    .line 3582
    .local v2, "set":Lcom/oneplus/gallery/media/DirectoryMediaSet;
    if-eqz v2, :cond_0

    .line 3586
    sget-object v3, Lcom/oneplus/gallery/media/DirectoryMediaSet;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_DirectoryMediaSetReleasedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/gallery/media/DirectoryMediaSet;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 3587
    sget-object v3, Lcom/oneplus/gallery/media/DirectoryMediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_DirectoryMediaSetMediaCountChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/gallery/media/DirectoryMediaSet;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 3588
    sget-object v3, Lcom/oneplus/gallery/media/DirectoryMediaSet;->PROP_CONTAINS_RECYCLED_MEDIA:Lcom/oneplus/base/PropertyKey;

    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_DirectoryMediaSetContainsRecycledMediaCB:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/gallery/media/DirectoryMediaSet;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 3591
    invoke-virtual {v2}, Lcom/oneplus/gallery/media/DirectoryMediaSet;->release()V

    goto :goto_0

    .line 3593
    .end local v0    # "dirSetTable":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/oneplus/gallery/media/DirectoryMediaSet;>;"
    .end local v2    # "set":Lcom/oneplus/gallery/media/DirectoryMediaSet;
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/media/MediaManagerImpl;->onDirectoryMediaSetReleased(J)V

    .line 3594
    return-void
.end method

.method private onDirectoryMediaSetReleased(J)V
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 3600
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/media/MediaManagerImpl;->removeDirectoryMediaSetFromActiveSetList(J)V

    .line 3603
    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_DirectoryMediaSetTables:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongSparseArray;

    .line 3605
    .local v1, "dirSetTable":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/oneplus/gallery/media/DirectoryMediaSet;>;"
    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/media/DirectoryMediaSet;

    .line 3606
    .local v3, "set":Lcom/oneplus/gallery/media/DirectoryMediaSet;
    if-eqz v3, :cond_0

    .line 3608
    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_0

    .line 3611
    .end local v1    # "dirSetTable":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/oneplus/gallery/media/DirectoryMediaSet;>;"
    .end local v3    # "set":Lcom/oneplus/gallery/media/DirectoryMediaSet;
    :cond_1
    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_DirectoryPathTables:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 3613
    .local v0, "dirPathTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3615
    .end local v0    # "dirPathTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method private onDirectoryMediaSetRenamed(J)V
    .locals 7
    .param p1, "id"    # J

    .prologue
    .line 3621
    iget-object v5, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_DirectoryMediaSetTables:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    .line 3623
    .local v0, "dirSetTable":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/oneplus/gallery/media/DirectoryMediaSet;>;"
    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery/media/DirectoryMediaSet;

    .line 3624
    .local v4, "set":Lcom/oneplus/gallery/media/DirectoryMediaSet;
    if-eqz v4, :cond_0

    .line 3626
    iget-object v5, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveMediaSetLists:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 3628
    iget-object v5, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveMediaSetLists:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;

    .line 3629
    .local v3, "list":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;
    if-eqz v3, :cond_1

    .line 3632
    invoke-virtual {v3, v4}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->removeMediaSet(Lcom/oneplus/gallery/media/MediaSet;)Z

    .line 3633
    invoke-virtual {v3, v4}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->addMediaSet(Lcom/oneplus/gallery/media/MediaSet;)V

    .line 3626
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3636
    :cond_1
    iget-object v5, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveMediaSetLists:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 3639
    .end local v0    # "dirSetTable":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/oneplus/gallery/media/DirectoryMediaSet;>;"
    .end local v1    # "i":I
    .end local v3    # "list":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;
    .end local v4    # "set":Lcom/oneplus/gallery/media/DirectoryMediaSet;
    :cond_2
    return-void
.end method

.method private onGroupMediaCoverChanged(Lcom/oneplus/gallery/media/GroupMedia;)V
    .locals 7
    .param p1, "media"    # Lcom/oneplus/gallery/media/GroupMedia;

    .prologue
    .line 3647
    const-wide/16 v2, 0x0

    invoke-interface {p1}, Lcom/oneplus/gallery/media/GroupMedia;->getType()Lcom/oneplus/gallery/media/MediaType;

    move-result-object v4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/gallery/media/MediaManagerImpl;->callOnMediaUpdated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    .line 3648
    return-void
.end method

.method private onGroupMediaListReleased(Lcom/oneplus/gallery/media/MediaManagerImpl$GroupMediaListImpl;)V
    .locals 7
    .param p1, "mediaList"    # Lcom/oneplus/gallery/media/MediaManagerImpl$GroupMediaListImpl;

    .prologue
    .line 3654
    iget-object v1, p1, Lcom/oneplus/gallery/media/MediaManagerImpl$GroupMediaListImpl;->groupId:Ljava/lang/String;

    .line 3655
    .local v1, "groupId":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3677
    :cond_0
    :goto_0
    return-void

    .line 3657
    :cond_1
    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveGroupMediaLists:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 3658
    .local v3, "mediaLists":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/oneplus/gallery/media/MediaManagerImpl$GroupMediaListImpl;>;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3660
    :cond_2
    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveGroupMediaLists:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3663
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_4

    .line 3665
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/MediaManagerImpl$GroupMediaListImpl;

    .line 3666
    .local v0, "candMediaList":Lcom/oneplus/gallery/media/MediaManagerImpl$GroupMediaListImpl;
    if-ne v0, p1, :cond_5

    .line 3668
    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3669
    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v5, "onGroupMediaListReleased() - Group id: "

    const-string v6, ", released media list: "

    invoke-static {v4, v5, v1, v6, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3675
    .end local v0    # "candMediaList":Lcom/oneplus/gallery/media/MediaManagerImpl$GroupMediaListImpl;
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3676
    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveGroupMediaLists:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3672
    .restart local v0    # "candMediaList":Lcom/oneplus/gallery/media/MediaManagerImpl$GroupMediaListImpl;
    :cond_5
    if-nez v0, :cond_6

    .line 3673
    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3663
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method private onGroupMediaSubMediaSizeChanged(Lcom/oneplus/gallery/media/GroupMedia;)V
    .locals 0
    .param p1, "media"    # Lcom/oneplus/gallery/media/GroupMedia;

    .prologue
    .line 3684
    return-void
.end method

.method private onMediaCreated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 3783
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/gallery/media/MediaManagerImpl;->onMediaCreated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;ZI)V

    .line 3784
    return-void
.end method

.method private onMediaCreated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;ZI)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "ignoreMediaChangeCallback"    # Z
    .param p6, "flags"    # I

    .prologue
    .line 3788
    if-nez p5, :cond_0

    .line 3790
    instance-of v1, p4, Lcom/oneplus/gallery/media/GroupMedia;

    if-nez v1, :cond_1

    invoke-interface {p4}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/oneplus/gallery/media/MediaManagerImpl;->isGroupMedia(JLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 3791
    .local v0, "isInGroup":Z
    :goto_0
    if-eqz v0, :cond_2

    or-int/lit16 v6, p6, 0x400

    :goto_1
    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/gallery/media/MediaManagerImpl;->callOnMediaCreated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    .line 3795
    .end local v0    # "isInGroup":Z
    :cond_0
    return-void

    .line 3790
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "isInGroup":Z
    :cond_2
    move v6, p6

    .line 3791
    goto :goto_1
.end method

.method private onMediaDeleted(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 3801
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/gallery/media/MediaManagerImpl;->onMediaDeleted(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;ZI)V

    .line 3802
    return-void
.end method

.method private onMediaDeleted(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;ZI)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "ignoreMediaChangeCallback"    # Z
    .param p6, "flags"    # I

    .prologue
    .line 3806
    if-nez p5, :cond_0

    .line 3808
    if-eqz p4, :cond_1

    instance-of v1, p4, Lcom/oneplus/gallery/media/GroupMedia;

    if-nez v1, :cond_1

    invoke-interface {p4}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/oneplus/gallery/media/MediaManagerImpl;->isGroupMedia(JLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 3809
    .local v0, "isInGroup":Z
    :goto_0
    if-eqz v0, :cond_2

    or-int/lit16 v6, p6, 0x400

    :goto_1
    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/gallery/media/MediaManagerImpl;->callOnMediaDeleted(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    .line 3813
    .end local v0    # "isInGroup":Z
    :cond_0
    return-void

    .line 3808
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "isInGroup":Z
    :cond_2
    move v6, p6

    .line 3809
    goto :goto_1
.end method

.method private onMediaRecycled(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 3819
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/gallery/media/MediaManagerImpl;->onMediaRecycled(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;ZI)V

    .line 3820
    return-void
.end method

.method private onMediaRecycled(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;ZI)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "ignoreMediaChangeCallback"    # Z
    .param p6, "flags"    # I

    .prologue
    .line 3824
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p4, v0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->removeFromGroupMedia(JLcom/oneplus/gallery/media/Media;I)V

    .line 3827
    if-nez p5, :cond_0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p6

    .line 3828
    invoke-direct/range {v1 .. v6}, Lcom/oneplus/gallery/media/MediaManagerImpl;->callOnMediaRecycled(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    .line 3829
    :cond_0
    return-void
.end method

.method private onMediaRestored(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 3835
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/gallery/media/MediaManagerImpl;->onMediaRestored(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;ZI)V

    .line 3836
    return-void
.end method

.method private onMediaRestored(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;ZI)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "ignoreMediaChangeCallback"    # Z
    .param p6, "flags"    # I

    .prologue
    .line 3840
    if-nez p5, :cond_0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p6

    .line 3841
    invoke-direct/range {v1 .. v6}, Lcom/oneplus/gallery/media/MediaManagerImpl;->callOnMediaRestored(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    .line 3842
    :cond_0
    return-void
.end method

.method private onMediaSetListReleased(Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;)V
    .locals 17
    .param p1, "list"    # Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;

    .prologue
    .line 3848
    const/4 v10, 0x1

    .line 3849
    .local v10, "isLastList":Z
    const/4 v11, 0x0

    .line 3850
    .local v11, "isValidSet":Z
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->getTargetMediaType()Lcom/oneplus/gallery/media/MediaType;

    move-result-object v13

    .line 3851
    .local v13, "targetMediaType":Lcom/oneplus/gallery/media/MediaType;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveMediaSetLists:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v9, v14, -0x1

    .local v9, "i":I
    :goto_0
    if-ltz v9, :cond_3

    .line 3853
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveMediaSetLists:Ljava/util/List;

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/ref/WeakReference;

    invoke-virtual {v14}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;

    .line 3854
    .local v5, "candList":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;
    move-object/from16 v0, p1

    if-ne v5, v0, :cond_1

    .line 3856
    const/4 v11, 0x1

    .line 3857
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveMediaSetLists:Ljava/util/List;

    invoke-interface {v14, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3858
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v15, "onMediaSetListReleased() - Active list count : "

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveMediaSetLists:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3851
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 3860
    :cond_1
    if-nez v5, :cond_2

    .line 3861
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveMediaSetLists:Ljava/util/List;

    invoke-interface {v14, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 3862
    :cond_2
    invoke-virtual {v5}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->getTargetMediaType()Lcom/oneplus/gallery/media/MediaType;

    move-result-object v14

    if-ne v14, v13, :cond_0

    .line 3863
    const/4 v10, 0x0

    goto :goto_1

    .line 3865
    .end local v5    # "candList":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;
    :cond_3
    if-eqz v11, :cond_e

    if-eqz v10, :cond_e

    .line 3868
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_CameraRollMediaSets:Ljava/util/HashMap;

    invoke-virtual {v14, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery/media/CameraRollMediaSet;

    .line 3869
    .local v4, "cameraSet":Lcom/oneplus/gallery/media/CameraRollMediaSet;
    if-eqz v4, :cond_4

    .line 3871
    sget-object v14, Lcom/oneplus/gallery/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_SysMediaSetMediaCountChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v4, v14, v15}, Lcom/oneplus/gallery/media/CameraRollMediaSet;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 3872
    invoke-virtual {v4}, Lcom/oneplus/gallery/media/CameraRollMediaSet;->release()V

    .line 3873
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_CameraRollMediaSets:Ljava/util/HashMap;

    invoke-virtual {v14, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3875
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_SelfieMediaSets:Ljava/util/HashMap;

    invoke-virtual {v14, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oneplus/gallery/media/SelfieMediaSet;

    .line 3876
    .local v12, "selfieSet":Lcom/oneplus/gallery/media/SelfieMediaSet;
    if-eqz v12, :cond_5

    .line 3878
    sget-object v14, Lcom/oneplus/gallery/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_SysMediaSetMediaCountChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v12, v14, v15}, Lcom/oneplus/gallery/media/SelfieMediaSet;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 3879
    invoke-virtual {v12}, Lcom/oneplus/gallery/media/SelfieMediaSet;->release()V

    .line 3880
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_SelfieMediaSets:Ljava/util/HashMap;

    invoke-virtual {v14, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3882
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_FavoriteMediaSets:Ljava/util/HashMap;

    invoke-virtual {v14, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/gallery/media/FavoriteMediaSet;

    .line 3883
    .local v8, "favoriteSet":Lcom/oneplus/gallery/media/FavoriteMediaSet;
    if-eqz v8, :cond_6

    .line 3885
    sget-object v14, Lcom/oneplus/gallery/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_SysMediaSetMediaCountChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v8, v14, v15}, Lcom/oneplus/gallery/media/FavoriteMediaSet;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 3886
    invoke-virtual {v8}, Lcom/oneplus/gallery/media/FavoriteMediaSet;->release()V

    .line 3887
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_FavoriteMediaSets:Ljava/util/HashMap;

    invoke-virtual {v14, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3889
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_AllMediaMediaSets:Ljava/util/HashMap;

    invoke-virtual {v14, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/media/AllMediaMediaSet;

    .line 3890
    .local v3, "allMediaSet":Lcom/oneplus/gallery/media/AllMediaMediaSet;
    if-eqz v3, :cond_7

    .line 3892
    invoke-virtual {v3}, Lcom/oneplus/gallery/media/AllMediaMediaSet;->release()V

    .line 3893
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_AllMediaMediaSets:Ljava/util/HashMap;

    invoke-virtual {v14, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3895
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveMediaSetLists:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ScreenshotMediaSet:Lcom/oneplus/gallery/media/ScreenshotMediaSet;

    if-eqz v14, :cond_8

    .line 3897
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ScreenshotMediaSet:Lcom/oneplus/gallery/media/ScreenshotMediaSet;

    sget-object v15, Lcom/oneplus/gallery/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_SysMediaSetMediaCountChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/oneplus/gallery/media/ScreenshotMediaSet;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 3898
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ScreenshotMediaSet:Lcom/oneplus/gallery/media/ScreenshotMediaSet;

    invoke-virtual {v14}, Lcom/oneplus/gallery/media/ScreenshotMediaSet;->release()V

    .line 3899
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ScreenshotMediaSet:Lcom/oneplus/gallery/media/ScreenshotMediaSet;

    .line 3903
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_DirectoryMediaSetTables:Ljava/util/HashMap;

    invoke-virtual {v14, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/LongSparseArray;

    .line 3904
    .local v7, "dirSetTable":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/oneplus/gallery/media/DirectoryMediaSet;>;"
    if-eqz v7, :cond_b

    .line 3906
    invoke-virtual {v7}, Landroid/util/LongSparseArray;->size()I

    move-result v14

    add-int/lit8 v9, v14, -0x1

    :goto_2
    if-ltz v9, :cond_a

    .line 3908
    invoke-virtual {v7, v9}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/gallery/media/DirectoryMediaSet;

    .line 3909
    .local v6, "dirSet":Lcom/oneplus/gallery/media/DirectoryMediaSet;
    if-eqz v6, :cond_9

    .line 3910
    invoke-virtual {v6}, Lcom/oneplus/gallery/media/DirectoryMediaSet;->release()V

    .line 3906
    :cond_9
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 3912
    .end local v6    # "dirSet":Lcom/oneplus/gallery/media/DirectoryMediaSet;
    :cond_a
    invoke-virtual {v7}, Landroid/util/LongSparseArray;->clear()V

    .line 3914
    :cond_b
    new-instance v14, Lcom/oneplus/gallery/media/MediaManagerImpl$26;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v13}, Lcom/oneplus/gallery/media/MediaManagerImpl$26;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/MediaType;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/oneplus/gallery/media/MediaManagerImpl;->postToContentThread(Ljava/lang/Runnable;)Z

    .line 3924
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_AlbumMediaSetTables:Ljava/util/HashMap;

    invoke-virtual {v14, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LongSparseArray;

    .line 3925
    .local v2, "albumSetTable":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/oneplus/gallery/media/AlbumMediaSet;>;"
    if-eqz v2, :cond_e

    .line 3927
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v14

    add-int/lit8 v9, v14, -0x1

    :goto_3
    if-ltz v9, :cond_d

    .line 3929
    invoke-virtual {v2, v9}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/AlbumMediaSet;

    .line 3930
    .local v1, "albumSet":Lcom/oneplus/gallery/media/AlbumMediaSet;
    if-eqz v1, :cond_c

    .line 3931
    invoke-virtual {v1}, Lcom/oneplus/gallery/media/AlbumMediaSet;->release()V

    .line 3927
    :cond_c
    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    .line 3933
    .end local v1    # "albumSet":Lcom/oneplus/gallery/media/AlbumMediaSet;
    :cond_d
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 3936
    .end local v2    # "albumSetTable":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/oneplus/gallery/media/AlbumMediaSet;>;"
    .end local v3    # "allMediaSet":Lcom/oneplus/gallery/media/AllMediaMediaSet;
    .end local v4    # "cameraSet":Lcom/oneplus/gallery/media/CameraRollMediaSet;
    .end local v7    # "dirSetTable":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/oneplus/gallery/media/DirectoryMediaSet;>;"
    .end local v8    # "favoriteSet":Lcom/oneplus/gallery/media/FavoriteMediaSet;
    .end local v12    # "selfieSet":Lcom/oneplus/gallery/media/SelfieMediaSet;
    :cond_e
    return-void
.end method

.method private onNewMediaIntentReceived(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3943
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3944
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 3945
    .local v1, "contentUri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 3964
    :cond_0
    :goto_0
    return-void

    .line 3949
    :cond_1
    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 3952
    :pswitch_0
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v3, "onNewMediaIntentReceived() - New photo : "

    invoke-static {v2, v3, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3962
    :goto_2
    invoke-direct {p0, v1}, Lcom/oneplus/gallery/media/MediaManagerImpl;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3963
    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/media/MediaManagerImpl;->notifyContentChanged(Landroid/net/Uri;)V

    goto :goto_0

    .line 3949
    :sswitch_0
    const-string v3, "android.hardware.action.NEW_PICTURE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_1
    const-string v3, "android.hardware.action.NEW_VIDEO"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    .line 3956
    :pswitch_1
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v3, "onNewMediaIntentReceived() - New video : "

    invoke-static {v2, v3, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 3949
    :sswitch_data_0
    .sparse-switch
        -0x7d14f855 -> :sswitch_1
        0x36db402e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onSystemMediaSetMediaCountChanged(Lcom/oneplus/gallery/media/MediaSet;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 9
    .param p1, "mediaSet"    # Lcom/oneplus/gallery/media/MediaSet;
    .param p2, "prevMediaCount"    # Ljava/lang/Integer;
    .param p3, "mediaCount"    # Ljava/lang/Integer;

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 3970
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_0

    move v3, v2

    .line 3971
    .local v3, "prevState":Z
    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_1

    .line 3972
    .local v2, "newState":Z
    :goto_1
    if-eq v3, v2, :cond_4

    .line 3974
    iget-object v6, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveMediaSetLists:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_6

    .line 3976
    iget-object v6, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveMediaSetLists:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;

    .line 3977
    .local v1, "list":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;
    if-nez v1, :cond_2

    .line 3978
    iget-object v6, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveMediaSetLists:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3974
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .end local v0    # "i":I
    .end local v1    # "list":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;
    .end local v2    # "newState":Z
    .end local v3    # "prevState":Z
    :cond_0
    move v3, v7

    .line 3970
    goto :goto_0

    .restart local v3    # "prevState":Z
    :cond_1
    move v2, v7

    .line 3971
    goto :goto_1

    .line 3979
    .restart local v0    # "i":I
    .restart local v1    # "list":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;
    .restart local v2    # "newState":Z
    :cond_2
    if-eqz v2, :cond_3

    .line 3980
    invoke-virtual {v1, p1}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->addMediaSet(Lcom/oneplus/gallery/media/MediaSet;)V

    goto :goto_3

    .line 3982
    :cond_3
    invoke-virtual {v1, p1}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->removeMediaSet(Lcom/oneplus/gallery/media/MediaSet;)Z

    goto :goto_3

    .line 3985
    .end local v0    # "i":I
    .end local v1    # "list":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;
    :cond_4
    if-eqz p3, :cond_6

    .line 3987
    iget-object v6, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveMediaSetLists:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .restart local v0    # "i":I
    :goto_4
    if-ltz v0, :cond_6

    .line 3989
    iget-object v6, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveMediaSetLists:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;

    .line 3990
    .restart local v1    # "list":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;
    if-nez v1, :cond_5

    .line 3991
    iget-object v6, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveMediaSetLists:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3987
    :goto_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 3993
    :cond_5
    invoke-virtual {v1}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->ready()V

    goto :goto_5

    .line 3996
    .end local v0    # "i":I
    .end local v1    # "list":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;
    :cond_6
    if-nez v2, :cond_a

    instance-of v6, p1, Lcom/oneplus/gallery/media/CameraRollMediaSet;

    if-eqz v6, :cond_a

    .line 3998
    iget-object v6, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v8, "onSystemMediaSetMediaCountChanged() - Camera roll becomes invisible"

    invoke-static {v6, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3999
    check-cast p1, Lcom/oneplus/gallery/media/CameraRollMediaSet;

    .end local p1    # "mediaSet":Lcom/oneplus/gallery/media/MediaSet;
    invoke-virtual {p1}, Lcom/oneplus/gallery/media/CameraRollMediaSet;->getTargetMediaType()Lcom/oneplus/gallery/media/MediaType;

    move-result-object v5

    .line 4000
    .local v5, "targetMediaType":Lcom/oneplus/gallery/media/MediaType;
    iget-object v6, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveMediaSetLists:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .restart local v0    # "i":I
    :goto_6
    if-ltz v0, :cond_9

    .line 4002
    iget-object v6, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveMediaSetLists:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;

    .line 4003
    .restart local v1    # "list":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;
    if-nez v1, :cond_8

    .line 4004
    iget-object v6, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveMediaSetLists:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4000
    :cond_7
    :goto_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 4005
    :cond_8
    invoke-virtual {v1}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->getTargetMediaType()Lcom/oneplus/gallery/media/MediaType;

    move-result-object v6

    if-ne v6, v5, :cond_7

    .line 4006
    invoke-virtual {v1, v7}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->notifyCameraRollVisibility(Z)V

    goto :goto_7

    .line 4008
    .end local v1    # "list":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;
    :cond_9
    iget-object v6, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_SelfieMediaSets:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery/media/SelfieMediaSet;

    .line 4009
    .local v4, "selfieSet":Lcom/oneplus/gallery/media/SelfieMediaSet;
    if-eqz v4, :cond_a

    .line 4010
    invoke-virtual {v4}, Lcom/oneplus/gallery/media/SelfieMediaSet;->onCameraRollRemoved()V

    .line 4012
    .end local v0    # "i":I
    .end local v4    # "selfieSet":Lcom/oneplus/gallery/media/SelfieMediaSet;
    .end local v5    # "targetMediaType":Lcom/oneplus/gallery/media/MediaType;
    :cond_a
    return-void
.end method

.method private refreshAlbumMediaSets(Lcom/oneplus/gallery/media/MediaType;)V
    .locals 13
    .param p1, "targetMediaType"    # Lcom/oneplus/gallery/media/MediaType;

    .prologue
    const/4 v12, 0x0

    .line 4238
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->isContentThread()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4241
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->getAlbumInfos()[Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;

    move-result-object v0

    .line 4242
    .local v0, "albumInfos":[Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;
    move-object v1, v0

    .local v1, "arr$":[Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v3, v1, v2

    .line 4243
    .local v3, "info":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x2729

    const/16 v7, 0x8

    new-array v7, v7, [Ljava/lang/Object;

    iget-wide v8, v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v12

    const/4 v8, 0x1

    iget-object v9, v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;->displayName:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-wide v10, v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;->dateAdded:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-wide v10, v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;->dateModified:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    iget-wide v10, v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;->dateMediaAdded:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    aput-object p1, v7, v8

    const/4 v8, 0x6

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x7

    const/4 v9, 0x0

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 4242
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4245
    .end local v0    # "albumInfos":[Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;
    .end local v1    # "arr$":[Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;
    .end local v2    # "i$":I
    .end local v3    # "info":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;
    .end local v4    # "len$":I
    :cond_0
    iget-object v5, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_AlbumMediaSetTables:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 4246
    iget-object v5, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v6, 0x2764

    invoke-static {v5, v6, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 4247
    :cond_1
    return-void
.end method

.method private refreshDirectoryMediaSets(Lcom/oneplus/gallery/media/MediaType;)V
    .locals 3
    .param p1, "targetMediaType"    # Lcom/oneplus/gallery/media/MediaType;

    .prologue
    .line 4254
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_DirectoryMediaSetTables:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    .line 4255
    .local v0, "dirSetTable":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/oneplus/gallery/media/DirectoryMediaSet;>;"
    if-nez v0, :cond_0

    .line 4422
    :goto_0
    return-void

    .line 4259
    :cond_0
    sget-object v1, Lcom/oneplus/gallery/media/MediaManagerImpl;->CONTENT_URI_FILE:Landroid/net/Uri;

    new-instance v2, Lcom/oneplus/gallery/media/MediaManagerImpl$30;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/gallery/media/MediaManagerImpl$30;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/MediaType;)V

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/gallery/media/MediaManagerImpl;->accessContentProvider(Landroid/net/Uri;Lcom/oneplus/gallery/media/MediaManager$ContentProviderAccessCallback;)Lcom/oneplus/base/Handle;

    goto :goto_0
.end method

.method private refreshMediaSetLists()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4429
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveMediaSetLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4441
    :goto_0
    return-void

    .line 4432
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "refreshMediaSetLists()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4435
    invoke-direct {p0, v2}, Lcom/oneplus/gallery/media/MediaManagerImpl;->refreshDirectoryMediaSets(Lcom/oneplus/gallery/media/MediaType;)V

    .line 4436
    sget-object v0, Lcom/oneplus/gallery/media/MediaType;->PHOTO:Lcom/oneplus/gallery/media/MediaType;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->refreshDirectoryMediaSets(Lcom/oneplus/gallery/media/MediaType;)V

    .line 4437
    sget-object v0, Lcom/oneplus/gallery/media/MediaType;->VIDEO:Lcom/oneplus/gallery/media/MediaType;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->refreshDirectoryMediaSets(Lcom/oneplus/gallery/media/MediaType;)V

    .line 4438
    invoke-direct {p0, v2}, Lcom/oneplus/gallery/media/MediaManagerImpl;->refreshAlbumMediaSets(Lcom/oneplus/gallery/media/MediaType;)V

    .line 4439
    sget-object v0, Lcom/oneplus/gallery/media/MediaType;->PHOTO:Lcom/oneplus/gallery/media/MediaType;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->refreshAlbumMediaSets(Lcom/oneplus/gallery/media/MediaType;)V

    .line 4440
    sget-object v0, Lcom/oneplus/gallery/media/MediaType;->VIDEO:Lcom/oneplus/gallery/media/MediaType;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->refreshAlbumMediaSets(Lcom/oneplus/gallery/media/MediaType;)V

    goto :goto_0
.end method

.method private registerContentChangedCallback(Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;)V
    .locals 4
    .param p1, "handle"    # Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;

    .prologue
    .line 4490
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentObservers:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 4491
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentObservers:Ljava/util/HashMap;

    .line 4492
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentObservers:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;->contentUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentObserver;

    .line 4493
    .local v0, "observer":Lcom/oneplus/gallery/media/MediaManagerImpl$ContentObserver;
    if-nez v0, :cond_2

    .line 4495
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v2, "registerContentChangedCallback() - Register to "

    iget-object v3, p1, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;->contentUri:Landroid/net/Uri;

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4496
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentResolver:Landroid/content/ContentResolver;

    if-nez v1, :cond_1

    .line 4497
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/gallery/GalleryApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentResolver:Landroid/content/ContentResolver;

    .line 4498
    :cond_1
    new-instance v0, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentObserver;

    .end local v0    # "observer":Lcom/oneplus/gallery/media/MediaManagerImpl$ContentObserver;
    iget-object v1, p1, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;->contentUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThreadHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2}, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentObserver;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Landroid/net/Uri;Landroid/os/Handler;)V

    .line 4499
    .restart local v0    # "observer":Lcom/oneplus/gallery/media/MediaManagerImpl$ContentObserver;
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentObservers:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;->contentUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4500
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p1, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;->contentUri:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4502
    :cond_2
    iget-object v1, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentObserver;->callbackHandles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4503
    return-void
.end method

.method private registerDirectoryRenameCallback(Lcom/oneplus/gallery/media/MediaManagerImpl$DirectoryRenameHandle;)V
    .locals 2
    .param p1, "handle"    # Lcom/oneplus/gallery/media/MediaManagerImpl$DirectoryRenameHandle;

    .prologue
    .line 4526
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->isContentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4527
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_DirectoryRenameHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4530
    :goto_0
    return-void

    .line 4529
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x271c

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private registerMediaChangeCallback(Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeCallbackHandle;)V
    .locals 6
    .param p1, "handle"    # Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeCallbackHandle;

    .prologue
    .line 4556
    iget-object v4, p1, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeCallbackHandle;->callbackHandler:Landroid/os/Handler;

    if-eqz v4, :cond_1

    iget-object v2, p1, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeCallbackHandle;->callbackHandler:Landroid/os/Handler;

    .line 4557
    .local v2, "targetHandler":Landroid/os/Handler;
    :goto_0
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    .line 4558
    .local v3, "targetThread":Ljava/lang/Thread;
    iget-object v5, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaChangeHandlers:Ljava/util/Set;

    monitor-enter v5

    .line 4560
    :try_start_0
    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaChangeHandlers:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;

    .line 4562
    .local v0, "handler":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;
    iget-object v4, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->thread:Ljava/lang/Thread;

    if-ne v4, v3, :cond_0

    .line 4564
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4566
    :try_start_1
    iget-object v4, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->callbackHandles:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4567
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4575
    :goto_1
    return-void

    .line 4556
    .end local v0    # "handler":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "targetHandler":Landroid/os/Handler;
    .end local v3    # "targetThread":Ljava/lang/Thread;
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    goto :goto_0

    .line 4568
    .restart local v0    # "handler":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "targetHandler":Landroid/os/Handler;
    .restart local v3    # "targetThread":Ljava/lang/Thread;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4

    .line 4574
    .end local v0    # "handler":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .line 4571
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_5
    new-instance v0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, p0, v4}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Landroid/os/Looper;)V

    .line 4572
    .restart local v0    # "handler":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;
    iget-object v4, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->callbackHandles:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4573
    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaChangeHandlers:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4574
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1
.end method

.method private releaseMediaTable(Z)V
    .locals 5
    .param p1, "clearId"    # Z

    .prologue
    .line 4581
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseMediaTable() - Clear ID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4582
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaTable:Ljava/util/Map;

    monitor-enter v3

    .line 4584
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaTable:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->syncMedia(Ljava/util/Set;)V

    .line 4585
    if-eqz p1, :cond_1

    .line 4586
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaTable:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 4597
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_GroupMediaTable:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 4598
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveGroupMediaLists:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 4599
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4600
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v3, 0x2713

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 4601
    return-void

    .line 4587
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaTable:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4589
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaTable:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;

    .line 4591
    .local v0, "holder":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;
    if-eqz v0, :cond_2

    .line 4592
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;->media:Lcom/oneplus/gallery/media/Media;

    goto :goto_0

    .line 4599
    .end local v0    # "holder":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private removeDirectoryMediaSetFromActiveSetList(J)V
    .locals 7
    .param p1, "id"    # J

    .prologue
    .line 4609
    iget-object v6, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_DirectoryMediaSetTables:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    .line 4611
    .local v0, "dirSetTable":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/oneplus/gallery/media/DirectoryMediaSet;>;"
    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery/media/DirectoryMediaSet;

    .line 4612
    .local v4, "set":Lcom/oneplus/gallery/media/DirectoryMediaSet;
    if-eqz v4, :cond_0

    .line 4615
    invoke-virtual {v4}, Lcom/oneplus/gallery/media/DirectoryMediaSet;->getTargetMediaType()Lcom/oneplus/gallery/media/MediaType;

    move-result-object v5

    .line 4616
    .local v5, "targetMediaType":Lcom/oneplus/gallery/media/MediaType;
    iget-object v6, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveMediaSetLists:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 4618
    iget-object v6, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveMediaSetLists:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;

    .line 4619
    .local v3, "list":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;
    if-eqz v3, :cond_2

    .line 4621
    invoke-virtual {v3}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->getTargetMediaType()Lcom/oneplus/gallery/media/MediaType;

    move-result-object v6

    if-ne v6, v5, :cond_1

    .line 4622
    invoke-virtual {v3, v4}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->removeMediaSet(Lcom/oneplus/gallery/media/MediaSet;)Z

    .line 4616
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4625
    :cond_2
    iget-object v6, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveMediaSetLists:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 4629
    .end local v0    # "dirSetTable":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/oneplus/gallery/media/DirectoryMediaSet;>;"
    .end local v1    # "i":I
    .end local v3    # "list":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;
    .end local v4    # "set":Lcom/oneplus/gallery/media/DirectoryMediaSet;
    .end local v5    # "targetMediaType":Lcom/oneplus/gallery/media/MediaType;
    :cond_3
    return-void
.end method

.method private removeFromGroupMedia(JLcom/oneplus/gallery/media/Media;I)V
    .locals 8
    .param p1, "id"    # J
    .param p3, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p4, "flags"    # I

    .prologue
    .line 4636
    instance-of v5, p3, Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;

    if-nez v5, :cond_1

    .line 4671
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v4, p3

    .line 4640
    check-cast v4, Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;

    .line 4641
    .local v4, "photoMedia":Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;
    invoke-virtual {v4}, Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;->getParentId()J

    move-result-wide v6

    invoke-virtual {v4}, Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v6, v7, v5}, Lcom/oneplus/gallery/media/MediaManagerImpl;->evaluateGroupId(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4642
    .local v0, "groupId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 4644
    iget-object v5, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_GroupMediaTable:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/GroupMedia;

    .line 4645
    .local v1, "groupMedia":Lcom/oneplus/gallery/media/GroupMedia;
    if-eqz v1, :cond_0

    .line 4652
    invoke-interface {v1, p3}, Lcom/oneplus/gallery/media/GroupMedia;->removeSubMedia(Lcom/oneplus/gallery/media/Media;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4655
    iget-object v5, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveGroupMediaLists:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 4656
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/oneplus/gallery/media/MediaManagerImpl$GroupMediaListImpl;>;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 4658
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 4659
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery/media/MediaManagerImpl$GroupMediaListImpl;

    invoke-virtual {v5, p3}, Lcom/oneplus/gallery/media/MediaManagerImpl$GroupMediaListImpl;->removeMedia(Lcom/oneplus/gallery/media/Media;)Z

    .line 4658
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4663
    .end local v2    # "i":I
    :cond_2
    invoke-interface {v1}, Lcom/oneplus/gallery/media/GroupMedia;->getSubMedia()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4664
    const/4 v5, 0x0

    invoke-direct {p0, v0, v5}, Lcom/oneplus/gallery/media/MediaManagerImpl;->removeFromGroupMediaTable(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private removeFromGroupMediaTable(Ljava/lang/String;I)V
    .locals 13
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    const/4 v6, 0x0

    .line 4678
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_GroupMediaTable:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery/media/GroupMedia;

    .line 4679
    .local v5, "groupMedia":Lcom/oneplus/gallery/media/GroupMedia;
    if-nez v5, :cond_0

    .line 4712
    :goto_0
    return-void

    .line 4682
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v2, "removeFromGroupMediaTable() - Group id: "

    const-string v3, ", flags: "

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, p1, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4685
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_GroupMediaChangeCallback:Lcom/oneplus/gallery/media/GroupMedia$GroupMediaChangeCallback;

    invoke-interface {v5, v1}, Lcom/oneplus/gallery/media/GroupMedia;->removeGroupMediaChangeCallback(Lcom/oneplus/gallery/media/GroupMedia$GroupMediaChangeCallback;)V

    .line 4688
    new-instance v12, Ljava/util/HashSet;

    invoke-interface {v5}, Lcom/oneplus/gallery/media/GroupMedia;->getSubMedia()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v12, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4689
    .local v12, "subMedia":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery/media/Media;>;"
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/oneplus/gallery/media/Media;

    .line 4692
    .local v11, "media":Lcom/oneplus/gallery/media/Media;
    invoke-interface {v5, v11}, Lcom/oneplus/gallery/media/GroupMedia;->removeSubMedia(Lcom/oneplus/gallery/media/Media;)Z

    .line 4695
    check-cast v11, Lcom/oneplus/gallery/media/MediaStoreMedia;

    .end local v11    # "media":Lcom/oneplus/gallery/media/Media;
    invoke-virtual {v11}, Lcom/oneplus/gallery/media/MediaStoreMedia;->getId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, v6}, Lcom/oneplus/gallery/media/MediaManagerImpl;->removeFromMediaTable(JI)Lcom/oneplus/gallery/media/Media;

    goto :goto_1

    .line 4699
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveGroupMediaLists:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 4700
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/oneplus/gallery/media/MediaManagerImpl$GroupMediaListImpl;>;>;"
    if-eqz v10, :cond_3

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 4702
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-ge v7, v1, :cond_3

    .line 4704
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/MediaManagerImpl$GroupMediaListImpl;

    .line 4705
    .local v0, "groupMediaList":Lcom/oneplus/gallery/media/MediaManagerImpl$GroupMediaListImpl;
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_3
    invoke-virtual {v0}, Lcom/oneplus/gallery/media/MediaManagerImpl$GroupMediaListImpl;->size()I

    move-result v1

    if-ge v9, v1, :cond_2

    .line 4706
    invoke-virtual {v0, v9}, Lcom/oneplus/gallery/media/MediaManagerImpl$GroupMediaListImpl;->removeMedia(I)V

    .line 4705
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 4702
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 4711
    .end local v0    # "groupMediaList":Lcom/oneplus/gallery/media/MediaManagerImpl$GroupMediaListImpl;
    .end local v7    # "i":I
    .end local v9    # "j":I
    :cond_3
    const-wide/16 v2, 0x0

    invoke-interface {v5}, Lcom/oneplus/gallery/media/GroupMedia;->getType()Lcom/oneplus/gallery/media/MediaType;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/gallery/media/MediaManagerImpl;->onMediaDeleted(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    goto :goto_0
.end method

.method private removeFromMediaTable(JI)Lcom/oneplus/gallery/media/Media;
    .locals 9
    .param p1, "id"    # J
    .param p3, "flags"    # I

    .prologue
    .line 4718
    const/4 v2, 0x0

    .line 4719
    .local v2, "mediaHolder":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;
    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaTable:Ljava/util/Map;

    monitor-enter v4

    .line 4721
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaTable:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;

    move-object v2, v0

    .line 4722
    monitor-exit v4

    .line 4723
    if-nez v2, :cond_0

    .line 4724
    const/4 v7, 0x0

    .line 4730
    :goto_0
    return-object v7

    .line 4722
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 4725
    :cond_0
    iget-object v7, v2, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;->media:Lcom/oneplus/gallery/media/Media;

    .line 4726
    .local v7, "media":Lcom/oneplus/gallery/media/Media;
    iget-object v6, v2, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;->mediaType:Lcom/oneplus/gallery/media/MediaType;

    .line 4727
    .local v6, "mediaType":Lcom/oneplus/gallery/media/MediaType;
    if-eqz v7, :cond_1

    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ThumbnailImageManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;

    if-eqz v3, :cond_1

    .line 4728
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ThumbnailImageManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;

    const/4 v4, 0x0

    invoke-interface {v3, v7, v4}, Lcom/oneplus/gallery/media/ThumbnailImageManager;->invalidateThumbnailImages(Lcom/oneplus/gallery/media/Media;I)V

    :cond_1
    move-object v3, p0

    move-wide v4, p1

    move v8, p3

    .line 4729
    invoke-direct/range {v3 .. v8}, Lcom/oneplus/gallery/media/MediaManagerImpl;->onMediaDeleted(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    goto :goto_0
.end method

.method private scheduleUIMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 4891
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ScheduledUIMessages:Ljava/util/Deque;

    monitor-enter v1

    .line 4893
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ScheduledUIMessages:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 4894
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x2733

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4895
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x2733

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4896
    :cond_0
    monitor-exit v1

    .line 4897
    return-void

    .line 4896
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setupMediaTable()V
    .locals 25

    .prologue
    .line 4953
    const/4 v15, 0x0

    .line 4954
    .local v15, "isMediaTableEmpty":Z
    const/16 v16, 0x0

    .line 4955
    .local v16, "mediaTableSize":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaTable:Ljava/util/Map;

    monitor-enter v8

    .line 4957
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaTable:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v15

    .line 4958
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaTable:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v16

    .line 4959
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4960
    if-nez v15, :cond_0

    .line 4962
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setupMediaTable() - Ready, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " entries"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4963
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->syncMediaTable()V

    .line 5037
    :goto_0
    return-void

    .line 4959
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 4971
    :cond_0
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 4972
    .local v20, "time":J
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/gallery/GalleryApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 4973
    .local v11, "contentResolver":Landroid/content/ContentResolver;
    sget-object v3, Lcom/oneplus/gallery/media/MediaManagerImpl;->CONTENT_URI_FILE:Landroid/net/Uri;

    invoke-virtual {v11, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    .line 4974
    .local v2, "client":Landroid/content/ContentProviderClient;
    if-eqz v2, :cond_9

    .line 4978
    const/16 v18, 0x0

    .line 4982
    .local v18, "startOffset":I
    :cond_1
    const/16 v17, 0x0

    .line 4983
    .local v17, "queriedCount":I
    :try_start_3
    sget-object v3, Lcom/oneplus/gallery/media/MediaManagerImpl;->CONTENT_URI_FILE:Landroid/net/Uri;

    invoke-static {}, Lcom/oneplus/gallery/media/MediaStoreMedia;->getMediaColumns()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "media_type=1 OR media_type=3"

    const/4 v6, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id DESC LIMIT 256 OFFSET "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v12

    .local v12, "cursor":Landroid/database/Cursor;
    const/16 v22, 0x0

    .line 4985
    :goto_1
    :try_start_4
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaTable:Ljava/util/Map;

    move-object/from16 v23, v0

    monitor-enter v23
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 4989
    const/4 v3, 0x0

    :try_start_5
    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 4990
    .local v4, "id":J
    const/4 v3, 0x1

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/oneplus/gallery/media/MediaType;->fromMediaStoreMediaType(I)Lcom/oneplus/gallery/media/MediaType;

    move-result-object v6

    .line 4991
    .local v6, "mediaType":Lcom/oneplus/gallery/media/MediaType;
    sget-object v3, Lcom/oneplus/gallery/media/MediaType;->UNKNOWN:Lcom/oneplus/gallery/media/MediaType;

    if-eq v6, v3, :cond_2

    .line 4994
    invoke-static {v4, v5}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->getExtraMediaInfo(J)Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;

    move-result-object v14

    .line 4995
    .local v14, "extraInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-static {v12, v14, v3}, Lcom/oneplus/gallery/media/MediaStoreMedia;->create(Landroid/database/Cursor;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;Landroid/os/Handler;)Lcom/oneplus/gallery/media/MediaStoreMedia;

    move-result-object v7

    .line 4996
    .local v7, "media":Lcom/oneplus/gallery/media/Media;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaTable:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    new-instance v9, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;

    invoke-direct {v9, v4, v5, v6, v7}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;-><init>(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;)V

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4997
    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/oneplus/gallery/media/MediaManagerImpl;->onMediaCreated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;ZI)V

    .line 4999
    .end local v7    # "media":Lcom/oneplus/gallery/media/Media;
    .end local v14    # "extraInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;
    :cond_2
    add-int/lit8 v17, v17, 0x1

    .line 5000
    monitor-exit v23

    goto :goto_1

    .end local v4    # "id":J
    .end local v6    # "mediaType":Lcom/oneplus/gallery/media/MediaType;
    :catchall_1
    move-exception v3

    monitor-exit v23
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v3
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 4983
    :catch_0
    move-exception v3

    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 5002
    :catchall_2
    move-exception v8

    move-object/from16 v24, v8

    move-object v8, v3

    move-object/from16 v3, v24

    :goto_2
    if-eqz v12, :cond_3

    if-eqz v8, :cond_7

    :try_start_8
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :cond_3
    :goto_3
    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 5025
    .end local v12    # "cursor":Landroid/database/Cursor;
    :catchall_3
    move-exception v3

    :try_start_a
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 5026
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v20, v8, v20

    .line 5027
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "setupMediaTable() - Take "

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, v20

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v22, " ms to setup table with "

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaTable:Ljava/util/Map;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->size()I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v22, " entries"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    throw v3
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    .line 5033
    .end local v2    # "client":Landroid/content/ContentProviderClient;
    .end local v11    # "contentResolver":Landroid/content/ContentResolver;
    .end local v17    # "queriedCount":I
    .end local v18    # "startOffset":I
    .end local v20    # "time":J
    :catch_1
    move-exception v13

    .line 5035
    .local v13, "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v8, "setupMediaTable() - Fail to setup table"

    invoke-static {v3, v8, v13}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 5002
    .end local v13    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "client":Landroid/content/ContentProviderClient;
    .restart local v11    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v12    # "cursor":Landroid/database/Cursor;
    .restart local v17    # "queriedCount":I
    .restart local v18    # "startOffset":I
    .restart local v20    # "time":J
    :cond_4
    if-eqz v12, :cond_5

    if-eqz v22, :cond_6

    :try_start_b
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 5003
    :cond_5
    :goto_4
    move/from16 v0, v17

    int-to-long v8, v0

    const-wide/16 v22, 0x100

    cmp-long v3, v8, v22

    if-gez v3, :cond_8

    .line 5025
    :try_start_c
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 5026
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v20, v8, v20

    .line 5027
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setupMediaTable() - Take "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v20

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ms to setup table with "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaTable:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " entries"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1

    goto/16 :goto_0

    .line 5002
    :catch_2
    move-exception v19

    .local v19, "x2":Ljava/lang/Throwable;
    :try_start_d
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    .end local v19    # "x2":Ljava/lang/Throwable;
    :cond_6
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catch_3
    move-exception v19

    .restart local v19    # "x2":Ljava/lang/Throwable;
    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .end local v19    # "x2":Ljava/lang/Throwable;
    :cond_7
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 5005
    :cond_8
    add-int v18, v18, v17

    .line 5011
    :goto_5
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_PendingContentProviderAccessHandles:Ljava/util/LinkedList;

    monitor-enter v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 5013
    :try_start_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_PendingContentProviderAccessHandles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentProviderAccessHandle;

    .line 5014
    .local v10, "accessHandle":Lcom/oneplus/gallery/media/MediaManagerImpl$ContentProviderAccessHandle;
    monitor-exit v8
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 5015
    if-eqz v10, :cond_1

    .line 5017
    :try_start_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v8, "setupMediaTable() - Handle another content provider access first"

    invoke-static {v3, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5018
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/oneplus/gallery/media/MediaManagerImpl;->accessContentProvider(Lcom/oneplus/gallery/media/MediaManagerImpl$ContentProviderAccessHandle;)V

    .line 5019
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v8, "setupMediaTable() - Continue synchronization"

    invoke-static {v3, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto :goto_5

    .line 5014
    .end local v10    # "accessHandle":Lcom/oneplus/gallery/media/MediaManagerImpl$ContentProviderAccessHandle;
    :catchall_4
    move-exception v3

    :try_start_10
    monitor-exit v8
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :try_start_11
    throw v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 5031
    .end local v12    # "cursor":Landroid/database/Cursor;
    .end local v17    # "queriedCount":I
    .end local v18    # "startOffset":I
    :cond_9
    :try_start_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v8, "setupMediaTable() - Fail to acquire content provider client"

    invoke-static {v3, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_1

    goto/16 :goto_0

    .line 5002
    .restart local v12    # "cursor":Landroid/database/Cursor;
    .restart local v17    # "queriedCount":I
    .restart local v18    # "startOffset":I
    :catchall_5
    move-exception v3

    move-object/from16 v8, v22

    goto/16 :goto_2
.end method

.method private startContentThread()V
    .locals 3

    .prologue
    .line 5043
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 5079
    :goto_0
    return-void

    .line 5045
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_Lock:Ljava/lang/Object;

    monitor-enter v1

    .line 5047
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 5049
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "Gallery media content thread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThread:Landroid/os/HandlerThread;

    .line 5050
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v2, "startContentThread() - Start content thread [start]"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5051
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 5052
    new-instance v0, Lcom/oneplus/gallery/media/MediaManagerImpl$33;

    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/oneplus/gallery/media/MediaManagerImpl$33;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThreadHandler:Landroid/os/Handler;

    .line 5060
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThreadHandler:Landroid/os/Handler;

    new-instance v2, Lcom/oneplus/gallery/media/MediaManagerImpl$34;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery/media/MediaManagerImpl$34;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5068
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThreadHandler:Landroid/os/Handler;

    new-instance v2, Lcom/oneplus/gallery/media/MediaManagerImpl$35;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery/media/MediaManagerImpl$35;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5076
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v2, "startContentThread() - Start content thread [end]"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5078
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private syncMediaTable()V
    .locals 3

    .prologue
    .line 5085
    sget-object v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->CONTENT_URI_FILE:Landroid/net/Uri;

    invoke-static {}, Lcom/oneplus/gallery/media/MediaStoreMedia;->getMediaColumns()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "media_type=1 OR media_type=3"

    invoke-direct {p0, v0, v1, v2}, Lcom/oneplus/gallery/media/MediaManagerImpl;->syncMediaTable(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    .line 5086
    return-void
.end method

.method private syncMediaTable(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "queryUri"    # Landroid/net/Uri;
    .param p2, "queryProjections"    # [Ljava/lang/String;
    .param p3, "querySelection"    # Ljava/lang/String;

    .prologue
    .line 5091
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v3, "syncMediaTable() - Start"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5092
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 5093
    .local v0, "time":J
    sget-object v2, Lcom/oneplus/gallery/media/MediaManagerImpl;->CONTENT_URI_FILE:Landroid/net/Uri;

    new-instance v3, Lcom/oneplus/gallery/media/MediaManagerImpl$36;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/oneplus/gallery/media/MediaManagerImpl$36;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/gallery/media/MediaManagerImpl;->accessContentProvider(Landroid/net/Uri;Lcom/oneplus/gallery/media/MediaManager$ContentProviderAccessCallback;)Lcom/oneplus/base/Handle;

    .line 5179
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 5180
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncMediaTable() - Take "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms to synchronize"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5181
    return-void
.end method

.method private unregisterContentChangedCallback(Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;)V
    .locals 4
    .param p1, "handle"    # Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;

    .prologue
    .line 5187
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentObservers:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 5195
    :cond_0
    :goto_0
    return-void

    .line 5189
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentObservers:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;->contentUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentObserver;

    .line 5190
    .local v0, "observer":Lcom/oneplus/gallery/media/MediaManagerImpl$ContentObserver;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentObserver;->callbackHandles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentObserver;->callbackHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5192
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v2, "unregisterContentChangedCallback() - Unregister from "

    iget-object v3, p1, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;->contentUri:Landroid/net/Uri;

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5193
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentObservers:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;->contentUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5194
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method private unregisterDirectoryRenameCallback(Lcom/oneplus/gallery/media/MediaManagerImpl$DirectoryRenameHandle;)V
    .locals 2
    .param p1, "handle"    # Lcom/oneplus/gallery/media/MediaManagerImpl$DirectoryRenameHandle;

    .prologue
    .line 5201
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->isContentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5202
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_DirectoryRenameHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 5205
    :goto_0
    return-void

    .line 5204
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x271d

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    goto :goto_0
.end method

.method private unregisterMediaChangeCallback(Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeCallbackHandle;)V
    .locals 4
    .param p1, "handle"    # Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeCallbackHandle;

    .prologue
    .line 5211
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaChangeHandlers:Ljava/util/Set;

    monitor-enter v3

    .line 5213
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaChangeHandlers:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;

    .line 5215
    .local v0, "handler":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5217
    :try_start_1
    iget-object v2, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->callbackHandles:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5219
    iget-object v2, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->callbackHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5220
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaChangeHandlers:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 5221
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5225
    .end local v0    # "handler":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;
    :cond_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5226
    return-void

    .line 5223
    .restart local v0    # "handler":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;
    :cond_2
    :try_start_3
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 5225
    .end local v0    # "handler":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method

.method private updateOnePlusFlags(JIZ)Z
    .locals 17
    .param p1, "mediaId"    # J
    .param p3, "flags"    # I
    .param p4, "add"    # Z

    .prologue
    .line 5232
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v5, "updateOnePlusFlags() - Id: "

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, ", flags: "

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, ", add: "

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static/range {v4 .. v10}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5235
    invoke-static/range {p1 .. p2}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->getExtraMediaInfo(J)Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;

    move-result-object v12

    .line 5239
    .local v12, "extraMediaInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;
    const/4 v15, 0x0

    .line 5240
    .local v15, "success":Z
    if-nez v12, :cond_2

    .line 5242
    new-instance v12, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;

    .end local v12    # "extraMediaInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;
    move-wide/from16 v0, p1

    move/from16 v2, p3

    invoke-direct {v12, v0, v1, v2}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;-><init>(JI)V

    .line 5243
    .restart local v12    # "extraMediaInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;
    invoke-static {v12}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->addExtraMediaInfo(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 5244
    const/4 v15, 0x1

    .line 5265
    :cond_0
    :goto_0
    if-eqz v15, :cond_8

    .line 5267
    const/4 v13, 0x0

    .line 5268
    .local v13, "mediaHolder":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaTable:Ljava/util/Map;

    monitor-enter v5

    .line 5271
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaTable:Ljava/util/Map;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;

    move-object v13, v0

    .line 5272
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5273
    if-eqz v13, :cond_5

    iget-object v9, v13, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;->media:Lcom/oneplus/gallery/media/Media;

    .line 5274
    .local v9, "media":Lcom/oneplus/gallery/media/Media;
    :goto_1
    if-eqz v9, :cond_7

    .line 5276
    instance-of v4, v9, Lcom/oneplus/gallery/media/MediaStoreMedia;

    if-eqz v4, :cond_1

    move-object v4, v9

    .line 5278
    check-cast v4, Lcom/oneplus/gallery/media/MediaStoreMedia;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v12}, Lcom/oneplus/gallery/media/MediaStoreMedia;->update(Landroid/database/Cursor;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5280
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v5, "updateOnePlusFlags() - Update success"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5281
    invoke-interface {v9}, Lcom/oneplus/gallery/media/Media;->getType()Lcom/oneplus/gallery/media/MediaType;

    move-result-object v8

    .line 5282
    .local v8, "mediaType":Lcom/oneplus/gallery/media/MediaType;
    const/4 v10, 0x4

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/oneplus/gallery/media/MediaManagerImpl;->callOnMediaUpdated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    .end local v8    # "mediaType":Lcom/oneplus/gallery/media/MediaType;
    .end local v9    # "media":Lcom/oneplus/gallery/media/Media;
    .end local v13    # "mediaHolder":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;
    :cond_1
    :goto_2
    move v4, v15

    .line 5296
    :goto_3
    return v4

    .line 5249
    :cond_2
    iget v11, v12, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;->oneplusFlags:I

    .line 5251
    .local v11, "currentFlags":I
    if-eqz p4, :cond_3

    .line 5252
    or-int v14, v11, p3

    .line 5255
    .local v14, "newFlags":I
    :goto_4
    if-ne v11, v14, :cond_4

    .line 5256
    const/4 v4, 0x1

    goto :goto_3

    .line 5254
    .end local v14    # "newFlags":I
    :cond_3
    xor-int/lit8 v4, p3, -0x1

    and-int v14, v11, v4

    .restart local v14    # "newFlags":I
    goto :goto_4

    .line 5259
    :cond_4
    iput v14, v12, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;->oneplusFlags:I

    .line 5260
    invoke-static {v12}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->updateExtraMediaInfo(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;)I

    move-result v4

    if-lez v4, :cond_0

    .line 5261
    const/4 v15, 0x1

    goto :goto_0

    .line 5272
    .end local v11    # "currentFlags":I
    .end local v14    # "newFlags":I
    .restart local v13    # "mediaHolder":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 5273
    :cond_5
    const/4 v9, 0x0

    goto :goto_1

    .line 5285
    .restart local v9    # "media":Lcom/oneplus/gallery/media/Media;
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v5, "updateOnePlusFlags() - Update failed"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 5289
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v5, "updateOnePlusFlags() - Media is null"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 5293
    .end local v9    # "media":Lcom/oneplus/gallery/media/Media;
    .end local v13    # "mediaHolder":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v5, "updateOnePlusFlags() - No need to update"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public accessContentProvider(Landroid/net/Uri;Lcom/oneplus/gallery/media/MediaManager$ContentProviderAccessCallback;)Lcom/oneplus/base/Handle;
    .locals 5
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "callback"    # Lcom/oneplus/gallery/media/MediaManager$ContentProviderAccessCallback;

    .prologue
    const/4 v1, 0x0

    .line 1331
    if-nez p1, :cond_0

    .line 1333
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v3, "accessContentProvider() - No content URI"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 1360
    :goto_0
    return-object v0

    .line 1336
    :cond_0
    if-nez p2, :cond_1

    .line 1338
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v3, "accessContentProvider() - No call-back"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 1339
    goto :goto_0

    .line 1341
    :cond_1
    new-instance v0, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentProviderAccessHandle;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentProviderAccessHandle;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Landroid/net/Uri;Lcom/oneplus/gallery/media/MediaManager$ContentProviderAccessCallback;)V

    .line 1342
    .local v0, "handle":Lcom/oneplus/gallery/media/MediaManagerImpl$ContentProviderAccessHandle;
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->isContentThread()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1343
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->accessContentProvider(Lcom/oneplus/gallery/media/MediaManagerImpl$ContentProviderAccessHandle;)V

    goto :goto_0

    .line 1346
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_PendingContentProviderAccessHandles:Ljava/util/LinkedList;

    monitor-enter v2

    .line 1348
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_PendingContentProviderAccessHandles:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1349
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1350
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_Lock:Ljava/lang/Object;

    monitor-enter v2

    .line 1352
    :try_start_1
    invoke-direct {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->startContentThread()V

    .line 1353
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v4, 0x2710

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1355
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v4, "accessContentProvider() - Fail to send message to content thread"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    goto :goto_0

    .line 1349
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1358
    :cond_3
    :try_start_3
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public activate()Lcom/oneplus/base/Handle;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1396
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->verifyAccess()V

    .line 1399
    new-instance v0, Lcom/oneplus/gallery/media/MediaManagerImpl$10;

    const-string v3, "ActivateMediaManager"

    invoke-direct {v0, p0, v3}, Lcom/oneplus/gallery/media/MediaManagerImpl$10;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Ljava/lang/String;)V

    .line 1409
    .local v0, "handle":Lcom/oneplus/base/Handle;
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActivateHandles:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1410
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActivateHandles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 1412
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v4, "activate()"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    invoke-direct {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->startContentThread()V

    .line 1416
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v4, 0x2712

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1417
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v4, 0x276a

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1418
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v4, 0x2711

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1419
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v4, 0x2738

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1422
    new-instance v2, Lcom/oneplus/base/HandleSet;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/oneplus/base/Handle;

    invoke-direct {v2, v3}, Lcom/oneplus/base/HandleSet;-><init>([Lcom/oneplus/base/Handle;)V

    .line 1423
    .local v2, "handles":Lcom/oneplus/base/HandleSet;
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 1426
    .local v1, "handler":Landroid/os/Handler;
    sget-object v3, Lcom/oneplus/gallery/media/MediaManagerImpl;->MTP_URI_OBJECT:Landroid/net/Uri;

    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaContentChangeCB:Lcom/oneplus/gallery/media/MediaManager$ContentChangeCallback;

    invoke-virtual {p0, v3, v4, v1}, Lcom/oneplus/gallery/media/MediaManagerImpl;->registerContentChangedCallback(Landroid/net/Uri;Lcom/oneplus/gallery/media/MediaManager$ContentChangeCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 1427
    sget-object v3, Lcom/oneplus/gallery/media/MediaManagerImpl;->CONTENT_URI_IMAGE:Landroid/net/Uri;

    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaContentChangeCB:Lcom/oneplus/gallery/media/MediaManager$ContentChangeCallback;

    invoke-virtual {p0, v3, v4, v1}, Lcom/oneplus/gallery/media/MediaManagerImpl;->registerContentChangedCallback(Landroid/net/Uri;Lcom/oneplus/gallery/media/MediaManager$ContentChangeCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 1428
    sget-object v3, Lcom/oneplus/gallery/media/MediaManagerImpl;->CONTENT_URI_VIDEO:Landroid/net/Uri;

    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaContentChangeCB:Lcom/oneplus/gallery/media/MediaManager$ContentChangeCallback;

    invoke-virtual {p0, v3, v4, v1}, Lcom/oneplus/gallery/media/MediaManagerImpl;->registerContentChangedCallback(Landroid/net/Uri;Lcom/oneplus/gallery/media/MediaManager$ContentChangeCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 1429
    iput-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaContentChangeCBHandle:Lcom/oneplus/base/Handle;

    .line 1431
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_GalleryDataChangeListener:Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;

    invoke-static {v3}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->addExtraMediaChangedListener(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;)Lcom/oneplus/base/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ExtraMediaChangedListenerHandle:Lcom/oneplus/base/Handle;

    .line 1433
    sget-object v3, Lcom/oneplus/gallery/media/MediaManagerImpl;->PROP_IS_ACTIVE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/gallery/media/MediaManagerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1437
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "handles":Lcom/oneplus/base/HandleSet;
    :cond_0
    return-object v0
.end method

.method public addMediaToAlbum(JJ)Z
    .locals 7
    .param p1, "albumId"    # J
    .param p3, "mediaId"    # J

    .prologue
    const/4 v6, 0x1

    .line 1486
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->isContentThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1488
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v2, "addMediaToAlbum() - Album: "

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, ", media: "

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1489
    new-instance v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;-><init>(JJ)V

    invoke-static {v1}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->addAlbumMediaRelation(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;)V

    .line 1496
    :goto_0
    return v6

    .line 1493
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v2, 0x2762

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1494
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public addOnePlusFlags(JI)Z
    .locals 9
    .param p1, "mediaId"    # J
    .param p3, "flags"    # I

    .prologue
    const/4 v7, 0x1

    .line 1537
    const/4 v1, 0x0

    .line 1538
    .local v1, "success":Z
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->isContentThread()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1539
    invoke-direct {p0, p1, p2, p3, v7}, Lcom/oneplus/gallery/media/MediaManagerImpl;->updateOnePlusFlags(JIZ)Z

    move-result v1

    .line 1545
    :goto_0
    return v1

    .line 1542
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v3, 0x2756

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1543
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    goto :goto_0
.end method

.method public addOnePlusFlags(Landroid/net/Uri;I)Z
    .locals 7
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 1510
    const-wide/16 v2, -0x1

    .line 1513
    .local v2, "id":J
    :try_start_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1522
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 1524
    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addOnePlusFlags() - Cannot find correct id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    :goto_0
    return v1

    .line 1515
    :catch_0
    move-exception v0

    .line 1517
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addOnePlusFlags() - Fail to parse id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1529
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    invoke-virtual {p0, v2, v3, p2}, Lcom/oneplus/gallery/media/MediaManagerImpl;->addOnePlusFlags(JI)Z

    move-result v1

    goto :goto_0
.end method

.method public createAlbum(Ljava/lang/String;Lcom/oneplus/gallery/media/MediaType;)Z
    .locals 1
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "targetMediaType"    # Lcom/oneplus/gallery/media/MediaType;

    .prologue
    const/4 v0, 0x0

    .line 1865
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->createAlbum(Ljava/lang/String;Lcom/oneplus/gallery/media/MediaType;Lcom/oneplus/base/OperationCallback;Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public createAlbum(Ljava/lang/String;Lcom/oneplus/gallery/media/MediaType;Lcom/oneplus/base/OperationCallback;Landroid/os/Handler;)Z
    .locals 10
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "targetMediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oneplus/gallery/media/MediaType;",
            "Lcom/oneplus/base/OperationCallback",
            "<",
            "Ljava/lang/Object;",
            "Lcom/oneplus/gallery/media/MediaSet;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/os/Handler;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1870
    .local p3, "callback":Lcom/oneplus/base/OperationCallback;, "Lcom/oneplus/base/OperationCallback<Ljava/lang/Object;Lcom/oneplus/gallery/media/MediaSet;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->isContentThread()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1873
    const/4 v2, 0x0

    .line 1874
    .local v2, "callbackHelper":Lcom/oneplus/base/OperationCallbackHelper;, "Lcom/oneplus/base/OperationCallbackHelper<Ljava/lang/Object;Lcom/oneplus/gallery/media/MediaSet;Ljava/lang/Object;>;"
    if-eqz p3, :cond_0

    .line 1875
    new-instance v2, Lcom/oneplus/base/OperationCallbackHelper;

    .end local v2    # "callbackHelper":Lcom/oneplus/base/OperationCallbackHelper;, "Lcom/oneplus/base/OperationCallbackHelper<Ljava/lang/Object;Lcom/oneplus/gallery/media/MediaSet;Ljava/lang/Object;>;"
    invoke-direct {v2, p3, p4}, Lcom/oneplus/base/OperationCallbackHelper;-><init>(Lcom/oneplus/base/OperationCallback;Landroid/os/Handler;)V

    .line 1878
    .restart local v2    # "callbackHelper":Lcom/oneplus/base/OperationCallbackHelper;, "Lcom/oneplus/base/OperationCallbackHelper<Ljava/lang/Object;Lcom/oneplus/gallery/media/MediaSet;Ljava/lang/Object;>;"
    :cond_0
    if-eqz v2, :cond_1

    .line 1879
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/oneplus/base/OperationCallbackHelper;->callOnStarted(Ljava/lang/Object;)V

    .line 1882
    :cond_1
    new-instance v4, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;

    invoke-direct {v4, p1}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->addAlbumInfo(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;)J

    move-result-wide v0

    .line 1883
    .local v0, "albumId":J
    invoke-static {v0, v1}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->getAlbumInfo(J)Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;

    move-result-object v3

    .line 1886
    .local v3, "newAlbumInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x2729

    const/16 v6, 0x8

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    iget-wide v8, v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;->dateAdded:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-wide v8, v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;->dateModified:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    iget-wide v8, v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;->dateMediaAdded:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    aput-object p2, v6, v7

    const/4 v7, 0x6

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x7

    aput-object v2, v6, v7

    invoke-static {v4, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1890
    .end local v0    # "albumId":J
    .end local v2    # "callbackHelper":Lcom/oneplus/base/OperationCallbackHelper;, "Lcom/oneplus/base/OperationCallbackHelper<Ljava/lang/Object;Lcom/oneplus/gallery/media/MediaSet;Ljava/lang/Object;>;"
    .end local v3    # "newAlbumInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 1889
    :cond_2
    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v5, 0x2760

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x2

    aput-object p3, v6, v7

    const/4 v7, 0x3

    aput-object p4, v6, v7

    invoke-static {v4, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public createMediaSetList(Lcom/oneplus/gallery/media/MediaType;I)Lcom/oneplus/gallery/media/MediaSetList;
    .locals 18
    .param p1, "targetMediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p2, "flags"    # I

    .prologue
    .line 1901
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->verifyAccess()V

    .line 1904
    sget-object v15, Lcom/oneplus/gallery/media/MediaType;->UNKNOWN:Lcom/oneplus/gallery/media/MediaType;

    move-object/from16 v0, p1

    if-ne v0, v15, :cond_1

    .line 1906
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "createMediaSetList() - Unsupported media type : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1907
    const/4 v13, 0x0

    .line 2032
    :cond_0
    :goto_0
    return-object v13

    .line 1911
    :cond_1
    new-instance v13, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v13, v0, v1}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/MediaType;)V

    .line 1912
    .local v13, "list":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveMediaSetLists:Ljava/util/List;

    new-instance v16, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v16

    invoke-direct {v0, v13}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1913
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v16, "createMediaSetList() - Active list count : "

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveMediaSetLists:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static/range {v15 .. v17}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1916
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_CameraRollMediaSets:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery/media/CameraRollMediaSet;

    .line 1917
    .local v5, "cameraRollSet":Lcom/oneplus/gallery/media/CameraRollMediaSet;
    if-nez v5, :cond_2

    .line 1919
    new-instance v5, Lcom/oneplus/gallery/media/CameraRollMediaSet;

    .end local v5    # "cameraRollSet":Lcom/oneplus/gallery/media/CameraRollMediaSet;
    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/oneplus/gallery/media/CameraRollMediaSet;-><init>(Lcom/oneplus/gallery/media/MediaType;)V

    .line 1920
    .restart local v5    # "cameraRollSet":Lcom/oneplus/gallery/media/CameraRollMediaSet;
    sget-object v15, Lcom/oneplus/gallery/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_SysMediaSetMediaCountChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Lcom/oneplus/gallery/media/CameraRollMediaSet;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1921
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_CameraRollMediaSets:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1923
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_SelfieMediaSets:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/oneplus/gallery/media/SelfieMediaSet;

    .line 1924
    .local v14, "selfieSet":Lcom/oneplus/gallery/media/SelfieMediaSet;
    if-nez v14, :cond_3

    .line 1926
    new-instance v14, Lcom/oneplus/gallery/media/SelfieMediaSet;

    .end local v14    # "selfieSet":Lcom/oneplus/gallery/media/SelfieMediaSet;
    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Lcom/oneplus/gallery/media/SelfieMediaSet;-><init>(Lcom/oneplus/gallery/media/MediaType;)V

    .line 1927
    .restart local v14    # "selfieSet":Lcom/oneplus/gallery/media/SelfieMediaSet;
    sget-object v15, Lcom/oneplus/gallery/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_SysMediaSetMediaCountChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/oneplus/gallery/media/SelfieMediaSet;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1928
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_SelfieMediaSets:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1930
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_FavoriteMediaSets:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/gallery/media/FavoriteMediaSet;

    .line 1931
    .local v9, "favoriteSet":Lcom/oneplus/gallery/media/FavoriteMediaSet;
    if-nez v9, :cond_4

    .line 1933
    new-instance v9, Lcom/oneplus/gallery/media/FavoriteMediaSet;

    .end local v9    # "favoriteSet":Lcom/oneplus/gallery/media/FavoriteMediaSet;
    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lcom/oneplus/gallery/media/FavoriteMediaSet;-><init>(Lcom/oneplus/gallery/media/MediaType;)V

    .line 1934
    .restart local v9    # "favoriteSet":Lcom/oneplus/gallery/media/FavoriteMediaSet;
    sget-object v15, Lcom/oneplus/gallery/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_SysMediaSetMediaCountChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Lcom/oneplus/gallery/media/FavoriteMediaSet;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1935
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_FavoriteMediaSets:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1937
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ScreenshotMediaSet:Lcom/oneplus/gallery/media/ScreenshotMediaSet;

    if-nez v15, :cond_5

    .line 1939
    new-instance v15, Lcom/oneplus/gallery/media/ScreenshotMediaSet;

    invoke-direct {v15}, Lcom/oneplus/gallery/media/ScreenshotMediaSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ScreenshotMediaSet:Lcom/oneplus/gallery/media/ScreenshotMediaSet;

    .line 1940
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ScreenshotMediaSet:Lcom/oneplus/gallery/media/ScreenshotMediaSet;

    sget-object v16, Lcom/oneplus/gallery/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_SysMediaSetMediaCountChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lcom/oneplus/gallery/media/ScreenshotMediaSet;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1942
    :cond_5
    const/4 v12, 0x0

    .line 1943
    .local v12, "isListReady":Z
    invoke-static {v5}, Lcom/oneplus/gallery/media/MediaSetUtils;->containsMedia(Lcom/oneplus/gallery/media/MediaSet;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 1944
    invoke-virtual {v13, v5}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->addMediaSet(Lcom/oneplus/gallery/media/MediaSet;)V

    .line 1950
    :cond_6
    :goto_1
    invoke-static {v14}, Lcom/oneplus/gallery/media/MediaSetUtils;->containsMedia(Lcom/oneplus/gallery/media/MediaSet;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 1951
    invoke-virtual {v13, v14}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->addMediaSet(Lcom/oneplus/gallery/media/MediaSet;)V

    .line 1954
    :cond_7
    :goto_2
    invoke-static {v9}, Lcom/oneplus/gallery/media/MediaSetUtils;->containsMedia(Lcom/oneplus/gallery/media/MediaSet;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 1955
    invoke-virtual {v13, v9}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->addMediaSet(Lcom/oneplus/gallery/media/MediaSet;)V

    .line 1958
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ScreenshotMediaSet:Lcom/oneplus/gallery/media/ScreenshotMediaSet;

    invoke-static {v15}, Lcom/oneplus/gallery/media/MediaSetUtils;->containsMedia(Lcom/oneplus/gallery/media/MediaSet;)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 1959
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ScreenshotMediaSet:Lcom/oneplus/gallery/media/ScreenshotMediaSet;

    invoke-virtual {v13, v15}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->addMediaSet(Lcom/oneplus/gallery/media/MediaSet;)V

    .line 1963
    :cond_9
    :goto_4
    and-int/lit8 v15, p2, 0x8

    if-eqz v15, :cond_b

    .line 1965
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_AllMediaMediaSets:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery/media/AllMediaMediaSet;

    .line 1966
    .local v4, "allMediaSet":Lcom/oneplus/gallery/media/AllMediaMediaSet;
    if-nez v4, :cond_a

    .line 1968
    new-instance v4, Lcom/oneplus/gallery/media/AllMediaMediaSet;

    .end local v4    # "allMediaSet":Lcom/oneplus/gallery/media/AllMediaMediaSet;
    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/oneplus/gallery/media/AllMediaMediaSet;-><init>(Lcom/oneplus/gallery/media/MediaType;)V

    .line 1969
    .restart local v4    # "allMediaSet":Lcom/oneplus/gallery/media/AllMediaMediaSet;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_AllMediaMediaSets:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1972
    :cond_a
    invoke-virtual {v13, v4}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->addMediaSet(Lcom/oneplus/gallery/media/MediaSet;)V

    .line 1976
    .end local v4    # "allMediaSet":Lcom/oneplus/gallery/media/AllMediaMediaSet;
    :cond_b
    const/4 v11, 0x1

    .line 1977
    .local v11, "isFirstList":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveMediaSetLists:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    add-int/lit8 v10, v15, -0x1

    .local v10, "i":I
    :goto_5
    if-ltz v10, :cond_12

    .line 1979
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveMediaSetLists:Ljava/util/List;

    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/ref/WeakReference;

    invoke-virtual {v15}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;

    .line 1980
    .local v6, "candList":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;
    if-eq v6, v13, :cond_c

    .line 1982
    if-nez v6, :cond_11

    .line 1983
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveMediaSetLists:Ljava/util/List;

    invoke-interface {v15, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1977
    :cond_c
    add-int/lit8 v10, v10, -0x1

    goto :goto_5

    .line 1945
    .end local v6    # "candList":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;
    .end local v10    # "i":I
    .end local v11    # "isFirstList":Z
    :cond_d
    sget-object v15, Lcom/oneplus/gallery/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v5, v15}, Lcom/oneplus/gallery/media/CameraRollMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_6

    .line 1947
    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->notifyCameraRollVisibility(Z)V

    .line 1948
    const/4 v12, 0x1

    goto :goto_1

    .line 1952
    :cond_e
    sget-object v15, Lcom/oneplus/gallery/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v14, v15}, Lcom/oneplus/gallery/media/SelfieMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_7

    .line 1953
    const/4 v12, 0x1

    goto/16 :goto_2

    .line 1956
    :cond_f
    sget-object v15, Lcom/oneplus/gallery/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v9, v15}, Lcom/oneplus/gallery/media/FavoriteMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_8

    .line 1957
    const/4 v12, 0x1

    goto/16 :goto_3

    .line 1960
    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ScreenshotMediaSet:Lcom/oneplus/gallery/media/ScreenshotMediaSet;

    sget-object v16, Lcom/oneplus/gallery/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual/range {v15 .. v16}, Lcom/oneplus/gallery/media/ScreenshotMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_9

    .line 1961
    const/4 v12, 0x1

    goto/16 :goto_4

    .line 1984
    .restart local v6    # "candList":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;
    .restart local v10    # "i":I
    .restart local v11    # "isFirstList":Z
    :cond_11
    invoke-virtual {v6}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->getTargetMediaType()Lcom/oneplus/gallery/media/MediaType;

    move-result-object v15

    move-object/from16 v0, p1

    if-ne v15, v0, :cond_c

    .line 1986
    const/4 v11, 0x0

    .line 1993
    .end local v6    # "candList":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;
    :cond_12
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_DirectoryMediaSetTables:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/LongSparseArray;

    .line 1994
    .local v8, "dirSetTable":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/oneplus/gallery/media/DirectoryMediaSet;>;"
    if-nez v8, :cond_13

    .line 1996
    new-instance v8, Landroid/util/LongSparseArray;

    .end local v8    # "dirSetTable":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/oneplus/gallery/media/DirectoryMediaSet;>;"
    invoke-direct {v8}, Landroid/util/LongSparseArray;-><init>()V

    .line 1997
    .restart local v8    # "dirSetTable":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/oneplus/gallery/media/DirectoryMediaSet;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_DirectoryMediaSetTables:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1999
    :cond_13
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_AlbumMediaSetTables:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/LongSparseArray;

    .line 2000
    .local v3, "albumSetTable":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/oneplus/gallery/media/AlbumMediaSet;>;"
    if-nez v3, :cond_14

    .line 2002
    new-instance v3, Landroid/util/LongSparseArray;

    .end local v3    # "albumSetTable":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/oneplus/gallery/media/AlbumMediaSet;>;"
    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    .line 2003
    .restart local v3    # "albumSetTable":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/oneplus/gallery/media/AlbumMediaSet;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_AlbumMediaSetTables:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2005
    :cond_14
    if-eqz v11, :cond_15

    .line 2007
    invoke-direct/range {p0 .. p1}, Lcom/oneplus/gallery/media/MediaManagerImpl;->refreshDirectoryMediaSets(Lcom/oneplus/gallery/media/MediaType;)V

    .line 2008
    invoke-direct/range {p0 .. p1}, Lcom/oneplus/gallery/media/MediaManagerImpl;->refreshAlbumMediaSets(Lcom/oneplus/gallery/media/MediaType;)V

    .line 2028
    :goto_6
    if-eqz v12, :cond_0

    .line 2029
    invoke-virtual {v13}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->ready()V

    goto/16 :goto_0

    .line 2012
    :cond_15
    invoke-virtual {v8}, Landroid/util/LongSparseArray;->size()I

    move-result v15

    add-int/lit8 v10, v15, -0x1

    :goto_7
    if-ltz v10, :cond_17

    .line 2014
    invoke-virtual {v8, v10}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/gallery/media/DirectoryMediaSet;

    .line 2015
    .local v7, "dirSet":Lcom/oneplus/gallery/media/DirectoryMediaSet;
    if-eqz v7, :cond_16

    .line 2016
    invoke-virtual {v13, v7}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->addMediaSet(Lcom/oneplus/gallery/media/MediaSet;)V

    .line 2012
    :cond_16
    add-int/lit8 v10, v10, -0x1

    goto :goto_7

    .line 2018
    .end local v7    # "dirSet":Lcom/oneplus/gallery/media/DirectoryMediaSet;
    :cond_17
    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v15

    add-int/lit8 v10, v15, -0x1

    :goto_8
    if-ltz v10, :cond_19

    .line 2020
    invoke-virtual {v3, v10}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery/media/AlbumMediaSet;

    .line 2021
    .local v2, "albumSet":Lcom/oneplus/gallery/media/AlbumMediaSet;
    if-eqz v2, :cond_18

    .line 2022
    invoke-virtual {v13, v2}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->addMediaSet(Lcom/oneplus/gallery/media/MediaSet;)V

    .line 2018
    :cond_18
    add-int/lit8 v10, v10, -0x1

    goto :goto_8

    .line 2024
    .end local v2    # "albumSet":Lcom/oneplus/gallery/media/AlbumMediaSet;
    :cond_19
    const/4 v12, 0x1

    goto :goto_6
.end method

.method public deleteAlbum(J)Z
    .locals 3
    .param p1, "albumId"    # J

    .prologue
    .line 2073
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->isContentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2075
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "deleteAlbum() - ID : "

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2076
    invoke-static {p1, p2}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->removeAlbumInfo(J)I

    .line 2077
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x272a

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2081
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 2080
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x2761

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public deleteMedia(JLcom/oneplus/gallery/media/MediaDeletionCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;
    .locals 7
    .param p1, "mediaId"    # J
    .param p3, "callback"    # Lcom/oneplus/gallery/media/MediaDeletionCallback;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "flags"    # I

    .prologue
    .line 2116
    new-instance v1, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;-><init>(JLcom/oneplus/gallery/media/MediaDeletionCallback;Landroid/os/Handler;I)V

    .line 2117
    .local v1, "handle":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_1

    .line 2119
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaRecyclingHandles:Ljava/util/Map;

    monitor-enter v3

    .line 2121
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaRecyclingHandles:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaRecyclingHandle;

    .line 2122
    .local v0, "recyclingHandle":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaRecyclingHandle;
    if-eqz v0, :cond_0

    .line 2123
    invoke-virtual {v0}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaRecyclingHandle;->complete()V

    .line 2124
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2126
    .end local v0    # "recyclingHandle":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaRecyclingHandle;
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->isContentThread()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2127
    invoke-direct {p0, v1}, Lcom/oneplus/gallery/media/MediaManagerImpl;->deleteMedia(Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;)V

    .line 2133
    :goto_0
    return-object v1

    .line 2124
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2130
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->startContentThread()V

    .line 2131
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v3, 0x274c

    invoke-static {v2, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public deleteMedia(Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/media/MediaDeletionCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;
    .locals 6
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p2, "callback"    # Lcom/oneplus/gallery/media/MediaDeletionCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "flags"    # I

    .prologue
    .line 2089
    if-nez p1, :cond_0

    .line 2091
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v3, "deleteMedia() - No media to delete"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2092
    const/4 v0, 0x0

    .line 2111
    :goto_0
    return-object v0

    .line 2094
    :cond_0
    new-instance v0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;-><init>(Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/media/MediaDeletionCallback;Landroid/os/Handler;I)V

    .line 2095
    .local v0, "handle":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;
    iget-wide v2, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;->mediaId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 2097
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaRecyclingHandles:Ljava/util/Map;

    monitor-enter v3

    .line 2099
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaRecyclingHandles:Ljava/util/Map;

    iget-wide v4, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;->mediaId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaRecyclingHandle;

    .line 2100
    .local v1, "recyclingHandle":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaRecyclingHandle;
    if-eqz v1, :cond_1

    .line 2101
    invoke-virtual {v1}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaRecyclingHandle;->complete()V

    .line 2102
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2104
    .end local v1    # "recyclingHandle":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaRecyclingHandle;
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->isContentThread()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2105
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->deleteMedia(Lcom/oneplus/gallery/media/MediaManagerImpl$MediaDeletionHandle;)V

    goto :goto_0

    .line 2102
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2108
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->startContentThread()V

    .line 2109
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v3, 0x274c

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public dumpGroupMediaTable(Ljava/lang/String;)V
    .locals 14
    .param p1, "subTag"    # Ljava/lang/String;

    .prologue
    .line 2306
    iget-object v10, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dumpGroupMediaTable() - Dump group media table from ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "][Start]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2307
    iget-object v10, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_GroupMediaTable:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2309
    .local v5, "key":Ljava/lang/String;
    iget-object v10, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v11, "dumpGroupMediaTable() - Group id: "

    invoke-static {v10, v11, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2310
    iget-object v10, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_GroupMediaTable:Ljava/util/HashMap;

    invoke-virtual {v10, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/GroupMedia;

    .line 2311
    .local v0, "groupMedia":Lcom/oneplus/gallery/media/GroupMedia;
    invoke-interface {v0}, Lcom/oneplus/gallery/media/GroupMedia;->getSubMedia()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/gallery/media/Media;

    .line 2313
    .local v7, "value":Lcom/oneplus/gallery/media/Media;
    const-string v6, ""

    .line 2314
    .local v6, "suffix":Ljava/lang/String;
    invoke-interface {v0}, Lcom/oneplus/gallery/media/GroupMedia;->getCoverMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v10

    if-ne v10, v7, :cond_1

    .line 2315
    const-string v6, "Cover"

    .line 2316
    :cond_1
    iget-object v10, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v11, "dumpGroupMediaTable() - Name: "

    invoke-interface {v7}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v12

    const-string v13, " "

    invoke-static {v10, v11, v12, v13, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 2319
    .end local v0    # "groupMedia":Lcom/oneplus/gallery/media/GroupMedia;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "suffix":Ljava/lang/String;
    .end local v7    # "value":Lcom/oneplus/gallery/media/Media;
    :cond_2
    iget-object v10, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dumpGroupMediaTable() - Dump group media table from ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "][End]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2321
    iget-object v10, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dumpGroupMediaTable() - Dump active group media table from ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "][Start]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2322
    iget-object v10, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveGroupMediaLists:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2324
    .restart local v5    # "key":Ljava/lang/String;
    iget-object v10, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v11, "dumpGroupMediaTable() - Group id: "

    invoke-static {v10, v11, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2325
    const/4 v1, 0x0

    .line 2326
    .local v1, "i":I
    iget-object v10, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveGroupMediaLists:Ljava/util/HashMap;

    invoke-virtual {v10, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/WeakReference;

    .line 2328
    .local v8, "value":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/oneplus/gallery/media/MediaManagerImpl$GroupMediaListImpl;>;"
    iget-object v10, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v11, "dumpGroupMediaTable() - List "

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2329
    iget-object v10, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_GroupMediaTable:Ljava/util/HashMap;

    invoke-virtual {v10, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/GroupMedia;

    .line 2330
    .restart local v0    # "groupMedia":Lcom/oneplus/gallery/media/GroupMedia;
    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/gallery/media/MediaManagerImpl$GroupMediaListImpl;

    invoke-virtual {v10}, Lcom/oneplus/gallery/media/MediaManagerImpl$GroupMediaListImpl;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/gallery/media/Media;

    .line 2332
    .local v9, "value2":Lcom/oneplus/gallery/media/Media;
    const-string v6, ""

    .line 2333
    .restart local v6    # "suffix":Ljava/lang/String;
    invoke-interface {v0}, Lcom/oneplus/gallery/media/GroupMedia;->getCoverMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v10

    if-ne v10, v9, :cond_5

    .line 2334
    const-string v6, "Cover"

    .line 2335
    :cond_5
    iget-object v10, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v11, "dumpGroupMediaTable() - Name: "

    invoke-interface {v9}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v12

    const-string v13, " "

    invoke-static {v10, v11, v12, v13, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 2339
    .end local v0    # "groupMedia":Lcom/oneplus/gallery/media/GroupMedia;
    .end local v1    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "suffix":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/oneplus/gallery/media/MediaManagerImpl$GroupMediaListImpl;>;"
    .end local v9    # "value2":Lcom/oneplus/gallery/media/Media;
    :cond_6
    iget-object v10, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dumpGroupMediaTable() - Dump active group media table from ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "][End]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2340
    return-void
.end method

.method public getAlbumInfos()[Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;
    .locals 1

    .prologue
    .line 2364
    invoke-static {}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->getAlbumInfos()[Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;

    move-result-object v0

    return-object v0
.end method

.method public getHiddenDirectoryPaths(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2372
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 2373
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_HiddenDirectoryPaths:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2374
    :cond_0
    return-void
.end method

.method public getMediaIds(Lcom/oneplus/gallery/media/MediaType;)Ljava/lang/Iterable;
    .locals 1
    .param p1, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery/media/MediaType;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2381
    new-instance v0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaIdIterable;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaIdIterable;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/MediaType;)V

    return-object v0
.end method

.method public getRecycledMedia()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/media/Media;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2387
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2388
    .local v2, "recycledMediaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/gallery/media/Media;>;"
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaRecyclingHandles:Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 2390
    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaRecyclingHandles:Ljava/util/Map;

    monitor-enter v4

    .line 2392
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaRecyclingHandles:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 2394
    .local v1, "id":Ljava/lang/Long;
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaRecyclingHandles:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaRecyclingHandle;

    iget-object v3, v3, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaRecyclingHandle;->media:Lcom/oneplus/gallery/media/Media;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2396
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "id":Ljava/lang/Long;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2398
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v2
.end method

.method public getSpecialDirectoryPaths(Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;Ljava/util/List;)V
    .locals 7
    .param p1, "type"    # Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2405
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2453
    :cond_0
    :goto_0
    return-void

    .line 2407
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->checkStorages()V

    .line 2408
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_SpecialDirectoryPaths:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2409
    .local v0, "cachedResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lcom/oneplus/gallery/media/MediaManagerImpl$37;->$SwitchMap$com$oneplus$gallery$media$OPMediaManager$SpecialDirectoryType:[I

    invoke-virtual {p1}, Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 2412
    :pswitch_0
    if-nez v0, :cond_2

    .line 2414
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "cachedResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2415
    .restart local v0    # "cachedResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-array v2, v6, [Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "Android"

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/oneplus/io/Path;->combine([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2416
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_SpecialDirectoryPaths:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2418
    :cond_2
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2422
    :pswitch_1
    if-nez v0, :cond_3

    .line 2424
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "cachedResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2425
    .restart local v0    # "cachedResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2426
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_SpecialDirectoryPaths:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2428
    :cond_3
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2429
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_SDCardPaths:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_0

    .line 2430
    new-array v3, v6, [Ljava/lang/String;

    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_SDCardPaths:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v3, v4

    const-string v2, "DCIM"

    aput-object v2, v3, v5

    invoke-static {v3}, Lcom/oneplus/io/Path;->combine([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2429
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2434
    .end local v1    # "i":I
    :pswitch_2
    if-nez v0, :cond_4

    .line 2436
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "cachedResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2437
    .restart local v0    # "cachedResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2438
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_SpecialDirectoryPaths:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2440
    :cond_4
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2444
    :pswitch_3
    if-nez v0, :cond_5

    .line 2446
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "cachedResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2447
    .restart local v0    # "cachedResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-array v2, v6, [Ljava/lang/String;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "Screenshots"

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/oneplus/io/Path;->combine([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2448
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_SpecialDirectoryPaths:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2450
    :cond_5
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2409
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2565
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 2608
    :pswitch_0
    invoke-super/range {p0 .. p1}, Lcom/oneplus/base/component/BasicComponent;->handleMessage(Landroid/os/Message;)V

    .line 2611
    :goto_0
    return-void

    .line 2569
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object/from16 v16, v2

    check-cast v16, [Ljava/lang/Object;

    .line 2570
    .local v16, "objs":[Ljava/lang/Object;
    const/4 v2, 0x0

    aget-object v2, v16, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v2, 0x1

    aget-object v5, v16, v2

    check-cast v5, Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v2, v16, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v2, 0x3

    aget-object v2, v16, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v2, 0x4

    aget-object v2, v16, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v2, 0x5

    aget-object v12, v16, v2

    check-cast v12, Lcom/oneplus/gallery/media/MediaType;

    const/4 v2, 0x6

    aget-object v2, v16, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    const/4 v2, 0x7

    aget-object v14, v16, v2

    check-cast v14, Lcom/oneplus/base/OperationCallbackHelper;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v14}, Lcom/oneplus/gallery/media/MediaManagerImpl;->onAlbumMediaSetCreated(JLjava/lang/String;JJJLcom/oneplus/gallery/media/MediaType;ZLcom/oneplus/base/OperationCallbackHelper;)V

    goto :goto_0

    .line 2575
    .end local v16    # "objs":[Ljava/lang/Object;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/oneplus/gallery/media/MediaManagerImpl;->onAlbumMediaSetDeleted(J)V

    goto :goto_0

    .line 2580
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object v15, v2

    check-cast v15, [Ljava/lang/Object;

    .line 2581
    .local v15, "args":[Ljava/lang/Object;
    const/4 v2, 0x0

    aget-object v2, v15, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v2, 0x1

    aget-object v6, v15, v2

    check-cast v6, Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v7, v15, v2

    check-cast v7, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;

    const/4 v2, 0x3

    aget-object v8, v15, v2

    check-cast v8, Lcom/oneplus/gallery/media/MediaType;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/oneplus/gallery/media/MediaManagerImpl;->onDirectoryMediaSetCreated(JLjava/lang/String;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;Lcom/oneplus/gallery/media/MediaType;)V

    goto/16 :goto_0

    .line 2587
    .end local v15    # "args":[Ljava/lang/Object;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object v15, v2

    check-cast v15, [Ljava/lang/Object;

    .line 2588
    .restart local v15    # "args":[Ljava/lang/Object;
    const/4 v2, 0x0

    aget-object v2, v15, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/oneplus/gallery/media/MediaManagerImpl;->onDirectoryMediaSetDeleted(J)V

    goto/16 :goto_0

    .line 2594
    .end local v15    # "args":[Ljava/lang/Object;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object v15, v2

    check-cast v15, [Ljava/lang/Object;

    .line 2595
    .restart local v15    # "args":[Ljava/lang/Object;
    const/4 v2, 0x0

    aget-object v2, v15, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/oneplus/gallery/media/MediaManagerImpl;->onDirectoryMediaSetRenamed(J)V

    goto/16 :goto_0

    .line 2600
    .end local v15    # "args":[Ljava/lang/Object;
    :pswitch_6
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->handleScheduledUIMessages()V

    goto/16 :goto_0

    .line 2604
    :pswitch_7
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->refreshMediaSetLists()V

    goto/16 :goto_0

    .line 2565
    nop

    :pswitch_data_0
    .packed-switch 0x2724
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public insertToMediaStore(Ljava/lang/String;Landroid/content/ContentValues;Lcom/oneplus/base/Ref;I)Landroid/net/Uri;
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "prepareValues"    # Landroid/content/ContentValues;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            "Lcom/oneplus/base/Ref",
            "<",
            "Lcom/oneplus/gallery/media/Media;",
            ">;I)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .local p3, "createdMedia":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Lcom/oneplus/gallery/media/Media;>;"
    const/4 v0, 0x0

    .line 2800
    if-nez p1, :cond_0

    .line 2802
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v2, "insertToMediaStore() - No file path"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2812
    :goto_0
    return-object v0

    .line 2807
    :cond_0
    invoke-static {p1}, Lcom/oneplus/io/FileUtils;->isImageFilePath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2808
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/gallery/media/MediaManagerImpl;->insertImageToMediaStore(Ljava/lang/String;Landroid/content/ContentValues;Lcom/oneplus/base/Ref;I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 2811
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertToMediaStore() - Unknown file path : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isContentThread()Z
    .locals 2

    .prologue
    .line 2824
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThread:Landroid/os/HandlerThread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFavorite(J)Z
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 2835
    invoke-static {p1, p2}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->getExtraMediaInfo(J)Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;

    move-result-object v0

    .line 2836
    .local v0, "extraInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;->oneplusFlags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    .line 2837
    const/4 v1, 0x1

    .line 2838
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isGroupCover(J)Z
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 2849
    invoke-static {p1, p2}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->getExtraMediaInfo(J)Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;

    move-result-object v0

    .line 2850
    .local v0, "extraInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;->oneplusFlags:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 2851
    const/4 v1, 0x1

    .line 2852
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isHiddenPath(Ljava/lang/String;)Z
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 2889
    if-eqz p1, :cond_2

    .line 2891
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_HiddenDirectoryPaths:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 2893
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_HiddenDirectoryPaths:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2894
    .local v0, "dirPath":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2895
    :cond_0
    const/4 v2, 0x1

    .line 2898
    .end local v0    # "dirPath":Ljava/lang/String;
    .end local v1    # "i":I
    :goto_1
    return v2

    .line 2891
    .restart local v0    # "dirPath":Ljava/lang/String;
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2898
    .end local v0    # "dirPath":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isMediaRecycled(J)Z
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 2906
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 2908
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaRecyclingHandles:Ljava/util/Map;

    monitor-enter v1

    .line 2910
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaRecyclingHandles:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    .line 2913
    :goto_0
    return v0

    .line 2911
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2913
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterateMediaId(Lcom/oneplus/gallery/media/MediaType;)Lcom/oneplus/gallery/media/OPMediaManager$MediaIdIterator;
    .locals 1
    .param p1, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;

    .prologue
    .line 2947
    new-instance v0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaIdIteratorImpl;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaIdIteratorImpl;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/MediaType;)V

    return-object v0
.end method

.method public iterateMediaIdInAlbum(JLcom/oneplus/gallery/media/MediaType;)Lcom/oneplus/gallery/media/OPMediaManager$MediaIdIterator;
    .locals 7
    .param p1, "albumId"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;

    .prologue
    .line 2955
    invoke-static {p1, p2}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->getRelatedMediaIds(J)[J

    move-result-object v2

    .line 2956
    .local v2, "relatedIds":[J
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 2957
    .local v1, "mediaIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    array-length v3, v2

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2958
    aget-wide v4, v2, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2957
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2959
    :cond_0
    new-instance v3, Lcom/oneplus/gallery/media/MediaManagerImpl$16;

    invoke-direct {v3, p0, p3, v1}, Lcom/oneplus/gallery/media/MediaManagerImpl$16;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/MediaType;Ljava/util/HashSet;)V

    return-object v3
.end method

.method public notifyContentChanged(Landroid/net/Uri;)V
    .locals 2
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 2978
    if-nez p1, :cond_0

    .line 2980
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "notifyContentChanged() - No content URI"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2993
    :goto_0
    return-void

    .line 2984
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "notifyContentChanged() - Content URI : "

    invoke-static {v0, v1, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2986
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->isContentThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2987
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/media/MediaManagerImpl;->notifyContentChangedDirectly(Landroid/net/Uri;)V

    goto :goto_0

    .line 2990
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->startContentThread()V

    .line 2991
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x2739

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public notifyGroupMediaDeleted(Ljava/lang/String;I)V
    .locals 2
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 3017
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_GroupMediaTable:Ljava/util/HashMap;

    monitor-enter v1

    .line 3019
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/media/MediaManagerImpl;->removeFromGroupMediaTable(Ljava/lang/String;I)V

    .line 3020
    monitor-exit v1

    .line 3021
    return-void

    .line 3020
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyMediaDeleted(JI)V
    .locals 1
    .param p1, "mediaId"    # J
    .param p3, "flags"    # I

    .prologue
    .line 3028
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery/media/MediaManagerImpl;->removeFromMediaTable(JI)Lcom/oneplus/gallery/media/Media;

    .line 3029
    return-void
.end method

.method public notifyMediaSetDeleted(Lcom/oneplus/gallery/media/MediaSet;)V
    .locals 4
    .param p1, "mediaSet"    # Lcom/oneplus/gallery/media/MediaSet;

    .prologue
    .line 3036
    if-nez p1, :cond_1

    .line 3038
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v3, "notifyMediaSetDeleted() - mediaSet is null"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3054
    :cond_0
    :goto_0
    return-void

    .line 3042
    :cond_1
    invoke-interface {p1}, Lcom/oneplus/gallery/media/MediaSet;->getType()Lcom/oneplus/gallery/media/MediaSet$Type;

    move-result-object v2

    sget-object v3, Lcom/oneplus/gallery/media/MediaSet$Type;->SYSTEM:Lcom/oneplus/gallery/media/MediaSet$Type;

    if-eq v2, v3, :cond_0

    .line 3044
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveMediaSetLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 3046
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveMediaSetLists:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;

    .line 3047
    .local v1, "list":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;
    if-eqz v1, :cond_2

    .line 3048
    invoke-virtual {v1, p1}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->removeMediaSet(Lcom/oneplus/gallery/media/MediaSet;)Z

    .line 3044
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 3050
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveMediaSetLists:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 3052
    .end local v1    # "list":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;
    :cond_3
    invoke-interface {p1}, Lcom/oneplus/gallery/media/MediaSet;->release()V

    goto :goto_0
.end method

.method public obtainGroupMedia(Lcom/oneplus/gallery/media/Media;)Lcom/oneplus/gallery/media/GroupMedia;
    .locals 7
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 3083
    instance-of v1, p1, Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;

    if-nez v1, :cond_0

    .line 3084
    const/4 v1, 0x0

    .line 3088
    :goto_0
    return-object v1

    :cond_0
    move-object v0, p1

    .line 3087
    check-cast v0, Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;

    .line 3088
    .local v0, "photoMedia":Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;
    invoke-virtual {v0}, Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;->getId()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;->getParentId()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;->getFilePath()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/gallery/media/MediaManagerImpl;->obtainGroupMedia(JJLjava/lang/String;)Lcom/oneplus/gallery/media/GroupMedia;

    move-result-object v1

    goto :goto_0
.end method

.method public obtainGroupMedia(Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;)Lcom/oneplus/gallery/media/GroupMedia;
    .locals 7
    .param p1, "mediaInfo"    # Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;

    .prologue
    .line 3066
    iget-object v0, p1, Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;->mediaType:Lcom/oneplus/gallery/media/MediaType;

    sget-object v1, Lcom/oneplus/gallery/media/MediaType;->PHOTO:Lcom/oneplus/gallery/media/MediaType;

    if-eq v0, v1, :cond_0

    .line 3067
    const/4 v0, 0x0

    .line 3070
    :goto_0
    return-object v0

    :cond_0
    iget-wide v2, p1, Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;->id:J

    iget-wide v4, p1, Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;->parentId:J

    iget-object v6, p1, Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;->filePath:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/gallery/media/MediaManagerImpl;->obtainGroupMedia(JJLjava/lang/String;)Lcom/oneplus/gallery/media/GroupMedia;

    move-result-object v0

    goto :goto_0
.end method

.method public obtainMedia(JLcom/oneplus/gallery/media/MediaObtainCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;
    .locals 9
    .param p1, "id"    # J
    .param p3, "callback"    # Lcom/oneplus/gallery/media/MediaObtainCallback;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 3159
    if-nez p3, :cond_1

    .line 3161
    iget-object v5, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v6, "obtainMedia() - No call-back"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v4

    .line 3232
    :cond_0
    :goto_0
    return-object v2

    .line 3166
    :cond_1
    new-instance v2, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;

    invoke-direct {v2, p0, p3, p4}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/MediaObtainCallback;Landroid/os/Handler;)V

    .line 3169
    .local v2, "obtainHandle":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;
    and-int/lit16 v5, p5, 0x100

    if-nez v5, :cond_3

    .line 3172
    iget-object v5, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaTable:Ljava/util/Map;

    monitor-enter v5

    .line 3174
    :try_start_0
    iget-object v6, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaTable:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;

    .line 3175
    .local v0, "holder":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;->media:Lcom/oneplus/gallery/media/Media;

    .line 3176
    .local v1, "media":Lcom/oneplus/gallery/media/Media;
    :goto_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3177
    if-eqz v1, :cond_3

    .line 3179
    invoke-virtual {v2, p1, p2, v1}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;->callOnObtained(JLcom/oneplus/gallery/media/Media;)V

    goto :goto_0

    .end local v1    # "media":Lcom/oneplus/gallery/media/Media;
    :cond_2
    move-object v1, v4

    .line 3175
    goto :goto_1

    .line 3176
    .end local v0    # "holder":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 3183
    :cond_3
    and-int/lit16 v5, p5, 0x200

    if-eqz v5, :cond_4

    .line 3185
    invoke-virtual {v2, p1, p2, v4}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;->callOnObtained(JLcom/oneplus/gallery/media/Media;)V

    goto :goto_0

    .line 3190
    :cond_4
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-instance v6, Lcom/oneplus/gallery/media/MediaManagerImpl$18;

    invoke-direct {v6, p0, v2, p1, p2}, Lcom/oneplus/gallery/media/MediaManagerImpl$18;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;J)V

    invoke-virtual {p0, v5, v4, v4, v6}, Lcom/oneplus/gallery/media/MediaManagerImpl;->queryMediaInMediaStore(Ljava/lang/Long;Lcom/oneplus/gallery/media/MediaType;Ljava/lang/String;Lcom/oneplus/gallery/media/MediaManager$ContentProviderQueryCallback;)Lcom/oneplus/base/Handle;

    move-result-object v3

    .line 3225
    .local v3, "queryHandle":Lcom/oneplus/base/Handle;
    invoke-static {v3}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3227
    iget-object v5, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v6, "obtainMedia() - Fail to query"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v4

    .line 3228
    goto :goto_0
.end method

.method public obtainMedia(Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery/media/MediaObtainCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;
    .locals 9
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/oneplus/gallery/media/MediaObtainCallback;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "flags"    # I

    .prologue
    const/4 v6, 0x0

    .line 3241
    if-nez p1, :cond_0

    .line 3243
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "obtainMedia() - No content URI"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v6

    .line 3278
    :goto_0
    return-object v8

    .line 3251
    :cond_0
    :try_start_0
    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3252
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/gallery/media/MediaManagerImpl;->obtainMedia(Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/gallery/media/MediaObtainCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;

    move-result-object v8

    goto :goto_0

    .line 3255
    :cond_1
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/media/MediaManagerImpl;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3256
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .local v2, "id":J
    move-object v1, p0

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .line 3278
    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/gallery/media/MediaManagerImpl;->obtainMedia(JLcom/oneplus/gallery/media/MediaObtainCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;

    move-result-object v8

    goto :goto_0

    .line 3259
    .end local v2    # "id":J
    :cond_2
    :try_start_1
    new-instance v8, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;

    invoke-direct {v8, p0, p3, p4}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/MediaObtainCallback;Landroid/os/Handler;)V

    .line 3260
    .local v8, "handle":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;
    new-instance v0, Lcom/oneplus/gallery/media/MediaManagerImpl$19;

    invoke-direct {v0, p0, v8, p1, p2}, Lcom/oneplus/gallery/media/MediaManagerImpl$19;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->postToContentThread(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3271
    .end local v8    # "handle":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;
    :catch_0
    move-exception v7

    .line 3273
    .local v7, "ex":Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "obtainMedia() - Invalid content URI : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v8, v6

    .line 3274
    goto :goto_0
.end method

.method public obtainMedia(J)Lcom/oneplus/gallery/media/Media;
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 3146
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaTable:Ljava/util/Map;

    monitor-enter v2

    .line 3148
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaTable:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;

    .line 3149
    .local v0, "holder":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;->media:Lcom/oneplus/gallery/media/Media;

    :goto_0
    monitor-exit v2

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 3150
    .end local v0    # "holder":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public obtainMedia(Landroid/database/Cursor;I)Lcom/oneplus/gallery/media/Media;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "idColumnIndex"    # I

    .prologue
    .line 3337
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->obtainMedia(Landroid/database/Cursor;II)Lcom/oneplus/gallery/media/Media;

    move-result-object v0

    return-object v0
.end method

.method public obtainMedia(Landroid/database/Cursor;II)Lcom/oneplus/gallery/media/Media;
    .locals 23
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "idColumnIndex"    # I
    .param p3, "typeColumnIndex"    # I

    .prologue
    .line 3352
    if-nez p1, :cond_0

    .line 3354
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v4, "obtainMedia() - No cursor"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3355
    const/4 v7, 0x0

    .line 3442
    :goto_0
    return-object v7

    .line 3359
    :cond_0
    const-wide/16 v20, 0x0

    .line 3368
    .local v20, "time":J
    if-ltz p2, :cond_1

    .line 3369
    :try_start_0
    invoke-interface/range {p1 .. p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    .line 3372
    .local v17, "id":Ljava/lang/Long;
    :goto_1
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmp-long v3, v4, v10

    if-gez v3, :cond_2

    .line 3374
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v4, "obtainMedia() - No media ID"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3375
    const/4 v7, 0x0

    goto :goto_0

    .line 3371
    .end local v17    # "id":Ljava/lang/Long;
    :cond_1
    const-string v3, "_id"

    const-wide/16 v4, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4, v5}, Lcom/oneplus/database/CursorUtils;->getLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    .restart local v17    # "id":Ljava/lang/Long;
    goto :goto_1

    .line 3381
    :cond_2
    if-ltz p3, :cond_3

    .line 3382
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 3385
    .local v19, "mediaTypeInt":I
    :goto_2
    invoke-static/range {v19 .. v19}, Lcom/oneplus/gallery/media/MediaType;->fromMediaStoreMediaType(I)Lcom/oneplus/gallery/media/MediaType;

    move-result-object v6

    .line 3386
    .local v6, "mediaType":Lcom/oneplus/gallery/media/MediaType;
    sget-object v3, Lcom/oneplus/gallery/media/MediaType;->UNKNOWN:Lcom/oneplus/gallery/media/MediaType;

    if-ne v6, v3, :cond_4

    .line 3388
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "obtainMedia() - Unknown media type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3389
    const/4 v7, 0x0

    goto :goto_0

    .line 3384
    .end local v6    # "mediaType":Lcom/oneplus/gallery/media/MediaType;
    .end local v19    # "mediaTypeInt":I
    :cond_3
    const-string v3, "media_type"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/oneplus/database/CursorUtils;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v19

    .restart local v19    # "mediaTypeInt":I
    goto :goto_2

    .line 3393
    .restart local v6    # "mediaType":Lcom/oneplus/gallery/media/MediaType;
    :cond_4
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->getExtraMediaInfo(J)Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;

    move-result-object v15

    .line 3396
    .local v15, "extraInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaTable:Ljava/util/Map;

    move-object/from16 v22, v0

    monitor-enter v22
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3399
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaTable:Ljava/util/Map;

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;

    .line 3402
    .local v16, "holder":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;
    if-eqz v16, :cond_6

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;->media:Lcom/oneplus/gallery/media/Media;

    .line 3403
    .local v7, "media":Lcom/oneplus/gallery/media/Media;
    :goto_3
    if-eqz v7, :cond_8

    .line 3405
    instance-of v3, v7, Lcom/oneplus/gallery/media/MediaStoreMedia;

    if-eqz v3, :cond_5

    .line 3407
    move-object v0, v7

    check-cast v0, Lcom/oneplus/gallery/media/MediaStoreMedia;

    move-object v3, v0

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v15}, Lcom/oneplus/gallery/media/MediaStoreMedia;->update(Landroid/database/Cursor;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3409
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v4, "obtainMedia() - Media "

    const-string v5, " changed"

    invoke-static {v3, v4, v7, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3410
    move-object v0, v7

    check-cast v0, Lcom/oneplus/gallery/media/MediaStoreMedia;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/oneplus/gallery/media/MediaStoreMedia;->shouldIgnoreThumbnailUpdate()Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v8, 0x4

    .line 3411
    .local v8, "flagForThumbnailUpdate":I
    :goto_4
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/oneplus/gallery/media/MediaManagerImpl;->callOnMediaUpdated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    .line 3414
    .end local v8    # "flagForThumbnailUpdate":I
    :cond_5
    monitor-exit v22

    goto/16 :goto_0

    .line 3437
    .end local v7    # "media":Lcom/oneplus/gallery/media/Media;
    .end local v16    # "holder":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;
    :catchall_0
    move-exception v3

    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3439
    .end local v6    # "mediaType":Lcom/oneplus/gallery/media/MediaType;
    .end local v15    # "extraInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;
    .end local v17    # "id":Ljava/lang/Long;
    .end local v19    # "mediaTypeInt":I
    :catch_0
    move-exception v2

    .line 3441
    .local v2, "ex":Ljava/lang/Throwable;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v4, "obtainMedia() - Fail to obtain"

    invoke-static {v3, v4, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3442
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 3402
    .end local v2    # "ex":Ljava/lang/Throwable;
    .restart local v6    # "mediaType":Lcom/oneplus/gallery/media/MediaType;
    .restart local v15    # "extraInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;
    .restart local v16    # "holder":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;
    .restart local v17    # "id":Ljava/lang/Long;
    .restart local v19    # "mediaTypeInt":I
    :cond_6
    const/4 v7, 0x0

    goto :goto_3

    .line 3410
    .restart local v7    # "media":Lcom/oneplus/gallery/media/Media;
    :cond_7
    const/4 v8, 0x0

    goto :goto_4

    .line 3418
    :cond_8
    if-eqz v16, :cond_9

    :try_start_4
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;->media:Lcom/oneplus/gallery/media/Media;

    if-nez v3, :cond_a

    :cond_9
    const/16 v18, 0x1

    .line 3419
    .local v18, "isNewMedia":Z
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->getHandler()Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static {v0, v15, v3}, Lcom/oneplus/gallery/media/MediaStoreMedia;->create(Landroid/database/Cursor;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;Landroid/os/Handler;)Lcom/oneplus/gallery/media/MediaStoreMedia;

    move-result-object v7

    .line 3420
    if-nez v7, :cond_b

    .line 3421
    const/4 v7, 0x0

    monitor-exit v22

    goto/16 :goto_0

    .line 3418
    .end local v18    # "isNewMedia":Z
    :cond_a
    const/16 v18, 0x0

    goto :goto_5

    .line 3422
    .restart local v18    # "isNewMedia":Z
    :cond_b
    if-nez v16, :cond_d

    .line 3423
    new-instance v16, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;

    .end local v16    # "holder":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v16

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;-><init>(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;)V

    .line 3427
    .restart local v16    # "holder":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaTable:Ljava/util/Map;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3430
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v7, v3}, Lcom/oneplus/gallery/media/MediaManagerImpl;->addToGroupMedia(JLcom/oneplus/gallery/media/Media;I)V

    .line 3432
    if-eqz v18, :cond_c

    .line 3433
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-object v12, v6

    move-object v13, v7

    invoke-direct/range {v9 .. v14}, Lcom/oneplus/gallery/media/MediaManagerImpl;->onMediaCreated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    .line 3436
    :cond_c
    monitor-exit v22

    goto/16 :goto_0

    .line 3425
    :cond_d
    move-object/from16 v0, v16

    iput-object v7, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;->media:Lcom/oneplus/gallery/media/Media;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    .line 3446
    .end local v6    # "mediaType":Lcom/oneplus/gallery/media/MediaType;
    .end local v7    # "media":Lcom/oneplus/gallery/media/Media;
    .end local v15    # "extraInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;
    .end local v16    # "holder":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;
    .end local v17    # "id":Ljava/lang/Long;
    .end local v18    # "isNewMedia":Z
    .end local v19    # "mediaTypeInt":I
    :catchall_1
    move-exception v3

    throw v3
.end method

.method protected onDeinitialize()V
    .locals 2

    .prologue
    .line 3537
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ClearCacheReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 3538
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ClearCacheReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GalleryApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3539
    :cond_0
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_NewMediaIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GalleryApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3542
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 3544
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/gallery/media/MediaManagerImpl$21;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/media/MediaManagerImpl$21;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3552
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 3556
    :cond_1
    invoke-super {p0}, Lcom/oneplus/base/component/BasicComponent;->onDeinitialize()V

    .line 3557
    return-void
.end method

.method protected onInitialize()V
    .locals 8

    .prologue
    .line 3692
    invoke-super {p0}, Lcom/oneplus/base/component/BasicComponent;->onInitialize()V

    .line 3695
    invoke-direct {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->startContentThread()V

    .line 3698
    const-class v4, Lcom/oneplus/gallery/media/ThumbnailImageManager;

    new-instance v5, Lcom/oneplus/gallery/media/MediaManagerImpl$22;

    invoke-direct {v5, p0}, Lcom/oneplus/gallery/media/MediaManagerImpl$22;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;)V

    invoke-virtual {p0, v4, v5}, Lcom/oneplus/gallery/media/MediaManagerImpl;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 3708
    new-instance v4, Lcom/oneplus/gallery/media/MediaManagerImpl$23;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery/media/MediaManagerImpl$23;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;)V

    iput-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ClearCacheReceiver:Landroid/content/BroadcastReceiver;

    .line 3727
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "com.oneplus.camera.service.CLEAR_IMAGE_CACHE"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3728
    .local v2, "filter":Landroid/content/IntentFilter;
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v0

    .line 3729
    .local v0, "app":Lcom/oneplus/gallery/GalleryApplication;
    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ClearCacheReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Lcom/oneplus/gallery/GalleryApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3730
    sget-object v4, Lcom/oneplus/gallery/GalleryApplication;->PROP_IS_READ_STORAGE_PERM_GRANTED:Lcom/oneplus/base/PropertyKey;

    iget-object v5, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ReadExternalStorageChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v4, v5}, Lcom/oneplus/gallery/GalleryApplication;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 3731
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 3732
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    const-string v4, "android.hardware.action.NEW_PICTURE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3733
    const-string v4, "android.hardware.action.NEW_VIDEO"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3736
    :try_start_0
    const-string v4, "image/*"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    .line 3737
    const-string v4, "video/*"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3743
    :goto_0
    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_NewMediaIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Lcom/oneplus/gallery/GalleryApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3745
    new-instance v4, Lcom/oneplus/gallery/media/MediaManagerImpl$24;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery/media/MediaManagerImpl$24;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;)V

    iput-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_EmptyMediaObtainCallback:Lcom/oneplus/gallery/media/MediaObtainCallback;

    .line 3752
    new-instance v4, Lcom/oneplus/gallery/media/MediaManagerImpl$25;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery/media/MediaManagerImpl$25;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;)V

    iput-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_GalleryDataChangeListener:Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;

    .line 3770
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3771
    .local v3, "hiddenPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_HiddenDirectoryPaths:Ljava/util/List;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "oem_log"

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/oneplus/io/Path;->combine([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3772
    sget-object v4, Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;->APPLICATION_DATA:Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;

    invoke-virtual {p0, v4, v3}, Lcom/oneplus/gallery/media/MediaManagerImpl;->getSpecialDirectoryPaths(Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;Ljava/util/List;)V

    .line 3773
    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_HiddenDirectoryPaths:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3774
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 3775
    sget-object v4, Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;->MUSIC:Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;

    invoke-virtual {p0, v4, v3}, Lcom/oneplus/gallery/media/MediaManagerImpl;->getSpecialDirectoryPaths(Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;Ljava/util/List;)V

    .line 3776
    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_HiddenDirectoryPaths:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3777
    return-void

    .line 3739
    .end local v3    # "hiddenPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 3741
    .local v1, "ex":Landroid/content/IntentFilter$MalformedMimeTypeException;
    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v5, "onInitialize() - Unknown error while preparing intent filter"

    invoke-static {v4, v5, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public openGroupMediaList(Lcom/oneplus/gallery/media/MediaComparator;Ljava/lang/String;I)Lcom/oneplus/gallery/media/MediaList;
    .locals 7
    .param p1, "comparator"    # Lcom/oneplus/gallery/media/MediaComparator;
    .param p2, "groupId"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .prologue
    .line 4020
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->verifyReleaseState()V

    .line 4023
    if-nez p1, :cond_0

    .line 4024
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No comparator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4025
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4026
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No group id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4027
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_GroupMediaTable:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4029
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openGroupMediaList() - Cannot find media infos of the group id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4030
    const/4 v3, 0x0

    .line 4065
    :goto_0
    return-object v3

    .line 4033
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "openGroupMediaList() - Start"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4034
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 4037
    .local v4, "time":J
    new-instance v3, Lcom/oneplus/gallery/media/MediaManagerImpl$GroupMediaListImpl;

    invoke-direct {v3, p0, p1, p2}, Lcom/oneplus/gallery/media/MediaManagerImpl$GroupMediaListImpl;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/MediaComparator;Ljava/lang/String;)V

    .line 4038
    .local v3, "mediaList":Lcom/oneplus/gallery/media/MediaManagerImpl$GroupMediaListImpl;
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveGroupMediaLists:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 4039
    .local v6, "mediaLists":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/oneplus/gallery/media/MediaManagerImpl$GroupMediaListImpl;>;>;"
    if-nez v6, :cond_4

    .line 4041
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "mediaLists":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/oneplus/gallery/media/MediaManagerImpl$GroupMediaListImpl;>;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4042
    .restart local v6    # "mediaLists":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/oneplus/gallery/media/MediaManagerImpl$GroupMediaListImpl;>;>;"
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ActiveGroupMediaLists:Ljava/util/HashMap;

    invoke-virtual {v0, p2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4044
    :cond_4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4047
    new-instance v0, Lcom/oneplus/gallery/media/MediaManagerImpl$27;

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/gallery/media/MediaManagerImpl$27;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Ljava/lang/String;Lcom/oneplus/gallery/media/MediaManagerImpl$GroupMediaListImpl;J)V

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->postToContentThread(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public postToContentThread(Ljava/lang/Runnable;)Z
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 4076
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/oneplus/gallery/media/MediaManagerImpl;->postToContentThread(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public postToContentThread(Ljava/lang/Runnable;J)Z
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 4089
    invoke-direct {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->startContentThread()V

    .line 4090
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 4091
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    .line 4092
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    goto :goto_0
.end method

.method public queryContentProvider(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/gallery/media/MediaManager$ContentProviderQueryCallback;)Lcom/oneplus/base/Handle;
    .locals 7
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "callback"    # Lcom/oneplus/gallery/media/MediaManager$ContentProviderQueryCallback;

    .prologue
    .line 4100
    if-nez p6, :cond_0

    .line 4102
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "queryContentProvider() - No call-back"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4103
    const/4 v0, 0x0

    .line 4105
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/oneplus/gallery/media/MediaManagerImpl$28;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/gallery/media/MediaManagerImpl$28;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/gallery/media/MediaManager$ContentProviderQueryCallback;)V

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->accessContentProvider(Landroid/net/Uri;Lcom/oneplus/gallery/media/MediaManager$ContentProviderAccessCallback;)Lcom/oneplus/base/Handle;

    move-result-object v0

    goto :goto_0
.end method

.method public queryMediaInMediaStore(Ljava/lang/Long;Lcom/oneplus/gallery/media/MediaType;Ljava/lang/String;Lcom/oneplus/gallery/media/MediaManager$ContentProviderQueryCallback;)Lcom/oneplus/base/Handle;
    .locals 7
    .param p1, "mediaId"    # Ljava/lang/Long;
    .param p2, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p3, "sortOrder"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/oneplus/gallery/media/MediaManager$ContentProviderQueryCallback;

    .prologue
    .line 4131
    sget-object v6, Lcom/oneplus/gallery/media/MediaManagerImpl;->CONTENT_URI_FILE:Landroid/net/Uri;

    new-instance v0, Lcom/oneplus/gallery/media/MediaManagerImpl$29;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/gallery/media/MediaManagerImpl$29;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/MediaType;Ljava/lang/Long;Ljava/lang/String;Lcom/oneplus/gallery/media/MediaManager$ContentProviderQueryCallback;)V

    invoke-virtual {p0, v6, v0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->accessContentProvider(Landroid/net/Uri;Lcom/oneplus/gallery/media/MediaManager$ContentProviderAccessCallback;)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0
.end method

.method public recycleMedia(Lcom/oneplus/gallery/media/Media;I)Lcom/oneplus/base/Handle;
    .locals 7
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 4189
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->verifyAccess()V

    .line 4190
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/media/MediaManagerImpl;->isRunningOrInitializing(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4231
    :goto_0
    return-object v0

    .line 4194
    :cond_0
    if-nez p1, :cond_1

    .line 4196
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v4, "recycleMedia() - No media to recycle"

    invoke-static {v1, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4202
    :cond_1
    instance-of v1, p1, Lcom/oneplus/gallery/media/GroupMedia;

    if-eqz v1, :cond_3

    .line 4203
    const-wide/16 v2, 0x0

    .line 4216
    .local v2, "mediaId":J
    :cond_2
    iget-object v6, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaRecyclingHandles:Ljava/util/Map;

    monitor-enter v6

    .line 4218
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaRecyclingHandles:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4220
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "recycleMedia() - Media "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is already recycled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4221
    monitor-exit v6

    goto :goto_0

    .line 4225
    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 4206
    .end local v2    # "mediaId":J
    :cond_3
    invoke-static {p1}, Lcom/oneplus/gallery/media/MediaUtils;->getId(Lcom/oneplus/gallery/media/Media;)J

    move-result-wide v2

    .line 4207
    .restart local v2    # "mediaId":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    .line 4209
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v4, "recycleMedia() - No media ID"

    invoke-static {v1, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4223
    :cond_4
    :try_start_1
    new-instance v0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaRecyclingHandle;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaRecyclingHandle;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;JLcom/oneplus/gallery/media/Media;I)V

    .line 4224
    .local v0, "handle":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaRecyclingHandle;
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaRecyclingHandles:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4225
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4228
    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getType()Lcom/oneplus/gallery/media/MediaType;

    move-result-object v4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/gallery/media/MediaManagerImpl;->onMediaRecycled(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    goto :goto_0
.end method

.method public registerContentChangedCallback(Landroid/net/Uri;Lcom/oneplus/gallery/media/MediaManager$ContentChangeCallback;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "callback"    # Lcom/oneplus/gallery/media/MediaManager$ContentChangeCallback;

    .prologue
    .line 4452
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->registerContentChangedCallback(Landroid/net/Uri;Lcom/oneplus/gallery/media/MediaManager$ContentChangeCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0
.end method

.method public registerContentChangedCallback(Landroid/net/Uri;Lcom/oneplus/gallery/media/MediaManager$ContentChangeCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;
    .locals 3
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "callback"    # Lcom/oneplus/gallery/media/MediaManager$ContentChangeCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v0, 0x0

    .line 4465
    if-nez p1, :cond_0

    .line 4467
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v2, "registerContentChangedCallback() - No content URI"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4483
    :goto_0
    return-object v0

    .line 4470
    :cond_0
    if-nez p2, :cond_1

    .line 4472
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v2, "registerContentChangedCallback() - No call-back"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4475
    :cond_1
    new-instance v0, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Landroid/net/Uri;Lcom/oneplus/gallery/media/MediaManager$ContentChangeCallback;Landroid/os/Handler;)V

    .line 4476
    .local v0, "handle":Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->isContentThread()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4477
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->registerContentChangedCallback(Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;)V

    goto :goto_0

    .line 4480
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->startContentThread()V

    .line 4481
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v2, 0x271a

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public registerDirectoryRenameCallback(Lcom/oneplus/gallery/media/OPMediaManager$MediaRenameCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p1, "callback"    # Lcom/oneplus/gallery/media/OPMediaManager$MediaRenameCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 4515
    if-nez p1, :cond_0

    .line 4516
    const/4 v0, 0x0

    .line 4519
    :goto_0
    return-object v0

    .line 4517
    :cond_0
    new-instance v0, Lcom/oneplus/gallery/media/MediaManagerImpl$DirectoryRenameHandle;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/gallery/media/MediaManagerImpl$DirectoryRenameHandle;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/OPMediaManager$MediaRenameCallback;Landroid/os/Handler;)V

    .line 4518
    .local v0, "handle":Lcom/oneplus/gallery/media/MediaManagerImpl$DirectoryRenameHandle;
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->registerDirectoryRenameCallback(Lcom/oneplus/gallery/media/MediaManagerImpl$DirectoryRenameHandle;)V

    goto :goto_0
.end method

.method public registerMediaChangeCallback(Lcom/oneplus/gallery/media/MediaManager$MediaChangeCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;
    .locals 3
    .param p1, "callback"    # Lcom/oneplus/gallery/media/MediaManager$MediaChangeCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 4542
    if-nez p1, :cond_0

    .line 4544
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v2, "registerMediaChangeCallback() - No call-back to register"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4545
    const/4 v0, 0x0

    .line 4549
    :goto_0
    return-object v0

    .line 4547
    :cond_0
    new-instance v0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeCallbackHandle;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeCallbackHandle;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/MediaManager$MediaChangeCallback;Landroid/os/Handler;)V

    .line 4548
    .local v0, "handle":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeCallbackHandle;
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->registerMediaChangeCallback(Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeCallbackHandle;)V

    goto :goto_0
.end method

.method public removeMediaFromAlbum(JJ)Z
    .locals 7
    .param p1, "albumId"    # J
    .param p3, "mediaId"    # J

    .prologue
    const/4 v6, 0x1

    .line 4738
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->isContentThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4740
    invoke-static {p1, p2, p3, p4}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->removeAlbumMediaRelationInfo(JJ)I

    .line 4747
    :goto_0
    return v6

    .line 4744
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v2, 0x2763

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4745
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public removeOnePlusFlags(JI)Z
    .locals 9
    .param p1, "mediaId"    # J
    .param p3, "flags"    # I

    .prologue
    const/4 v7, 0x0

    .line 4787
    const/4 v1, 0x0

    .line 4788
    .local v1, "success":Z
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->isContentThread()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4789
    invoke-direct {p0, p1, p2, p3, v7}, Lcom/oneplus/gallery/media/MediaManagerImpl;->updateOnePlusFlags(JIZ)Z

    move-result v1

    .line 4795
    :goto_0
    return v1

    .line 4792
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v3, 0x2756

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4793
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    goto :goto_0
.end method

.method public removeOnePlusFlags(Landroid/net/Uri;I)Z
    .locals 7
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 4761
    const-wide/16 v2, -0x1

    .line 4764
    .local v2, "id":J
    :try_start_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 4773
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 4775
    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setFavorite() - Cannot find correct id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4779
    :goto_0
    return v1

    .line 4766
    :catch_0
    move-exception v0

    .line 4768
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setFavorite() - Fail to parse id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4779
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    invoke-virtual {p0, v2, v3, p2}, Lcom/oneplus/gallery/media/MediaManagerImpl;->removeOnePlusFlags(JI)Z

    move-result v1

    goto :goto_0
.end method

.method public restoreMedia(Lcom/oneplus/base/Handle;)Z
    .locals 20
    .param p1, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 4804
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->verifyAccess()V

    .line 4807
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaRecyclingHandle;

    if-nez v3, :cond_0

    .line 4809
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v8, "restoreMedia() - Invalid handle"

    invoke-static {v3, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4810
    const/4 v3, 0x0

    .line 4884
    :goto_0
    return v3

    :cond_0
    move-object/from16 v15, p1

    .line 4814
    check-cast v15, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaRecyclingHandle;

    .line 4815
    .local v15, "recyclingHandle":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaRecyclingHandle;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaRecyclingHandles:Ljava/util/Map;

    monitor-enter v8

    .line 4817
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaRecyclingHandles:Ljava/util/Map;

    iget-wide v0, v15, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaRecyclingHandle;->mediaId:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 4819
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    const-string v9, "restoreMedia() - Media is already deleted or recycled"

    invoke-static {v3, v9}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4820
    const/4 v3, 0x0

    monitor-exit v8

    goto :goto_0

    .line 4822
    :catchall_0
    move-exception v3

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4825
    iget-wide v4, v15, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaRecyclingHandle;->mediaId:J

    .line 4826
    .local v4, "mediaId":J
    iget-object v7, v15, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaRecyclingHandle;->media:Lcom/oneplus/gallery/media/Media;

    .line 4827
    .local v7, "media":Lcom/oneplus/gallery/media/Media;
    invoke-interface {v7}, Lcom/oneplus/gallery/media/Media;->getType()Lcom/oneplus/gallery/media/MediaType;

    move-result-object v6

    .line 4828
    .local v6, "mediaType":Lcom/oneplus/gallery/media/MediaType;
    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/oneplus/gallery/media/MediaManagerImpl;->onMediaRestored(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    .line 4831
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->isContentThread()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4833
    instance-of v3, v7, Lcom/oneplus/gallery/media/MediaStoreMedia;

    if-eqz v3, :cond_2

    move-object v3, v7

    .line 4835
    check-cast v3, Lcom/oneplus/gallery/media/MediaStoreMedia;

    invoke-virtual {v3}, Lcom/oneplus/gallery/media/MediaStoreMedia;->getParentId()J

    move-result-wide v10

    .line 4836
    .local v10, "parentId":J
    invoke-interface {v7}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v14

    .line 4837
    .local v14, "filePath":Ljava/lang/String;
    if-eqz v14, :cond_3

    invoke-static {v14}, Lcom/oneplus/io/Path;->getDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 4840
    .local v12, "directoryPath":Ljava/lang/String;
    :goto_1
    invoke-static {v10, v11}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->getExtraDirectoryInfo(J)Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;

    move-result-object v13

    .line 4841
    .local v13, "extraDirectoryInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v8, Lcom/oneplus/gallery/media/MediaManagerImpl$31;

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v13}, Lcom/oneplus/gallery/media/MediaManagerImpl$31;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;JLjava/lang/String;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;)V

    invoke-virtual {v3, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4884
    .end local v10    # "parentId":J
    .end local v12    # "directoryPath":Ljava/lang/String;
    .end local v13    # "extraDirectoryInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;
    .end local v14    # "filePath":Ljava/lang/String;
    :cond_2
    :goto_2
    const/4 v3, 0x1

    goto :goto_0

    .line 4837
    .restart local v10    # "parentId":J
    .restart local v14    # "filePath":Ljava/lang/String;
    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    .line 4860
    .end local v10    # "parentId":J
    .end local v14    # "filePath":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_DirectoryMediaSetTables:Ljava/util/HashMap;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LongSparseArray;

    .line 4861
    .local v2, "dirSetTable":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/oneplus/gallery/media/DirectoryMediaSet;>;"
    if-eqz v2, :cond_2

    instance-of v3, v7, Lcom/oneplus/gallery/media/MediaStoreMedia;

    if-eqz v3, :cond_2

    move-object v3, v7

    .line 4863
    check-cast v3, Lcom/oneplus/gallery/media/MediaStoreMedia;

    invoke-virtual {v3}, Lcom/oneplus/gallery/media/MediaStoreMedia;->getParentId()J

    move-result-wide v10

    .line 4864
    .restart local v10    # "parentId":J
    invoke-interface {v7}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v14

    .line 4865
    .restart local v14    # "filePath":Ljava/lang/String;
    if-eqz v14, :cond_5

    invoke-static {v14}, Lcom/oneplus/io/Path;->getDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 4866
    .restart local v12    # "directoryPath":Ljava/lang/String;
    :goto_3
    invoke-virtual {v2, v10, v11}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/oneplus/gallery/media/DirectoryMediaSet;

    .line 4867
    .local v16, "set":Lcom/oneplus/gallery/media/DirectoryMediaSet;
    if-nez v16, :cond_2

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/oneplus/gallery/media/MediaManagerImpl;->isSpecialDirectoryPath(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/oneplus/gallery/media/MediaManagerImpl;->isHiddenPath(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4869
    new-instance v3, Lcom/oneplus/gallery/media/MediaManagerImpl$32;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v10, v11, v12}, Lcom/oneplus/gallery/media/MediaManagerImpl$32;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;JLjava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/oneplus/gallery/media/MediaManagerImpl;->postToContentThread(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 4865
    .end local v12    # "directoryPath":Ljava/lang/String;
    .end local v16    # "set":Lcom/oneplus/gallery/media/DirectoryMediaSet;
    :cond_5
    const/4 v12, 0x0

    goto :goto_3
.end method

.method public setFavorite(JZ)Z
    .locals 9
    .param p1, "mediaId"    # J
    .param p3, "isFavorite"    # Z

    .prologue
    const/16 v7, 0x10

    .line 4937
    const/4 v1, 0x0

    .line 4938
    .local v1, "success":Z
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->isContentThread()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4939
    invoke-direct {p0, p1, p2, v7, p3}, Lcom/oneplus/gallery/media/MediaManagerImpl;->updateOnePlusFlags(JIZ)Z

    move-result v1

    .line 4945
    :goto_0
    return v1

    .line 4942
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v3, 0x2756

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4943
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    goto :goto_0
.end method

.method public setFavorite(Landroid/net/Uri;Z)Z
    .locals 7
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "isFavorite"    # Z

    .prologue
    const/4 v1, 0x0

    .line 4910
    const-wide/16 v2, -0x1

    .line 4913
    .local v2, "id":J
    :try_start_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 4922
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 4924
    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setFavorite() - Cannot find correct id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4929
    :goto_0
    return v1

    .line 4915
    :catch_0
    move-exception v0

    .line 4917
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setFavorite() - Fail to parse id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4929
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    invoke-virtual {p0, v2, v3, p2}, Lcom/oneplus/gallery/media/MediaManagerImpl;->setFavorite(JZ)Z

    move-result v1

    goto :goto_0
.end method
