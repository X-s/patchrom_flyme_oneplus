.class public Lcom/oneplus/gallery2/MediaSetListFragment;
.super Lcom/oneplus/gallery2/GalleryFragment;
.source "MediaSetListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/MediaSetListFragment$18;,
        Lcom/oneplus/gallery2/MediaSetListFragment$ClearCacheTask;,
        Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;,
        Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;,
        Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;,
        Lcom/oneplus/gallery2/MediaSetListFragment$EmptyCoverDrawable;
    }
.end annotation


# static fields
.field private static final COVER_COLUMN_COUNT:I = 0x6

.field private static final COVER_GRID_INNER_SPACE:I = 0x2

.field private static final COVER_GRID_SIDE_SPACE:I = 0x4

.field private static final COVER_IMAGE_CACHE_NAME:Ljava/lang/String; = "MediaSetCoverImage"

.field private static final COVER_ROW_COUNT:I = 0x2

.field private static final COVER_WINDOW_SIZE:I = 0x3

.field private static final DISK_CACHE_SIZE:J = 0xc800000L

.field private static final DURATION_MAX_CLEAR_INVALID_THUMBS:J = 0x3e8L

.field private static final EMPTY_COVER_IMAGE_POOL_CAPACITY:I = 0x4

.field public static final EVENT_MEDIA_SET_CLICKED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/gallery2/ListItemEventArgs",
            "<",
            "Lcom/oneplus/gallery2/media/MediaSet;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final MAX_ACTIVE_COVER_IMAGE_CREATION_TASK_COUNT:I = 0x4

.field private static final MEMORY_CACHE_SIZE:J = 0x1400000L

.field private static final MIN_COVER_UPDATE_INTERVAL:J = 0x12cL

.field private static final MSG_CREATE_COVER_IMAGES:I = 0x2711

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
            "Lcom/oneplus/gallery2/media/MediaSetList;",
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
            "Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;",
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
            "Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;",
            ">;"
        }
    .end annotation
.end field

.field private final m_CoverImageCreationTaskTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/gallery2/media/MediaSet;",
            "Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;",
            ">;"
        }
    .end annotation
.end field

.field private m_CoverImageHeight:I

.field private final m_CoverImageOverlapPaint:Landroid/graphics/Paint;

.field private final m_CoverImageTempBase:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/gallery2/media/MediaSet;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

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
            "Lcom/oneplus/gallery2/ListChangeEventArgs;",
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

.field private m_MediaSetDeleteCallback:Lcom/oneplus/gallery2/Gallery$MediaSetDeletionCallback;

.field private m_MediaSetItemHeight:I

.field private m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

.field private m_MediaSetListAdapter:Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;

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
            "Lcom/oneplus/gallery2/ListMoveEventArgs;",
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
            "Lcom/oneplus/gallery2/ListChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final m_MediaSetRemovingHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/gallery2/ListChangeEventArgs;",
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
            "Lcom/oneplus/gallery2/media/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;

.field private m_ThumbManagerActivateHandle:Lcom/oneplus/base/Handle;

