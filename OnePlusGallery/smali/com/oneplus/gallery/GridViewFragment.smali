.class public Lcom/oneplus/gallery/GridViewFragment;
.super Lcom/oneplus/gallery/GalleryFragment;
.source "GridViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/GridViewFragment$18;,
        Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;,
        Lcom/oneplus/gallery/GridViewFragment$PreDecodeBitmapRunnable;,
        Lcom/oneplus/gallery/GridViewFragment$GroupingType;,
        Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;,
        Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;,
        Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;,
        Lcom/oneplus/gallery/GridViewFragment$HeaderSpanSizeLookup;,
        Lcom/oneplus/gallery/GridViewFragment$AutoScrollDirection;,
        Lcom/oneplus/gallery/GridViewFragment$OnItemClickListener;
    }
.end annotation


# static fields
.field private static final AUTO_SCROLL_PERIOD:I = 0xf

.field private static final AUTO_SCROLL_TOTAL_TIME:J = 0x7fffffffffffffffL

.field private static final DAY_IN_MILLISEC:J = 0x5265c00L

.field private static final DELAYED_ADJUST_THUMBPOSITION:J = 0x3e8L

.field public static final EVENT_MEDIA_CLICKED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/gallery/ListItemEventArgs",
            "<",
            "Lcom/oneplus/gallery/media/Media;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final EVENT_PICKER_SELECTION_DONE:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/base/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private static final INDEX_RESET:I = -0x1

.field private static final INTENT_FILTER:Landroid/content/IntentFilter;

.field private static final MSG_CHECK_DATE_CHANGED:I = 0x3e9

.field private static final MSG_GRIDVIEW_SCROLL_TOP:I = 0x3ea

.field public static final PRE_DECODE_BITMAP_COUNTS:I = 0x1c

.field public static final PROP_CAMERA_ITEM_MEDIALIST_POSITION:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_GROUPING:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_GROUPING_TYPE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_GROUP_HEADER_PADDING_TOP:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_CAMERA_ROLL:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_EMPTY_ICON_VISIBLE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_LONG_CLICK_AVAILABLE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

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

.field public static final PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/gallery/media/MediaList;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/gallery/media/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_RECYCLER_VIEW_PADDING_TOP:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
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

.field public static final PROP_SELECTION_COUNT:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_SELECTION_STYLE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_TODAY_DATE_MILLIES:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Long;",
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

.field private static final SCROLL_THRESHOLD_FAST_MULTIPLY:F = 0.05f

.field private static final SCROLL_THRESHOLD_MULTIPLY:F = 0.1f

.field private static final THUMBNAIL_IMAGE_WINDOW_SIZE:I = 0x40


# instance fields
.field private adjustThumbPosition:Ljava/lang/Runnable;

.field private m_AddToCallback:Lcom/oneplus/base/OperationCallback;

.field private m_AnchorPosition:I

.field private m_AppTracker:Lcom/oneplus/gallery/AppTracker;

.field private m_AutoScrollDirection:Lcom/oneplus/gallery/GridViewFragment$AutoScrollDirection;

.field private m_AutoScrollFastHeight:I

.field private m_AutoScrollHeight:I

.field private m_AutoScrollStarted:Z

.field m_AutoScrollTimer:Landroid/os/CountDownTimer;

.field private m_CameraItemMediaPosition:I

.field private final m_DateChanged:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private m_DeleteCallback:Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;

.field private m_DownFastThreshold:F

.field private m_DownThreshold:F

.field private m_EmptyMediaTitle:Landroid/widget/TextView;

.field private m_EmptyMediaView:Landroid/view/View;

.field private m_EmptyMediaViewIcon:Landroid/widget/ImageView;

.field private m_EmtpyMediaText:Landroid/widget/TextView;

.field private m_FastScrollbar:Lcom/oneplus/gallery/widget/FastScrollBar;

.field private m_FirstVisibleMediaIndex:I

.field private m_GridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

.field private m_GridviewColumns:I

.field private m_HasActionBar:Z

.field private m_HeaderAdapter:Lcom/oneplus/gallery/GridViewHeaderAdapter;

.field private m_HeaderHeight:I

.field private m_HeaderItemDecoration:Lcom/oneplus/gallery/HeaderItemDecoration;

.field private m_HeaderManager:Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;

.field private m_HeaderSpanSizeLookup:Lcom/oneplus/gallery/GridViewFragment$HeaderSpanSizeLookup;

.field private m_HeaderToday:Ljava/lang/String;

.field private m_IsCameraRoll:Z

.field private m_IsGrouping:Z

.field private m_IsRecyclerTouched:Z

.field private m_IsSelectionMode:Z

.field private m_ItemAdapter:Lcom/oneplus/gallery/GridViewItemAdapter;

.field private m_ItemClickListener:Lcom/oneplus/gallery/GridViewFragment$OnItemClickListener;

.field private m_ItemHeight:I

.field private m_LastTimeItemPosition:I

.field private m_LastVisibleMediaIndex:I

.field private final m_MediaAddedHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/gallery/ListChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field m_MediaChangeCallback:Lcom/oneplus/gallery/media/MediaManager$MediaChangeCallback;

.field private m_MediaList:Lcom/oneplus/gallery/media/MediaList;

.field private m_MediaManagerHandle:Lcom/oneplus/base/Handle;

.field private final m_MediaRemovedHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/gallery/ListChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final m_MediaRemovingHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/gallery/ListChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private m_MediaSet:Lcom/oneplus/gallery/media/MediaSet;

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

.field public m_MotionEventX:F

.field public m_MotionEventY:F

.field private m_PeriodicMessageDispatcher:Lcom/oneplus/base/PeriodicMessageDispatcher;

.field private m_PreDecodeBitmapRunnable:Lcom/oneplus/gallery/GridViewFragment$PreDecodeBitmapRunnable;

.field private m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private m_ScrollOffsetY:I

.field private m_SelectionMediaIndexSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_SelectionMediaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/media/Media;",
            ">;"
        }
    .end annotation
.end field

.field private m_ShareMediaChosenAppName:Ljava/lang/String;

.field private m_SharingMediaCB:Lcom/oneplus/gallery/Gallery$ShareMediaResultCallback;

.field private m_ThumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;

.field private m_ThumbManagerActivateHandle:Lcom/oneplus/base/Handle;

.field private final m_ThumbnailInfoTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/gallery/media/Media;",
            "Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final m_TimeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private m_TimeZoneOffset:I

.field private m_TodayHeaderItem:Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;

.field private m_Toolbar:Landroid/widget/Toolbar;

.field private m_ToolbarActionShared:Z

.field private m_ToolbarTitle:Ljava/lang/String;

.field private m_UpFastThreshold:F

