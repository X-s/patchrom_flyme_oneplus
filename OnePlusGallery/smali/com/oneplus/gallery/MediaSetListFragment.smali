.class public Lcom/oneplus/gallery/MediaSetListFragment;
.super Lcom/oneplus/gallery/GalleryFragment;
.source "MediaSetListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/MediaSetListFragment$21;,
        Lcom/oneplus/gallery/MediaSetListFragment$ClearCacheTask;,
        Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;,
        Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;,
        Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;,
        Lcom/oneplus/gallery/MediaSetListFragment$EmptyCoverDrawable;,
        Lcom/oneplus/gallery/MediaSetListFragment$LoadCacheImageTask;,
        Lcom/oneplus/gallery/MediaSetListFragment$CacheImageLoadedCallback;
    }
.end annotation


# static fields
.field private static final COVER_COLUMN_COUNT:I = 0x6

.field private static final COVER_GRID_INNER_SPACE:I = 0x2

.field private static final COVER_GRID_SIDE_SPACE:I = 0x4

.field private static final COVER_IMAGE_CACHE_NAME:Ljava/lang/String; = "MediaSetCoverImage"

.field private static final COVER_ROW_COUNT:I = 0x2

.field private static final COVER_WINDOW_SIZE:I = 0x3

.field private static final DECODE_DELAY_TIME:J = 0x32L

.field private static final DECODE_IMAGE_RANGE:I = 0x4

.field private static final DISK_CACHE_SIZE:J = 0xc800000L

.field private static final DURATION_MAX_CLEAR_INVALID_THUMBS:J = 0x3e8L

.field private static final EMPTY_COVER_IMAGE_POOL_CAPACITY:I = 0x4

.field public static final EVENT_MEDIA_SET_CLICKED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/gallery/ListItemEventArgs",
            "<",
            "Lcom/oneplus/gallery/media/MediaSet;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final MAX_ACTIVE_COVER_IMAGE_CREATION_TASK_COUNT:I = 0x4

.field private static final MEMORY_CACHE_SIZE:J = 0x1400000L

.field private static final MIN_COVER_UPDATE_INTERVAL:J = 0x12cL

.field private static final MSG_CREATE_COVER_IMAGES:I = 0x2711

.field private static final MSG_DECODE_COVER_IMAGE_FOR_MEDIA_SETS:I = 0xc350

.field private static final PRINT_COVER_IMAGE_CREATION_TRACE_LOGS:Z

.field public static final PROP_IS_SCROLLING:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_LIST_VIEW_PADDING_TOP:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_MEDIA_SET_LIST:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/gallery/media/MediaSetList;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_SCROLL_OFFSET_Y:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_TOOL_BAR_MARGIN_TOP:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile m_CacheImageLoaderExecutor:Ljava/util/concurrent/ExecutorService;

.field private static m_CenterCropBitmapPool:Lcom/oneplus/media/BitmapPool;

.field private static m_CoverImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/cache/HybridBitmapLruCache",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final m_EmptyCoverImagePool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final m_ActiveCoverImageCreationTasks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;",
            ">;"
        }
    .end annotation
.end field

.field private m_Activity:Landroid/app/Activity;

.field private final m_CheckVisibleMediaSetsRunnable:Ljava/lang/Runnable;

.field private m_CoverBackgroundColor:I

.field private final m_CoverImageCreationTaskList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;",
            ">;"
        }
    .end annotation
.end field

.field private final m_CoverImageCreationTaskTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/gallery/media/MediaSet;",
            "Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;",
            ">;"
        }
    .end annotation
.end field

.field private m_CoverImageHeight:I

.field private final m_CoverImageOverlapPaint:Landroid/graphics/Paint;

.field private m_CoverImageWidth:I

.field private m_EmptyAlbumCreateIcon:Landroid/widget/ImageView;

.field private m_EmptyAlbumTitle:Landroid/widget/TextView;

.field private m_EmptyAlbumView:Landroid/view/View;

.field private m_EmtpyAlbumText:Landroid/widget/TextView;

.field private m_IsBlackMode:Z

.field private m_IsCoverImageCreationScheduled:Z

.field private final m_IsSelectionModeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_IsVisibleMediaSetsCheckScheduled:Z

.field private final m_MediaCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final m_MediaSetAddedHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/gallery/ListChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final m_MediaSetCoverHashCodeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_MediaSetCoverStatusTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/oneplus/gallery/media/MediaSet;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_MediaSetDecodeIndexList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_MediaSetDecodeQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/gallery/media/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private m_MediaSetDecodingHandles:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/base/Handle;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_MediaSetDeleteCallback:Lcom/oneplus/gallery/Gallery$MediaSetDeletionCallback;

.field private m_MediaSetItemHeight:I

.field private m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

.field private m_MediaSetListAdapter:Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;

.field private final m_MediaSetListReadyChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_MediaSetListView:Landroid/widget/ListView;

.field private final m_MediaSetMovedHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/gallery/ListMoveEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final m_MediaSetNameChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final m_MediaSetRemovedHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/gallery/ListChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final m_MediaSetRemovingHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/gallery/ListChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private m_ScrollOffsetY:I

.field private m_SelectedMediaSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/gallery/media/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private m_ShadowPaint:Landroid/graphics/Paint;

.field private m_ThumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;

.field private m_ThumbManagerActivateHandle:Lcom/oneplus/base/Handle;

