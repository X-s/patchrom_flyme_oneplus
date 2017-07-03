.class public Lcom/oneplus/gallery2/GridViewFragment;
.super Lcom/oneplus/gallery2/GalleryFragment;
.source "GridViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/GridViewFragment$18;,
        Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;,
        Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;,
        Lcom/oneplus/gallery2/GridViewFragment$GroupingType;,
        Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;,
        Lcom/oneplus/gallery2/GridViewFragment$RecyclerItemClickListener;,
        Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;,
        Lcom/oneplus/gallery2/GridViewFragment$HeaderSpanSizeLookup;,
        Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;,
        Lcom/oneplus/gallery2/GridViewFragment$OnItemClickListener;
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
            "Lcom/oneplus/gallery2/ListItemEventArgs",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
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

.field public static final EVENT_RECENT_MEDIA_ENTRY_CLICKED:Lcom/oneplus/base/EventKey;
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
            "Lcom/oneplus/gallery2/media/MediaList;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/gallery2/media/MediaSet;",
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
            "Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_SHOW_RECENT_MEDIA_ENTRY:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
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
.field private EXTRA_KEY_MEDIA_LOCAL_TIME:Lcom/oneplus/gallery2/ExtraKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/gallery2/ExtraKey",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private adjustThumbPosition:Ljava/lang/Runnable;

.field private m_AddToCallback:Lcom/oneplus/base/OperationCallback;

.field private m_AnchorPosition:I

.field private m_AppTracker:Lcom/oneplus/gallery2/AppTracker;

.field private m_AutoScrollDirection:Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;

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

.field private m_DeleteCallback:Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;

.field private m_DownFastThreshold:F

.field private m_DownThreshold:F

.field private m_EmptyMediaTitle:Landroid/widget/TextView;

.field private m_EmptyMediaView:Landroid/view/View;

.field private m_EmptyMediaViewIcon:Landroid/widget/ImageView;

.field private m_EmtpyMediaText:Landroid/widget/TextView;

.field private m_FastScrollbar:Lcom/oneplus/gallery2/widget/FastScrollBar;

.field private m_FirstVisibleMediaIndex:I

.field private m_GridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

.field private m_GridviewColumns:I

.field private m_HasActionBar:Z

.field private m_HeaderAdapter:Lcom/oneplus/gallery2/GridViewHeaderAdapter;

.field private m_HeaderHeight:I

.field private m_HeaderItemDecoration:Lcom/oneplus/gallery2/HeaderItemDecoration;

.field private m_HeaderManager:Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;

.field private m_HeaderSpanSizeLookup:Lcom/oneplus/gallery2/GridViewFragment$HeaderSpanSizeLookup;

.field private m_HeaderToday:Ljava/lang/String;

.field private m_IsCameraRoll:Z

.field private m_IsGrouping:Z

.field private m_IsRecyclerTouched:Z

.field private m_IsSelectionMode:Z

.field private m_ItemAdapter:Lcom/oneplus/gallery2/GridViewItemAdapter;

.field private m_ItemClickListener:Lcom/oneplus/gallery2/GridViewFragment$OnItemClickListener;

.field private m_ItemHeight:I

.field private m_LastTimeItemPosition:I

.field private m_LastVisibleMediaIndex:I

.field private final m_MediaAddedHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/gallery2/ListChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final m_MediaChangeCBHandles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/gallery2/media/MediaSource;",
            "Lcom/oneplus/base/Handle;",
            ">;"
        }
    .end annotation
.end field

.field m_MediaChangeCallback:Lcom/oneplus/gallery2/media/MediaChangeCallback;

.field private m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

.field private final m_MediaRemovedHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/gallery2/ListChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final m_MediaRemovingHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/gallery2/ListChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private m_MediaSet:Lcom/oneplus/gallery2/media/MediaSet;

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

.field private m_PreDecodeBitmapRunnable:Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;

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
            "Lcom/oneplus/gallery2/media/Media;",
            ">;"
        }
    .end annotation
.end field

.field private m_ShareMediaChosenAppName:Ljava/lang/String;

.field private m_SharingMediaCB:Lcom/oneplus/gallery2/Gallery$ShareMediaResultCallback;

.field private m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;

.field private m_ThumbManagerActivateHandle:Lcom/oneplus/base/Handle;

.field private final m_ThumbnailInfoTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            "Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final m_TimeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private m_TimeZoneOffset:I