.field private m_UpThreshold:F


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x2

    .line 95
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/oneplus/gallery/GridViewFragment;->INTENT_FILTER:Landroid/content/IntentFilter;

    .line 98
    sget-object v0, Lcom/oneplus/gallery/GridViewFragment;->INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    sget-object v0, Lcom/oneplus/gallery/GridViewFragment;->INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    sget-object v0, Lcom/oneplus/gallery/GridViewFragment;->INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 818
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsCameraRoll"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery/GridViewFragment;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_CAMERA_ROLL:Lcom/oneplus/base/PropertyKey;

    .line 822
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsEmptyIconVisible"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery/GridViewFragment;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_EMPTY_ICON_VISIBLE:Lcom/oneplus/base/PropertyKey;

    .line 826
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsLongClickAvailable"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery/GridViewFragment;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_LONG_CLICK_AVAILABLE:Lcom/oneplus/base/PropertyKey;

    .line 830
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsScrolling"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery/GridViewFragment;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_SCROLLING:Lcom/oneplus/base/PropertyKey;

    .line 834
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsSelectionMode"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery/GridViewFragment;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    .line 838
    new-instance v5, Lcom/oneplus/base/PropertyKey;

    const-string v6, "MediaList"

    const-class v7, Lcom/oneplus/gallery/media/MediaList;

    const-class v8, Lcom/oneplus/gallery/GridViewFragment;

    invoke-direct/range {v5 .. v10}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v5, Lcom/oneplus/gallery/GridViewFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    .line 842
    new-instance v5, Lcom/oneplus/base/PropertyKey;

    const-string v6, "MediaSet"

    const-class v7, Lcom/oneplus/gallery/media/MediaSet;

    const-class v8, Lcom/oneplus/gallery/GridViewFragment;

    invoke-direct/range {v5 .. v10}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v5, Lcom/oneplus/gallery/GridViewFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    .line 846
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "ScrollOffsetY"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/gallery/GridViewFragment;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_SCROLL_OFFSET_Y:Lcom/oneplus/base/PropertyKey;

    .line 850
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "SelectionCount"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/gallery/GridViewFragment;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_SELECTION_COUNT:Lcom/oneplus/base/PropertyKey;

    .line 854
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "Grouping"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery/GridViewFragment;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_GROUPING:Lcom/oneplus/base/PropertyKey;

    .line 858
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "GroupingType"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery/GridViewFragment;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_GROUPING_TYPE:Lcom/oneplus/base/PropertyKey;

    .line 862
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "HeaderPaddingTop"

    const-class v2, Ljava/lang/Float;

    const-class v3, Lcom/oneplus/gallery/GridViewFragment;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_GROUP_HEADER_PADDING_TOP:Lcom/oneplus/base/PropertyKey;

    .line 866
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "RecyclerViewPaddingTop"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/gallery/GridViewFragment;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_RECYCLER_VIEW_PADDING_TOP:Lcom/oneplus/base/PropertyKey;

    .line 870
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "TodayDateMillies"

    const-class v2, Ljava/lang/Long;

    const-class v3, Lcom/oneplus/gallery/GridViewFragment;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_TODAY_DATE_MILLIES:Lcom/oneplus/base/PropertyKey;

    .line 874
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "ToolBarMarginTop"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/gallery/GridViewFragment;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_TOOL_BAR_MARGIN_TOP:Lcom/oneplus/base/PropertyKey;

    .line 878
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "CameraItemMediaPosition"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/gallery/GridViewFragment;

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_CAMERA_ITEM_MEDIALIST_POSITION:Lcom/oneplus/base/PropertyKey;

    .line 882
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "SelectionStyle"

    const-class v2, Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;

    const-class v3, Lcom/oneplus/gallery/GridViewFragment;

    sget-object v5, Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;->DEFAULT:Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_SELECTION_STYLE:Lcom/oneplus/base/PropertyKey;

    .line 887
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "MediaClicked"

    const-class v2, Lcom/oneplus/gallery/ListItemEventArgs;

    const-class v3, Lcom/oneplus/gallery/GridViewFragment;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery/GridViewFragment;->EVENT_MEDIA_CLICKED:Lcom/oneplus/base/EventKey;

    .line 892
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "PickerSelectionDone"

    const-class v2, Lcom/oneplus/base/EventArgs;

    const-class v3, Lcom/oneplus/gallery/GridViewFragment;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery/GridViewFragment;->EVENT_PICKER_SELECTION_DONE:Lcom/oneplus/base/EventKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v1, -0x1

    .line 1735
    invoke-direct {p0}, Lcom/oneplus/gallery/GalleryFragment;-><init>()V

    .line 106
    iput-boolean v4, p0, Lcom/oneplus/gallery/GridViewFragment;->m_AutoScrollStarted:Z

    .line 109
    iput v1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_AnchorPosition:I

    .line 110
    iput v2, p0, Lcom/oneplus/gallery/GridViewFragment;->m_DownThreshold:F

    .line 111
    iput v2, p0, Lcom/oneplus/gallery/GridViewFragment;->m_DownFastThreshold:F

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_IsGrouping:Z

    .line 130
    iput-object v3, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    .line 131
    iput-object v3, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaSet:Lcom/oneplus/gallery/media/MediaSet;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_SelectionMediaList:Ljava/util/List;

    .line 137
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_SelectionMediaIndexSet:Ljava/util/Set;

    .line 141
    iput-object v3, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ToolbarTitle:Ljava/lang/String;

    .line 142
    iput-boolean v4, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ToolbarActionShared:Z

    .line 144
    iput v1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_LastTimeItemPosition:I

    .line 146
    iput v2, p0, Lcom/oneplus/gallery/GridViewFragment;->m_UpThreshold:F

    .line 147
    iput v2, p0, Lcom/oneplus/gallery/GridViewFragment;->m_UpFastThreshold:F

    .line 149
    iput-object v3, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ShareMediaChosenAppName:Ljava/lang/String;

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ThumbnailInfoTable:Ljava/util/Map;

    .line 152
    iput v1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_FirstVisibleMediaIndex:I

    .line 153
    iput v1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_LastVisibleMediaIndex:I

    .line 154
    iput v1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_CameraItemMediaPosition:I

    .line 317
    new-instance v0, Lcom/oneplus/gallery/GridViewFragment$1;

    const-wide v2, 0x7fffffffffffffffL

    const-wide/16 v4, 0xf

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/gallery/GridViewFragment$1;-><init>(Lcom/oneplus/gallery/GridViewFragment;JJ)V

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_AutoScrollTimer:Landroid/os/CountDownTimer;

    .line 356
    new-instance v0, Lcom/oneplus/gallery/GridViewFragment$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/GridViewFragment$2;-><init>(Lcom/oneplus/gallery/GridViewFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaChangeCallback:Lcom/oneplus/gallery/media/MediaManager$MediaChangeCallback;

    .line 404
    new-instance v0, Lcom/oneplus/gallery/GridViewFragment$3;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/GridViewFragment$3;-><init>(Lcom/oneplus/gallery/GridViewFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaSetNameChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 413
    new-instance v0, Lcom/oneplus/gallery/GridViewFragment$4;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/GridViewFragment$4;-><init>(Lcom/oneplus/gallery/GridViewFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_AddToCallback:Lcom/oneplus/base/OperationCallback;

    .line 430
    new-instance v0, Lcom/oneplus/gallery/GridViewFragment$5;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/GridViewFragment$5;-><init>(Lcom/oneplus/gallery/GridViewFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_DeleteCallback:Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;

    .line 440
    new-instance v0, Lcom/oneplus/gallery/GridViewFragment$6;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/GridViewFragment$6;-><init>(Lcom/oneplus/gallery/GridViewFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ItemClickListener:Lcom/oneplus/gallery/GridViewFragment$OnItemClickListener;

    .line 657
    new-instance v0, Lcom/oneplus/gallery/GridViewFragment$7;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/GridViewFragment$7;-><init>(Lcom/oneplus/gallery/GridViewFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_TimeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 999
    new-instance v0, Lcom/oneplus/gallery/GridViewFragment$8;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/GridViewFragment$8;-><init>(Lcom/oneplus/gallery/GridViewFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaAddedHandler:Lcom/oneplus/base/EventHandler;

    .line 1007
    new-instance v0, Lcom/oneplus/gallery/GridViewFragment$9;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/GridViewFragment$9;-><init>(Lcom/oneplus/gallery/GridViewFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaRemovedHandler:Lcom/oneplus/base/EventHandler;

    .line 1016
    new-instance v0, Lcom/oneplus/gallery/GridViewFragment$10;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/GridViewFragment$10;-><init>(Lcom/oneplus/gallery/GridViewFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaRemovingHandler:Lcom/oneplus/base/EventHandler;

    .line 2066
    new-instance v0, Lcom/oneplus/gallery/GridViewFragment$11;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/GridViewFragment$11;-><init>(Lcom/oneplus/gallery/GridViewFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->adjustThumbPosition:Ljava/lang/Runnable;

    .line 2172
    new-instance v0, Lcom/oneplus/gallery/GridViewFragment$12;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/GridViewFragment$12;-><init>(Lcom/oneplus/gallery/GridViewFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_DateChanged:Lcom/oneplus/base/PropertyChangedCallback;

    .line 2481
    new-instance v0, Lcom/oneplus/gallery/GridViewFragment$17;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/GridViewFragment$17;-><init>(Lcom/oneplus/gallery/GridViewFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_SharingMediaCB:Lcom/oneplus/gallery/Gallery$ShareMediaResultCallback;

    .line 1736
    invoke-direct {p0}, Lcom/oneplus/gallery/GridViewFragment;->onInitialize()V

    .line 1737
    return-void
.end method

.method private UIPositionToMediaListPosition(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 3173
    move v0, p1

    .line 3174
    .local v0, "mediaIndex":I
    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_GROUPING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3176
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery/GridViewFragment;->findItemGroupIndex(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 3179
    :cond_0
    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_CAMERA_ROLL:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3181
    invoke-virtual {p0}, Lcom/oneplus/gallery/GridViewFragment;->getStartCameraDataPosition()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 3182
    add-int/lit8 v0, v0, -0x1

    .line 3186
    :cond_1
    return v0
.end method

.method static synthetic access$000(Lcom/oneplus/gallery/GridViewFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_IsGrouping:Z

    return v0
.end method

.method static synthetic access$100(Lcom/oneplus/gallery/GridViewFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_GridviewColumns:I

    return v0
.end method

.method static synthetic access$1000(Lcom/oneplus/gallery/GridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/oneplus/gallery/GridViewFragment;)Lcom/oneplus/gallery/GridViewFragment$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ItemClickListener:Lcom/oneplus/gallery/GridViewFragment$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/oneplus/gallery/GridViewFragment;)Lcom/oneplus/gallery/GridViewFragment$AutoScrollDirection;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_AutoScrollDirection:Lcom/oneplus/gallery/GridViewFragment$AutoScrollDirection;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/oneplus/gallery/GridViewFragment;Lcom/oneplus/gallery/GridViewFragment$AutoScrollDirection;)Lcom/oneplus/gallery/GridViewFragment$AutoScrollDirection;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery/GridViewFragment$AutoScrollDirection;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_AutoScrollDirection:Lcom/oneplus/gallery/GridViewFragment$AutoScrollDirection;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/oneplus/gallery/GridViewFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_AutoScrollHeight:I

    return v0
.end method

.method static synthetic access$1400(Lcom/oneplus/gallery/GridViewFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_AutoScrollFastHeight:I

    return v0
.end method

.method static synthetic access$1500(Lcom/oneplus/gallery/GridViewFragment;)Lcom/oneplus/gallery/media/MediaList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/oneplus/gallery/GridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/oneplus/gallery/GridViewFragment;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ThumbnailInfoTable:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/oneplus/gallery/GridViewFragment;)Lcom/oneplus/gallery/GridViewItemAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ItemAdapter:Lcom/oneplus/gallery/GridViewItemAdapter;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/oneplus/gallery/GridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/oneplus/gallery/GridViewFragment;Lcom/oneplus/gallery/media/MediaSet;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery/media/MediaSet;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/GridViewFragment;->onMediaSetNameChanged(Lcom/oneplus/gallery/media/MediaSet;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/oneplus/gallery/GridViewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/oneplus/gallery/GridViewFragment;->exitSelectionMode()V

    return-void
.end method

.method static synthetic access$2200(Lcom/oneplus/gallery/GridViewFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_IsSelectionMode:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/oneplus/gallery/GridViewFragment;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/GridViewFragment;->onSingleItemSelected(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/oneplus/gallery/GridViewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/oneplus/gallery/GridViewFragment;->updateToolBarTitleImageCounts()V

    return-void
.end method

.method static synthetic access$2500(Lcom/oneplus/gallery/GridViewFragment;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/GridViewFragment;->onSingleItemClicked(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/oneplus/gallery/GridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/oneplus/gallery/GridViewFragment;)Lcom/oneplus/gallery/widget/FastScrollBar;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_FastScrollbar:Lcom/oneplus/gallery/widget/FastScrollBar;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/oneplus/gallery/GridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/oneplus/gallery/GridViewFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_AnchorPosition:I

    return v0
.end method

.method static synthetic access$2902(Lcom/oneplus/gallery/GridViewFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_AnchorPosition:I

    return p1
.end method

.method static synthetic access$3000(Lcom/oneplus/gallery/GridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/oneplus/gallery/GridViewFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_LastTimeItemPosition:I

    return v0
.end method

.method static synthetic access$3102(Lcom/oneplus/gallery/GridViewFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_LastTimeItemPosition:I

    return p1
.end method

.method static synthetic access$3200(Lcom/oneplus/gallery/GridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/oneplus/gallery/GridViewFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_SelectionMediaList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/oneplus/gallery/GridViewFragment;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_SelectionMediaIndexSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/oneplus/gallery/GridViewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/oneplus/gallery/GridViewFragment;->resetAutoScrollTimer()V

    return-void
.end method

.method static synthetic access$3600(Lcom/oneplus/gallery/GridViewFragment;)F
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_DownThreshold:F

    return v0
.end method

.method static synthetic access$3602(Lcom/oneplus/gallery/GridViewFragment;F)F
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;
    .param p1, "x1"    # F

    .prologue
    .line 83
    iput p1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_DownThreshold:F

    return p1
.end method

.method static synthetic access$3700(Lcom/oneplus/gallery/GridViewFragment;)F
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_DownFastThreshold:F

    return v0
.end method

.method static synthetic access$3702(Lcom/oneplus/gallery/GridViewFragment;F)F
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;
    .param p1, "x1"    # F

    .prologue
    .line 83
    iput p1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_DownFastThreshold:F

    return p1
.end method

.method static synthetic access$3800(Lcom/oneplus/gallery/GridViewFragment;)F
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_UpThreshold:F

    return v0
.end method

.method static synthetic access$3802(Lcom/oneplus/gallery/GridViewFragment;F)F
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;
    .param p1, "x1"    # F

    .prologue
    .line 83
    iput p1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_UpThreshold:F

    return p1
.end method

.method static synthetic access$3900(Lcom/oneplus/gallery/GridViewFragment;)F
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_UpFastThreshold:F

    return v0
.end method

.method static synthetic access$3902(Lcom/oneplus/gallery/GridViewFragment;F)F
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;
    .param p1, "x1"    # F

    .prologue
    .line 83
    iput p1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_UpFastThreshold:F

    return p1
.end method

.method static synthetic access$4000(Lcom/oneplus/gallery/GridViewFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_AutoScrollStarted:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/oneplus/gallery/GridViewFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_AutoScrollStarted:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/oneplus/gallery/GridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/oneplus/gallery/GridViewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/oneplus/gallery/GridViewFragment;->clearSectionHeaderInfo()V

    return-void
.end method

.method static synthetic access$4300(Lcom/oneplus/gallery/GridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/oneplus/gallery/GridViewFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_TimeZoneOffset:I

    return p1
.end method

.method static synthetic access$4500(Lcom/oneplus/gallery/GridViewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/oneplus/gallery/GridViewFragment;->reBuildDateHeaders()V

    return-void
.end method

.method static synthetic access$4600(Lcom/oneplus/gallery/GridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5102(Lcom/oneplus/gallery/GridViewFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_IsRecyclerTouched:Z

    return p1
.end method

.method static synthetic access$5300(Lcom/oneplus/gallery/GridViewFragment;)Landroid/support/v7/widget/GridLayoutManager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_GridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/oneplus/gallery/GridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/oneplus/gallery/GridViewFragment;Lcom/oneplus/gallery/ListChangeEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery/ListChangeEventArgs;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/GridViewFragment;->onMediaAdded(Lcom/oneplus/gallery/ListChangeEventArgs;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/oneplus/gallery/GridViewFragment;Lcom/oneplus/gallery/ListChangeEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery/ListChangeEventArgs;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/GridViewFragment;->onMediaRemoved(Lcom/oneplus/gallery/ListChangeEventArgs;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/oneplus/gallery/GridViewFragment;Lcom/oneplus/gallery/ListChangeEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery/ListChangeEventArgs;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/GridViewFragment;->onMediaRemoving(Lcom/oneplus/gallery/ListChangeEventArgs;)V

    return-void
.end method

.method static synthetic access$6300(Lcom/oneplus/gallery/GridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderToday:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/oneplus/gallery/GridViewFragment;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;
    .param p1, "x1"    # Lcom/oneplus/base/PropertyKey;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 83
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery/GridViewFragment;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6500(Lcom/oneplus/gallery/GridViewFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderHeight:I

    return v0
.end method

.method static synthetic access$6600(Lcom/oneplus/gallery/GridViewFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ItemHeight:I

    return v0
.end method

.method static synthetic access$6700(Lcom/oneplus/gallery/GridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/oneplus/gallery/GridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/oneplus/gallery/GridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/gallery/GridViewFragment;Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery/media/Media;
    .param p2, "x2"    # Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;
    .param p3, "x3"    # Landroid/graphics/Bitmap;

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery/GridViewFragment;->onHQThumbnailImageDecoded(Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$7000(Lcom/oneplus/gallery/GridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7100(Lcom/oneplus/gallery/GridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/oneplus/gallery/GridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/oneplus/gallery/GridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/oneplus/gallery/GridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/oneplus/gallery/GridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/oneplus/gallery/GridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/oneplus/gallery/GridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/oneplus/gallery/GridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/oneplus/gallery/GridViewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/oneplus/gallery/GridViewFragment;->checkDate()V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/gallery/GridViewFragment;)Lcom/oneplus/gallery/media/ThumbnailImageManager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ThumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/oneplus/gallery/GridViewFragment;II)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/GridViewFragment;->reportScrollOffsets(II)V

    return-void
.end method

.method static synthetic access$8300(Lcom/oneplus/gallery/GridViewFragment;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;
    .param p1, "x1"    # Lcom/oneplus/base/PropertyKey;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 83
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery/GridViewFragment;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8400(Lcom/oneplus/gallery/GridViewFragment;)Lcom/oneplus/base/PeriodicMessageDispatcher;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_PeriodicMessageDispatcher:Lcom/oneplus/base/PeriodicMessageDispatcher;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/oneplus/gallery/GridViewFragment;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;
    .param p1, "x1"    # Lcom/oneplus/base/PropertyKey;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 83
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery/GridViewFragment;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8600(Lcom/oneplus/gallery/GridViewFragment;)Lcom/oneplus/base/OperationCallback;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_AddToCallback:Lcom/oneplus/base/OperationCallback;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/oneplus/gallery/GridViewFragment;)Lcom/oneplus/gallery/Gallery$ShareMediaResultCallback;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_SharingMediaCB:Lcom/oneplus/gallery/Gallery$ShareMediaResultCallback;

    return-object v0
.end method

.method static synthetic access$8802(Lcom/oneplus/gallery/GridViewFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ToolbarActionShared:Z

    return p1
.end method

.method static synthetic access$8900(Lcom/oneplus/gallery/GridViewFragment;)Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_DeleteCallback:Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oneplus/gallery/GridViewFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/oneplus/gallery/GridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9100(Lcom/oneplus/gallery/GridViewFragment;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;
    .param p1, "x1"    # Lcom/oneplus/base/EventKey;
    .param p2, "x2"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 83
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery/GridViewFragment;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    return-void
.end method

.method static synthetic access$9202(Lcom/oneplus/gallery/GridViewFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ShareMediaChosenAppName:Ljava/lang/String;

    return-object p1
.end method

.method private cancelAllBitmapDecodeTasks()V
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ItemAdapter:Lcom/oneplus/gallery/GridViewItemAdapter;

    if-eqz v0, :cond_0

    .line 1027
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ItemAdapter:Lcom/oneplus/gallery/GridViewItemAdapter;

    invoke-virtual {v0}, Lcom/oneplus/gallery/GridViewItemAdapter;->cancelAllBitmapDecodeTasks()V

    .line 1029
    :cond_0
    return-void
.end method

.method private checkDate()V
    .locals 6

    .prologue
    .line 2240
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/gallery/GridViewFragment;->convertToLocalTime(J)J

    move-result-wide v0

    .line 2241
    .local v0, "todayDateMillie":J
    sget-object v2, Lcom/oneplus/gallery/GridViewFragment;->PROP_TODAY_DATE_MILLIES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    sget-object v2, Lcom/oneplus/gallery/GridViewFragment;->PROP_TODAY_DATE_MILLIES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2244
    :cond_0
    sget-object v2, Lcom/oneplus/gallery/GridViewFragment;->PROP_TODAY_DATE_MILLIES:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2246
    :cond_1
    return-void
.end method

.method private clearSectionHeaderInfo()V
    .locals 1

    .prologue
    .line 2913
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;

    if-eqz v0, :cond_0

    .line 2914
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;

    invoke-virtual {v0}, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->clearAllHeaderInfo()V

    .line 2915
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_TodayHeaderItem:Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;

    .line 2916
    return-void
.end method

.method private clearSelectImageIcon()V
    .locals 6

    .prologue
    .line 1034
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment;->m_SelectionMediaList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1061
    :goto_0
    return-void

    .line 1036
    :cond_0
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment;->m_GridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v4, :cond_2

    .line 1039
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment;->m_GridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v4}, Landroid/support/v7/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment;->m_GridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v4}, Landroid/support/v7/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result v4

    if-gt v0, v4, :cond_2

    .line 1041
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 1042
    .local v3, "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    instance-of v4, v3, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;

    if-eqz v4, :cond_1

    .line 1044
    check-cast v3, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;

    .end local v3    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->setSelected(Z)V

    .line 1045
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment;->m_SelectionMediaIndexSet:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1039
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1050
    .end local v0    # "i":I
    :cond_2
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderAdapter:Lcom/oneplus/gallery/GridViewHeaderAdapter;

    if-eqz v4, :cond_3

    .line 1053
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment;->m_SelectionMediaIndexSet:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1055
    .local v2, "index":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderAdapter:Lcom/oneplus/gallery/GridViewHeaderAdapter;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/oneplus/gallery/GridViewHeaderAdapter;->notifyItemChanged(I)V

    goto :goto_2

    .line 1059
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "index":Ljava/lang/Integer;
    :cond_3
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment;->m_SelectionMediaList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1060
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment;->m_SelectionMediaIndexSet:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    goto :goto_0
.end method

.method private clearThumbnailInfos()V
    .locals 3

    .prologue
    .line 1067
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ThumbnailInfoTable:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    check-cast v1, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;

    .line 1069
    .local v1, "thumbInfo":Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;
    if-eqz v1, :cond_0

    .line 1070
    invoke-virtual {v1}, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->dropThumbnailImages()Z

    goto :goto_0

    .line 1072
    .end local v1    # "thumbInfo":Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ThumbnailInfoTable:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 1073
    return-void
.end method

.method private exitSelectionMode()V
    .locals 0

    .prologue
    .line 1091
    invoke-direct {p0}, Lcom/oneplus/gallery/GridViewFragment;->resetToolBar()V

    .line 1092
    invoke-direct {p0}, Lcom/oneplus/gallery/GridViewFragment;->clearSelectImageIcon()V

    .line 1093
    return-void
.end method

.method private findTodayHeaderItem()Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    .locals 1

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_TodayHeaderItem:Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;

    if-nez v0, :cond_0

    .line 1133
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;

    invoke-virtual {v0}, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->findTodayHeaderItem()Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_TodayHeaderItem:Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;

    .line 1135
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_TodayHeaderItem:Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;

    goto :goto_0
.end method

.method private getStartCameraUIPosition()I
    .locals 1

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_TodayHeaderItem:Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;

    if-nez v0, :cond_0

    .line 1204
    invoke-direct {p0}, Lcom/oneplus/gallery/GridViewFragment;->findTodayHeaderItem()Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_TodayHeaderItem:Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;

    .line 1206
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_TodayHeaderItem:Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;

    iget v0, v0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;->uiPosition:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isMidNight()V
    .locals 2

    .prologue
    .line 1777
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-nez v0, :cond_0

    .line 1779
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    const-string v1, "isMidNight() - m_MediaList is null return"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1780
    invoke-direct {p0}, Lcom/oneplus/gallery/GridViewFragment;->clearSectionHeaderInfo()V

    .line 1785
    :goto_0
    return-void

    .line 1784
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery/GridViewFragment;->checkDate()V

    goto :goto_0
.end method

.method private mediaListPositionToUIPosition(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1831
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ItemAdapter:Lcom/oneplus/gallery/GridViewItemAdapter;

    if-nez v1, :cond_1

    .line 1832
    const/4 v0, -0x1

    .line 1846
    :cond_0
    :goto_0
    return v0

    .line 1834
    :cond_1
    move v0, p1

    .line 1836
    .local v0, "uiPosition":I
    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_GROUPING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1838
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;

    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ItemAdapter:Lcom/oneplus/gallery/GridViewItemAdapter;

    invoke-virtual {v1, p1}, Lcom/oneplus/gallery/GridViewItemAdapter;->getItemInternal(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/Media;

    # invokes: Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->findHeaderIndex(Lcom/oneplus/gallery/media/Media;)I
    invoke-static {v2, v1}, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->access$8100(Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;Lcom/oneplus/gallery/media/Media;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1841
    :cond_2
    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_CAMERA_ROLL:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1842
    invoke-virtual {p0}, Lcom/oneplus/gallery/GridViewFragment;->getStartCameraDataPosition()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 1843
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private notifyItemRangeInserted(II)V
    .locals 6
    .param p1, "itemRangeStartIndex"    # I
    .param p2, "itemRangeCount"    # I

    .prologue
    .line 1852
    iget-object v3, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderAdapter:Lcom/oneplus/gallery/GridViewHeaderAdapter;

    if-nez v3, :cond_0

    .line 1871
    :goto_0
    return-void

    .line 1854
    :cond_0
    iget-object v3, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyItemRangeInserted() - startIndex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " counts: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1857
    iget-boolean v3, p0, Lcom/oneplus/gallery/GridViewFragment;->m_IsSelectionMode:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/oneplus/gallery/GridViewFragment;->m_SelectionMediaIndexSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1859
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1860
    .local v2, "tempSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/oneplus/gallery/GridViewFragment;->m_SelectionMediaIndexSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1862
    .local v1, "index":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt p1, v3, :cond_1

    .line 1863
    const/4 v3, 0x1

    if-ne p2, v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, p1

    add-int/2addr v3, p2

    goto :goto_2

    .line 1866
    .end local v1    # "index":Ljava/lang/Integer;
    :cond_3
    iget-object v3, p0, Lcom/oneplus/gallery/GridViewFragment;->m_SelectionMediaIndexSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 1867
    iput-object v2, p0, Lcom/oneplus/gallery/GridViewFragment;->m_SelectionMediaIndexSet:Ljava/util/Set;

    .line 1869
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "tempSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_4
    iget-object v3, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderAdapter:Lcom/oneplus/gallery/GridViewHeaderAdapter;

    invoke-virtual {v3, p1, p2}, Lcom/oneplus/gallery/GridViewHeaderAdapter;->notifyItemRangeInserted(II)V

    goto :goto_0
.end method

.method private onHQThumbnailImageDecoded(Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;Landroid/graphics/Bitmap;)V
    .locals 12
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p2, "thumbInfo"    # Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;
    .param p3, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, -0x1

    .line 2585
    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ThumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;

    if-eqz v8, :cond_0

    .line 2586
    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ThumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v8, p1, v9, v10}, Lcom/oneplus/gallery/media/ThumbnailImageManager;->setTempThumbnailImage(Lcom/oneplus/gallery/media/Media;Landroid/graphics/Bitmap;I)Z

    .line 2589
    :cond_0
    if-nez p3, :cond_2

    .line 2657
    :cond_1
    :goto_0
    return-void

    .line 2593
    :cond_2
    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v8, p1}, Lcom/oneplus/gallery/media/MediaList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 2594
    .local v1, "index":I
    :goto_1
    if-ltz v1, :cond_3

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/GridViewFragment;->mediaListPositionToUIPosition(I)I

    move-result v3

    .line 2595
    .local v3, "position":I
    :cond_3
    if-gez v3, :cond_5

    .line 2597
    invoke-virtual {p2}, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->dropThumbnailImages()Z

    goto :goto_0

    .end local v1    # "index":I
    .end local v3    # "position":I
    :cond_4
    move v1, v3

    .line 2593
    goto :goto_1

    .line 2602
    .restart local v1    # "index":I
    .restart local v3    # "position":I
    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/gallery/GridViewFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v0

    .line 2603
    .local v0, "activity":Lcom/oneplus/gallery/GalleryActivity;
    if-nez v0, :cond_6

    .line 2605
    invoke-virtual {p2}, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->dropThumbnailImages()Z

    goto :goto_0

    .line 2609
    :cond_6
    sget-object v9, Lcom/oneplus/gallery/GridViewFragment$18;->$SwitchMap$com$oneplus$base$BaseActivity$State:[I

    sget-object v8, Lcom/oneplus/gallery/GalleryActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v8}, Lcom/oneplus/gallery/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v8}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v8

    aget v8, v9, v8

    packed-switch v8, :pswitch_data_0

    .line 2616
    const/4 v5, 0x0

    .line 2619
    .local v5, "thumbWindowSize":I
    :goto_2
    iget v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_FirstVisibleMediaIndex:I

    sub-int/2addr v8, v5

    if-lt v1, v8, :cond_7

    iget v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_LastVisibleMediaIndex:I

    add-int/2addr v8, v5

    if-le v1, v8, :cond_8

    .line 2621
    :cond_7
    invoke-virtual {p2}, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->dropThumbnailImages()Z

    goto :goto_0

    .line 2613
    .end local v5    # "thumbWindowSize":I
    :pswitch_0
    const/16 v5, 0x40

    .line 2614
    .restart local v5    # "thumbWindowSize":I
    goto :goto_2

    .line 2628
    :cond_8
    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8, v3}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v7

    .line 2630
    .local v7, "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    instance-of v8, v7, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;

    if-eqz v8, :cond_a

    move-object v2, v7

    .line 2632
    check-cast v2, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;

    .line 2633
    .local v2, "itemHolder":Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;
    iget-object v8, v2, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->media:Lcom/oneplus/gallery/media/Media;

    if-eq v8, p1, :cond_9

    .line 2634
    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ItemAdapter:Lcom/oneplus/gallery/GridViewItemAdapter;

    invoke-virtual {v8, p1}, Lcom/oneplus/gallery/GridViewItemAdapter;->findViewHolder(Lcom/oneplus/gallery/media/Media;)Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;

    move-result-object v2

    .line 2638
    :cond_9
    :goto_3
    if-eqz v2, :cond_1

    .line 2640
    const/4 v8, 0x1

    iput-boolean v8, v2, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->isThumbDecoded:Z

    .line 2641
    iget-boolean v8, v2, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->isViewBinding:Z

    if-eqz v8, :cond_b

    .line 2642
    iget-object v8, v2, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    new-instance v9, Lcom/oneplus/gallery/drawable/SimpleBitmapDrawable;

    invoke-direct {v9, p3}, Lcom/oneplus/gallery/drawable/SimpleBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2637
    .end local v2    # "itemHolder":Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;
    :cond_a
    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ItemAdapter:Lcom/oneplus/gallery/GridViewItemAdapter;

    invoke-virtual {v8, p1}, Lcom/oneplus/gallery/GridViewItemAdapter;->findViewHolder(Lcom/oneplus/gallery/media/Media;)Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;

    move-result-object v2

    .restart local v2    # "itemHolder":Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;
    goto :goto_3

    .line 2645
    :cond_b
    iget-object v8, v2, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 2647
    .local v4, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v8, v4, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;

    if-eqz v8, :cond_c

    move-object v6, v4

    .line 2648
    check-cast v6, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;

    .line 2654
    .local v6, "transitionDrawable":Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;
    :goto_4
    new-instance v8, Lcom/oneplus/gallery/drawable/SimpleBitmapDrawable;

    invoke-direct {v8, p3}, Lcom/oneplus/gallery/drawable/SimpleBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const-wide/16 v10, 0x64

    invoke-virtual {v6, v8, v10, v11}, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;->startTransition(Landroid/graphics/drawable/Drawable;J)V

    goto/16 :goto_0

    .line 2651
    .end local v6    # "transitionDrawable":Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;
    :cond_c
    new-instance v6, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;

    sget-object v8, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable$ScaleType;->CENTER_CROP:Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable$ScaleType;

    invoke-direct {v6, v8, v4}, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;-><init>(Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable$ScaleType;Landroid/graphics/drawable/Drawable;)V

    .line 2652
    .restart local v6    # "transitionDrawable":Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;
    iget-object v8, v2, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 2609
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onInitialize()V
    .locals 4

    .prologue
    .line 2183
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    const-string v1, "onInitialize"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2184
    sget-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_TODAY_DATE_MILLIES:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_DateChanged:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/GridViewFragment;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2186
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    iput v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_TimeZoneOffset:I

    .line 2187
    return-void
.end method

.method private onMediaAdded(Lcom/oneplus/gallery/ListChangeEventArgs;)V
    .locals 26
    .param p1, "e"    # Lcom/oneplus/gallery/ListChangeEventArgs;

    .prologue
    .line 1972
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/gallery/GridViewFragment;->m_TodayHeaderItem:Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;

    .line 1974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/oneplus/gallery/media/MediaList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_0

    .line 1975
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/oneplus/gallery/GridViewFragment;->setRecyclerViewVisibility(Z)V

    .line 1978
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/gallery/ListChangeEventArgs;->getStartIndex()I

    move-result v6

    .line 1979
    .local v6, "argsStartIndex":I
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/gallery/ListChangeEventArgs;->getEndIndex()I

    move-result v4

    .line 1980
    .local v4, "argsEndIndex":I
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/gallery/ListChangeEventArgs;->getItemCount()I

    move-result v5

    .line 1981
    .local v5, "argsItemcounts":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "onMediaAdded() -  args startIndex: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " itemCounts: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1983
    sget-object v19, Lcom/oneplus/gallery/GridViewFragment;->PROP_GROUPING:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Boolean;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    if-eqz v19, :cond_a

    .line 1985
    const/16 v19, 0x1

    move/from16 v0, v19

    if-le v5, v0, :cond_6

    .line 1988
    new-array v0, v5, [J

    move-object/from16 v17, v0

    .line 1989
    .local v17, "takenTimes":[J
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 1990
    .local v11, "groups":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 1991
    .local v13, "isgroupsNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    const-wide/16 v14, -0x1

    .line 1992
    .local v14, "lasttime":J
    move v12, v6

    .local v12, "i":I
    :goto_0
    if-gt v12, v4, :cond_4

    .line 1994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Lcom/oneplus/gallery/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/oneplus/gallery/media/Media;

    .line 1995
    .local v16, "media":Lcom/oneplus/gallery/media/Media;
    invoke-interface/range {v16 .. v16}, Lcom/oneplus/gallery/media/Media;->getTakenTime()J

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/GridViewFragment;->convertToLocalTime(J)J

    move-result-wide v20

    .line 1996
    .local v20, "time":J
    sub-int v19, v12, v6

    aput-wide v20, v17, v19

    .line 1998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->addMediaIntoGroup(Lcom/oneplus/gallery/media/Media;)Z

    move-result v7

    .line 2001
    .local v7, "createNewHeader":Z
    cmp-long v19, v20, v14

    if-eqz v19, :cond_1

    .line 2002
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2004
    :cond_1
    move-wide/from16 v14, v20

    .line 2005
    if-nez v7, :cond_2

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    if-nez v19, :cond_3

    .line 2006
    :cond_2
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1992
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 2009
    :cond_3
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 2010
    .local v8, "dateGroupCounts":Ljava/lang/Integer;
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v19

    invoke-virtual {v11, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2015
    .end local v7    # "createNewHeader":Z
    .end local v8    # "dateGroupCounts":Ljava/lang/Integer;
    .end local v16    # "media":Lcom/oneplus/gallery/media/Media;
    .end local v20    # "time":J
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->setupHeaderInfo()Z

    .line 2018
    move v12, v6

    :goto_2
    if-gt v12, v4, :cond_7

    .line 2020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Lcom/oneplus/gallery/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/oneplus/gallery/media/Media;

    .line 2021
    .restart local v16    # "media":Lcom/oneplus/gallery/media/Media;
    sub-int v19, v12, v6

    aget-wide v20, v17, v19

    .line 2022
    .restart local v20    # "time":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;

    move-object/from16 v19, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->findMediaForUIPosition(Ljava/lang/Long;)I

    move-result v18

    .line 2024
    .local v18, "targetUIPosition":I
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2025
    .local v9, "finalCount":I
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    .line 2027
    .local v10, "groupNew":Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->findMediaForGroupPosition(Lcom/oneplus/gallery/media/Media;)I

    move-result v19

    add-int v18, v18, v19

    .line 2029
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    if-eqz v19, :cond_5

    .end local v18    # "targetUIPosition":I
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v9}, Lcom/oneplus/gallery/GridViewFragment;->notifyItemRangeInserted(II)V

    .line 2031
    add-int/2addr v12, v9

    .line 2032
    goto :goto_2

    .line 2029
    .restart local v18    # "targetUIPosition":I
    :cond_5
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 2035
    .end local v9    # "finalCount":I
    .end local v10    # "groupNew":Ljava/lang/Boolean;
    .end local v11    # "groups":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v12    # "i":I
    .end local v13    # "isgroupsNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    .end local v14    # "lasttime":J
    .end local v16    # "media":Lcom/oneplus/gallery/media/Media;
    .end local v17    # "takenTimes":[J
    .end local v18    # "targetUIPosition":I
    .end local v20    # "time":J
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Lcom/oneplus/gallery/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/oneplus/gallery/media/Media;

    .line 2037
    .restart local v16    # "media":Lcom/oneplus/gallery/media/Media;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->addMediaIntoGroup(Lcom/oneplus/gallery/media/Media;)Z

    move-result v7

    .line 2039
    .restart local v7    # "createNewHeader":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->setupHeaderInfo()Z

    .line 2041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->findMediaForUIPosition(Lcom/oneplus/gallery/media/Media;)I

    move-result v18

    .line 2043
    .restart local v18    # "targetUIPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->findMediaForGroupPosition(Lcom/oneplus/gallery/media/Media;)I

    move-result v19

    add-int v18, v18, v19

    .line 2046
    if-eqz v7, :cond_8

    .end local v18    # "targetUIPosition":I
    :goto_4
    if-eqz v7, :cond_9

    const/16 v19, 0x2

    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery/GridViewFragment;->notifyItemRangeInserted(II)V

    .line 2048
    if-eqz v7, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderItemDecoration:Lcom/oneplus/gallery/HeaderItemDecoration;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    .line 2049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderItemDecoration:Lcom/oneplus/gallery/HeaderItemDecoration;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/HeaderItemDecoration;->updateStickyHeaderText(Landroid/support/v7/widget/RecyclerView;)V

    .line 2056
    .end local v7    # "createNewHeader":Z
    .end local v16    # "media":Lcom/oneplus/gallery/media/Media;
    :cond_7
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/GridViewFragment;->getHandler()Landroid/os/Handler;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/GridViewFragment;->adjustThumbPosition:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2057
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/GridViewFragment;->getHandler()Landroid/os/Handler;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/GridViewFragment;->adjustThumbPosition:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    const-wide/16 v24, 0x3e8

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2059
    return-void

    .line 2046
    .restart local v7    # "createNewHeader":Z
    .restart local v16    # "media":Lcom/oneplus/gallery/media/Media;
    .restart local v18    # "targetUIPosition":I
    :cond_8
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .end local v18    # "targetUIPosition":I
    :cond_9
    const/16 v19, 0x1

    goto :goto_5

    .line 2053
    .end local v7    # "createNewHeader":Z
    .end local v16    # "media":Lcom/oneplus/gallery/media/Media;
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5}, Lcom/oneplus/gallery/GridViewFragment;->notifyItemRangeInserted(II)V

    goto :goto_6
.end method

.method private onMediaRemoved(Lcom/oneplus/gallery/ListChangeEventArgs;)V
    .locals 4
    .param p1, "e"    # Lcom/oneplus/gallery/ListChangeEventArgs;

    .prologue
    .line 2063
    invoke-virtual {p0}, Lcom/oneplus/gallery/GridViewFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment;->adjustThumbPosition:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2064
    invoke-virtual {p0}, Lcom/oneplus/gallery/GridViewFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment;->adjustThumbPosition:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2065
    return-void
.end method

.method private onMediaRemoving(Lcom/oneplus/gallery/ListChangeEventArgs;)V
    .locals 14
    .param p1, "e"    # Lcom/oneplus/gallery/ListChangeEventArgs;

    .prologue
    .line 2075
    iget-object v11, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ItemAdapter:Lcom/oneplus/gallery/GridViewItemAdapter;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/oneplus/gallery/GridViewFragment;->m_SelectionMediaList:Ljava/util/List;

    if-nez v11, :cond_1

    .line 2077
    :cond_0
    iget-object v11, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    const-string v12, "onMediaRemoving() - Invalid field"

    invoke-static {v11, v12}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2159
    :goto_0
    return-void

    .line 2080
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/gallery/ListChangeEventArgs;->getStartIndex()I

    move-result v9

    .line 2081
    .local v9, "startIndex":I
    invoke-virtual {p1}, Lcom/oneplus/gallery/ListChangeEventArgs;->getItemCount()I

    move-result v4

    .line 2082
    .local v4, "itemcounts":I
    iget-object v11, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v11}, Lcom/oneplus/gallery/media/MediaList;->size()I

    move-result v6

    .line 2083
    .local v6, "mediaListSize":I
    const/4 v0, 0x0

    .line 2084
    .local v0, "headerIndex":I
    const/4 v1, 0x0

    .line 2085
    .local v1, "headerRemoved":Z
    iget-object v11, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onMediaRemoving() - startIndex: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " itemCounts: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " mediaListSize: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2088
    invoke-virtual {p1}, Lcom/oneplus/gallery/ListChangeEventArgs;->getEndIndex()I

    move-result v2

    .local v2, "i":I
    :goto_1
    if-lt v2, v9, :cond_3

    .line 2090
    iget-object v11, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ThumbnailInfoTable:Ljava/util/Map;

    iget-object v12, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v12, v2}, Lcom/oneplus/gallery/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;

    .line 2091
    .local v10, "thumbInfo":Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;
    if-eqz v10, :cond_2

    .line 2092
    invoke-virtual {v10}, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->dropThumbnailImages()Z

    .line 2088
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2095
    .end local v10    # "thumbInfo":Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;
    :cond_3
    sget-object v11, Lcom/oneplus/gallery/GridViewFragment;->PROP_GROUPING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v11}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 2097
    move v2, v9

    :goto_2
    add-int v11, v9, v4

    if-ge v2, v11, :cond_4

    if-ge v2, v6, :cond_4

    .line 2099
    iget-object v12, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;

    iget-object v11, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v11, v2}, Lcom/oneplus/gallery/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/oneplus/gallery/media/Media;

    invoke-virtual {v12, v11}, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->removeItem(Lcom/oneplus/gallery/media/Media;)I

    move-result v0

    .line 2097
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2102
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/gallery/GridViewFragment;->getStartCameraDataPosition()I

    move-result v11

    if-lt v9, v11, :cond_5

    .line 2103
    add-int/lit8 v9, v9, 0x1

    .line 2105
    :cond_5
    iget-object v11, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;

    invoke-virtual {v11}, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->setupHeaderInfo()Z

    move-result v1

    .line 2107
    sget-object v11, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_CAMERA_ROLL:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v11}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 2109
    add-int v7, v0, v9

    .line 2110
    .local v7, "removeStartIndex":I
    if-eqz v1, :cond_8

    .line 2112
    iget-object v11, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onMediaRemoving() - notifyItemRemoved getStartCameraDataPosition:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/oneplus/gallery/GridViewFragment;->getStartCameraDataPosition()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " removeStartIndex:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2115
    add-int/lit8 v7, v7, -0x1

    .line 2117
    iget-object v12, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderAdapter:Lcom/oneplus/gallery/GridViewHeaderAdapter;

    if-gez v7, :cond_7

    const/4 v11, 0x0

    :goto_3
    add-int/lit8 v13, v4, 0x1

    invoke-virtual {v12, v11, v13}, Lcom/oneplus/gallery/GridViewHeaderAdapter;->notifyItemRangeRemoved(II)V

    .line 2118
    iget-object v11, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onMediaRemoving() - notifyItemRemoved removeStartIndex: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " itemcounts: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v13, v4, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2119
    iget-object v11, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderItemDecoration:Lcom/oneplus/gallery/HeaderItemDecoration;

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v11, :cond_6

    .line 2120
    iget-object v11, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderItemDecoration:Lcom/oneplus/gallery/HeaderItemDecoration;

    iget-object v12, p0, Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v11, v12}, Lcom/oneplus/gallery/HeaderItemDecoration;->updateStickyHeaderText(Landroid/support/v7/widget/RecyclerView;)V

    .line 2131
    .end local v7    # "removeStartIndex":I
    :cond_6
    :goto_4
    iget-boolean v11, p0, Lcom/oneplus/gallery/GridViewFragment;->m_IsSelectionMode:Z

    if-eqz v11, :cond_d

    .line 2134
    iget-object v11, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-virtual {p1}, Lcom/oneplus/gallery/ListChangeEventArgs;->getStartIndex()I

    move-result v12

    invoke-interface {v11, v12}, Lcom/oneplus/gallery/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery/media/Media;

    .line 2135
    .local v5, "media":Lcom/oneplus/gallery/media/Media;
    if-nez v5, :cond_a

    .line 2136
    iget-object v11, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    const-string v12, "onMediaRemoving getMedia object is null"

    invoke-static {v11, v12}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v5    # "media":Lcom/oneplus/gallery/media/Media;
    .restart local v7    # "removeStartIndex":I
    :cond_7
    move v11, v7

    .line 2117
    goto :goto_3

    .line 2123
    :cond_8
    iget-object v11, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderAdapter:Lcom/oneplus/gallery/GridViewHeaderAdapter;

    invoke-virtual {v11, v7}, Lcom/oneplus/gallery/GridViewHeaderAdapter;->notifyItemRemoved(I)V

    goto :goto_4

    .line 2127
    .end local v7    # "removeStartIndex":I
    :cond_9
    iget-object v11, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderAdapter:Lcom/oneplus/gallery/GridViewHeaderAdapter;

    invoke-virtual {v11, v9, v4}, Lcom/oneplus/gallery/GridViewHeaderAdapter;->notifyItemRangeRemoved(II)V

    goto :goto_4

    .line 2139
    .restart local v5    # "media":Lcom/oneplus/gallery/media/Media;
    :cond_a
    iget-object v11, p0, Lcom/oneplus/gallery/GridViewFragment;->m_SelectionMediaList:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 2140
    iget-object v11, p0, Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Lcom/oneplus/gallery/ListChangeEventArgs;->getStartIndex()I

    move-result v12

    invoke-direct {p0, v12}, Lcom/oneplus/gallery/GridViewFragment;->mediaListPositionToUIPosition(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2141
    .local v3, "itemView":Landroid/view/View;
    if-eqz v3, :cond_b

    .line 2142
    const v11, 0x7f06004f

    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 2143
    .local v8, "selectedView":Landroid/widget/ImageView;
    if-eqz v8, :cond_b

    .line 2144
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2146
    .end local v8    # "selectedView":Landroid/widget/ImageView;
    :cond_b
    iget-object v11, p0, Lcom/oneplus/gallery/GridViewFragment;->m_SelectionMediaList:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2147
    iget-object v11, p0, Lcom/oneplus/gallery/GridViewFragment;->m_SelectionMediaIndexSet:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/oneplus/gallery/ListChangeEventArgs;->getStartIndex()I

    move-result v12

    invoke-direct {p0, v12}, Lcom/oneplus/gallery/GridViewFragment;->mediaListPositionToUIPosition(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2150
    .end local v3    # "itemView":Landroid/view/View;
    :cond_c
    iget-object v11, p0, Lcom/oneplus/gallery/GridViewFragment;->m_SelectionMediaList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 2151
    invoke-direct {p0}, Lcom/oneplus/gallery/GridViewFragment;->exitSelectionMode()V

    .line 2152
    sget-object v11, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2158
    .end local v5    # "media":Lcom/oneplus/gallery/media/Media;
    :cond_d
    :goto_5
    iget-object v11, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;

    invoke-virtual {v11}, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->flushMapping()V

    goto/16 :goto_0

    .line 2154
    .restart local v5    # "media":Lcom/oneplus/gallery/media/Media;
    :cond_e
    invoke-direct {p0}, Lcom/oneplus/gallery/GridViewFragment;->updateToolBarTitleImageCounts()V

    goto :goto_5
.end method

.method private onMediaSetNameChanged(Lcom/oneplus/gallery/media/MediaSet;)V
    .locals 2
    .param p1, "mediaSet"    # Lcom/oneplus/gallery/media/MediaSet;

    .prologue
    .line 2164
    if-eqz p1, :cond_0

    .line 2166
    sget-object v0, Lcom/oneplus/gallery/media/MediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Lcom/oneplus/gallery/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ToolbarTitle:Ljava/lang/String;

    .line 2167
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HasActionBar:Z

    if-eqz v0, :cond_0

    .line 2168
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ToolbarTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2170
    :cond_0
    return-void
.end method

.method private onSingleItemClicked(Landroid/view/View;I)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 1907
    sget-object v3, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1909
    iget-object v3, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    const-string v4, "onSingleItemClicked() - Fragment is not running"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1926
    :cond_0
    :goto_0
    return-void

    .line 1912
    :cond_1
    iget-object v3, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_0

    .line 1914
    iget-object v3, p0, Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 1915
    .local v2, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    instance-of v3, v2, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;

    if-eqz v3, :cond_0

    .line 1917
    check-cast v2, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;

    .end local v2    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v0, v2, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->media:Lcom/oneplus/gallery/media/Media;

    .line 1918
    .local v0, "media":Lcom/oneplus/gallery/media/Media;
    if-nez v0, :cond_2

    .line 1920
    invoke-virtual {p0}, Lcom/oneplus/gallery/GridViewFragment;->getGallery()Lcom/oneplus/gallery/Gallery;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/gallery/Gallery;->startCamera()Z

    goto :goto_0

    .line 1923
    :cond_2
    iget-object v3, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v3, v0}, Lcom/oneplus/gallery/media/MediaList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1924
    .local v1, "mediaIndex":I
    sget-object v3, Lcom/oneplus/gallery/GridViewFragment;->EVENT_MEDIA_CLICKED:Lcom/oneplus/base/EventKey;

    new-instance v4, Lcom/oneplus/gallery/ListItemEventArgs;

    invoke-direct {v4, v1, v0}, Lcom/oneplus/gallery/ListItemEventArgs;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/gallery/GridViewFragment;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    goto :goto_0
.end method

.method private onSingleItemSelected(Landroid/view/View;I)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 1932
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v2, :cond_1

    .line 1966
    :cond_0
    :goto_0
    return-void

    .line 1935
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 1936
    .local v1, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    instance-of v2, v1, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 1938
    check-cast v2, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;

    iget-object v0, v2, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->media:Lcom/oneplus/gallery/media/Media;

    .line 1939
    .local v0, "media":Lcom/oneplus/gallery/media/Media;
    if-eqz v0, :cond_0

    .line 1942
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSingleItemSelected() - position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AnchorPosition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/oneplus/gallery/GridViewFragment;->m_AnchorPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1945
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment;->m_SelectionMediaList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment;->m_SelectionMediaList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1947
    iget v2, p0, Lcom/oneplus/gallery/GridViewFragment;->m_AnchorPosition:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/oneplus/gallery/GridViewFragment;->m_AnchorPosition:I

    if-eq p2, v2, :cond_2

    .line 1949
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment;->m_SelectionMediaList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1950
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment;->m_SelectionMediaIndexSet:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1951
    check-cast v1, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;

    .end local v1    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v1, v5}, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->setSelected(Z)V

    .line 1960
    :cond_2
    :goto_1
    iget-boolean v2, p0, Lcom/oneplus/gallery/GridViewFragment;->m_IsSelectionMode:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment;->m_SelectionMediaList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/oneplus/gallery/GridViewFragment;->PROP_SELECTION_STYLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;->DEFAULT:Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;

    if-ne v2, v3, :cond_0

    .line 1962
    invoke-direct {p0}, Lcom/oneplus/gallery/GridViewFragment;->exitSelectionMode()V

    .line 1963
    sget-object v2, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1954
    .restart local v1    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_3
    check-cast v1, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;

    .end local v1    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->setSelected(Z)V

    .line 1955
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment;->m_SelectionMediaList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1956
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment;->m_SelectionMediaIndexSet:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private onVisibleMediaChanged(IIZZ)V
    .locals 22
    .param p1, "firstIndex"    # I
    .param p2, "lastIndex"    # I
    .param p3, "refreshVisibleItems"    # Z
    .param p4, "forceUpdate"    # Z

    .prologue
    .line 2682
    const/4 v15, 0x0

    .line 2683
    .local v15, "thumbWindowSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/GridViewFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v2

    .line 2684
    .local v2, "activity":Lcom/oneplus/gallery/GalleryActivity;
    if-eqz v2, :cond_0

    .line 2686
    sget-object v21, Lcom/oneplus/gallery/GridViewFragment$18;->$SwitchMap$com$oneplus$base$BaseActivity$State:[I

    sget-object v20, Lcom/oneplus/gallery/GalleryActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/oneplus/gallery/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual/range {v20 .. v20}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v20

    aget v20, v21, v20

    packed-switch v20, :pswitch_data_0

    .line 2696
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/oneplus/gallery/media/MediaList;->size()I

    move-result v20

    add-int/lit8 v9, v20, -0x1

    .line 2697
    .local v9, "maxMediaIndex":I
    :goto_1
    if-ltz v9, :cond_7

    .line 2699
    if-gez p1, :cond_1

    .line 2700
    const/16 p1, 0x0

    .line 2701
    :cond_1
    if-gez p2, :cond_2

    .line 2702
    const/16 p2, 0x0

    .line 2703
    :cond_2
    move/from16 v0, p1

    if-le v0, v9, :cond_3

    .line 2704
    move/from16 p1, v9

    .line 2705
    :cond_3
    move/from16 v0, p2

    if-le v0, v9, :cond_4

    .line 2706
    move/from16 p2, v9

    .line 2713
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/gallery/GridViewFragment;->m_FirstVisibleMediaIndex:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p1

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/gallery/GridViewFragment;->m_LastVisibleMediaIndex:I

    move/from16 v20, v0

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    if-nez p4, :cond_8

    .line 2826
    :cond_5
    return-void

    .line 2690
    .end local v9    # "maxMediaIndex":I
    :pswitch_0
    const/16 v15, 0x40

    goto :goto_0

    .line 2696
    :cond_6
    const/4 v9, -0x1

    goto :goto_1

    .line 2710
    .restart local v9    # "maxMediaIndex":I
    :cond_7
    const/16 p1, -0x1

    .line 2711
    const/16 p2, -0x1

    goto :goto_2

    .line 2715
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/gallery/GridViewFragment;->m_FirstVisibleMediaIndex:I

    move/from16 v20, v0

    add-int/lit8 v12, v20, -0x40

    .line 2716
    .local v12, "prevWindowStartIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/gallery/GridViewFragment;->m_LastVisibleMediaIndex:I

    move/from16 v20, v0

    add-int/lit8 v11, v20, 0x40

    .line 2717
    .local v11, "prevWindowEndIndex":I
    sub-int v19, p1, v15

    .line 2718
    .local v19, "windowStartIndex":I
    add-int v18, p2, v15

    .line 2721
    .local v18, "windowEndIndex":I
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/gallery/GridViewFragment;->m_FirstVisibleMediaIndex:I

    .line 2722
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/gallery/GridViewFragment;->m_LastVisibleMediaIndex:I

    .line 2724
    if-gez v12, :cond_9

    .line 2726
    sub-int/2addr v11, v12

    .line 2727
    const/4 v12, 0x0

    .line 2728
    if-le v11, v9, :cond_9

    .line 2729
    move v11, v9

    .line 2731
    :cond_9
    if-le v11, v9, :cond_a

    .line 2733
    sub-int v20, v11, v9

    sub-int v12, v12, v20

    .line 2734
    move v11, v9

    .line 2735
    if-gez v12, :cond_a

    .line 2736
    const/4 v12, 0x0

    .line 2738
    :cond_a
    if-gez v19, :cond_b

    .line 2740
    sub-int v18, v18, v19

    .line 2741
    const/16 v19, 0x0

    .line 2742
    move/from16 v0, v18

    if-le v0, v9, :cond_b

    .line 2743
    move/from16 v18, v9

    .line 2745
    :cond_b
    move/from16 v0, v18

    if-le v0, v9, :cond_c

    .line 2747
    sub-int v20, v18, v9

    sub-int v19, v19, v20

    .line 2748
    move/from16 v18, v9

    .line 2749
    if-gez v19, :cond_c

    .line 2750
    const/16 v19, 0x0

    .line 2752
    :cond_c
    move/from16 v0, v19

    if-ne v0, v12, :cond_d

    move/from16 v0, v18

    if-ne v0, v11, :cond_d

    if-eqz p4, :cond_5

    .line 2756
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_11

    .line 2758
    move v7, v12

    .local v7, "i":I
    :goto_3
    if-gt v7, v11, :cond_12

    .line 2760
    const/4 v14, 0x0

    .line 2761
    .local v14, "thumbInfo":Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;
    move/from16 v0, v19

    if-ge v7, v0, :cond_f

    .line 2762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/GridViewFragment;->m_ThumbnailInfoTable:Ljava/util/Map;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v7}, Lcom/oneplus/gallery/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "thumbInfo":Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;
    check-cast v14, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;

    .line 2770
    .restart local v14    # "thumbInfo":Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;
    :goto_4
    if-eqz v14, :cond_e

    .line 2771
    invoke-virtual {v14}, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->dropThumbnailImages()Z

    .line 2758
    :cond_e
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 2763
    :cond_f
    move/from16 v0, v18

    if-le v7, v0, :cond_10

    .line 2764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/GridViewFragment;->m_ThumbnailInfoTable:Ljava/util/Map;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v7}, Lcom/oneplus/gallery/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "thumbInfo":Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;
    check-cast v14, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;

    .restart local v14    # "thumbInfo":Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;
    goto :goto_4

    .line 2767
    :cond_10
    move/from16 v7, v18

    .line 2768
    goto :goto_5

    .line 2775
    .end local v7    # "i":I
    .end local v14    # "thumbInfo":Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/gallery/GridViewFragment;->clearThumbnailInfos()V

    .line 2778
    :cond_12
    if-ltz v9, :cond_5

    .line 2780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    .line 2782
    add-int/lit8 v3, p1, -0x1

    .line 2783
    .local v3, "backwardIndex":I
    add-int/lit8 v5, p2, 0x1

    .local v5, "forwardIndex":I
    move v6, v5

    .end local v5    # "forwardIndex":I
    .local v6, "forwardIndex":I
    move v4, v3

    .line 2787
    .end local v3    # "backwardIndex":I
    .local v4, "backwardIndex":I
    :goto_6
    const/4 v10, 0x0

    .line 2788
    .local v10, "preDecode":Z
    move/from16 v0, v18

    if-gt v6, v0, :cond_18

    .line 2790
    const/4 v10, 0x1

    .line 2791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    move-object/from16 v20, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "forwardIndex":I
    .restart local v5    # "forwardIndex":I
    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Lcom/oneplus/gallery/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/oneplus/gallery/media/Media;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GridViewFragment;->getThumbnailInfo(Lcom/oneplus/gallery/media/Media;)Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;

    move-result-object v14

    .line 2792
    .restart local v14    # "thumbInfo":Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->decodeThumbnailImages(Z)V

    .line 2794
    .end local v14    # "thumbInfo":Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;
    :goto_7
    move/from16 v0, v19

    if-lt v4, v0, :cond_17

    .line 2796
    const/4 v10, 0x1

    .line 2797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    move-object/from16 v20, v0

    add-int/lit8 v3, v4, -0x1

    .end local v4    # "backwardIndex":I
    .restart local v3    # "backwardIndex":I
    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Lcom/oneplus/gallery/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/oneplus/gallery/media/Media;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GridViewFragment;->getThumbnailInfo(Lcom/oneplus/gallery/media/Media;)Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;

    move-result-object v14

    .line 2798
    .restart local v14    # "thumbInfo":Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->decodeThumbnailImages(Z)V

    .line 2800
    .end local v14    # "thumbInfo":Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;
    :goto_8
    if-nez v10, :cond_16

    .line 2801
    if-eqz p3, :cond_5

    .line 2803
    move/from16 v7, p1

    .restart local v7    # "i":I
    :goto_9
    move/from16 v0, p2

    if-gt v7, v0, :cond_5

    .line 2805
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/oneplus/gallery/GridViewFragment;->mediaListPositionToUIPosition(I)I

    move-result v16

    .line 2806
    .local v16, "uiPosition":I
    if-gez v16, :cond_14

    .line 2803
    :cond_13
    :goto_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 2808
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v17

    .line 2809
    .local v17, "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;

    move/from16 v20, v0

    if-eqz v20, :cond_13

    move-object/from16 v8, v17

    .line 2811
    check-cast v8, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;

    .line 2812
    .local v8, "itemViewHolder":Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;
    iget-boolean v0, v8, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->isThumbDecoded:Z

    move/from16 v20, v0

    if-nez v20, :cond_13

    .line 2814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Lcom/oneplus/gallery/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/oneplus/gallery/media/Media;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GridViewFragment;->getThumbnailInfo(Lcom/oneplus/gallery/media/Media;)Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;

    move-result-object v14

    .line 2815
    .restart local v14    # "thumbInfo":Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;
    invoke-virtual {v14}, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->getHQThumbnailImage()Landroid/graphics/Bitmap;

    move-result-object v13

    .line 2816
    .local v13, "thumb":Landroid/graphics/Bitmap;
    if-eqz v13, :cond_15

    .line 2818
    iget-object v0, v8, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2819
    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v8, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->isThumbDecoded:Z

    goto :goto_a

    .line 2822
    :cond_15
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->decodeThumbnailImages(Z)V

    goto :goto_a

    .end local v7    # "i":I
    .end local v8    # "itemViewHolder":Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;
    .end local v13    # "thumb":Landroid/graphics/Bitmap;
    .end local v14    # "thumbInfo":Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;
    .end local v16    # "uiPosition":I
    .end local v17    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_16
    move v6, v5

    .end local v5    # "forwardIndex":I
    .restart local v6    # "forwardIndex":I
    move v4, v3

    .end local v3    # "backwardIndex":I
    .restart local v4    # "backwardIndex":I
    goto/16 :goto_6

    .end local v6    # "forwardIndex":I
    .restart local v5    # "forwardIndex":I
    :cond_17
    move v3, v4

    .end local v4    # "backwardIndex":I
    .restart local v3    # "backwardIndex":I
    goto :goto_8

    .end local v3    # "backwardIndex":I
    .end local v5    # "forwardIndex":I
    .restart local v4    # "backwardIndex":I
    .restart local v6    # "forwardIndex":I
    :cond_18
    move v5, v6

    .end local v6    # "forwardIndex":I
    .restart local v5    # "forwardIndex":I
    goto/16 :goto_7

    .line 2686
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private reBuildDateHeaders()V
    .locals 3

    .prologue
    .line 1789
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-nez v1, :cond_1

    .line 1791
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    const-string v2, "reBuildDateHeaders() - m_MediaList is NULL, can not rebuild headers!"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1813
    :cond_0
    :goto_0
    return-void

    .line 1795
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    const-string v2, "reBuildDateHeaders()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1796
    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_GROUPING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1798
    invoke-direct {p0}, Lcom/oneplus/gallery/GridViewFragment;->clearSectionHeaderInfo()V

    .line 1799
    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_CAMERA_ITEM_MEDIALIST_POSITION:Lcom/oneplus/base/PropertyKey;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1800
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;

    invoke-virtual {v1}, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->insertCameraItem()V

    .line 1801
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v1}, Lcom/oneplus/gallery/media/MediaList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1802
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;

    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v1, v0}, Lcom/oneplus/gallery/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/Media;

    invoke-virtual {v2, v1}, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->addMediaIntoGroup(Lcom/oneplus/gallery/media/Media;)Z

    .line 1801
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1804
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;

    invoke-virtual {v1}, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->setupHeaderInfo()Z

    .line 1806
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderItemDecoration:Lcom/oneplus/gallery/HeaderItemDecoration;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_3

    .line 1807
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderItemDecoration:Lcom/oneplus/gallery/HeaderItemDecoration;

    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery/HeaderItemDecoration;->updateStickyHeaderText(Landroid/support/v7/widget/RecyclerView;)V

    .line 1809
    :cond_3
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderAdapter:Lcom/oneplus/gallery/GridViewHeaderAdapter;

    if-eqz v1, :cond_0

    .line 1810
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderAdapter:Lcom/oneplus/gallery/GridViewHeaderAdapter;

    invoke-virtual {v1}, Lcom/oneplus/gallery/GridViewHeaderAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private reportScrollOffsets(II)V
    .locals 9
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    const/4 v8, 0x0

    .line 2831
    iget v4, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ScrollOffsetY:I

    .line 2832
    .local v4, "prevY":I
    if-eqz p2, :cond_1

    .line 2833
    iget v5, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ScrollOffsetY:I

    sub-int/2addr v5, p2

    iput v5, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ScrollOffsetY:I

    .line 2867
    :cond_0
    :goto_0
    sget-object v5, Lcom/oneplus/gallery/GridViewFragment;->PROP_SCROLL_OFFSET_Y:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ScrollOffsetY:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/oneplus/gallery/GridViewFragment;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2868
    return-void

    .line 2836
    :cond_1
    iget-object v5, p0, Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/oneplus/gallery/GridViewFragment;->m_GridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v5, :cond_4

    .line 2838
    iget-object v5, p0, Lcom/oneplus/gallery/GridViewFragment;->m_GridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v5}, Landroid/support/v7/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 2839
    .local v1, "firstPosition":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_3

    .line 2841
    iget-boolean v5, p0, Lcom/oneplus/gallery/GridViewFragment;->m_IsGrouping:Z

    if-eqz v5, :cond_0

    .line 2847
    iget-object v5, p0, Lcom/oneplus/gallery/GridViewFragment;->m_GridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v5, v1}, Landroid/support/v7/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    .line 2848
    .local v2, "itemView":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 2850
    iget-object v5, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;

    invoke-virtual {v5, v1}, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->calculateViewOffsetY(I)I

    move-result v5

    iget-object v6, p0, Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v6

    add-int v3, v5, v6

    .line 2851
    .local v3, "offsetY":I
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 2852
    .local v0, "actualOffset":I
    sub-int v5, v3, v0

    neg-int v5, v5

    iput v5, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ScrollOffsetY:I

    goto :goto_0

    .line 2856
    .end local v0    # "actualOffset":I
    .end local v3    # "offsetY":I
    :cond_2
    iget-object v5, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reportScrollOffsets() - No view for position "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2857
    iput v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ScrollOffsetY:I

    goto :goto_0

    .line 2862
    .end local v2    # "itemView":Landroid/view/View;
    :cond_3
    iput v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ScrollOffsetY:I

    goto :goto_0

    .line 2865
    .end local v1    # "firstPosition":I
    :cond_4
    iput v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ScrollOffsetY:I

    goto :goto_0
.end method

.method private resetAutoScrollTimer()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 2872
    iput v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_AnchorPosition:I

    .line 2873
    iput v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_LastTimeItemPosition:I

    .line 2874
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_AutoScrollTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 2875
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_AutoScrollStarted:Z

    .line 2876
    sget-object v0, Lcom/oneplus/gallery/GridViewFragment$AutoScrollDirection;->NONE:Lcom/oneplus/gallery/GridViewFragment$AutoScrollDirection;

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_AutoScrollDirection:Lcom/oneplus/gallery/GridViewFragment$AutoScrollDirection;

    .line 2877
    return-void
.end method

.method private resetToolBar()V
    .locals 2

    .prologue
    .line 2881
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 2883
    iget-boolean v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HasActionBar:Z

    if-nez v0, :cond_1

    .line 2885
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 2886
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setVisibility(I)V

    .line 2890
    :cond_0
    :goto_0
    return-void

    .line 2888
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/gallery/GridViewFragment;->showToolBar()V

    goto :goto_0
.end method

.method private setEmptyViewVisibilityProp(Z)Z
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    const/4 v1, 0x0

    .line 3019
    sget-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_EMPTY_ICON_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-super {p0, v0, v2}, Lcom/oneplus/gallery/GalleryFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 3028
    :goto_0
    return v0

    .line 3021
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_EmptyMediaView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 3023
    if-eqz p1, :cond_2

    .line 3024
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_EmptyMediaView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3028
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 3026
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_EmptyMediaView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method private setMediaList(Lcom/oneplus/gallery/media/MediaList;)Z
    .locals 7
    .param p1, "value"    # Lcom/oneplus/gallery/media/MediaList;

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3052
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    const-string v3, "setMediaList"

    invoke-static {v0, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3054
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-ne v0, p1, :cond_0

    .line 3055
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    const-string v2, "setMediaList check instance"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 3133
    :goto_0
    return v0

    .line 3060
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-eqz v0, :cond_1

    .line 3062
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    const-string v3, "setMediaList() - detach from previous media list"

    invoke-static {v0, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3063
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    sget-object v3, Lcom/oneplus/gallery/media/MediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v3, v4}, Lcom/oneplus/gallery/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 3064
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    sget-object v3, Lcom/oneplus/gallery/media/MediaList;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaRemovedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v3, v4}, Lcom/oneplus/gallery/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 3065
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    sget-object v3, Lcom/oneplus/gallery/media/MediaList;->EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaRemovingHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v3, v4}, Lcom/oneplus/gallery/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 3066
    iput-object v5, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    .line 3068
    invoke-direct {p0}, Lcom/oneplus/gallery/GridViewFragment;->clearSectionHeaderInfo()V

    .line 3072
    :cond_1
    iput v6, p0, Lcom/oneplus/gallery/GridViewFragment;->m_FirstVisibleMediaIndex:I

    .line 3073
    iput v6, p0, Lcom/oneplus/gallery/GridViewFragment;->m_LastVisibleMediaIndex:I

    .line 3075
    if-nez p1, :cond_4

    .line 3077
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    const-string v3, "setMediaList() - MediaList is null"

    invoke-static {v0, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3078
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ItemAdapter:Lcom/oneplus/gallery/GridViewItemAdapter;

    if-eqz v0, :cond_2

    .line 3079
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ItemAdapter:Lcom/oneplus/gallery/GridViewItemAdapter;

    invoke-virtual {v0, v5}, Lcom/oneplus/gallery/GridViewItemAdapter;->updateMediaList(Lcom/oneplus/gallery/media/MediaList;)V

    .line 3080
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderAdapter:Lcom/oneplus/gallery/GridViewHeaderAdapter;

    if-eqz v0, :cond_3

    .line 3082
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderAdapter:Lcom/oneplus/gallery/GridViewHeaderAdapter;

    invoke-virtual {v0, v5}, Lcom/oneplus/gallery/GridViewHeaderAdapter;->updateMediaList(Lcom/oneplus/gallery/media/MediaList;)V

    .line 3083
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderAdapter:Lcom/oneplus/gallery/GridViewHeaderAdapter;

    invoke-virtual {v0}, Lcom/oneplus/gallery/GridViewHeaderAdapter;->notifyDataSetChanged()V

    .line 3085
    :cond_3
    invoke-direct {p0, v1}, Lcom/oneplus/gallery/GridViewFragment;->setRecyclerViewVisibility(Z)V

    .line 3086
    invoke-direct {p0}, Lcom/oneplus/gallery/GridViewFragment;->clearThumbnailInfos()V

    .line 3087
    invoke-direct {p0}, Lcom/oneplus/gallery/GridViewFragment;->clearSectionHeaderInfo()V

    move v0, v2

    .line 3088
    goto :goto_0

    .line 3092
    :cond_4
    iput-object p1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    .line 3095
    invoke-direct {p0}, Lcom/oneplus/gallery/GridViewFragment;->clearThumbnailInfos()V

    .line 3098
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ItemAdapter:Lcom/oneplus/gallery/GridViewItemAdapter;

    if-eqz v0, :cond_5

    .line 3099
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ItemAdapter:Lcom/oneplus/gallery/GridViewItemAdapter;

    iget-object v3, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-virtual {v0, v3}, Lcom/oneplus/gallery/GridViewItemAdapter;->updateMediaList(Lcom/oneplus/gallery/media/MediaList;)V

    .line 3101
    :cond_5
    sget-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_GROUPING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3104
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;

    if-nez v0, :cond_6

    .line 3105
    new-instance v0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;-><init>(Lcom/oneplus/gallery/GridViewFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;

    .line 3107
    :cond_6
    invoke-direct {p0}, Lcom/oneplus/gallery/GridViewFragment;->reBuildDateHeaders()V

    .line 3111
    :cond_7
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderAdapter:Lcom/oneplus/gallery/GridViewHeaderAdapter;

    if-eqz v0, :cond_8

    .line 3113
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderAdapter:Lcom/oneplus/gallery/GridViewHeaderAdapter;

    iget-object v3, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-virtual {v0, v3}, Lcom/oneplus/gallery/GridViewHeaderAdapter;->updateMediaList(Lcom/oneplus/gallery/media/MediaList;)V

    .line 3114
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderAdapter:Lcom/oneplus/gallery/GridViewHeaderAdapter;

    invoke-virtual {v0}, Lcom/oneplus/gallery/GridViewHeaderAdapter;->notifyDataSetChanged()V

    .line 3119
    :cond_8
    if-eqz p1, :cond_9

    invoke-interface {p1}, Lcom/oneplus/gallery/media/MediaList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3121
    invoke-direct {p0, v2}, Lcom/oneplus/gallery/GridViewFragment;->setRecyclerViewVisibility(Z)V

    .line 3122
    invoke-direct {p0, v1}, Lcom/oneplus/gallery/GridViewFragment;->setEmptyViewVisibilityProp(Z)Z

    .line 3125
    :cond_9
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-eqz v0, :cond_a

    .line 3127
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    sget-object v1, Lcom/oneplus/gallery/media/MediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v3}, Lcom/oneplus/gallery/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 3128
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    sget-object v1, Lcom/oneplus/gallery/media/MediaList;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaRemovedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v3}, Lcom/oneplus/gallery/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 3129
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    sget-object v1, Lcom/oneplus/gallery/media/MediaList;->EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaRemovingHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v3}, Lcom/oneplus/gallery/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    :cond_a
    move v0, v2

    .line 3133
    goto/16 :goto_0
.end method

.method private setMediaSet(Lcom/oneplus/gallery/media/MediaSet;)Z
    .locals 3
    .param p1, "mediaSet"    # Lcom/oneplus/gallery/media/MediaSet;

    .prologue
    .line 3138
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaSet:Lcom/oneplus/gallery/media/MediaSet;

    .line 3139
    .local v0, "oldMediaSet":Lcom/oneplus/gallery/media/MediaSet;
    if-ne v0, p1, :cond_0

    .line 3140
    const/4 v1, 0x0

    .line 3161
    :goto_0
    return v1

    .line 3143
    :cond_0
    if-eqz v0, :cond_1

    .line 3145
    sget-object v1, Lcom/oneplus/gallery/media/MediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaSetNameChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery/media/MediaSet;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 3149
    :cond_1
    iput-object p1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaSet:Lcom/oneplus/gallery/media/MediaSet;

    .line 3150
    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/oneplus/gallery/GridViewFragment;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3153
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/GridViewFragment;->onMediaSetNameChanged(Lcom/oneplus/gallery/media/MediaSet;)V

    .line 3156
    if-eqz p1, :cond_2

    .line 3158
    sget-object v1, Lcom/oneplus/gallery/media/MediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaSetNameChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v1, v2}, Lcom/oneplus/gallery/media/MediaSet;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 3161
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setRecyclerViewVisibility(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 3041
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 3043
    if-eqz p1, :cond_1

    .line 3044
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 3048
    :cond_0
    :goto_0
    return-void

    .line 3046
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showToolBar()V
    .locals 6

    .prologue
    const v5, 0x7f0600a9

    const v4, 0x7f0600a6

    const/4 v3, 0x0

    .line 2894
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    if-nez v0, :cond_1

    .line 2909
    :cond_0
    :goto_0
    return-void

    .line 2897
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    invoke-virtual {p0}, Lcom/oneplus/gallery/GridViewFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v0

    sget-object v2, Lcom/oneplus/gallery/GalleryActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f020061

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/Toolbar;->setNavigationIcon(I)V

    .line 2898
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0, v3}, Landroid/widget/Toolbar;->setVisibility(I)V

    .line 2899
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ToolbarTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2900
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v4, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2901
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/oneplus/gallery/media/AlbumMediaSet;

    invoke-interface {v0, v5, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2903
    sget-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2905
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v4, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2906
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v5, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2907
    invoke-direct {p0}, Lcom/oneplus/gallery/GridViewFragment;->updateToolBarTitleImageCounts()V

    goto :goto_0

    .line 2897
    :cond_2
    const v0, 0x7f020062

    goto :goto_1
.end method

.method private updateToolBarTitleImageCounts()V
    .locals 3

    .prologue
    .line 3192
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_SelectionMediaList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 3193
    .local v0, "itemCounts":I
    if-ltz v0, :cond_0

    .line 3195
    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_SELECTION_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/gallery/GridViewFragment;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3196
    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_SELECTION_STYLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;->PICKER_SINGLE_CHOICE:Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;

    if-eq v1, v2, :cond_0

    if-lez v0, :cond_0

    .line 3197
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 3199
    :cond_0
    return-void
.end method


# virtual methods
.method public convertToLocalTime(J)J
    .locals 5
    .param p1, "utctime"    # J

    .prologue
    .line 1083
    iget v2, p0, Lcom/oneplus/gallery/GridViewFragment;->m_TimeZoneOffset:I

    int-to-long v2, v2

    add-long v0, p1, v2

    .line 1085
    .local v0, "localtime":J
    const-wide/32 v2, 0x5265c00

    rem-long v2, v0, v2

    sub-long/2addr v0, v2

    .line 1086
    return-wide v0
.end method

.method public findDateForScrollBarDateIndex()Ljava/lang/CharSequence;
    .locals 10

    .prologue
    .line 3213
    iget-object v7, p0, Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    .line 3214
    .local v4, "itemCount":I
    iget-object v7, p0, Lcom/oneplus/gallery/GridViewFragment;->m_GridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v7}, Landroid/support/v7/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 3215
    .local v0, "adapterPos":I
    if-eqz v4, :cond_4

    const/4 v7, -0x1

    if-eq v0, v7, :cond_4

    .line 3217
    sget-object v7, Lcom/oneplus/gallery/GridViewFragment;->PROP_GROUPING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3219
    add-int/lit8 v7, v4, -0x1

    if-eq v0, v7, :cond_0

    .line 3220
    iget-object v7, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderItemDecoration:Lcom/oneplus/gallery/HeaderItemDecoration;

    invoke-virtual {v7}, Lcom/oneplus/gallery/HeaderItemDecoration;->getStickyHeaderText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 3249
    :goto_0
    return-object v1

    .line 3223
    :cond_0
    add-int/lit8 v7, v4, -0x1

    if-eq v0, v7, :cond_1

    .line 3224
    iget-object v7, p0, Lcom/oneplus/gallery/GridViewFragment;->m_GridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v7}, Landroid/support/v7/widget/GridLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    .line 3226
    :cond_1
    iget-object v7, p0, Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v7, v0}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v6

    .line 3227
    .local v6, "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v6, :cond_4

    .line 3229
    check-cast v6, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;

    .end local v6    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v5, v6, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->media:Lcom/oneplus/gallery/media/Media;

    .line 3230
    .local v5, "media":Lcom/oneplus/gallery/media/Media;
    if-eqz v5, :cond_3

    .line 3232
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v3

    .line 3233
    .local v3, "format":Ljava/text/DateFormat;
    const-string v7, "UTC"

    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 3234
    invoke-interface {v5}, Lcom/oneplus/gallery/media/Media;->getTakenTime()J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lcom/oneplus/gallery/GridViewFragment;->convertToLocalTime(J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 3235
    .local v2, "dateInMilliSec":Ljava/lang/Long;
    sget-object v7, Lcom/oneplus/gallery/GridViewFragment;->PROP_TODAY_DATE_MILLIES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3236
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderToday:Ljava/lang/String;

    goto :goto_0

    .line 3237
    :cond_2
    new-instance v7, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 3238
    .local v1, "date":Ljava/lang/String;
    goto :goto_0

    .line 3243
    .end local v1    # "date":Ljava/lang/String;
    .end local v2    # "dateInMilliSec":Ljava/lang/Long;
    .end local v3    # "format":Ljava/text/DateFormat;
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/gallery/GridViewFragment;->getStartCameraUIPosition()I

    move-result v7

    if-ne v0, v7, :cond_4

    .line 3244
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderToday:Ljava/lang/String;

    goto :goto_0

    .line 3249
    .end local v5    # "media":Lcom/oneplus/gallery/media/Media;
    :cond_4
    const-string v1, ""

    goto :goto_0
.end method

.method public findHeaderInfo(I)Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    .locals 1
    .param p1, "uiPosition"    # I

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;

    # invokes: Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->findHeaderInfo(I)Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    invoke-static {v0, p1}, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->access$5900(Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;I)Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;

    move-result-object v0

    return-object v0
.end method

.method public findHeaderInfo(Ljava/lang/Long;)Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    .locals 1
    .param p1, "dateMillies"    # Ljava/lang/Long;

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;

    # invokes: Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->findHeaderInfo(Ljava/lang/Long;)Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    invoke-static {v0, p1}, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->access$6000(Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;Ljava/lang/Long;)Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;

    move-result-object v0

    return-object v0
.end method

.method public findHeaderView(I)Landroid/view/View;
    .locals 1
    .param p1, "headerposition"    # I

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->findHeaderView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public findItemGroupIndex(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;

    # invokes: Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->findHeaderIndex(I)I
    invoke-static {v0, p1}, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->access$5800(Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;I)I

    move-result v0

    return v0
.end method

.method public findNextHeaderItem(Ljava/lang/Long;)Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    .locals 1
    .param p1, "key"    # Ljava/lang/Long;

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;

    # invokes: Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->findNextHeaderItem(Ljava/lang/Long;)Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    invoke-static {v0, p1}, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->access$6200(Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;Ljava/lang/Long;)Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;

    move-result-object v0

    return-object v0
.end method

.method public findPreviousHeaderItem(Ljava/lang/Long;)Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    .locals 1
    .param p1, "key"    # Ljava/lang/Long;

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;

    # invokes: Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->findPreviousHeaderInfo(Ljava/lang/Long;)Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    invoke-static {v0, p1}, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->access$6100(Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;Ljava/lang/Long;)Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;

    move-result-object v0

    return-object v0
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
    .line 1227
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 1228
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    .line 1241
    :goto_0
    return-object v0

    .line 1229
    :cond_0
    sget-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1

    .line 1230
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaSet:Lcom/oneplus/gallery/media/MediaSet;

    goto :goto_0

    .line 1231
    :cond_1
    sget-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_2

    .line 1232
    iget-boolean v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_IsSelectionMode:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 1233
    :cond_2
    sget-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_CAMERA_ROLL:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_3

    .line 1234
    iget-boolean v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_IsCameraRoll:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 1235
    :cond_3
    sget-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_GROUPING:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_4

    .line 1236
    iget-boolean v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_IsGrouping:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 1237
    :cond_4
    sget-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_SCROLL_OFFSET_Y:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_5

    .line 1238
    iget v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ScrollOffsetY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1239
    :cond_5
    sget-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_CAMERA_ITEM_MEDIALIST_POSITION:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_6

    .line 1240
    iget v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_CameraItemMediaPosition:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1241
    :cond_6
    invoke-super {p0, p1}, Lcom/oneplus/gallery/GalleryFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getGridViewItemAdapter()Lcom/oneplus/gallery/GridViewItemAdapter;
    .locals 1

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ItemAdapter:Lcom/oneplus/gallery/GridViewItemAdapter;

    return-object v0
.end method

.method public getHeaderManager()Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;
    .locals 1

    .prologue
    .line 3208
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;

    return-object v0
.end method

.method public getHeaderSize()I
    .locals 1

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;

    invoke-virtual {v0}, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->getHeaderSize()I

    move-result v0

    return v0
.end method

.method public getHeaderTitleText(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->getHeaderTitleText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedMedia()Ljava/util/List;
    .locals 3
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
    const/4 v0, 0x0

    .line 1186
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_SelectionMediaList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 1188
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    const-string v2, "getSelectedMedia() - m_SelectionMediaList is null"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    :goto_0
    return-object v0

    .line 1192
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_SelectionMediaList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1194
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    const-string v2, "getSelectedMedia() - m_SelectionMediaList is empty"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1198
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_SelectionMediaList:Ljava/util/List;

    goto :goto_0
.end method

.method public getStartCameraDataPosition()I
    .locals 3

    .prologue
    .line 1212
    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_CAMERA_ITEM_MEDIALIST_POSITION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_0

    .line 1214
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;

    invoke-virtual {v1}, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->getCameraItemForMediaPosition()I

    move-result v0

    .line 1215
    .local v0, "position":I
    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_CAMERA_ITEM_MEDIALIST_POSITION:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/gallery/GridViewFragment;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1219
    .end local v0    # "position":I
    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_CAMERA_ITEM_MEDIALIST_POSITION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getThumbManager()Lcom/oneplus/gallery/media/ThumbnailImageManager;
    .locals 1

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ThumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;

    if-eqz v0, :cond_0

    .line 1155
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ThumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;

    .line 1157
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getThumbnailInfo(Lcom/oneplus/gallery/media/Media;)Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;
    .locals 2
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 1164
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-nez v1, :cond_1

    .line 1165
    const/4 v0, 0x0

    .line 1172
    :cond_0
    :goto_0
    return-object v0

    .line 1166
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ThumbnailInfoTable:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;

    .line 1167
    .local v0, "thumbInfo":Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;
    if-nez v0, :cond_0

    .line 1169
    new-instance v0, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;

    .end local v0    # "thumbInfo":Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;
    invoke-direct {v0, p0, p1}, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;-><init>(Lcom/oneplus/gallery/GridViewFragment;Lcom/oneplus/gallery/media/Media;)V

    .line 1170
    .restart local v0    # "thumbInfo":Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ThumbnailInfoTable:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getViewHolder(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "uiposition"    # I

    .prologue
    .line 3203
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1743
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1754
    invoke-super {p0, p1}, Lcom/oneplus/gallery/GalleryFragment;->handleMessage(Landroid/os/Message;)V

    .line 1755
    :cond_0
    :goto_0
    return-void

    .line 1745
    :pswitch_0
    invoke-direct {p0}, Lcom/oneplus/gallery/GridViewFragment;->isMidNight()V

    .line 1746
    invoke-virtual {p0}, Lcom/oneplus/gallery/GridViewFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e9

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1749
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_GridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 1750
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_GridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->scrollToPosition(I)V

    goto :goto_0

    .line 1743
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isHeaderPosition(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 1766
    sget-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_GROUPING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 1772
    :goto_0
    return v0

    .line 1769
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;

    if-nez v0, :cond_1

    move v0, v1

    .line 1770
    goto :goto_0

    .line 1772
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;

    # invokes: Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->isHeaderPosition(I)Z
    invoke-static {v0, p1}, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->access$8000(Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;I)Z

    move-result v0

    goto :goto_0
.end method

.method public isRecyclerViewTouched()Z
    .locals 1

    .prologue
    .line 3254
    iget-boolean v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_IsRecyclerTouched:Z

    return v0
.end method

.method public isSelectionMediaListContains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 1819
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_SelectionMediaList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_SelectionMediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1821
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_SelectionMediaList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1822
    const/4 v0, 0x1

    .line 1825
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 2566
    invoke-super {p0, p1}, Lcom/oneplus/gallery/GalleryFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2567
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2568
    return-void
.end method

.method protected onActivityStop()V
    .locals 2

    .prologue
    .line 2574
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/GridViewFragment;->onVisibleMediaChanged(ZZ)V

    .line 2577
    invoke-super {p0}, Lcom/oneplus/gallery/GalleryFragment;->onActivityStop()V

    .line 2578
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2546
    invoke-super {p0, p1}, Lcom/oneplus/gallery/GalleryFragment;->onAttach(Landroid/app/Activity;)V

    .line 2547
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2548
    invoke-virtual {p0}, Lcom/oneplus/gallery/GridViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_GridviewColumns:I

    .line 2549
    return-void
.end method

.method protected onAttachToGallery(Lcom/oneplus/gallery/Gallery;)V
    .locals 2
    .param p1, "gallery"    # Lcom/oneplus/gallery/Gallery;

    .prologue
    .line 2557
    invoke-super {p0, p1}, Lcom/oneplus/gallery/GalleryFragment;->onAttachToGallery(Lcom/oneplus/gallery/Gallery;)V

    .line 2560
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v0

    const-class v1, Lcom/oneplus/gallery/media/ThumbnailImageManager;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GalleryApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/ThumbnailImageManager;

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ThumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;

    .line 2561
    return-void
.end method

.method protected onBackToInitialUIState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1879
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_GridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ItemAdapter:Lcom/oneplus/gallery/GridViewItemAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ItemAdapter:Lcom/oneplus/gallery/GridViewItemAdapter;

    invoke-virtual {v0}, Lcom/oneplus/gallery/GridViewItemAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1881
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    const-string v1, "onBackToInitialUIState() - Scroll grid view to top"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1882
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_GridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/GridLayoutManager;->scrollToPosition(I)V

    .line 1890
    :goto_0
    sget-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1891
    return-void

    .line 1886
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    const-string v1, "onBackToInitialUIState() - Scroll grid view to top later"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1896
    invoke-super {p0, p1}, Lcom/oneplus/gallery/GalleryFragment;->onCreate(Landroid/os/Bundle;)V

    .line 1897
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1898
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v0

    const-class v1, Lcom/oneplus/gallery/AppTracker;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GalleryApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/AppTracker;

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_AppTracker:Lcom/oneplus/gallery/AppTracker;

    .line 1899
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v0

    const-class v1, Lcom/oneplus/base/PeriodicMessageDispatcher;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GalleryApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/PeriodicMessageDispatcher;

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_PeriodicMessageDispatcher:Lcom/oneplus/base/PeriodicMessageDispatcher;

    .line 1900
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 2295
    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    const-string v9, "onCreateView"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2296
    const v8, 0x7f03000f

    const/4 v9, 0x0

    invoke-virtual {p1, v8, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 2298
    .local v7, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/oneplus/gallery/GridViewFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v8

    sget-object v9, Lcom/oneplus/gallery/GalleryActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v8, v9}, Lcom/oneplus/gallery/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2300
    .local v1, "isBlackMode":Z
    invoke-virtual {p0}, Lcom/oneplus/gallery/GridViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 2301
    .local v5, "res":Landroid/content/res/Resources;
    const v8, 0x7f050087

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderHeight:I

    .line 2302
    const v8, 0x7f05008f

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const v9, 0x7f050093

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ItemHeight:I

    .line 2304
    invoke-virtual {p0}, Lcom/oneplus/gallery/GridViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090058

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderToday:Ljava/lang/String;

    .line 2305
    invoke-virtual {p0}, Lcom/oneplus/gallery/GridViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f050097

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_AutoScrollHeight:I

    .line 2306
    invoke-virtual {p0}, Lcom/oneplus/gallery/GridViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f050098

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_AutoScrollFastHeight:I

    .line 2308
    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ItemAdapter:Lcom/oneplus/gallery/GridViewItemAdapter;

    if-nez v8, :cond_0

    .line 2309
    new-instance v8, Lcom/oneplus/gallery/GridViewItemAdapter;

    invoke-direct {v8, p0}, Lcom/oneplus/gallery/GridViewItemAdapter;-><init>(Lcom/oneplus/gallery/GridViewFragment;)V

    iput-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ItemAdapter:Lcom/oneplus/gallery/GridViewItemAdapter;

    .line 2311
    :cond_0
    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderAdapter:Lcom/oneplus/gallery/GridViewHeaderAdapter;

    if-nez v8, :cond_1

    .line 2312
    new-instance v8, Lcom/oneplus/gallery/GridViewHeaderAdapter;

    iget-object v9, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ItemAdapter:Lcom/oneplus/gallery/GridViewItemAdapter;

    invoke-direct {v8, p0, v9}, Lcom/oneplus/gallery/GridViewHeaderAdapter;-><init>(Lcom/oneplus/gallery/GridViewFragment;Lcom/oneplus/gallery/GridViewItemAdapter;)V

    iput-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderAdapter:Lcom/oneplus/gallery/GridViewHeaderAdapter;

    .line 2314
    :cond_1
    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;

    if-nez v8, :cond_2

    .line 2315
    new-instance v8, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;

    invoke-direct {v8, p0}, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;-><init>(Lcom/oneplus/gallery/GridViewFragment;)V

    iput-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;

    .line 2318
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/gallery/GridViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f050093

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 2319
    .local v6, "spacing":I
    new-instance v8, Lcom/oneplus/gallery/HeaderItemDecoration;

    iget v9, p0, Lcom/oneplus/gallery/GridViewFragment;->m_GridviewColumns:I

    invoke-direct {v8, p0, v9, v6}, Lcom/oneplus/gallery/HeaderItemDecoration;-><init>(Lcom/oneplus/gallery/GridViewFragment;II)V

    iput-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderItemDecoration:Lcom/oneplus/gallery/HeaderItemDecoration;

    .line 2321
    new-instance v8, Landroid/support/v7/widget/OPGridLayoutManager;

    invoke-virtual {p0}, Lcom/oneplus/gallery/GridViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget v10, p0, Lcom/oneplus/gallery/GridViewFragment;->m_GridviewColumns:I

    invoke-direct {v8, v9, v10}, Landroid/support/v7/widget/OPGridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_GridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    .line 2324
    const v8, 0x7f060044

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/RecyclerView;

    iput-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 2325
    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, p0, Lcom/oneplus/gallery/GridViewFragment;->m_GridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 2326
    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderAdapter:Lcom/oneplus/gallery/GridViewHeaderAdapter;

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 2327
    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderItemDecoration:Lcom/oneplus/gallery/HeaderItemDecoration;

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 2328
    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v9, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;

    invoke-virtual {p0}, Lcom/oneplus/gallery/GridViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iget-object v11, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ItemClickListener:Lcom/oneplus/gallery/GridViewFragment$OnItemClickListener;

    invoke-direct {v9, p0, v10, v11}, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;-><init>(Lcom/oneplus/gallery/GridViewFragment;Landroid/content/Context;Lcom/oneplus/gallery/GridViewFragment$OnItemClickListener;)V

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 2329
    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v9, Lcom/oneplus/gallery/GridViewFragment$13;

    invoke-direct {v9, p0}, Lcom/oneplus/gallery/GridViewFragment$13;-><init>(Lcom/oneplus/gallery/GridViewFragment;)V

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 2353
    sget-object v8, Lcom/oneplus/gallery/GridViewFragment;->PROP_RECYCLER_VIEW_PADDING_TOP:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v8}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2354
    .local v4, "recycleViewPaddingTop":I
    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, p0, Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v9

    iget-object v10, p0, Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v10

    iget-object v11, p0, Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v11

    invoke-virtual {v8, v9, v4, v10, v11}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 2356
    sget-object v8, Lcom/oneplus/gallery/GridViewFragment;->PROP_GROUPING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v8}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2358
    new-instance v8, Lcom/oneplus/gallery/GridViewFragment$HeaderSpanSizeLookup;

    invoke-direct {v8, p0}, Lcom/oneplus/gallery/GridViewFragment$HeaderSpanSizeLookup;-><init>(Lcom/oneplus/gallery/GridViewFragment;)V

    iput-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderSpanSizeLookup:Lcom/oneplus/gallery/GridViewFragment$HeaderSpanSizeLookup;

    .line 2359
    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderSpanSizeLookup:Lcom/oneplus/gallery/GridViewFragment$HeaderSpanSizeLookup;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/oneplus/gallery/GridViewFragment$HeaderSpanSizeLookup;->setSpanIndexCacheEnabled(Z)V

    .line 2360
    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_GridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    iget-object v9, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderSpanSizeLookup:Lcom/oneplus/gallery/GridViewFragment$HeaderSpanSizeLookup;

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 2361
    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderItemDecoration:Lcom/oneplus/gallery/HeaderItemDecoration;

    iget-object v9, p0, Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8, v9}, Lcom/oneplus/gallery/HeaderItemDecoration;->updateStickyHeaderText(Landroid/support/v7/widget/RecyclerView;)V

    .line 2365
    :cond_3
    const v8, 0x7f060045

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/oneplus/gallery/widget/FastScrollBar;

    iput-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_FastScrollbar:Lcom/oneplus/gallery/widget/FastScrollBar;

    .line 2366
    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_FastScrollbar:Lcom/oneplus/gallery/widget/FastScrollBar;

    iget-object v9, p0, Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8, v9}, Lcom/oneplus/gallery/widget/FastScrollBar;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 2367
    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_FastScrollbar:Lcom/oneplus/gallery/widget/FastScrollBar;

    iget v9, p0, Lcom/oneplus/gallery/GridViewFragment;->m_GridviewColumns:I

    invoke-virtual {v8, v9}, Lcom/oneplus/gallery/widget/FastScrollBar;->setGridViewColumn(I)V

    .line 2368
    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_FastScrollbar:Lcom/oneplus/gallery/widget/FastScrollBar;

    iget v9, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ItemHeight:I

    invoke-virtual {v8, v9}, Lcom/oneplus/gallery/widget/FastScrollBar;->setGridViewItemHeight(I)V

    .line 2369
    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_FastScrollbar:Lcom/oneplus/gallery/widget/FastScrollBar;

    iget v9, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderHeight:I

    invoke-virtual {v8, v9}, Lcom/oneplus/gallery/widget/FastScrollBar;->setHeaderHeight(I)V

    .line 2370
    iget-object v9, p0, Lcom/oneplus/gallery/GridViewFragment;->m_FastScrollbar:Lcom/oneplus/gallery/widget/FastScrollBar;

    if-eqz v1, :cond_a

    const v8, 0x7f020087

    :goto_0
    invoke-virtual {v9, v8}, Lcom/oneplus/gallery/widget/FastScrollBar;->setScrollBarBackground(I)V

    .line 2371
    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_FastScrollbar:Lcom/oneplus/gallery/widget/FastScrollBar;

    invoke-virtual {p0}, Lcom/oneplus/gallery/GridViewFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v9

    const-string v10, "fast_scroll_bar_text"

    invoke-virtual {v9, v10}, Lcom/oneplus/gallery/GalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/oneplus/gallery/widget/FastScrollBar;->setScrollBarTextColor(I)V

    .line 2372
    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_FastScrollbar:Lcom/oneplus/gallery/widget/FastScrollBar;

    invoke-virtual {v8, p0}, Lcom/oneplus/gallery/widget/FastScrollBar;->setGridViewFragment(Lcom/oneplus/gallery/GridViewFragment;)V

    .line 2373
    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_FastScrollbar:Lcom/oneplus/gallery/widget/FastScrollBar;

    invoke-virtual {v8}, Lcom/oneplus/gallery/widget/FastScrollBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2374
    .local v0, "fastScrollbarParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v8, :cond_4

    .line 2376
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local v0    # "fastScrollbarParams":Landroid/view/ViewGroup$LayoutParams;
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2380
    :cond_4
    const v8, 0x7f060046

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Toolbar;

    iput-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    .line 2381
    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    const v9, 0x7f0b0007

    invoke-virtual {v8, v9}, Landroid/widget/Toolbar;->inflateMenu(I)V

    .line 2382
    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    invoke-virtual {p0}, Lcom/oneplus/gallery/GridViewFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v9

    const-string v10, "action_bar_background"

    invoke-virtual {v9, v10}, Lcom/oneplus/gallery/GalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/Toolbar;->setBackgroundColor(I)V

    .line 2383
    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    invoke-virtual {p0}, Lcom/oneplus/gallery/GridViewFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v9

    const v10, 0x7f0a0023

    invoke-virtual {v8, v9, v10}, Landroid/widget/Toolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    .line 2384
    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    invoke-virtual {p0}, Lcom/oneplus/gallery/GridViewFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v9

    const-string v10, "tool_bar_text"

    invoke-virtual {v9, v10}, Lcom/oneplus/gallery/GalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/Toolbar;->setTitleTextColor(I)V

    .line 2385
    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    invoke-virtual {v8}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v8

    const v9, 0x7f0600a7

    invoke-interface {v8, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    if-eqz v1, :cond_b

    const v8, 0x7f020057

    :goto_1
    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2386
    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    invoke-virtual {v8}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v8

    const v9, 0x7f0600a8

    invoke-interface {v8, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    if-eqz v1, :cond_c

    const v8, 0x7f020068

    :goto_2
    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2387
    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    invoke-virtual {v8}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v8

    const v9, 0x7f06009c

    invoke-interface {v8, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    if-eqz v1, :cond_d

    const v8, 0x7f02005d

    :goto_3
    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2388
    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    invoke-virtual {v8}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v8

    const v9, 0x7f0600aa

    invoke-interface {v8, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const v9, 0x7f020063

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2389
    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    new-instance v9, Lcom/oneplus/gallery/GridViewFragment$14;

    invoke-direct {v9, p0}, Lcom/oneplus/gallery/GridViewFragment$14;-><init>(Lcom/oneplus/gallery/GridViewFragment;)V

    invoke-virtual {v8, v9}, Landroid/widget/Toolbar;->setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V

    .line 2420
    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    new-instance v9, Lcom/oneplus/gallery/GridViewFragment$15;

    invoke-direct {v9, p0}, Lcom/oneplus/gallery/GridViewFragment$15;-><init>(Lcom/oneplus/gallery/GridViewFragment;)V

    invoke-virtual {v8, v9}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2433
    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    invoke-virtual {v8}, Landroid/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 2434
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v8, :cond_5

    .line 2435
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    sget-object v8, Lcom/oneplus/gallery/GridViewFragment;->PROP_TOOL_BAR_MARGIN_TOP:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v8}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2439
    :cond_5
    const v8, 0x7f060047

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_EmptyMediaView:Landroid/view/View;

    .line 2440
    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_EmptyMediaView:Landroid/view/View;

    const v9, 0x7f060048

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_EmptyMediaViewIcon:Landroid/widget/ImageView;

    .line 2441
    iget-object v9, p0, Lcom/oneplus/gallery/GridViewFragment;->m_EmptyMediaViewIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_e

    const v8, 0x7f0200a7

    :goto_4
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2442
    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_EmptyMediaView:Landroid/view/View;

    new-instance v9, Lcom/oneplus/gallery/GridViewFragment$16;

    invoke-direct {v9, p0}, Lcom/oneplus/gallery/GridViewFragment$16;-><init>(Lcom/oneplus/gallery/GridViewFragment;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2448
    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_EmptyMediaView:Landroid/view/View;

    const v9, 0x7f060049

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_EmptyMediaTitle:Landroid/widget/TextView;

    .line 2449
    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_EmptyMediaView:Landroid/view/View;

    const v9, 0x7f06004a

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_EmtpyMediaText:Landroid/widget/TextView;

    .line 2450
    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_EmptyMediaTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/gallery/GridViewFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v9

    const-string v10, "no_photo_title"

    invoke-virtual {v9, v10}, Lcom/oneplus/gallery/GalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2451
    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_EmtpyMediaText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/gallery/GridViewFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v9

    const-string v10, "no_photo_text"

    invoke-virtual {v9, v10}, Lcom/oneplus/gallery/GalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2453
    sget-object v8, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_EMPTY_ICON_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v8}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2454
    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_EmptyMediaView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2456
    :cond_6
    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v8}, Lcom/oneplus/gallery/media/MediaList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    .line 2458
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/oneplus/gallery/GridViewFragment;->setRecyclerViewVisibility(Z)V

    .line 2459
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/oneplus/gallery/GridViewFragment;->setEmptyViewVisibilityProp(Z)Z

    .line 2462
    :cond_7
    new-instance v8, Lcom/oneplus/gallery/GridViewFragment$PreDecodeBitmapRunnable;

    invoke-direct {v8, p0, p0}, Lcom/oneplus/gallery/GridViewFragment$PreDecodeBitmapRunnable;-><init>(Lcom/oneplus/gallery/GridViewFragment;Lcom/oneplus/gallery/GridViewFragment;)V

    iput-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_PreDecodeBitmapRunnable:Lcom/oneplus/gallery/GridViewFragment$PreDecodeBitmapRunnable;

    .line 2464
    iget-boolean v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HasActionBar:Z

    if-eqz v8, :cond_8

    .line 2465
    invoke-direct {p0}, Lcom/oneplus/gallery/GridViewFragment;->showToolBar()V

    .line 2468
    :cond_8
    invoke-virtual {p0}, Lcom/oneplus/gallery/GridViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget-object v9, p0, Lcom/oneplus/gallery/GridViewFragment;->m_TimeChangedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v10, Lcom/oneplus/gallery/GridViewFragment;->INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v8, v9, v10}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2471
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v8

    const-class v9, Lcom/oneplus/gallery/media/MediaManager;

    invoke-virtual {v8, v9}, Lcom/oneplus/gallery/GalleryApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery/media/MediaManager;

    .line 2472
    .local v2, "mediaManager":Lcom/oneplus/gallery/media/MediaManager;
    if-eqz v2, :cond_9

    .line 2473
    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaChangeCallback:Lcom/oneplus/gallery/media/MediaManager$MediaChangeCallback;

    invoke-virtual {p0}, Lcom/oneplus/gallery/GridViewFragment;->getHandler()Landroid/os/Handler;

    move-result-object v9

    invoke-interface {v2, v8, v9}, Lcom/oneplus/gallery/media/MediaManager;->registerMediaChangeCallback(Lcom/oneplus/gallery/media/MediaManager$MediaChangeCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v8

    iput-object v8, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaManagerHandle:Lcom/oneplus/base/Handle;

    .line 2476
    :cond_9
    const/16 v8, 0x3ea

    invoke-static {p0, v8}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;I)Z

    .line 2477
    return-object v7

    .line 2370
    .end local v2    # "mediaManager":Lcom/oneplus/gallery/media/MediaManager;
    :cond_a
    const v8, 0x7f020088

    goto/16 :goto_0

    .line 2385
    :cond_b
    const v8, 0x7f020058

    goto/16 :goto_1

    .line 2386
    :cond_c
    const v8, 0x7f020069

    goto/16 :goto_2

    .line 2387
    :cond_d
    const v8, 0x7f02005e

    goto/16 :goto_3

    .line 2441
    :cond_e
    const v8, 0x7f0200a8

    goto/16 :goto_4
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2514
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2516
    iput-object v2, p0, Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 2517
    iput-object v2, p0, Lcom/oneplus/gallery/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    .line 2518
    iput-object v2, p0, Lcom/oneplus/gallery/GridViewFragment;->m_EmptyMediaView:Landroid/view/View;

    .line 2519
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ItemAdapter:Lcom/oneplus/gallery/GridViewItemAdapter;

    if-eqz v0, :cond_0

    .line 2521
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ItemAdapter:Lcom/oneplus/gallery/GridViewItemAdapter;

    invoke-virtual {v0}, Lcom/oneplus/gallery/GridViewItemAdapter;->release()V

    .line 2522
    iput-object v2, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ItemAdapter:Lcom/oneplus/gallery/GridViewItemAdapter;

    .line 2524
    :cond_0
    iput-object v2, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HeaderAdapter:Lcom/oneplus/gallery/GridViewHeaderAdapter;

    .line 2525
    iput-object v2, p0, Lcom/oneplus/gallery/GridViewFragment;->m_GridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    .line 2527
    invoke-virtual {p0}, Lcom/oneplus/gallery/GridViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_TimeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2530
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaManagerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaManagerHandle:Lcom/oneplus/base/Handle;

    .line 2533
    sget-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_SELECTION_STYLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;->DEFAULT:Lcom/oneplus/gallery/GridViewFragment$SelectionStyle;

    if-eq v0, v1, :cond_1

    .line 2535
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_SelectionMediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2536
    sget-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_SELECTION_COUNT:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/GridViewFragment;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2540
    :cond_1
    invoke-super {p0}, Lcom/oneplus/gallery/GalleryFragment;->onDestroyView()V

    .line 2541
    return-void
.end method

.method protected onMultipleItemSelected(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 2498
    iget v2, p0, Lcom/oneplus/gallery/GridViewFragment;->m_AnchorPosition:I

    sub-int v0, p2, v2

    .line 2499
    .local v0, "diff":I
    if-lez v0, :cond_0

    .line 2501
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 2502
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget v3, p0, Lcom/oneplus/gallery/GridViewFragment;->m_AnchorPosition:I

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/gallery/GridViewFragment;->m_AnchorPosition:I

    add-int/2addr v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/gallery/GridViewFragment;->onMultipleItemSelected(Landroid/view/View;I)V

    .line 2501
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2505
    .end local v1    # "i":I
    :cond_0
    iget v2, p0, Lcom/oneplus/gallery/GridViewFragment;->m_AnchorPosition:I

    add-int/lit8 v1, v2, -0x1

    .restart local v1    # "i":I
    :goto_1
    neg-int v2, p2

    if-lt v1, v2, :cond_1

    .line 2506
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/oneplus/gallery/GridViewFragment;->onSingleItemSelected(Landroid/view/View;I)V

    .line 2505
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2508
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 2193
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2196
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ThumbManagerActivateHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ThumbManagerActivateHandle:Lcom/oneplus/base/Handle;

    .line 2199
    invoke-super {p0}, Lcom/oneplus/gallery/GalleryFragment;->onPause()V

    .line 2202
    invoke-direct {p0}, Lcom/oneplus/gallery/GridViewFragment;->resetAutoScrollTimer()V

    .line 2203
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/16 v2, 0x3e9

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2208
    invoke-super {p0}, Lcom/oneplus/gallery/GalleryFragment;->onResume()V

    .line 2210
    invoke-direct {p0}, Lcom/oneplus/gallery/GridViewFragment;->checkDate()V

    .line 2213
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ThumbManagerActivateHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ThumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;

    if-eqz v1, :cond_0

    .line 2214
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ThumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;

    invoke-interface {v1, v3}, Lcom/oneplus/gallery/media/ThumbnailImageManager;->activate(I)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ThumbManagerActivateHandle:Lcom/oneplus/base/Handle;

    .line 2217
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery/GridViewFragment;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2218
    invoke-virtual {p0}, Lcom/oneplus/gallery/GridViewFragment;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2221
    iget-boolean v1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ToolbarActionShared:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ShareMediaChosenAppName:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/gallery/GridViewFragment;->getGallery()Lcom/oneplus/gallery/Gallery;

    move-result-object v1

    sget-object v2, Lcom/oneplus/gallery/OPGallery;->PROP_IS_SHARING_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2222
    iget-boolean v1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_IsSelectionMode:Z

    if-eqz v1, :cond_1

    .line 2223
    invoke-direct {p0}, Lcom/oneplus/gallery/GridViewFragment;->exitSelectionMode()V

    .line 2224
    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2226
    :cond_1
    iput-boolean v3, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ToolbarActionShared:Z

    .line 2230
    :cond_2
    iget v1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_FirstVisibleMediaIndex:I

    iget v2, p0, Lcom/oneplus/gallery/GridViewFragment;->m_LastVisibleMediaIndex:I

    invoke-direct {p0, v1, v2, v4, v4}, Lcom/oneplus/gallery/GridViewFragment;->onVisibleMediaChanged(IIZZ)V

    .line 2233
    invoke-virtual {p0}, Lcom/oneplus/gallery/GridViewFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/gallery/GalleryActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2234
    .local v0, "isBlackMode":Z
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment;->m_EmptyMediaViewIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    const v1, 0x7f0200a7

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2235
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment;->m_FastScrollbar:Lcom/oneplus/gallery/widget/FastScrollBar;

    if-eqz v0, :cond_4

    const v1, 0x7f020087

    :goto_1
    invoke-virtual {v2, v1}, Lcom/oneplus/gallery/widget/FastScrollBar;->setScrollBarBackground(I)V

    .line 2236
    return-void

    .line 2234
    :cond_3
    const v1, 0x7f0200a8

    goto :goto_0

    .line 2235
    :cond_4
    const v1, 0x7f020088

    goto :goto_1
.end method

.method public onStop()V
    .locals 7

    .prologue
    .line 2251
    invoke-super {p0}, Lcom/oneplus/gallery/GalleryFragment;->onStop()V

    .line 2252
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    const-string v5, "onStop"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2253
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-eqz v4, :cond_1

    .line 2254
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "m_MediaList size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v6}, Lcom/oneplus/gallery/media/MediaList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2259
    :goto_0
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-eqz v4, :cond_5

    .line 2261
    iget v4, p0, Lcom/oneplus/gallery/GridViewFragment;->m_FirstVisibleMediaIndex:I

    if-ltz v4, :cond_5

    .line 2263
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v4}, Lcom/oneplus/gallery/media/MediaList;->size()I

    move-result v2

    .line 2264
    .local v2, "mediaCount":I
    const/4 v0, 0x0

    .line 2265
    .local v0, "dropCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v4, p0, Lcom/oneplus/gallery/GridViewFragment;->m_FirstVisibleMediaIndex:I

    if-ge v1, v4, :cond_2

    if-ge v1, v2, :cond_2

    .line 2267
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ThumbnailInfoTable:Ljava/util/Map;

    iget-object v5, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v5, v1}, Lcom/oneplus/gallery/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;

    .line 2268
    .local v3, "thumbInfo":Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->dropThumbnailImages()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2269
    add-int/lit8 v0, v0, 0x1

    .line 2265
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2256
    .end local v0    # "dropCount":I
    .end local v1    # "i":I
    .end local v2    # "mediaCount":I
    .end local v3    # "thumbInfo":Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;
    :cond_1
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    const-string v5, "m_MediaList size: 0 or NPE"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2271
    .restart local v0    # "dropCount":I
    .restart local v1    # "i":I
    .restart local v2    # "mediaCount":I
    :cond_2
    add-int/lit8 v1, v2, -0x1

    :goto_2
    iget v4, p0, Lcom/oneplus/gallery/GridViewFragment;->m_LastVisibleMediaIndex:I

    if-le v1, v4, :cond_4

    if-ltz v1, :cond_4

    .line 2273
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ThumbnailInfoTable:Ljava/util/Map;

    iget-object v5, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v5, v1}, Lcom/oneplus/gallery/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;

    .line 2274
    .restart local v3    # "thumbInfo":Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->dropThumbnailImages()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2275
    add-int/lit8 v0, v0, 0x1

    .line 2271
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 2277
    .end local v3    # "thumbInfo":Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;
    :cond_4
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStop() - Drop "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " thumbnail images"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2282
    .end local v0    # "dropCount":I
    .end local v1    # "i":I
    .end local v2    # "mediaCount":I
    :cond_5
    invoke-direct {p0}, Lcom/oneplus/gallery/GridViewFragment;->cancelAllBitmapDecodeTasks()V

    .line 2285
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment;->m_PreDecodeBitmapRunnable:Lcom/oneplus/gallery/GridViewFragment$PreDecodeBitmapRunnable;

    if-eqz v4, :cond_6

    .line 2286
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment;->m_PreDecodeBitmapRunnable:Lcom/oneplus/gallery/GridViewFragment$PreDecodeBitmapRunnable;

    invoke-virtual {v4}, Lcom/oneplus/gallery/GridViewFragment$PreDecodeBitmapRunnable;->cancelAllBitmapDecoding()V

    .line 2287
    invoke-virtual {p0}, Lcom/oneplus/gallery/GridViewFragment;->getHandler()Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/gallery/GridViewFragment;->m_PreDecodeBitmapRunnable:Lcom/oneplus/gallery/GridViewFragment$PreDecodeBitmapRunnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2289
    :cond_6
    return-void
.end method

.method onVisibleMediaChanged()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2663
    invoke-virtual {p0, v0, v0}, Lcom/oneplus/gallery/GridViewFragment;->onVisibleMediaChanged(ZZ)V

    .line 2664
    return-void
.end method

.method onVisibleMediaChanged(ZZ)V
    .locals 4
    .param p1, "refreshVisibleItems"    # Z
    .param p2, "forceUpdate"    # Z

    .prologue
    .line 2667
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment;->m_GridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v2, :cond_0

    .line 2669
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment;->m_GridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/GridViewFragment;->UIPositionToMediaListPosition(I)I

    move-result v0

    .line 2670
    .local v0, "firstIndex":I
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment;->m_GridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/GridViewFragment;->UIPositionToMediaListPosition(I)I

    move-result v1

    .line 2671
    .local v1, "lastIndex":I
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/oneplus/gallery/GridViewFragment;->onVisibleMediaChanged(IIZZ)V

    .line 2677
    .end local v0    # "firstIndex":I
    .end local v1    # "lastIndex":I
    :goto_0
    return-void

    .line 2675
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    const-string v3, "onVisibleMediaChanged() - m_GridLayoutManager is null."

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public scrollTo(IZ)Z
    .locals 3
    .param p1, "mediaIndex"    # I
    .param p2, "smoothScroll"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2953
    invoke-virtual {p0}, Lcom/oneplus/gallery/GridViewFragment;->verifyAccess()V

    .line 2954
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v1}, Lcom/oneplus/gallery/media/MediaList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 2965
    :cond_0
    :goto_0
    return v2

    .line 2956
    :cond_1
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/GridViewFragment;->mediaListPositionToUIPosition(I)I

    move-result v0

    .line 2957
    .local v0, "itemPosition":I
    if-ltz v0, :cond_0

    .line 2959
    if-eqz p2, :cond_2

    .line 2960
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 2962
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0
.end method

.method public scrollTo(Lcom/oneplus/gallery/media/Media;Z)Z
    .locals 3
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p2, "smoothScroll"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2935
    invoke-virtual {p0}, Lcom/oneplus/gallery/GridViewFragment;->verifyAccess()V

    .line 2936
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v2, :cond_1

    .line 2941
    :cond_0
    :goto_0
    return v1

    .line 2938
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v2, p1}, Lcom/oneplus/gallery/media/MediaList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2939
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 2940
    invoke-virtual {p0, v0, p2}, Lcom/oneplus/gallery/GridViewFragment;->scrollTo(IZ)Z

    move-result v1

    goto :goto_0
.end method

.method public set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 5
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
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2973
    sget-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 2974
    check-cast p2, Lcom/oneplus/gallery/media/MediaList;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/gallery/GridViewFragment;->setMediaList(Lcom/oneplus/gallery/media/MediaList;)Z

    move-result v0

    .line 3012
    :goto_0
    return v0

    .line 2975
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_0
    sget-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1

    .line 2976
    check-cast p2, Lcom/oneplus/gallery/media/MediaSet;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/gallery/GridViewFragment;->setMediaSet(Lcom/oneplus/gallery/media/MediaSet;)Z

    move-result v0

    goto :goto_0

    .line 2977
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_1
    sget-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_HAS_ACTION_BAR:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_3

    move-object v0, p2

    .line 2979
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_HasActionBar:Z

    .line 2980
    invoke-direct {p0}, Lcom/oneplus/gallery/GridViewFragment;->resetToolBar()V

    .line 3012
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery/GalleryFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 2982
    :cond_3
    sget-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_EMPTY_ICON_VISIBLE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_6

    move-object v0, p2

    .line 2985
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_2
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/GridViewFragment;->setRecyclerViewVisibility(Z)V

    .line 2986
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_FastScrollbar:Lcom/oneplus/gallery/widget/FastScrollBar;

    if-eqz v0, :cond_4

    .line 2987
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_FastScrollbar:Lcom/oneplus/gallery/widget/FastScrollBar;

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery/widget/FastScrollBar;->showScrollBarThumb(Z)V

    .line 2988
    :cond_4
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/GridViewFragment;->setEmptyViewVisibilityProp(Z)Z

    move-result v0

    goto :goto_0

    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_5
    move v0, v2

    .line 2985
    goto :goto_2

    .line 2990
    :cond_6
    sget-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_8

    move-object v0, p2

    .line 2992
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_IsSelectionMode:Z

    .line 2993
    iget-boolean v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_IsSelectionMode:Z

    if-nez v0, :cond_7

    .line 2994
    invoke-direct {p0}, Lcom/oneplus/gallery/GridViewFragment;->exitSelectionMode()V

    .line 2998
    :goto_3
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_AppTracker:Lcom/oneplus/gallery/AppTracker;

    if-eqz v0, :cond_2

    .line 2999
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_AppTracker:Lcom/oneplus/gallery/AppTracker;

    const-string v3, "Gallery.MultipleSelection"

    new-array v1, v1, [Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/oneplus/gallery/GridViewFragment;->m_IsSelectionMode:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-interface {v0, v3, v2, v1}, Lcom/oneplus/gallery/AppTracker;->createRecord(Ljava/lang/String;I[Ljava/lang/Object;)Z

    goto :goto_1

    .line 2996
    :cond_7
    invoke-direct {p0}, Lcom/oneplus/gallery/GridViewFragment;->resetToolBar()V

    goto :goto_3

    .line 3001
    :cond_8
    sget-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_CAMERA_ROLL:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_9

    move-object v0, p2

    .line 3002
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_IsCameraRoll:Z

    goto :goto_1

    .line 3003
    :cond_9
    sget-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_GROUPING:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_a

    move-object v0, p2

    .line 3004
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_IsGrouping:Z

    goto :goto_1

    .line 3005
    :cond_a
    sget-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_CAMERA_ITEM_MEDIALIST_POSITION:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_b

    move-object v0, p2

    .line 3006
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_CameraItemMediaPosition:I

    goto/16 :goto_1

    .line 3007
    :cond_b
    sget-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_GROUP_HEADER_PADDING_TOP:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_2

    .line 3009
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_2

    .line 3010
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidateItemDecorations()V

    goto/16 :goto_1
.end method

.method public setClipToPadding(Z)V
    .locals 1
    .param p1, "clipToPadding"    # Z

    .prologue
    .line 3167
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setClipToPadding(Z)V

    .line 3168
    return-void
.end method

.method public setRecyclerViewScrollOffsetY(I)V
    .locals 4
    .param p1, "offsetY"    # I

    .prologue
    .line 3033
    iget v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ScrollOffsetY:I

    .line 3034
    .local v0, "preValue":I
    iput p1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ScrollOffsetY:I

    .line 3035
    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_SCROLL_OFFSET_Y:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/gallery/GridViewFragment;->m_ScrollOffsetY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/oneplus/gallery/GridViewFragment;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3036
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRecyclerViewScrollOffsetY() - preValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",new: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3037
    return-void
.end method

.method public startPreDecodeBitmapRunnalbe()V
    .locals 4

    .prologue
    .line 2921
    invoke-virtual {p0}, Lcom/oneplus/gallery/GridViewFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_PreDecodeBitmapRunnable:Lcom/oneplus/gallery/GridViewFragment$PreDecodeBitmapRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2922
    invoke-virtual {p0}, Lcom/oneplus/gallery/GridViewFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment;->m_PreDecodeBitmapRunnable:Lcom/oneplus/gallery/GridViewFragment$PreDecodeBitmapRunnable;

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2923
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment;->m_PreDecodeBitmapRunnable:Lcom/oneplus/gallery/GridViewFragment$PreDecodeBitmapRunnable;

    invoke-virtual {v0}, Lcom/oneplus/gallery/GridViewFragment$PreDecodeBitmapRunnable;->run()V

    .line 2924
    return-void
.end method