.field private m_Toolbar:Landroid/widget/Toolbar;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 111
    new-instance v0, Lcom/oneplus/media/CenterCroppedBitmapPool;

    const-string v1, "MediaSetListFragmentCenterCropBitmapPool"

    const-wide/32 v2, 0x2000000

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x4

    const/16 v6, 0x18

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/media/CenterCroppedBitmapPool;-><init>(Ljava/lang/String;JLandroid/graphics/Bitmap$Config;II)V

    sput-object v0, Lcom/oneplus/gallery/MediaSetListFragment;->m_CenterCropBitmapPool:Lcom/oneplus/media/BitmapPool;

    .line 112
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/oneplus/gallery/MediaSetListFragment;->m_EmptyCoverImagePool:Ljava/util/LinkedList;

    .line 243
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsScrolling"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery/MediaSetListFragment;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/MediaSetListFragment;->PROP_IS_SCROLLING:Lcom/oneplus/base/PropertyKey;

    .line 247
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsSelectionMode"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery/MediaSetListFragment;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/MediaSetListFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    .line 251
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "ListViewPaddingTop"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/gallery/MediaSetListFragment;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/MediaSetListFragment;->PROP_LIST_VIEW_PADDING_TOP:Lcom/oneplus/base/PropertyKey;

    .line 255
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "MediaSetList"

    const-class v2, Lcom/oneplus/gallery/media/MediaSetList;

    const-class v3, Lcom/oneplus/gallery/MediaSetListFragment;

    const/4 v5, 0x0

    move v4, v7

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/MediaSetListFragment;->PROP_MEDIA_SET_LIST:Lcom/oneplus/base/PropertyKey;

    .line 259
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "ScrollOffsetY"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/gallery/MediaSetListFragment;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/MediaSetListFragment;->PROP_SCROLL_OFFSET_Y:Lcom/oneplus/base/PropertyKey;

    .line 263
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "ToolBarMarginTop"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/gallery/MediaSetListFragment;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/MediaSetListFragment;->PROP_TOOL_BAR_MARGIN_TOP:Lcom/oneplus/base/PropertyKey;

    .line 270
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "MediaSetClicked"

    const-class v2, Lcom/oneplus/gallery/ListItemEventArgs;

    const-class v3, Lcom/oneplus/gallery/MediaSetListFragment;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery/MediaSetListFragment;->EVENT_MEDIA_SET_CLICKED:Lcom/oneplus/base/EventKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 951
    invoke-direct {p0}, Lcom/oneplus/gallery/GalleryFragment;-><init>()V

    .line 115
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_ActiveCoverImageCreationTasks:Ljava/util/Set;

    .line 117
    new-instance v0, Lcom/oneplus/gallery/MediaSetListFragment$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/MediaSetListFragment$1;-><init>(Lcom/oneplus/gallery/MediaSetListFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_CheckVisibleMediaSetsRunnable:Ljava/lang/Runnable;

    .line 127
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverImageCreationTaskList:Ljava/util/LinkedList;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverImageCreationTaskTable:Ljava/util/Map;

    .line 130
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverImageOverlapPaint:Landroid/graphics/Paint;

    .line 139
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetDecodingHandles:Ljava/util/Hashtable;

    .line 144
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetDecodeQueue:Ljava/util/LinkedList;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetDecodeIndexList:Ljava/util/ArrayList;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_SelectedMediaSet:Ljava/util/ArrayList;

    .line 147
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetCoverStatusTable:Ljava/util/Hashtable;

    .line 153
    new-instance v0, Lcom/oneplus/gallery/MediaSetListFragment$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/MediaSetListFragment$2;-><init>(Lcom/oneplus/gallery/MediaSetListFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 161
    new-instance v0, Lcom/oneplus/gallery/MediaSetListFragment$3;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/MediaSetListFragment$3;-><init>(Lcom/oneplus/gallery/MediaSetListFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetCoverHashCodeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 169
    new-instance v0, Lcom/oneplus/gallery/MediaSetListFragment$4;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/MediaSetListFragment$4;-><init>(Lcom/oneplus/gallery/MediaSetListFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetAddedHandler:Lcom/oneplus/base/EventHandler;

    .line 177
    new-instance v0, Lcom/oneplus/gallery/MediaSetListFragment$5;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/MediaSetListFragment$5;-><init>(Lcom/oneplus/gallery/MediaSetListFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetListReadyChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 186
    new-instance v0, Lcom/oneplus/gallery/MediaSetListFragment$6;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/MediaSetListFragment$6;-><init>(Lcom/oneplus/gallery/MediaSetListFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetMovedHandler:Lcom/oneplus/base/EventHandler;

    .line 194
    new-instance v0, Lcom/oneplus/gallery/MediaSetListFragment$7;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/MediaSetListFragment$7;-><init>(Lcom/oneplus/gallery/MediaSetListFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetNameChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 202
    new-instance v0, Lcom/oneplus/gallery/MediaSetListFragment$8;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/MediaSetListFragment$8;-><init>(Lcom/oneplus/gallery/MediaSetListFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetRemovedHandler:Lcom/oneplus/base/EventHandler;

    .line 210
    new-instance v0, Lcom/oneplus/gallery/MediaSetListFragment$9;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/MediaSetListFragment$9;-><init>(Lcom/oneplus/gallery/MediaSetListFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetRemovingHandler:Lcom/oneplus/base/EventHandler;

    .line 218
    new-instance v0, Lcom/oneplus/gallery/MediaSetListFragment$10;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/MediaSetListFragment$10;-><init>(Lcom/oneplus/gallery/MediaSetListFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetDeleteCallback:Lcom/oneplus/gallery/Gallery$MediaSetDeletionCallback;

    .line 273
    new-instance v0, Lcom/oneplus/gallery/MediaSetListFragment$11;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/MediaSetListFragment$11;-><init>(Lcom/oneplus/gallery/MediaSetListFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_IsSelectionModeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 952
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverImageOverlapPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 953
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverImageOverlapPaint:Landroid/graphics/Paint;

    const/16 v1, 0x26

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 954
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery/MediaSetListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_IsVisibleMediaSetsCheckScheduled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/oneplus/gallery/MediaSetListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_IsVisibleMediaSetsCheckScheduled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/gallery/MediaSetListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaSetListFragment;->onVisibleMediaSetsChanged()V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/gallery/media/MediaSet;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery/media/MediaSet;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/MediaSetListFragment;->removeImageInCache(Lcom/oneplus/gallery/media/MediaSet;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/oneplus/gallery/MediaSetListFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/MediaSetListFragment;->onSelectionModeChanged(Z)V

    return-void
.end method

.method static synthetic access$1200()Lcom/oneplus/cache/HybridBitmapLruCache;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/oneplus/gallery/MediaSetListFragment;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/MediaSetListFragment;->recycleCoverImage(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/MediaSetListFragment;->onCoverImageCreationCompleted(Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/gallery/media/MediaSet;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery/media/MediaSet;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/MediaSetListFragment;->getMediaSetImageKey(Lcom/oneplus/gallery/media/MediaSet;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery/media/MediaSet;
    .param p2, "x2"    # Lcom/oneplus/base/PropertyChangeEventArgs;

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/MediaSetListFragment;->onMediaCountChanged(Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/base/PropertyChangeEventArgs;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;
    .param p2, "x2"    # Landroid/graphics/Bitmap;
    .param p3, "x3"    # Z

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery/MediaSetListFragment;->onCoverImageUpdated(Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method static synthetic access$2500()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/oneplus/gallery/MediaSetListFragment;->m_CacheImageLoaderExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/oneplus/gallery/MediaSetListFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/oneplus/gallery/MediaSetListFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/oneplus/gallery/MediaSetListFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/oneplus/gallery/MediaSetListFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery/media/MediaSet;
    .param p2, "x2"    # Lcom/oneplus/base/PropertyChangeEventArgs;

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/MediaSetListFragment;->onMediaSetCoverHashCodeChanged(Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/base/PropertyChangeEventArgs;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/oneplus/gallery/MediaSetListFragment;)Lcom/oneplus/gallery/media/ThumbnailImageManager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_ThumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/oneplus/gallery/MediaSetListFragment;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaSetListFragment;->obtainEmptyCoverImage()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/oneplus/gallery/MediaSetListFragment;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverImageOverlapPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/gallery/media/MediaSet;Z)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery/media/MediaSet;
    .param p2, "x2"    # Z

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/MediaSetListFragment;->getMediaSetImageKey(Lcom/oneplus/gallery/media/MediaSet;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/oneplus/gallery/MediaSetListFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/oneplus/gallery/MediaSetListFragment;)Lcom/oneplus/gallery/media/MediaSetList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/gallery/media/MediaSet;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery/media/MediaSet;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/MediaSetListFragment;->updateSelectedMediaSet(Lcom/oneplus/gallery/media/MediaSet;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;
    .param p1, "x1"    # Lcom/oneplus/base/EventKey;
    .param p2, "x2"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery/MediaSetListFragment;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/gallery/ListChangeEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery/ListChangeEventArgs;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/MediaSetListFragment;->onMediaSetAdded(Lcom/oneplus/gallery/ListChangeEventArgs;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;
    .param p1, "x1"    # Lcom/oneplus/base/PropertyKey;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery/MediaSetListFragment;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;
    .param p1, "x1"    # Lcom/oneplus/base/PropertyKey;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery/MediaSetListFragment;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/oneplus/gallery/MediaSetListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaSetListFragment;->reportScrollOffsets()V

    return-void
.end method

.method static synthetic access$4300(Lcom/oneplus/gallery/MediaSetListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_SelectedMediaSet:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/oneplus/gallery/MediaSetListFragment;)Lcom/oneplus/gallery/Gallery$MediaSetDeletionCallback;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetDeleteCallback:Lcom/oneplus/gallery/Gallery$MediaSetDeletionCallback;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/oneplus/gallery/MediaSetListFragment;)Landroid/widget/Toolbar;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_Toolbar:Landroid/widget/Toolbar;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/oneplus/gallery/MediaSetListFragment;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_Activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery/media/MediaSet;
    .param p2, "x2"    # Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/MediaSetListFragment;->updateIcon(Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;)V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/gallery/MediaSetListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaSetListFragment;->onMediaSetListReady()V

    return-void
.end method

.method static synthetic access$5000(Lcom/oneplus/gallery/MediaSetListFragment;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/MediaSetListFragment;->setItemImageViewBackgroundVisibility(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$5100(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/gallery/media/MediaSet;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery/media/MediaSet;
    .param p2, "x2"    # Z

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/MediaSetListFragment;->createCoverImage(Lcom/oneplus/gallery/media/MediaSet;Z)V

    return-void
.end method

.method static synthetic access$5200(Lcom/oneplus/gallery/MediaSetListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_IsBlackMode:Z

    return v0
.end method

.method static synthetic access$5300(Lcom/oneplus/gallery/MediaSetListFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_CheckVisibleMediaSetsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/oneplus/gallery/MediaSetListFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/oneplus/gallery/MediaSetListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaSetListFragment;->createMediaListCoverImageFromQueue()V

    return-void
.end method

.method static synthetic access$5600(Lcom/oneplus/gallery/MediaSetListFragment;)Ljava/util/Hashtable;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetDecodingHandles:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/oneplus/gallery/MediaSetListFragment;)Ljava/util/Hashtable;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetCoverStatusTable:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/gallery/media/MediaSet;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery/media/MediaSet;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/MediaSetListFragment;->findItemViewForMediaSet(Lcom/oneplus/gallery/media/MediaSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5900(Lcom/oneplus/gallery/MediaSetListFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/gallery/MediaSetListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaSetListFragment;->onMediaSetMoved()V

    return-void
.end method

.method static synthetic access$6000(Lcom/oneplus/gallery/MediaSetListFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/oneplus/gallery/MediaSetListFragment;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_ShadowPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/oneplus/gallery/MediaSetListFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/oneplus/gallery/MediaSetListFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/gallery/media/MediaList;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery/media/MediaSet;
    .param p2, "x2"    # Lcom/oneplus/gallery/media/MediaList;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/gallery/MediaSetListFragment;->decodeSingleCoverImage(Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/gallery/media/MediaList;ZZ)V

    return-void
.end method

.method static synthetic access$6500(Lcom/oneplus/gallery/MediaSetListFragment;IIILcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/gallery/media/MediaList;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/oneplus/gallery/media/MediaSet;
    .param p5, "x5"    # Lcom/oneplus/gallery/media/MediaList;
    .param p6, "x6"    # Z
    .param p7, "x7"    # Z

    .prologue
    .line 87
    invoke-direct/range {p0 .. p7}, Lcom/oneplus/gallery/MediaSetListFragment;->decodeGridCoverImage(IIILcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/gallery/media/MediaList;ZZ)V

    return-void
.end method

.method static synthetic access$6600(Lcom/oneplus/gallery/MediaSetListFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/oneplus/gallery/media/MediaSetList;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaSetList;

    .prologue
    .line 87
    invoke-static {p0}, Lcom/oneplus/gallery/MediaSetListFragment;->clearUselessImageCache(Lcom/oneplus/gallery/media/MediaSetList;)V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery/media/MediaSet;
    .param p2, "x2"    # Lcom/oneplus/base/PropertyChangeEventArgs;

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/MediaSetListFragment;->onMediaSetNameChanged(Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/base/PropertyChangeEventArgs;)V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/gallery/ListChangeEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery/ListChangeEventArgs;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/MediaSetListFragment;->onMediaSetRemoved(Lcom/oneplus/gallery/ListChangeEventArgs;)V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/gallery/ListChangeEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery/ListChangeEventArgs;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/MediaSetListFragment;->onMediaSetRemoving(Lcom/oneplus/gallery/ListChangeEventArgs;)V

    return-void
.end method

.method private attachToMediaSet(Lcom/oneplus/gallery/media/MediaSet;)V
    .locals 2
    .param p1, "set"    # Lcom/oneplus/gallery/media/MediaSet;

    .prologue
    .line 960
    sget-object v0, Lcom/oneplus/gallery/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery/media/MediaSet;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 961
    sget-object v0, Lcom/oneplus/gallery/media/MediaSet;->PROP_COVER_HASH_CODE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetCoverHashCodeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery/media/MediaSet;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 962
    sget-object v0, Lcom/oneplus/gallery/media/MediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetNameChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery/media/MediaSet;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 964
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetCoverStatusTable:Ljava/util/Hashtable;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    return-void
.end method

.method private cancelCreatingCoverImage(Lcom/oneplus/gallery/media/MediaSet;)V
    .locals 2
    .param p1, "mediaSet"    # Lcom/oneplus/gallery/media/MediaSet;

    .prologue
    .line 2118
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverImageCreationTaskTable:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;

    .line 2119
    .local v0, "task":Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;
    if-eqz v0, :cond_0

    .line 2121
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverImageCreationTaskTable:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2122
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverImageCreationTaskList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 2123
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_ActiveCoverImageCreationTasks:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2124
    invoke-virtual {v0}, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->cancel()V

    .line 2125
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaSetListFragment;->scheduleCoverImageCreation()V

    .line 2127
    :cond_0
    return-void
.end method

.method private cancelCreatingCoverImages(Z)V
    .locals 6
    .param p1, "clearQueue"    # Z

    .prologue
    const/4 v4, 0x0

    .line 2134
    iget-boolean v2, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_IsCoverImageCreationScheduled:Z

    if-eqz v2, :cond_0

    .line 2136
    iput-boolean v4, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_IsCoverImageCreationScheduled:Z

    .line 2137
    invoke-virtual {p0}, Lcom/oneplus/gallery/MediaSetListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x2711

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2141
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_ActiveCoverImageCreationTasks:Ljava/util/Set;

    new-array v3, v4, [Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;

    .line 2142
    .local v0, "activeTasks":[Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_ActiveCoverImageCreationTasks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 2143
    array-length v2, v0

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 2145
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->cancel()V

    .line 2146
    if-nez p1, :cond_1

    .line 2147
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverImageCreationTaskList:Ljava/util/LinkedList;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 2143
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2149
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment;->TAG:Ljava/lang/String;

    const-string v3, "cancelCreatingCoverImages() - Cancelled "

    array-length v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, " tasks"

    invoke-static {v2, v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2152
    if-eqz p1, :cond_3

    .line 2154
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverImageCreationTaskList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 2155
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverImageCreationTaskTable:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 2157
    :cond_3
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment;->TAG:Ljava/lang/String;

    const-string v3, "cancelCreatingCoverImages() - "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverImageCreationTaskList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " remaining tasks in queue"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2158
    return-void
.end method

.method private static clearUselessImageCache(Lcom/oneplus/gallery/media/MediaSetList;)V
    .locals 12
    .param p0, "mediaSetList"    # Lcom/oneplus/gallery/media/MediaSetList;

    .prologue
    .line 824
    sget-object v0, Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    if-nez v0, :cond_0

    .line 877
    :goto_0
    return-void

    .line 827
    :cond_0
    if-nez p0, :cond_1

    .line 829
    const-string v0, "MediaSetListFragment"

    const-string v1, "clearUselessImageCache() - mediaSetList is null"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 833
    :cond_1
    const-string v0, "MediaSetListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearUselessImageCache() - Start, mediaSetList.size() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/oneplus/gallery/media/MediaSetList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 835
    .local v8, "startTime":J
    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 837
    .local v6, "count":[I
    sget-object v0, Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    new-instance v1, Lcom/oneplus/gallery/MediaSetListFragment$12;

    invoke-direct {v1, v8, v9, p0}, Lcom/oneplus/gallery/MediaSetListFragment$12;-><init>(JLcom/oneplus/gallery/media/MediaSetList;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/cache/HybridBitmapLruCache;->remove(Lcom/oneplus/cache/Cache$RemovingPredication;)V

    .line 875
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v10, v0, v8

    .line 876
    .local v10, "time":J
    const-string v0, "MediaSetListFragment"

    const-string v1, "clearUselessImageCache() - Take "

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, " ms to removed "

    const/4 v4, 0x0

    aget v4, v6, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, " invalid images"

    invoke-static/range {v0 .. v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private createCoverImage(Lcom/oneplus/gallery/media/MediaSet;Z)V
    .locals 3
    .param p1, "mediaSet"    # Lcom/oneplus/gallery/media/MediaSet;
    .param p2, "highPriority"    # Z

    .prologue
    .line 2164
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverImageCreationTaskTable:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;

    .line 2165
    .local v0, "task":Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;
    if-eqz v0, :cond_1

    .line 2167
    invoke-virtual {v0, p2}, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->setPriority(Z)V

    .line 2168
    invoke-virtual {v0}, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 2170
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverImageCreationTaskList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 2171
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverImageCreationTaskList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 2183
    :cond_0
    :goto_0
    return-void

    .line 2175
    :cond_1
    new-instance v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;

    .end local v0    # "task":Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;
    const/4 v1, 0x6

    const/4 v2, 0x2

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;-><init>(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/gallery/media/MediaSet;II)V

    .line 2176
    .restart local v0    # "task":Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;
    invoke-virtual {v0, p2}, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->setPriority(Z)V

    .line 2177
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverImageCreationTaskTable:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2178
    if-eqz p2, :cond_2

    .line 2179
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverImageCreationTaskList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 2182
    :goto_1
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaSetListFragment;->scheduleCoverImageCreation()V

    goto :goto_0

    .line 2181
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverImageCreationTaskList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private createCoverImages()V
    .locals 3

    .prologue
    .line 2189
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_IsCoverImageCreationScheduled:Z

    .line 2190
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverImageCreationTaskList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_ActiveCoverImageCreationTasks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 2192
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverImageCreationTaskList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;

    .line 2193
    .local v0, "task":Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_ActiveCoverImageCreationTasks:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2194
    invoke-virtual {v0}, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->createCoverImage()V

    .line 2195
    invoke-virtual {v0}, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2196
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_ActiveCoverImageCreationTasks:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2198
    .end local v0    # "task":Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;
    :cond_1
    return-void
.end method

.method private createMediaListCoverImage(Lcom/oneplus/gallery/media/MediaSet;ZZ)V
    .locals 16
    .param p1, "mediaSet"    # Lcom/oneplus/gallery/media/MediaSet;
    .param p2, "needToNotifyAdapter"    # Z
    .param p3, "isUrgent"    # Z

    .prologue
    .line 2467
    sget-object v2, Lcom/oneplus/gallery/MediaSetListFragment$21;->$SwitchMap$com$oneplus$base$BaseFragment$State:[I

    sget-object v1, Lcom/oneplus/gallery/MediaSetListFragment;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/MediaSetListFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/base/BaseFragment$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseFragment$State;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 2472
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/gallery/MediaSetListFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createMediaListCoverImage() - PROP_STATE : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/oneplus/gallery/MediaSetListFragment;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/oneplus/gallery/MediaSetListFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " , do nothing."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2600
    :cond_0
    :goto_0
    return-void

    .line 2476
    :pswitch_0
    if-nez p1, :cond_1

    .line 2478
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/gallery/MediaSetListFragment;->TAG:Ljava/lang/String;

    const-string v2, "createMediaListCoverImage() - mediaSet is null"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2479
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/gallery/MediaSetListFragment;->createMediaListCoverImageFromQueue()V

    goto :goto_0

    .line 2483
    :cond_1
    sget-object v1, Lcom/oneplus/gallery/media/MediaSet;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lcom/oneplus/gallery/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2485
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/gallery/MediaSetListFragment;->TAG:Ljava/lang/String;

    const-string v2, "createMediaListCoverImage() - mediaSet is released"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2486
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/gallery/MediaSetListFragment;->createMediaListCoverImageFromQueue()V

    goto :goto_0

    .line 2490
    :cond_2
    sget-object v1, Lcom/oneplus/gallery/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lcom/oneplus/gallery/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 2492
    .local v12, "mediaSetSize":Ljava/lang/Integer;
    if-nez v12, :cond_3

    .line 2494
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/gallery/MediaSetListFragment;->TAG:Ljava/lang/String;

    const-string v2, "createMediaListCoverImage() - mediaSetSize is null"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2495
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/gallery/MediaSetListFragment;->createMediaListCoverImageFromQueue()V

    goto :goto_0

    .line 2499
    :cond_3
    sget-object v1, Lcom/oneplus/gallery/media/MediaSet;->PROP_COVER_HASH_CODE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lcom/oneplus/gallery/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/oneplus/gallery/media/MediaSet;->PROP_COVER_HASH_CODE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lcom/oneplus/gallery/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v3, v1

    .line 2500
    .local v3, "mediaSetImageKey":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/gallery/MediaSetListFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createMediaListCoverImage() "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " - mediaSetSize is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2506
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_6

    .line 2508
    invoke-direct/range {p0 .. p1}, Lcom/oneplus/gallery/MediaSetListFragment;->removeImageInCache(Lcom/oneplus/gallery/media/MediaSet;)V

    .line 2510
    const/4 v10, 0x0

    .line 2511
    .local v10, "coverImageView":Landroid/widget/ImageView;
    invoke-direct/range {p0 .. p1}, Lcom/oneplus/gallery/MediaSetListFragment;->findItemViewForMediaSet(Lcom/oneplus/gallery/media/MediaSet;)Landroid/view/View;

    move-result-object v11

    .line 2512
    .local v11, "itemView":Landroid/view/View;
    if-eqz v11, :cond_4

    .line 2513
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;

    iget-object v10, v1, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    .line 2515
    :cond_4
    if-eqz v10, :cond_0

    .line 2517
    new-instance v1, Lcom/oneplus/gallery/MediaSetListFragment$EmptyCoverDrawable;

    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/oneplus/gallery/MediaSetListFragment;->m_IsBlackMode:Z

    invoke-direct {v1, v2, v4}, Lcom/oneplus/gallery/MediaSetListFragment$EmptyCoverDrawable;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2518
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2519
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v1}, Lcom/oneplus/gallery/MediaSetListFragment;->setItemImageViewBackgroundVisibility(Landroid/view/View;Z)V

    goto/16 :goto_0

    .line 2499
    .end local v3    # "mediaSetImageKey":Ljava/lang/String;
    .end local v10    # "coverImageView":Landroid/widget/ImageView;
    .end local v11    # "itemView":Landroid/view/View;
    :cond_5
    invoke-interface/range {p1 .. p1}, Lcom/oneplus/gallery/media/MediaSet;->getId()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 2526
    .restart local v3    # "mediaSetImageKey":Ljava/lang/String;
    :cond_6
    const/16 v6, 0xc

    .line 2527
    .local v6, "targetGridCount":I
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2529
    .local v5, "targetMediaCount":I
    const/4 v9, 0x6

    .line 2532
    .local v9, "gridPerRow":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/gallery/MediaSetListFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createMediaListCoverImage() - targetMediaCount is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2535
    new-instance v13, Lcom/oneplus/gallery/MediaSetListFragment$LoadCacheImageTask;

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/MediaSetListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v15

    new-instance v1, Lcom/oneplus/gallery/MediaSetListFragment$20;

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move/from16 v7, p3

    move/from16 v8, p2

    invoke-direct/range {v1 .. v9}, Lcom/oneplus/gallery/MediaSetListFragment$20;-><init>(Lcom/oneplus/gallery/MediaSetListFragment;Ljava/lang/String;Lcom/oneplus/gallery/media/MediaSet;IIZZI)V

    invoke-direct {v13, v3, v14, v15, v1}, Lcom/oneplus/gallery/MediaSetListFragment$LoadCacheImageTask;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/os/Handler;Lcom/oneplus/gallery/MediaSetListFragment$CacheImageLoadedCallback;)V

    .line 2599
    .local v13, "task":Lcom/oneplus/gallery/MediaSetListFragment$LoadCacheImageTask;
    sget-object v1, Lcom/oneplus/gallery/MediaSetListFragment;->m_CacheImageLoaderExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v13}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 2467
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private createMediaListCoverImageFromQueue()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2452
    invoke-direct {p0, v0, v0}, Lcom/oneplus/gallery/MediaSetListFragment;->createMediaListCoverImageFromQueue(ZZ)V

    .line 2453
    return-void
.end method

.method private createMediaListCoverImageFromQueue(ZZ)V
    .locals 1
    .param p1, "needToNotifyAdapter"    # Z
    .param p2, "isUrgent"    # Z

    .prologue
    .line 2457
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetDecodeQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2463
    :goto_0
    return-void

    .line 2462
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetDecodeQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/MediaSet;

    invoke-direct {p0, v0, p1, p2}, Lcom/oneplus/gallery/MediaSetListFragment;->createMediaListCoverImage(Lcom/oneplus/gallery/media/MediaSet;ZZ)V

    goto :goto_0
.end method

.method private decodeGridCoverImage(IIILcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/gallery/media/MediaList;ZZ)V
    .locals 28
    .param p1, "targetGridCount"    # I
    .param p2, "targetMediaCount"    # I
    .param p3, "gridPerRow"    # I
    .param p4, "mediaSet"    # Lcom/oneplus/gallery/media/MediaSet;
    .param p5, "mediaList"    # Lcom/oneplus/gallery/media/MediaList;
    .param p6, "isUrgent"    # Z
    .param p7, "needToNotifyAdapter"    # Z

    .prologue
    .line 2284
    if-eqz p5, :cond_0

    invoke-interface/range {p5 .. p5}, Lcom/oneplus/gallery/media/MediaList;->size()I

    move-result v4

    move/from16 v0, p2

    if-ge v4, v0, :cond_1

    .line 2286
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/MediaSetListFragment;->TAG:Ljava/lang/String;

    const-string v5, "decodeGridCoverImage() - mediaList is not ready"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2448
    :goto_0
    return-void

    .line 2293
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/oneplus/gallery/MediaSetListFragment;->getMediaSetImageKey(Lcom/oneplus/gallery/media/MediaSet;)Ljava/lang/String;

    move-result-object v13

    .line 2294
    .local v13, "imageKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetDecodingHandles:Ljava/util/Hashtable;

    invoke-virtual {v4, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/ArrayList;

    .line 2295
    .local v24, "mediaSetDecodingHandleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/base/Handle;>;"
    if-eqz v24, :cond_9

    .line 2297
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/oneplus/base/Handle;

    .line 2298
    .local v20, "handle":Lcom/oneplus/base/Handle;
    invoke-static/range {v20 .. v20}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_1

    .line 2299
    .end local v20    # "handle":Lcom/oneplus/base/Handle;
    :cond_2
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->clear()V

    .line 2306
    .end local v22    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/MediaSetListFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/MediaSetListFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v4

    sget-object v5, Lcom/oneplus/gallery/GalleryActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v5}, Lcom/oneplus/gallery/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/base/ScreenSize;

    invoke-virtual {v4}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/MediaSetListFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v4

    sget-object v8, Lcom/oneplus/gallery/GalleryActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v8}, Lcom/oneplus/gallery/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/base/ScreenSize;

    invoke-virtual {v4}, Lcom/oneplus/base/ScreenSize;->getHeight()I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 2307
    .local v10, "coverWidth":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/MediaSetListFragment;->m_Activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0500a7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 2308
    .local v17, "coverHeight":I
    mul-int v4, v10, v17

    div-int v4, v4, p1

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v9, v4

    .line 2309
    .local v9, "gridSize":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v17

    invoke-static {v10, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 2310
    .local v15, "gridCover":Landroid/graphics/Bitmap;
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v15}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2313
    .local v12, "canvas":Landroid/graphics/Canvas;
    const/16 v25, 0x0

    .line 2314
    .local v25, "targetCoverImageView":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/oneplus/gallery/MediaSetListFragment;->findItemViewForMediaSet(Lcom/oneplus/gallery/media/MediaSet;)Landroid/view/View;

    move-result-object v23

    .line 2315
    .local v23, "itemView":Landroid/view/View;
    if-eqz v23, :cond_3

    .line 2316
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;

    iget-object v0, v4, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    .line 2317
    :cond_3
    if-eqz v25, :cond_4

    .line 2320
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2321
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v4}, Lcom/oneplus/gallery/MediaSetListFragment;->setItemImageViewBackgroundVisibility(Landroid/view/View;Z)V

    .line 2325
    :cond_4
    if-eqz v25, :cond_5

    .line 2327
    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 2328
    .local v18, "drawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v18

    instance-of v4, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_5

    .line 2330
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v4, v5, v10, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2331
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2336
    .end local v18    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    const/16 v16, 0x0

    .line 2337
    .local v16, "backgorundColor":I
    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 2340
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/MediaSetListFragment;->m_ShadowPaint:Landroid/graphics/Paint;

    if-nez v4, :cond_6

    .line 2342
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/oneplus/gallery/MediaSetListFragment;->m_ShadowPaint:Landroid/graphics/Paint;

    .line 2343
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/MediaSetListFragment;->m_ShadowPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x1f000000

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 2346
    :cond_6
    new-instance v6, Lcom/oneplus/base/SimpleRef;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v6, v4}, Lcom/oneplus/base/SimpleRef;-><init>(Ljava/lang/Object;)V

    .line 2347
    .local v6, "completedMediaCountRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Integer;>;"
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_4
    move/from16 v0, v21

    move/from16 v1, p2

    if-ge v0, v1, :cond_b

    .line 2350
    move/from16 v7, v21

    .line 2352
    .local v7, "index":I
    const/16 v19, 0x1

    .line 2353
    .local v19, "flag":I
    if-eqz p6, :cond_7

    .line 2354
    or-int/lit8 v19, v19, 0x2

    .line 2356
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/MediaSetListFragment;->m_ThumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;

    if-eqz v4, :cond_8

    .line 2358
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/MediaSetListFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "decodeGridCoverImage() - decodeSmallThumbnailImage "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/oneplus/gallery/MediaSetListFragment;->getMediaSetImageKey(Lcom/oneplus/gallery/media/MediaSet;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment;->m_ThumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;

    move-object/from16 v27, v0

    move-object/from16 v0, p5

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/oneplus/gallery/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v26, v4

    check-cast v26, Lcom/oneplus/gallery/media/Media;

    new-instance v4, Lcom/oneplus/gallery/MediaSetListFragment$19;

    move-object/from16 v5, p0

    move-object/from16 v8, p4

    move/from16 v11, p3

    move/from16 v14, p2

    invoke-direct/range {v4 .. v15}, Lcom/oneplus/gallery/MediaSetListFragment$19;-><init>(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/base/Ref;ILcom/oneplus/gallery/media/MediaSet;IIILandroid/graphics/Canvas;Ljava/lang/String;ILandroid/graphics/Bitmap;)V

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/MediaSetListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v5

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    move/from16 v2, v19

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/oneplus/gallery/media/ThumbnailImageManager;->decodeSmallThumbnailImage(Lcom/oneplus/gallery/media/Media;ILcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v20

    .line 2442
    .restart local v20    # "handle":Lcom/oneplus/base/Handle;
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2347
    .end local v20    # "handle":Lcom/oneplus/base/Handle;
    :cond_8
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 2302
    .end local v6    # "completedMediaCountRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Integer;>;"
    .end local v7    # "index":I
    .end local v9    # "gridSize":I
    .end local v10    # "coverWidth":I
    .end local v12    # "canvas":Landroid/graphics/Canvas;
    .end local v15    # "gridCover":Landroid/graphics/Bitmap;
    .end local v16    # "backgorundColor":I
    .end local v17    # "coverHeight":I
    .end local v19    # "flag":I
    .end local v21    # "i":I
    .end local v23    # "itemView":Landroid/view/View;
    .end local v25    # "targetCoverImageView":Landroid/widget/ImageView;
    :cond_9
    new-instance v24, Ljava/util/ArrayList;

    .end local v24    # "mediaSetDecodingHandleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/base/Handle;>;"
    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .restart local v24    # "mediaSetDecodingHandleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/base/Handle;>;"
    goto/16 :goto_2

    .line 2306
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/MediaSetListFragment;->m_Activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/MediaSetListFragment;->m_Activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto/16 :goto_3

    .line 2446
    .restart local v6    # "completedMediaCountRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Integer;>;"
    .restart local v9    # "gridSize":I
    .restart local v10    # "coverWidth":I
    .restart local v12    # "canvas":Landroid/graphics/Canvas;
    .restart local v15    # "gridCover":Landroid/graphics/Bitmap;
    .restart local v16    # "backgorundColor":I
    .restart local v17    # "coverHeight":I
    .restart local v21    # "i":I
    .restart local v23    # "itemView":Landroid/view/View;
    .restart local v25    # "targetCoverImageView":Landroid/widget/ImageView;
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetDecodingHandles:Ljava/util/Hashtable;

    move-object/from16 v0, v24

    invoke-virtual {v4, v13, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method private decodeSingleCoverImage(Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/gallery/media/MediaList;ZZ)V
    .locals 12
    .param p1, "mediaSet"    # Lcom/oneplus/gallery/media/MediaSet;
    .param p2, "mediaList"    # Lcom/oneplus/gallery/media/MediaList;
    .param p3, "isUrgent"    # Z
    .param p4, "needToNotifyAdapter"    # Z

    .prologue
    .line 2203
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/oneplus/gallery/media/MediaList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2205
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->TAG:Ljava/lang/String;

    const-string v1, "decodeSingleCoverImage() - mediaList is not ready"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2280
    :goto_0
    return-void

    .line 2210
    :cond_1
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/MediaSetListFragment;->getMediaSetImageKey(Lcom/oneplus/gallery/media/MediaSet;)Ljava/lang/String;

    move-result-object v10

    .line 2211
    .local v10, "imageKey":Ljava/lang/String;
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetDecodingHandles:Ljava/util/Hashtable;

    invoke-virtual {v0, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 2212
    .local v11, "mediaSetDecodingHandleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/base/Handle;>;"
    if-eqz v11, :cond_4

    .line 2214
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/base/Handle;

    .line 2215
    .local v8, "handle":Lcom/oneplus/base/Handle;
    invoke-static {v8}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_1

    .line 2216
    .end local v8    # "handle":Lcom/oneplus/base/Handle;
    :cond_2
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2222
    .end local v9    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-virtual {p0}, Lcom/oneplus/gallery/MediaSetListFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/oneplus/gallery/MediaSetListFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery/GalleryActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/ScreenSize;

    invoke-virtual {v0}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/gallery/MediaSetListFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v0

    sget-object v6, Lcom/oneplus/gallery/GalleryActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v6}, Lcom/oneplus/gallery/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/ScreenSize;

    invoke-virtual {v0}, Lcom/oneplus/base/ScreenSize;->getHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2223
    .local v3, "coverWidth":I
    :goto_3
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_Activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 2225
    .local v4, "coverHeight":I
    const/4 v5, 0x1

    .line 2226
    .local v5, "flag":I
    if-eqz p3, :cond_3

    .line 2227
    or-int/lit8 v5, v5, 0x2

    .line 2229
    :cond_3
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/oneplus/gallery/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/oneplus/gallery/media/VideoMedia;

    if-eqz v0, :cond_6

    const/4 v2, 0x3

    .line 2231
    .local v2, "mediaType":I
    :goto_4
    sget-object v0, Lcom/oneplus/gallery/MediaSetListFragment;->m_CenterCropBitmapPool:Lcom/oneplus/media/BitmapPool;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lcom/oneplus/gallery/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/Media;

    invoke-interface {v1}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Lcom/oneplus/gallery/MediaSetListFragment$18;

    invoke-direct {v6, p0, p1, v10}, Lcom/oneplus/gallery/MediaSetListFragment$18;-><init>(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/gallery/media/MediaSet;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/gallery/MediaSetListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/oneplus/media/BitmapPool;->decode(Ljava/lang/String;IIIILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v8

    .line 2276
    .restart local v8    # "handle":Lcom/oneplus/base/Handle;
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2278
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetDecodingHandles:Ljava/util/Hashtable;

    invoke-virtual {v0, v10, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2219
    .end local v2    # "mediaType":I
    .end local v3    # "coverWidth":I
    .end local v4    # "coverHeight":I
    .end local v5    # "flag":I
    .end local v8    # "handle":Lcom/oneplus/base/Handle;
    :cond_4
    new-instance v11, Ljava/util/ArrayList;

    .end local v11    # "mediaSetDecodingHandleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/base/Handle;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .restart local v11    # "mediaSetDecodingHandleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/base/Handle;>;"
    goto :goto_2

    .line 2222
    :cond_5
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_Activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_Activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_3

    .line 2229
    .restart local v3    # "coverWidth":I
    .restart local v4    # "coverHeight":I
    .restart local v5    # "flag":I
    :cond_6
    const/4 v2, 0x1

    goto :goto_4
.end method

.method private detachFromMediaSet(Lcom/oneplus/gallery/media/MediaSet;)V
    .locals 2
    .param p1, "set"    # Lcom/oneplus/gallery/media/MediaSet;

    .prologue
    .line 980
    sget-object v0, Lcom/oneplus/gallery/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery/media/MediaSet;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 981
    sget-object v0, Lcom/oneplus/gallery/media/MediaSet;->PROP_COVER_HASH_CODE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetCoverHashCodeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery/media/MediaSet;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 982
    sget-object v0, Lcom/oneplus/gallery/media/MediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetNameChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery/media/MediaSet;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 985
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/MediaSetListFragment;->cancelCreatingCoverImage(Lcom/oneplus/gallery/media/MediaSet;)V

    .line 988
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_SelectedMediaSet:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 989
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/MediaSetListFragment;->updateSelectedMediaSet(Lcom/oneplus/gallery/media/MediaSet;)V

    .line 990
    :cond_0
    return-void
.end method

.method private findItemViewForMediaSet(Lcom/oneplus/gallery/media/MediaSet;)Landroid/view/View;
    .locals 5
    .param p1, "mediaSet"    # Lcom/oneplus/gallery/media/MediaSet;

    .prologue
    const/4 v3, 0x0

    .line 882
    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetListView:Landroid/widget/ListView;

    if-nez v4, :cond_1

    move-object v1, v3

    .line 891
    :cond_0
    :goto_0
    return-object v1

    .line 884
    :cond_1
    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 886
    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetListView:Landroid/widget/ListView;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 887
    .local v1, "itemView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 888
    .local v2, "tag":Ljava/lang/Object;
    instance-of v4, v2, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;

    if-eqz v4, :cond_2

    check-cast v2, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;

    .end local v2    # "tag":Ljava/lang/Object;
    iget-object v4, v2, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    if-eq v4, p1, :cond_0

    .line 884
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v1    # "itemView":Landroid/view/View;
    :cond_3
    move-object v1, v3

    .line 891
    goto :goto_0
.end method

.method private getMediaSetImageKey(Lcom/oneplus/gallery/media/MediaSet;)Ljava/lang/String;
    .locals 1
    .param p1, "mediaSet"    # Lcom/oneplus/gallery/media/MediaSet;

    .prologue
    .line 2604
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/gallery/MediaSetListFragment;->getMediaSetImageKey(Lcom/oneplus/gallery/media/MediaSet;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMediaSetImageKey(Lcom/oneplus/gallery/media/MediaSet;Z)Ljava/lang/String;
    .locals 6
    .param p1, "mediaSet"    # Lcom/oneplus/gallery/media/MediaSet;
    .param p2, "idOnly"    # Z

    .prologue
    .line 2608
    if-nez p1, :cond_0

    .line 2609
    const/4 v1, 0x0

    .line 2613
    :goto_0
    return-object v1

    .line 2610
    :cond_0
    if-eqz p2, :cond_2

    invoke-interface {p1}, Lcom/oneplus/gallery/media/MediaSet;->getId()Ljava/lang/String;

    move-result-object v0

    .line 2611
    .local v0, "key":Ljava/lang/String;
    :goto_1
    if-nez v0, :cond_1

    .line 2612
    invoke-interface {p1}, Lcom/oneplus/gallery/media/MediaSet;->getId()Ljava/lang/String;

    move-result-object v0

    .line 2613
    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "(%x)%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverBackgroundColor:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2610
    .end local v0    # "key":Ljava/lang/String;
    :cond_2
    sget-object v1, Lcom/oneplus/gallery/media/MediaSet;->PROP_COVER_HASH_CODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v1}, Lcom/oneplus/gallery/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    goto :goto_1
.end method

.method private initializeCoverImageCache(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 969
    sget-object v0, Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    if-nez v0, :cond_0

    .line 972
    new-instance v1, Lcom/oneplus/cache/HybridBitmapLruCache;

    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v2

    const-string v3, "MediaSetCoverImage"

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const-wide/32 v6, 0x1400000

    const-wide/32 v8, 0xc800000

    invoke-direct/range {v1 .. v9}, Lcom/oneplus/cache/HybridBitmapLruCache;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap$CompressFormat;JJ)V

    sput-object v1, Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    .line 974
    :cond_0
    return-void
.end method

.method private obtainEmptyCoverImage()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 996
    const/4 v0, 0x0

    .line 997
    .local v0, "coverImage":Landroid/graphics/Bitmap;
    :goto_0
    sget-object v1, Lcom/oneplus/gallery/MediaSetListFragment;->m_EmptyCoverImagePool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 999
    sget-object v1, Lcom/oneplus/gallery/MediaSetListFragment;->m_EmptyCoverImagePool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "coverImage":Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 1000
    .restart local v0    # "coverImage":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverImageWidth:I

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverImageHeight:I

    if-ne v1, v2, :cond_2

    .line 1008
    :cond_0
    if-nez v0, :cond_1

    .line 1012
    iget v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverImageWidth:I

    iget v2, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverImageHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1014
    :cond_1
    iget v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1015
    return-object v0

    .line 1006
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCoverImageCreationCompleted(Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;)V
    .locals 3
    .param p1, "task"    # Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_ActiveCoverImageCreationTasks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1049
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCoverImageCreationCompleted() - Task for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    invoke-interface {v2}, Lcom/oneplus/gallery/media/MediaSet;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been cancelled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    :goto_0
    return-void

    .line 1054
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverImageCreationTaskTable:Ljava/util/Map;

    iget-object v1, p1, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaSetListFragment;->scheduleCoverImageCreation()V

    goto :goto_0
.end method

.method private onCoverImageUpdated(Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;Landroid/graphics/Bitmap;Z)V
    .locals 5
    .param p1, "task"    # Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;
    .param p2, "coverImage"    # Landroid/graphics/Bitmap;
    .param p3, "isRecyclableImage"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1062
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_ActiveCoverImageCreationTasks:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1064
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCoverImageUpdated() - Task for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    invoke-interface {v4}, Lcom/oneplus/gallery/media/MediaSet;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has been cancelled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    .end local p2    # "coverImage":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 1067
    .restart local p2    # "coverImage":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v2, p1, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/MediaSetListFragment;->findItemViewForMediaSet(Lcom/oneplus/gallery/media/MediaSet;)Landroid/view/View;

    move-result-object v1

    .line 1068
    .local v1, "itemView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1070
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;

    iget-object v0, v2, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    .line 1071
    .local v0, "coverImageView":Landroid/widget/ImageView;
    if-eqz p3, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    .end local p2    # "coverImage":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1072
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1073
    invoke-direct {p0, v0, v3}, Lcom/oneplus/gallery/MediaSetListFragment;->setItemImageViewBackgroundVisibility(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private onMediaCountChanged(Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 11
    .param p1, "mediaSet"    # Lcom/oneplus/gallery/media/MediaSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery/media/MediaSet;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Integer;>;"
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1171
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/MediaSetListFragment;->findItemViewForMediaSet(Lcom/oneplus/gallery/media/MediaSet;)Landroid/view/View;

    move-result-object v0

    .line 1172
    .local v0, "convertView":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 1174
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;

    .line 1175
    .local v5, "viewInfo":Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;
    iget-object v6, v5, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1178
    sget-object v6, Lcom/oneplus/gallery/media/MediaSet;->PROP_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v6}, Lcom/oneplus/gallery/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1179
    .local v1, "photoCount":Ljava/lang/Integer;
    sget-object v6, Lcom/oneplus/gallery/media/MediaSet;->PROP_VIDEO_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v6}, Lcom/oneplus/gallery/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1181
    .local v3, "videoCount":Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 1182
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1184
    :cond_0
    if-nez v3, :cond_1

    .line 1185
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1190
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gt v6, v9, :cond_3

    .line 1191
    const v6, 0x7f09007d

    invoke-virtual {p0, v6}, Lcom/oneplus/gallery/MediaSetListFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v1, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1195
    .local v2, "photoCountStr":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gt v6, v9, :cond_4

    .line 1196
    const v6, 0x7f09007f

    invoke-virtual {p0, v6}, Lcom/oneplus/gallery/MediaSetListFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v3, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1200
    .local v4, "videoCountStr":Ljava/lang/String;
    :goto_1
    iget-object v6, v5, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->mediaCountText:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1201
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_5

    .line 1202
    iget-object v6, v5, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->mediaCountText:Landroid/widget/TextView;

    const v7, 0x7f090081

    invoke-virtual {p0, v7}, Lcom/oneplus/gallery/MediaSetListFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v10

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1211
    :goto_2
    invoke-virtual {p2}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_2

    .line 1213
    iget-object v6, v5, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    new-instance v7, Lcom/oneplus/gallery/MediaSetListFragment$EmptyCoverDrawable;

    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v8

    iget-boolean v9, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_IsBlackMode:Z

    invoke-direct {v7, v8, v9}, Lcom/oneplus/gallery/MediaSetListFragment$EmptyCoverDrawable;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1214
    iget-object v6, v5, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1215
    iget-object v6, v5, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    invoke-direct {p0, v6, v10}, Lcom/oneplus/gallery/MediaSetListFragment;->setItemImageViewBackgroundVisibility(Landroid/view/View;Z)V

    .line 1220
    .end local v1    # "photoCount":Ljava/lang/Integer;
    .end local v2    # "photoCountStr":Ljava/lang/String;
    .end local v3    # "videoCount":Ljava/lang/Integer;
    .end local v4    # "videoCountStr":Ljava/lang/String;
    .end local v5    # "viewInfo":Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;
    :cond_2
    return-void

    .line 1193
    .restart local v1    # "photoCount":Ljava/lang/Integer;
    .restart local v3    # "videoCount":Ljava/lang/Integer;
    .restart local v5    # "viewInfo":Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;
    :cond_3
    const v6, 0x7f09007e

    invoke-virtual {p0, v6}, Lcom/oneplus/gallery/MediaSetListFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v1, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "photoCountStr":Ljava/lang/String;
    goto :goto_0

    .line 1198
    :cond_4
    const v6, 0x7f090080

    invoke-virtual {p0, v6}, Lcom/oneplus/gallery/MediaSetListFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v3, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "videoCountStr":Ljava/lang/String;
    goto :goto_1

    .line 1203
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_6

    .line 1204
    iget-object v6, v5, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->mediaCountText:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1205
    :cond_6
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_7

    .line 1206
    iget-object v6, v5, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->mediaCountText:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1208
    :cond_7
    iget-object v6, v5, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->mediaCountText:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private onMediaSetAdded(Lcom/oneplus/gallery/ListChangeEventArgs;)V
    .locals 4
    .param p1, "e"    # Lcom/oneplus/gallery/ListChangeEventArgs;

    .prologue
    .line 1242
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    invoke-interface {v2}, Lcom/oneplus/gallery/media/MediaSetList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1244
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_EmptyAlbumView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1245
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_EmptyAlbumView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1249
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/gallery/ListChangeEventArgs;->getStartIndex()I

    move-result v1

    .local v1, "i":I
    invoke-virtual {p1}, Lcom/oneplus/gallery/ListChangeEventArgs;->getEndIndex()I

    move-result v0

    .local v0, "end":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 1250
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    invoke-interface {v2, v1}, Lcom/oneplus/gallery/media/MediaSetList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery/media/MediaSet;

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/MediaSetListFragment;->attachToMediaSet(Lcom/oneplus/gallery/media/MediaSet;)V

    .line 1249
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1251
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetListAdapter:Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;

    if-eqz v2, :cond_2

    .line 1252
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetListAdapter:Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;

    invoke-virtual {v2}, Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;->notifyDataSetChanged()V

    .line 1253
    :cond_2
    return-void
.end method

.method private onMediaSetCoverHashCodeChanged(Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 8
    .param p1, "mediaSet"    # Lcom/oneplus/gallery/media/MediaSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery/media/MediaSet;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/String;>;"
    const/4 v7, 0x1

    .line 1226
    invoke-virtual {p2}, Lcom/oneplus/base/PropertyChangeEventArgs;->getOldValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1227
    .local v1, "prevHashCode":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1229
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "(%x)%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverBackgroundColor:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    aput-object v1, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1230
    .local v0, "imageHashCode":Ljava/lang/String;
    sget-object v2, Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    invoke-virtual {v2, v0}, Lcom/oneplus/cache/HybridBitmapLruCache;->remove(Ljava/io/Serializable;)Z

    .line 1232
    .end local v0    # "imageHashCode":Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    invoke-direct {p0, p1, v7}, Lcom/oneplus/gallery/MediaSetListFragment;->getMediaSetImageKey(Lcom/oneplus/gallery/media/MediaSet;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/cache/HybridBitmapLruCache;->remove(Ljava/io/Serializable;)Z

    .line 1233
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/MediaSetListFragment;->cancelCreatingCoverImage(Lcom/oneplus/gallery/media/MediaSet;)V

    .line 1234
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/MediaSetListFragment;->updateMediaSetItem(Lcom/oneplus/gallery/media/MediaSet;)V

    .line 1235
    return-void
.end method

.method private onMediaSetListReady()V
    .locals 2

    .prologue
    .line 1259
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->TAG:Ljava/lang/String;

    const-string v1, "onMediaSetListReady()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_EmptyAlbumView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1268
    :cond_0
    :goto_0
    return-void

    .line 1264
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    invoke-interface {v0}, Lcom/oneplus/gallery/media/MediaSetList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1265
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_EmptyAlbumView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1267
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_EmptyAlbumView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private onMediaSetMoved()V
    .locals 1

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetListAdapter:Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;

    if-eqz v0, :cond_0

    .line 1275
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetListAdapter:Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;

    invoke-virtual {v0}, Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;->notifyDataSetChanged()V

    .line 1276
    :cond_0
    return-void
.end method

.method private onMediaSetNameChanged(Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 1
    .param p1, "mediaSet"    # Lcom/oneplus/gallery/media/MediaSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery/media/MediaSet;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1282
    .local p2, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetListAdapter:Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;

    if-eqz v0, :cond_0

    .line 1283
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetListAdapter:Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;

    invoke-virtual {v0}, Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;->notifyDataSetInvalidated()V

    .line 1284
    :cond_0
    return-void
.end method

.method private onMediaSetRemoved(Lcom/oneplus/gallery/ListChangeEventArgs;)V
    .locals 2
    .param p1, "e"    # Lcom/oneplus/gallery/ListChangeEventArgs;

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    invoke-interface {v0}, Lcom/oneplus/gallery/media/MediaSetList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1292
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_EmptyAlbumView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1293
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_EmptyAlbumView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1295
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetListAdapter:Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;

    if-eqz v0, :cond_2

    .line 1296
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetListAdapter:Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;

    invoke-virtual {v0}, Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;->notifyDataSetChanged()V

    .line 1297
    :cond_2
    return-void
.end method

.method private onMediaSetRemoving(Lcom/oneplus/gallery/ListChangeEventArgs;)V
    .locals 3
    .param p1, "e"    # Lcom/oneplus/gallery/ListChangeEventArgs;

    .prologue
    .line 1303
    invoke-virtual {p1}, Lcom/oneplus/gallery/ListChangeEventArgs;->getStartIndex()I

    move-result v1

    .local v1, "i":I
    invoke-virtual {p1}, Lcom/oneplus/gallery/ListChangeEventArgs;->getEndIndex()I

    move-result v0

    .local v0, "end":I
    :goto_0
    if-gt v1, v0, :cond_0

    .line 1304
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    invoke-interface {v2, v1}, Lcom/oneplus/gallery/media/MediaSetList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery/media/MediaSet;

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/MediaSetListFragment;->detachFromMediaSet(Lcom/oneplus/gallery/media/MediaSet;)V

    .line 1303
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1305
    :cond_0
    return-void
.end method

.method private onSelectionModeChanged(Z)V
    .locals 2
    .param p1, "isSelectionMode"    # Z

    .prologue
    .line 1449
    if-eqz p1, :cond_1

    .line 1452
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/MediaSetListFragment;->setToolBarVisibility(Z)V

    .line 1455
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_Toolbar:Landroid/widget/Toolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_SelectedMediaSet:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1456
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_Toolbar:Landroid/widget/Toolbar;

    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_SelectedMediaSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1472
    :cond_0
    :goto_0
    return-void

    .line 1461
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_SelectedMediaSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1463
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_SelectedMediaSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1465
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetListAdapter:Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;

    if-eqz v0, :cond_2

    .line 1466
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetListAdapter:Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;

    invoke-virtual {v0}, Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;->notifyDataSetChanged()V

    .line 1470
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/MediaSetListFragment;->setToolBarVisibility(Z)V

    goto :goto_0
.end method

.method private onVisibleMediaSetsChanged()V
    .locals 22

    .prologue
    .line 1492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    .line 1597
    :cond_0
    :goto_0
    return-void

    .line 1494
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ListView;->getChildCount()I

    move-result v14

    .line 1495
    .local v14, "viewCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/oneplus/gallery/media/MediaSetList;->size()I

    move-result v19

    add-int/lit8 v10, v19, -0x1

    .line 1497
    .local v10, "maxMediaSetIndex":I
    if-lez v14, :cond_a

    .line 1499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;

    .line 1500
    .local v15, "viewInfo":Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;
    iget v4, v15, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->position:I

    .line 1501
    .local v4, "firstVisibleIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    add-int/lit8 v20, v14, -0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "viewInfo":Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;
    check-cast v15, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;

    .line 1502
    .restart local v15    # "viewInfo":Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;
    iget v9, v15, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->position:I

    .line 1511
    .end local v15    # "viewInfo":Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;
    .local v9, "lastVisibleIndex":I
    :goto_1
    if-ltz v10, :cond_b

    .line 1513
    if-gez v4, :cond_2

    .line 1514
    const/4 v4, 0x0

    .line 1515
    :cond_2
    if-gez v9, :cond_3

    .line 1516
    const/4 v9, 0x0

    .line 1517
    :cond_3
    if-le v4, v10, :cond_4

    .line 1518
    move v4, v10

    .line 1519
    :cond_4
    if-le v9, v10, :cond_5

    .line 1520
    move v9, v10

    .line 1533
    :cond_5
    :goto_2
    sget-object v20, Lcom/oneplus/gallery/MediaSetListFragment$21;->$SwitchMap$com$oneplus$base$BaseFragment$State:[I

    sget-object v19, Lcom/oneplus/gallery/MediaSetListFragment;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/MediaSetListFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/oneplus/base/BaseFragment$State;

    invoke-virtual/range {v19 .. v19}, Lcom/oneplus/base/BaseFragment$State;->ordinal()I

    move-result v19

    aget v19, v20, v19

    packed-switch v19, :pswitch_data_0

    .line 1540
    const/16 v17, 0x0

    .line 1543
    .local v17, "windowSize":I
    :goto_3
    sub-int v18, v4, v17

    .line 1544
    .local v18, "windowStartIndex":I
    add-int v16, v9, v17

    .line 1545
    .local v16, "windowEndIndex":I
    if-gez v18, :cond_6

    .line 1547
    sub-int v16, v16, v18

    .line 1548
    const/16 v18, 0x0

    .line 1549
    move/from16 v0, v16

    if-le v0, v10, :cond_6

    .line 1550
    move/from16 v16, v10

    .line 1552
    :cond_6
    move/from16 v0, v16

    if-le v0, v10, :cond_7

    .line 1554
    sub-int v19, v16, v10

    sub-int v18, v18, v19

    .line 1555
    move/from16 v16, v10

    .line 1556
    if-gez v18, :cond_7

    .line 1557
    const/16 v18, 0x0

    .line 1561
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment;->m_ActiveCoverImageCreationTasks:Ljava/util/Set;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 1562
    .local v13, "taskIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;>;"
    :cond_8
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_c

    .line 1564
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;

    .line 1565
    .local v12, "task":Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    move-object/from16 v19, v0

    iget-object v0, v12, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/oneplus/gallery/media/MediaSetList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 1566
    .local v8, "index":I
    move/from16 v0, v18

    if-lt v8, v0, :cond_9

    move/from16 v0, v16

    if-le v8, v0, :cond_8

    .line 1568
    :cond_9
    invoke-interface {v13}, Ljava/util/Iterator;->remove()V

    .line 1569
    invoke-virtual {v12}, Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;->cancel()V

    goto :goto_4

    .line 1506
    .end local v4    # "firstVisibleIndex":I
    .end local v8    # "index":I
    .end local v9    # "lastVisibleIndex":I
    .end local v12    # "task":Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;
    .end local v13    # "taskIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;>;"
    .end local v16    # "windowEndIndex":I
    .end local v17    # "windowSize":I
    .end local v18    # "windowStartIndex":I
    :cond_a
    const/4 v4, 0x0

    .line 1507
    .restart local v4    # "firstVisibleIndex":I
    const/4 v9, 0x0

    .restart local v9    # "lastVisibleIndex":I
    goto :goto_1

    .line 1526
    :cond_b
    const/4 v4, 0x0

    .line 1527
    const/4 v9, 0x0

    .line 1528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "onVisibleMediaSetsChanged() - maxMediaSetIndex:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1537
    :pswitch_0
    const/16 v17, 0x3

    .line 1538
    .restart local v17    # "windowSize":I
    goto :goto_3

    .line 1574
    .restart local v13    # "taskIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oneplus/gallery/MediaSetListFragment$CoverImageCreationTask;>;"
    .restart local v16    # "windowEndIndex":I
    .restart local v18    # "windowStartIndex":I
    :cond_c
    add-int/lit8 v2, v4, -0x1

    .local v2, "backwardIndex":I
    move v3, v2

    .line 1575
    .end local v2    # "backwardIndex":I
    .local v3, "backwardIndex":I
    :goto_5
    move/from16 v0, v18

    if-lt v3, v0, :cond_d

    .line 1577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    move-object/from16 v19, v0

    add-int/lit8 v2, v3, -0x1

    .end local v3    # "backwardIndex":I
    .restart local v2    # "backwardIndex":I
    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Lcom/oneplus/gallery/media/MediaSetList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/oneplus/gallery/media/MediaSet;

    .line 1578
    .local v11, "mediaSet":Lcom/oneplus/gallery/media/MediaSet;
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v11, v1}, Lcom/oneplus/gallery/MediaSetListFragment;->createCoverImage(Lcom/oneplus/gallery/media/MediaSet;Z)V

    move v3, v2

    .line 1579
    .end local v2    # "backwardIndex":I
    .restart local v3    # "backwardIndex":I
    goto :goto_5

    .line 1580
    .end local v11    # "mediaSet":Lcom/oneplus/gallery/media/MediaSet;
    :cond_d
    add-int/lit8 v5, v9, 0x1

    .local v5, "forwardIndex":I
    move v6, v5

    .line 1581
    .end local v5    # "forwardIndex":I
    .local v6, "forwardIndex":I
    :goto_6
    move/from16 v0, v16

    if-gt v6, v0, :cond_e

    .line 1583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    move-object/from16 v19, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "forwardIndex":I
    .restart local v5    # "forwardIndex":I
    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Lcom/oneplus/gallery/media/MediaSetList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/oneplus/gallery/media/MediaSet;

    .line 1584
    .restart local v11    # "mediaSet":Lcom/oneplus/gallery/media/MediaSet;
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v11, v1}, Lcom/oneplus/gallery/MediaSetListFragment;->createCoverImage(Lcom/oneplus/gallery/media/MediaSet;Z)V

    move v6, v5

    .line 1585
    .end local v5    # "forwardIndex":I
    .restart local v6    # "forwardIndex":I
    goto :goto_6

    .line 1586
    .end local v11    # "mediaSet":Lcom/oneplus/gallery/media/MediaSet;
    :cond_e
    if-ltz v10, :cond_f

    .line 1588
    move v7, v4

    .local v7, "i":I
    :goto_7
    if-gt v7, v9, :cond_f

    .line 1590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Lcom/oneplus/gallery/media/MediaSetList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/oneplus/gallery/media/MediaSet;

    .line 1591
    .restart local v11    # "mediaSet":Lcom/oneplus/gallery/media/MediaSet;
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v11, v1}, Lcom/oneplus/gallery/MediaSetListFragment;->createCoverImage(Lcom/oneplus/gallery/media/MediaSet;Z)V

    .line 1588
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 1596
    .end local v7    # "i":I
    .end local v11    # "mediaSet":Lcom/oneplus/gallery/media/MediaSet;
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/gallery/MediaSetListFragment;->scheduleCoverImageCreation()V

    goto/16 :goto_0

    .line 1533
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private recycleCoverImage(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "coverImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1603
    if-nez p1, :cond_1

    .line 1616
    :cond_0
    :goto_0
    return-void

    .line 1605
    :cond_1
    sget-object v0, Lcom/oneplus/gallery/MediaSetListFragment;->m_EmptyCoverImagePool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverImageWidth:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverImageHeight:I

    if-ne v0, v1, :cond_0

    .line 1611
    sget-object v0, Lcom/oneplus/gallery/MediaSetListFragment;->m_EmptyCoverImagePool:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private removeImageInCache(Lcom/oneplus/gallery/media/MediaSet;)V
    .locals 2
    .param p1, "mediaSet"    # Lcom/oneplus/gallery/media/MediaSet;

    .prologue
    .line 2618
    sget-object v0, Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    invoke-direct {p0, p1}, Lcom/oneplus/gallery/MediaSetListFragment;->getMediaSetImageKey(Lcom/oneplus/gallery/media/MediaSet;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/cache/HybridBitmapLruCache;->remove(Ljava/io/Serializable;)Z

    .line 2619
    sget-object v0, Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/oneplus/gallery/MediaSetListFragment;->getMediaSetImageKey(Lcom/oneplus/gallery/media/MediaSet;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/cache/HybridBitmapLruCache;->remove(Ljava/io/Serializable;)Z

    .line 2620
    return-void
.end method

.method private reportScrollOffsets()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 1621
    iget v4, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_ScrollOffsetY:I

    .line 1622
    .local v4, "prevY":I
    iget-object v7, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetListView:Landroid/widget/ListView;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_3

    .line 1624
    iget-object v7, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 1625
    .local v1, "firstPosition":I
    iget-object v7, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetListView:Landroid/widget/ListView;

    invoke-virtual {v7, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1626
    .local v3, "itemView":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;

    .line 1627
    .local v5, "viewInfo":Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;
    iget v7, v5, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->position:I

    if-eq v7, v1, :cond_0

    .line 1629
    const/4 v3, 0x0

    .line 1630
    const/4 v2, 0x1

    .local v2, "i":I
    iget-object v7, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1632
    iget-object v7, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetListView:Landroid/widget/ListView;

    invoke-virtual {v7, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1633
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "viewInfo":Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;
    check-cast v5, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;

    .line 1634
    .restart local v5    # "viewInfo":Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;
    iget v7, v5, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->position:I

    if-ne v7, v1, :cond_2

    .line 1639
    .end local v0    # "count":I
    .end local v2    # "i":I
    :cond_0
    neg-int v7, v1

    iget v8, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetItemHeight:I

    mul-int/2addr v7, v8

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    :cond_1
    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_ScrollOffsetY:I

    .line 1643
    .end local v1    # "firstPosition":I
    .end local v3    # "itemView":Landroid/view/View;
    .end local v5    # "viewInfo":Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;
    :goto_1
    sget-object v6, Lcom/oneplus/gallery/MediaSetListFragment;->PROP_SCROLL_OFFSET_Y:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_ScrollOffsetY:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/oneplus/gallery/MediaSetListFragment;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1644
    return-void

    .line 1636
    .restart local v0    # "count":I
    .restart local v1    # "firstPosition":I
    .restart local v2    # "i":I
    .restart local v3    # "itemView":Landroid/view/View;
    .restart local v5    # "viewInfo":Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;
    :cond_2
    const/4 v3, 0x0

    .line 1630
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1642
    .end local v0    # "count":I
    .end local v1    # "firstPosition":I
    .end local v2    # "i":I
    .end local v3    # "itemView":Landroid/view/View;
    .end local v5    # "viewInfo":Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;
    :cond_3
    iput v6, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_ScrollOffsetY:I

    goto :goto_1
.end method

.method private scheduleCoverImageCreation()V
    .locals 2

    .prologue
    .line 1650
    iget-boolean v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_IsCoverImageCreationScheduled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverImageCreationTaskList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/gallery/MediaSetListFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1654
    sget-object v1, Lcom/oneplus/gallery/MediaSetListFragment$21;->$SwitchMap$com$oneplus$base$BaseFragment$State:[I

    sget-object v0, Lcom/oneplus/gallery/MediaSetListFragment;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/MediaSetListFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/BaseFragment$State;

    invoke-virtual {v0}, Lcom/oneplus/base/BaseFragment$State;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1665
    :cond_0
    :goto_0
    return-void

    .line 1662
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_IsCoverImageCreationScheduled:Z

    .line 1663
    invoke-virtual {p0}, Lcom/oneplus/gallery/MediaSetListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1654
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setItemImageViewBackgroundVisibility(Landroid/view/View;Z)V
    .locals 2
    .param p1, "imageView"    # Landroid/view/View;
    .param p2, "isVisible"    # Z

    .prologue
    .line 1706
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/gallery/MediaSetListFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1712
    :cond_0
    :goto_0
    return-void

    .line 1711
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/gallery/MediaSetListFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v0

    const-string v1, "media_set_list_item_cover_media_background"

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private setMediaSetList(Lcom/oneplus/gallery/media/MediaSetList;)Z
    .locals 8
    .param p1, "newList"    # Lcom/oneplus/gallery/media/MediaSetList;

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 1722
    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetListFragment;->TAG:Ljava/lang/String;

    const-string v5, "setMediaSetList()"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1724
    if-nez p1, :cond_0

    .line 1726
    new-instance v2, Lcom/oneplus/gallery/MediaSetListFragment$ClearCacheTask;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/oneplus/gallery/MediaSetListFragment$ClearCacheTask;-><init>(Lcom/oneplus/gallery/MediaSetListFragment$1;)V

    .line 1727
    .local v2, "task":Lcom/oneplus/gallery/MediaSetListFragment$ClearCacheTask;
    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    aput-object v6, v5, v3

    invoke-virtual {v2, v4, v5}, Lcom/oneplus/gallery/MediaSetListFragment$ClearCacheTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1730
    .end local v2    # "task":Lcom/oneplus/gallery/MediaSetListFragment$ClearCacheTask;
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    .line 1731
    .local v1, "oldList":Lcom/oneplus/gallery/media/MediaSetList;
    iput-object p1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    .line 1732
    if-ne v1, p1, :cond_1

    .line 1775
    :goto_0
    return v3

    .line 1736
    :cond_1
    invoke-direct {p0, v7}, Lcom/oneplus/gallery/MediaSetListFragment;->cancelCreatingCoverImages(Z)V

    .line 1739
    if-eqz v1, :cond_2

    .line 1741
    sget-object v3, Lcom/oneplus/gallery/media/MediaSetList;->PROP_IS_READY:Lcom/oneplus/base/PropertyKey;

    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetListReadyChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v1, v3, v4}, Lcom/oneplus/gallery/media/MediaSetList;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1742
    sget-object v3, Lcom/oneplus/gallery/media/MediaSetList;->EVENT_MEDIA_SET_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v1, v3, v4}, Lcom/oneplus/gallery/media/MediaSetList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1743
    sget-object v3, Lcom/oneplus/gallery/media/MediaSetList;->EVENT_MEDIA_SET_MOVED:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetMovedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v1, v3, v4}, Lcom/oneplus/gallery/media/MediaSetList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1744
    sget-object v3, Lcom/oneplus/gallery/media/MediaSetList;->EVENT_MEDIA_SET_REMOVED:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetRemovedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v1, v3, v4}, Lcom/oneplus/gallery/media/MediaSetList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1745
    sget-object v3, Lcom/oneplus/gallery/media/MediaSetList;->EVENT_MEDIA_SET_REMOVING:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetRemovingHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v1, v3, v4}, Lcom/oneplus/gallery/media/MediaSetList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1746
    invoke-interface {v1}, Lcom/oneplus/gallery/media/MediaSetList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 1747
    invoke-interface {v1, v0}, Lcom/oneplus/gallery/media/MediaSetList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/media/MediaSet;

    invoke-direct {p0, v3}, Lcom/oneplus/gallery/MediaSetListFragment;->detachFromMediaSet(Lcom/oneplus/gallery/media/MediaSet;)V

    .line 1746
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1750
    .end local v0    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetCoverStatusTable:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->clear()V

    .line 1752
    if-nez p1, :cond_5

    .line 1753
    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetListFragment;->TAG:Ljava/lang/String;

    const-string v4, "setMediaSetList() - newList is null"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1772
    :cond_3
    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetListAdapter:Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;

    if-eqz v3, :cond_4

    .line 1773
    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetListAdapter:Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;

    invoke-virtual {v3}, Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;->notifyDataSetChanged()V

    .line 1775
    :cond_4
    sget-object v3, Lcom/oneplus/gallery/MediaSetListFragment;->PROP_MEDIA_SET_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3, v1, p1}, Lcom/oneplus/gallery/MediaSetListFragment;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    .line 1757
    :cond_5
    sget-object v3, Lcom/oneplus/gallery/media/MediaSetList;->PROP_IS_READY:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v3}, Lcom/oneplus/gallery/media/MediaSetList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1758
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaSetListFragment;->onMediaSetListReady()V

    .line 1761
    :goto_2
    sget-object v3, Lcom/oneplus/gallery/media/MediaSetList;->EVENT_MEDIA_SET_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v3, v4}, Lcom/oneplus/gallery/media/MediaSetList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1762
    sget-object v3, Lcom/oneplus/gallery/media/MediaSetList;->EVENT_MEDIA_SET_MOVED:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetMovedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v3, v4}, Lcom/oneplus/gallery/media/MediaSetList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1763
    sget-object v3, Lcom/oneplus/gallery/media/MediaSetList;->EVENT_MEDIA_SET_REMOVED:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetRemovedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v3, v4}, Lcom/oneplus/gallery/media/MediaSetList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1764
    sget-object v3, Lcom/oneplus/gallery/media/MediaSetList;->EVENT_MEDIA_SET_REMOVING:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetRemovingHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v3, v4}, Lcom/oneplus/gallery/media/MediaSetList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1767
    iget-object v3, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    invoke-interface {v3}, Lcom/oneplus/gallery/media/MediaSetList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0    # "i":I
    :goto_3
    if-ltz v0, :cond_3

    .line 1768
    invoke-interface {p1, v0}, Lcom/oneplus/gallery/media/MediaSetList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/media/MediaSet;

    invoke-direct {p0, v3}, Lcom/oneplus/gallery/MediaSetListFragment;->attachToMediaSet(Lcom/oneplus/gallery/media/MediaSet;)V

    .line 1767
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 1760
    .end local v0    # "i":I
    :cond_6
    sget-object v3, Lcom/oneplus/gallery/media/MediaSetList;->PROP_IS_READY:Lcom/oneplus/base/PropertyKey;

    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetListReadyChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v3, v4}, Lcom/oneplus/gallery/media/MediaSetList;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    goto :goto_2
.end method

.method private setToolBarVisibility(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    .line 1716
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_Toolbar:Landroid/widget/Toolbar;

    invoke-virtual {p0}, Lcom/oneplus/gallery/MediaSetListFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v0

    sget-object v2, Lcom/oneplus/gallery/GalleryActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f020061

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Toolbar;->setNavigationIcon(I)V

    .line 1717
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_Toolbar:Landroid/widget/Toolbar;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/Toolbar;->setVisibility(I)V

    .line 1718
    return-void

    .line 1716
    :cond_0
    const v0, 0x7f020062

    goto :goto_0

    .line 1717
    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method private updateIcon(Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;)V
    .locals 2
    .param p1, "mediaSet"    # Lcom/oneplus/gallery/media/MediaSet;
    .param p2, "viewInfo"    # Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;

    .prologue
    .line 1780
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1782
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->TAG:Ljava/lang/String;

    const-string v1, "updateIcon() - mediaSet or viewInfo is null"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1794
    :goto_0
    return-void

    .line 1786
    :cond_1
    instance-of v0, p1, Lcom/oneplus/gallery/media/CameraRollMediaSet;

    if-eqz v0, :cond_3

    .line 1787
    iget-object v1, p2, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->mediaSetIcon:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_IsBlackMode:Z

    if-eqz v0, :cond_2

    const v0, 0x7f02009d

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const v0, 0x7f02009e

    goto :goto_1

    .line 1788
    :cond_3
    instance-of v0, p1, Lcom/oneplus/gallery/media/FavoriteMediaSet;

    if-eqz v0, :cond_5

    .line 1789
    iget-object v1, p2, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->mediaSetIcon:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_IsBlackMode:Z

    if-eqz v0, :cond_4

    const v0, 0x7f0200a0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_4
    const v0, 0x7f0200a1

    goto :goto_2

    .line 1790
    :cond_5
    instance-of v0, p1, Lcom/oneplus/gallery/media/AlbumMediaSet;

    if-eqz v0, :cond_7

    .line 1791
    iget-object v1, p2, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->mediaSetIcon:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_IsBlackMode:Z

    if-eqz v0, :cond_6

    const v0, 0x7f02009b

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_6
    const v0, 0x7f02009c

    goto :goto_3

    .line 1793
    :cond_7
    iget-object v0, p2, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->mediaSetIcon:Landroid/widget/ImageView;

    const v1, 0x7f02009f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateMediaSetItem(Lcom/oneplus/gallery/media/MediaSet;)V
    .locals 14
    .param p1, "mediaSet"    # Lcom/oneplus/gallery/media/MediaSet;

    .prologue
    .line 1804
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/MediaSetListFragment;->findItemViewForMediaSet(Lcom/oneplus/gallery/media/MediaSet;)Landroid/view/View;

    move-result-object v0

    .line 1805
    .local v0, "convertView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 1912
    :goto_0
    return-void

    .line 1821
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;

    .line 1822
    .local v7, "viewInfo":Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;
    iget-object v8, v7, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1827
    invoke-direct {p0, p1, v7}, Lcom/oneplus/gallery/MediaSetListFragment;->updateIcon(Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;)V

    .line 1830
    sget-object v8, Lcom/oneplus/gallery/media/MediaSet;->PROP_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v8}, Lcom/oneplus/gallery/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1831
    .local v3, "photoCount":Ljava/lang/Integer;
    sget-object v8, Lcom/oneplus/gallery/media/MediaSet;->PROP_VIDEO_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v8}, Lcom/oneplus/gallery/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1833
    .local v5, "videoCount":Ljava/lang/Integer;
    if-nez v3, :cond_1

    .line 1834
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1836
    :cond_1
    if-nez v5, :cond_2

    .line 1837
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1842
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    if-gt v8, v9, :cond_3

    .line 1843
    const v8, 0x7f09007d

    invoke-virtual {p0, v8}, Lcom/oneplus/gallery/MediaSetListFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1847
    .local v4, "photoCountStr":Ljava/lang/String;
    :goto_1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    if-gt v8, v9, :cond_4

    .line 1848
    const v8, 0x7f09007f

    invoke-virtual {p0, v8}, Lcom/oneplus/gallery/MediaSetListFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1852
    .local v6, "videoCountStr":Ljava/lang/String;
    :goto_2
    iget-object v8, v7, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->mediaCountText:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1853
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lez v8, :cond_5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lez v8, :cond_5

    .line 1854
    iget-object v8, v7, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->mediaCountText:Landroid/widget/TextView;

    const v9, 0x7f090081

    invoke-virtual {p0, v9}, Lcom/oneplus/gallery/MediaSetListFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    const/4 v11, 0x1

    aput-object v6, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1863
    :goto_3
    sget-object v8, Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    invoke-direct {p0, p1}, Lcom/oneplus/gallery/MediaSetListFragment;->getMediaSetImageKey(Lcom/oneplus/gallery/media/MediaSet;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-virtual {v8, v9, v10, v12, v13}, Lcom/oneplus/cache/HybridBitmapLruCache;->get(Ljava/io/Serializable;Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1865
    .local v1, "coverImage":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_8

    .line 1868
    iget-object v8, v7, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1869
    iget-object v8, v7, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1870
    iget-object v8, v7, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/oneplus/gallery/MediaSetListFragment;->setItemImageViewBackgroundVisibility(Landroid/view/View;Z)V

    goto/16 :goto_0

    .line 1845
    .end local v1    # "coverImage":Landroid/graphics/Bitmap;
    .end local v4    # "photoCountStr":Ljava/lang/String;
    .end local v6    # "videoCountStr":Ljava/lang/String;
    :cond_3
    const v8, 0x7f09007e

    invoke-virtual {p0, v8}, Lcom/oneplus/gallery/MediaSetListFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "photoCountStr":Ljava/lang/String;
    goto :goto_1

    .line 1850
    :cond_4
    const v8, 0x7f090080

    invoke-virtual {p0, v8}, Lcom/oneplus/gallery/MediaSetListFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "videoCountStr":Ljava/lang/String;
    goto :goto_2

    .line 1855
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lez v8, :cond_6

    .line 1856
    iget-object v8, v7, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->mediaCountText:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1857
    :cond_6
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lez v8, :cond_7

    .line 1858
    iget-object v8, v7, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->mediaCountText:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1860
    :cond_7
    iget-object v8, v7, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->mediaCountText:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 1874
    .restart local v1    # "coverImage":Landroid/graphics/Bitmap;
    :cond_8
    sget-object v8, Lcom/oneplus/gallery/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v8}, Lcom/oneplus/gallery/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1875
    .local v2, "mediaSetSize":Ljava/lang/Integer;
    if-nez v2, :cond_9

    .line 1877
    iget-object v8, v7, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1878
    iget-object v8, v7, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/oneplus/gallery/MediaSetListFragment;->setItemImageViewBackgroundVisibility(Landroid/view/View;Z)V

    goto/16 :goto_0

    .line 1880
    :cond_9
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lez v8, :cond_a

    .line 1882
    iget-object v8, v7, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1884
    const/4 v8, 0x1

    invoke-direct {p0, p1, v8}, Lcom/oneplus/gallery/MediaSetListFragment;->createCoverImage(Lcom/oneplus/gallery/media/MediaSet;Z)V

    .line 1885
    iget-object v8, v7, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Lcom/oneplus/gallery/MediaSetListFragment;->setItemImageViewBackgroundVisibility(Landroid/view/View;Z)V

    goto/16 :goto_0

    .line 1889
    :cond_a
    iget-object v8, v7, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    new-instance v9, Lcom/oneplus/gallery/MediaSetListFragment$EmptyCoverDrawable;

    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v10

    iget-boolean v11, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_IsBlackMode:Z

    invoke-direct {v9, v10, v11}, Lcom/oneplus/gallery/MediaSetListFragment$EmptyCoverDrawable;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1890
    iget-object v8, v7, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1892
    iget-object v8, v7, Lcom/oneplus/gallery/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/oneplus/gallery/MediaSetListFragment;->setItemImageViewBackgroundVisibility(Landroid/view/View;Z)V

    goto/16 :goto_0

    .line 1910
    .end local v1    # "coverImage":Landroid/graphics/Bitmap;
    .end local v2    # "mediaSetSize":Ljava/lang/Integer;
    .end local v3    # "photoCount":Ljava/lang/Integer;
    .end local v4    # "photoCountStr":Ljava/lang/String;
    .end local v5    # "videoCount":Ljava/lang/Integer;
    .end local v6    # "videoCountStr":Ljava/lang/String;
    :cond_b
    iget-object v8, p0, Lcom/oneplus/gallery/MediaSetListFragment;->TAG:Ljava/lang/String;

    const-string v9, "updateMediaSetItem() - mediaSet is not on screen"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private updateSelectedMediaSet(Lcom/oneplus/gallery/media/MediaSet;)V
    .locals 2
    .param p1, "mediaSet"    # Lcom/oneplus/gallery/media/MediaSet;

    .prologue
    .line 1916
    sget-object v0, Lcom/oneplus/gallery/MediaSetListFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/MediaSetListFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1918
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->TAG:Ljava/lang/String;

    const-string v1, "updateSelectedMediaSet() - not in selection mode"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1940
    :cond_0
    :goto_0
    return-void

    .line 1923
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_SelectedMediaSet:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1924
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_SelectedMediaSet:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1929
    :goto_1
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_SelectedMediaSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1930
    sget-object v0, Lcom/oneplus/gallery/MediaSetListFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/MediaSetListFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1938
    :goto_2
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetListAdapter:Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;

    if-eqz v0, :cond_0

    .line 1939
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetListAdapter:Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;

    invoke-virtual {v0}, Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1926
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_SelectedMediaSet:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1934
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_Toolbar:Landroid/widget/Toolbar;

    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_SelectedMediaSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method


# virtual methods
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
    .line 900
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/gallery/MediaSetListFragment;->PROP_SCROLL_OFFSET_Y:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 901
    iget v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_ScrollOffsetY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 902
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/gallery/GalleryFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 908
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 941
    invoke-super {p0, p1}, Lcom/oneplus/gallery/GalleryFragment;->handleMessage(Landroid/os/Message;)V

    .line 944
    :goto_0
    return-void

    .line 911
    :sswitch_0
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaSetListFragment;->createCoverImages()V

    goto :goto_0

    .line 916
    :sswitch_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/4 v4, 0x4

    if-gt v2, v4, :cond_0

    .line 918
    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetDecodeIndexList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_1

    .line 935
    :cond_0
    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetDecodeIndexList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 937
    invoke-direct {p0, v5, v5}, Lcom/oneplus/gallery/MediaSetListFragment;->createMediaListCoverImageFromQueue(ZZ)V

    goto :goto_0

    .line 921
    :cond_1
    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetDecodeIndexList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 923
    .local v0, "decodeIndex":I
    add-int/lit8 v3, v0, -0x4

    .local v3, "j":I
    :goto_2
    add-int/lit8 v4, v0, 0x4

    if-gt v3, v4, :cond_4

    .line 925
    if-ltz v3, :cond_2

    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    invoke-interface {v4}, Lcom/oneplus/gallery/media/MediaSetList;->size()I

    move-result v4

    if-lt v3, v4, :cond_3

    .line 923
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 928
    :cond_3
    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    invoke-interface {v4, v3}, Lcom/oneplus/gallery/media/MediaSetList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/MediaSet;

    .line 930
    .local v1, "decodeSet":Lcom/oneplus/gallery/media/MediaSet;
    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetDecodeQueue:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 931
    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetDecodeQueue:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 916
    .end local v1    # "decodeSet":Lcom/oneplus/gallery/media/MediaSet;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 908
    nop

    :sswitch_data_0
    .sparse-switch
        0x2711 -> :sswitch_0
        0xc350 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onAttachToGallery(Lcom/oneplus/gallery/Gallery;)V
    .locals 2
    .param p1, "gallery"    # Lcom/oneplus/gallery/Gallery;

    .prologue
    .line 1024
    invoke-super {p0, p1}, Lcom/oneplus/gallery/GalleryFragment;->onAttachToGallery(Lcom/oneplus/gallery/Gallery;)V

    .line 1027
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v0

    const-class v1, Lcom/oneplus/gallery/media/ThumbnailImageManager;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GalleryApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/ThumbnailImageManager;

    iput-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_ThumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;

    .line 1028
    return-void
.end method

.method protected onBackToInitialUIState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1036
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetListAdapter:Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetListAdapter:Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;

    invoke-virtual {v0}, Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1040
    :cond_0
    sget-object v0, Lcom/oneplus/gallery/MediaSetListFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/MediaSetListFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1041
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1080
    invoke-super {p0, p1}, Lcom/oneplus/gallery/GalleryFragment;->onCreate(Landroid/os/Bundle;)V

    .line 1082
    invoke-virtual {p0}, Lcom/oneplus/gallery/MediaSetListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_Activity:Landroid/app/Activity;

    .line 1083
    invoke-virtual {p0}, Lcom/oneplus/gallery/MediaSetListFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery/GalleryActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_IsBlackMode:Z

    .line 1084
    new-instance v0, Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;-><init>(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/gallery/MediaSetListFragment$1;)V

    iput-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetListAdapter:Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;

    .line 1086
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_Activity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/MediaSetListFragment;->initializeCoverImageCache(Landroid/content/Context;)V

    .line 1087
    sget-object v0, Lcom/oneplus/gallery/MediaSetListFragment;->m_CacheImageLoaderExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 1088
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery/MediaSetListFragment;->m_CacheImageLoaderExecutor:Ljava/util/concurrent/ExecutorService;

    .line 1090
    :cond_0
    sget-object v0, Lcom/oneplus/gallery/MediaSetListFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_IsSelectionModeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/MediaSetListFragment;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1091
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    .line 1098
    iget-object v7, p0, Lcom/oneplus/gallery/MediaSetListFragment;->TAG:Ljava/lang/String;

    const-string v8, "onCreateView()"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    invoke-virtual {p0}, Lcom/oneplus/gallery/MediaSetListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1100
    .local v3, "res":Landroid/content/res/Resources;
    const v7, 0x7f0500b0

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetItemHeight:I

    .line 1101
    invoke-virtual {p0}, Lcom/oneplus/gallery/MediaSetListFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v7

    const-string v8, "media_set_list_item_cover_media_background"

    invoke-virtual {v7, v8}, Lcom/oneplus/gallery/GalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverBackgroundColor:I

    .line 1102
    const v7, 0x7f030012

    invoke-virtual {p1, v7, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1105
    .local v0, "baseView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/oneplus/gallery/MediaSetListFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v7

    sget-object v8, Lcom/oneplus/gallery/GalleryActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v7, v8}, Lcom/oneplus/gallery/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/base/ScreenSize;

    .line 1106
    .local v4, "screenSize":Lcom/oneplus/base/ScreenSize;
    invoke-virtual {v4}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Lcom/oneplus/base/ScreenSize;->getHeight()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverImageWidth:I

    .line 1107
    const v7, 0x7f0500a7

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverImageHeight:I

    .line 1110
    const v7, 0x7f060052

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_EmptyAlbumView:Landroid/view/View;

    .line 1111
    iget-object v7, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_EmptyAlbumView:Landroid/view/View;

    const v8, 0x7f060053

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_EmptyAlbumCreateIcon:Landroid/widget/ImageView;

    .line 1112
    iget-object v8, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_EmptyAlbumCreateIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/oneplus/gallery/MediaSetListFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v7

    sget-object v9, Lcom/oneplus/gallery/GalleryActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v7, v9}, Lcom/oneplus/gallery/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2

    const v7, 0x7f0200a5

    :goto_0
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1113
    iget-object v7, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_EmptyAlbumView:Landroid/view/View;

    const v8, 0x7f060054

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_EmptyAlbumTitle:Landroid/widget/TextView;

    .line 1114
    iget-object v7, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_EmptyAlbumView:Landroid/view/View;

    const v8, 0x7f060055

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_EmtpyAlbumText:Landroid/widget/TextView;

    .line 1115
    iget-object v7, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_EmptyAlbumTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/gallery/MediaSetListFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v8

    const-string v9, "no_photo_title"

    invoke-virtual {v8, v9}, Lcom/oneplus/gallery/GalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1116
    iget-object v7, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_EmtpyAlbumText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/gallery/MediaSetListFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v8

    const-string v9, "no_photo_text"

    invoke-virtual {v8, v9}, Lcom/oneplus/gallery/GalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1119
    const v7, 0x7f060050

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 1120
    .local v1, "listView":Landroid/widget/ListView;
    sget-object v7, Lcom/oneplus/gallery/MediaSetListFragment;->PROP_LIST_VIEW_PADDING_TOP:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/gallery/MediaSetListFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1121
    .local v2, "listViewPaddingTop":I
    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v7

    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v8

    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v1, v7, v2, v8, v9}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 1124
    const v7, 0x7f060051

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Toolbar;

    .line 1125
    .local v5, "toolbar":Landroid/widget/Toolbar;
    invoke-virtual {v5}, Landroid/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 1126
    .local v6, "toolbarParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v7, :cond_0

    .line 1128
    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local v6    # "toolbarParams":Landroid/view/ViewGroup$LayoutParams;
    sget-object v7, Lcom/oneplus/gallery/MediaSetListFragment;->PROP_TOOL_BAR_MARGIN_TOP:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/gallery/MediaSetListFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1142
    :cond_0
    iget-object v7, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    invoke-interface {v7}, Lcom/oneplus/gallery/media/MediaSetList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    sget-object v8, Lcom/oneplus/gallery/media/MediaSetList;->PROP_IS_READY:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v7, v8}, Lcom/oneplus/gallery/media/MediaSetList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1143
    iget-object v7, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_EmptyAlbumView:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1144
    :cond_1
    return-object v0

    .line 1112
    .end local v1    # "listView":Landroid/widget/ListView;
    .end local v2    # "listViewPaddingTop":I
    .end local v5    # "toolbar":Landroid/widget/Toolbar;
    :cond_2
    const v7, 0x7f0200a6

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1151
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/MediaSetListFragment;->setMediaSetList(Lcom/oneplus/gallery/media/MediaSetList;)Z

    .line 1152
    invoke-super {p0}, Lcom/oneplus/gallery/GalleryFragment;->onDestroy()V

    .line 1154
    sget-object v0, Lcom/oneplus/gallery/MediaSetListFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_IsSelectionModeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/MediaSetListFragment;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1155
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 1161
    sget-object v0, Lcom/oneplus/gallery/MediaSetListFragment;->PROP_IS_SCROLLING:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/MediaSetListFragment;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1162
    invoke-super {p0}, Lcom/oneplus/gallery/GalleryFragment;->onDestroyView()V

    .line 1163
    return-void
.end method

.method public onPause()V
    .locals 5

    .prologue
    .line 1423
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/oneplus/gallery/MediaSetListFragment;->cancelCreatingCoverImages(Z)V

    .line 1426
    invoke-super {p0}, Lcom/oneplus/gallery/GalleryFragment;->onPause()V

    .line 1429
    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetDecodingHandles:Ljava/util/Hashtable;

    if-eqz v4, :cond_2

    .line 1431
    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetDecodingHandles:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 1432
    .local v1, "handleLists":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/ArrayList<Lcom/oneplus/base/Handle;>;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1434
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1435
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/base/Handle;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/Handle;

    .line 1436
    .local v0, "handle":Lcom/oneplus/base/Handle;
    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 1438
    .end local v0    # "handle":Lcom/oneplus/base/Handle;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/base/Handle;>;"
    :cond_1
    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetDecodingHandles:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->clear()V

    .line 1442
    .end local v1    # "handleLists":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/ArrayList<Lcom/oneplus/base/Handle;>;>;"
    :cond_2
    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_ThumbManagerActivateHandle:Lcom/oneplus/base/Handle;

    invoke-static {v4}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_ThumbManagerActivateHandle:Lcom/oneplus/base/Handle;

    .line 1443
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 1310
    invoke-super {p0}, Lcom/oneplus/gallery/GalleryFragment;->onResume()V

    .line 1313
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_ThumbManagerActivateHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_ThumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;

    if-eqz v1, :cond_0

    .line 1314
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_ThumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/oneplus/gallery/media/ThumbnailImageManager;->activate(I)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_ThumbManagerActivateHandle:Lcom/oneplus/base/Handle;

    .line 1316
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery/MediaSetListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f060050

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetListView:Landroid/widget/ListView;

    .line 1317
    invoke-virtual {p0}, Lcom/oneplus/gallery/MediaSetListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f060051

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Toolbar;

    iput-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_Toolbar:Landroid/widget/Toolbar;

    .line 1318
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_Toolbar:Landroid/widget/Toolbar;

    invoke-virtual {p0}, Lcom/oneplus/gallery/MediaSetListFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v2

    const-string v3, "action_bar_background"

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/GalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Toolbar;->setBackgroundColor(I)V

    .line 1320
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetListView:Landroid/widget/ListView;

    new-instance v2, Lcom/oneplus/gallery/MediaSetListFragment$13;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery/MediaSetListFragment$13;-><init>(Lcom/oneplus/gallery/MediaSetListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1337
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetListView:Landroid/widget/ListView;

    new-instance v2, Lcom/oneplus/gallery/MediaSetListFragment$14;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery/MediaSetListFragment$14;-><init>(Lcom/oneplus/gallery/MediaSetListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1353
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetListAdapter:Lcom/oneplus/gallery/MediaSetListFragment$MediaSetListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1354
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetListView:Landroid/widget/ListView;

    new-instance v2, Lcom/oneplus/gallery/MediaSetListFragment$15;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery/MediaSetListFragment$15;-><init>(Lcom/oneplus/gallery/MediaSetListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1372
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_Toolbar:Landroid/widget/Toolbar;

    invoke-virtual {v1}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    .line 1373
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_Toolbar:Landroid/widget/Toolbar;

    const v2, 0x7f0b0003

    invoke-virtual {v1, v2}, Landroid/widget/Toolbar;->inflateMenu(I)V

    .line 1374
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_Toolbar:Landroid/widget/Toolbar;

    invoke-virtual {p0}, Lcom/oneplus/gallery/MediaSetListFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v2

    const v3, 0x7f0a0023

    invoke-virtual {v1, v2, v3}, Landroid/widget/Toolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    .line 1375
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_Toolbar:Landroid/widget/Toolbar;

    invoke-virtual {p0}, Lcom/oneplus/gallery/MediaSetListFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v2

    const-string v3, "tool_bar_text"

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/GalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Toolbar;->setTitleTextColor(I)V

    .line 1376
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_Toolbar:Landroid/widget/Toolbar;

    invoke-virtual {v1}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f06009c

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oneplus/gallery/MediaSetListFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v1

    sget-object v3, Lcom/oneplus/gallery/GalleryActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v3}, Lcom/oneplus/gallery/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f02005d

    :goto_0
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1377
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_Toolbar:Landroid/widget/Toolbar;

    new-instance v2, Lcom/oneplus/gallery/MediaSetListFragment$16;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery/MediaSetListFragment$16;-><init>(Lcom/oneplus/gallery/MediaSetListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Toolbar;->setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V

    .line 1389
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_Toolbar:Landroid/widget/Toolbar;

    new-instance v2, Lcom/oneplus/gallery/MediaSetListFragment$17;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery/MediaSetListFragment$17;-><init>(Lcom/oneplus/gallery/MediaSetListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1399
    iget-boolean v0, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_IsBlackMode:Z

    .line 1400
    .local v0, "prevBlackModeState":Z
    invoke-virtual {p0}, Lcom/oneplus/gallery/MediaSetListFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/gallery/GalleryActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_IsBlackMode:Z

    .line 1401
    iget-boolean v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_IsBlackMode:Z

    if-eq v1, v0, :cond_1

    .line 1403
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume() - Theme changed to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_IsBlackMode:Z

    if-eqz v1, :cond_3

    const-string v1, "DARK"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    invoke-virtual {p0}, Lcom/oneplus/gallery/MediaSetListFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v1

    const-string v2, "media_set_list_item_cover_media_background"

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery/GalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_CoverBackgroundColor:I

    .line 1405
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_EmptyAlbumCreateIcon:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_IsBlackMode:Z

    if-eqz v1, :cond_4

    const v1, 0x7f0200a5

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1406
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/MediaSetListFragment;->cancelCreatingCoverImages(Z)V

    .line 1407
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaSetListFragment;->onVisibleMediaSetsChanged()V

    .line 1410
    :cond_1
    sget-object v1, Lcom/oneplus/gallery/MediaSetListFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/MediaSetListFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/MediaSetListFragment;->onSelectionModeChanged(Z)V

    .line 1411
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaSetListFragment;->reportScrollOffsets()V

    .line 1414
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaSetListFragment;->scheduleCoverImageCreation()V

    .line 1415
    return-void

    .line 1376
    .end local v0    # "prevBlackModeState":Z
    :cond_2
    const v1, 0x7f02005e

    goto/16 :goto_0

    .line 1403
    .restart local v0    # "prevBlackModeState":Z
    :cond_3
    const-string v1, "LIGHT"

    goto :goto_1

    .line 1405
    :cond_4
    const v1, 0x7f0200a6

    goto :goto_2
.end method

.method public onStop()V
    .locals 5

    .prologue
    .line 1480
    invoke-super {p0}, Lcom/oneplus/gallery/GalleryFragment;->onStop()V

    .line 1483
    new-instance v0, Lcom/oneplus/gallery/MediaSetListFragment$ClearCacheTask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oneplus/gallery/MediaSetListFragment$ClearCacheTask;-><init>(Lcom/oneplus/gallery/MediaSetListFragment$1;)V

    .line 1484
    .local v0, "task":Lcom/oneplus/gallery/MediaSetListFragment$ClearCacheTask;
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/MediaSetListFragment$ClearCacheTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1485
    return-void
.end method

.method public scrollTo(Lcom/oneplus/gallery/media/MediaSet;Z)Z
    .locals 3
    .param p1, "mediaSet"    # Lcom/oneplus/gallery/media/MediaSet;
    .param p2, "smoothScroll"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1676
    invoke-virtual {p0}, Lcom/oneplus/gallery/MediaSetListFragment;->verifyAccess()V

    .line 1677
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetListView:Landroid/widget/ListView;

    if-nez v2, :cond_1

    .line 1688
    :cond_0
    :goto_0
    return v1

    .line 1679
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    invoke-interface {v2, p1}, Lcom/oneplus/gallery/media/MediaSetList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1680
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 1682
    if-eqz p2, :cond_2

    .line 1683
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 1686
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1685
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_1
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
    .line 1696
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v0, Lcom/oneplus/gallery/MediaSetListFragment;->PROP_MEDIA_SET_LIST:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 1697
    check-cast p2, Lcom/oneplus/gallery/media/MediaSetList;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/gallery/MediaSetListFragment;->setMediaSetList(Lcom/oneplus/gallery/media/MediaSetList;)Z

    move-result v0

    .line 1699
    :goto_0
    return v0

    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery/GalleryFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