.field private m_TodayHeaderItem:Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager$HeaderInfo;

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

    .line 98
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/oneplus/gallery2/GridViewFragment;->INTENT_FILTER:Landroid/content/IntentFilter;

    .line 101
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment;->INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment;->INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment;->INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 837
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsCameraRoll"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery2/GridViewFragment;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_CAMERA_ROLL:Lcom/oneplus/base/PropertyKey;

    .line 841
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsEmptyIconVisible"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery2/GridViewFragment;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_EMPTY_ICON_VISIBLE:Lcom/oneplus/base/PropertyKey;

    .line 845
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsLongClickAvailable"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery2/GridViewFragment;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_LONG_CLICK_AVAILABLE:Lcom/oneplus/base/PropertyKey;

    .line 849
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsScrolling"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery2/GridViewFragment;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_SCROLLING:Lcom/oneplus/base/PropertyKey;

    .line 853
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsSelectionMode"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery2/GridViewFragment;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    .line 857
    new-instance v5, Lcom/oneplus/base/PropertyKey;

    const-string v6, "MediaList"

    const-class v7, Lcom/oneplus/gallery2/media/MediaList;

    const-class v8, Lcom/oneplus/gallery2/GridViewFragment;

    invoke-direct/range {v5 .. v10}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v5, Lcom/oneplus/gallery2/GridViewFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    .line 861
    new-instance v5, Lcom/oneplus/base/PropertyKey;

    const-string v6, "MediaSet"

    const-class v7, Lcom/oneplus/gallery2/media/MediaSet;

    const-class v8, Lcom/oneplus/gallery2/GridViewFragment;

    invoke-direct/range {v5 .. v10}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v5, Lcom/oneplus/gallery2/GridViewFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    .line 865
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "ScrollOffsetY"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/gallery2/GridViewFragment;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_SCROLL_OFFSET_Y:Lcom/oneplus/base/PropertyKey;

    .line 869
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "SelectionCount"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/gallery2/GridViewFragment;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_SELECTION_COUNT:Lcom/oneplus/base/PropertyKey;

    .line 873
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "Grouping"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery2/GridViewFragment;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_GROUPING:Lcom/oneplus/base/PropertyKey;

    .line 877
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "GroupingType"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery2/GridViewFragment;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_GROUPING_TYPE:Lcom/oneplus/base/PropertyKey;

    .line 881
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "HeaderPaddingTop"

    const-class v2, Ljava/lang/Float;

    const-class v3, Lcom/oneplus/gallery2/GridViewFragment;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_GROUP_HEADER_PADDING_TOP:Lcom/oneplus/base/PropertyKey;

    .line 885
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "RecyclerViewPaddingTop"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/gallery2/GridViewFragment;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_RECYCLER_VIEW_PADDING_TOP:Lcom/oneplus/base/PropertyKey;

    .line 889
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "TodayDateMillies"

    const-class v2, Ljava/lang/Long;

    const-class v3, Lcom/oneplus/gallery2/GridViewFragment;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_TODAY_DATE_MILLIES:Lcom/oneplus/base/PropertyKey;

    .line 893
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "ToolBarMarginTop"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/gallery2/GridViewFragment;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_TOOL_BAR_MARGIN_TOP:Lcom/oneplus/base/PropertyKey;

    .line 897
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "CameraItemMediaPosition"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/gallery2/GridViewFragment;

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_CAMERA_ITEM_MEDIALIST_POSITION:Lcom/oneplus/base/PropertyKey;

    .line 901
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "SelectionStyle"

    const-class v2, Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;

    const-class v3, Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v5, Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;->DEFAULT:Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_SELECTION_STYLE:Lcom/oneplus/base/PropertyKey;

    .line 905
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "ShowRecentMediaEntry"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery2/GridViewFragment;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_SHOW_RECENT_MEDIA_ENTRY:Lcom/oneplus/base/PropertyKey;

    .line 910
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "MediaClicked"

    const-class v2, Lcom/oneplus/gallery2/ListItemEventArgs;

    const-class v3, Lcom/oneplus/gallery2/GridViewFragment;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery2/GridViewFragment;->EVENT_MEDIA_CLICKED:Lcom/oneplus/base/EventKey;

    .line 914
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "PickerSelectionDone"

    const-class v2, Lcom/oneplus/base/EventArgs;

    const-class v3, Lcom/oneplus/gallery2/GridViewFragment;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery2/GridViewFragment;->EVENT_PICKER_SELECTION_DONE:Lcom/oneplus/base/EventKey;

    .line 918
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "RecentMediaEntryClicked"

    const-class v2, Lcom/oneplus/base/EventArgs;

    const-class v3, Lcom/oneplus/gallery2/GridViewFragment;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery2/GridViewFragment;->EVENT_RECENT_MEDIA_ENTRY_CLICKED:Lcom/oneplus/base/EventKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v1, -0x1

    .line 1763
    invoke-direct {p0}, Lcom/oneplus/gallery2/GalleryFragment;-><init>()V

    .line 109
    iput-boolean v4, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_AutoScrollStarted:Z

    .line 112
    iput v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_AnchorPosition:I

    .line 113
    iput v2, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_DownThreshold:F

    .line 114
    iput v2, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_DownFastThreshold:F

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_IsGrouping:Z

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaChangeCBHandles:Ljava/util/Map;

    .line 135
    iput-object v3, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    .line 136
    iput-object v3, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_SelectionMediaList:Ljava/util/List;

    .line 141
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_SelectionMediaIndexSet:Ljava/util/Set;

    .line 145
    iput-object v3, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ToolbarTitle:Ljava/lang/String;

    .line 146
    iput-boolean v4, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ToolbarActionShared:Z

    .line 148
    iput v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_LastTimeItemPosition:I

    .line 150
    iput v2, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_UpThreshold:F

    .line 151
    iput v2, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_UpFastThreshold:F

    .line 153
    iput-object v3, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ShareMediaChosenAppName:Ljava/lang/String;

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ThumbnailInfoTable:Ljava/util/Map;

    .line 156
    iput v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_FirstVisibleMediaIndex:I

    .line 157
    iput v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_LastVisibleMediaIndex:I

    .line 158
    iput v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_CameraItemMediaPosition:I

    .line 321
    new-instance v0, Lcom/oneplus/gallery2/GridViewFragment$1;

    const-wide v2, 0x7fffffffffffffffL

    const-wide/16 v4, 0xf

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/gallery2/GridViewFragment$1;-><init>(Lcom/oneplus/gallery2/GridViewFragment;JJ)V

    iput-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_AutoScrollTimer:Landroid/os/CountDownTimer;

    .line 360
    new-instance v0, Lcom/oneplus/gallery2/GridViewFragment$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/GridViewFragment$2;-><init>(Lcom/oneplus/gallery2/GridViewFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaChangeCallback:Lcom/oneplus/gallery2/media/MediaChangeCallback;

    .line 423
    new-instance v0, Lcom/oneplus/gallery2/GridViewFragment$3;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/GridViewFragment$3;-><init>(Lcom/oneplus/gallery2/GridViewFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaSetNameChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 432
    new-instance v0, Lcom/oneplus/gallery2/GridViewFragment$4;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/GridViewFragment$4;-><init>(Lcom/oneplus/gallery2/GridViewFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_AddToCallback:Lcom/oneplus/base/OperationCallback;

    .line 449
    new-instance v0, Lcom/oneplus/gallery2/GridViewFragment$5;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/GridViewFragment$5;-><init>(Lcom/oneplus/gallery2/GridViewFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_DeleteCallback:Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;

    .line 459
    new-instance v0, Lcom/oneplus/gallery2/GridViewFragment$6;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/GridViewFragment$6;-><init>(Lcom/oneplus/gallery2/GridViewFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ItemClickListener:Lcom/oneplus/gallery2/GridViewFragment$OnItemClickListener;

    .line 676
    new-instance v0, Lcom/oneplus/gallery2/GridViewFragment$7;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/GridViewFragment$7;-><init>(Lcom/oneplus/gallery2/GridViewFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_TimeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 1025
    new-instance v0, Lcom/oneplus/gallery2/GridViewFragment$8;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/GridViewFragment$8;-><init>(Lcom/oneplus/gallery2/GridViewFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaAddedHandler:Lcom/oneplus/base/EventHandler;

    .line 1033
    new-instance v0, Lcom/oneplus/gallery2/GridViewFragment$9;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/GridViewFragment$9;-><init>(Lcom/oneplus/gallery2/GridViewFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaRemovedHandler:Lcom/oneplus/base/EventHandler;

    .line 1042
    new-instance v0, Lcom/oneplus/gallery2/GridViewFragment$10;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/GridViewFragment$10;-><init>(Lcom/oneplus/gallery2/GridViewFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaRemovingHandler:Lcom/oneplus/base/EventHandler;

    .line 2095
    new-instance v0, Lcom/oneplus/gallery2/GridViewFragment$11;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/GridViewFragment$11;-><init>(Lcom/oneplus/gallery2/GridViewFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->adjustThumbPosition:Ljava/lang/Runnable;

    .line 2201
    new-instance v0, Lcom/oneplus/gallery2/GridViewFragment$12;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/GridViewFragment$12;-><init>(Lcom/oneplus/gallery2/GridViewFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_DateChanged:Lcom/oneplus/base/PropertyChangedCallback;

    .line 2507
    new-instance v0, Lcom/oneplus/gallery2/GridViewFragment$17;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/GridViewFragment$17;-><init>(Lcom/oneplus/gallery2/GridViewFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_SharingMediaCB:Lcom/oneplus/gallery2/Gallery$ShareMediaResultCallback;

    .line 1764
    invoke-direct {p0}, Lcom/oneplus/gallery2/GridViewFragment;->onInitialize()V

    .line 1765
    return-void
.end method

.method private UIPositionToMediaListPosition(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 3217
    move v0, p1

    .line 3218
    .local v0, "mediaIndex":I
    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_GROUPING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3220
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/GridViewFragment;->findItemGroupIndex(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 3223
    :cond_0
    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_CAMERA_ROLL:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3225
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GridViewFragment;->getStartCameraDataPosition()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 3226
    add-int/lit8 v0, v0, -0x1

    .line 3230
    :cond_1
    return v0
.end method

.method static synthetic access$000(Lcom/oneplus/gallery2/GridViewFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_IsGrouping:Z

    return v0
.end method

.method static synthetic access$100(Lcom/oneplus/gallery2/GridViewFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_GridviewColumns:I

    return v0
.end method

.method static synthetic access$1000(Lcom/oneplus/gallery2/GridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/oneplus/gallery2/GridViewFragment;)Lcom/oneplus/gallery2/GridViewFragment$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ItemClickListener:Lcom/oneplus/gallery2/GridViewFragment$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/oneplus/gallery2/GridViewFragment;)Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_AutoScrollDirection:Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/oneplus/gallery2/GridViewFragment;Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;)Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_AutoScrollDirection:Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/oneplus/gallery2/GridViewFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_AutoScrollHeight:I

    return v0
.end method

.method static synthetic access$1400(Lcom/oneplus/gallery2/GridViewFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_AutoScrollFastHeight:I

    return v0
.end method

.method static synthetic access$1500(Lcom/oneplus/gallery2/GridViewFragment;)Lcom/oneplus/gallery2/media/MediaList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/oneplus/gallery2/GridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/oneplus/gallery2/GridViewFragment;)Lcom/oneplus/gallery2/GridViewItemAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ItemAdapter:Lcom/oneplus/gallery2/GridViewItemAdapter;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/oneplus/gallery2/GridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/oneplus/gallery2/GridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/oneplus/gallery2/GridViewFragment;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ThumbnailInfoTable:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/oneplus/gallery2/GridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/oneplus/gallery2/GridViewFragment;Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;
    .param p2, "x2"    # Landroid/graphics/Bitmap;

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/GridViewFragment;->updateItemViewHolderBitmap(Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/oneplus/gallery2/GridViewFragment;Lcom/oneplus/gallery2/media/MediaSet;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/MediaSet;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/GridViewFragment;->onMediaSetNameChanged(Lcom/oneplus/gallery2/media/MediaSet;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/oneplus/gallery2/GridViewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/oneplus/gallery2/GridViewFragment;->exitSelectionMode()V

    return-void
.end method

.method static synthetic access$2500(Lcom/oneplus/gallery2/GridViewFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_IsSelectionMode:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/oneplus/gallery2/GridViewFragment;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/GridViewFragment;->onSingleItemSelected(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/oneplus/gallery2/GridViewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/oneplus/gallery2/GridViewFragment;->updateToolBarTitleImageCounts()V

    return-void
.end method

.method static synthetic access$2800(Lcom/oneplus/gallery2/GridViewFragment;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/GridViewFragment;->onSingleItemClicked(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/oneplus/gallery2/GridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/oneplus/gallery2/GridViewFragment;)Lcom/oneplus/gallery2/widget/FastScrollBar;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_FastScrollbar:Lcom/oneplus/gallery2/widget/FastScrollBar;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/oneplus/gallery2/GridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/oneplus/gallery2/GridViewFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_AnchorPosition:I

    return v0
.end method

.method static synthetic access$3202(Lcom/oneplus/gallery2/GridViewFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;
    .param p1, "x1"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_AnchorPosition:I

    return p1
.end method

.method static synthetic access$3300(Lcom/oneplus/gallery2/GridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/oneplus/gallery2/GridViewFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_LastTimeItemPosition:I

    return v0
.end method

.method static synthetic access$3402(Lcom/oneplus/gallery2/GridViewFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;
    .param p1, "x1"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_LastTimeItemPosition:I

    return p1
.end method

.method static synthetic access$3500(Lcom/oneplus/gallery2/GridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/oneplus/gallery2/GridViewFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_SelectionMediaList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/oneplus/gallery2/GridViewFragment;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_SelectionMediaIndexSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/oneplus/gallery2/GridViewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/oneplus/gallery2/GridViewFragment;->resetAutoScrollTimer()V

    return-void
.end method

.method static synthetic access$3900(Lcom/oneplus/gallery2/GridViewFragment;)F
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_DownThreshold:F

    return v0
.end method

.method static synthetic access$3902(Lcom/oneplus/gallery2/GridViewFragment;F)F
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;
    .param p1, "x1"    # F

    .prologue
    .line 86
    iput p1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_DownThreshold:F

    return p1
.end method

.method static synthetic access$4000(Lcom/oneplus/gallery2/GridViewFragment;)F
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_DownFastThreshold:F

    return v0
.end method

.method static synthetic access$4002(Lcom/oneplus/gallery2/GridViewFragment;F)F
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;
    .param p1, "x1"    # F

    .prologue
    .line 86
    iput p1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_DownFastThreshold:F

    return p1
.end method

.method static synthetic access$4100(Lcom/oneplus/gallery2/GridViewFragment;)F
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_UpThreshold:F

    return v0
.end method

.method static synthetic access$4102(Lcom/oneplus/gallery2/GridViewFragment;F)F
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;
    .param p1, "x1"    # F

    .prologue
    .line 86
    iput p1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_UpThreshold:F

    return p1
.end method

.method static synthetic access$4200(Lcom/oneplus/gallery2/GridViewFragment;)F
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_UpFastThreshold:F

    return v0
.end method

.method static synthetic access$4202(Lcom/oneplus/gallery2/GridViewFragment;F)F
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;
    .param p1, "x1"    # F

    .prologue
    .line 86
    iput p1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_UpFastThreshold:F

    return p1
.end method

.method static synthetic access$4300(Lcom/oneplus/gallery2/GridViewFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_AutoScrollStarted:Z

    return v0
.end method

.method static synthetic access$4302(Lcom/oneplus/gallery2/GridViewFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_AutoScrollStarted:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/oneplus/gallery2/GridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/oneplus/gallery2/GridViewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/oneplus/gallery2/GridViewFragment;->clearSectionHeaderInfo()V

    return-void
.end method

.method static synthetic access$4600(Lcom/oneplus/gallery2/GridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/oneplus/gallery2/GridViewFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;
    .param p1, "x1"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_TimeZoneOffset:I

    return p1
.end method

.method static synthetic access$4800(Lcom/oneplus/gallery2/GridViewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/oneplus/gallery2/GridViewFragment;->reBuildDateHeaders()V

    return-void
.end method

.method static synthetic access$4900(Lcom/oneplus/gallery2/GridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5402(Lcom/oneplus/gallery2/GridViewFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_IsRecyclerTouched:Z

    return p1
.end method

.method static synthetic access$5600(Lcom/oneplus/gallery2/GridViewFragment;)Landroid/support/v7/widget/GridLayoutManager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_GridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/oneplus/gallery2/GridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/oneplus/gallery2/GridViewFragment;Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery2/ListChangeEventArgs;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/GridViewFragment;->onMediaAdded(Lcom/oneplus/gallery2/ListChangeEventArgs;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/oneplus/gallery2/GridViewFragment;Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery2/ListChangeEventArgs;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/GridViewFragment;->onMediaRemoved(Lcom/oneplus/gallery2/ListChangeEventArgs;)V

    return-void
.end method

.method static synthetic access$6000(Lcom/oneplus/gallery2/GridViewFragment;Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery2/ListChangeEventArgs;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/GridViewFragment;->onMediaRemoving(Lcom/oneplus/gallery2/ListChangeEventArgs;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/oneplus/gallery2/GridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderToday:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/oneplus/gallery2/GridViewFragment;)Lcom/oneplus/gallery2/ExtraKey;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->EXTRA_KEY_MEDIA_LOCAL_TIME:Lcom/oneplus/gallery2/ExtraKey;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/oneplus/gallery2/GridViewFragment;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;
    .param p1, "x1"    # Lcom/oneplus/base/PropertyKey;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/GridViewFragment;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6900(Lcom/oneplus/gallery2/GridViewFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderHeight:I

    return v0
.end method

.method static synthetic access$700(Lcom/oneplus/gallery2/GridViewFragment;Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "x2"    # Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;
    .param p3, "x3"    # Landroid/graphics/Bitmap;

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery2/GridViewFragment;->onHQThumbnailImageDecoded(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$7000(Lcom/oneplus/gallery2/GridViewFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ItemHeight:I

    return v0
.end method

.method static synthetic access$7100(Lcom/oneplus/gallery2/GridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/oneplus/gallery2/GridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/oneplus/gallery2/GridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/oneplus/gallery2/GridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/oneplus/gallery2/GridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/oneplus/gallery2/GridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/oneplus/gallery2/GridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/oneplus/gallery2/GridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/oneplus/gallery2/GridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oneplus/gallery2/GridViewFragment;)Lcom/oneplus/gallery2/media/ThumbnailImageManager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/oneplus/gallery2/GridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/oneplus/gallery2/GridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/oneplus/gallery2/GridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/oneplus/gallery2/GridViewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/oneplus/gallery2/GridViewFragment;->checkDate()V

    return-void
.end method

.method static synthetic access$8600(Lcom/oneplus/gallery2/GridViewFragment;II)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/GridViewFragment;->reportScrollOffsets(II)V

    return-void
.end method

.method static synthetic access$8700(Lcom/oneplus/gallery2/GridViewFragment;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;
    .param p1, "x1"    # Lcom/oneplus/base/PropertyKey;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/GridViewFragment;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8800(Lcom/oneplus/gallery2/GridViewFragment;)Lcom/oneplus/base/PeriodicMessageDispatcher;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_PeriodicMessageDispatcher:Lcom/oneplus/base/PeriodicMessageDispatcher;

    return-object v0
.end method

.method static synthetic access$8900(Lcom/oneplus/gallery2/GridViewFragment;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;
    .param p1, "x1"    # Lcom/oneplus/base/PropertyKey;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/GridViewFragment;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/oneplus/gallery2/GridViewFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/oneplus/gallery2/GridViewFragment;)Lcom/oneplus/base/OperationCallback;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_AddToCallback:Lcom/oneplus/base/OperationCallback;

    return-object v0
.end method

.method static synthetic access$9100(Lcom/oneplus/gallery2/GridViewFragment;)Lcom/oneplus/gallery2/Gallery$ShareMediaResultCallback;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_SharingMediaCB:Lcom/oneplus/gallery2/Gallery$ShareMediaResultCallback;

    return-object v0
.end method

.method static synthetic access$9202(Lcom/oneplus/gallery2/GridViewFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ToolbarActionShared:Z

    return p1
.end method

.method static synthetic access$9300(Lcom/oneplus/gallery2/GridViewFragment;)Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_DeleteCallback:Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;

    return-object v0
.end method

.method static synthetic access$9400(Lcom/oneplus/gallery2/GridViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9500(Lcom/oneplus/gallery2/GridViewFragment;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;
    .param p1, "x1"    # Lcom/oneplus/base/EventKey;
    .param p2, "x2"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/GridViewFragment;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    return-void
.end method

.method static synthetic access$9602(Lcom/oneplus/gallery2/GridViewFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/GridViewFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ShareMediaChosenAppName:Ljava/lang/String;

    return-object p1
.end method

.method private cancelAllBitmapDecodeTasks()V
    .locals 1

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ItemAdapter:Lcom/oneplus/gallery2/GridViewItemAdapter;

    if-eqz v0, :cond_0

    .line 1053
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ItemAdapter:Lcom/oneplus/gallery2/GridViewItemAdapter;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/GridViewItemAdapter;->cancelAllBitmapDecodeTasks()V

    .line 1055
    :cond_0
    return-void
.end method

.method private checkDate()V
    .locals 6

    .prologue
    .line 2270
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/gallery2/GridViewFragment;->convertToLocalTime(J)J

    move-result-wide v0

    .line 2271
    .local v0, "todayDateMillie":J
    sget-object v2, Lcom/oneplus/gallery2/GridViewFragment;->PROP_TODAY_DATE_MILLIES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    sget-object v2, Lcom/oneplus/gallery2/GridViewFragment;->PROP_TODAY_DATE_MILLIES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2274
    :cond_0
    sget-object v2, Lcom/oneplus/gallery2/GridViewFragment;->PROP_TODAY_DATE_MILLIES:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2276
    :cond_1
    return-void
.end method

.method private clearSectionHeaderInfo()V
    .locals 1

    .prologue
    .line 2940
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;

    if-eqz v0, :cond_0

    .line 2941
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;->clearAllHeaderInfo()V

    .line 2942
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_TodayHeaderItem:Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager$HeaderInfo;

    .line 2943
    return-void
.end method

.method private clearSelectImageIcon()V
    .locals 6

    .prologue
    .line 1060
    iget-object v4, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_SelectionMediaList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1087
    :goto_0
    return-void

    .line 1062
    :cond_0
    iget-object v4, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_GridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v4, :cond_2

    .line 1065
    iget-object v4, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_GridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v4}, Landroid/support/v7/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_GridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v4}, Landroid/support/v7/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result v4

    if-gt v0, v4, :cond_2

    .line 1067
    iget-object v4, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 1068
    .local v3, "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    instance-of v4, v3, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;

    if-eqz v4, :cond_1

    .line 1070
    check-cast v3, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;

    .end local v3    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->setSelected(Z)V

    .line 1071
    iget-object v4, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_SelectionMediaIndexSet:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1065
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1076
    .end local v0    # "i":I
    :cond_2
    iget-object v4, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderAdapter:Lcom/oneplus/gallery2/GridViewHeaderAdapter;

    if-eqz v4, :cond_3

    .line 1079
    iget-object v4, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_SelectionMediaIndexSet:Ljava/util/Set;

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

    .line 1081
    .local v2, "index":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderAdapter:Lcom/oneplus/gallery2/GridViewHeaderAdapter;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/oneplus/gallery2/GridViewHeaderAdapter;->notifyItemChanged(I)V

    goto :goto_2

    .line 1085
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "index":Ljava/lang/Integer;
    :cond_3
    iget-object v4, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_SelectionMediaList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1086
    iget-object v4, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_SelectionMediaIndexSet:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    goto :goto_0
.end method

.method private clearThumbnailInfos()V
    .locals 3

    .prologue
    .line 1093
    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ThumbnailInfoTable:Ljava/util/Map;

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

    check-cast v1, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;

    .line 1095
    .local v1, "thumbInfo":Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;
    if-eqz v1, :cond_0

    .line 1096
    invoke-virtual {v1}, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->dropThumbnailImages()Z

    goto :goto_0

    .line 1098
    .end local v1    # "thumbInfo":Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ThumbnailInfoTable:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 1099
    return-void
.end method

.method private exitSelectionMode()V
    .locals 0

    .prologue
    .line 1117
    invoke-direct {p0}, Lcom/oneplus/gallery2/GridViewFragment;->resetToolBar()V

    .line 1118
    invoke-direct {p0}, Lcom/oneplus/gallery2/GridViewFragment;->clearSelectImageIcon()V

    .line 1119
    return-void
.end method

.method private findTodayHeaderItem()Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    .locals 1

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_TodayHeaderItem:Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager$HeaderInfo;

    if-nez v0, :cond_0

    .line 1159
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;->findTodayHeaderItem()Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager$HeaderInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_TodayHeaderItem:Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager$HeaderInfo;

    .line 1161
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_TodayHeaderItem:Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager$HeaderInfo;

    goto :goto_0
.end method

.method private getStartCameraUIPosition()I
    .locals 1

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_TodayHeaderItem:Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager$HeaderInfo;

    if-nez v0, :cond_0

    .line 1230
    invoke-direct {p0}, Lcom/oneplus/gallery2/GridViewFragment;->findTodayHeaderItem()Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager$HeaderInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_TodayHeaderItem:Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager$HeaderInfo;

    .line 1232
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_TodayHeaderItem:Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager$HeaderInfo;

    iget v0, v0, Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager$HeaderInfo;->uiPosition:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isMidNight()V
    .locals 2

    .prologue
    .line 1805
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-nez v0, :cond_0

    .line 1807
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

    const-string v1, "isMidNight() - m_MediaList is null return"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1808
    invoke-direct {p0}, Lcom/oneplus/gallery2/GridViewFragment;->clearSectionHeaderInfo()V

    .line 1813
    :goto_0
    return-void

    .line 1812
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery2/GridViewFragment;->checkDate()V

    goto :goto_0
.end method

.method private mediaListPositionToUIPosition(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1859
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ItemAdapter:Lcom/oneplus/gallery2/GridViewItemAdapter;

    if-nez v1, :cond_1

    .line 1860
    const/4 v0, -0x1

    .line 1874
    :cond_0
    :goto_0
    return v0

    .line 1862
    :cond_1
    move v0, p1

    .line 1864
    .local v0, "uiPosition":I
    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_GROUPING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1866
    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;

    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ItemAdapter:Lcom/oneplus/gallery2/GridViewItemAdapter;

    invoke-virtual {v1, p1}, Lcom/oneplus/gallery2/GridViewItemAdapter;->getItemInternal(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    # invokes: Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;->findHeaderIndex(Lcom/oneplus/gallery2/media/Media;)I
    invoke-static {v2, v1}, Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;->access$8500(Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;Lcom/oneplus/gallery2/media/Media;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1869
    :cond_2
    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_CAMERA_ROLL:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1870
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GridViewFragment;->getStartCameraDataPosition()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 1871
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private notifyItemRangeInserted(II)V
    .locals 6
    .param p1, "itemRangeStartIndex"    # I
    .param p2, "itemRangeCount"    # I

    .prologue
    .line 1880
    iget-object v3, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderAdapter:Lcom/oneplus/gallery2/GridViewHeaderAdapter;

    if-nez v3, :cond_0

    .line 1898
    :goto_0
    return-void

    .line 1882
    :cond_0
    iget-object v3, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

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

    .line 1885
    iget-boolean v3, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_IsSelectionMode:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_SelectionMediaIndexSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1887
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1888
    .local v2, "tempSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_SelectionMediaIndexSet:Ljava/util/Set;

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

    .line 1890
    .local v1, "index":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt p1, v3, :cond_1

    .line 1891
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

    .line 1894
    .end local v1    # "index":Ljava/lang/Integer;
    :cond_3
    iget-object v3, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_SelectionMediaIndexSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 1895
    iput-object v2, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_SelectionMediaIndexSet:Ljava/util/Set;

    .line 1897
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "tempSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_4
    iget-object v3, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderAdapter:Lcom/oneplus/gallery2/GridViewHeaderAdapter;

    invoke-virtual {v3, p1, p2}, Lcom/oneplus/gallery2/GridViewHeaderAdapter;->notifyItemRangeInserted(II)V

    goto :goto_0
.end method

.method private onHQThumbnailImageDecoded(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;Landroid/graphics/Bitmap;)V
    .locals 9
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "thumbInfo"    # Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;
    .param p3, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, -0x1

    .line 2629
    iget-object v6, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    if-eqz v6, :cond_0

    .line 2630
    iget-object v6, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v6, p1, v7, v8}, Lcom/oneplus/gallery2/media/ThumbnailImageManager;->setTempThumbnailImage(Lcom/oneplus/gallery2/media/Media;Landroid/graphics/Bitmap;I)Z

    .line 2633
    :cond_0
    if-nez p3, :cond_1

    .line 2684
    :goto_0
    return-void

    .line 2637
    :cond_1
    iget-object v6, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v6, p1}, Lcom/oneplus/gallery2/media/MediaList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 2638
    .local v1, "index":I
    :goto_1
    if-ltz v1, :cond_2

    invoke-direct {p0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->mediaListPositionToUIPosition(I)I

    move-result v3

    .line 2639
    .local v3, "position":I
    :cond_2
    if-gez v3, :cond_4

    .line 2641
    invoke-virtual {p2}, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->dropThumbnailImages()Z

    goto :goto_0

    .end local v1    # "index":I
    .end local v3    # "position":I
    :cond_3
    move v1, v3

    .line 2637
    goto :goto_1

    .line 2646
    .restart local v1    # "index":I
    .restart local v3    # "position":I
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GridViewFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v0

    .line 2647
    .local v0, "activity":Lcom/oneplus/gallery2/GalleryActivity;
    if-nez v0, :cond_5

    .line 2649
    invoke-virtual {p2}, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->dropThumbnailImages()Z

    goto :goto_0

    .line 2653
    :cond_5
    sget-object v7, Lcom/oneplus/gallery2/GridViewFragment$18;->$SwitchMap$com$oneplus$base$BaseActivity$State:[I

    sget-object v6, Lcom/oneplus/gallery2/GalleryActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v6}, Lcom/oneplus/gallery2/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v6}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v6

    aget v6, v7, v6

    packed-switch v6, :pswitch_data_0

    .line 2660
    const/4 v4, 0x0

    .line 2663
    .local v4, "thumbWindowSize":I
    :goto_2
    iget v6, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_FirstVisibleMediaIndex:I

    sub-int/2addr v6, v4

    if-lt v1, v6, :cond_6

    iget v6, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_LastVisibleMediaIndex:I

    add-int/2addr v6, v4

    if-le v1, v6, :cond_7

    .line 2665
    :cond_6
    invoke-virtual {p2}, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->dropThumbnailImages()Z

    goto :goto_0

    .line 2657
    .end local v4    # "thumbWindowSize":I
    :pswitch_0
    const/16 v4, 0x40

    .line 2658
    .restart local v4    # "thumbWindowSize":I
    goto :goto_2

    .line 2672
    :cond_7
    iget-object v6, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v3}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v5

    .line 2674
    .local v5, "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    instance-of v6, v5, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;

    if-eqz v6, :cond_9

    move-object v2, v5

    .line 2676
    check-cast v2, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;

    .line 2677
    .local v2, "itemHolder":Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;
    iget-object v6, v2, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->media:Lcom/oneplus/gallery2/media/Media;

    if-eq v6, p1, :cond_8

    .line 2678
    iget-object v6, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ItemAdapter:Lcom/oneplus/gallery2/GridViewItemAdapter;

    invoke-virtual {v6, p1}, Lcom/oneplus/gallery2/GridViewItemAdapter;->findViewHolder(Lcom/oneplus/gallery2/media/Media;)Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;

    move-result-object v2

    .line 2683
    :cond_8
    :goto_3
    invoke-direct {p0, v2, p3}, Lcom/oneplus/gallery2/GridViewFragment;->updateItemViewHolderBitmap(Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 2681
    .end local v2    # "itemHolder":Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;
    :cond_9
    iget-object v6, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ItemAdapter:Lcom/oneplus/gallery2/GridViewItemAdapter;

    invoke-virtual {v6, p1}, Lcom/oneplus/gallery2/GridViewItemAdapter;->findViewHolder(Lcom/oneplus/gallery2/media/Media;)Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;

    move-result-object v2

    .restart local v2    # "itemHolder":Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;
    goto :goto_3

    .line 2653
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onInitialize()V
    .locals 4

    .prologue
    .line 2213
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

    const-string v1, "onInitialize"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2214
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_TODAY_DATE_MILLIES:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_DateChanged:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2215
    sget-object v0, Lcom/oneplus/gallery2/media/Media;->EXTRA_KEY_GENERATOR:Lcom/oneplus/gallery2/ExtraKeyGenerator;

    const-class v1, Ljava/lang/Long;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery2/ExtraKeyGenerator;->generateKey(Ljava/lang/Class;)Lcom/oneplus/gallery2/ExtraKey;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->EXTRA_KEY_MEDIA_LOCAL_TIME:Lcom/oneplus/gallery2/ExtraKey;

    .line 2216
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    iput v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_TimeZoneOffset:I

    .line 2217
    return-void
.end method

.method private onMediaAdded(Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 28
    .param p1, "e"    # Lcom/oneplus/gallery2/ListChangeEventArgs;

    .prologue
    .line 1999
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/gallery2/GridViewFragment;->m_TodayHeaderItem:Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager$HeaderInfo;

    .line 2001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/oneplus/gallery2/media/MediaList;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_0

    .line 2002
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->setRecyclerViewVisibility(Z)V

    .line 2005
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getStartIndex()I

    move-result v6

    .line 2006
    .local v6, "argsStartIndex":I
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getEndIndex()I

    move-result v4

    .line 2007
    .local v4, "argsEndIndex":I
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getItemCount()I

    move-result v5

    .line 2008
    .local v5, "argsItemcounts":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "onMediaAdded() -  args startIndex: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " itemCounts: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2010
    move v13, v6

    .local v13, "i":I
    :goto_0
    if-gt v13, v4, :cond_2

    .line 2012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v13}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/oneplus/gallery2/media/Media;

    invoke-interface/range {v21 .. v21}, Lcom/oneplus/gallery2/media/Media;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v18

    .line 2013
    .local v18, "source":Lcom/oneplus/gallery2/media/MediaSource;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaChangeCBHandles:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/oneplus/base/Handle;

    invoke-static/range {v21 .. v21}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 2014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaChangeCBHandles:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaChangeCallback:Lcom/oneplus/gallery2/media/MediaChangeCallback;

    move-object/from16 v24, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lcom/oneplus/gallery2/media/MediaSource;->addMediaChangedCallback(Lcom/oneplus/gallery2/media/MediaChangeCallback;)Lcom/oneplus/base/Handle;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2010
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 2017
    .end local v18    # "source":Lcom/oneplus/gallery2/media/MediaSource;
    :cond_2
    sget-object v21, Lcom/oneplus/gallery2/GridViewFragment;->PROP_GROUPING:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Boolean;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-eqz v21, :cond_d

    .line 2019
    const/16 v21, 0x1

    move/from16 v0, v21

    if-le v5, v0, :cond_9

    .line 2022
    new-array v0, v5, [J

    move-object/from16 v19, v0

    .line 2023
    .local v19, "takenTimes":[J
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 2024
    .local v11, "groups":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 2025
    .local v14, "isgroupsNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    const-wide/16 v16, -0x1

    .line 2026
    .local v16, "lasttime":J
    move v13, v6

    :goto_1
    if-gt v13, v4, :cond_6

    .line 2028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v13}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/oneplus/gallery2/media/Media;

    .line 2029
    .local v15, "media":Lcom/oneplus/gallery2/media/Media;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/GridViewFragment;->EXTRA_KEY_MEDIA_LOCAL_TIME:Lcom/oneplus/gallery2/ExtraKey;

    move-object/from16 v21, v0

    invoke-interface {v15}, Lcom/oneplus/gallery2/media/Media;->getTakenTime()J

    move-result-wide v24

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/GridViewFragment;->convertToLocalTime(J)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-interface {v15, v0, v1}, Lcom/oneplus/gallery2/media/Media;->getExtra(Lcom/oneplus/gallery2/ExtraKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Long;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    .line 2030
    .local v22, "time":J
    sub-int v21, v13, v6

    aput-wide v22, v19, v21

    .line 2032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;->addMediaIntoGroup(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v7

    .line 2035
    .local v7, "createNewHeader":Z
    cmp-long v21, v22, v16

    if-eqz v21, :cond_3

    .line 2036
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2038
    :cond_3
    move-wide/from16 v16, v22

    .line 2039
    if-nez v7, :cond_4

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    if-nez v21, :cond_5

    .line 2040
    :cond_4
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2026
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 2043
    :cond_5
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 2044
    .local v8, "dateGroupCounts":Ljava/lang/Integer;
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v21

    invoke-virtual {v11, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2049
    .end local v7    # "createNewHeader":Z
    .end local v8    # "dateGroupCounts":Ljava/lang/Integer;
    .end local v15    # "media":Lcom/oneplus/gallery2/media/Media;
    .end local v22    # "time":J
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;->setupHeaderInfo()Z

    .line 2052
    move v13, v6

    :goto_3
    if-gt v13, v4, :cond_a

    .line 2054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v13}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/oneplus/gallery2/media/Media;

    .line 2055
    .restart local v15    # "media":Lcom/oneplus/gallery2/media/Media;
    sub-int v21, v13, v6

    aget-wide v22, v19, v21

    .line 2056
    .restart local v22    # "time":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;

    move-object/from16 v21, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;->findMediaForUIPosition(Ljava/lang/Long;)I

    move-result v12

    .line 2057
    .local v12, "headerPosition":I
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2058
    .local v9, "finalCount":I
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    .line 2059
    .local v10, "groupNew":Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;->findMediaForGroupPosition(Lcom/oneplus/gallery2/media/Media;)I

    move-result v21

    add-int v20, v12, v21

    .line 2060
    .local v20, "targetUIPosition":I
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-eqz v21, :cond_7

    .end local v20    # "targetUIPosition":I
    :goto_4
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-eqz v21, :cond_8

    add-int/lit8 v21, v9, 0x1

    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/GridViewFragment;->notifyItemRangeInserted(II)V

    .line 2062
    add-int/2addr v13, v9

    .line 2063
    goto :goto_3

    .line 2060
    .restart local v20    # "targetUIPosition":I
    :cond_7
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .end local v20    # "targetUIPosition":I
    :cond_8
    move/from16 v21, v9

    goto :goto_5

    .line 2066
    .end local v9    # "finalCount":I
    .end local v10    # "groupNew":Ljava/lang/Boolean;
    .end local v11    # "groups":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v12    # "headerPosition":I
    .end local v14    # "isgroupsNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    .end local v15    # "media":Lcom/oneplus/gallery2/media/Media;
    .end local v16    # "lasttime":J
    .end local v19    # "takenTimes":[J
    .end local v22    # "time":J
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/oneplus/gallery2/media/Media;

    .line 2067
    .restart local v15    # "media":Lcom/oneplus/gallery2/media/Media;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;->addMediaIntoGroup(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v7

    .line 2069
    .restart local v7    # "createNewHeader":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;->setupHeaderInfo()Z

    .line 2071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;->findMediaForUIPosition(Lcom/oneplus/gallery2/media/Media;)I

    move-result v20

    .line 2073
    .restart local v20    # "targetUIPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;->findMediaForGroupPosition(Lcom/oneplus/gallery2/media/Media;)I

    move-result v21

    add-int v20, v20, v21

    .line 2075
    if-eqz v7, :cond_b

    .end local v20    # "targetUIPosition":I
    :goto_6
    if-eqz v7, :cond_c

    const/16 v21, 0x2

    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/GridViewFragment;->notifyItemRangeInserted(II)V

    .line 2077
    if-eqz v7, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderItemDecoration:Lcom/oneplus/gallery2/HeaderItemDecoration;

    move-object/from16 v21, v0

    if-eqz v21, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v21, v0

    if-eqz v21, :cond_a

    .line 2078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderItemDecoration:Lcom/oneplus/gallery2/HeaderItemDecoration;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/HeaderItemDecoration;->updateStickyHeaderText(Landroid/support/v7/widget/RecyclerView;)V

    .line 2085
    .end local v7    # "createNewHeader":Z
    .end local v15    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_a
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery2/GridViewFragment;->getHandler()Landroid/os/Handler;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/GridViewFragment;->adjustThumbPosition:Ljava/lang/Runnable;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2086
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery2/GridViewFragment;->getHandler()Landroid/os/Handler;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/GridViewFragment;->adjustThumbPosition:Ljava/lang/Runnable;

    move-object/from16 v24, v0

    const-wide/16 v26, 0x3e8

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2088
    return-void

    .line 2075
    .restart local v7    # "createNewHeader":Z
    .restart local v15    # "media":Lcom/oneplus/gallery2/media/Media;
    .restart local v20    # "targetUIPosition":I
    :cond_b
    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    .end local v20    # "targetUIPosition":I
    :cond_c
    const/16 v21, 0x1

    goto :goto_7

    .line 2082
    .end local v7    # "createNewHeader":Z
    .end local v15    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5}, Lcom/oneplus/gallery2/GridViewFragment;->notifyItemRangeInserted(II)V

    goto :goto_8
.end method

.method private onMediaRemoved(Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 4
    .param p1, "e"    # Lcom/oneplus/gallery2/ListChangeEventArgs;

    .prologue
    .line 2092
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GridViewFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->adjustThumbPosition:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2093
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GridViewFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->adjustThumbPosition:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2094
    return-void
.end method

.method private onMediaRemoving(Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 14
    .param p1, "e"    # Lcom/oneplus/gallery2/ListChangeEventArgs;

    .prologue
    .line 2104
    iget-object v11, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ItemAdapter:Lcom/oneplus/gallery2/GridViewItemAdapter;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_SelectionMediaList:Ljava/util/List;

    if-nez v11, :cond_1

    .line 2106
    :cond_0
    iget-object v11, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

    const-string v12, "onMediaRemoving() - Invalid field"

    invoke-static {v11, v12}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2188
    :goto_0
    return-void

    .line 2109
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getStartIndex()I

    move-result v9

    .line 2110
    .local v9, "startIndex":I
    invoke-virtual {p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getItemCount()I

    move-result v4

    .line 2111
    .local v4, "itemcounts":I
    iget-object v11, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v11}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v6

    .line 2112
    .local v6, "mediaListSize":I
    const/4 v0, 0x0

    .line 2113
    .local v0, "headerIndex":I
    const/4 v1, 0x0

    .line 2114
    .local v1, "headerRemoved":Z
    iget-object v11, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

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

    .line 2117
    invoke-virtual {p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getEndIndex()I

    move-result v2

    .local v2, "i":I
    :goto_1
    if-lt v2, v9, :cond_3

    .line 2119
    iget-object v11, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ThumbnailInfoTable:Ljava/util/Map;

    iget-object v12, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v12, v2}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;

    .line 2120
    .local v10, "thumbInfo":Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;
    if-eqz v10, :cond_2

    .line 2121
    invoke-virtual {v10}, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->dropThumbnailImages()Z

    .line 2117
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2124
    .end local v10    # "thumbInfo":Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;
    :cond_3
    sget-object v11, Lcom/oneplus/gallery2/GridViewFragment;->PROP_GROUPING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v11}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 2126
    move v2, v9

    :goto_2
    add-int v11, v9, v4

    if-ge v2, v11, :cond_4

    if-ge v2, v6, :cond_4

    .line 2128
    iget-object v12, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;

    iget-object v11, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v11, v2}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/oneplus/gallery2/media/Media;

    invoke-virtual {v12, v11}, Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;->removeItem(Lcom/oneplus/gallery2/media/Media;)I

    move-result v0

    .line 2126
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2131
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GridViewFragment;->getStartCameraDataPosition()I

    move-result v11

    if-lt v9, v11, :cond_5

    .line 2132
    add-int/lit8 v9, v9, 0x1

    .line 2134
    :cond_5
    iget-object v11, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;

    invoke-virtual {v11}, Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;->setupHeaderInfo()Z

    move-result v1

    .line 2136
    sget-object v11, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_CAMERA_ROLL:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v11}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 2138
    add-int v7, v0, v9

    .line 2139
    .local v7, "removeStartIndex":I
    if-eqz v1, :cond_8

    .line 2141
    iget-object v11, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onMediaRemoving() - notifyItemRemoved getStartCameraDataPosition:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/oneplus/gallery2/GridViewFragment;->getStartCameraDataPosition()I

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

    .line 2144
    add-int/lit8 v7, v7, -0x1

    .line 2146
    iget-object v12, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderAdapter:Lcom/oneplus/gallery2/GridViewHeaderAdapter;

    if-gez v7, :cond_7

    const/4 v11, 0x0

    :goto_3
    add-int/lit8 v13, v4, 0x1

    invoke-virtual {v12, v11, v13}, Lcom/oneplus/gallery2/GridViewHeaderAdapter;->notifyItemRangeRemoved(II)V

    .line 2147
    iget-object v11, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

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

    .line 2148
    iget-object v11, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderItemDecoration:Lcom/oneplus/gallery2/HeaderItemDecoration;

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v11, :cond_6

    .line 2149
    iget-object v11, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderItemDecoration:Lcom/oneplus/gallery2/HeaderItemDecoration;

    iget-object v12, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v11, v12}, Lcom/oneplus/gallery2/HeaderItemDecoration;->updateStickyHeaderText(Landroid/support/v7/widget/RecyclerView;)V

    .line 2160
    .end local v7    # "removeStartIndex":I
    :cond_6
    :goto_4
    iget-boolean v11, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_IsSelectionMode:Z

    if-eqz v11, :cond_d

    .line 2163
    iget-object v11, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-virtual {p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getStartIndex()I

    move-result v12

    invoke-interface {v11, v12}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery2/media/Media;

    .line 2164
    .local v5, "media":Lcom/oneplus/gallery2/media/Media;
    if-nez v5, :cond_a

    .line 2165
    iget-object v11, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

    const-string v12, "onMediaRemoving getMedia object is null"

    invoke-static {v11, v12}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v5    # "media":Lcom/oneplus/gallery2/media/Media;
    .restart local v7    # "removeStartIndex":I
    :cond_7
    move v11, v7

    .line 2146
    goto :goto_3

    .line 2152
    :cond_8
    iget-object v11, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderAdapter:Lcom/oneplus/gallery2/GridViewHeaderAdapter;

    invoke-virtual {v11, v7}, Lcom/oneplus/gallery2/GridViewHeaderAdapter;->notifyItemRemoved(I)V

    goto :goto_4

    .line 2156
    .end local v7    # "removeStartIndex":I
    :cond_9
    iget-object v11, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderAdapter:Lcom/oneplus/gallery2/GridViewHeaderAdapter;

    invoke-virtual {v11, v9, v4}, Lcom/oneplus/gallery2/GridViewHeaderAdapter;->notifyItemRangeRemoved(II)V

    goto :goto_4

    .line 2168
    .restart local v5    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_a
    iget-object v11, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_SelectionMediaList:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 2169
    iget-object v11, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getStartIndex()I

    move-result v12

    invoke-direct {p0, v12}, Lcom/oneplus/gallery2/GridViewFragment;->mediaListPositionToUIPosition(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2170
    .local v3, "itemView":Landroid/view/View;
    if-eqz v3, :cond_b

    .line 2171
    const v11, 0x7f06004f

    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 2172
    .local v8, "selectedView":Landroid/widget/ImageView;
    if-eqz v8, :cond_b

    .line 2173
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2175
    .end local v8    # "selectedView":Landroid/widget/ImageView;
    :cond_b
    iget-object v11, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_SelectionMediaList:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2176
    iget-object v11, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_SelectionMediaIndexSet:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getStartIndex()I

    move-result v12

    invoke-direct {p0, v12}, Lcom/oneplus/gallery2/GridViewFragment;->mediaListPositionToUIPosition(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2179
    .end local v3    # "itemView":Landroid/view/View;
    :cond_c
    iget-object v11, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_SelectionMediaList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 2180
    invoke-direct {p0}, Lcom/oneplus/gallery2/GridViewFragment;->exitSelectionMode()V

    .line 2181
    sget-object v11, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2187
    .end local v5    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_d
    :goto_5
    iget-object v11, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;

    invoke-virtual {v11}, Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;->flushMapping()V

    goto/16 :goto_0

    .line 2183
    .restart local v5    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_e
    invoke-direct {p0}, Lcom/oneplus/gallery2/GridViewFragment;->updateToolBarTitleImageCounts()V

    goto :goto_5
.end method

.method private onMediaSetNameChanged(Lcom/oneplus/gallery2/media/MediaSet;)V
    .locals 2
    .param p1, "mediaSet"    # Lcom/oneplus/gallery2/media/MediaSet;

    .prologue
    .line 2193
    if-eqz p1, :cond_0

    .line 2195
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Lcom/oneplus/gallery2/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ToolbarTitle:Ljava/lang/String;

    .line 2196
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HasActionBar:Z

    if-eqz v0, :cond_0

    .line 2197
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ToolbarTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2199
    :cond_0
    return-void
.end method

.method private onSingleItemClicked(Landroid/view/View;I)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 1934
    sget-object v3, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1936
    iget-object v3, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

    const-string v4, "onSingleItemClicked() - Fragment is not running"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1953
    :cond_0
    :goto_0
    return-void

    .line 1939
    :cond_1
    iget-object v3, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_0

    .line 1941
    iget-object v3, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 1942
    .local v2, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    instance-of v3, v2, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;

    if-eqz v3, :cond_0

    .line 1944
    check-cast v2, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;

    .end local v2    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v0, v2, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->media:Lcom/oneplus/gallery2/media/Media;

    .line 1945
    .local v0, "media":Lcom/oneplus/gallery2/media/Media;
    if-nez v0, :cond_2

    .line 1947
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GridViewFragment;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/gallery2/Gallery;->startCamera()Z

    goto :goto_0

    .line 1950
    :cond_2
    iget-object v3, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v3, v0}, Lcom/oneplus/gallery2/media/MediaList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1951
    .local v1, "mediaIndex":I
    sget-object v3, Lcom/oneplus/gallery2/GridViewFragment;->EVENT_MEDIA_CLICKED:Lcom/oneplus/base/EventKey;

    new-instance v4, Lcom/oneplus/gallery2/ListItemEventArgs;

    invoke-direct {v4, v1, v0}, Lcom/oneplus/gallery2/ListItemEventArgs;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/gallery2/GridViewFragment;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    goto :goto_0
.end method

.method private onSingleItemSelected(Landroid/view/View;I)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 1959
    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v2, :cond_1

    .line 1993
    :cond_0
    :goto_0
    return-void

    .line 1962
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 1963
    .local v1, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    instance-of v2, v1, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 1965
    check-cast v2, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;

    iget-object v0, v2, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->media:Lcom/oneplus/gallery2/media/Media;

    .line 1966
    .local v0, "media":Lcom/oneplus/gallery2/media/Media;
    if-eqz v0, :cond_0

    .line 1969
    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

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

    iget v4, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_AnchorPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1972
    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_SelectionMediaList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_SelectionMediaList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1974
    iget v2, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_AnchorPosition:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_AnchorPosition:I

    if-eq p2, v2, :cond_2

    .line 1976
    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_SelectionMediaList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1977
    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_SelectionMediaIndexSet:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1978
    check-cast v1, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;

    .end local v1    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v1, v5}, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->setSelected(Z)V

    .line 1987
    :cond_2
    :goto_1
    iget-boolean v2, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_IsSelectionMode:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_SelectionMediaList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/oneplus/gallery2/GridViewFragment;->PROP_SELECTION_STYLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;->DEFAULT:Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;

    if-ne v2, v3, :cond_0

    .line 1989
    invoke-direct {p0}, Lcom/oneplus/gallery2/GridViewFragment;->exitSelectionMode()V

    .line 1990
    sget-object v2, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1981
    .restart local v1    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_3
    check-cast v1, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;

    .end local v1    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->setSelected(Z)V

    .line 1982
    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_SelectionMediaList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1983
    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_SelectionMediaIndexSet:Ljava/util/Set;

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
    .line 2709
    const/4 v15, 0x0

    .line 2710
    .local v15, "thumbWindowSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery2/GridViewFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v2

    .line 2711
    .local v2, "activity":Lcom/oneplus/gallery2/GalleryActivity;
    if-eqz v2, :cond_0

    .line 2713
    sget-object v21, Lcom/oneplus/gallery2/GridViewFragment$18;->$SwitchMap$com$oneplus$base$BaseActivity$State:[I

    sget-object v20, Lcom/oneplus/gallery2/GalleryActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/oneplus/gallery2/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual/range {v20 .. v20}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v20

    aget v20, v21, v20

    packed-switch v20, :pswitch_data_0

    .line 2723
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v20

    add-int/lit8 v9, v20, -0x1

    .line 2724
    .local v9, "maxMediaIndex":I
    :goto_1
    if-ltz v9, :cond_7

    .line 2726
    if-gez p1, :cond_1

    .line 2727
    const/16 p1, 0x0

    .line 2728
    :cond_1
    if-gez p2, :cond_2

    .line 2729
    const/16 p2, 0x0

    .line 2730
    :cond_2
    move/from16 v0, p1

    if-le v0, v9, :cond_3

    .line 2731
    move/from16 p1, v9

    .line 2732
    :cond_3
    move/from16 v0, p2

    if-le v0, v9, :cond_4

    .line 2733
    move/from16 p2, v9

    .line 2740
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/gallery2/GridViewFragment;->m_FirstVisibleMediaIndex:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p1

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/gallery2/GridViewFragment;->m_LastVisibleMediaIndex:I

    move/from16 v20, v0

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    if-nez p4, :cond_8

    .line 2853
    :cond_5
    return-void

    .line 2717
    .end local v9    # "maxMediaIndex":I
    :pswitch_0
    const/16 v15, 0x40

    goto :goto_0

    .line 2723
    :cond_6
    const/4 v9, -0x1

    goto :goto_1

    .line 2737
    .restart local v9    # "maxMediaIndex":I
    :cond_7
    const/16 p1, -0x1

    .line 2738
    const/16 p2, -0x1

    goto :goto_2

    .line 2742
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/gallery2/GridViewFragment;->m_FirstVisibleMediaIndex:I

    move/from16 v20, v0

    add-int/lit8 v12, v20, -0x40

    .line 2743
    .local v12, "prevWindowStartIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/gallery2/GridViewFragment;->m_LastVisibleMediaIndex:I

    move/from16 v20, v0

    add-int/lit8 v11, v20, 0x40

    .line 2744
    .local v11, "prevWindowEndIndex":I
    sub-int v19, p1, v15

    .line 2745
    .local v19, "windowStartIndex":I
    add-int v18, p2, v15

    .line 2748
    .local v18, "windowEndIndex":I
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/gallery2/GridViewFragment;->m_FirstVisibleMediaIndex:I

    .line 2749
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/gallery2/GridViewFragment;->m_LastVisibleMediaIndex:I

    .line 2751
    if-gez v12, :cond_9

    .line 2753
    sub-int/2addr v11, v12

    .line 2754
    const/4 v12, 0x0

    .line 2755
    if-le v11, v9, :cond_9

    .line 2756
    move v11, v9

    .line 2758
    :cond_9
    if-le v11, v9, :cond_a

    .line 2760
    sub-int v20, v11, v9

    sub-int v12, v12, v20

    .line 2761
    move v11, v9

    .line 2762
    if-gez v12, :cond_a

    .line 2763
    const/4 v12, 0x0

    .line 2765
    :cond_a
    if-gez v19, :cond_b

    .line 2767
    sub-int v18, v18, v19

    .line 2768
    const/16 v19, 0x0

    .line 2769
    move/from16 v0, v18

    if-le v0, v9, :cond_b

    .line 2770
    move/from16 v18, v9

    .line 2772
    :cond_b
    move/from16 v0, v18

    if-le v0, v9, :cond_c

    .line 2774
    sub-int v20, v18, v9

    sub-int v19, v19, v20

    .line 2775
    move/from16 v18, v9

    .line 2776
    if-gez v19, :cond_c

    .line 2777
    const/16 v19, 0x0

    .line 2779
    :cond_c
    move/from16 v0, v19

    if-ne v0, v12, :cond_d

    move/from16 v0, v18

    if-ne v0, v11, :cond_d

    if-eqz p4, :cond_5

    .line 2783
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_11

    .line 2785
    move v7, v12

    .local v7, "i":I
    :goto_3
    if-gt v7, v11, :cond_12

    .line 2787
    const/4 v14, 0x0

    .line 2788
    .local v14, "thumbInfo":Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;
    move/from16 v0, v19

    if-ge v7, v0, :cond_f

    .line 2789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/GridViewFragment;->m_ThumbnailInfoTable:Ljava/util/Map;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v7}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "thumbInfo":Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;
    check-cast v14, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;

    .line 2797
    .restart local v14    # "thumbInfo":Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;
    :goto_4
    if-eqz v14, :cond_e

    .line 2798
    invoke-virtual {v14}, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->dropThumbnailImages()Z

    .line 2785
    :cond_e
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 2790
    :cond_f
    move/from16 v0, v18

    if-le v7, v0, :cond_10

    .line 2791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/GridViewFragment;->m_ThumbnailInfoTable:Ljava/util/Map;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v7}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "thumbInfo":Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;
    check-cast v14, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;

    .restart local v14    # "thumbInfo":Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;
    goto :goto_4

    .line 2794
    :cond_10
    move/from16 v7, v18

    .line 2795
    goto :goto_5

    .line 2802
    .end local v7    # "i":I
    .end local v14    # "thumbInfo":Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/gallery2/GridViewFragment;->clearThumbnailInfos()V

    .line 2805
    :cond_12
    if-ltz v9, :cond_5

    .line 2807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    .line 2809
    add-int/lit8 v3, p1, -0x1

    .line 2810
    .local v3, "backwardIndex":I
    add-int/lit8 v5, p2, 0x1

    .local v5, "forwardIndex":I
    move v6, v5

    .end local v5    # "forwardIndex":I
    .local v6, "forwardIndex":I
    move v4, v3

    .line 2814
    .end local v3    # "backwardIndex":I
    .local v4, "backwardIndex":I
    :goto_6
    const/4 v10, 0x0

    .line 2815
    .local v10, "preDecode":Z
    move/from16 v0, v18

    if-gt v6, v0, :cond_18

    .line 2817
    const/4 v10, 0x1

    .line 2818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    move-object/from16 v20, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "forwardIndex":I
    .restart local v5    # "forwardIndex":I
    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/oneplus/gallery2/media/Media;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->getThumbnailInfo(Lcom/oneplus/gallery2/media/Media;)Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;

    move-result-object v14

    .line 2819
    .restart local v14    # "thumbInfo":Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->decodeThumbnailImages(Z)V

    .line 2821
    .end local v14    # "thumbInfo":Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;
    :goto_7
    move/from16 v0, v19

    if-lt v4, v0, :cond_17

    .line 2823
    const/4 v10, 0x1

    .line 2824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    move-object/from16 v20, v0

    add-int/lit8 v3, v4, -0x1

    .end local v4    # "backwardIndex":I
    .restart local v3    # "backwardIndex":I
    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/oneplus/gallery2/media/Media;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->getThumbnailInfo(Lcom/oneplus/gallery2/media/Media;)Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;

    move-result-object v14

    .line 2825
    .restart local v14    # "thumbInfo":Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->decodeThumbnailImages(Z)V

    .line 2827
    .end local v14    # "thumbInfo":Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;
    :goto_8
    if-nez v10, :cond_16

    .line 2828
    if-eqz p3, :cond_5

    .line 2830
    move/from16 v7, p1

    .restart local v7    # "i":I
    :goto_9
    move/from16 v0, p2

    if-gt v7, v0, :cond_5

    .line 2832
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/oneplus/gallery2/GridViewFragment;->mediaListPositionToUIPosition(I)I

    move-result v16

    .line 2833
    .local v16, "uiPosition":I
    if-gez v16, :cond_14

    .line 2830
    :cond_13
    :goto_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 2835
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v17

    .line 2836
    .local v17, "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;

    move/from16 v20, v0

    if-eqz v20, :cond_13

    move-object/from16 v8, v17

    .line 2838
    check-cast v8, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;

    .line 2839
    .local v8, "itemViewHolder":Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;
    iget-boolean v0, v8, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->isThumbDecoded:Z

    move/from16 v20, v0

    if-nez v20, :cond_13

    .line 2841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/oneplus/gallery2/media/Media;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->getThumbnailInfo(Lcom/oneplus/gallery2/media/Media;)Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;

    move-result-object v14

    .line 2842
    .restart local v14    # "thumbInfo":Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;
    invoke-virtual {v14}, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->getHQThumbnailImage()Landroid/graphics/Bitmap;

    move-result-object v13

    .line 2843
    .local v13, "thumb":Landroid/graphics/Bitmap;
    if-eqz v13, :cond_15

    .line 2845
    iget-object v0, v8, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2846
    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v8, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->isThumbDecoded:Z

    goto :goto_a

    .line 2849
    :cond_15
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->decodeThumbnailImages(Z)V

    goto :goto_a

    .end local v7    # "i":I
    .end local v8    # "itemViewHolder":Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;
    .end local v13    # "thumb":Landroid/graphics/Bitmap;
    .end local v14    # "thumbInfo":Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;
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

    .line 2713
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private reBuildDateHeaders()V
    .locals 3

    .prologue
    .line 1817
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-nez v1, :cond_1

    .line 1819
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

    const-string v2, "reBuildDateHeaders() - m_MediaList is NULL, can not rebuild headers!"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1841
    :cond_0
    :goto_0
    return-void

    .line 1823
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

    const-string v2, "reBuildDateHeaders()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1824
    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_GROUPING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1826
    invoke-direct {p0}, Lcom/oneplus/gallery2/GridViewFragment;->clearSectionHeaderInfo()V

    .line 1827
    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_CAMERA_ITEM_MEDIALIST_POSITION:Lcom/oneplus/base/PropertyKey;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1828
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;->insertCameraItem()V

    .line 1829
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v1}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1830
    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;

    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v1, v0}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    invoke-virtual {v2, v1}, Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;->addMediaIntoGroup(Lcom/oneplus/gallery2/media/Media;)Z

    .line 1829
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1832
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;->setupHeaderInfo()Z

    .line 1834
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderItemDecoration:Lcom/oneplus/gallery2/HeaderItemDecoration;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_3

    .line 1835
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderItemDecoration:Lcom/oneplus/gallery2/HeaderItemDecoration;

    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery2/HeaderItemDecoration;->updateStickyHeaderText(Landroid/support/v7/widget/RecyclerView;)V

    .line 1837
    :cond_3
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderAdapter:Lcom/oneplus/gallery2/GridViewHeaderAdapter;

    if-eqz v1, :cond_0

    .line 1838
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderAdapter:Lcom/oneplus/gallery2/GridViewHeaderAdapter;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/GridViewHeaderAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private reportScrollOffsets(II)V
    .locals 9
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    const/4 v8, 0x0

    .line 2858
    iget v4, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ScrollOffsetY:I

    .line 2859
    .local v4, "prevY":I
    if-eqz p2, :cond_1

    .line 2860
    iget v5, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ScrollOffsetY:I

    sub-int/2addr v5, p2

    iput v5, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ScrollOffsetY:I

    .line 2894
    :cond_0
    :goto_0
    sget-object v5, Lcom/oneplus/gallery2/GridViewFragment;->PROP_SCROLL_OFFSET_Y:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ScrollOffsetY:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/oneplus/gallery2/GridViewFragment;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2895
    return-void

    .line 2863
    :cond_1
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_GridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v5, :cond_4

    .line 2865
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_GridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v5}, Landroid/support/v7/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 2866
    .local v1, "firstPosition":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_3

    .line 2868
    iget-boolean v5, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_IsGrouping:Z

    if-eqz v5, :cond_0

    .line 2874
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_GridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v5, v1}, Landroid/support/v7/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    .line 2875
    .local v2, "itemView":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 2877
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;

    invoke-virtual {v5, v1}, Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;->calculateViewOffsetY(I)I

    move-result v5

    iget-object v6, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v6

    add-int v3, v5, v6

    .line 2878
    .local v3, "offsetY":I
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 2879
    .local v0, "actualOffset":I
    sub-int v5, v3, v0

    neg-int v5, v5

    iput v5, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ScrollOffsetY:I

    goto :goto_0

    .line 2883
    .end local v0    # "actualOffset":I
    .end local v3    # "offsetY":I
    :cond_2
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

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

    .line 2884
    iput v8, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ScrollOffsetY:I

    goto :goto_0

    .line 2889
    .end local v2    # "itemView":Landroid/view/View;
    :cond_3
    iput v8, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ScrollOffsetY:I

    goto :goto_0

    .line 2892
    .end local v1    # "firstPosition":I
    :cond_4
    iput v8, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ScrollOffsetY:I

    goto :goto_0
.end method

.method private resetAutoScrollTimer()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 2899
    iput v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_AnchorPosition:I

    .line 2900
    iput v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_LastTimeItemPosition:I

    .line 2901
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_AutoScrollTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 2902
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_AutoScrollStarted:Z

    .line 2903
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;->NONE:Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;

    iput-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_AutoScrollDirection:Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;

    .line 2904
    return-void
.end method

.method private resetToolBar()V
    .locals 2

    .prologue
    .line 2908
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 2910
    iget-boolean v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HasActionBar:Z

    if-nez v0, :cond_1

    .line 2912
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 2913
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setVisibility(I)V

    .line 2917
    :cond_0
    :goto_0
    return-void

    .line 2915
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/gallery2/GridViewFragment;->showToolBar()V

    goto :goto_0
.end method

.method private setEmptyViewVisibilityProp(Z)Z
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    const/4 v1, 0x0

    .line 3046
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_EMPTY_ICON_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-super {p0, v0, v2}, Lcom/oneplus/gallery2/GalleryFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 3055
    :goto_0
    return v0

    .line 3048
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_EmptyMediaView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 3050
    if-eqz p1, :cond_2

    .line 3051
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_EmptyMediaView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3055
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 3053
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_EmptyMediaView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method private setMediaList(Lcom/oneplus/gallery2/media/MediaList;)Z
    .locals 12
    .param p1, "value"    # Lcom/oneplus/gallery2/media/MediaList;

    .prologue
    const/4 v11, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 3079
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

    const-string v8, "setMediaList"

    invoke-static {v5, v8}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3081
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-ne v5, p1, :cond_0

    .line 3082
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

    const-string v7, "setMediaList() - same medialist."

    invoke-static {v5, v7}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 3177
    :goto_0
    return v5

    .line 3087
    :cond_0
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v5, :cond_2

    .line 3089
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

    const-string v8, "setMediaList() - detach from previous media list"

    invoke-static {v5, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3090
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v8, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v9, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v5, v8, v9}, Lcom/oneplus/gallery2/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 3091
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v8, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    iget-object v9, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaRemovedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v5, v8, v9}, Lcom/oneplus/gallery2/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 3092
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v8, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    iget-object v9, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaRemovingHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v5, v8, v9}, Lcom/oneplus/gallery2/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 3094
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v5}, Lcom/oneplus/gallery2/media/MediaList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/media/Media;

    .line 3095
    .local v3, "media":Lcom/oneplus/gallery2/media/Media;
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment;->EXTRA_KEY_MEDIA_LOCAL_TIME:Lcom/oneplus/gallery2/ExtraKey;

    invoke-interface {v3, v5, v10}, Lcom/oneplus/gallery2/media/Media;->putExtra(Lcom/oneplus/gallery2/ExtraKey;Ljava/lang/Object;)V

    goto :goto_1

    .line 3096
    .end local v3    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_1
    iput-object v10, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    .line 3098
    invoke-direct {p0}, Lcom/oneplus/gallery2/GridViewFragment;->clearSectionHeaderInfo()V

    .line 3102
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    iput v11, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_FirstVisibleMediaIndex:I

    .line 3103
    iput v11, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_LastVisibleMediaIndex:I

    .line 3105
    if-nez p1, :cond_6

    .line 3107
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

    const-string v8, "setMediaList() - MediaList is null"

    invoke-static {v5, v8}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3108
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ItemAdapter:Lcom/oneplus/gallery2/GridViewItemAdapter;

    if-eqz v5, :cond_3

    .line 3109
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ItemAdapter:Lcom/oneplus/gallery2/GridViewItemAdapter;

    invoke-virtual {v5, v10}, Lcom/oneplus/gallery2/GridViewItemAdapter;->updateMediaList(Lcom/oneplus/gallery2/media/MediaList;)V

    .line 3110
    :cond_3
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderAdapter:Lcom/oneplus/gallery2/GridViewHeaderAdapter;

    if-eqz v5, :cond_4

    .line 3112
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderAdapter:Lcom/oneplus/gallery2/GridViewHeaderAdapter;

    invoke-virtual {v5, v10}, Lcom/oneplus/gallery2/GridViewHeaderAdapter;->updateMediaList(Lcom/oneplus/gallery2/media/MediaList;)V

    .line 3113
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderAdapter:Lcom/oneplus/gallery2/GridViewHeaderAdapter;

    invoke-virtual {v5}, Lcom/oneplus/gallery2/GridViewHeaderAdapter;->notifyDataSetChanged()V

    .line 3115
    :cond_4
    invoke-direct {p0, v6}, Lcom/oneplus/gallery2/GridViewFragment;->setRecyclerViewVisibility(Z)V

    .line 3116
    invoke-direct {p0}, Lcom/oneplus/gallery2/GridViewFragment;->clearThumbnailInfos()V

    .line 3117
    invoke-direct {p0}, Lcom/oneplus/gallery2/GridViewFragment;->clearSectionHeaderInfo()V

    .line 3120
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaChangeCBHandles:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/Handle;

    .line 3121
    .local v0, "handle":Lcom/oneplus/base/Handle;
    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_2

    .line 3122
    .end local v0    # "handle":Lcom/oneplus/base/Handle;
    :cond_5
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaChangeCBHandles:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    move v5, v7

    .line 3124
    goto/16 :goto_0

    .line 3128
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_6
    iput-object p1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    .line 3131
    invoke-direct {p0}, Lcom/oneplus/gallery2/GridViewFragment;->clearThumbnailInfos()V

    .line 3134
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_3
    if-ltz v1, :cond_8

    .line 3136
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v5, v1}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v5}, Lcom/oneplus/gallery2/media/Media;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v4

    .line 3137
    .local v4, "source":Lcom/oneplus/gallery2/media/MediaSource;
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaChangeCBHandles:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/base/Handle;

    invoke-static {v5}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 3138
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaChangeCBHandles:Ljava/util/Map;

    iget-object v8, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaChangeCallback:Lcom/oneplus/gallery2/media/MediaChangeCallback;

    invoke-interface {v4, v8}, Lcom/oneplus/gallery2/media/MediaSource;->addMediaChangedCallback(Lcom/oneplus/gallery2/media/MediaChangeCallback;)Lcom/oneplus/base/Handle;

    move-result-object v8

    invoke-interface {v5, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3134
    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 3142
    .end local v4    # "source":Lcom/oneplus/gallery2/media/MediaSource;
    :cond_8
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ItemAdapter:Lcom/oneplus/gallery2/GridViewItemAdapter;

    if-eqz v5, :cond_9

    .line 3143
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ItemAdapter:Lcom/oneplus/gallery2/GridViewItemAdapter;

    iget-object v8, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-virtual {v5, v8}, Lcom/oneplus/gallery2/GridViewItemAdapter;->updateMediaList(Lcom/oneplus/gallery2/media/MediaList;)V

    .line 3145
    :cond_9
    sget-object v5, Lcom/oneplus/gallery2/GridViewFragment;->PROP_GROUPING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 3148
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;

    if-nez v5, :cond_a

    .line 3149
    new-instance v5, Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;

    invoke-direct {v5, p0}, Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;-><init>(Lcom/oneplus/gallery2/GridViewFragment;)V

    iput-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;

    .line 3151
    :cond_a
    invoke-direct {p0}, Lcom/oneplus/gallery2/GridViewFragment;->reBuildDateHeaders()V

    .line 3155
    :cond_b
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderAdapter:Lcom/oneplus/gallery2/GridViewHeaderAdapter;

    if-eqz v5, :cond_c

    .line 3157
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderAdapter:Lcom/oneplus/gallery2/GridViewHeaderAdapter;

    iget-object v8, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-virtual {v5, v8}, Lcom/oneplus/gallery2/GridViewHeaderAdapter;->updateMediaList(Lcom/oneplus/gallery2/media/MediaList;)V

    .line 3158
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderAdapter:Lcom/oneplus/gallery2/GridViewHeaderAdapter;

    invoke-virtual {v5}, Lcom/oneplus/gallery2/GridViewHeaderAdapter;->notifyDataSetChanged()V

    .line 3163
    :cond_c
    if-eqz p1, :cond_d

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/MediaList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    .line 3165
    invoke-direct {p0, v7}, Lcom/oneplus/gallery2/GridViewFragment;->setRecyclerViewVisibility(Z)V

    .line 3166
    invoke-direct {p0, v6}, Lcom/oneplus/gallery2/GridViewFragment;->setEmptyViewVisibilityProp(Z)Z

    .line 3169
    :cond_d
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v5, :cond_e

    .line 3171
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v6, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v8, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v5, v6, v8}, Lcom/oneplus/gallery2/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 3172
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v6, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    iget-object v8, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaRemovedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v5, v6, v8}, Lcom/oneplus/gallery2/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 3173
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v6, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    iget-object v8, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaRemovingHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v5, v6, v8}, Lcom/oneplus/gallery2/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    :cond_e
    move v5, v7

    .line 3177
    goto/16 :goto_0
.end method

.method private setMediaSet(Lcom/oneplus/gallery2/media/MediaSet;)Z
    .locals 3
    .param p1, "mediaSet"    # Lcom/oneplus/gallery2/media/MediaSet;

    .prologue
    .line 3182
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    .line 3183
    .local v0, "oldMediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    if-ne v0, p1, :cond_0

    .line 3184
    const/4 v1, 0x0

    .line 3205
    :goto_0
    return v1

    .line 3187
    :cond_0
    if-eqz v0, :cond_1

    .line 3189
    sget-object v1, Lcom/oneplus/gallery2/media/MediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaSetNameChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaSet;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 3193
    :cond_1
    iput-object p1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    .line 3194
    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/oneplus/gallery2/GridViewFragment;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3197
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/GridViewFragment;->onMediaSetNameChanged(Lcom/oneplus/gallery2/media/MediaSet;)V

    .line 3200
    if-eqz p1, :cond_2

    .line 3202
    sget-object v1, Lcom/oneplus/gallery2/media/MediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaSetNameChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v1, v2}, Lcom/oneplus/gallery2/media/MediaSet;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 3205
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setRecyclerViewVisibility(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 3068
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 3070
    if-eqz p1, :cond_1

    .line 3071
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 3075
    :cond_0
    :goto_0
    return-void

    .line 3073
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

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

    .line 2921
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    if-nez v0, :cond_1

    .line 2936
    :cond_0
    :goto_0
    return-void

    .line 2924
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/GridViewFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v0

    sget-object v2, Lcom/oneplus/gallery2/GalleryActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery2/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f020061

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/Toolbar;->setNavigationIcon(I)V

    .line 2925
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0, v3}, Landroid/widget/Toolbar;->setVisibility(I)V

    .line 2926
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ToolbarTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2927
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v4, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2928
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/oneplus/gallery2/media/AlbumMediaSet;

    invoke-interface {v0, v5, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2930
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2932
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v4, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2933
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v5, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2934
    invoke-direct {p0}, Lcom/oneplus/gallery2/GridViewFragment;->updateToolBarTitleImageCounts()V

    goto :goto_0

    .line 2924
    :cond_2
    const v0, 0x7f020062

    goto :goto_1
.end method

.method private updateItemViewHolderBitmap(Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "itemHolder"    # Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;
    .param p2, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    .line 3236
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3255
    :cond_0
    :goto_0
    return-void

    .line 3239
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->isThumbDecoded:Z

    .line 3240
    iget-boolean v2, p1, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->isViewBinding:Z

    if-eqz v2, :cond_2

    .line 3241
    iget-object v2, p1, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    new-instance v3, Lcom/oneplus/gallery/drawable/SimpleBitmapDrawable;

    invoke-direct {v3, p2}, Lcom/oneplus/gallery/drawable/SimpleBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3244
    :cond_2
    iget-object v2, p1, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3246
    .local v0, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;

    if-eqz v2, :cond_3

    move-object v1, v0

    .line 3247
    check-cast v1, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;

    .line 3253
    .local v1, "transitionDrawable":Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;
    :goto_1
    new-instance v2, Lcom/oneplus/gallery/drawable/SimpleBitmapDrawable;

    invoke-direct {v2, p2}, Lcom/oneplus/gallery/drawable/SimpleBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;->startTransition(Landroid/graphics/drawable/Drawable;J)V

    goto :goto_0

    .line 3250
    .end local v1    # "transitionDrawable":Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;
    :cond_3
    new-instance v1, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;

    sget-object v2, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable$ScaleType;->CENTER_CROP:Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable$ScaleType;

    invoke-direct {v1, v2, v0}, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;-><init>(Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable$ScaleType;Landroid/graphics/drawable/Drawable;)V

    .line 3251
    .restart local v1    # "transitionDrawable":Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;
    iget-object v2, p1, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private updateToolBarTitleImageCounts()V
    .locals 3

    .prologue
    .line 3259
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_SelectionMediaList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 3260
    .local v0, "itemCounts":I
    if-ltz v0, :cond_0

    .line 3262
    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_SELECTION_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/gallery2/GridViewFragment;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3263
    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_SELECTION_STYLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;->PICKER_SINGLE_CHOICE:Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;

    if-eq v1, v2, :cond_0

    if-lez v0, :cond_0

    .line 3264
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 3266
    :cond_0
    return-void
.end method


# virtual methods
.method public convertToLocalTime(J)J
    .locals 5
    .param p1, "utctime"    # J

    .prologue
    .line 1109
    iget v2, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_TimeZoneOffset:I

    int-to-long v2, v2

    add-long v0, p1, v2

    .line 1111
    .local v0, "localtime":J
    const-wide/32 v2, 0x5265c00

    rem-long v2, v0, v2

    sub-long/2addr v0, v2

    .line 1112
    return-wide v0
.end method

.method public findDateForScrollBarDateIndex()Ljava/lang/CharSequence;
    .locals 10

    .prologue
    .line 3280
    iget-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    .line 3281
    .local v4, "itemCount":I
    iget-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_GridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v7}, Landroid/support/v7/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 3282
    .local v0, "adapterPos":I
    if-eqz v4, :cond_4

    const/4 v7, -0x1

    if-eq v0, v7, :cond_4

    .line 3284
    sget-object v7, Lcom/oneplus/gallery2/GridViewFragment;->PROP_GROUPING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3286
    add-int/lit8 v7, v4, -0x1

    if-eq v0, v7, :cond_0

    .line 3287
    iget-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderItemDecoration:Lcom/oneplus/gallery2/HeaderItemDecoration;

    invoke-virtual {v7}, Lcom/oneplus/gallery2/HeaderItemDecoration;->getStickyHeaderText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 3317
    :goto_0
    return-object v1

    .line 3290
    :cond_0
    add-int/lit8 v7, v4, -0x1

    if-eq v0, v7, :cond_1

    .line 3291
    iget-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_GridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v7}, Landroid/support/v7/widget/GridLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    .line 3293
    :cond_1
    iget-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v7, v0}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v6

    .line 3294
    .local v6, "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v6, :cond_4

    .line 3296
    check-cast v6, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;

    .end local v6    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v5, v6, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->media:Lcom/oneplus/gallery2/media/Media;

    .line 3297
    .local v5, "media":Lcom/oneplus/gallery2/media/Media;
    if-eqz v5, :cond_3

    .line 3299
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v3

    .line 3300
    .local v3, "format":Ljava/text/DateFormat;
    const-string v7, "UTC"

    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 3301
    invoke-interface {v5}, Lcom/oneplus/gallery2/media/Media;->getTakenTime()J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lcom/oneplus/gallery2/GridViewFragment;->convertToLocalTime(J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 3302
    .local v2, "dateInMilliSec":Ljava/lang/Long;
    sget-object v7, Lcom/oneplus/gallery2/GridViewFragment;->PROP_TODAY_DATE_MILLIES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3303
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderToday:Ljava/lang/String;

    goto :goto_0

    .line 3304
    :cond_2
    new-instance v7, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 3305
    .local v1, "date":Ljava/lang/String;
    goto :goto_0

    .line 3310
    .end local v1    # "date":Ljava/lang/String;
    .end local v2    # "dateInMilliSec":Ljava/lang/Long;
    .end local v3    # "format":Ljava/text/DateFormat;
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/gallery2/GridViewFragment;->getStartCameraUIPosition()I

    move-result v7

    if-ne v0, v7, :cond_4

    .line 3311
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderToday:Ljava/lang/String;

    goto :goto_0

    .line 3317
    .end local v5    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_4
    const-string v1, ""

    goto :goto_0
.end method

.method public findHeaderInfo(I)Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    .locals 1
    .param p1, "uiPosition"    # I

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;

    # invokes: Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;->findHeaderInfo(I)Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    invoke-static {v0, p1}, Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;->access$6200(Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;I)Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager$HeaderInfo;

    move-result-object v0

    return-object v0
.end method

.method public findHeaderInfo(Ljava/lang/Long;)Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    .locals 1
    .param p1, "dateMillies"    # Ljava/lang/Long;

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;

    # invokes: Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;->findHeaderInfo(Ljava/lang/Long;)Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    invoke-static {v0, p1}, Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;->access$6300(Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;Ljava/lang/Long;)Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager$HeaderInfo;

    move-result-object v0

    return-object v0
.end method

.method public findHeaderView(I)Landroid/view/View;
    .locals 1
    .param p1, "headerposition"    # I

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;->findHeaderView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public findItemGroupIndex(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;

    # invokes: Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;->findHeaderIndex(I)I
    invoke-static {v0, p1}, Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;->access$6100(Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;I)I

    move-result v0

    return v0
.end method

.method public findNextHeaderItem(Ljava/lang/Long;)Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    .locals 1
    .param p1, "key"    # Ljava/lang/Long;

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;

    # invokes: Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;->findNextHeaderItem(Ljava/lang/Long;)Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    invoke-static {v0, p1}, Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;->access$6500(Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;Ljava/lang/Long;)Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager$HeaderInfo;

    move-result-object v0

    return-object v0
.end method

.method public findPreviousHeaderItem(Ljava/lang/Long;)Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    .locals 1
    .param p1, "key"    # Ljava/lang/Long;

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;

    # invokes: Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;->findPreviousHeaderInfo(Ljava/lang/Long;)Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    invoke-static {v0, p1}, Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;->access$6400(Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;Ljava/lang/Long;)Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager$HeaderInfo;

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
    .line 1252
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 1253
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    .line 1266
    :goto_0
    return-object v0

    .line 1254
    :cond_0
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1

    .line 1255
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    goto :goto_0

    .line 1256
    :cond_1
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_2

    .line 1257
    iget-boolean v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_IsSelectionMode:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 1258
    :cond_2
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_CAMERA_ROLL:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_3

    .line 1259
    iget-boolean v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_IsCameraRoll:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 1260
    :cond_3
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_GROUPING:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_4

    .line 1261
    iget-boolean v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_IsGrouping:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 1262
    :cond_4
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_SCROLL_OFFSET_Y:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_5

    .line 1263
    iget v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ScrollOffsetY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1264
    :cond_5
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_CAMERA_ITEM_MEDIALIST_POSITION:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_6

    .line 1265
    iget v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_CameraItemMediaPosition:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1266
    :cond_6
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/GalleryFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getGridViewItemAdapter()Lcom/oneplus/gallery2/GridViewItemAdapter;
    .locals 1

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ItemAdapter:Lcom/oneplus/gallery2/GridViewItemAdapter;

    return-object v0
.end method

.method public getHeaderManager()Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;
    .locals 1

    .prologue
    .line 3275
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;

    return-object v0
.end method

.method public getHeaderSize()I
    .locals 1

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;->getHeaderSize()I

    move-result v0

    return v0
.end method

.method public getHeaderTitleText(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;->getHeaderTitleText(I)Ljava/lang/String;

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
            "Lcom/oneplus/gallery2/media/Media;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1212
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_SelectionMediaList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 1214
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

    const-string v2, "getSelectedMedia() - m_SelectionMediaList is null"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    :goto_0
    return-object v0

    .line 1218
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_SelectionMediaList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1220
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

    const-string v2, "getSelectedMedia() - m_SelectionMediaList is empty"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1224
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_SelectionMediaList:Ljava/util/List;

    goto :goto_0
.end method

.method public getStartCameraDataPosition()I
    .locals 3

    .prologue
    .line 1238
    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_CAMERA_ITEM_MEDIALIST_POSITION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_0

    .line 1240
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;->getCameraItemForMediaPosition()I

    move-result v0

    .line 1241
    .local v0, "position":I
    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_CAMERA_ITEM_MEDIALIST_POSITION:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/gallery2/GridViewFragment;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1244
    .end local v0    # "position":I
    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_CAMERA_ITEM_MEDIALIST_POSITION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getThumbManager()Lcom/oneplus/gallery2/media/ThumbnailImageManager;
    .locals 1

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    if-eqz v0, :cond_0

    .line 1181
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    .line 1183
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getThumbnailInfo(Lcom/oneplus/gallery2/media/Media;)Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;
    .locals 2
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 1190
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-nez v1, :cond_1

    .line 1191
    const/4 v0, 0x0

    .line 1198
    :cond_0
    :goto_0
    return-object v0

    .line 1192
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ThumbnailInfoTable:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;

    .line 1193
    .local v0, "thumbInfo":Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;
    if-nez v0, :cond_0

    .line 1195
    new-instance v0, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;

    .end local v0    # "thumbInfo":Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;
    invoke-direct {v0, p0, p1}, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;-><init>(Lcom/oneplus/gallery2/GridViewFragment;Lcom/oneplus/gallery2/media/Media;)V

    .line 1196
    .restart local v0    # "thumbInfo":Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ThumbnailInfoTable:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getViewHolder(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "uiposition"    # I

    .prologue
    .line 3270
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1771
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1782
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/GalleryFragment;->handleMessage(Landroid/os/Message;)V

    .line 1783
    :cond_0
    :goto_0
    return-void

    .line 1773
    :pswitch_0
    invoke-direct {p0}, Lcom/oneplus/gallery2/GridViewFragment;->isMidNight()V

    .line 1774
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GridViewFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e9

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1777
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_GridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 1778
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_GridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->scrollToPosition(I)V

    goto :goto_0

    .line 1771
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

    .line 1794
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_GROUPING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 1800
    :goto_0
    return v0

    .line 1797
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;

    if-nez v0, :cond_1

    move v0, v1

    .line 1798
    goto :goto_0

    .line 1800
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;

    # invokes: Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;->isHeaderPosition(I)Z
    invoke-static {v0, p1}, Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;->access$8400(Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;I)Z

    move-result v0

    goto :goto_0
.end method

.method public isRecyclerViewTouched()Z
    .locals 1

    .prologue
    .line 3322
    iget-boolean v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_IsRecyclerTouched:Z

    return v0
.end method

.method public isSelectionMediaListContains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 1847
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_SelectionMediaList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_SelectionMediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1849
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_SelectionMediaList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1850
    const/4 v0, 0x1

    .line 1853
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
    .line 2610
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/GalleryFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2611
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2612
    return-void
.end method

.method protected onActivityStop()V
    .locals 2

    .prologue
    .line 2618
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->onVisibleMediaChanged(ZZ)V

    .line 2621
    invoke-super {p0}, Lcom/oneplus/gallery2/GalleryFragment;->onActivityStop()V

    .line 2622
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2590
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/GalleryFragment;->onAttach(Landroid/app/Activity;)V

    .line 2591
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2592
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GridViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_GridviewColumns:I

    .line 2593
    return-void
.end method

.method protected onAttachToGallery(Lcom/oneplus/gallery2/Gallery;)V
    .locals 2
    .param p1, "gallery"    # Lcom/oneplus/gallery2/Gallery;

    .prologue
    .line 2601
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/GalleryFragment;->onAttachToGallery(Lcom/oneplus/gallery2/Gallery;)V

    .line 2604
    invoke-static {}, Lcom/oneplus/gallery2/GalleryApplication;->current()Lcom/oneplus/gallery2/GalleryApplication;

    move-result-object v0

    const-class v1, Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/GalleryApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    iput-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    .line 2605
    return-void
.end method

.method protected onBackToInitialUIState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1906
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_GridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ItemAdapter:Lcom/oneplus/gallery2/GridViewItemAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ItemAdapter:Lcom/oneplus/gallery2/GridViewItemAdapter;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/GridViewItemAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1908
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

    const-string v1, "onBackToInitialUIState() - Scroll grid view to top"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1909
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_GridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/GridLayoutManager;->scrollToPosition(I)V

    .line 1917
    :goto_0
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1918
    return-void

    .line 1913
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

    const-string v1, "onBackToInitialUIState() - Scroll grid view to top later"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1923
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/GalleryFragment;->onCreate(Landroid/os/Bundle;)V

    .line 1924
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1925
    invoke-static {}, Lcom/oneplus/gallery2/GalleryApplication;->current()Lcom/oneplus/gallery2/GalleryApplication;

    move-result-object v0

    const-class v1, Lcom/oneplus/gallery2/AppTracker;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/GalleryApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/AppTracker;

    iput-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_AppTracker:Lcom/oneplus/gallery2/AppTracker;

    .line 1926
    invoke-static {}, Lcom/oneplus/gallery2/GalleryApplication;->current()Lcom/oneplus/gallery2/GalleryApplication;

    move-result-object v0

    const-class v1, Lcom/oneplus/base/PeriodicMessageDispatcher;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/GalleryApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/PeriodicMessageDispatcher;

    iput-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_PeriodicMessageDispatcher:Lcom/oneplus/base/PeriodicMessageDispatcher;

    .line 1927
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 2325
    iget-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

    const-string v8, "onCreateView"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2326
    const v7, 0x7f03000f

    const/4 v8, 0x0

    invoke-virtual {p1, v7, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 2328
    .local v6, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GridViewFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v7

    sget-object v8, Lcom/oneplus/gallery2/GalleryActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v7, v8}, Lcom/oneplus/gallery2/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2330
    .local v1, "isBlackMode":Z
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GridViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 2331
    .local v4, "res":Landroid/content/res/Resources;
    const v7, 0x7f050087

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderHeight:I

    .line 2332
    const v7, 0x7f05008f

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v8, 0x7f050093

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ItemHeight:I

    .line 2334
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GridViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090058

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderToday:Ljava/lang/String;

    .line 2335
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GridViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f050097

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_AutoScrollHeight:I

    .line 2336
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GridViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f050098

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_AutoScrollFastHeight:I

    .line 2338
    iget-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ItemAdapter:Lcom/oneplus/gallery2/GridViewItemAdapter;

    if-nez v7, :cond_0

    .line 2339
    new-instance v7, Lcom/oneplus/gallery2/GridViewItemAdapter;

    invoke-direct {v7, p0}, Lcom/oneplus/gallery2/GridViewItemAdapter;-><init>(Lcom/oneplus/gallery2/GridViewFragment;)V

    iput-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ItemAdapter:Lcom/oneplus/gallery2/GridViewItemAdapter;

    .line 2341
    :cond_0
    iget-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderAdapter:Lcom/oneplus/gallery2/GridViewHeaderAdapter;

    if-nez v7, :cond_1

    .line 2342
    new-instance v7, Lcom/oneplus/gallery2/GridViewHeaderAdapter;

    iget-object v8, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ItemAdapter:Lcom/oneplus/gallery2/GridViewItemAdapter;

    invoke-direct {v7, p0, v8}, Lcom/oneplus/gallery2/GridViewHeaderAdapter;-><init>(Lcom/oneplus/gallery2/GridViewFragment;Lcom/oneplus/gallery2/GridViewItemAdapter;)V

    iput-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderAdapter:Lcom/oneplus/gallery2/GridViewHeaderAdapter;

    .line 2344
    :cond_1
    iget-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;

    if-nez v7, :cond_2

    .line 2345
    new-instance v7, Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;

    invoke-direct {v7, p0}, Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;-><init>(Lcom/oneplus/gallery2/GridViewFragment;)V

    iput-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderManager:Lcom/oneplus/gallery2/GridViewFragment$GridViewHeaderManager;

    .line 2348
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GridViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f050093

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 2349
    .local v5, "spacing":I
    new-instance v7, Lcom/oneplus/gallery2/HeaderItemDecoration;

    iget v8, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_GridviewColumns:I

    invoke-direct {v7, p0, v8, v5}, Lcom/oneplus/gallery2/HeaderItemDecoration;-><init>(Lcom/oneplus/gallery2/GridViewFragment;II)V

    iput-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderItemDecoration:Lcom/oneplus/gallery2/HeaderItemDecoration;

    .line 2351
    new-instance v7, Landroid/support/v7/widget/OPGridLayoutManager;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/GridViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget v9, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_GridviewColumns:I

    invoke-direct {v7, v8, v9}, Landroid/support/v7/widget/OPGridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_GridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    .line 2354
    const v7, 0x7f060044

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/RecyclerView;

    iput-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 2355
    iget-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_GridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 2356
    iget-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderAdapter:Lcom/oneplus/gallery2/GridViewHeaderAdapter;

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 2357
    iget-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderItemDecoration:Lcom/oneplus/gallery2/HeaderItemDecoration;

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 2358
    iget-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v7

    const/4 v8, 0x2

    const/16 v9, 0x9c

    invoke-virtual {v7, v8, v9}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 2359
    iget-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v8, Lcom/oneplus/gallery2/GridViewFragment$RecyclerItemClickListener;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/GridViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget-object v10, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ItemClickListener:Lcom/oneplus/gallery2/GridViewFragment$OnItemClickListener;

    invoke-direct {v8, p0, v9, v10}, Lcom/oneplus/gallery2/GridViewFragment$RecyclerItemClickListener;-><init>(Lcom/oneplus/gallery2/GridViewFragment;Landroid/content/Context;Lcom/oneplus/gallery2/GridViewFragment$OnItemClickListener;)V

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 2360
    iget-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v8, Lcom/oneplus/gallery2/GridViewFragment$13;

    invoke-direct {v8, p0}, Lcom/oneplus/gallery2/GridViewFragment$13;-><init>(Lcom/oneplus/gallery2/GridViewFragment;)V

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 2384
    sget-object v7, Lcom/oneplus/gallery2/GridViewFragment;->PROP_RECYCLER_VIEW_PADDING_TOP:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2385
    .local v3, "recycleViewPaddingTop":I
    iget-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v8

    iget-object v9, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v9

    iget-object v10, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v10

    invoke-virtual {v7, v8, v3, v9, v10}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 2387
    sget-object v7, Lcom/oneplus/gallery2/GridViewFragment;->PROP_GROUPING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2389
    new-instance v7, Lcom/oneplus/gallery2/GridViewFragment$HeaderSpanSizeLookup;

    invoke-direct {v7, p0}, Lcom/oneplus/gallery2/GridViewFragment$HeaderSpanSizeLookup;-><init>(Lcom/oneplus/gallery2/GridViewFragment;)V

    iput-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderSpanSizeLookup:Lcom/oneplus/gallery2/GridViewFragment$HeaderSpanSizeLookup;

    .line 2390
    iget-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderSpanSizeLookup:Lcom/oneplus/gallery2/GridViewFragment$HeaderSpanSizeLookup;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/oneplus/gallery2/GridViewFragment$HeaderSpanSizeLookup;->setSpanIndexCacheEnabled(Z)V

    .line 2391
    iget-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_GridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    iget-object v8, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderSpanSizeLookup:Lcom/oneplus/gallery2/GridViewFragment$HeaderSpanSizeLookup;

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 2392
    iget-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderItemDecoration:Lcom/oneplus/gallery2/HeaderItemDecoration;

    iget-object v8, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v7, v8}, Lcom/oneplus/gallery2/HeaderItemDecoration;->updateStickyHeaderText(Landroid/support/v7/widget/RecyclerView;)V

    .line 2396
    :cond_3
    const v7, 0x7f060045

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/oneplus/gallery2/widget/FastScrollBar;

    iput-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_FastScrollbar:Lcom/oneplus/gallery2/widget/FastScrollBar;

    .line 2397
    iget-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_FastScrollbar:Lcom/oneplus/gallery2/widget/FastScrollBar;

    iget-object v8, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v7, v8}, Lcom/oneplus/gallery2/widget/FastScrollBar;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 2398
    iget-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_FastScrollbar:Lcom/oneplus/gallery2/widget/FastScrollBar;

    iget v8, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_GridviewColumns:I

    invoke-virtual {v7, v8}, Lcom/oneplus/gallery2/widget/FastScrollBar;->setGridViewColumn(I)V

    .line 2399
    iget-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_FastScrollbar:Lcom/oneplus/gallery2/widget/FastScrollBar;

    iget v8, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ItemHeight:I

    invoke-virtual {v7, v8}, Lcom/oneplus/gallery2/widget/FastScrollBar;->setGridViewItemHeight(I)V

    .line 2400
    iget-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_FastScrollbar:Lcom/oneplus/gallery2/widget/FastScrollBar;

    iget v8, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderHeight:I

    invoke-virtual {v7, v8}, Lcom/oneplus/gallery2/widget/FastScrollBar;->setHeaderHeight(I)V

    .line 2401
    iget-object v8, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_FastScrollbar:Lcom/oneplus/gallery2/widget/FastScrollBar;

    if-eqz v1, :cond_9

    const v7, 0x7f020087

    :goto_0
    invoke-virtual {v8, v7}, Lcom/oneplus/gallery2/widget/FastScrollBar;->setScrollBarBackground(I)V

    .line 2402
    iget-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_FastScrollbar:Lcom/oneplus/gallery2/widget/FastScrollBar;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/GridViewFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v8

    const-string v9, "fast_scroll_bar_text"

    invoke-virtual {v8, v9}, Lcom/oneplus/gallery2/GalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/oneplus/gallery2/widget/FastScrollBar;->setScrollBarTextColor(I)V

    .line 2403
    iget-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_FastScrollbar:Lcom/oneplus/gallery2/widget/FastScrollBar;

    invoke-virtual {v7, p0}, Lcom/oneplus/gallery2/widget/FastScrollBar;->setGridViewFragment(Lcom/oneplus/gallery2/GridViewFragment;)V

    .line 2404
    iget-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_FastScrollbar:Lcom/oneplus/gallery2/widget/FastScrollBar;

    invoke-virtual {v7}, Lcom/oneplus/gallery2/widget/FastScrollBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2405
    .local v0, "fastScrollbarParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v7, :cond_4

    .line 2407
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local v0    # "fastScrollbarParams":Landroid/view/ViewGroup$LayoutParams;
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2411
    :cond_4
    const v7, 0x7f060046

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Toolbar;

    iput-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    .line 2412
    iget-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    const v8, 0x7f0b0007

    invoke-virtual {v7, v8}, Landroid/widget/Toolbar;->inflateMenu(I)V

    .line 2413
    iget-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/GridViewFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v8

    const-string v9, "action_bar_background"

    invoke-virtual {v8, v9}, Lcom/oneplus/gallery2/GalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/Toolbar;->setBackgroundColor(I)V

    .line 2414
    iget-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/GridViewFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v8

    const v9, 0x7f0a0023

    invoke-virtual {v7, v8, v9}, Landroid/widget/Toolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    .line 2415
    iget-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/GridViewFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v8

    const-string v9, "tool_bar_text"

    invoke-virtual {v8, v9}, Lcom/oneplus/gallery2/GalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/Toolbar;->setTitleTextColor(I)V

    .line 2416
    iget-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    invoke-virtual {v7}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v7

    const v8, 0x7f0600a7

    invoke-interface {v7, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    if-eqz v1, :cond_a

    const v7, 0x7f020057

    :goto_1
    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2417
    iget-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    invoke-virtual {v7}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v7

    const v8, 0x7f0600a8

    invoke-interface {v7, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    if-eqz v1, :cond_b

    const v7, 0x7f020068

    :goto_2
    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2418
    iget-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    invoke-virtual {v7}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v7

    const v8, 0x7f06009c

    invoke-interface {v7, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    if-eqz v1, :cond_c

    const v7, 0x7f02005d

    :goto_3
    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2419
    iget-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    invoke-virtual {v7}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v7

    const v8, 0x7f0600aa

    invoke-interface {v7, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    const v8, 0x7f020063

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2420
    iget-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    new-instance v8, Lcom/oneplus/gallery2/GridViewFragment$14;

    invoke-direct {v8, p0}, Lcom/oneplus/gallery2/GridViewFragment$14;-><init>(Lcom/oneplus/gallery2/GridViewFragment;)V

    invoke-virtual {v7, v8}, Landroid/widget/Toolbar;->setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V

    .line 2451
    iget-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    new-instance v8, Lcom/oneplus/gallery2/GridViewFragment$15;

    invoke-direct {v8, p0}, Lcom/oneplus/gallery2/GridViewFragment$15;-><init>(Lcom/oneplus/gallery2/GridViewFragment;)V

    invoke-virtual {v7, v8}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2464
    iget-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    invoke-virtual {v7}, Landroid/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 2465
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v7, :cond_5

    .line 2466
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local v2    # "params":Landroid/view/ViewGroup$LayoutParams;
    sget-object v7, Lcom/oneplus/gallery2/GridViewFragment;->PROP_TOOL_BAR_MARGIN_TOP:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2470
    :cond_5
    const v7, 0x7f060047

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_EmptyMediaView:Landroid/view/View;

    .line 2471
    iget-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_EmptyMediaView:Landroid/view/View;

    const v8, 0x7f060048

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_EmptyMediaViewIcon:Landroid/widget/ImageView;

    .line 2472
    iget-object v8, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_EmptyMediaViewIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_d

    const v7, 0x7f0200a7

    :goto_4
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2473
    iget-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_EmptyMediaView:Landroid/view/View;

    new-instance v8, Lcom/oneplus/gallery2/GridViewFragment$16;

    invoke-direct {v8, p0}, Lcom/oneplus/gallery2/GridViewFragment$16;-><init>(Lcom/oneplus/gallery2/GridViewFragment;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2479
    iget-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_EmptyMediaView:Landroid/view/View;

    const v8, 0x7f060049

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_EmptyMediaTitle:Landroid/widget/TextView;

    .line 2480
    iget-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_EmptyMediaView:Landroid/view/View;

    const v8, 0x7f06004a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_EmtpyMediaText:Landroid/widget/TextView;

    .line 2481
    iget-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_EmptyMediaTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/GridViewFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v8

    const-string v9, "no_photo_title"

    invoke-virtual {v8, v9}, Lcom/oneplus/gallery2/GalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2482
    iget-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_EmtpyMediaText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/GridViewFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v8

    const-string v9, "no_photo_text"

    invoke-virtual {v8, v9}, Lcom/oneplus/gallery2/GalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2484
    sget-object v7, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_EMPTY_ICON_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2485
    iget-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_EmptyMediaView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2487
    :cond_6
    iget-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v7}, Lcom/oneplus/gallery2/media/MediaList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    .line 2489
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/oneplus/gallery2/GridViewFragment;->setRecyclerViewVisibility(Z)V

    .line 2490
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/oneplus/gallery2/GridViewFragment;->setEmptyViewVisibilityProp(Z)Z

    .line 2493
    :cond_7
    new-instance v7, Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;

    invoke-direct {v7, p0, p0}, Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;-><init>(Lcom/oneplus/gallery2/GridViewFragment;Lcom/oneplus/gallery2/GridViewFragment;)V

    iput-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_PreDecodeBitmapRunnable:Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;

    .line 2495
    iget-boolean v7, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HasActionBar:Z

    if-eqz v7, :cond_8

    .line 2496
    invoke-direct {p0}, Lcom/oneplus/gallery2/GridViewFragment;->showToolBar()V

    .line 2499
    :cond_8
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GridViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_TimeChangedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v9, Lcom/oneplus/gallery2/GridViewFragment;->INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v7, v8, v9}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2502
    const/16 v7, 0x3ea

    invoke-static {p0, v7}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;I)Z

    .line 2503
    return-object v6

    .line 2401
    :cond_9
    const v7, 0x7f020088

    goto/16 :goto_0

    .line 2416
    :cond_a
    const v7, 0x7f020058

    goto/16 :goto_1

    .line 2417
    :cond_b
    const v7, 0x7f020069

    goto/16 :goto_2

    .line 2418
    :cond_c
    const v7, 0x7f02005e

    goto/16 :goto_3

    .line 2472
    :cond_d
    const v7, 0x7f0200a8

    goto/16 :goto_4
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    .line 2541
    iget-object v3, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaChangeCBHandles:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/Handle;

    .line 2542
    .local v0, "handle":Lcom/oneplus/base/Handle;
    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 2543
    .end local v0    # "handle":Lcom/oneplus/base/Handle;
    :cond_0
    iget-object v3, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaChangeCBHandles:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 2546
    iget-object v3, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v3, :cond_1

    .line 2548
    iget-object v3, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v3}, Lcom/oneplus/gallery2/media/MediaList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/Media;

    .line 2549
    .local v2, "media":Lcom/oneplus/gallery2/media/Media;
    iget-object v3, p0, Lcom/oneplus/gallery2/GridViewFragment;->EXTRA_KEY_MEDIA_LOCAL_TIME:Lcom/oneplus/gallery2/ExtraKey;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/oneplus/gallery2/media/Media;->putExtra(Lcom/oneplus/gallery2/ExtraKey;Ljava/lang/Object;)V

    goto :goto_1

    .line 2554
    .end local v2    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_1
    invoke-super {p0}, Lcom/oneplus/gallery2/GalleryFragment;->onDestroy()V

    .line 2555
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2561
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2563
    iput-object v2, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 2564
    iput-object v2, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_Toolbar:Landroid/widget/Toolbar;

    .line 2565
    iput-object v2, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_EmptyMediaView:Landroid/view/View;

    .line 2566
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ItemAdapter:Lcom/oneplus/gallery2/GridViewItemAdapter;

    if-eqz v0, :cond_0

    .line 2568
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ItemAdapter:Lcom/oneplus/gallery2/GridViewItemAdapter;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/GridViewItemAdapter;->release()V

    .line 2569
    iput-object v2, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ItemAdapter:Lcom/oneplus/gallery2/GridViewItemAdapter;

    .line 2571
    :cond_0
    iput-object v2, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HeaderAdapter:Lcom/oneplus/gallery2/GridViewHeaderAdapter;

    .line 2572
    iput-object v2, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_GridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    .line 2574
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GridViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_TimeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2577
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_SELECTION_STYLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;->DEFAULT:Lcom/oneplus/gallery2/GridViewFragment$SelectionStyle;

    if-eq v0, v1, :cond_1

    .line 2579
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_SelectionMediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2580
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_SELECTION_COUNT:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2584
    :cond_1
    invoke-super {p0}, Lcom/oneplus/gallery2/GalleryFragment;->onDestroyView()V

    .line 2585
    return-void
.end method

.method protected onMultipleItemSelected(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 2524
    iget v2, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_AnchorPosition:I

    sub-int v0, p2, v2

    .line 2525
    .local v0, "diff":I
    if-lez v0, :cond_0

    .line 2527
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 2528
    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget v3, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_AnchorPosition:I

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_AnchorPosition:I

    add-int/2addr v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/gallery2/GridViewFragment;->onMultipleItemSelected(Landroid/view/View;I)V

    .line 2527
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2531
    .end local v1    # "i":I
    :cond_0
    iget v2, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_AnchorPosition:I

    add-int/lit8 v1, v2, -0x1

    .restart local v1    # "i":I
    :goto_1
    neg-int v2, p2

    if-lt v1, v2, :cond_1

    .line 2532
    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/oneplus/gallery2/GridViewFragment;->onSingleItemSelected(Landroid/view/View;I)V

    .line 2531
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2534
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 2223
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2226
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ThumbManagerActivateHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ThumbManagerActivateHandle:Lcom/oneplus/base/Handle;

    .line 2229
    invoke-super {p0}, Lcom/oneplus/gallery2/GalleryFragment;->onPause()V

    .line 2232
    invoke-direct {p0}, Lcom/oneplus/gallery2/GridViewFragment;->resetAutoScrollTimer()V

    .line 2233
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/16 v2, 0x3e9

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2238
    invoke-super {p0}, Lcom/oneplus/gallery2/GalleryFragment;->onResume()V

    .line 2240
    invoke-direct {p0}, Lcom/oneplus/gallery2/GridViewFragment;->checkDate()V

    .line 2243
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ThumbManagerActivateHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    if-eqz v1, :cond_0

    .line 2244
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    invoke-interface {v1, v3}, Lcom/oneplus/gallery2/media/ThumbnailImageManager;->activate(I)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ThumbManagerActivateHandle:Lcom/oneplus/base/Handle;

    .line 2247
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GridViewFragment;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2248
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GridViewFragment;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2251
    iget-boolean v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ToolbarActionShared:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ShareMediaChosenAppName:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/gallery2/GridViewFragment;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v1

    sget-object v2, Lcom/oneplus/gallery2/OPGallery;->PROP_IS_SHARING_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery2/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2252
    iget-boolean v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_IsSelectionMode:Z

    if-eqz v1, :cond_1

    .line 2253
    invoke-direct {p0}, Lcom/oneplus/gallery2/GridViewFragment;->exitSelectionMode()V

    .line 2254
    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2256
    :cond_1
    iput-boolean v3, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ToolbarActionShared:Z

    .line 2260
    :cond_2
    iget v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_FirstVisibleMediaIndex:I

    iget v2, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_LastVisibleMediaIndex:I

    invoke-direct {p0, v1, v2, v4, v4}, Lcom/oneplus/gallery2/GridViewFragment;->onVisibleMediaChanged(IIZZ)V

    .line 2263
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GridViewFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/gallery2/GalleryActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery2/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2264
    .local v0, "isBlackMode":Z
    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_EmptyMediaViewIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    const v1, 0x7f0200a7

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2265
    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_FastScrollbar:Lcom/oneplus/gallery2/widget/FastScrollBar;

    if-eqz v0, :cond_4

    const v1, 0x7f020087

    :goto_1
    invoke-virtual {v2, v1}, Lcom/oneplus/gallery2/widget/FastScrollBar;->setScrollBarBackground(I)V

    .line 2266
    return-void

    .line 2264
    :cond_3
    const v1, 0x7f0200a8

    goto :goto_0

    .line 2265
    :cond_4
    const v1, 0x7f020088

    goto :goto_1
.end method

.method public onStop()V
    .locals 7

    .prologue
    .line 2281
    invoke-super {p0}, Lcom/oneplus/gallery2/GalleryFragment;->onStop()V

    .line 2282
    iget-object v4, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

    const-string v5, "onStop"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2283
    iget-object v4, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v4, :cond_1

    .line 2284
    iget-object v4, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "m_MediaList size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v6}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2289
    :goto_0
    iget-object v4, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v4, :cond_5

    .line 2291
    iget v4, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_FirstVisibleMediaIndex:I

    if-ltz v4, :cond_5

    .line 2293
    iget-object v4, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v4}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v2

    .line 2294
    .local v2, "mediaCount":I
    const/4 v0, 0x0

    .line 2295
    .local v0, "dropCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v4, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_FirstVisibleMediaIndex:I

    if-ge v1, v4, :cond_2

    if-ge v1, v2, :cond_2

    .line 2297
    iget-object v4, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ThumbnailInfoTable:Ljava/util/Map;

    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v5, v1}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;

    .line 2298
    .local v3, "thumbInfo":Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->dropThumbnailImages()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2299
    add-int/lit8 v0, v0, 0x1

    .line 2295
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2286
    .end local v0    # "dropCount":I
    .end local v1    # "i":I
    .end local v2    # "mediaCount":I
    .end local v3    # "thumbInfo":Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;
    :cond_1
    iget-object v4, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

    const-string v5, "m_MediaList size: 0 or NPE"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2301
    .restart local v0    # "dropCount":I
    .restart local v1    # "i":I
    .restart local v2    # "mediaCount":I
    :cond_2
    add-int/lit8 v1, v2, -0x1

    :goto_2
    iget v4, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_LastVisibleMediaIndex:I

    if-le v1, v4, :cond_4

    if-ltz v1, :cond_4

    .line 2303
    iget-object v4, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ThumbnailInfoTable:Ljava/util/Map;

    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v5, v1}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;

    .line 2304
    .restart local v3    # "thumbInfo":Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->dropThumbnailImages()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2305
    add-int/lit8 v0, v0, 0x1

    .line 2301
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 2307
    .end local v3    # "thumbInfo":Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;
    :cond_4
    iget-object v4, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

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

    .line 2312
    .end local v0    # "dropCount":I
    .end local v1    # "i":I
    .end local v2    # "mediaCount":I
    :cond_5
    invoke-direct {p0}, Lcom/oneplus/gallery2/GridViewFragment;->cancelAllBitmapDecodeTasks()V

    .line 2315
    iget-object v4, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_PreDecodeBitmapRunnable:Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;

    if-eqz v4, :cond_6

    .line 2316
    iget-object v4, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_PreDecodeBitmapRunnable:Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;

    invoke-virtual {v4}, Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;->cancelAllBitmapDecoding()V

    .line 2317
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GridViewFragment;->getHandler()Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_PreDecodeBitmapRunnable:Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2319
    :cond_6
    return-void
.end method

.method onVisibleMediaChanged()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2690
    invoke-virtual {p0, v0, v0}, Lcom/oneplus/gallery2/GridViewFragment;->onVisibleMediaChanged(ZZ)V

    .line 2691
    return-void
.end method

.method onVisibleMediaChanged(ZZ)V
    .locals 4
    .param p1, "refreshVisibleItems"    # Z
    .param p2, "forceUpdate"    # Z

    .prologue
    .line 2694
    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_GridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v2, :cond_0

    .line 2696
    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_GridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/oneplus/gallery2/GridViewFragment;->UIPositionToMediaListPosition(I)I

    move-result v0

    .line 2697
    .local v0, "firstIndex":I
    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_GridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/oneplus/gallery2/GridViewFragment;->UIPositionToMediaListPosition(I)I

    move-result v1

    .line 2698
    .local v1, "lastIndex":I
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/oneplus/gallery2/GridViewFragment;->onVisibleMediaChanged(IIZZ)V

    .line 2704
    .end local v0    # "firstIndex":I
    .end local v1    # "lastIndex":I
    :goto_0
    return-void

    .line 2702
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

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

    .line 2980
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GridViewFragment;->verifyAccess()V

    .line 2981
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v1}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 2992
    :cond_0
    :goto_0
    return v2

    .line 2983
    :cond_1
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/GridViewFragment;->mediaListPositionToUIPosition(I)I

    move-result v0

    .line 2984
    .local v0, "itemPosition":I
    if-ltz v0, :cond_0

    .line 2986
    if-eqz p2, :cond_2

    .line 2987
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 2989
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0
.end method

.method public scrollTo(Lcom/oneplus/gallery2/media/Media;Z)Z
    .locals 3
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "smoothScroll"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2962
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GridViewFragment;->verifyAccess()V

    .line 2963
    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v2, :cond_1

    .line 2968
    :cond_0
    :goto_0
    return v1

    .line 2965
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v2, p1}, Lcom/oneplus/gallery2/media/MediaList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2966
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 2967
    invoke-virtual {p0, v0, p2}, Lcom/oneplus/gallery2/GridViewFragment;->scrollTo(IZ)Z

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

    .line 3000
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 3001
    check-cast p2, Lcom/oneplus/gallery2/media/MediaList;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/gallery2/GridViewFragment;->setMediaList(Lcom/oneplus/gallery2/media/MediaList;)Z

    move-result v0

    .line 3039
    :goto_0
    return v0

    .line 3002
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_0
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1

    .line 3003
    check-cast p2, Lcom/oneplus/gallery2/media/MediaSet;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/gallery2/GridViewFragment;->setMediaSet(Lcom/oneplus/gallery2/media/MediaSet;)Z

    move-result v0

    goto :goto_0

    .line 3004
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_1
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_HAS_ACTION_BAR:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_3

    move-object v0, p2

    .line 3006
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_HasActionBar:Z

    .line 3007
    invoke-direct {p0}, Lcom/oneplus/gallery2/GridViewFragment;->resetToolBar()V

    .line 3039
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery2/GalleryFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 3009
    :cond_3
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_EMPTY_ICON_VISIBLE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_6

    move-object v0, p2

    .line 3012
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_2
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/GridViewFragment;->setRecyclerViewVisibility(Z)V

    .line 3013
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_FastScrollbar:Lcom/oneplus/gallery2/widget/FastScrollBar;

    if-eqz v0, :cond_4

    .line 3014
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_FastScrollbar:Lcom/oneplus/gallery2/widget/FastScrollBar;

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery2/widget/FastScrollBar;->showScrollBarThumb(Z)V

    .line 3015
    :cond_4
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/GridViewFragment;->setEmptyViewVisibilityProp(Z)Z

    move-result v0

    goto :goto_0

    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_5
    move v0, v2

    .line 3012
    goto :goto_2

    .line 3017
    :cond_6
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_8

    move-object v0, p2

    .line 3019
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_IsSelectionMode:Z

    .line 3020
    iget-boolean v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_IsSelectionMode:Z

    if-nez v0, :cond_7

    .line 3021
    invoke-direct {p0}, Lcom/oneplus/gallery2/GridViewFragment;->exitSelectionMode()V

    .line 3025
    :goto_3
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_AppTracker:Lcom/oneplus/gallery2/AppTracker;

    if-eqz v0, :cond_2

    .line 3026
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_AppTracker:Lcom/oneplus/gallery2/AppTracker;

    const-string v3, "Gallery.MultipleSelection"

    new-array v1, v1, [Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_IsSelectionMode:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-interface {v0, v3, v2, v1}, Lcom/oneplus/gallery2/AppTracker;->createRecord(Ljava/lang/String;I[Ljava/lang/Object;)Z

    goto :goto_1

    .line 3023
    :cond_7
    invoke-direct {p0}, Lcom/oneplus/gallery2/GridViewFragment;->resetToolBar()V

    goto :goto_3

    .line 3028
    :cond_8
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_CAMERA_ROLL:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_9

    move-object v0, p2

    .line 3029
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_IsCameraRoll:Z

    goto :goto_1

    .line 3030
    :cond_9
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_GROUPING:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_a

    move-object v0, p2

    .line 3031
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_IsGrouping:Z

    goto :goto_1

    .line 3032
    :cond_a
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_CAMERA_ITEM_MEDIALIST_POSITION:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_b

    move-object v0, p2

    .line 3033
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_CameraItemMediaPosition:I

    goto/16 :goto_1

    .line 3034
    :cond_b
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_GROUP_HEADER_PADDING_TOP:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_2

    .line 3036
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_2

    .line 3037
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidateItemDecorations()V

    goto/16 :goto_1
.end method

.method public setClipToPadding(Z)V
    .locals 1
    .param p1, "clipToPadding"    # Z

    .prologue
    .line 3211
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setClipToPadding(Z)V

    .line 3212
    return-void
.end method

.method public setRecyclerViewScrollOffsetY(I)V
    .locals 4
    .param p1, "offsetY"    # I

    .prologue
    .line 3060
    iget v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ScrollOffsetY:I

    .line 3061
    .local v0, "preValue":I
    iput p1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ScrollOffsetY:I

    .line 3062
    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_SCROLL_OFFSET_Y:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_ScrollOffsetY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/oneplus/gallery2/GridViewFragment;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3063
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;

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

    .line 3064
    return-void
.end method

.method public startPreDecodeBitmapRunnalbe()V
    .locals 4

    .prologue
    .line 2948
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GridViewFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_PreDecodeBitmapRunnable:Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2949
    invoke-virtual {p0}, Lcom/oneplus/gallery2/GridViewFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_PreDecodeBitmapRunnable:Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2950
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment;->m_PreDecodeBitmapRunnable:Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/GridViewFragment$PreDecodeBitmapRunnable;->run()V

    .line 2951
    return-void
.end method