.field private m_Toolbar:Landroid/widget/Toolbar;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v4, 0x2

    const/4 v9, 0x0

    .line 102
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_EmptyCoverImagePool:Ljava/util/LinkedList;

    .line 230
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsScrolling"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery2/MediaSetListFragment;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/MediaSetListFragment;->PROP_IS_SCROLLING:Lcom/oneplus/base/PropertyKey;

    .line 234
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsSelectionMode"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery2/MediaSetListFragment;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/MediaSetListFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    .line 238
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "ListViewPaddingTop"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/gallery2/MediaSetListFragment;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/MediaSetListFragment;->PROP_LIST_VIEW_PADDING_TOP:Lcom/oneplus/base/PropertyKey;

    .line 242
    new-instance v5, Lcom/oneplus/base/PropertyKey;

    const-string v6, "MediaSetList"

    const-class v7, Lcom/oneplus/gallery2/media/MediaSetList;

    const-class v8, Lcom/oneplus/gallery2/MediaSetListFragment;

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v5, Lcom/oneplus/gallery2/MediaSetListFragment;->PROP_MEDIA_SET_LIST:Lcom/oneplus/base/PropertyKey;

    .line 246
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "ScrollOffsetY"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/gallery2/MediaSetListFragment;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/MediaSetListFragment;->PROP_SCROLL_OFFSET_Y:Lcom/oneplus/base/PropertyKey;

    .line 250
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "ToolBarMarginTop"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/gallery2/MediaSetListFragment;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/MediaSetListFragment;->PROP_TOOL_BAR_MARGIN_TOP:Lcom/oneplus/base/PropertyKey;

    .line 257
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "MediaSetClicked"

    const-class v2, Lcom/oneplus/gallery2/ListItemEventArgs;

    const-class v3, Lcom/oneplus/gallery2/MediaSetListFragment;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery2/MediaSetListFragment;->EVENT_MEDIA_SET_CLICKED:Lcom/oneplus/base/EventKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 892
    invoke-direct {p0}, Lcom/oneplus/gallery2/GalleryFragment;-><init>()V

    .line 105
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_ActiveCoverImageCreationTasks:Ljava/util/Set;

    .line 107
    new-instance v0, Lcom/oneplus/gallery2/MediaSetListFragment$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/MediaSetListFragment$1;-><init>(Lcom/oneplus/gallery2/MediaSetListFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CheckVisibleMediaSetsRunnable:Ljava/lang/Runnable;

    .line 117
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageCreationTaskList:Ljava/util/LinkedList;

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageCreationTaskTable:Ljava/util/Map;

    .line 120
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageOverlapPaint:Landroid/graphics/Paint;

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageTempBase:Ljava/util/Map;

    .line 130
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetDecodingHandles:Ljava/util/Hashtable;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_SelectedMediaSet:Ljava/util/ArrayList;

    .line 140
    new-instance v0, Lcom/oneplus/gallery2/MediaSetListFragment$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/MediaSetListFragment$2;-><init>(Lcom/oneplus/gallery2/MediaSetListFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 148
    new-instance v0, Lcom/oneplus/gallery2/MediaSetListFragment$3;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/MediaSetListFragment$3;-><init>(Lcom/oneplus/gallery2/MediaSetListFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetCoverHashCodeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 156
    new-instance v0, Lcom/oneplus/gallery2/MediaSetListFragment$4;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/MediaSetListFragment$4;-><init>(Lcom/oneplus/gallery2/MediaSetListFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetAddedHandler:Lcom/oneplus/base/EventHandler;

    .line 164
    new-instance v0, Lcom/oneplus/gallery2/MediaSetListFragment$5;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/MediaSetListFragment$5;-><init>(Lcom/oneplus/gallery2/MediaSetListFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetListReadyChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 173
    new-instance v0, Lcom/oneplus/gallery2/MediaSetListFragment$6;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/MediaSetListFragment$6;-><init>(Lcom/oneplus/gallery2/MediaSetListFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetMovedHandler:Lcom/oneplus/base/EventHandler;

    .line 181
    new-instance v0, Lcom/oneplus/gallery2/MediaSetListFragment$7;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/MediaSetListFragment$7;-><init>(Lcom/oneplus/gallery2/MediaSetListFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetNameChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 189
    new-instance v0, Lcom/oneplus/gallery2/MediaSetListFragment$8;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/MediaSetListFragment$8;-><init>(Lcom/oneplus/gallery2/MediaSetListFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetRemovedHandler:Lcom/oneplus/base/EventHandler;

    .line 197
    new-instance v0, Lcom/oneplus/gallery2/MediaSetListFragment$9;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/MediaSetListFragment$9;-><init>(Lcom/oneplus/gallery2/MediaSetListFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetRemovingHandler:Lcom/oneplus/base/EventHandler;

    .line 205
    new-instance v0, Lcom/oneplus/gallery2/MediaSetListFragment$10;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/MediaSetListFragment$10;-><init>(Lcom/oneplus/gallery2/MediaSetListFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetDeleteCallback:Lcom/oneplus/gallery2/Gallery$MediaSetDeletionCallback;

    .line 260
    new-instance v0, Lcom/oneplus/gallery2/MediaSetListFragment$11;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/MediaSetListFragment$11;-><init>(Lcom/oneplus/gallery2/MediaSetListFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_IsSelectionModeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 893
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageOverlapPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 894
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageOverlapPaint:Landroid/graphics/Paint;

    const/16 v1, 0x26

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 895
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery2/MediaSetListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment;

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_IsVisibleMediaSetsCheckScheduled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/oneplus/gallery2/MediaSetListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_IsVisibleMediaSetsCheckScheduled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/gallery2/MediaSetListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaSetListFragment;->onVisibleMediaSetsChanged()V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/gallery2/MediaSetListFragment;Lcom/oneplus/gallery2/media/MediaSet;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/MediaSet;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/MediaSetListFragment;->removeImageInCache(Lcom/oneplus/gallery2/media/MediaSet;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/oneplus/gallery2/MediaSetListFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/MediaSetListFragment;->onSelectionModeChanged(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/oneplus/gallery2/MediaSetListFragment;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/MediaSetListFragment;->recycleCoverImage(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/oneplus/gallery2/MediaSetListFragment;Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/MediaSetListFragment;->onCoverImageCreationCompleted(Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/oneplus/gallery2/MediaSetListFragment;Lcom/oneplus/gallery2/media/MediaSet;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/MediaSet;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/MediaSetListFragment;->getMediaSetImageKey(Lcom/oneplus/gallery2/media/MediaSet;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800()Lcom/oneplus/cache/HybridBitmapLruCache;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/oneplus/gallery2/MediaSetListFragment;Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;
    .param p2, "x2"    # Landroid/graphics/Bitmap;
    .param p3, "x3"    # Z

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery2/MediaSetListFragment;->onCoverImageUpdated(Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/gallery2/MediaSetListFragment;Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/MediaSet;
    .param p2, "x2"    # Lcom/oneplus/base/PropertyChangeEventArgs;

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/MediaSetListFragment;->onMediaCountChanged(Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/base/PropertyChangeEventArgs;)V

    return-void
.end method

.method static synthetic access$2400()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CacheImageLoaderExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/oneplus/gallery2/MediaSetListFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/oneplus/gallery2/MediaSetListFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/oneplus/gallery2/MediaSetListFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/oneplus/gallery2/MediaSetListFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/oneplus/gallery2/MediaSetListFragment;)Lcom/oneplus/gallery2/media/ThumbnailImageManager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/gallery2/MediaSetListFragment;Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/MediaSet;
    .param p2, "x2"    # Lcom/oneplus/base/PropertyChangeEventArgs;

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/MediaSetListFragment;->onMediaSetCoverHashCodeChanged(Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/base/PropertyChangeEventArgs;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/oneplus/gallery2/MediaSetListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment;

    .prologue
    .line 81
    iget v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverBackgroundColor:I

    return v0
.end method

.method static synthetic access$3200(Lcom/oneplus/gallery2/MediaSetListFragment;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageTempBase:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/oneplus/gallery2/MediaSetListFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/oneplus/gallery2/MediaSetListFragment;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaSetListFragment;->obtainEmptyCoverImage()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/oneplus/gallery2/MediaSetListFragment;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageOverlapPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/oneplus/gallery2/MediaSetListFragment;Lcom/oneplus/gallery2/media/MediaSet;Z)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/MediaSet;
    .param p2, "x2"    # Z

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/MediaSetListFragment;->getMediaSetImageKey(Lcom/oneplus/gallery2/media/MediaSet;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/oneplus/gallery2/MediaSetListFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/oneplus/gallery2/MediaSetListFragment;)Lcom/oneplus/gallery2/media/MediaSetList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/gallery2/MediaSetListFragment;Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery2/ListChangeEventArgs;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/MediaSetListFragment;->onMediaSetAdded(Lcom/oneplus/gallery2/ListChangeEventArgs;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/oneplus/gallery2/MediaSetListFragment;Lcom/oneplus/gallery2/media/MediaSet;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/MediaSet;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/MediaSetListFragment;->updateSelectedMediaSet(Lcom/oneplus/gallery2/media/MediaSet;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/oneplus/gallery2/MediaSetListFragment;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment;
    .param p1, "x1"    # Lcom/oneplus/base/EventKey;
    .param p2, "x2"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 81
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/MediaSetListFragment;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/oneplus/gallery2/MediaSetListFragment;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment;
    .param p1, "x1"    # Lcom/oneplus/base/PropertyKey;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 81
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/MediaSetListFragment;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/oneplus/gallery2/MediaSetListFragment;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment;
    .param p1, "x1"    # Lcom/oneplus/base/PropertyKey;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 81
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/MediaSetListFragment;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/oneplus/gallery2/MediaSetListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaSetListFragment;->reportScrollOffsets()V

    return-void
.end method

.method static synthetic access$4500(Lcom/oneplus/gallery2/MediaSetListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_SelectedMediaSet:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/oneplus/gallery2/MediaSetListFragment;)Lcom/oneplus/gallery2/Gallery$MediaSetDeletionCallback;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetDeleteCallback:Lcom/oneplus/gallery2/Gallery$MediaSetDeletionCallback;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/oneplus/gallery2/MediaSetListFragment;)Landroid/widget/Toolbar;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_Toolbar:Landroid/widget/Toolbar;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/oneplus/gallery2/MediaSetListFragment;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_Activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/gallery2/MediaSetListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaSetListFragment;->onMediaSetListReady()V

    return-void
.end method

.method static synthetic access$5100(Lcom/oneplus/gallery2/MediaSetListFragment;Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/MediaSet;
    .param p2, "x2"    # Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/MediaSetListFragment;->updateIcon(Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/oneplus/gallery2/MediaSetListFragment;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/MediaSetListFragment;->setItemImageViewBackgroundVisibility(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$5300(Lcom/oneplus/gallery2/MediaSetListFragment;Lcom/oneplus/gallery2/media/MediaSet;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/MediaSet;
    .param p2, "x2"    # Z

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/MediaSetListFragment;->createCoverImage(Lcom/oneplus/gallery2/media/MediaSet;Z)V

    return-void
.end method

.method static synthetic access$5400(Lcom/oneplus/gallery2/MediaSetListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment;

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_IsBlackMode:Z

    return v0
.end method

.method static synthetic access$5500(Lcom/oneplus/gallery2/MediaSetListFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CheckVisibleMediaSetsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/oneplus/gallery2/media/MediaSetList;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/MediaSetList;

    .prologue
    .line 81
    invoke-static {p0}, Lcom/oneplus/gallery2/MediaSetListFragment;->clearUselessImageCache(Lcom/oneplus/gallery2/media/MediaSetList;)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/gallery2/MediaSetListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaSetListFragment;->onMediaSetMoved()V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/gallery2/MediaSetListFragment;Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/MediaSet;
    .param p2, "x2"    # Lcom/oneplus/base/PropertyChangeEventArgs;

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/MediaSetListFragment;->onMediaSetNameChanged(Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/base/PropertyChangeEventArgs;)V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/gallery2/MediaSetListFragment;Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery2/ListChangeEventArgs;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/MediaSetListFragment;->onMediaSetRemoved(Lcom/oneplus/gallery2/ListChangeEventArgs;)V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/gallery2/MediaSetListFragment;Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery2/ListChangeEventArgs;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/MediaSetListFragment;->onMediaSetRemoving(Lcom/oneplus/gallery2/ListChangeEventArgs;)V

    return-void
.end method

.method private attachToMediaSet(Lcom/oneplus/gallery2/media/MediaSet;)V
    .locals 2
    .param p1, "set"    # Lcom/oneplus/gallery2/media/MediaSet;

    .prologue
    .line 901
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery2/media/MediaSet;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 902
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSet;->PROP_COVER_HASH_CODE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetCoverHashCodeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery2/media/MediaSet;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 903
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetNameChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery2/media/MediaSet;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 904
    return-void
.end method

.method private cancelCreatingCoverImage(Lcom/oneplus/gallery2/media/MediaSet;)V
    .locals 2
    .param p1, "mediaSet"    # Lcom/oneplus/gallery2/media/MediaSet;

    .prologue
    .line 2036
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageCreationTaskTable:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;

    .line 2037
    .local v0, "task":Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;
    if-eqz v0, :cond_0

    .line 2039
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageCreationTaskTable:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2040
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageCreationTaskList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 2041
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_ActiveCoverImageCreationTasks:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2042
    invoke-virtual {v0}, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->cancel()V

    .line 2043
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaSetListFragment;->scheduleCoverImageCreation()V

    .line 2045
    :cond_0
    return-void
.end method

.method private cancelCreatingCoverImages(Z)V
    .locals 6
    .param p1, "clearQueue"    # Z

    .prologue
    const/4 v4, 0x0

    .line 2052
    iget-boolean v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_IsCoverImageCreationScheduled:Z

    if-eqz v2, :cond_0

    .line 2054
    iput-boolean v4, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_IsCoverImageCreationScheduled:Z

    .line 2055
    invoke-virtual {p0}, Lcom/oneplus/gallery2/MediaSetListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x2711

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2059
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_ActiveCoverImageCreationTasks:Ljava/util/Set;

    new-array v3, v4, [Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;

    .line 2060
    .local v0, "activeTasks":[Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_ActiveCoverImageCreationTasks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 2061
    array-length v2, v0

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 2063
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->cancel()V

    .line 2064
    if-nez p1, :cond_1

    .line 2065
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageCreationTaskList:Ljava/util/LinkedList;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 2061
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2067
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->TAG:Ljava/lang/String;

    const-string v3, "cancelCreatingCoverImages() - Cancelled "

    array-length v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, " tasks"

    invoke-static {v2, v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2070
    if-eqz p1, :cond_3

    .line 2072
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageCreationTaskList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 2073
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageCreationTaskTable:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 2075
    :cond_3
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->TAG:Ljava/lang/String;

    const-string v3, "cancelCreatingCoverImages() - "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageCreationTaskList:Ljava/util/LinkedList;

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

    .line 2076
    return-void
.end method

.method private static clearUselessImageCache(Lcom/oneplus/gallery2/media/MediaSetList;)V
    .locals 12
    .param p0, "mediaSetList"    # Lcom/oneplus/gallery2/media/MediaSetList;

    .prologue
    .line 791
    sget-object v0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    if-nez v0, :cond_0

    .line 844
    :goto_0
    return-void

    .line 794
    :cond_0
    if-nez p0, :cond_1

    .line 796
    const-string v0, "MediaSetListFragment"

    const-string v1, "clearUselessImageCache() - mediaSetList is null"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 800
    :cond_1
    const-string v0, "MediaSetListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearUselessImageCache() - Start, mediaSetList.size() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/oneplus/gallery2/media/MediaSetList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 802
    .local v8, "startTime":J
    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 804
    .local v6, "count":[I
    sget-object v0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    new-instance v1, Lcom/oneplus/gallery2/MediaSetListFragment$12;

    invoke-direct {v1, v8, v9, p0}, Lcom/oneplus/gallery2/MediaSetListFragment$12;-><init>(JLcom/oneplus/gallery2/media/MediaSetList;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/cache/HybridBitmapLruCache;->remove(Lcom/oneplus/cache/Cache$RemovingPredication;)V

    .line 842
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v10, v0, v8

    .line 843
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

.method private createCoverImage(Lcom/oneplus/gallery2/media/MediaSet;Z)V
    .locals 3
    .param p1, "mediaSet"    # Lcom/oneplus/gallery2/media/MediaSet;
    .param p2, "highPriority"    # Z

    .prologue
    .line 2082
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageCreationTaskTable:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;

    .line 2083
    .local v0, "task":Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;
    if-eqz v0, :cond_1

    .line 2085
    invoke-virtual {v0, p2}, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->setPriority(Z)V

    .line 2086
    invoke-virtual {v0}, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 2088
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageCreationTaskList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 2089
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageCreationTaskList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 2101
    :cond_0
    :goto_0
    return-void

    .line 2093
    :cond_1
    new-instance v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;

    .end local v0    # "task":Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;
    const/4 v1, 0x6

    const/4 v2, 0x2

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;-><init>(Lcom/oneplus/gallery2/MediaSetListFragment;Lcom/oneplus/gallery2/media/MediaSet;II)V

    .line 2094
    .restart local v0    # "task":Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;
    invoke-virtual {v0, p2}, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->setPriority(Z)V

    .line 2095
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageCreationTaskTable:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2096
    if-eqz p2, :cond_2

    .line 2097
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageCreationTaskList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 2100
    :goto_1
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaSetListFragment;->scheduleCoverImageCreation()V

    goto :goto_0

    .line 2099
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageCreationTaskList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private createCoverImages()V
    .locals 3

    .prologue
    .line 2107
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_IsCoverImageCreationScheduled:Z

    .line 2108
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageCreationTaskList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_ActiveCoverImageCreationTasks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 2110
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageCreationTaskList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;

    .line 2111
    .local v0, "task":Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_ActiveCoverImageCreationTasks:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2112
    invoke-virtual {v0}, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->createCoverImage()V

    .line 2113
    invoke-virtual {v0}, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2114
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_ActiveCoverImageCreationTasks:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2116
    .end local v0    # "task":Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;
    :cond_1
    return-void
.end method

.method private detachFromMediaSet(Lcom/oneplus/gallery2/media/MediaSet;)V
    .locals 2
    .param p1, "set"    # Lcom/oneplus/gallery2/media/MediaSet;

    .prologue
    .line 919
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery2/media/MediaSet;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 920
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSet;->PROP_COVER_HASH_CODE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetCoverHashCodeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery2/media/MediaSet;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 921
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetNameChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery2/media/MediaSet;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 924
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/MediaSetListFragment;->cancelCreatingCoverImage(Lcom/oneplus/gallery2/media/MediaSet;)V

    .line 927
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageTempBase:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_SelectedMediaSet:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 931
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/MediaSetListFragment;->updateSelectedMediaSet(Lcom/oneplus/gallery2/media/MediaSet;)V

    .line 932
    :cond_0
    return-void
.end method

.method private findItemViewForMediaSet(Lcom/oneplus/gallery2/media/MediaSet;)Landroid/view/View;
    .locals 5
    .param p1, "mediaSet"    # Lcom/oneplus/gallery2/media/MediaSet;

    .prologue
    const/4 v3, 0x0

    .line 849
    iget-object v4, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetListView:Landroid/widget/ListView;

    if-nez v4, :cond_1

    move-object v1, v3

    .line 858
    :cond_0
    :goto_0
    return-object v1

    .line 851
    :cond_1
    iget-object v4, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 853
    iget-object v4, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetListView:Landroid/widget/ListView;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 854
    .local v1, "itemView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 855
    .local v2, "tag":Ljava/lang/Object;
    instance-of v4, v2, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;

    if-eqz v4, :cond_2

    check-cast v2, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;

    .end local v2    # "tag":Ljava/lang/Object;
    iget-object v4, v2, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->mediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    if-eq v4, p1, :cond_0

    .line 851
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v1    # "itemView":Landroid/view/View;
    :cond_3
    move-object v1, v3

    .line 858
    goto :goto_0
.end method

.method private getMediaSetImageKey(Lcom/oneplus/gallery2/media/MediaSet;)Ljava/lang/String;
    .locals 1
    .param p1, "mediaSet"    # Lcom/oneplus/gallery2/media/MediaSet;

    .prologue
    .line 2121
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/gallery2/MediaSetListFragment;->getMediaSetImageKey(Lcom/oneplus/gallery2/media/MediaSet;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMediaSetImageKey(Lcom/oneplus/gallery2/media/MediaSet;Z)Ljava/lang/String;
    .locals 6
    .param p1, "mediaSet"    # Lcom/oneplus/gallery2/media/MediaSet;
    .param p2, "idOnly"    # Z

    .prologue
    .line 2125
    if-nez p1, :cond_0

    .line 2126
    const/4 v1, 0x0

    .line 2130
    :goto_0
    return-object v1

    .line 2127
    :cond_0
    if-eqz p2, :cond_2

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/MediaSet;->getId()Ljava/lang/String;

    move-result-object v0

    .line 2128
    .local v0, "key":Ljava/lang/String;
    :goto_1
    if-nez v0, :cond_1

    .line 2129
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/MediaSet;->getId()Ljava/lang/String;

    move-result-object v0

    .line 2130
    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "(%x)%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverBackgroundColor:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2127
    .end local v0    # "key":Ljava/lang/String;
    :cond_2
    sget-object v1, Lcom/oneplus/gallery2/media/MediaSet;->PROP_COVER_HASH_CODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v1}, Lcom/oneplus/gallery2/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    goto :goto_1
.end method

.method private initializeCoverImageCache(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 908
    sget-object v0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    if-nez v0, :cond_0

    .line 911
    new-instance v1, Lcom/oneplus/cache/HybridBitmapLruCache;

    invoke-static {}, Lcom/oneplus/gallery2/GalleryApplication;->current()Lcom/oneplus/gallery2/GalleryApplication;

    move-result-object v2

    const-string v3, "MediaSetCoverImage"

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const-wide/32 v6, 0x1400000

    const-wide/32 v8, 0xc800000

    invoke-direct/range {v1 .. v9}, Lcom/oneplus/cache/HybridBitmapLruCache;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap$CompressFormat;JJ)V

    sput-object v1, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    .line 913
    :cond_0
    return-void
.end method

.method private obtainEmptyCoverImage()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 938
    const/4 v0, 0x0

    .line 939
    .local v0, "coverImage":Landroid/graphics/Bitmap;
    :goto_0
    sget-object v1, Lcom/oneplus/gallery2/MediaSetListFragment;->m_EmptyCoverImagePool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 941
    sget-object v1, Lcom/oneplus/gallery2/MediaSetListFragment;->m_EmptyCoverImagePool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "coverImage":Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 942
    .restart local v0    # "coverImage":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageWidth:I

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageHeight:I

    if-ne v1, v2, :cond_2

    .line 950
    :cond_0
    if-nez v0, :cond_1

    .line 954
    iget v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageWidth:I

    iget v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 956
    :cond_1
    iget v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 957
    return-object v0

    .line 948
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCoverImageCreationCompleted(Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;)V
    .locals 3
    .param p1, "task"    # Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;

    .prologue
    .line 989
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_ActiveCoverImageCreationTasks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 991
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCoverImageCreationCompleted() - Task for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/MediaSet;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been cancelled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    :goto_0
    return-void

    .line 996
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageCreationTaskTable:Ljava/util/Map;

    iget-object v1, p1, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaSetListFragment;->scheduleCoverImageCreation()V

    goto :goto_0
.end method

.method private onCoverImageUpdated(Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;Landroid/graphics/Bitmap;Z)V
    .locals 5
    .param p1, "task"    # Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;
    .param p2, "coverImage"    # Landroid/graphics/Bitmap;
    .param p3, "isRecyclableImage"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1004
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_ActiveCoverImageCreationTasks:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1006
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCoverImageUpdated() - Task for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    invoke-interface {v4}, Lcom/oneplus/gallery2/media/MediaSet;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has been cancelled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    .end local p2    # "coverImage":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 1009
    .restart local p2    # "coverImage":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v2, p1, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    invoke-direct {p0, v2}, Lcom/oneplus/gallery2/MediaSetListFragment;->findItemViewForMediaSet(Lcom/oneplus/gallery2/media/MediaSet;)Landroid/view/View;

    move-result-object v1

    .line 1010
    .local v1, "itemView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1012
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;

    iget-object v0, v2, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    .line 1013
    .local v0, "coverImageView":Landroid/widget/ImageView;
    if-eqz p3, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    .end local p2    # "coverImage":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1014
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1015
    invoke-direct {p0, v0, v3}, Lcom/oneplus/gallery2/MediaSetListFragment;->setItemImageViewBackgroundVisibility(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private onMediaCountChanged(Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 11
    .param p1, "mediaSet"    # Lcom/oneplus/gallery2/media/MediaSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery2/media/MediaSet;",
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

    .line 1115
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/MediaSetListFragment;->findItemViewForMediaSet(Lcom/oneplus/gallery2/media/MediaSet;)Landroid/view/View;

    move-result-object v0

    .line 1116
    .local v0, "convertView":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 1118
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;

    .line 1119
    .local v5, "viewInfo":Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;
    iget-object v6, v5, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->mediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1122
    sget-object v6, Lcom/oneplus/gallery2/media/MediaSet;->PROP_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v6}, Lcom/oneplus/gallery2/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1123
    .local v1, "photoCount":Ljava/lang/Integer;
    sget-object v6, Lcom/oneplus/gallery2/media/MediaSet;->PROP_VIDEO_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v6}, Lcom/oneplus/gallery2/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1125
    .local v3, "videoCount":Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 1126
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1128
    :cond_0
    if-nez v3, :cond_1

    .line 1129
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1134
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gt v6, v9, :cond_3

    .line 1135
    const v6, 0x7f09007d

    invoke-virtual {p0, v6}, Lcom/oneplus/gallery2/MediaSetListFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v1, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1139
    .local v2, "photoCountStr":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gt v6, v9, :cond_4

    .line 1140
    const v6, 0x7f09007f

    invoke-virtual {p0, v6}, Lcom/oneplus/gallery2/MediaSetListFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v3, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1144
    .local v4, "videoCountStr":Ljava/lang/String;
    :goto_1
    iget-object v6, v5, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->mediaCountText:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1145
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_5

    .line 1146
    iget-object v6, v5, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->mediaCountText:Landroid/widget/TextView;

    const v7, 0x7f090081

    invoke-virtual {p0, v7}, Lcom/oneplus/gallery2/MediaSetListFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v10

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1155
    :goto_2
    invoke-virtual {p2}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_8

    .line 1157
    iget-object v6, v5, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1158
    iget-object v6, v5, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    invoke-direct {p0, v6, v10}, Lcom/oneplus/gallery2/MediaSetListFragment;->setItemImageViewBackgroundVisibility(Landroid/view/View;Z)V

    .line 1168
    .end local v1    # "photoCount":Ljava/lang/Integer;
    .end local v2    # "photoCountStr":Ljava/lang/String;
    .end local v3    # "videoCount":Ljava/lang/Integer;
    .end local v4    # "videoCountStr":Ljava/lang/String;
    .end local v5    # "viewInfo":Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;
    :cond_2
    :goto_3
    return-void

    .line 1137
    .restart local v1    # "photoCount":Ljava/lang/Integer;
    .restart local v3    # "videoCount":Ljava/lang/Integer;
    .restart local v5    # "viewInfo":Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;
    :cond_3
    const v6, 0x7f09007e

    invoke-virtual {p0, v6}, Lcom/oneplus/gallery2/MediaSetListFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v1, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "photoCountStr":Ljava/lang/String;
    goto :goto_0

    .line 1142
    :cond_4
    const v6, 0x7f090080

    invoke-virtual {p0, v6}, Lcom/oneplus/gallery2/MediaSetListFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v3, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "videoCountStr":Ljava/lang/String;
    goto :goto_1

    .line 1147
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_6

    .line 1148
    iget-object v6, v5, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->mediaCountText:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1149
    :cond_6
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_7

    .line 1150
    iget-object v6, v5, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->mediaCountText:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1152
    :cond_7
    iget-object v6, v5, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->mediaCountText:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 1160
    :cond_8
    invoke-virtual {p2}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_2

    .line 1162
    iget-object v6, v5, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    new-instance v7, Lcom/oneplus/gallery2/MediaSetListFragment$EmptyCoverDrawable;

    invoke-static {}, Lcom/oneplus/gallery2/GalleryApplication;->current()Lcom/oneplus/gallery2/GalleryApplication;

    move-result-object v8

    iget-boolean v9, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_IsBlackMode:Z

    invoke-direct {v7, v8, v9}, Lcom/oneplus/gallery2/MediaSetListFragment$EmptyCoverDrawable;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1163
    iget-object v6, v5, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1164
    iget-object v6, v5, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    invoke-direct {p0, v6, v10}, Lcom/oneplus/gallery2/MediaSetListFragment;->setItemImageViewBackgroundVisibility(Landroid/view/View;Z)V

    goto :goto_3
.end method

.method private onMediaSetAdded(Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 4
    .param p1, "e"    # Lcom/oneplus/gallery2/ListChangeEventArgs;

    .prologue
    .line 1199
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/MediaSetList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1201
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_EmptyAlbumView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1202
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_EmptyAlbumView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1206
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getStartIndex()I

    move-result v1

    .local v1, "i":I
    invoke-virtual {p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getEndIndex()I

    move-result v0

    .local v0, "end":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 1207
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    invoke-interface {v2, v1}, Lcom/oneplus/gallery2/media/MediaSetList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/MediaSet;

    invoke-direct {p0, v2}, Lcom/oneplus/gallery2/MediaSetListFragment;->attachToMediaSet(Lcom/oneplus/gallery2/media/MediaSet;)V

    .line 1206
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1208
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetListAdapter:Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;

    if-eqz v2, :cond_2

    .line 1209
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetListAdapter:Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;

    invoke-virtual {v2}, Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;->notifyDataSetChanged()V

    .line 1210
    :cond_2
    return-void
.end method

.method private onMediaSetCoverHashCodeChanged(Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 9
    .param p1, "mediaSet"    # Lcom/oneplus/gallery2/media/MediaSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery2/media/MediaSet;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/String;>;"
    const/4 v8, 0x1

    .line 1174
    invoke-virtual {p2}, Lcom/oneplus/base/PropertyChangeEventArgs;->getOldValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1175
    .local v2, "prevHashCode":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1177
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "(%x)%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverBackgroundColor:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v2, v5, v8

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1178
    .local v1, "imageHashCode":Ljava/lang/String;
    sget-object v3, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    invoke-virtual {v3, v1}, Lcom/oneplus/cache/HybridBitmapLruCache;->remove(Ljava/io/Serializable;)Z

    .line 1182
    .end local v1    # "imageHashCode":Ljava/lang/String;
    :cond_0
    sget-object v3, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    invoke-direct {p0, p1, v8}, Lcom/oneplus/gallery2/MediaSetListFragment;->getMediaSetImageKey(Lcom/oneplus/gallery2/media/MediaSet;Z)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/oneplus/cache/HybridBitmapLruCache;->get(Ljava/io/Serializable;Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1183
    .local v0, "baseCover":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 1185
    iget-object v3, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMediaSetCoverHashCodeChanged() - store cover image for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/MediaSetListFragment;->getMediaSetImageKey(Lcom/oneplus/gallery2/media/MediaSet;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    iget-object v3, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageTempBase:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    :cond_1
    sget-object v3, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    invoke-direct {p0, p1, v8}, Lcom/oneplus/gallery2/MediaSetListFragment;->getMediaSetImageKey(Lcom/oneplus/gallery2/media/MediaSet;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/cache/HybridBitmapLruCache;->remove(Ljava/io/Serializable;)Z

    .line 1190
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/MediaSetListFragment;->cancelCreatingCoverImage(Lcom/oneplus/gallery2/media/MediaSet;)V

    .line 1191
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/MediaSetListFragment;->updateMediaSetItem(Lcom/oneplus/gallery2/media/MediaSet;)V

    .line 1192
    return-void
.end method

.method private onMediaSetListReady()V
    .locals 2

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->TAG:Ljava/lang/String;

    const-string v1, "onMediaSetListReady()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_EmptyAlbumView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1225
    :cond_0
    :goto_0
    return-void

    .line 1221
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaSetList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1222
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_EmptyAlbumView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1224
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_EmptyAlbumView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private onMediaSetMoved()V
    .locals 1

    .prologue
    .line 1231
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetListAdapter:Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;

    if-eqz v0, :cond_0

    .line 1232
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetListAdapter:Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;->notifyDataSetChanged()V

    .line 1233
    :cond_0
    return-void
.end method

.method private onMediaSetNameChanged(Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 1
    .param p1, "mediaSet"    # Lcom/oneplus/gallery2/media/MediaSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery2/media/MediaSet;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1239
    .local p2, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetListAdapter:Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;

    if-eqz v0, :cond_0

    .line 1240
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetListAdapter:Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;->notifyDataSetInvalidated()V

    .line 1241
    :cond_0
    return-void
.end method

.method private onMediaSetRemoved(Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 2
    .param p1, "e"    # Lcom/oneplus/gallery2/ListChangeEventArgs;

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaSetList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1249
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_EmptyAlbumView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1250
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_EmptyAlbumView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1252
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetListAdapter:Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;

    if-eqz v0, :cond_2

    .line 1253
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetListAdapter:Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;->notifyDataSetChanged()V

    .line 1254
    :cond_2
    return-void
.end method

.method private onMediaSetRemoving(Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 3
    .param p1, "e"    # Lcom/oneplus/gallery2/ListChangeEventArgs;

    .prologue
    .line 1260
    invoke-virtual {p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getStartIndex()I

    move-result v1

    .local v1, "i":I
    invoke-virtual {p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getEndIndex()I

    move-result v0

    .local v0, "end":I
    :goto_0
    if-gt v1, v0, :cond_0

    .line 1261
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    invoke-interface {v2, v1}, Lcom/oneplus/gallery2/media/MediaSetList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/MediaSet;

    invoke-direct {p0, v2}, Lcom/oneplus/gallery2/MediaSetListFragment;->detachFromMediaSet(Lcom/oneplus/gallery2/media/MediaSet;)V

    .line 1260
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1262
    :cond_0
    return-void
.end method

.method private onSelectionModeChanged(Z)V
    .locals 2
    .param p1, "isSelectionMode"    # Z

    .prologue
    .line 1406
    if-eqz p1, :cond_1

    .line 1409
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/MediaSetListFragment;->setToolBarVisibility(Z)V

    .line 1412
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_Toolbar:Landroid/widget/Toolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_SelectedMediaSet:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1413
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_Toolbar:Landroid/widget/Toolbar;

    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_SelectedMediaSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1429
    :cond_0
    :goto_0
    return-void

    .line 1418
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_SelectedMediaSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1420
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_SelectedMediaSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1422
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetListAdapter:Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;

    if-eqz v0, :cond_2

    .line 1423
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetListAdapter:Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;->notifyDataSetChanged()V

    .line 1427
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/MediaSetListFragment;->setToolBarVisibility(Z)V

    goto :goto_0
.end method

.method private onVisibleMediaSetsChanged()V
    .locals 22

    .prologue
    .line 1453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    .line 1558
    :cond_0
    :goto_0
    return-void

    .line 1455
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ListView;->getChildCount()I

    move-result v14

    .line 1456
    .local v14, "viewCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/oneplus/gallery2/media/MediaSetList;->size()I

    move-result v19

    add-int/lit8 v10, v19, -0x1

    .line 1458
    .local v10, "maxMediaSetIndex":I
    if-lez v14, :cond_a

    .line 1460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;

    .line 1461
    .local v15, "viewInfo":Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;
    iget v4, v15, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->position:I

    .line 1462
    .local v4, "firstVisibleIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    add-int/lit8 v20, v14, -0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "viewInfo":Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;
    check-cast v15, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;

    .line 1463
    .restart local v15    # "viewInfo":Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;
    iget v9, v15, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->position:I

    .line 1472
    .end local v15    # "viewInfo":Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;
    .local v9, "lastVisibleIndex":I
    :goto_1
    if-ltz v10, :cond_b

    .line 1474
    if-gez v4, :cond_2

    .line 1475
    const/4 v4, 0x0

    .line 1476
    :cond_2
    if-gez v9, :cond_3

    .line 1477
    const/4 v9, 0x0

    .line 1478
    :cond_3
    if-le v4, v10, :cond_4

    .line 1479
    move v4, v10

    .line 1480
    :cond_4
    if-le v9, v10, :cond_5

    .line 1481
    move v9, v10

    .line 1494
    :cond_5
    :goto_2
    sget-object v20, Lcom/oneplus/gallery2/MediaSetListFragment$18;->$SwitchMap$com$oneplus$base$BaseFragment$State:[I

    sget-object v19, Lcom/oneplus/gallery2/MediaSetListFragment;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/MediaSetListFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/oneplus/base/BaseFragment$State;

    invoke-virtual/range {v19 .. v19}, Lcom/oneplus/base/BaseFragment$State;->ordinal()I

    move-result v19

    aget v19, v20, v19

    packed-switch v19, :pswitch_data_0

    .line 1501
    const/16 v17, 0x0

    .line 1504
    .local v17, "windowSize":I
    :goto_3
    sub-int v18, v4, v17

    .line 1505
    .local v18, "windowStartIndex":I
    add-int v16, v9, v17

    .line 1506
    .local v16, "windowEndIndex":I
    if-gez v18, :cond_6

    .line 1508
    sub-int v16, v16, v18

    .line 1509
    const/16 v18, 0x0

    .line 1510
    move/from16 v0, v16

    if-le v0, v10, :cond_6

    .line 1511
    move/from16 v16, v10

    .line 1513
    :cond_6
    move/from16 v0, v16

    if-le v0, v10, :cond_7

    .line 1515
    sub-int v19, v16, v10

    sub-int v18, v18, v19

    .line 1516
    move/from16 v16, v10

    .line 1517
    if-gez v18, :cond_7

    .line 1518
    const/16 v18, 0x0

    .line 1522
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_ActiveCoverImageCreationTasks:Ljava/util/Set;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 1523
    .local v13, "taskIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;>;"
    :cond_8
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_c

    .line 1525
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;

    .line 1526
    .local v12, "task":Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    move-object/from16 v19, v0

    iget-object v0, v12, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/oneplus/gallery2/media/MediaSetList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 1527
    .local v8, "index":I
    move/from16 v0, v18

    if-lt v8, v0, :cond_9

    move/from16 v0, v16

    if-le v8, v0, :cond_8

    .line 1529
    :cond_9
    invoke-interface {v13}, Ljava/util/Iterator;->remove()V

    .line 1530
    invoke-virtual {v12}, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->cancel()V

    goto :goto_4

    .line 1467
    .end local v4    # "firstVisibleIndex":I
    .end local v8    # "index":I
    .end local v9    # "lastVisibleIndex":I
    .end local v12    # "task":Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;
    .end local v13    # "taskIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;>;"
    .end local v16    # "windowEndIndex":I
    .end local v17    # "windowSize":I
    .end local v18    # "windowStartIndex":I
    :cond_a
    const/4 v4, 0x0

    .line 1468
    .restart local v4    # "firstVisibleIndex":I
    const/4 v9, 0x0

    .restart local v9    # "lastVisibleIndex":I
    goto :goto_1

    .line 1487
    :cond_b
    const/4 v4, 0x0

    .line 1488
    const/4 v9, 0x0

    .line 1489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/MediaSetListFragment;->TAG:Ljava/lang/String;

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

    .line 1498
    :pswitch_0
    const/16 v17, 0x3

    .line 1499
    .restart local v17    # "windowSize":I
    goto :goto_3

    .line 1535
    .restart local v13    # "taskIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;>;"
    .restart local v16    # "windowEndIndex":I
    .restart local v18    # "windowStartIndex":I
    :cond_c
    add-int/lit8 v2, v4, -0x1

    .local v2, "backwardIndex":I
    move v3, v2

    .line 1536
    .end local v2    # "backwardIndex":I
    .local v3, "backwardIndex":I
    :goto_5
    move/from16 v0, v18

    if-lt v3, v0, :cond_d

    .line 1538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    move-object/from16 v19, v0

    add-int/lit8 v2, v3, -0x1

    .end local v3    # "backwardIndex":I
    .restart local v2    # "backwardIndex":I
    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Lcom/oneplus/gallery2/media/MediaSetList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/oneplus/gallery2/media/MediaSet;

    .line 1539
    .local v11, "mediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v11, v1}, Lcom/oneplus/gallery2/MediaSetListFragment;->createCoverImage(Lcom/oneplus/gallery2/media/MediaSet;Z)V

    move v3, v2

    .line 1540
    .end local v2    # "backwardIndex":I
    .restart local v3    # "backwardIndex":I
    goto :goto_5

    .line 1541
    .end local v11    # "mediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    :cond_d
    add-int/lit8 v5, v9, 0x1

    .local v5, "forwardIndex":I
    move v6, v5

    .line 1542
    .end local v5    # "forwardIndex":I
    .local v6, "forwardIndex":I
    :goto_6
    move/from16 v0, v16

    if-gt v6, v0, :cond_e

    .line 1544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    move-object/from16 v19, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "forwardIndex":I
    .restart local v5    # "forwardIndex":I
    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Lcom/oneplus/gallery2/media/MediaSetList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/oneplus/gallery2/media/MediaSet;

    .line 1545
    .restart local v11    # "mediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v11, v1}, Lcom/oneplus/gallery2/MediaSetListFragment;->createCoverImage(Lcom/oneplus/gallery2/media/MediaSet;Z)V

    move v6, v5

    .line 1546
    .end local v5    # "forwardIndex":I
    .restart local v6    # "forwardIndex":I
    goto :goto_6

    .line 1547
    .end local v11    # "mediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    :cond_e
    if-ltz v10, :cond_f

    .line 1549
    move v7, v4

    .local v7, "i":I
    :goto_7
    if-gt v7, v9, :cond_f

    .line 1551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Lcom/oneplus/gallery2/media/MediaSetList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/oneplus/gallery2/media/MediaSet;

    .line 1552
    .restart local v11    # "mediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v11, v1}, Lcom/oneplus/gallery2/MediaSetListFragment;->createCoverImage(Lcom/oneplus/gallery2/media/MediaSet;Z)V

    .line 1549
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 1557
    .end local v7    # "i":I
    .end local v11    # "mediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/gallery2/MediaSetListFragment;->scheduleCoverImageCreation()V

    goto/16 :goto_0

    .line 1494
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
    .line 1564
    if-nez p1, :cond_1

    .line 1577
    :cond_0
    :goto_0
    return-void

    .line 1566
    :cond_1
    sget-object v0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_EmptyCoverImagePool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageWidth:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageHeight:I

    if-ne v0, v1, :cond_0

    .line 1572
    sget-object v0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_EmptyCoverImagePool:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private removeImageInCache(Lcom/oneplus/gallery2/media/MediaSet;)V
    .locals 2
    .param p1, "mediaSet"    # Lcom/oneplus/gallery2/media/MediaSet;

    .prologue
    .line 2135
    sget-object v0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/MediaSetListFragment;->getMediaSetImageKey(Lcom/oneplus/gallery2/media/MediaSet;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/cache/HybridBitmapLruCache;->remove(Ljava/io/Serializable;)Z

    .line 2136
    sget-object v0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/oneplus/gallery2/MediaSetListFragment;->getMediaSetImageKey(Lcom/oneplus/gallery2/media/MediaSet;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/cache/HybridBitmapLruCache;->remove(Ljava/io/Serializable;)Z

    .line 2137
    return-void
.end method

.method private reportScrollOffsets()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 1582
    iget v4, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_ScrollOffsetY:I

    .line 1583
    .local v4, "prevY":I
    iget-object v7, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetListView:Landroid/widget/ListView;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_3

    .line 1585
    iget-object v7, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 1586
    .local v1, "firstPosition":I
    iget-object v7, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetListView:Landroid/widget/ListView;

    invoke-virtual {v7, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1587
    .local v3, "itemView":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;

    .line 1588
    .local v5, "viewInfo":Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;
    iget v7, v5, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->position:I

    if-eq v7, v1, :cond_0

    .line 1590
    const/4 v3, 0x0

    .line 1591
    const/4 v2, 0x1

    .local v2, "i":I
    iget-object v7, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1593
    iget-object v7, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetListView:Landroid/widget/ListView;

    invoke-virtual {v7, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1594
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "viewInfo":Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;
    check-cast v5, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;

    .line 1595
    .restart local v5    # "viewInfo":Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;
    iget v7, v5, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->position:I

    if-ne v7, v1, :cond_2

    .line 1600
    .end local v0    # "count":I
    .end local v2    # "i":I
    :cond_0
    neg-int v7, v1

    iget v8, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetItemHeight:I

    mul-int/2addr v7, v8

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    :cond_1
    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_ScrollOffsetY:I

    .line 1604
    .end local v1    # "firstPosition":I
    .end local v3    # "itemView":Landroid/view/View;
    .end local v5    # "viewInfo":Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;
    :goto_1
    sget-object v6, Lcom/oneplus/gallery2/MediaSetListFragment;->PROP_SCROLL_OFFSET_Y:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_ScrollOffsetY:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/oneplus/gallery2/MediaSetListFragment;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1605
    return-void

    .line 1597
    .restart local v0    # "count":I
    .restart local v1    # "firstPosition":I
    .restart local v2    # "i":I
    .restart local v3    # "itemView":Landroid/view/View;
    .restart local v5    # "viewInfo":Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;
    :cond_2
    const/4 v3, 0x0

    .line 1591
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1603
    .end local v0    # "count":I
    .end local v1    # "firstPosition":I
    .end local v2    # "i":I
    .end local v3    # "itemView":Landroid/view/View;
    .end local v5    # "viewInfo":Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;
    :cond_3
    iput v6, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_ScrollOffsetY:I

    goto :goto_1
.end method

.method private scheduleCoverImageCreation()V
    .locals 2

    .prologue
    .line 1611
    iget-boolean v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_IsCoverImageCreationScheduled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageCreationTaskList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/gallery2/MediaSetListFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1615
    sget-object v1, Lcom/oneplus/gallery2/MediaSetListFragment$18;->$SwitchMap$com$oneplus$base$BaseFragment$State:[I

    sget-object v0, Lcom/oneplus/gallery2/MediaSetListFragment;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/MediaSetListFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/BaseFragment$State;

    invoke-virtual {v0}, Lcom/oneplus/base/BaseFragment$State;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1626
    :cond_0
    :goto_0
    return-void

    .line 1623
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_IsCoverImageCreationScheduled:Z

    .line 1624
    invoke-virtual {p0}, Lcom/oneplus/gallery2/MediaSetListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1615
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
    .line 1667
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/gallery2/MediaSetListFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1673
    :cond_0
    :goto_0
    return-void

    .line 1672
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/gallery2/MediaSetListFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v0

    const-string v1, "media_set_list_item_cover_media_background"

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/GalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private setMediaSetList(Lcom/oneplus/gallery2/media/MediaSetList;)Z
    .locals 8
    .param p1, "newList"    # Lcom/oneplus/gallery2/media/MediaSetList;

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 1683
    iget-object v4, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->TAG:Ljava/lang/String;

    const-string v5, "setMediaSetList()"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1685
    if-nez p1, :cond_0

    .line 1687
    new-instance v2, Lcom/oneplus/gallery2/MediaSetListFragment$ClearCacheTask;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/oneplus/gallery2/MediaSetListFragment$ClearCacheTask;-><init>(Lcom/oneplus/gallery2/MediaSetListFragment$1;)V

    .line 1688
    .local v2, "task":Lcom/oneplus/gallery2/MediaSetListFragment$ClearCacheTask;
    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    aput-object v6, v5, v3

    invoke-virtual {v2, v4, v5}, Lcom/oneplus/gallery2/MediaSetListFragment$ClearCacheTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1691
    .end local v2    # "task":Lcom/oneplus/gallery2/MediaSetListFragment$ClearCacheTask;
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    .line 1692
    .local v1, "oldList":Lcom/oneplus/gallery2/media/MediaSetList;
    iput-object p1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    .line 1693
    if-ne v1, p1, :cond_1

    .line 1734
    :goto_0
    return v3

    .line 1697
    :cond_1
    invoke-direct {p0, v7}, Lcom/oneplus/gallery2/MediaSetListFragment;->cancelCreatingCoverImages(Z)V

    .line 1700
    if-eqz v1, :cond_2

    .line 1702
    sget-object v3, Lcom/oneplus/gallery2/media/MediaSetList;->PROP_IS_READY:Lcom/oneplus/base/PropertyKey;

    iget-object v4, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetListReadyChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v1, v3, v4}, Lcom/oneplus/gallery2/media/MediaSetList;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1703
    sget-object v3, Lcom/oneplus/gallery2/media/MediaSetList;->EVENT_MEDIA_SET_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v1, v3, v4}, Lcom/oneplus/gallery2/media/MediaSetList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1704
    sget-object v3, Lcom/oneplus/gallery2/media/MediaSetList;->EVENT_MEDIA_SET_MOVED:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetMovedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v1, v3, v4}, Lcom/oneplus/gallery2/media/MediaSetList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1705
    sget-object v3, Lcom/oneplus/gallery2/media/MediaSetList;->EVENT_MEDIA_SET_REMOVED:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetRemovedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v1, v3, v4}, Lcom/oneplus/gallery2/media/MediaSetList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1706
    sget-object v3, Lcom/oneplus/gallery2/media/MediaSetList;->EVENT_MEDIA_SET_REMOVING:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetRemovingHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v1, v3, v4}, Lcom/oneplus/gallery2/media/MediaSetList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1707
    invoke-interface {v1}, Lcom/oneplus/gallery2/media/MediaSetList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 1708
    invoke-interface {v1, v0}, Lcom/oneplus/gallery2/media/MediaSetList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/media/MediaSet;

    invoke-direct {p0, v3}, Lcom/oneplus/gallery2/MediaSetListFragment;->detachFromMediaSet(Lcom/oneplus/gallery2/media/MediaSet;)V

    .line 1707
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1711
    .end local v0    # "i":I
    :cond_2
    if-nez p1, :cond_5

    .line 1712
    iget-object v3, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->TAG:Ljava/lang/String;

    const-string v4, "setMediaSetList() - newList is null"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1731
    :cond_3
    iget-object v3, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetListAdapter:Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;

    if-eqz v3, :cond_4

    .line 1732
    iget-object v3, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetListAdapter:Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;

    invoke-virtual {v3}, Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;->notifyDataSetChanged()V

    .line 1734
    :cond_4
    sget-object v3, Lcom/oneplus/gallery2/MediaSetListFragment;->PROP_MEDIA_SET_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3, v1, p1}, Lcom/oneplus/gallery2/MediaSetListFragment;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    .line 1716
    :cond_5
    sget-object v3, Lcom/oneplus/gallery2/media/MediaSetList;->PROP_IS_READY:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v3}, Lcom/oneplus/gallery2/media/MediaSetList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1717
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaSetListFragment;->onMediaSetListReady()V

    .line 1720
    :goto_2
    sget-object v3, Lcom/oneplus/gallery2/media/MediaSetList;->EVENT_MEDIA_SET_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v3, v4}, Lcom/oneplus/gallery2/media/MediaSetList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1721
    sget-object v3, Lcom/oneplus/gallery2/media/MediaSetList;->EVENT_MEDIA_SET_MOVED:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetMovedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v3, v4}, Lcom/oneplus/gallery2/media/MediaSetList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1722
    sget-object v3, Lcom/oneplus/gallery2/media/MediaSetList;->EVENT_MEDIA_SET_REMOVED:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetRemovedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v3, v4}, Lcom/oneplus/gallery2/media/MediaSetList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1723
    sget-object v3, Lcom/oneplus/gallery2/media/MediaSetList;->EVENT_MEDIA_SET_REMOVING:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetRemovingHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v3, v4}, Lcom/oneplus/gallery2/media/MediaSetList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1726
    iget-object v3, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    invoke-interface {v3}, Lcom/oneplus/gallery2/media/MediaSetList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0    # "i":I
    :goto_3
    if-ltz v0, :cond_3

    .line 1727
    invoke-interface {p1, v0}, Lcom/oneplus/gallery2/media/MediaSetList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/media/MediaSet;

    invoke-direct {p0, v3}, Lcom/oneplus/gallery2/MediaSetListFragment;->attachToMediaSet(Lcom/oneplus/gallery2/media/MediaSet;)V

    .line 1726
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 1719
    .end local v0    # "i":I
    :cond_6
    sget-object v3, Lcom/oneplus/gallery2/media/MediaSetList;->PROP_IS_READY:Lcom/oneplus/base/PropertyKey;

    iget-object v4, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetListReadyChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v3, v4}, Lcom/oneplus/gallery2/media/MediaSetList;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    goto :goto_2
.end method

.method private setToolBarVisibility(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    .line 1677
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_Toolbar:Landroid/widget/Toolbar;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/MediaSetListFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v0

    sget-object v2, Lcom/oneplus/gallery2/GalleryActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery2/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f020061

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Toolbar;->setNavigationIcon(I)V

    .line 1678
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_Toolbar:Landroid/widget/Toolbar;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/Toolbar;->setVisibility(I)V

    .line 1679
    return-void

    .line 1677
    :cond_0
    const v0, 0x7f020062

    goto :goto_0

    .line 1678
    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method private updateIcon(Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;)V
    .locals 2
    .param p1, "mediaSet"    # Lcom/oneplus/gallery2/media/MediaSet;
    .param p2, "viewInfo"    # Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;

    .prologue
    .line 1739
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1741
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->TAG:Ljava/lang/String;

    const-string v1, "updateIcon() - mediaSet or viewInfo is null"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1753
    :goto_0
    return-void

    .line 1745
    :cond_1
    instance-of v0, p1, Lcom/oneplus/gallery2/media/CameraRollMediaSet;

    if-eqz v0, :cond_3

    .line 1746
    iget-object v1, p2, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->mediaSetIcon:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_IsBlackMode:Z

    if-eqz v0, :cond_2

    const v0, 0x7f02009d

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const v0, 0x7f02009e

    goto :goto_1

    .line 1747
    :cond_3
    instance-of v0, p1, Lcom/oneplus/gallery2/media/FavoriteMediaSet;

    if-eqz v0, :cond_5

    .line 1748
    iget-object v1, p2, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->mediaSetIcon:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_IsBlackMode:Z

    if-eqz v0, :cond_4

    const v0, 0x7f0200a0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_4
    const v0, 0x7f0200a1

    goto :goto_2

    .line 1749
    :cond_5
    instance-of v0, p1, Lcom/oneplus/gallery2/media/AlbumMediaSet;

    if-eqz v0, :cond_7

    .line 1750
    iget-object v1, p2, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->mediaSetIcon:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_IsBlackMode:Z

    if-eqz v0, :cond_6

    const v0, 0x7f02009b

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_6
    const v0, 0x7f02009c

    goto :goto_3

    .line 1752
    :cond_7
    iget-object v0, p2, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->mediaSetIcon:Landroid/widget/ImageView;

    const v1, 0x7f02009f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateMediaSetItem(Lcom/oneplus/gallery2/media/MediaSet;)V
    .locals 14
    .param p1, "mediaSet"    # Lcom/oneplus/gallery2/media/MediaSet;

    .prologue
    .line 1760
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/MediaSetListFragment;->findItemViewForMediaSet(Lcom/oneplus/gallery2/media/MediaSet;)Landroid/view/View;

    move-result-object v0

    .line 1761
    .local v0, "convertView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 1843
    :goto_0
    return-void

    .line 1767
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;

    .line 1768
    .local v7, "viewInfo":Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;
    iget-object v8, v7, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->mediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1773
    invoke-direct {p0, p1, v7}, Lcom/oneplus/gallery2/MediaSetListFragment;->updateIcon(Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;)V

    .line 1776
    sget-object v8, Lcom/oneplus/gallery2/media/MediaSet;->PROP_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v8}, Lcom/oneplus/gallery2/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1777
    .local v3, "photoCount":Ljava/lang/Integer;
    sget-object v8, Lcom/oneplus/gallery2/media/MediaSet;->PROP_VIDEO_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v8}, Lcom/oneplus/gallery2/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1779
    .local v5, "videoCount":Ljava/lang/Integer;
    if-nez v3, :cond_1

    .line 1780
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1782
    :cond_1
    if-nez v5, :cond_2

    .line 1783
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1788
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    if-gt v8, v9, :cond_3

    .line 1789
    const v8, 0x7f09007d

    invoke-virtual {p0, v8}, Lcom/oneplus/gallery2/MediaSetListFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1793
    .local v4, "photoCountStr":Ljava/lang/String;
    :goto_1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    if-gt v8, v9, :cond_4

    .line 1794
    const v8, 0x7f09007f

    invoke-virtual {p0, v8}, Lcom/oneplus/gallery2/MediaSetListFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1798
    .local v6, "videoCountStr":Ljava/lang/String;
    :goto_2
    iget-object v8, v7, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->mediaCountText:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1799
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lez v8, :cond_5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lez v8, :cond_5

    .line 1800
    iget-object v8, v7, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->mediaCountText:Landroid/widget/TextView;

    const v9, 0x7f090081

    invoke-virtual {p0, v9}, Lcom/oneplus/gallery2/MediaSetListFragment;->getString(I)Ljava/lang/String;

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

    .line 1809
    :goto_3
    sget-object v8, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/MediaSetListFragment;->getMediaSetImageKey(Lcom/oneplus/gallery2/media/MediaSet;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-virtual {v8, v9, v10, v12, v13}, Lcom/oneplus/cache/HybridBitmapLruCache;->get(Ljava/io/Serializable;Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1811
    .local v1, "coverImage":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_8

    .line 1814
    iget-object v8, v7, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1815
    iget-object v8, v7, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1816
    iget-object v8, v7, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/oneplus/gallery2/MediaSetListFragment;->setItemImageViewBackgroundVisibility(Landroid/view/View;Z)V

    goto/16 :goto_0

    .line 1791
    .end local v1    # "coverImage":Landroid/graphics/Bitmap;
    .end local v4    # "photoCountStr":Ljava/lang/String;
    .end local v6    # "videoCountStr":Ljava/lang/String;
    :cond_3
    const v8, 0x7f09007e

    invoke-virtual {p0, v8}, Lcom/oneplus/gallery2/MediaSetListFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "photoCountStr":Ljava/lang/String;
    goto :goto_1

    .line 1796
    :cond_4
    const v8, 0x7f090080

    invoke-virtual {p0, v8}, Lcom/oneplus/gallery2/MediaSetListFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "videoCountStr":Ljava/lang/String;
    goto :goto_2

    .line 1801
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lez v8, :cond_6

    .line 1802
    iget-object v8, v7, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->mediaCountText:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1803
    :cond_6
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lez v8, :cond_7

    .line 1804
    iget-object v8, v7, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->mediaCountText:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1806
    :cond_7
    iget-object v8, v7, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->mediaCountText:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 1820
    .restart local v1    # "coverImage":Landroid/graphics/Bitmap;
    :cond_8
    sget-object v8, Lcom/oneplus/gallery2/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v8}, Lcom/oneplus/gallery2/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1821
    .local v2, "mediaSetSize":Ljava/lang/Integer;
    if-nez v2, :cond_9

    .line 1823
    iget-object v8, v7, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1824
    iget-object v8, v7, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/oneplus/gallery2/MediaSetListFragment;->setItemImageViewBackgroundVisibility(Landroid/view/View;Z)V

    goto/16 :goto_0

    .line 1826
    :cond_9
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lez v8, :cond_a

    .line 1829
    const/4 v8, 0x1

    invoke-direct {p0, p1, v8}, Lcom/oneplus/gallery2/MediaSetListFragment;->createCoverImage(Lcom/oneplus/gallery2/media/MediaSet;Z)V

    .line 1830
    iget-object v8, v7, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Lcom/oneplus/gallery2/MediaSetListFragment;->setItemImageViewBackgroundVisibility(Landroid/view/View;Z)V

    goto/16 :goto_0

    .line 1834
    :cond_a
    iget-object v8, v7, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    new-instance v9, Lcom/oneplus/gallery2/MediaSetListFragment$EmptyCoverDrawable;

    invoke-static {}, Lcom/oneplus/gallery2/GalleryApplication;->current()Lcom/oneplus/gallery2/GalleryApplication;

    move-result-object v10

    iget-boolean v11, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_IsBlackMode:Z

    invoke-direct {v9, v10, v11}, Lcom/oneplus/gallery2/MediaSetListFragment$EmptyCoverDrawable;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1835
    iget-object v8, v7, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1836
    iget-object v8, v7, Lcom/oneplus/gallery2/MediaSetListFragment$ViewInfo;->coverImage:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/oneplus/gallery2/MediaSetListFragment;->setItemImageViewBackgroundVisibility(Landroid/view/View;Z)V

    goto/16 :goto_0

    .line 1841
    .end local v1    # "coverImage":Landroid/graphics/Bitmap;
    .end local v2    # "mediaSetSize":Ljava/lang/Integer;
    .end local v3    # "photoCount":Ljava/lang/Integer;
    .end local v4    # "photoCountStr":Ljava/lang/String;
    .end local v5    # "videoCount":Ljava/lang/Integer;
    .end local v6    # "videoCountStr":Ljava/lang/String;
    :cond_b
    iget-object v8, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->TAG:Ljava/lang/String;

    const-string v9, "updateMediaSetItem() - mediaSet is not on screen"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private updateSelectedMediaSet(Lcom/oneplus/gallery2/media/MediaSet;)V
    .locals 2
    .param p1, "mediaSet"    # Lcom/oneplus/gallery2/media/MediaSet;

    .prologue
    .line 1847
    sget-object v0, Lcom/oneplus/gallery2/MediaSetListFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/MediaSetListFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1849
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->TAG:Ljava/lang/String;

    const-string v1, "updateSelectedMediaSet() - not in selection mode"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    :cond_0
    :goto_0
    return-void

    .line 1854
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_SelectedMediaSet:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1855
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_SelectedMediaSet:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1860
    :goto_1
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_SelectedMediaSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1861
    sget-object v0, Lcom/oneplus/gallery2/MediaSetListFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/MediaSetListFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1869
    :goto_2
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetListAdapter:Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;

    if-eqz v0, :cond_0

    .line 1870
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetListAdapter:Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1857
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_SelectedMediaSet:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1865
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_Toolbar:Landroid/widget/Toolbar;

    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_SelectedMediaSet:Ljava/util/ArrayList;

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
    .line 867
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/gallery2/MediaSetListFragment;->PROP_SCROLL_OFFSET_Y:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 868
    iget v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_ScrollOffsetY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 869
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/GalleryFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 875
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 882
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/GalleryFragment;->handleMessage(Landroid/os/Message;)V

    .line 885
    :goto_0
    return-void

    .line 878
    :pswitch_0
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaSetListFragment;->createCoverImages()V

    goto :goto_0

    .line 875
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected onAttachToGallery(Lcom/oneplus/gallery2/Gallery;)V
    .locals 2
    .param p1, "gallery"    # Lcom/oneplus/gallery2/Gallery;

    .prologue
    .line 966
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/GalleryFragment;->onAttachToGallery(Lcom/oneplus/gallery2/Gallery;)V

    .line 969
    invoke-static {}, Lcom/oneplus/gallery2/GalleryApplication;->current()Lcom/oneplus/gallery2/GalleryApplication;

    move-result-object v0

    const-class v1, Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/GalleryApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    iput-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    .line 970
    return-void
.end method

.method protected onBackToInitialUIState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 978
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetListAdapter:Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetListAdapter:Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 979
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 982
    :cond_0
    sget-object v0, Lcom/oneplus/gallery2/MediaSetListFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/MediaSetListFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 983
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1022
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/GalleryFragment;->onCreate(Landroid/os/Bundle;)V

    .line 1024
    invoke-virtual {p0}, Lcom/oneplus/gallery2/MediaSetListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_Activity:Landroid/app/Activity;

    .line 1025
    invoke-virtual {p0}, Lcom/oneplus/gallery2/MediaSetListFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/GalleryActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_IsBlackMode:Z

    .line 1026
    new-instance v0, Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;-><init>(Lcom/oneplus/gallery2/MediaSetListFragment;Lcom/oneplus/gallery2/MediaSetListFragment$1;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetListAdapter:Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;

    .line 1028
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_Activity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/MediaSetListFragment;->initializeCoverImageCache(Landroid/content/Context;)V

    .line 1029
    sget-object v0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CacheImageLoaderExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 1030
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CacheImageLoaderExecutor:Ljava/util/concurrent/ExecutorService;

    .line 1032
    :cond_0
    sget-object v0, Lcom/oneplus/gallery2/MediaSetListFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_IsSelectionModeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/MediaSetListFragment;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1033
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    .line 1039
    iget-object v7, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->TAG:Ljava/lang/String;

    const-string v8, "onCreateView()"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    invoke-virtual {p0}, Lcom/oneplus/gallery2/MediaSetListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1041
    .local v3, "res":Landroid/content/res/Resources;
    const v7, 0x7f0500b0

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetItemHeight:I

    .line 1042
    invoke-virtual {p0}, Lcom/oneplus/gallery2/MediaSetListFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v7

    const-string v8, "media_set_list_item_cover_media_background"

    invoke-virtual {v7, v8}, Lcom/oneplus/gallery2/GalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverBackgroundColor:I

    .line 1043
    const v7, 0x7f030012

    invoke-virtual {p1, v7, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1046
    .local v0, "baseView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/oneplus/gallery2/MediaSetListFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v7

    sget-object v8, Lcom/oneplus/gallery2/GalleryActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v7, v8}, Lcom/oneplus/gallery2/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/base/ScreenSize;

    .line 1047
    .local v4, "screenSize":Lcom/oneplus/base/ScreenSize;
    invoke-virtual {v4}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Lcom/oneplus/base/ScreenSize;->getHeight()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageWidth:I

    .line 1048
    const v7, 0x7f0500a7

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageHeight:I

    .line 1051
    const v7, 0x7f060052

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_EmptyAlbumView:Landroid/view/View;

    .line 1052
    iget-object v7, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_EmptyAlbumView:Landroid/view/View;

    const v8, 0x7f060053

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_EmptyAlbumCreateIcon:Landroid/widget/ImageView;

    .line 1053
    iget-object v8, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_EmptyAlbumCreateIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/MediaSetListFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v7

    sget-object v9, Lcom/oneplus/gallery2/GalleryActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v7, v9}, Lcom/oneplus/gallery2/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2

    const v7, 0x7f0200a5

    :goto_0
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1054
    iget-object v7, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_EmptyAlbumView:Landroid/view/View;

    const v8, 0x7f060054

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_EmptyAlbumTitle:Landroid/widget/TextView;

    .line 1055
    iget-object v7, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_EmptyAlbumView:Landroid/view/View;

    const v8, 0x7f060055

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_EmtpyAlbumText:Landroid/widget/TextView;

    .line 1056
    iget-object v7, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_EmptyAlbumTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/MediaSetListFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v8

    const-string v9, "no_photo_title"

    invoke-virtual {v8, v9}, Lcom/oneplus/gallery2/GalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1057
    iget-object v7, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_EmtpyAlbumText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/MediaSetListFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v8

    const-string v9, "no_photo_text"

    invoke-virtual {v8, v9}, Lcom/oneplus/gallery2/GalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1060
    const v7, 0x7f060050

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 1061
    .local v1, "listView":Landroid/widget/ListView;
    sget-object v7, Lcom/oneplus/gallery2/MediaSetListFragment;->PROP_LIST_VIEW_PADDING_TOP:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/gallery2/MediaSetListFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1062
    .local v2, "listViewPaddingTop":I
    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v7

    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v8

    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v1, v7, v2, v8, v9}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 1065
    const v7, 0x7f060051

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Toolbar;

    .line 1066
    .local v5, "toolbar":Landroid/widget/Toolbar;
    invoke-virtual {v5}, Landroid/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 1067
    .local v6, "toolbarParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v7, :cond_0

    .line 1069
    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local v6    # "toolbarParams":Landroid/view/ViewGroup$LayoutParams;
    sget-object v7, Lcom/oneplus/gallery2/MediaSetListFragment;->PROP_TOOL_BAR_MARGIN_TOP:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/gallery2/MediaSetListFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1083
    :cond_0
    iget-object v7, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    invoke-interface {v7}, Lcom/oneplus/gallery2/media/MediaSetList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    sget-object v8, Lcom/oneplus/gallery2/media/MediaSetList;->PROP_IS_READY:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v7, v8}, Lcom/oneplus/gallery2/media/MediaSetList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1084
    iget-object v7, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_EmptyAlbumView:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1085
    :cond_1
    return-object v0

    .line 1053
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
    .line 1092
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/MediaSetListFragment;->setMediaSetList(Lcom/oneplus/gallery2/media/MediaSetList;)Z

    .line 1093
    invoke-super {p0}, Lcom/oneplus/gallery2/GalleryFragment;->onDestroy()V

    .line 1095
    sget-object v0, Lcom/oneplus/gallery2/MediaSetListFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_IsSelectionModeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/MediaSetListFragment;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1098
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageTempBase:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1099
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 1105
    sget-object v0, Lcom/oneplus/gallery2/MediaSetListFragment;->PROP_IS_SCROLLING:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/MediaSetListFragment;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1106
    invoke-super {p0}, Lcom/oneplus/gallery2/GalleryFragment;->onDestroyView()V

    .line 1107
    return-void
.end method

.method public onPause()V
    .locals 5

    .prologue
    .line 1380
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/oneplus/gallery2/MediaSetListFragment;->cancelCreatingCoverImages(Z)V

    .line 1383
    invoke-super {p0}, Lcom/oneplus/gallery2/GalleryFragment;->onPause()V

    .line 1386
    iget-object v4, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetDecodingHandles:Ljava/util/Hashtable;

    if-eqz v4, :cond_2

    .line 1388
    iget-object v4, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetDecodingHandles:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 1389
    .local v1, "handleLists":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/ArrayList<Lcom/oneplus/base/Handle;>;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1391
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1392
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

    .line 1393
    .local v0, "handle":Lcom/oneplus/base/Handle;
    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 1395
    .end local v0    # "handle":Lcom/oneplus/base/Handle;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/base/Handle;>;"
    :cond_1
    iget-object v4, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetDecodingHandles:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->clear()V

    .line 1399
    .end local v1    # "handleLists":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/ArrayList<Lcom/oneplus/base/Handle;>;>;"
    :cond_2
    iget-object v4, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_ThumbManagerActivateHandle:Lcom/oneplus/base/Handle;

    invoke-static {v4}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_ThumbManagerActivateHandle:Lcom/oneplus/base/Handle;

    .line 1400
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 1267
    invoke-super {p0}, Lcom/oneplus/gallery2/GalleryFragment;->onResume()V

    .line 1270
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_ThumbManagerActivateHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    if-eqz v1, :cond_0

    .line 1271
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/oneplus/gallery2/media/ThumbnailImageManager;->activate(I)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_ThumbManagerActivateHandle:Lcom/oneplus/base/Handle;

    .line 1273
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery2/MediaSetListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f060050

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetListView:Landroid/widget/ListView;

    .line 1274
    invoke-virtual {p0}, Lcom/oneplus/gallery2/MediaSetListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f060051

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Toolbar;

    iput-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_Toolbar:Landroid/widget/Toolbar;

    .line 1275
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_Toolbar:Landroid/widget/Toolbar;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/MediaSetListFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v2

    const-string v3, "action_bar_background"

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery2/GalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Toolbar;->setBackgroundColor(I)V

    .line 1277
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetListView:Landroid/widget/ListView;

    new-instance v2, Lcom/oneplus/gallery2/MediaSetListFragment$13;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery2/MediaSetListFragment$13;-><init>(Lcom/oneplus/gallery2/MediaSetListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1294
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetListView:Landroid/widget/ListView;

    new-instance v2, Lcom/oneplus/gallery2/MediaSetListFragment$14;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery2/MediaSetListFragment$14;-><init>(Lcom/oneplus/gallery2/MediaSetListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1310
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetListAdapter:Lcom/oneplus/gallery2/MediaSetListFragment$MediaSetListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1311
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetListView:Landroid/widget/ListView;

    new-instance v2, Lcom/oneplus/gallery2/MediaSetListFragment$15;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery2/MediaSetListFragment$15;-><init>(Lcom/oneplus/gallery2/MediaSetListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1329
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_Toolbar:Landroid/widget/Toolbar;

    invoke-virtual {v1}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    .line 1330
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_Toolbar:Landroid/widget/Toolbar;

    const v2, 0x7f0b0003

    invoke-virtual {v1, v2}, Landroid/widget/Toolbar;->inflateMenu(I)V

    .line 1331
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_Toolbar:Landroid/widget/Toolbar;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/MediaSetListFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v2

    const v3, 0x7f0a0023

    invoke-virtual {v1, v2, v3}, Landroid/widget/Toolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    .line 1332
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_Toolbar:Landroid/widget/Toolbar;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/MediaSetListFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v2

    const-string v3, "tool_bar_text"

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery2/GalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Toolbar;->setTitleTextColor(I)V

    .line 1333
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_Toolbar:Landroid/widget/Toolbar;

    invoke-virtual {v1}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f06009c

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oneplus/gallery2/MediaSetListFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v1

    sget-object v3, Lcom/oneplus/gallery2/GalleryActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v3}, Lcom/oneplus/gallery2/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f02005d

    :goto_0
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1334
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_Toolbar:Landroid/widget/Toolbar;

    new-instance v2, Lcom/oneplus/gallery2/MediaSetListFragment$16;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery2/MediaSetListFragment$16;-><init>(Lcom/oneplus/gallery2/MediaSetListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Toolbar;->setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V

    .line 1346
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_Toolbar:Landroid/widget/Toolbar;

    new-instance v2, Lcom/oneplus/gallery2/MediaSetListFragment$17;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery2/MediaSetListFragment$17;-><init>(Lcom/oneplus/gallery2/MediaSetListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1356
    iget-boolean v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_IsBlackMode:Z

    .line 1357
    .local v0, "prevBlackModeState":Z
    invoke-virtual {p0}, Lcom/oneplus/gallery2/MediaSetListFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/gallery2/GalleryActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery2/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_IsBlackMode:Z

    .line 1358
    iget-boolean v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_IsBlackMode:Z

    if-eq v1, v0, :cond_1

    .line 1360
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume() - Theme changed to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_IsBlackMode:Z

    if-eqz v1, :cond_3

    const-string v1, "DARK"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    invoke-virtual {p0}, Lcom/oneplus/gallery2/MediaSetListFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v1

    const-string v2, "media_set_list_item_cover_media_background"

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery2/GalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverBackgroundColor:I

    .line 1362
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_EmptyAlbumCreateIcon:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_IsBlackMode:Z

    if-eqz v1, :cond_4

    const v1, 0x7f0200a5

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1363
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/oneplus/gallery2/MediaSetListFragment;->cancelCreatingCoverImages(Z)V

    .line 1364
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaSetListFragment;->onVisibleMediaSetsChanged()V

    .line 1367
    :cond_1
    sget-object v1, Lcom/oneplus/gallery2/MediaSetListFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/MediaSetListFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/oneplus/gallery2/MediaSetListFragment;->onSelectionModeChanged(Z)V

    .line 1368
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaSetListFragment;->reportScrollOffsets()V

    .line 1371
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaSetListFragment;->scheduleCoverImageCreation()V

    .line 1372
    return-void

    .line 1333
    .end local v0    # "prevBlackModeState":Z
    :cond_2
    const v1, 0x7f02005e

    goto/16 :goto_0

    .line 1360
    .restart local v0    # "prevBlackModeState":Z
    :cond_3
    const-string v1, "LIGHT"

    goto :goto_1

    .line 1362
    :cond_4
    const v1, 0x7f0200a6

    goto :goto_2
.end method

.method public onStop()V
    .locals 5

    .prologue
    .line 1437
    invoke-super {p0}, Lcom/oneplus/gallery2/GalleryFragment;->onStop()V

    .line 1440
    sget-object v1, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    if-eqz v1, :cond_0

    .line 1441
    sget-object v1, Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    invoke-virtual {v1}, Lcom/oneplus/cache/HybridBitmapLruCache;->flush()V

    .line 1444
    :cond_0
    new-instance v0, Lcom/oneplus/gallery2/MediaSetListFragment$ClearCacheTask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oneplus/gallery2/MediaSetListFragment$ClearCacheTask;-><init>(Lcom/oneplus/gallery2/MediaSetListFragment$1;)V

    .line 1445
    .local v0, "task":Lcom/oneplus/gallery2/MediaSetListFragment$ClearCacheTask;
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/MediaSetListFragment$ClearCacheTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1446
    return-void
.end method

.method public scrollTo(Lcom/oneplus/gallery2/media/MediaSet;Z)Z
    .locals 3
    .param p1, "mediaSet"    # Lcom/oneplus/gallery2/media/MediaSet;
    .param p2, "smoothScroll"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1637
    invoke-virtual {p0}, Lcom/oneplus/gallery2/MediaSetListFragment;->verifyAccess()V

    .line 1638
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetListView:Landroid/widget/ListView;

    if-nez v2, :cond_1

    .line 1649
    :cond_0
    :goto_0
    return v1

    .line 1640
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    invoke-interface {v2, p1}, Lcom/oneplus/gallery2/media/MediaSetList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1641
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 1643
    if-eqz p2, :cond_2

    .line 1644
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 1647
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1646
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetListView:Landroid/widget/ListView;

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
    .line 1657
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v0, Lcom/oneplus/gallery2/MediaSetListFragment;->PROP_MEDIA_SET_LIST:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 1658
    check-cast p2, Lcom/oneplus/gallery2/media/MediaSetList;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/gallery2/MediaSetListFragment;->setMediaSetList(Lcom/oneplus/gallery2/media/MediaSetList;)Z

    move-result v0

    .line 1660
    :goto_0
    return v0

    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery2/GalleryFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
