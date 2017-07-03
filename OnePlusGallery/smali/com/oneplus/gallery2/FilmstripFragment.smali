.class public Lcom/oneplus/gallery2/FilmstripFragment;
.super Lcom/oneplus/gallery2/GalleryFragment;
.source "FilmstripFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/FilmstripFragment$30;,
        Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;,
        Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailDrawable;,
        Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;,
        Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailQuality;,
        Lcom/oneplus/gallery2/FilmstripFragment$ViewVisibilityState;,
        Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;,
        Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;
    }
.end annotation


# static fields
.field private static final COMMIT_DELETION_WHEN_CLICKING_BUTTON:Z = false

.field private static final DELAY_HIDE_TOOL_BAR_TIME_MILLIS:J = 0xbb8L

.field private static final DURATION_ANIMATION:J = 0x96L

.field private static final DURATION_COMMIT_DELETION:J = 0x2710L

.field private static final DURATION_COMMIT_DELETION_WHEN_STOPPING:J = 0x12cL

.field private static final ENABLE_DECODE_LOG:Z = false

.field public static final EVENT_BURST_VIEWER_BUTTON_CLICK:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/base/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXTRA_IS_READ_ONLY:Ljava/lang/String; = "IsReadOnly"

.field private static final MEDIA_ADDED:I = 0x1

.field private static final MEDIA_REMOVED:I = 0x2

.field private static final MSG_ANIMATION_STATE_CHECKED:I = 0x2725

.field private static final MSG_CHECK_ANIMATION_STATE:I = 0x2724

.field private static final MSG_COMMIT_DELETION:I = 0x271a

.field private static final MSG_COMMIT_DELETION_WHEN_STOPPING:I = 0x271b

.field private static final MSG_HIDE_TOOL_BAR:I = 0x2711

.field private static final PACKAGE_NAME_HYDROGEN:Ljava/lang/String; = "com.oneplus.hydrogen.launcher"

.field private static final PRE_DECODE_THUMB_WINDOW_SIZE:I = 0x2

.field private static final PRE_DECODE_THUMB_WINDOW_SIZE_SMALL:I = 0x3

.field public static final PROP_CURRENT_MEDIA_INDEX:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_FILMSTRIP_STATE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_READ_ONLY:Lcom/oneplus/base/PropertyKey;
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

.field private static final REQUEST_CODE_EDIT:I = 0x67

.field private static final REQUEST_CODE_PLAY_VIDEO:I = 0x69

.field private static final REQUEST_CODE_SET_WALLPAPER:I = 0x68

.field private static final RESULT_EXTRA_IS_COLLECTED:Ljava/lang/String; = "IsCollected"

.field private static final THRESHOLD_FLING_TO_NEIGHBOR_ITEM:F = 5000.0f


# instance fields
.field private m_ActionBar:Landroid/widget/Toolbar;

.field private m_ActionBarHeight:I

.field private m_AppTracker:Lcom/oneplus/gallery2/AppTracker;

.field private m_AsyncHandler:Landroid/os/Handler;

.field private m_AsyncHandlerThread:Landroid/os/HandlerThread;

.field private m_CollectButton:Landroid/view/View;

.field private m_CollectButtonContainer:Landroid/view/View;

.field private m_CurrentMedia:Lcom/oneplus/gallery2/media/Media;

.field private m_CurrentMediaIndex:I

.field private m_DeleteButton:Landroid/view/View;

.field private m_DeleteButtonContainer:Landroid/view/View;

.field private final m_DummyThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private m_EditorButton:Landroid/view/View;

.field private m_EditorButtonContainer:Landroid/view/View;

.field private m_FakePhotoSize:Landroid/util/Size;

.field private m_FakeVideoSize:Landroid/util/Size;

.field private m_FilmstripAdapter:Lcom/oneplus/widget/FilmstripView$Adapter;

.field private m_FilmstripItemPool:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;",
            ">;"
        }
    .end annotation
.end field

.field private final m_FilmstripItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;",
            ">;"
        }
    .end annotation
.end field

.field private final m_FilmstripScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

.field private m_FilmstripScrollMode:I

.field private m_FilmstripState:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;

.field private m_FilmstripView:Lcom/oneplus/widget/FilmstripView;

.field private m_FooterContainer:Landroid/view/View;

.field private m_HeaderContainer:Landroid/view/View;

.field private m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

.field private m_IsActionEditSupported:Ljava/lang/Boolean;

.field private m_IsCurrentMediaAnimation:Ljava/lang/Boolean;

.field m_IsDeletingMediaCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_IsFilmstripScrolling:Z

.field private m_IsHydrogenLauncher:Ljava/lang/Boolean;

.field private m_IsInstanceStateSaved:Z

.field m_IsNavigationBarVisibleCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_IsOverScaledDown:Z

.field private m_IsScaled:Z

.field private m_IsSharingMediaCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_IsToolbarVisible:Z

.field private final m_LowResBitmapDecodeCallback:Lcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;

.field private m_LowResBitmapDecodeInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_MediaAddedEventHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/gallery2/ListChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private m_MediaChangeCallback:Lcom/oneplus/gallery2/media/MediaChangeCallback;

.field private m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

.field private m_MediaChangeCallbackTarget:Lcom/oneplus/gallery2/media/MediaSource;

.field private m_MediaDetailsDialog:Lcom/oneplus/gallery2/MediaDetailsDialog;

.field private m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

.field private m_MediaManagerCallbackHandle:Lcom/oneplus/base/Handle;

.field private m_MediaRemovedEventHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/gallery2/ListChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private m_MediaRemovingEventHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/gallery2/ListChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final m_MediaSizeCallback:Lcom/oneplus/gallery2/media/Media$SizeCallback;

.field private final m_MediumResBitmapDecodeCallback:Lcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;

.field private m_MediumResBitmapDecodeInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

.field private m_PreferredContentUri:Landroid/net/Uri;

.field private final m_RecycledMediaHandles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            "Lcom/oneplus/base/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private m_RecycledMediaSet:Lcom/oneplus/gallery2/media/MediaSet;

.field private m_RecycledMediaUri:Landroid/net/Uri;

.field private m_ReusedBitmapDecodeInfos:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_ScaleFactor:F

.field private m_ShareButton:Landroid/view/View;

.field private m_SnackbarHandle:Lcom/oneplus/base/Handle;

.field private m_SnackbarVisibleHeightChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;

.field private m_ThumbManagerActivateHandle:Lcom/oneplus/base/Handle;

.field private m_ToolbarVisibilityState:Lcom/oneplus/gallery2/FilmstripFragment$ViewVisibilityState;

.field private m_WindowFocusChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x2

    const/4 v6, 0x0

    .line 93
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "CurrentMediaIndex"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/gallery2/FilmstripFragment;

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_CURRENT_MEDIA_INDEX:Lcom/oneplus/base/PropertyKey;

    .line 97
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "FilmstripState"

    const-class v2, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;

    const-class v3, Lcom/oneplus/gallery2/FilmstripFragment;

    sget-object v5, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;->BACKGROUND:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_FILMSTRIP_STATE:Lcom/oneplus/base/PropertyKey;

    .line 101
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsReadOnly"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery2/FilmstripFragment;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_IS_READ_ONLY:Lcom/oneplus/base/PropertyKey;

    .line 105
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "MediaList"

    const-class v2, Lcom/oneplus/gallery2/media/MediaList;

    const-class v3, Lcom/oneplus/gallery2/FilmstripFragment;

    move v4, v6

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    .line 109
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "MediaSet"

    const-class v2, Lcom/oneplus/gallery2/media/MediaSet;

    const-class v3, Lcom/oneplus/gallery2/FilmstripFragment;

    move v4, v6

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    .line 113
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "BurstViewerButtonClick"

    const-class v2, Lcom/oneplus/base/EventArgs;

    const-class v3, Lcom/oneplus/gallery2/FilmstripFragment;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery2/FilmstripFragment;->EVENT_BURST_VIEWER_BUTTON_CLICK:Lcom/oneplus/base/EventKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x50

    .line 953
    invoke-direct {p0}, Lcom/oneplus/gallery2/GalleryFragment;-><init>()V

    .line 150
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CurrentMediaIndex:I

    .line 153
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/16 v1, 0xff

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_DummyThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 158
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripItemPool:Ljava/util/Queue;

    .line 159
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripItems:Ljava/util/Set;

    .line 161
    sget-object v0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;->BACKGROUND:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;

    iput-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripState:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsToolbarVisible:Z

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_LowResBitmapDecodeInfos:Ljava/util/List;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediumResBitmapDecodeInfos:Ljava/util/List;

    .line 181
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_RecycledMediaHandles:Ljava/util/Map;

    .line 184
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ReusedBitmapDecodeInfos:Ljava/util/Queue;

    .line 190
    sget-object v0, Lcom/oneplus/gallery2/FilmstripFragment$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery2/FilmstripFragment$ViewVisibilityState;

    iput-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ToolbarVisibilityState:Lcom/oneplus/gallery2/FilmstripFragment$ViewVisibilityState;

    .line 194
    new-instance v0, Lcom/oneplus/gallery2/FilmstripFragment$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/FilmstripFragment$1;-><init>(Lcom/oneplus/gallery2/FilmstripFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    .line 217
    new-instance v0, Lcom/oneplus/gallery2/FilmstripFragment$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/FilmstripFragment$2;-><init>(Lcom/oneplus/gallery2/FilmstripFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripAdapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    .line 240
    new-instance v0, Lcom/oneplus/gallery2/FilmstripFragment$3;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/FilmstripFragment$3;-><init>(Lcom/oneplus/gallery2/FilmstripFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsDeletingMediaCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 248
    new-instance v0, Lcom/oneplus/gallery2/FilmstripFragment$4;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/FilmstripFragment$4;-><init>(Lcom/oneplus/gallery2/FilmstripFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsSharingMediaCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 259
    new-instance v0, Lcom/oneplus/gallery2/FilmstripFragment$5;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/FilmstripFragment$5;-><init>(Lcom/oneplus/gallery2/FilmstripFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsNavigationBarVisibleCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 270
    new-instance v0, Lcom/oneplus/gallery2/FilmstripFragment$6;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/FilmstripFragment$6;-><init>(Lcom/oneplus/gallery2/FilmstripFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_SnackbarVisibleHeightChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 278
    new-instance v0, Lcom/oneplus/gallery2/FilmstripFragment$7;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/FilmstripFragment$7;-><init>(Lcom/oneplus/gallery2/FilmstripFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_WindowFocusChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 289
    new-instance v0, Lcom/oneplus/gallery2/FilmstripFragment$8;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/FilmstripFragment$8;-><init>(Lcom/oneplus/gallery2/FilmstripFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaAddedEventHandler:Lcom/oneplus/base/EventHandler;

    .line 297
    new-instance v0, Lcom/oneplus/gallery2/FilmstripFragment$9;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/FilmstripFragment$9;-><init>(Lcom/oneplus/gallery2/FilmstripFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaRemovedEventHandler:Lcom/oneplus/base/EventHandler;

    .line 305
    new-instance v0, Lcom/oneplus/gallery2/FilmstripFragment$10;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/FilmstripFragment$10;-><init>(Lcom/oneplus/gallery2/FilmstripFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaRemovingEventHandler:Lcom/oneplus/base/EventHandler;

    .line 316
    new-instance v0, Lcom/oneplus/gallery2/FilmstripFragment$11;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/FilmstripFragment$11;-><init>(Lcom/oneplus/gallery2/FilmstripFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaChangeCallback:Lcom/oneplus/gallery2/media/MediaChangeCallback;

    .line 369
    new-instance v0, Lcom/oneplus/gallery2/FilmstripFragment$12;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/FilmstripFragment$12;-><init>(Lcom/oneplus/gallery2/FilmstripFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaSizeCallback:Lcom/oneplus/gallery2/media/Media$SizeCallback;

    .line 380
    new-instance v0, Lcom/oneplus/gallery2/FilmstripFragment$13;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/FilmstripFragment$13;-><init>(Lcom/oneplus/gallery2/FilmstripFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_LowResBitmapDecodeCallback:Lcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;

    .line 388
    new-instance v0, Lcom/oneplus/gallery2/FilmstripFragment$14;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/FilmstripFragment$14;-><init>(Lcom/oneplus/gallery2/FilmstripFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediumResBitmapDecodeCallback:Lcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;

    .line 955
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Filmstrip background thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_AsyncHandlerThread:Landroid/os/HandlerThread;

    .line 956
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_AsyncHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 957
    new-instance v0, Lcom/oneplus/gallery2/FilmstripFragment$15;

    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_AsyncHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/gallery2/FilmstripFragment$15;-><init>(Lcom/oneplus/gallery2/FilmstripFragment;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_AsyncHandler:Landroid/os/Handler;

    .line 965
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery2/FilmstripFragment;Ljava/lang/Integer;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;
    .param p1, "x1"    # Ljava/lang/Integer;
    .param p2, "x2"    # Z

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/FilmstripFragment;->setCurrentMediaIndexProp(Ljava/lang/Integer;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/oneplus/gallery2/FilmstripFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->onScrollStarted()V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/gallery2/FilmstripFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/FilmstripFragment;->onWindowFocusChanged(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/oneplus/gallery2/FilmstripFragment;III)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery2/FilmstripFragment;->onMediaListUpdated(III)V

    return-void
.end method

.method static synthetic access$1200(Lcom/oneplus/gallery2/FilmstripFragment;II)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/FilmstripFragment;->onMediaRemoving(II)V

    return-void
.end method

.method static synthetic access$1300(Lcom/oneplus/gallery2/FilmstripFragment;)Lcom/oneplus/gallery2/media/MediaList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/oneplus/gallery2/FilmstripFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/oneplus/gallery2/FilmstripFragment;Landroid/net/Uri;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/FilmstripFragment;->searchMediaListIndex(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/oneplus/gallery2/FilmstripFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/oneplus/gallery2/FilmstripFragment;I)Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;
    .param p1, "x1"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/FilmstripFragment;->findFilmstripItemFromPosition(I)Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/oneplus/gallery2/FilmstripFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/oneplus/gallery2/FilmstripFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;
    .param p1, "x1"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/FilmstripFragment;->checkImageDecoding(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/gallery2/FilmstripFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->onScrollStopped()V

    return-void
.end method

.method static synthetic access$2000(Lcom/oneplus/gallery2/FilmstripFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->updateCollectButtonSelection()V

    return-void
.end method

.method static synthetic access$2100(Lcom/oneplus/gallery2/FilmstripFragment;Lcom/oneplus/gallery2/media/Media;II)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery2/FilmstripFragment;->onMediaSizeObtained(Lcom/oneplus/gallery2/media/Media;II)V

    return-void
.end method

.method static synthetic access$2200(Lcom/oneplus/gallery2/FilmstripFragment;Lcom/oneplus/base/Handle;Lcom/oneplus/gallery2/media/Media;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;
    .param p2, "x2"    # Lcom/oneplus/gallery2/media/Media;
    .param p3, "x3"    # Landroid/graphics/Bitmap;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery2/FilmstripFragment;->onLowResImageDecoded(Lcom/oneplus/base/Handle;Lcom/oneplus/gallery2/media/Media;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/oneplus/gallery2/FilmstripFragment;Lcom/oneplus/base/Handle;Lcom/oneplus/gallery2/media/Media;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;
    .param p2, "x2"    # Lcom/oneplus/gallery2/media/Media;
    .param p3, "x3"    # Landroid/graphics/Bitmap;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery2/FilmstripFragment;->onMediumResImageDecoded(Lcom/oneplus/base/Handle;Lcom/oneplus/gallery2/media/Media;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/oneplus/gallery2/FilmstripFragment;Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/FilmstripFragment;->onScaleImageGestureEnd(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/oneplus/gallery2/FilmstripFragment;Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    .param p2, "x2"    # Landroid/view/MotionEvent;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/FilmstripFragment;->onScaleImageGestureStart(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/oneplus/gallery2/FilmstripFragment;Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    .param p2, "x2"    # Landroid/view/MotionEvent;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/FilmstripFragment;->onScaleImageGestureDoubleTap(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/oneplus/gallery2/FilmstripFragment;Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    .param p2, "x2"    # Landroid/view/MotionEvent;
    .param p3, "x3"    # Landroid/view/MotionEvent;
    .param p4, "x4"    # F
    .param p5, "x5"    # F

    .prologue
    .line 88
    invoke-direct/range {p0 .. p5}, Lcom/oneplus/gallery2/FilmstripFragment;->onScaleImageGestureFling(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/oneplus/gallery2/FilmstripFragment;Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;FFF)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # F

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/gallery2/FilmstripFragment;->onScaleImageGestureScale(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;FFF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/oneplus/gallery2/FilmstripFragment;Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    .param p2, "x2"    # Landroid/view/MotionEvent;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/FilmstripFragment;->onScaleImageGestureSingleTapUp(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/oneplus/gallery2/FilmstripFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->onGetCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/oneplus/gallery2/FilmstripFragment;Lcom/oneplus/widget/ScaleImageView;IIII)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;
    .param p1, "x1"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 88
    invoke-direct/range {p0 .. p5}, Lcom/oneplus/gallery2/FilmstripFragment;->onScaleImageBoundsChanged(Lcom/oneplus/widget/ScaleImageView;IIII)V

    return-void
.end method

.method static synthetic access$3100(Lcom/oneplus/gallery2/FilmstripFragment;Lcom/oneplus/widget/ScaleImageView;Lcom/oneplus/widget/ScaleImageView$BoundsType;Lcom/oneplus/widget/ScaleImageView$BoundsType;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;
    .param p1, "x1"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "x2"    # Lcom/oneplus/widget/ScaleImageView$BoundsType;
    .param p3, "x3"    # Lcom/oneplus/widget/ScaleImageView$BoundsType;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery2/FilmstripFragment;->onScaleImageBoundsTypeChanged(Lcom/oneplus/widget/ScaleImageView;Lcom/oneplus/widget/ScaleImageView$BoundsType;Lcom/oneplus/widget/ScaleImageView$BoundsType;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/oneplus/gallery2/FilmstripFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->showHideToolbar()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/oneplus/gallery2/FilmstripFragment;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripItems:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/oneplus/gallery2/FilmstripFragment;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;
    .param p1, "x1"    # Lcom/oneplus/base/EventKey;
    .param p2, "x2"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/FilmstripFragment;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/oneplus/gallery2/FilmstripFragment;Lcom/oneplus/gallery2/media/Media;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/FilmstripFragment;->playVideo(Lcom/oneplus/gallery2/media/Media;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/oneplus/gallery2/FilmstripFragment;)Landroid/util/Size;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FakeVideoSize:Landroid/util/Size;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/oneplus/gallery2/FilmstripFragment;)Landroid/util/Size;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FakePhotoSize:Landroid/util/Size;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/oneplus/gallery2/FilmstripFragment;)Lcom/oneplus/gallery2/media/Media$SizeCallback;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaSizeCallback:Lcom/oneplus/gallery2/media/Media$SizeCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/gallery2/FilmstripFragment;ILandroid/view/ViewGroup;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/ViewGroup;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/FilmstripFragment;->onPrepareItemView(ILandroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/oneplus/gallery2/FilmstripFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/oneplus/gallery2/FilmstripFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsToolbarVisible:Z

    return v0
.end method

.method static synthetic access$4200(Lcom/oneplus/gallery2/FilmstripFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/oneplus/gallery2/FilmstripFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;

    .prologue
    .line 88
    iget v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ActionBarHeight:I

    return v0
.end method

.method static synthetic access$4400(Lcom/oneplus/gallery2/FilmstripFragment;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/FilmstripFragment;->handleAsyncMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/oneplus/gallery2/FilmstripFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/oneplus/gallery2/FilmstripFragment;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_SnackbarHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/oneplus/gallery2/FilmstripFragment;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_SnackbarHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/oneplus/gallery2/FilmstripFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->restoreMediaFromRecycler()V

    return-void
.end method

.method static synthetic access$4900(Lcom/oneplus/gallery2/FilmstripFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsFilmstripScrolling:Z

    return v0
.end method

.method static synthetic access$500(Lcom/oneplus/gallery2/FilmstripFragment;ILandroid/view/ViewGroup;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/ViewGroup;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/FilmstripFragment;->onReleaseItemView(ILandroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/oneplus/gallery2/FilmstripFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;

    .prologue
    .line 88
    iget v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CurrentMediaIndex:I

    return v0
.end method

.method static synthetic access$5100(Lcom/oneplus/gallery2/FilmstripFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;
    .param p1, "x1"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/FilmstripFragment;->setWallpaper(I)V

    return-void
.end method

.method static synthetic access$5200(Lcom/oneplus/gallery2/FilmstripFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;
    .param p1, "x1"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/FilmstripFragment;->showPageDetails(I)V

    return-void
.end method

.method static synthetic access$5300(Lcom/oneplus/gallery2/FilmstripFragment;)Lcom/oneplus/gallery2/media/Media;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->getCurrentMedia()Lcom/oneplus/gallery2/media/Media;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5400(Lcom/oneplus/gallery2/FilmstripFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/oneplus/gallery2/FilmstripFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->closeFragment()V

    return-void
.end method

.method static synthetic access$5600(Lcom/oneplus/gallery2/FilmstripFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;
    .param p1, "x1"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/FilmstripFragment;->sharePage(I)V

    return-void
.end method

.method static synthetic access$5700(Lcom/oneplus/gallery2/FilmstripFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CollectButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/oneplus/gallery2/FilmstripFragment;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/FilmstripFragment;->collectPage(IZ)V

    return-void
.end method

.method static synthetic access$5900(Lcom/oneplus/gallery2/FilmstripFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;
    .param p1, "x1"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/FilmstripFragment;->editorPage(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/gallery2/FilmstripFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->deleteMediaFromRecycler()V

    return-void
.end method

.method static synthetic access$6000(Lcom/oneplus/gallery2/FilmstripFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;
    .param p1, "x1"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/FilmstripFragment;->deletePage(I)V

    return-void
.end method

.method static synthetic access$6402(Lcom/oneplus/gallery2/FilmstripFragment;Lcom/oneplus/gallery2/MediaDetailsDialog;)Lcom/oneplus/gallery2/MediaDetailsDialog;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery2/MediaDetailsDialog;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaDetailsDialog:Lcom/oneplus/gallery2/MediaDetailsDialog;

    return-object p1
.end method

.method static synthetic access$6500(Lcom/oneplus/gallery2/FilmstripFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6602(Lcom/oneplus/gallery2/FilmstripFragment;Lcom/oneplus/gallery2/FilmstripFragment$ViewVisibilityState;)Lcom/oneplus/gallery2/FilmstripFragment$ViewVisibilityState;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery2/FilmstripFragment$ViewVisibilityState;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ToolbarVisibilityState:Lcom/oneplus/gallery2/FilmstripFragment$ViewVisibilityState;

    return-object p1
.end method

.method static synthetic access$6700(Lcom/oneplus/gallery2/FilmstripFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_HeaderContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/oneplus/gallery2/FilmstripFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FooterContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/gallery2/FilmstripFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->cancelHideToolbar()V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/gallery2/FilmstripFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->hideToolbarDelay()V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/gallery2/FilmstripFragment;F)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/FilmstripFragment;
    .param p1, "x1"    # F

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/FilmstripFragment;->onSnackbarVisibleHeightChanged(F)V

    return-void
.end method

.method private cancelDecodingHighResolutionImage()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 971
    iget-object v4, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    if-eqz v4, :cond_3

    .line 974
    const/4 v1, 0x0

    .line 975
    .local v1, "filmstripItem":Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    iget-object v4, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripItems:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    .line 977
    .local v0, "candItem":Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    iget-object v4, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->getMedia()Lcom/oneplus/gallery2/media/Media;

    move-result-object v5

    invoke-interface {v5}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->isSameSource(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->getMedia()Lcom/oneplus/gallery2/media/Media;

    move-result-object v5

    invoke-interface {v5}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->isSameSource(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 980
    :cond_1
    iget-object v4, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v5, "cancelDecodingHighResolutionImage() - Media : "

    invoke-virtual {v0}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->getMedia()Lcom/oneplus/gallery2/media/Media;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 981
    move-object v1, v0

    .line 987
    .end local v0    # "candItem":Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    :cond_2
    iget-object v4, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v5, "cancelDecodingHighResolutionImage()"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    iget-object v4, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-virtual {v4, v7, v7}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->setVisible(ZZ)Z

    .line 989
    iget-object v4, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-virtual {v4}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->release()V

    .line 990
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    .line 993
    if-eqz v1, :cond_3

    .line 995
    invoke-virtual {v1}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->getMediumResThumb()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 996
    .local v3, "thumb":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_4

    .line 998
    sget-object v4, Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;->THUMB_DECODED:Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;

    invoke-virtual {v1, v4}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->setImageDecodeState(Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;)V

    .line 999
    invoke-virtual {v1, v3}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->setMediumResThumb(Landroid/graphics/Bitmap;)V

    .line 1012
    .end local v1    # "filmstripItem":Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "thumb":Landroid/graphics/Bitmap;
    :cond_3
    :goto_0
    return-void

    .line 1003
    .restart local v1    # "filmstripItem":Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "thumb":Landroid/graphics/Bitmap;
    :cond_4
    invoke-virtual {v1}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->getLowResThumb()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1004
    if-eqz v3, :cond_3

    .line 1006
    sget-object v4, Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;->SMALL_THUMB_DECODED:Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;

    invoke-virtual {v1, v4}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->setImageDecodeState(Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;)V

    .line 1007
    invoke-virtual {v1, v3}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->setLowResThumb(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private cancelDecodingImages()V
    .locals 4

    .prologue
    .line 1018
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v3, "cancelDecodingImages()"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_LowResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1022
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_LowResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;

    .line 1023
    .local v1, "info":Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;
    iget-object v2, v1, Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;->decodeHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, v1, Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;->decodeHandle:Lcom/oneplus/base/Handle;

    .line 1024
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ReusedBitmapDecodeInfos:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1020
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1026
    .end local v1    # "info":Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediumResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 1028
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediumResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;

    .line 1029
    .restart local v1    # "info":Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;
    iget-object v2, v1, Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;->decodeHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, v1, Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;->decodeHandle:Lcom/oneplus/base/Handle;

    .line 1030
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ReusedBitmapDecodeInfos:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1026
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1032
    .end local v1    # "info":Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->cancelDecodingHighResolutionImage()V

    .line 1033
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_LowResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1034
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ReusedBitmapDecodeInfos:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 1035
    return-void
.end method

.method private cancelDecodingLowResolutionImage(Lcom/oneplus/gallery2/media/Media;)V
    .locals 7
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 1041
    iget-object v4, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_LowResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1043
    iget-object v4, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_LowResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 1045
    iget-object v4, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_LowResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;

    .line 1046
    .local v3, "info":Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;
    iget-object v1, v3, Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;->filePath:Ljava/lang/String;

    .line 1047
    .local v1, "filePath":Ljava/lang/String;
    iget-object v0, v3, Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;->contentUri:Landroid/net/Uri;

    .line 1048
    .local v0, "contentUri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1051
    :cond_1
    iget-object v4, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v5, "cancelDecodingLowResolutionImage() - Cancel decoding low-resolution bitmap : "

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1052
    iget-object v4, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_LowResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1053
    iget-object v4, v3, Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;->decodeHandle:Lcom/oneplus/base/Handle;

    invoke-static {v4}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v4

    iput-object v4, v3, Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;->decodeHandle:Lcom/oneplus/base/Handle;

    .line 1054
    iget-object v4, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ReusedBitmapDecodeInfos:Ljava/util/Queue;

    invoke-interface {v4, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1059
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "info":Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;
    :cond_2
    return-void

    .line 1043
    .restart local v0    # "contentUri":Landroid/net/Uri;
    .restart local v1    # "filePath":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "info":Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method private cancelDecodingMediumResolutionImage(Lcom/oneplus/gallery2/media/Media;)V
    .locals 7
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 1065
    iget-object v4, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediumResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1067
    iget-object v4, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediumResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 1069
    iget-object v4, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediumResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;

    .line 1070
    .local v3, "info":Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;
    iget-object v1, v3, Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;->filePath:Ljava/lang/String;

    .line 1071
    .local v1, "filePath":Ljava/lang/String;
    iget-object v0, v3, Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;->contentUri:Landroid/net/Uri;

    .line 1072
    .local v0, "contentUri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1075
    :cond_1
    iget-object v4, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v5, "cancelDecodingMediumResolutionImage() - Cancel decoding medium-resolution bitmap : "

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1076
    iget-object v4, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediumResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1077
    iget-object v4, v3, Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;->decodeHandle:Lcom/oneplus/base/Handle;

    invoke-static {v4}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v4

    iput-object v4, v3, Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;->decodeHandle:Lcom/oneplus/base/Handle;

    .line 1078
    iget-object v4, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ReusedBitmapDecodeInfos:Ljava/util/Queue;

    invoke-interface {v4, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1083
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "info":Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;
    :cond_2
    return-void

    .line 1067
    .restart local v0    # "contentUri":Landroid/net/Uri;
    .restart local v1    # "filePath":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "info":Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method private cancelHideToolbar()V
    .locals 2

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v1, "cancelHideToolbar()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    const/16 v0, 0x2711

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 1091
    return-void
.end method

.method private checkAnimationState(Lcom/oneplus/gallery2/media/Media;)V
    .locals 14
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1097
    const/4 v5, 0x0

    .line 1098
    .local v5, "isAnimation":Z
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v4

    .line 1099
    .local v4, "filePath":Ljava/lang/String;
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 1100
    .local v0, "contentUri":Landroid/net/Uri;
    if-nez v4, :cond_0

    if-eqz v0, :cond_a

    .line 1102
    :cond_0
    if-eqz v4, :cond_4

    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .local v6, "stream":Ljava/io/InputStream;
    :goto_0
    const/4 v11, 0x0

    .line 1104
    :try_start_1
    invoke-static {v6}, Lcom/oneplus/media/ImageUtils;->isGifHeader(Ljava/io/InputStream;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v5

    .line 1105
    if-eqz v5, :cond_2

    .line 1107
    const/4 v1, 0x0

    .line 1110
    .local v1, "decoder":Lcom/oneplus/util/GifDecoder;
    :try_start_2
    new-instance v2, Lcom/oneplus/util/GifDecoder;

    invoke-direct {v2}, Lcom/oneplus/util/GifDecoder;-><init>()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1111
    .end local v1    # "decoder":Lcom/oneplus/util/GifDecoder;
    .local v2, "decoder":Lcom/oneplus/util/GifDecoder;
    :try_start_3
    invoke-virtual {v2, v6}, Lcom/oneplus/util/GifDecoder;->read(Ljava/io/InputStream;)V

    .line 1112
    invoke-virtual {v2}, Lcom/oneplus/util/GifDecoder;->frameCount()I

    move-result v10

    if-le v10, v8, :cond_5

    move v5, v8

    .line 1113
    :goto_1
    if-nez v5, :cond_1

    .line 1114
    iget-object v10, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v12, "checkAnimationState() - GIF without animation"

    invoke-static {v10, v12}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1123
    :cond_1
    if-eqz v2, :cond_2

    .line 1124
    :try_start_4
    invoke-virtual {v2}, Lcom/oneplus/util/GifDecoder;->release()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1127
    .end local v2    # "decoder":Lcom/oneplus/util/GifDecoder;
    :cond_2
    :goto_2
    if-eqz v6, :cond_3

    if-eqz v11, :cond_8

    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 1135
    .end local v6    # "stream":Ljava/io/InputStream;
    :cond_3
    :goto_3
    const/16 v10, 0x2725

    if-eqz v5, :cond_b

    :goto_4
    invoke-static {p0, v10, v8, v9, p1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 1136
    return-void

    .line 1102
    :cond_4
    :try_start_6
    invoke-static {}, Lcom/oneplus/gallery2/GalleryApplication;->current()Lcom/oneplus/gallery2/GalleryApplication;

    move-result-object v10

    invoke-virtual {v10}, Lcom/oneplus/gallery2/GalleryApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    move-result-object v6

    goto :goto_0

    .restart local v2    # "decoder":Lcom/oneplus/util/GifDecoder;
    .restart local v6    # "stream":Ljava/io/InputStream;
    :cond_5
    move v5, v9

    .line 1112
    goto :goto_1

    .line 1116
    .end local v2    # "decoder":Lcom/oneplus/util/GifDecoder;
    .restart local v1    # "decoder":Lcom/oneplus/util/GifDecoder;
    :catch_0
    move-exception v3

    .line 1118
    .local v3, "ex":Ljava/lang/Throwable;
    :goto_5
    :try_start_7
    iget-object v10, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v12, "checkAnimationState() - Fail to check GIF duration"

    invoke-static {v10, v12, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1119
    const/4 v5, 0x0

    .line 1123
    if-eqz v1, :cond_2

    .line 1124
    :try_start_8
    invoke-virtual {v1}, Lcom/oneplus/util/GifDecoder;->release()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_2

    .line 1102
    .end local v1    # "decoder":Lcom/oneplus/util/GifDecoder;
    .end local v3    # "ex":Ljava/lang/Throwable;
    :catch_1
    move-exception v10

    :try_start_9
    throw v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1127
    :catchall_0
    move-exception v11

    move-object v13, v11

    move-object v11, v10

    move-object v10, v13

    :goto_6
    if-eqz v6, :cond_6

    if-eqz v11, :cond_9

    :try_start_a
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4

    :cond_6
    :goto_7
    :try_start_b
    throw v10
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2

    .line 1128
    .end local v6    # "stream":Ljava/io/InputStream;
    :catch_2
    move-exception v3

    .line 1130
    .restart local v3    # "ex":Ljava/lang/Throwable;
    iget-object v10, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "checkAnimationState() - Fail to check "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 1123
    .end local v3    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "decoder":Lcom/oneplus/util/GifDecoder;
    .restart local v6    # "stream":Ljava/io/InputStream;
    :catchall_1
    move-exception v10

    :goto_8
    if-eqz v1, :cond_7

    .line 1124
    :try_start_c
    invoke-virtual {v1}, Lcom/oneplus/util/GifDecoder;->release()V

    :cond_7
    throw v10
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1127
    .end local v1    # "decoder":Lcom/oneplus/util/GifDecoder;
    :catchall_2
    move-exception v10

    goto :goto_6

    :catch_3
    move-exception v7

    .local v7, "x2":Ljava/lang/Throwable;
    :try_start_d
    invoke-virtual {v11, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v7    # "x2":Ljava/lang/Throwable;
    :cond_8
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    goto :goto_3

    :catch_4
    move-exception v7

    .restart local v7    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v11, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    .end local v7    # "x2":Ljava/lang/Throwable;
    :cond_9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_7

    .line 1134
    .end local v6    # "stream":Ljava/io/InputStream;
    :cond_a
    iget-object v10, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v11, "checkAnimationState() - No file path or content URI"

    invoke-static {v10, v11}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    move v8, v9

    .line 1135
    goto :goto_4

    .line 1123
    .restart local v2    # "decoder":Lcom/oneplus/util/GifDecoder;
    .restart local v6    # "stream":Ljava/io/InputStream;
    :catchall_3
    move-exception v10

    move-object v1, v2

    .end local v2    # "decoder":Lcom/oneplus/util/GifDecoder;
    .restart local v1    # "decoder":Lcom/oneplus/util/GifDecoder;
    goto :goto_8

    .line 1116
    .end local v1    # "decoder":Lcom/oneplus/util/GifDecoder;
    .restart local v2    # "decoder":Lcom/oneplus/util/GifDecoder;
    :catch_5
    move-exception v3

    move-object v1, v2

    .end local v2    # "decoder":Lcom/oneplus/util/GifDecoder;
    .restart local v1    # "decoder":Lcom/oneplus/util/GifDecoder;
    goto :goto_5
.end method

.method private checkImageDecoding(I)V
    .locals 19
    .param p1, "position"    # I

    .prologue
    .line 1143
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-nez v14, :cond_1

    .line 1221
    :cond_0
    return-void

    .line 1145
    :cond_1
    const/4 v4, 0x1

    .line 1146
    .local v4, "decodeImage":Z
    if-ltz p1, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v14}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    move/from16 v0, p1

    if-le v0, v14, :cond_3

    .line 1147
    :cond_2
    const/4 v4, 0x0

    .line 1150
    :cond_3
    move/from16 v2, p1

    .line 1151
    .local v2, "center":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v14}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v14

    add-int/lit8 v9, v14, -0x1

    .line 1152
    .local v9, "maxIndex":I
    add-int/lit8 v13, v2, -0x2

    .line 1153
    .local v13, "preDecodeStart":I
    add-int/lit8 v10, v2, 0x2

    .line 1154
    .local v10, "preDecodeEnd":I
    add-int/lit8 v12, v13, -0x3

    .line 1155
    .local v12, "preDecodeLowStart":I
    add-int/lit8 v11, v10, 0x3

    .line 1156
    .local v11, "preDecodeLowEnd":I
    if-gez v13, :cond_4

    .line 1157
    const/4 v13, 0x0

    .line 1158
    :cond_4
    if-gez v12, :cond_5

    .line 1159
    const/4 v12, 0x0

    .line 1160
    :cond_5
    if-le v10, v9, :cond_6

    .line 1161
    move v10, v9

    .line 1162
    :cond_6
    if-le v11, v9, :cond_7

    .line 1163
    move v11, v9

    .line 1165
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v15, "checkImageDecoding() - Center: "

    const/16 v16, 0x9

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const-string v18, ", start: "

    aput-object v18, v16, v17

    const/16 v17, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x3

    const-string v18, ", end: "

    aput-object v18, v16, v17

    const/16 v17, 0x4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x5

    const-string v18, ", low start: "

    aput-object v18, v16, v17

    const/16 v17, 0x6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x7

    const-string v18, ", low end: "

    aput-object v18, v16, v17

    const/16 v17, 0x8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1168
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery2/FilmstripFragment;->m_LowResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v7, v14, -0x1

    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_d

    .line 1170
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery2/FilmstripFragment;->m_LowResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;

    .line 1171
    .local v5, "decodeInfo":Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;
    iget-object v6, v5, Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;->filePath:Ljava/lang/String;

    .line 1172
    .local v6, "filePath":Ljava/lang/String;
    iget-object v3, v5, Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;->contentUri:Landroid/net/Uri;

    .line 1173
    .local v3, "contentUri":Landroid/net/Uri;
    const/4 v1, 0x1

    .line 1174
    .local v1, "cancel":Z
    move v8, v12

    .local v8, "j":I
    :goto_1
    if-gt v8, v11, :cond_a

    .line 1176
    if-eqz v6, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v14, v8}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v14}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    :cond_8
    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v14, v8}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v14}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 1179
    :cond_9
    const/4 v1, 0x0

    .line 1183
    :cond_a
    if-eqz v1, :cond_b

    .line 1185
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery2/FilmstripFragment;->m_LowResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1186
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ReusedBitmapDecodeInfos:Ljava/util/Queue;

    invoke-interface {v14, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1187
    iget-object v14, v5, Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;->decodeHandle:Lcom/oneplus/base/Handle;

    invoke-static {v14}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v14

    iput-object v14, v5, Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;->decodeHandle:Lcom/oneplus/base/Handle;

    .line 1168
    :cond_b
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 1174
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1190
    .end local v1    # "cancel":Z
    .end local v3    # "contentUri":Landroid/net/Uri;
    .end local v5    # "decodeInfo":Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;
    .end local v6    # "filePath":Ljava/lang/String;
    .end local v8    # "j":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediumResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v7, v14, -0x1

    :goto_2
    if-ltz v7, :cond_13

    .line 1192
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediumResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;

    .line 1193
    .restart local v5    # "decodeInfo":Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;
    iget-object v6, v5, Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;->filePath:Ljava/lang/String;

    .line 1194
    .restart local v6    # "filePath":Ljava/lang/String;
    iget-object v3, v5, Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;->contentUri:Landroid/net/Uri;

    .line 1195
    .restart local v3    # "contentUri":Landroid/net/Uri;
    const/4 v1, 0x1

    .line 1196
    .restart local v1    # "cancel":Z
    move v8, v13

    .restart local v8    # "j":I
    :goto_3
    if-gt v8, v10, :cond_10

    .line 1198
    if-eqz v6, :cond_e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v14, v8}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v14}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_f

    :cond_e
    if-eqz v3, :cond_12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v14, v8}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v14}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 1201
    :cond_f
    const/4 v1, 0x0

    .line 1205
    :cond_10
    if-eqz v1, :cond_11

    .line 1207
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediumResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1208
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ReusedBitmapDecodeInfos:Ljava/util/Queue;

    invoke-interface {v14, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1209
    iget-object v14, v5, Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;->decodeHandle:Lcom/oneplus/base/Handle;

    invoke-static {v14}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v14

    iput-object v14, v5, Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;->decodeHandle:Lcom/oneplus/base/Handle;

    .line 1190
    :cond_11
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 1196
    :cond_12
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1214
    .end local v1    # "cancel":Z
    .end local v3    # "contentUri":Landroid/net/Uri;
    .end local v5    # "decodeInfo":Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;
    .end local v6    # "filePath":Ljava/lang/String;
    .end local v8    # "j":I
    :cond_13
    if-eqz v4, :cond_0

    .line 1216
    move v7, v12

    :goto_4
    if-gt v7, v11, :cond_15

    .line 1217
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v14, v7}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/oneplus/gallery2/media/Media;

    if-ne v7, v2, :cond_14

    const/4 v15, 0x1

    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/oneplus/gallery2/FilmstripFragment;->decodeLowResolutionImage(Lcom/oneplus/gallery2/media/Media;Z)V

    .line 1216
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1217
    :cond_14
    const/4 v15, 0x0

    goto :goto_5

    .line 1218
    :cond_15
    move v7, v13

    :goto_6
    if-gt v7, v10, :cond_0

    .line 1219
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v14, v7}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/oneplus/gallery2/media/Media;

    if-ne v7, v2, :cond_16

    const/4 v15, 0x1

    :goto_7
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/oneplus/gallery2/FilmstripFragment;->decodeMediumResolutionImage(Lcom/oneplus/gallery2/media/Media;Z)V

    .line 1218
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 1219
    :cond_16
    const/4 v15, 0x0

    goto :goto_7
.end method

.method private closeFragment()V
    .locals 1

    .prologue
    .line 1227
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->deleteMediaFromRecycler()V

    .line 1228
    invoke-virtual {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/gallery2/GalleryActivity;->goBack()Z

    .line 1229
    return-void
.end method

.method private collectPage(IZ)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "isCollected"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1235
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_AppTracker:Lcom/oneplus/gallery2/AppTracker;

    const-string v2, "Gallery.SetFavorite"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v5, v3}, Lcom/oneplus/gallery2/AppTracker;->createRecord(Ljava/lang/String;I[Ljava/lang/Object;)Z

    .line 1238
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->hideToolbarDelay()V

    .line 1245
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/FilmstripFragment;->validatePosition(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1252
    :cond_0
    :goto_0
    return-void

    .line 1249
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v1, p1}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    .line 1250
    .local v0, "media":Lcom/oneplus/gallery2/media/Media;
    invoke-interface {v0}, Lcom/oneplus/gallery2/media/Media;->isFavoriteSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1251
    invoke-interface {v0, p2}, Lcom/oneplus/gallery2/media/Media;->setFavorite(Z)Z

    goto :goto_0
.end method

.method private createDrawableForDisplay(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1258
    if-eqz p1, :cond_0

    .line 1260
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1261
    .local v0, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 1264
    .end local v0    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private decodeHighResolutionImage(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;)V
    .locals 6
    .param p1, "filmstripItem"    # Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    .prologue
    .line 1271
    if-nez p1, :cond_0

    .line 1300
    :goto_0
    return-void

    .line 1273
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->getMedia()Lcom/oneplus/gallery2/media/Media;

    move-result-object v0

    .line 1274
    .local v0, "media":Lcom/oneplus/gallery2/media/Media;
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    .line 1276
    invoke-virtual {p1}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->getMediumResThumb()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1277
    .local v1, "thumb":Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 1278
    invoke-virtual {p1}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->getLowResThumb()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1280
    :cond_1
    invoke-interface {v0}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1284
    new-instance v2, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/gallery2/GalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    .line 1298
    .end local v1    # "thumb":Landroid/graphics/Bitmap;
    :cond_2
    :goto_1
    sget-object v2, Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;->LARGE_IMAGE_DECODED:Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;

    invoke-virtual {p1, v2}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->setImageDecodeState(Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;)V

    .line 1299
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-virtual {p1, v2}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1288
    .restart local v1    # "thumb":Landroid/graphics/Bitmap;
    :cond_3
    invoke-interface {v0}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1292
    new-instance v2, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-direct {v2, v3, v4, v1}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    goto :goto_1

    .line 1295
    :cond_4
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v3, "decodeHighResolutionImage() - No file path or content URI to decode"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private decodeLowResolutionImage(Lcom/oneplus/gallery2/media/Media;Z)V
    .locals 9
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "urgent"    # Z

    .prologue
    .line 1307
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v8

    .line 1308
    .local v8, "filePath":Ljava/lang/String;
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    .line 1309
    .local v6, "contentUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_LowResBitmapDecodeInfos:Ljava/util/List;

    invoke-direct {p0, v0, v8}, Lcom/oneplus/gallery2/FilmstripFragment;->findBitmapDecodeInfo(Ljava/util/List;Ljava/lang/String;)Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;

    move-result-object v7

    .line 1310
    .local v7, "decodeInfo":Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;
    if-nez v7, :cond_0

    .line 1311
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_LowResBitmapDecodeInfos:Ljava/util/List;

    invoke-direct {p0, v0, v6}, Lcom/oneplus/gallery2/FilmstripFragment;->findBitmapDecodeInfo(Ljava/util/List;Landroid/net/Uri;)Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;

    move-result-object v7

    .line 1312
    :cond_0
    instance-of v0, p1, Lcom/oneplus/gallery2/media/PhotoMedia;

    if-eqz v0, :cond_4

    if-eqz v7, :cond_1

    if-eqz p2, :cond_4

    .line 1315
    :cond_1
    if-nez v7, :cond_3

    .line 1317
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ReusedBitmapDecodeInfos:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "decodeInfo":Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;
    check-cast v7, Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;

    .line 1318
    .restart local v7    # "decodeInfo":Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;
    if-nez v7, :cond_2

    .line 1319
    new-instance v7, Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;

    .end local v7    # "decodeInfo":Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;
    const/4 v0, 0x0

    invoke-direct {v7, v0}, Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;-><init>(Lcom/oneplus/gallery2/FilmstripFragment$1;)V

    .line 1320
    .restart local v7    # "decodeInfo":Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;
    :cond_2
    iput-object v6, v7, Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;->contentUri:Landroid/net/Uri;

    .line 1321
    iput-object v8, v7, Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;->filePath:Ljava/lang/String;

    .line 1322
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_LowResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1324
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    if-eqz v0, :cond_4

    .line 1325
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    sget-object v2, Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;->SMALL:Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_LowResBitmapDecodeCallback:Lcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->getHandler()Landroid/os/Handler;

    move-result-object v5

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/oneplus/gallery2/media/ThumbnailImageManager;->decodeThumbnailImage(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;ILcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, v7, Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;->decodeHandle:Lcom/oneplus/base/Handle;

    .line 1330
    :cond_4
    return-void
.end method

.method private decodeMediumResolutionImage(Lcom/oneplus/gallery2/media/Media;Z)V
    .locals 9
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "urgent"    # Z

    .prologue
    .line 1337
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v8

    .line 1338
    .local v8, "filePath":Ljava/lang/String;
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    .line 1339
    .local v6, "contentUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediumResBitmapDecodeInfos:Ljava/util/List;

    invoke-direct {p0, v0, v8}, Lcom/oneplus/gallery2/FilmstripFragment;->findBitmapDecodeInfo(Ljava/util/List;Ljava/lang/String;)Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;

    move-result-object v7

    .line 1340
    .local v7, "decodeInfo":Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;
    if-nez v7, :cond_0

    .line 1341
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediumResBitmapDecodeInfos:Ljava/util/List;

    invoke-direct {p0, v0, v6}, Lcom/oneplus/gallery2/FilmstripFragment;->findBitmapDecodeInfo(Ljava/util/List;Landroid/net/Uri;)Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;

    move-result-object v7

    .line 1342
    :cond_0
    if-eqz v7, :cond_1

    if-eqz p2, :cond_4

    .line 1345
    :cond_1
    if-nez v7, :cond_3

    .line 1347
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ReusedBitmapDecodeInfos:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "decodeInfo":Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;
    check-cast v7, Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;

    .line 1348
    .restart local v7    # "decodeInfo":Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;
    if-nez v7, :cond_2

    .line 1349
    new-instance v7, Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;

    .end local v7    # "decodeInfo":Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;
    const/4 v0, 0x0

    invoke-direct {v7, v0}, Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;-><init>(Lcom/oneplus/gallery2/FilmstripFragment$1;)V

    .line 1350
    .restart local v7    # "decodeInfo":Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;
    :cond_2
    iput-object v6, v7, Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;->contentUri:Landroid/net/Uri;

    .line 1351
    iput-object v8, v7, Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;->filePath:Ljava/lang/String;

    .line 1352
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediumResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1354
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    if-eqz v0, :cond_4

    .line 1355
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    sget-object v2, Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;->SCREEN:Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediumResBitmapDecodeCallback:Lcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->getHandler()Landroid/os/Handler;

    move-result-object v5

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/oneplus/gallery2/media/ThumbnailImageManager;->decodeThumbnailImage(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;ILcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, v7, Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;->decodeHandle:Lcom/oneplus/base/Handle;

    .line 1360
    :cond_4
    return-void
.end method

.method private deleteMediaFromRecycler()V
    .locals 1

    .prologue
    .line 1366
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/FilmstripFragment;->deleteMediaFromRecycler(Z)V

    .line 1367
    return-void
.end method

.method private deleteMediaFromRecycler(Z)V
    .locals 5
    .param p1, "closeSnackbar"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1371
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_RecycledMediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_RecycledMediaUri:Landroid/net/Uri;

    if-nez v2, :cond_1

    .line 1387
    :cond_0
    :goto_0
    return-void

    .line 1375
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_RecycledMediaHandles:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    .line 1376
    .local v1, "media":Lcom/oneplus/gallery2/media/Media;
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_RecycledMediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v4, v3}, Lcom/oneplus/gallery2/media/MediaSet;->deleteMedia(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;

    goto :goto_1

    .line 1377
    .end local v1    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_RecycledMediaHandles:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 1380
    iput-object v4, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_RecycledMediaUri:Landroid/net/Uri;

    .line 1381
    iput-object v4, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_RecycledMediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    .line 1384
    invoke-virtual {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x271a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1385
    if-eqz p1, :cond_0

    .line 1386
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_SnackbarHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_SnackbarHandle:Lcom/oneplus/base/Handle;

    goto :goto_0
.end method

.method private deletePage(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 1394
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->hideToolbarDelay()V

    .line 1397
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/FilmstripFragment;->validatePosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->isAttachedToGallery()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1433
    :cond_0
    :goto_0
    return-void

    .line 1400
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v2, "deletePage() - Pos: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1402
    sget-object v1, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/FilmstripFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/oneplus/base/SnackBarHost;

    if-nez v1, :cond_3

    .line 1405
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v1, p1}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    .line 1406
    .local v0, "media":Lcom/oneplus/gallery2/media/Media;
    invoke-virtual {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v2

    sget-object v1, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/FilmstripFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/MediaSet;

    new-instance v3, Lcom/oneplus/gallery2/FilmstripFragment$16;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery2/FilmstripFragment$16;-><init>(Lcom/oneplus/gallery2/FilmstripFragment;)V

    invoke-virtual {v2, v1, v0, v3}, Lcom/oneplus/gallery2/Gallery;->deleteMedia(Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;)Z

    .line 1432
    .end local v0    # "media":Lcom/oneplus/gallery2/media/Media;
    :goto_1
    sget-object v1, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;

    invoke-direct {p0, v1}, Lcom/oneplus/gallery2/FilmstripFragment;->setFilmstripState(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;)V

    goto :goto_0

    .line 1420
    :cond_3
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/oneplus/gallery2/FilmstripFragment;->deleteMediaFromRecycler(Z)V

    .line 1423
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v1, p1}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v1}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_RecycledMediaUri:Landroid/net/Uri;

    .line 1425
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v2, "deletePage() - Recycled media Uri: "

    iget-object v3, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_RecycledMediaUri:Landroid/net/Uri;

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1428
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/FilmstripFragment;->movePageToRecycler(I)V

    goto :goto_1
.end method

.method private editorPage(I)V
    .locals 9
    .param p1, "position"    # I

    .prologue
    const/4 v8, 0x0

    .line 1439
    iget-object v4, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_AppTracker:Lcom/oneplus/gallery2/AppTracker;

    const-string v5, "Gallery.EditPhoto"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-interface {v4, v5, v8, v6}, Lcom/oneplus/gallery2/AppTracker;->createRecord(Ljava/lang/String;I[Ljava/lang/Object;)Z

    .line 1441
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->hideToolbarDelay()V

    .line 1448
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/FilmstripFragment;->validatePosition(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1465
    :goto_0
    return-void

    .line 1452
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v1

    .line 1453
    .local v1, "gallery":Lcom/oneplus/gallery2/Gallery;
    iget-object v4, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v4, p1}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/Media;

    .line 1454
    .local v2, "media":Lcom/oneplus/gallery2/media/Media;
    sget-object v4, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/gallery2/FilmstripFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/media/MediaSet;

    .line 1455
    .local v3, "mediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.EDIT"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1456
    .local v0, "editIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/gallery2/GalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/oneplus/gallery2/PhotoEditorActivity;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1457
    invoke-interface {v2}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    const-string v5, "image/*"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1458
    if-eqz v1, :cond_1

    .line 1459
    const-string v4, "com.oneplus.gallery.GalleryActivity.extra.SHARED_GALLERY_ID"

    invoke-virtual {v1}, Lcom/oneplus/gallery2/Gallery;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1460
    :cond_1
    const-string v4, "extraCreateModifiedThumb"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1461
    instance-of v4, v3, Lcom/oneplus/gallery2/media/AlbumMediaSet;

    if-eqz v4, :cond_2

    .line 1462
    const-string v4, "outputAlbumId"

    check-cast v3, Lcom/oneplus/gallery2/media/AlbumMediaSet;

    .end local v3    # "mediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    invoke-virtual {v3}, Lcom/oneplus/gallery2/media/AlbumMediaSet;->getAlbumId()J

    move-result-wide v6

    invoke-virtual {v0, v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1463
    :cond_2
    const/16 v4, 0x67

    invoke-virtual {p0, v0, v4}, Lcom/oneplus/gallery2/FilmstripFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1464
    invoke-virtual {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v8, v8}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method private findBitmapDecodeInfo(Ljava/util/List;Landroid/net/Uri;)Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;
    .locals 4
    .param p2, "contentUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;",
            ">;",
            "Landroid/net/Uri;",
            ")",
            "Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;>;"
    const/4 v2, 0x0

    .line 1486
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move-object v1, v2

    .line 1494
    :cond_1
    :goto_0
    return-object v1

    .line 1488
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 1490
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;

    .line 1491
    .local v1, "info":Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;
    iget-object v3, v1, Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;->contentUri:Landroid/net/Uri;

    invoke-virtual {p2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1488
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v1    # "info":Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;
    :cond_3
    move-object v1, v2

    .line 1494
    goto :goto_0
.end method

.method private findBitmapDecodeInfo(Ljava/util/List;Ljava/lang/String;)Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;
    .locals 4
    .param p2, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;>;"
    const/4 v2, 0x0

    .line 1471
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move-object v1, v2

    .line 1479
    :cond_1
    :goto_0
    return-object v1

    .line 1473
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 1475
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;

    .line 1476
    .local v1, "info":Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;
    iget-object v3, v1, Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;->filePath:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1473
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v1    # "info":Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;
    :cond_3
    move-object v1, v2

    .line 1479
    goto :goto_0
.end method

.method private findFilmstripItemFromPosition(I)Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1501
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripItems:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    .line 1503
    .local v1, "item":Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    invoke-virtual {v1}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->getPosition()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1506
    .end local v1    # "item":Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCurrentMedia()Lcom/oneplus/gallery2/media/Media;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1528
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-nez v1, :cond_1

    .line 1532
    :cond_0
    :goto_0
    return-object v0

    .line 1530
    :cond_1
    iget v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CurrentMediaIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CurrentMediaIndex:I

    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_0

    .line 1532
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    iget v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CurrentMediaIndex:I

    invoke-interface {v0, v1}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    goto :goto_0
.end method

.method private handleAsyncMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1539
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1545
    :goto_0
    return-void

    .line 1542
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/FilmstripFragment;->checkAnimationState(Lcom/oneplus/gallery2/media/Media;)V

    goto :goto_0

    .line 1539
    :pswitch_data_0
    .packed-switch 0x2724
        :pswitch_0
    .end packed-switch
.end method

.method private hideToolbarDelay()V
    .locals 8

    .prologue
    .line 1579
    invoke-virtual {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v1

    .line 1580
    .local v1, "galleryActivity":Lcom/oneplus/gallery2/GalleryActivity;
    if-nez v1, :cond_1

    .line 1592
    :cond_0
    :goto_0
    return-void

    .line 1582
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v0

    .line 1583
    .local v0, "gallery":Lcom/oneplus/gallery2/Gallery;
    if-eqz v0, :cond_0

    .line 1585
    sget-object v4, Lcom/oneplus/gallery2/GalleryActivity;->PROP_IS_WINDOW_FOCUSED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v4}, Lcom/oneplus/gallery2/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1586
    .local v3, "isWindowFocused":Z
    sget-object v4, Lcom/oneplus/gallery2/Gallery;->PROP_IS_SHARING_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v4}, Lcom/oneplus/gallery2/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1587
    .local v2, "isSharingMedia":Z
    iget-boolean v4, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsToolbarVisible:Z

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    if-nez v2, :cond_0

    .line 1589
    iget-object v4, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v5, "hideToolbarDelay()"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    const/16 v4, 0x2711

    const/4 v5, 0x1

    const-wide/16 v6, 0xbb8

    invoke-static {p0, v4, v5, v6, v7}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    goto :goto_0
.end method

.method private isActionEditSupported()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1598
    iget-object v4, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsActionEditSupported:Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    .line 1599
    iget-object v3, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsActionEditSupported:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1613
    :goto_0
    return v3

    .line 1600
    :cond_0
    invoke-static {}, Lcom/oneplus/gallery2/GalleryApplication;->current()Lcom/oneplus/gallery2/GalleryApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/gallery2/GalleryApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1601
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    if-nez v2, :cond_1

    .line 1603
    iget-object v4, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v5, "isActionEditSupported() - packageManager is null."

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1606
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.EDIT"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1607
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "image/*"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1608
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1609
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1610
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsActionEditSupported:Ljava/lang/Boolean;

    .line 1613
    :goto_1
    iget-object v3, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsActionEditSupported:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    .line 1612
    :cond_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsActionEditSupported:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method private isHydrogenLauncher()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1620
    iget-object v3, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsHydrogenLauncher:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 1621
    iget-object v3, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsHydrogenLauncher:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1634
    :goto_0
    return v3

    .line 1622
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1623
    .local v0, "intentHome":Landroid/content/Intent;
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1624
    invoke-static {}, Lcom/oneplus/gallery2/GalleryApplication;->current()Lcom/oneplus/gallery2/GalleryApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/gallery2/GalleryApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 1625
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_1

    .line 1627
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1628
    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v4, "isHydrogenLauncher() - Default launcher: "

    invoke-static {v3, v4, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1629
    const-string v3, "com.oneplus.hydrogen.launcher"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1630
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsHydrogenLauncher:Ljava/lang/Boolean;

    .line 1632
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsHydrogenLauncher:Ljava/lang/Boolean;

    if-nez v3, :cond_2

    .line 1633
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsHydrogenLauncher:Ljava/lang/Boolean;

    .line 1634
    :cond_2
    iget-object v3, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsHydrogenLauncher:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0
.end method

.method private isItemSourceSameAsMovieDrawable(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;)Z
    .locals 6
    .param p1, "item"    # Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1641
    if-eqz p1, :cond_0

    iget-object v5, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    if-nez v5, :cond_1

    .line 1664
    :cond_0
    :goto_0
    return v3

    .line 1645
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->getMedia()Lcom/oneplus/gallery2/media/Media;

    move-result-object v2

    .line 1646
    .local v2, "media":Lcom/oneplus/gallery2/media/Media;
    if-nez v2, :cond_2

    .line 1648
    iget-object v4, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v5, "isItemSourceSameAsMovieDrawable() - media is null"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1652
    :cond_2
    invoke-interface {v2}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 1653
    .local v0, "contentUri":Landroid/net/Uri;
    invoke-interface {v2}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 1656
    .local v1, "filePath":Ljava/lang/String;
    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    invoke-virtual {v5, v0}, Lcom/oneplus/drawable/MovieDrawable;->isTheSameSource(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v3, v4

    .line 1658
    goto :goto_0

    .line 1660
    :cond_3
    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    invoke-virtual {v5, v1}, Lcom/oneplus/drawable/MovieDrawable;->isTheSameSource(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    .line 1662
    goto :goto_0
.end method

.method private movePageToRecycler(I)V
    .locals 12
    .param p1, "index"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1671
    iget-object v7, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_AppTracker:Lcom/oneplus/gallery2/AppTracker;

    const-string v8, "Gallery.DeleteMedia"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-interface {v7, v8, v10, v9}, Lcom/oneplus/gallery2/AppTracker;->createRecord(Ljava/lang/String;I[Ljava/lang/Object;)Z

    .line 1674
    iget-object v7, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v7, p1}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/media/Media;

    .line 1675
    .local v3, "media":Lcom/oneplus/gallery2/media/Media;
    if-nez v3, :cond_1

    .line 1711
    :cond_0
    :goto_0
    return-void

    .line 1677
    :cond_1
    sget-object v7, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/gallery2/FilmstripFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/gallery2/media/MediaSet;

    iput-object v7, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_RecycledMediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    .line 1678
    iget-object v7, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_RecycledMediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_RecycledMediaHandles:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1680
    iget-object v7, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_RecycledMediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    const/4 v8, 0x0

    sget v9, Lcom/oneplus/gallery2/media/MediaSet;->FLAG_MOVE_TO_RECYCE_BIN:I

    invoke-interface {v7, v3, v8, v9}, Lcom/oneplus/gallery2/media/MediaSet;->deleteMedia(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v2

    .line 1684
    .local v2, "handle":Lcom/oneplus/base/Handle;
    invoke-virtual {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v1

    .line 1685
    .local v1, "galleryActivity":Lcom/oneplus/gallery2/GalleryActivity;
    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1687
    iget-object v7, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_RecycledMediaHandles:Ljava/util/Map;

    invoke-interface {v7, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1688
    instance-of v7, v1, Lcom/oneplus/base/SnackBarHost;

    if-eqz v7, :cond_2

    move-object v5, v1

    .line 1690
    check-cast v5, Lcom/oneplus/base/SnackBarHost;

    .line 1691
    .local v5, "snackBarHost":Lcom/oneplus/base/SnackBarHost;
    const v7, 0x7f090032

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v1, v7, v8}, Lcom/oneplus/gallery2/GalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1692
    .local v6, "title":Ljava/lang/String;
    const v7, 0x7f090031

    invoke-virtual {v1, v7}, Lcom/oneplus/gallery2/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1693
    .local v0, "action":Ljava/lang/String;
    iget-object v4, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_SnackbarHandle:Lcom/oneplus/base/Handle;

    .line 1694
    .local v4, "oldHandle":Lcom/oneplus/base/Handle;
    new-instance v7, Lcom/oneplus/gallery2/FilmstripFragment$17;

    invoke-direct {v7, p0}, Lcom/oneplus/gallery2/FilmstripFragment$17;-><init>(Lcom/oneplus/gallery2/FilmstripFragment;)V

    invoke-interface {v5, v6, v0, v7}, Lcom/oneplus/base/SnackBarHost;->showSnackbar(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/oneplus/base/Handle;

    move-result-object v7

    iput-object v7, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_SnackbarHandle:Lcom/oneplus/base/Handle;

    .line 1703
    invoke-static {v4}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 1710
    .end local v0    # "action":Ljava/lang/String;
    .end local v4    # "oldHandle":Lcom/oneplus/base/Handle;
    .end local v5    # "snackBarHost":Lcom/oneplus/base/SnackBarHost;
    .end local v6    # "title":Ljava/lang/String;
    :cond_2
    :goto_1
    const/16 v7, 0x271a

    const-wide/16 v8, 0x2710

    invoke-static {p0, v7, v11, v8, v9}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    goto :goto_0

    .line 1707
    :cond_3
    iget-object v7, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "movePageToRecycler() - Cannot remove media to recycler, index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onAnimationStateChecked(Lcom/oneplus/gallery2/media/Media;Z)V
    .locals 6
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "isAnimation"    # Z

    .prologue
    .line 1813
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CurrentMedia:Lcom/oneplus/gallery2/media/Media;

    if-eq v2, p1, :cond_1

    .line 1832
    :cond_0
    :goto_0
    return-void

    .line 1816
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v3, "onAnimationStateChecked() - Media : "

    const-string v4, ", is animation : "

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v2, v3, p1, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1819
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsCurrentMediaAnimation:Ljava/lang/Boolean;

    .line 1820
    if-eqz p2, :cond_0

    iget-boolean v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsFilmstripScrolling:Z

    if-nez v2, :cond_0

    .line 1822
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripItems:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    .line 1824
    .local v0, "filmstripItem":Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->getMedia()Lcom/oneplus/gallery2/media/Media;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 1826
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->cancelDecodingHighResolutionImage()V

    .line 1827
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/FilmstripFragment;->showMovieDrawable(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;)V

    goto :goto_0
.end method

.method private onCurrentMediaChanged(Lcom/oneplus/gallery2/media/Media;)V
    .locals 3
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    const/4 v0, 0x0

    const/16 v2, 0x2724

    .line 2086
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CurrentMedia:Lcom/oneplus/gallery2/media/Media;

    if-ne p1, v1, :cond_1

    .line 2134
    :cond_0
    :goto_0
    return-void

    .line 2088
    :cond_1
    iput-object p1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CurrentMedia:Lcom/oneplus/gallery2/media/Media;

    .line 2089
    iput-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsCurrentMediaAnimation:Ljava/lang/Boolean;

    .line 2092
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_AsyncHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2095
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    .line 2096
    .local v0, "source":Lcom/oneplus/gallery2/media/MediaSource;
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaChangeCallbackTarget:Lcom/oneplus/gallery2/media/MediaSource;

    if-eq v1, v0, :cond_3

    .line 2098
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

    .line 2099
    iput-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaChangeCallbackTarget:Lcom/oneplus/gallery2/media/MediaSource;

    .line 2100
    if-eqz v0, :cond_3

    .line 2101
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaChangeCallback:Lcom/oneplus/gallery2/media/MediaChangeCallback;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery2/media/MediaSource;->addMediaChangedCallback(Lcom/oneplus/gallery2/media/MediaChangeCallback;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

    .line 2105
    :cond_3
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CurrentMedia:Lcom/oneplus/gallery2/media/Media;

    if-eqz v1, :cond_0

    .line 2109
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_AsyncHandler:Landroid/os/Handler;

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2112
    iget v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CurrentMediaIndex:I

    invoke-direct {p0, v1}, Lcom/oneplus/gallery2/FilmstripFragment;->checkImageDecoding(I)V

    .line 2115
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->updateActionBarMenu()V

    .line 2118
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->updateCollectButtonVisibility()V

    .line 2121
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->updateDeleteButtonVisibility()V

    .line 2124
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->updateEditButtonVisibility()V

    .line 2127
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->updateCollectButtonSelection()V

    .line 2130
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->updateBurstInfoVisibility()V

    .line 2133
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->cancelDecodingHighResolutionImage()V

    goto :goto_0
.end method

.method private onGetCount()I
    .locals 1

    .prologue
    .line 2203
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onLowResImageDecoded(Lcom/oneplus/base/Handle;Lcom/oneplus/gallery2/media/Media;Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2211
    invoke-interface {p2}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v2

    .line 2212
    .local v2, "filePath":Ljava/lang/String;
    invoke-interface {p2}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 2213
    .local v0, "contentUri":Landroid/net/Uri;
    iget-object v6, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_LowResBitmapDecodeInfos:Ljava/util/List;

    invoke-direct {p0, v6, v2}, Lcom/oneplus/gallery2/FilmstripFragment;->findBitmapDecodeInfo(Ljava/util/List;Ljava/lang/String;)Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;

    move-result-object v1

    .line 2214
    .local v1, "decodeInfo":Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;
    if-nez v1, :cond_0

    .line 2215
    iget-object v6, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_LowResBitmapDecodeInfos:Ljava/util/List;

    invoke-direct {p0, v6, v0}, Lcom/oneplus/gallery2/FilmstripFragment;->findBitmapDecodeInfo(Ljava/util/List;Landroid/net/Uri;)Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;

    move-result-object v1

    .line 2216
    :cond_0
    if-nez v1, :cond_2

    .line 2258
    :cond_1
    :goto_0
    return-void

    .line 2224
    :cond_2
    iget-object v6, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_LowResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2225
    iget-object v6, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ReusedBitmapDecodeInfos:Ljava/util/Queue;

    invoke-interface {v6, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2228
    const/4 v5, 0x0

    .line 2229
    .local v5, "isItemFound":Z
    iget-object v6, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripItems:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    .line 2231
    .local v3, "filmstripItem":Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->getMedia()Lcom/oneplus/gallery2/media/Media;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 2233
    if-eqz v2, :cond_4

    invoke-virtual {v3}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->getMedia()Lcom/oneplus/gallery2/media/Media;

    move-result-object v6

    invoke-interface {v6}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    if-eqz v0, :cond_3

    invoke-virtual {v3}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->getMedia()Lcom/oneplus/gallery2/media/Media;

    move-result-object v6

    invoke-interface {v6}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2236
    :cond_5
    invoke-virtual {v3}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->getImageDecodeState()Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;

    move-result-object v6

    sget-object v7, Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;->NONE:Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;

    if-ne v6, v7, :cond_3

    .line 2238
    sget-object v6, Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;->SMALL_THUMB_DECODED:Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;

    invoke-virtual {v3, v6}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->setImageDecodeState(Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;)V

    .line 2239
    # invokes: Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->updateViewWhenDecoded(Landroid/graphics/Bitmap;)V
    invoke-static {v3, p3}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->access$6100(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;Landroid/graphics/Bitmap;)V

    .line 2240
    if-nez p3, :cond_7

    .line 2242
    iget-object v6, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v7, "onLowResImageDecoded() - Fail to decode bitmap"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2250
    :goto_1
    const/4 v5, 0x1

    .line 2256
    .end local v3    # "filmstripItem":Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    :cond_6
    if-nez v5, :cond_1

    goto :goto_0

    .line 2246
    .restart local v3    # "filmstripItem":Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    :cond_7
    invoke-virtual {v3, p3}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->setLowResThumb(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method private onMediaListUpdated()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 2337
    invoke-direct {p0, v0, v0, v0}, Lcom/oneplus/gallery2/FilmstripFragment;->onMediaListUpdated(III)V

    .line 2338
    return-void
.end method

.method private onMediaListUpdated(III)V
    .locals 14
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "updateType"    # I

    .prologue
    .line 2342
    iget-object v9, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-nez v9, :cond_1

    .line 2344
    iget-object v9, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripAdapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v9}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyDataSetChanged()V

    .line 2425
    :cond_0
    :goto_0
    return-void

    .line 2349
    :cond_1
    move/from16 v0, p2

    if-gt p1, v0, :cond_0

    .line 2353
    iget-object v9, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripAdapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eqz v9, :cond_2

    .line 2355
    packed-switch p3, :pswitch_data_0

    .line 2389
    iget-object v9, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripAdapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v9}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyDataSetChanged()V

    .line 2395
    :cond_2
    :goto_1
    iget-object v9, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_PreferredContentUri:Landroid/net/Uri;

    if-eqz v9, :cond_7

    .line 2397
    iget-object v7, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_PreferredContentUri:Landroid/net/Uri;

    .line 2398
    .local v7, "preferredContentUri":Landroid/net/Uri;
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_PreferredContentUri:Landroid/net/Uri;

    .line 2399
    move/from16 v0, p2

    invoke-direct {p0, v7, p1, v0}, Lcom/oneplus/gallery2/FilmstripFragment;->searchMediaListIndex(Landroid/net/Uri;II)I

    move-result v3

    .line 2400
    .local v3, "index":I
    if-ltz v3, :cond_7

    .line 2402
    iget-object v9, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v10, "onMediaListUpdated() - Set current media to preferred content Uri: "

    invoke-static {v9, v10, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2403
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-direct {p0, v9, v10, v11}, Lcom/oneplus/gallery2/FilmstripFragment;->setCurrentMediaIndexProp(Ljava/lang/Integer;ZZ)Z

    .line 2404
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->updateCollectButtonSelection()V

    goto :goto_0

    .line 2359
    .end local v3    # "index":I
    .end local v7    # "preferredContentUri":Landroid/net/Uri;
    :pswitch_0
    sub-int v9, p2, p1

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    add-int/lit8 v1, v9, 0x1

    .line 2360
    .local v1, "count":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2361
    .local v8, "updatingItems":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;>;"
    iget-object v9, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripItems:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    .line 2363
    .local v4, "item":Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    invoke-virtual {v4}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->getPosition()I

    move-result v6

    .line 2364
    .local v6, "position":I
    move/from16 v0, p2

    if-lt v6, v0, :cond_3

    .line 2365
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2367
    .end local v4    # "item":Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    .end local v6    # "position":I
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    .line 2369
    .restart local v4    # "item":Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    invoke-virtual {v4}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->getPosition()I

    move-result v9

    add-int v5, v9, v1

    .line 2370
    .local v5, "newPosition":I
    invoke-virtual {v4, v5}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->setPosition(I)V

    goto :goto_3

    .line 2374
    .end local v4    # "item":Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    .end local v5    # "newPosition":I
    :cond_5
    iget-object v9, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripAdapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    move/from16 v0, p2

    invoke-virtual {v9, p1, v0}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyItemAdded(II)V

    goto :goto_1

    .line 2378
    .end local v1    # "count":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v8    # "updatingItems":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;>;"
    :pswitch_1
    iget-object v9, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripAdapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    move/from16 v0, p2

    invoke-virtual {v9, p1, v0}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyItemRemoved(II)V

    .line 2380
    iget v9, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CurrentMediaIndex:I

    iget-object v10, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v10}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v10

    if-ge v9, v10, :cond_6

    .line 2382
    iget v9, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CurrentMediaIndex:I

    if-lt v9, p1, :cond_2

    .line 2383
    iget-object v9, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    iget v10, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CurrentMediaIndex:I

    invoke-interface {v9, v10}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/gallery2/media/Media;

    invoke-direct {p0, v9}, Lcom/oneplus/gallery2/FilmstripFragment;->onCurrentMediaChanged(Lcom/oneplus/gallery2/media/Media;)V

    goto/16 :goto_1

    .line 2386
    :cond_6
    iget-object v9, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v9}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-direct {p0, v9, v10, v11}, Lcom/oneplus/gallery2/FilmstripFragment;->setCurrentMediaIndexProp(Ljava/lang/Integer;ZZ)Z

    goto/16 :goto_1

    .line 2410
    :cond_7
    iget-object v9, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_RecycledMediaUri:Landroid/net/Uri;

    if-eqz v9, :cond_8

    const/4 v9, 0x1

    move/from16 v0, p3

    if-ne v0, v9, :cond_8

    .line 2412
    move/from16 v0, p2

    if-ne p1, v0, :cond_8

    iget-object v10, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_RecycledMediaUri:Landroid/net/Uri;

    iget-object v9, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v9, p1}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v9}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 2414
    iget-object v9, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v10, "onMediaListUpdated() - Set current media to recycled content Uri: "

    iget-object v11, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_RecycledMediaUri:Landroid/net/Uri;

    invoke-static {v9, v10, v11}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2415
    iget-object v9, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_RecycledMediaUri:Landroid/net/Uri;

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lcom/oneplus/gallery2/FilmstripFragment;->setPageToContentUri(Landroid/net/Uri;Z)V

    .line 2416
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_RecycledMediaUri:Landroid/net/Uri;

    .line 2417
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_RecycledMediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    .line 2418
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->updateCollectButtonSelection()V

    goto/16 :goto_0

    .line 2424
    :cond_8
    iget-object v9, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v10, "onMediaListUpdated() - Start: "

    const/4 v11, 0x7

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string v13, ", end: "

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    const-string v13, ", current: "

    aput-object v13, v11, v12

    const/4 v12, 0x4

    iget v13, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CurrentMediaIndex:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x5

    const-string v13, ", list size: "

    aput-object v13, v11, v12

    const/4 v12, 0x6

    iget-object v13, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v13}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2355
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onMediaRemoving(II)V
    .locals 9
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 2431
    iget-object v7, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-nez v7, :cond_1

    .line 2461
    :cond_0
    return-void

    .line 2433
    :cond_1
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 2435
    iget-object v7, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaDetailsDialog:Lcom/oneplus/gallery2/MediaDetailsDialog;

    if-eqz v7, :cond_2

    .line 2437
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-gt v1, p2, :cond_2

    .line 2439
    iget-object v7, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaDetailsDialog:Lcom/oneplus/gallery2/MediaDetailsDialog;

    invoke-virtual {v7}, Lcom/oneplus/gallery2/MediaDetailsDialog;->getMedia()Lcom/oneplus/gallery2/media/Media;

    move-result-object v7

    iget-object v8, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v8, v1}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-ne v7, v8, :cond_4

    .line 2441
    iget-object v7, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaDetailsDialog:Lcom/oneplus/gallery2/MediaDetailsDialog;

    invoke-virtual {v7}, Lcom/oneplus/gallery2/MediaDetailsDialog;->dismiss()V

    .line 2448
    .end local v1    # "i":I
    :cond_2
    sub-int v7, p2, p1

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/lit8 v0, v7, 0x1

    .line 2449
    .local v0, "count":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2450
    .local v6, "updatingItems":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;>;"
    iget-object v7, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripItems:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    .line 2452
    .local v3, "item":Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    invoke-virtual {v3}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->getPosition()I

    move-result v5

    .line 2453
    .local v5, "position":I
    if-le v5, p2, :cond_3

    .line 2454
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2437
    .end local v0    # "count":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "item":Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    .end local v5    # "position":I
    .end local v6    # "updatingItems":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;>;"
    .restart local v1    # "i":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2456
    .end local v1    # "i":I
    .restart local v0    # "count":I
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v6    # "updatingItems":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;>;"
    :cond_5
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    .line 2458
    .restart local v3    # "item":Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    invoke-virtual {v3}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->getPosition()I

    move-result v7

    sub-int v4, v7, v0

    .line 2459
    .local v4, "newPosition":I
    invoke-virtual {v3, v4}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->setPosition(I)V

    goto :goto_2
.end method

.method private onMediaSizeObtained(Lcom/oneplus/gallery2/media/Media;II)V
    .locals 3
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 2467
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripItems:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    .line 2469
    .local v0, "filmstripItem":Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    invoke-virtual {v0}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->getMedia()Lcom/oneplus/gallery2/media/Media;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 2471
    invoke-virtual {v0, p1}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->updateMedia(Lcom/oneplus/gallery2/media/Media;)V

    .line 2475
    .end local v0    # "filmstripItem":Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    :cond_1
    return-void
.end method

.method private onMediumResImageDecoded(Lcom/oneplus/base/Handle;Lcom/oneplus/gallery2/media/Media;Landroid/graphics/Bitmap;)V
    .locals 10
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2266
    invoke-interface {p2}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v2

    .line 2267
    .local v2, "filePath":Ljava/lang/String;
    invoke-interface {p2}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 2268
    .local v0, "contentUri":Landroid/net/Uri;
    iget-object v7, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediumResBitmapDecodeInfos:Ljava/util/List;

    invoke-direct {p0, v7, v2}, Lcom/oneplus/gallery2/FilmstripFragment;->findBitmapDecodeInfo(Ljava/util/List;Ljava/lang/String;)Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;

    move-result-object v1

    .line 2269
    .local v1, "decodeInfo":Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;
    if-nez v1, :cond_0

    .line 2270
    iget-object v7, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediumResBitmapDecodeInfos:Ljava/util/List;

    invoke-direct {p0, v7, v0}, Lcom/oneplus/gallery2/FilmstripFragment;->findBitmapDecodeInfo(Ljava/util/List;Landroid/net/Uri;)Lcom/oneplus/gallery2/FilmstripFragment$BitmapDecodeInfo;

    move-result-object v1

    .line 2271
    :cond_0
    if-nez v1, :cond_2

    .line 2331
    :cond_1
    :goto_0
    return-void

    .line 2279
    :cond_2
    iget-object v7, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediumResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2280
    iget-object v7, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ReusedBitmapDecodeInfos:Ljava/util/Queue;

    invoke-interface {v7, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2283
    const/4 v6, 0x0

    .line 2284
    .local v6, "isItemFound":Z
    const/4 v5, 0x0

    .line 2285
    .local v5, "isCurrentItem":Z
    iget-object v7, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripItems:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    .line 2287
    .local v3, "filmstripItem":Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->getMedia()Lcom/oneplus/gallery2/media/Media;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 2289
    if-eqz v2, :cond_4

    invoke-virtual {v3}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->getMedia()Lcom/oneplus/gallery2/media/Media;

    move-result-object v7

    invoke-interface {v7}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    :cond_4
    if-eqz v0, :cond_3

    invoke-virtual {v3}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->getMedia()Lcom/oneplus/gallery2/media/Media;

    move-result-object v7

    invoke-interface {v7}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2292
    :cond_5
    sget-object v7, Lcom/oneplus/gallery2/FilmstripFragment$30;->$SwitchMap$com$oneplus$gallery2$FilmstripFragment$ImageDecodeState:[I

    invoke-virtual {v3}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->getImageDecodeState()Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 2311
    :goto_1
    const/4 v6, 0x1

    .line 2312
    invoke-virtual {v3}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->getPosition()I

    move-result v7

    iget v8, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CurrentMediaIndex:I

    if-ne v7, v8, :cond_a

    const/4 v5, 0x1

    .line 2313
    :goto_2
    iget-boolean v7, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsFilmstripScrolling:Z

    if-nez v7, :cond_6

    if-eqz v5, :cond_6

    iget-object v7, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsCurrentMediaAnimation:Ljava/lang/Boolean;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsCurrentMediaAnimation:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2315
    invoke-direct {p0, v3}, Lcom/oneplus/gallery2/FilmstripFragment;->showMovieDrawable(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;)V

    .line 2321
    .end local v3    # "filmstripItem":Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    :cond_6
    if-nez v6, :cond_7

    .line 2325
    :cond_7
    iget-object v7, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CurrentMedia:Lcom/oneplus/gallery2/media/Media;

    if-eq v7, p2, :cond_8

    iget-object v7, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CurrentMedia:Lcom/oneplus/gallery2/media/Media;

    if-eqz v7, :cond_8

    .line 2326
    iget-object v7, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    iget-object v8, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CurrentMedia:Lcom/oneplus/gallery2/media/Media;

    sget-object v9, Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;->SCREEN:Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;

    invoke-interface {v7, v8, v9}, Lcom/oneplus/gallery2/media/ThumbnailImageManager;->getCachedThumbnailImage(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;)Landroid/graphics/Bitmap;

    .line 2329
    :cond_8
    if-eqz v5, :cond_1

    if-eqz p3, :cond_1

    iget-object v7, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    if-eqz v7, :cond_1

    .line 2330
    iget-object v7, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-virtual {v7, p3}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->setThumbnailBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 2295
    .restart local v3    # "filmstripItem":Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    :pswitch_0
    invoke-virtual {v3}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->getMedia()Lcom/oneplus/gallery2/media/Media;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/oneplus/gallery2/FilmstripFragment;->cancelDecodingLowResolutionImage(Lcom/oneplus/gallery2/media/Media;)V

    .line 2297
    :pswitch_1
    sget-object v7, Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;->THUMB_DECODED:Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;

    invoke-virtual {v3, v7}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->setImageDecodeState(Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;)V

    .line 2298
    # invokes: Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->updateViewWhenDecoded(Landroid/graphics/Bitmap;)V
    invoke-static {v3, p3}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->access$6100(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;Landroid/graphics/Bitmap;)V

    .line 2299
    if-nez p3, :cond_9

    .line 2301
    iget-object v7, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v8, "onMediumResImageDecoded() - Fail to decode bitmap"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2305
    :cond_9
    invoke-virtual {v3, p3}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->setMediumResThumb(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 2312
    :cond_a
    const/4 v5, 0x0

    goto :goto_2

    .line 2292
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onPrepareItemView(ILandroid/view/ViewGroup;)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 2517
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v2, p1}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    .line 2520
    .local v1, "media":Lcom/oneplus/gallery2/media/Media;
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripItemPool:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    .line 2521
    .local v0, "filmstripItem":Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    if-nez v0, :cond_0

    .line 2522
    new-instance v0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    .end local v0    # "filmstripItem":Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    invoke-direct {v0, p0, v1}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;-><init>(Lcom/oneplus/gallery2/FilmstripFragment;Lcom/oneplus/gallery2/media/Media;)V

    .line 2527
    .restart local v0    # "filmstripItem":Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    :goto_0
    invoke-virtual {v0}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->getContainer()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2528
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 2531
    invoke-virtual {v0, p1}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->setPosition(I)V

    .line 2533
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v3, "onPrepareItemView() - Position: "

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, ", item: "

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v0, v4, v5

    const/4 v5, 0x3

    const-string v6, ", media: "

    aput-object v6, v4, v5

    const/4 v5, 0x4

    aput-object v1, v4, v5

    const/4 v5, 0x5

    const-string v6, ", type: "

    aput-object v6, v4, v5

    const/4 v5, 0x6

    invoke-interface {v1}, Lcom/oneplus/gallery2/media/Media;->getMimeType()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2536
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripItems:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2539
    sget-object v2, Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;->NONE:Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->setImageDecodeState(Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;)V

    .line 2540
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_DummyThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2544
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/FilmstripFragment;->checkImageDecoding(I)V

    .line 2545
    return-void

    .line 2524
    :cond_0
    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->updateMedia(Lcom/oneplus/gallery2/media/Media;)V

    goto :goto_0
.end method

.method private onReleaseItemView(ILandroid/view/ViewGroup;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x0

    .line 2551
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    .line 2552
    .local v0, "reusedItem":Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    if-eqz v0, :cond_1

    .line 2555
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripItemPool:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2556
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 2557
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->setPosition(I)V

    .line 2558
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_DummyThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2561
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/FilmstripFragment;->isItemSourceSameAsMovieDrawable(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2563
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/FilmstripFragment;->releaseMovieDrawable(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;)V

    .line 2566
    :cond_0
    invoke-virtual {v0, v2}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->updateMedia(Lcom/oneplus/gallery2/media/Media;)V

    .line 2567
    invoke-virtual {v0}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->clearCaches()V

    .line 2568
    invoke-virtual {v0}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->hideBurstContainer()V

    .line 2570
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripItems:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2572
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v2, "onReleaseItemView() - Position: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, ", item: "

    invoke-static {v1, v2, v3, v4, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2575
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/FilmstripFragment;->checkImageDecoding(I)V

    .line 2578
    sget-object v1, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;

    invoke-direct {p0, v1}, Lcom/oneplus/gallery2/FilmstripFragment;->setFilmstripState(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;)V

    .line 2581
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2582
    return-void
.end method

.method private onScaleImageBoundsChanged(Lcom/oneplus/widget/ScaleImageView;IIII)V
    .locals 3
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 2626
    invoke-virtual {p1}, Lcom/oneplus/widget/ScaleImageView;->getFitToScreenShortSideBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2627
    .local v0, "fitBounds":Landroid/graphics/Rect;
    iget-boolean v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsOverScaledDown:Z

    if-nez v1, :cond_2

    .line 2629
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int v2, p4, p2

    if-gt v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int v2, p5, p3

    if-le v1, v2, :cond_1

    .line 2631
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v2, "onScaleImageBoundsChanged() - Over scaled"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2632
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsOverScaledDown:Z

    .line 2643
    :cond_1
    :goto_0
    return-void

    .line 2637
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int v2, p4, p2

    if-gt v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int v2, p5, p3

    if-gt v1, v2, :cond_1

    .line 2639
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v2, "onScaleImageBoundsChanged() - Over scaled cancel"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2640
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsOverScaledDown:Z

    goto :goto_0
.end method

.method private onScaleImageBoundsTypeChanged(Lcom/oneplus/widget/ScaleImageView;Lcom/oneplus/widget/ScaleImageView$BoundsType;Lcom/oneplus/widget/ScaleImageView$BoundsType;)V
    .locals 8
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "oldType"    # Lcom/oneplus/widget/ScaleImageView$BoundsType;
    .param p3, "newType"    # Lcom/oneplus/widget/ScaleImageView$BoundsType;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2650
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-nez v1, :cond_0

    .line 2691
    :goto_0
    return-void

    .line 2654
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/widget/ScaleImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    .line 2655
    .local v0, "filmstripItem":Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    invoke-virtual {v0}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->getPosition()I

    move-result v1

    if-gez v1, :cond_1

    .line 2657
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScaleImageBoundsTypeChanged() - Item is released: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2661
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v2, "onScaleImageBoundsTypeChanged() - Old: "

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v7

    const-string v4, ", new: "

    aput-object v4, v3, v6

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    const-string v5, ", item: "

    aput-object v5, v3, v4

    const/4 v4, 0x4

    aput-object v0, v3, v4

    const/4 v4, 0x5

    const-string v5, ", media: "

    aput-object v5, v3, v4

    const/4 v4, 0x6

    invoke-virtual {v0}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->getMedia()Lcom/oneplus/gallery2/media/Media;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2664
    sget-object v1, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    if-ne p2, v1, :cond_4

    .line 2667
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsCurrentMediaAnimation:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsCurrentMediaAnimation:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2668
    :cond_2
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/FilmstripFragment;->decodeHighResolutionImage(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;)V

    .line 2690
    :cond_3
    :goto_1
    iput-boolean v7, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsOverScaledDown:Z

    goto :goto_0

    .line 2670
    :cond_4
    sget-object v1, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    if-ne p3, v1, :cond_3

    .line 2673
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsCurrentMediaAnimation:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsCurrentMediaAnimation:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2675
    :cond_5
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->cancelDecodingHighResolutionImage()V

    .line 2676
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2677
    sget-object v1, Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailQuality;->NORMAL:Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailQuality;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->setThumbnailQuality(Lcom/oneplus/gallery2/FilmstripFragment$ThumbnailQuality;)V

    .line 2680
    sget-object v1, Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;->NONE:Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->setImageDecodeState(Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;)V

    .line 2681
    invoke-virtual {v0}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->getMedia()Lcom/oneplus/gallery2/media/Media;

    move-result-object v1

    invoke-direct {p0, v1, v6}, Lcom/oneplus/gallery2/FilmstripFragment;->decodeLowResolutionImage(Lcom/oneplus/gallery2/media/Media;Z)V

    .line 2682
    invoke-virtual {v0}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->getMedia()Lcom/oneplus/gallery2/media/Media;

    move-result-object v1

    invoke-direct {p0, v1, v6}, Lcom/oneplus/gallery2/FilmstripFragment;->decodeMediumResolutionImage(Lcom/oneplus/gallery2/media/Media;Z)V

    .line 2686
    :cond_6
    sget-object v1, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;

    invoke-direct {p0, v1}, Lcom/oneplus/gallery2/FilmstripFragment;->setFilmstripState(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;)V

    goto :goto_1
.end method

.method private onScaleImageGestureDoubleTap(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "item"    # Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 2698
    invoke-virtual {p1}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->getMedia()Lcom/oneplus/gallery2/media/Media;

    move-result-object v0

    .line 2699
    .local v0, "media":Lcom/oneplus/gallery2/media/Media;
    sget-object v1, Lcom/oneplus/gallery2/FilmstripFragment$30;->$SwitchMap$com$oneplus$gallery2$FilmstripFragment$FilmstripState:[I

    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripState:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;

    invoke-virtual {v2}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2709
    :cond_0
    :goto_0
    return v3

    .line 2702
    :pswitch_0
    instance-of v1, v0, Lcom/oneplus/gallery2/media/PhotoMedia;

    if-eqz v1, :cond_0

    # invokes: Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->isStretchedImage()Z
    invoke-static {p1}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->access$6200(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2703
    sget-object v1, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;->VIEW_DETAILS:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;

    invoke-direct {p0, v1}, Lcom/oneplus/gallery2/FilmstripFragment;->setFilmstripState(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;)V

    goto :goto_0

    .line 2706
    :pswitch_1
    sget-object v1, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;

    invoke-direct {p0, v1}, Lcom/oneplus/gallery2/FilmstripFragment;->setFilmstripState(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;)V

    goto :goto_0

    .line 2699
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onScaleImageGestureEnd(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;)V
    .locals 1
    .param p1, "item"    # Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    .prologue
    .line 2718
    iget-boolean v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsScaled:Z

    if-eqz v0, :cond_0

    .line 2720
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->updateFilmstripScrollMode()V

    .line 2722
    :cond_0
    return-void
.end method

.method private onScaleImageGestureFling(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .param p1, "item"    # Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    .param p2, "e1"    # Landroid/view/MotionEvent;
    .param p3, "e2"    # Landroid/view/MotionEvent;
    .param p4, "velocityX"    # F
    .param p5, "velocityY"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2729
    iget-object v5, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripState:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;

    sget-object v6, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;->VIEW_DETAILS:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;

    if-eq v5, v6, :cond_1

    .line 2765
    :cond_0
    :goto_0
    return v3

    .line 2731
    :cond_1
    iget-object v5, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v5, :cond_0

    .line 2735
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x459c4000    # 5000.0f

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_0

    .line 2739
    # getter for: Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;
    invoke-static {p1}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->access$6300(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;)Lcom/oneplus/widget/ScaleImageView;

    move-result-object v1

    .line 2740
    .local v1, "imageView":Lcom/oneplus/widget/ScaleImageView;
    invoke-virtual {v1}, Lcom/oneplus/widget/ScaleImageView;->getImageBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2741
    .local v0, "imageBounds":Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .line 2746
    const/4 v5, 0x0

    cmpg-float v5, p4, v5

    if-gez v5, :cond_2

    .line 2748
    iget v5, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Lcom/oneplus/widget/ScaleImageView;->getWidth()I

    move-result v6

    if-gt v5, v6, :cond_0

    iget v5, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CurrentMediaIndex:I

    iget-object v6, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v6}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_0

    .line 2750
    iget v3, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CurrentMediaIndex:I

    add-int/lit8 v2, v3, 0x1

    .line 2760
    .local v2, "indexTo":I
    :goto_1
    sget-object v3, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    invoke-virtual {v1, v3}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Lcom/oneplus/widget/ScaleImageView$BoundsType;)V

    .line 2761
    sget-object v3, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;

    invoke-direct {p0, v3}, Lcom/oneplus/gallery2/FilmstripFragment;->setFilmstripState(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;)V

    .line 2762
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3, v4, v4}, Lcom/oneplus/gallery2/FilmstripFragment;->setCurrentMediaIndexProp(Ljava/lang/Integer;ZZ)Z

    move v3, v4

    .line 2765
    goto :goto_0

    .line 2754
    .end local v2    # "indexTo":I
    :cond_2
    iget v5, v0, Landroid/graphics/Rect;->left:I

    if-ltz v5, :cond_0

    iget v5, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CurrentMediaIndex:I

    if-eqz v5, :cond_0

    .line 2756
    iget v3, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CurrentMediaIndex:I

    add-int/lit8 v2, v3, -0x1

    .restart local v2    # "indexTo":I
    goto :goto_1
.end method

.method private onScaleImageGestureScale(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;FFF)Z
    .locals 4
    .param p1, "item"    # Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    .param p2, "factor"    # F
    .param p3, "pivotX"    # F
    .param p4, "pivotY"    # F

    .prologue
    const/4 v3, 0x0

    .line 2773
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsScaled:Z

    .line 2774
    iget v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ScaleFactor:F

    mul-float/2addr v1, p2

    iput v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ScaleFactor:F

    .line 2776
    invoke-virtual {p1}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->getMedia()Lcom/oneplus/gallery2/media/Media;

    move-result-object v0

    .line 2777
    .local v0, "media":Lcom/oneplus/gallery2/media/Media;
    sget-object v1, Lcom/oneplus/gallery2/FilmstripFragment$30;->$SwitchMap$com$oneplus$gallery2$FilmstripFragment$FilmstripState:[I

    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripState:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;

    invoke-virtual {v2}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2787
    :cond_0
    :goto_0
    return v3

    .line 2780
    :pswitch_0
    iget v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ScaleFactor:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 2782
    instance-of v1, v0, Lcom/oneplus/gallery2/media/PhotoMedia;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->getImageBoundsType()Lcom/oneplus/widget/ScaleImageView$BoundsType;

    move-result-object v1

    sget-object v2, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    if-eq v1, v2, :cond_0

    .line 2783
    sget-object v1, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;->VIEW_DETAILS:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;

    invoke-direct {p0, v1}, Lcom/oneplus/gallery2/FilmstripFragment;->setFilmstripState(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;)V

    goto :goto_0

    .line 2777
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onScaleImageGestureSingleTapUp(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "item"    # Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2795
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->showHideToolbar()Z

    move-result v0

    return v0
.end method

.method private onScaleImageGestureStart(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "item"    # Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2801
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ScaleFactor:F

    .line 2802
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsScaled:Z

    .line 2803
    return-void
.end method

.method private onScrollStarted()V
    .locals 4

    .prologue
    .line 2809
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsFilmstripScrolling:Z

    .line 2810
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripItems:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    .line 2812
    .local v1, "item":Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    invoke-virtual {v1}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->getPosition()I

    move-result v2

    iget v3, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CurrentMediaIndex:I

    if-ne v2, v3, :cond_0

    .line 2813
    invoke-direct {p0, v1}, Lcom/oneplus/gallery2/FilmstripFragment;->releaseMovieDrawable(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;)V

    goto :goto_0

    .line 2817
    .end local v1    # "item":Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->cancelHideToolbar()V

    .line 2818
    return-void
.end method

.method private onScrollStopped()V
    .locals 4

    .prologue
    .line 2824
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsFilmstripScrolling:Z

    .line 2825
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripItems:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    .line 2827
    .local v1, "item":Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    invoke-virtual {v1}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->getPosition()I

    move-result v2

    iget v3, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CurrentMediaIndex:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsCurrentMediaAnimation:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsCurrentMediaAnimation:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2831
    invoke-direct {p0, v1}, Lcom/oneplus/gallery2/FilmstripFragment;->showMovieDrawable(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;)V

    goto :goto_0

    .line 2836
    .end local v1    # "item":Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->hideToolbarDelay()V

    .line 2837
    return-void
.end method

.method private onSnackbarVisibleHeightChanged(F)V
    .locals 2
    .param p1, "height"    # F

    .prologue
    .line 2843
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FooterContainer:Landroid/view/View;

    neg-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 2844
    return-void
.end method

.method private onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "focused"    # Z

    .prologue
    .line 2913
    if-eqz p1, :cond_0

    .line 2914
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->hideToolbarDelay()V

    .line 2917
    :goto_0
    return-void

    .line 2916
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->cancelHideToolbar()V

    goto :goto_0
.end method

.method private playVideo(Lcom/oneplus/gallery2/media/Media;)V
    .locals 4
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 2924
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripState:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;

    .line 2925
    .local v0, "state":Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;
    sget-object v1, Lcom/oneplus/gallery2/FilmstripFragment$30;->$SwitchMap$com$oneplus$gallery2$FilmstripFragment$FilmstripState:[I

    invoke-virtual {v0}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2930
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playVideo() - Cannot play video page in current state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2938
    :cond_0
    :goto_0
    return-void

    .line 2933
    :pswitch_0
    if-eqz p1, :cond_0

    .line 2937
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/FilmstripFragment;->playVideoDirectly(Lcom/oneplus/gallery2/media/Media;)V

    goto :goto_0

    .line 2925
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private playVideoDirectly(Lcom/oneplus/gallery2/media/Media;)V
    .locals 3
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 2945
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/oneplus/gallery2/VideoPlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2946
    .local v0, "videoPlayerIntent":Landroid/content/Intent;
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "video/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2947
    const-string v1, "IsReadOnly"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2948
    const-string v1, "com.oneplus.gallery.GalleryActivity.extra.SHARED_GALLERY_ID"

    invoke-virtual {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/gallery2/Gallery;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2951
    const/16 v1, 0x69

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/FilmstripFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2952
    return-void
.end method

.method private prepareMovieDrawable(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;)V
    .locals 4
    .param p1, "item"    # Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    .prologue
    .line 2959
    if-nez p1, :cond_1

    .line 2991
    :cond_0
    :goto_0
    return-void

    .line 2963
    :cond_1
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/FilmstripFragment;->isItemSourceSameAsMovieDrawable(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2965
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v3, "prepareMovieDrawable() - item is the same as movie drawable."

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2970
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    if-eqz v2, :cond_3

    .line 2972
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/FilmstripFragment;->releaseMovieDrawable(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;)V

    .line 2976
    :cond_3
    invoke-virtual {p1}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->getMedia()Lcom/oneplus/gallery2/media/Media;

    move-result-object v2

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 2977
    .local v0, "contentUri":Landroid/net/Uri;
    if-eqz v0, :cond_4

    .line 2979
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v3, "prepareMovieDrawable() - Uri: "

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2980
    new-instance v2, Lcom/oneplus/drawable/MovieDrawable;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/oneplus/drawable/MovieDrawable;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iput-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    goto :goto_0

    .line 2984
    :cond_4
    invoke-virtual {p1}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->getMedia()Lcom/oneplus/gallery2/media/Media;

    move-result-object v2

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 2985
    .local v1, "filePath":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 2987
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v3, "prepareMovieDrawable() - Path: "

    invoke-static {v2, v3, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2988
    new-instance v2, Lcom/oneplus/drawable/MovieDrawable;

    invoke-direct {v2, v1}, Lcom/oneplus/drawable/MovieDrawable;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    goto :goto_0
.end method

.method private releaseMovieDrawable(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;)V
    .locals 4
    .param p1, "item"    # Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    .prologue
    const/4 v3, 0x0

    .line 2998
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    if-nez v0, :cond_1

    .line 3007
    :cond_0
    :goto_0
    return-void

    .line 3001
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v1, "releaseMovieDrawable()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3003
    invoke-virtual {p1, v3}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3004
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    invoke-virtual {v0}, Lcom/oneplus/drawable/MovieDrawable;->stop()V

    .line 3005
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/drawable/MovieDrawable;->setVisible(ZZ)Z

    .line 3006
    iput-object v3, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    goto :goto_0
.end method

.method private resetFilmstripState()V
    .locals 2

    .prologue
    .line 3013
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v1, "resetFilmstripState()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3016
    sget-object v0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;->BACKGROUND:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/FilmstripFragment;->setFilmstripState(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;)V

    .line 3017
    return-void
.end method

.method private restoreMediaFromRecycler()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3023
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_AppTracker:Lcom/oneplus/gallery2/AppTracker;

    const-string v3, "Gallery.UndoDeleteMedia"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v5, v4}, Lcom/oneplus/gallery2/AppTracker;->createRecord(Ljava/lang/String;I[Ljava/lang/Object;)Z

    .line 3025
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_RecycledMediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_RecycledMediaUri:Landroid/net/Uri;

    if-nez v2, :cond_1

    .line 3035
    :cond_0
    :goto_0
    return-void

    .line 3029
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_RecycledMediaHandles:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/Handle;

    .line 3030
    .local v0, "handle":Lcom/oneplus/base/Handle;
    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_1

    .line 3031
    .end local v0    # "handle":Lcom/oneplus/base/Handle;
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_RecycledMediaHandles:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 3034
    invoke-virtual {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x271a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private searchMediaListIndex(Landroid/net/Uri;)I
    .locals 1
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, -0x1

    .line 3041
    invoke-direct {p0, p1, v0, v0}, Lcom/oneplus/gallery2/FilmstripFragment;->searchMediaListIndex(Landroid/net/Uri;II)I

    move-result v0

    return v0
.end method

.method private searchMediaListIndex(Landroid/net/Uri;II)I
    .locals 3
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .prologue
    const/4 v2, -0x1

    .line 3045
    if-nez p1, :cond_1

    move v0, v2

    .line 3058
    :cond_0
    :goto_0
    return v0

    .line 3047
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v1}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    move v0, v2

    .line 3048
    goto :goto_0

    .line 3049
    :cond_3
    if-ne p2, v2, :cond_4

    .line 3050
    const/4 p2, 0x0

    .line 3051
    :cond_4
    if-eq p3, v2, :cond_5

    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v1}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v1

    if-lt p3, v1, :cond_6

    .line 3052
    :cond_5
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v1}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v1

    add-int/lit8 p3, v1, -0x1

    .line 3053
    :cond_6
    move v0, p3

    .local v0, "i":I
    :goto_1
    if-lt v0, p2, :cond_7

    .line 3055
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v1, v0}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v1}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3053
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_7
    move v0, v2

    .line 3058
    goto :goto_0
.end method

.method private setCurrentMediaIndexProp(Ljava/lang/Integer;Z)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Integer;
    .param p2, "updateFilmstrip"    # Z

    .prologue
    .line 3086
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/gallery2/FilmstripFragment;->setCurrentMediaIndexProp(Ljava/lang/Integer;ZZ)Z

    move-result v0

    return v0
.end method

.method private setCurrentMediaIndexProp(Ljava/lang/Integer;ZZ)Z
    .locals 4
    .param p1, "value"    # Ljava/lang/Integer;
    .param p2, "updateFilmstrip"    # Z
    .param p3, "smooth"    # Z

    .prologue
    .line 3091
    iget v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CurrentMediaIndex:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 3092
    const/4 v2, 0x1

    .line 3110
    :goto_0
    return v2

    .line 3093
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v3}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_2

    .line 3094
    :cond_1
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 3097
    :cond_2
    iget v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CurrentMediaIndex:I

    .line 3098
    .local v1, "oldValue":I
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CurrentMediaIndex:I

    .line 3101
    if-eqz p2, :cond_3

    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripView:Lcom/oneplus/widget/FilmstripView;

    if-eqz v2, :cond_3

    .line 3102
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripView:Lcom/oneplus/widget/FilmstripView;

    iget v3, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CurrentMediaIndex:I

    invoke-virtual {v2, v3, p3}, Lcom/oneplus/widget/FilmstripView;->setCurrentItem(IZ)V

    .line 3105
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_5

    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/Media;

    move-object v0, v2

    .line 3106
    .local v0, "newMedia":Lcom/oneplus/gallery2/media/Media;
    :goto_1
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CurrentMedia:Lcom/oneplus/gallery2/media/Media;

    if-eq v0, v2, :cond_4

    .line 3107
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/FilmstripFragment;->onCurrentMediaChanged(Lcom/oneplus/gallery2/media/Media;)V

    .line 3110
    :cond_4
    sget-object v2, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_CURRENT_MEDIA_INDEX:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p1}, Lcom/oneplus/gallery2/FilmstripFragment;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 3105
    .end local v0    # "newMedia":Lcom/oneplus/gallery2/media/Media;
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setFilmstripScrollMode(I)V
    .locals 3
    .param p1, "scrollMode"    # I

    .prologue
    .line 3118
    iget v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripScrollMode:I

    if-ne v0, p1, :cond_0

    .line 3125
    :goto_0
    return-void

    .line 3122
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v1, "setFilmstripScrollMode() - Scroll mode: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3123
    iput p1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripScrollMode:I

    .line 3124
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripView:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v0, p1}, Lcom/oneplus/widget/FilmstripView;->setScrollMode(I)V

    goto :goto_0
.end method

.method private setFilmstripState(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;)V
    .locals 5
    .param p1, "state"    # Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;

    .prologue
    .line 3133
    iget-object v3, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripState:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;

    if-ne p1, v3, :cond_0

    .line 3157
    :goto_0
    return-void

    .line 3137
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripState:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;

    .line 3138
    .local v2, "oldState":Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;
    iput-object p1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripState:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;

    .line 3141
    sget-object v3, Lcom/oneplus/gallery2/FilmstripFragment$30;->$SwitchMap$com$oneplus$gallery2$FilmstripFragment$FilmstripState:[I

    invoke-virtual {p1}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 3153
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->updateFilmstripScrollMode()V

    .line 3156
    sget-object v3, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_FILMSTRIP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3, v2, p1}, Lcom/oneplus/gallery2/FilmstripFragment;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 3144
    :pswitch_0
    iget-object v3, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripItems:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    .line 3146
    .local v1, "item":Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    invoke-virtual {v1}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->getMedia()Lcom/oneplus/gallery2/media/Media;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3147
    sget-object v3, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    invoke-virtual {v1, v3}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->setImageBounds(Lcom/oneplus/widget/ScaleImageView$BoundsType;)V

    goto :goto_1

    .line 3141
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private setMediaListProp(Lcom/oneplus/gallery2/media/MediaList;)Z
    .locals 4
    .param p1, "list"    # Lcom/oneplus/gallery2/media/MediaList;

    .prologue
    .line 3164
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-ne v1, p1, :cond_0

    .line 3165
    const/4 v1, 0x1

    .line 3189
    :goto_0
    return v1

    .line 3168
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    .line 3169
    .local v0, "oldList":Lcom/oneplus/gallery2/media/MediaList;
    iput-object p1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    .line 3172
    if-eqz v0, :cond_1

    .line 3174
    sget-object v1, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaAddedEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 3175
    sget-object v1, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaRemovedEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 3176
    sget-object v1, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaRemovingEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 3178
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v1, :cond_2

    .line 3180
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v2, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaAddedEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v1, v2, v3}, Lcom/oneplus/gallery2/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 3181
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v2, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaRemovedEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v1, v2, v3}, Lcom/oneplus/gallery2/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 3182
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v2, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaRemovingEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v1, v2, v3}, Lcom/oneplus/gallery2/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 3186
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->onMediaListUpdated()V

    .line 3189
    sget-object v1, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/oneplus/gallery2/FilmstripFragment;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private setPageToContentUri(Landroid/net/Uri;Z)V
    .locals 3
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "smooth"    # Z

    .prologue
    .line 3196
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/FilmstripFragment;->searchMediaListIndex(Landroid/net/Uri;)I

    move-result v0

    .line 3197
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3198
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, p2}, Lcom/oneplus/gallery2/FilmstripFragment;->setCurrentMediaIndexProp(Ljava/lang/Integer;ZZ)Z

    .line 3201
    :goto_0
    return-void

    .line 3200
    :cond_0
    iput-object p1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_PreferredContentUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method private setToolbarVisibility(ZZ)V
    .locals 0
    .param p1, "visible"    # Z
    .param p2, "animation"    # Z

    .prologue
    .line 3208
    iput-boolean p1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsToolbarVisible:Z

    .line 3211
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->updateCollectButtonVisibility()V

    .line 3214
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->updateDeleteButtonVisibility()V

    .line 3217
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->updateEditButtonVisibility()V

    .line 3220
    invoke-direct {p0, p2}, Lcom/oneplus/gallery2/FilmstripFragment;->updateToolbarVisibility(Z)V

    .line 3223
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->updateBurstInfoVisibility()V

    .line 3225
    return-void
.end method

.method private setWallpaper(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 3231
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_AppTracker:Lcom/oneplus/gallery2/AppTracker;

    const-string v3, "Gallery.SetWallPapper"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v5, v4}, Lcom/oneplus/gallery2/AppTracker;->createRecord(Ljava/lang/String;I[Ljava/lang/Object;)Z

    .line 3233
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->isHydrogenLauncher()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3251
    :cond_0
    :goto_0
    return-void

    .line 3237
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->hideToolbarDelay()V

    .line 3240
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/FilmstripFragment;->validatePosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->isAttachedToGallery()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3243
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v3, "setWallpaper() - Position: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3246
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v2, p1}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    .line 3247
    .local v1, "media":Lcom/oneplus/gallery2/media/Media;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.ATTACH_DATA"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3248
    .local v0, "intent":Landroid/content/Intent;
    invoke-interface {v1}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "image/*"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 3249
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3250
    const v2, 0x7f090014

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/FilmstripFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x68

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/gallery2/FilmstripFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private sharePage(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 3258
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->hideToolbarDelay()V

    .line 3265
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/FilmstripFragment;->validatePosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->isAttachedToGallery()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3271
    :cond_0
    :goto_0
    return-void

    .line 3269
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v1, p1}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    .line 3270
    .local v0, "media":Lcom/oneplus/gallery2/media/Media;
    invoke-virtual {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oneplus/gallery2/Gallery;->shareMedia(Lcom/oneplus/gallery2/media/Media;)Z

    goto :goto_0
.end method

.method private showHideToolbar()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3276
    sget-object v2, Lcom/oneplus/gallery2/FilmstripFragment$30;->$SwitchMap$com$oneplus$gallery2$FilmstripFragment$FilmstripState:[I

    iget-object v3, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripState:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;

    invoke-virtual {v3}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v1, v0

    .line 3283
    :goto_0
    return v1

    .line 3280
    :pswitch_0
    iget-boolean v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsToolbarVisible:Z

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/oneplus/gallery2/FilmstripFragment;->setToolbarVisibility(ZZ)V

    goto :goto_0

    .line 3276
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private showMovieDrawable(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;)V
    .locals 2
    .param p1, "item"    # Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    .prologue
    .line 3293
    if-nez p1, :cond_1

    .line 3312
    :cond_0
    :goto_0
    return-void

    .line 3295
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    if-nez v0, :cond_3

    .line 3296
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/FilmstripFragment;->prepareMovieDrawable(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;)V

    .line 3305
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    if-eqz v0, :cond_0

    .line 3308
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v1, "showMovieDrawable()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3309
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    invoke-virtual {v0}, Lcom/oneplus/drawable/MovieDrawable;->start()V

    .line 3310
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    invoke-virtual {p1}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->getMediumResThumb()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/drawable/MovieDrawable;->setThumbnailBitmap(Landroid/graphics/Bitmap;)V

    .line 3311
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    invoke-virtual {p1, v0}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3299
    :cond_3
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/FilmstripFragment;->isItemSourceSameAsMovieDrawable(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3301
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/FilmstripFragment;->releaseMovieDrawable(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;)V

    .line 3302
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/FilmstripFragment;->prepareMovieDrawable(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;)V

    goto :goto_1
.end method

.method private showPageDetails(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 3319
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->hideToolbarDelay()V

    .line 3326
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/FilmstripFragment;->validatePosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->isAttachedToGallery()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3354
    :cond_0
    :goto_0
    return-void

    .line 3330
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v0

    .line 3331
    .local v0, "activity":Lcom/oneplus/gallery2/GalleryActivity;
    if-eqz v0, :cond_0

    .line 3335
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaDetailsDialog:Lcom/oneplus/gallery2/MediaDetailsDialog;

    if-eqz v2, :cond_2

    .line 3337
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v3, "showDetails() - m_MediaDetailsDialog is not null."

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3342
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v2, p1}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    .line 3343
    .local v1, "media":Lcom/oneplus/gallery2/media/Media;
    new-instance v2, Lcom/oneplus/gallery2/MediaDetailsDialog;

    invoke-direct {v2, v0, v1}, Lcom/oneplus/gallery2/MediaDetailsDialog;-><init>(Lcom/oneplus/base/BaseActivity;Lcom/oneplus/gallery2/media/Media;)V

    iput-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaDetailsDialog:Lcom/oneplus/gallery2/MediaDetailsDialog;

    .line 3344
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaDetailsDialog:Lcom/oneplus/gallery2/MediaDetailsDialog;

    new-instance v3, Lcom/oneplus/gallery2/FilmstripFragment$25;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery2/FilmstripFragment$25;-><init>(Lcom/oneplus/gallery2/FilmstripFragment;)V

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery2/MediaDetailsDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/oneplus/gallery2/MediaDetailsDialog;

    .line 3353
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaDetailsDialog:Lcom/oneplus/gallery2/MediaDetailsDialog;

    invoke-virtual {v2}, Lcom/oneplus/gallery2/MediaDetailsDialog;->show()V

    goto :goto_0
.end method

.method private updateActionBarMenu()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3360
    iget-object v4, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ActionBar:Landroid/widget/Toolbar;

    if-nez v4, :cond_1

    .line 3385
    :cond_0
    :goto_0
    return-void

    .line 3362
    :cond_1
    iget-object v4, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ActionBar:Landroid/widget/Toolbar;

    invoke-virtual {v4}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3364
    iget-object v4, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ActionBar:Landroid/widget/Toolbar;

    invoke-virtual {v4}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v4

    const v5, 0x7f06009d

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 3365
    .local v2, "setWallpaperItem":Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ActionBar:Landroid/widget/Toolbar;

    invoke-virtual {v4}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v4

    const v5, 0x7f06009f

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 3366
    .local v3, "showPageDetailsItem":Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ActionBar:Landroid/widget/Toolbar;

    invoke-virtual {v4}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v4

    const v5, 0x7f06009e

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 3367
    .local v0, "addToalbumItem":Landroid/view/MenuItem;
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->isHydrogenLauncher()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/oneplus/base/Device;->isHydrogenOS()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3369
    :cond_2
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3383
    :cond_3
    :goto_1
    sget-object v4, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_IS_READ_ONLY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/gallery2/FilmstripFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3384
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 3374
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->getCurrentMedia()Lcom/oneplus/gallery2/media/Media;

    move-result-object v1

    .line 3375
    .local v1, "media":Lcom/oneplus/gallery2/media/Media;
    if-eqz v1, :cond_3

    .line 3377
    instance-of v4, v1, Lcom/oneplus/gallery2/media/VideoMedia;

    if-eqz v4, :cond_5

    .line 3378
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 3380
    :cond_5
    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method private updateBurstInfoVisibility()V
    .locals 3

    .prologue
    .line 3391
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripItems:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    .line 3393
    .local v1, "item":Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    invoke-virtual {v1}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->getMedia()Lcom/oneplus/gallery2/media/Media;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3394
    invoke-virtual {v1}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->updateBurstContainerInfo()V

    goto :goto_0

    .line 3396
    .end local v1    # "item":Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    :cond_1
    return-void
.end method

.method private updateCollectButtonSelection()V
    .locals 3

    .prologue
    .line 3403
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripView:Lcom/oneplus/widget/FilmstripView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-nez v1, :cond_1

    .line 3416
    :cond_0
    :goto_0
    return-void

    .line 3407
    :cond_1
    iget v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CurrentMediaIndex:I

    if-gez v1, :cond_2

    .line 3409
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CollectButton:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 3412
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    iget v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CurrentMediaIndex:I

    invoke-interface {v1, v2}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    .line 3415
    .local v0, "media":Lcom/oneplus/gallery2/media/Media;
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CollectButton:Landroid/view/View;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/Media;->isFavorite()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0
.end method

.method private updateCollectButtonVisibility()V
    .locals 2

    .prologue
    .line 3422
    iget-boolean v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsToolbarVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CollectButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3425
    sget-object v0, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_IS_READ_ONLY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/FilmstripFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3426
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CollectButtonContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3430
    :cond_0
    :goto_0
    return-void

    .line 3428
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CollectButtonContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateDeleteButtonVisibility()V
    .locals 2

    .prologue
    .line 3436
    iget-boolean v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsToolbarVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_DeleteButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3439
    sget-object v0, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_IS_READ_ONLY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/FilmstripFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3440
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_DeleteButtonContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3444
    :cond_0
    :goto_0
    return-void

    .line 3442
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_DeleteButtonContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateEditButtonVisibility()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 3450
    iget-boolean v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsToolbarVisible:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_EditorButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 3453
    sget-object v2, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_IS_READ_ONLY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/FilmstripFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3455
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_EditorButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3478
    :cond_0
    :goto_0
    return-void

    .line 3460
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->isActionEditSupported()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3462
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_EditorButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3467
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 3469
    iget v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CurrentMediaIndex:I

    .line 3470
    .local v1, "position":I
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3472
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v2, v1}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v0, v2, Lcom/oneplus/gallery2/media/VideoMedia;

    .line 3473
    .local v0, "isVideo":Z
    if-eqz v0, :cond_3

    .line 3474
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_EditorButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3476
    :cond_3
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_EditorButtonContainer:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateFilmstripScrollMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3672
    sget-object v0, Lcom/oneplus/gallery2/FilmstripFragment$30;->$SwitchMap$com$oneplus$gallery2$FilmstripFragment$FilmstripState:[I

    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripState:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3686
    :goto_0
    return-void

    .line 3675
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/oneplus/gallery2/FilmstripFragment;->setFilmstripScrollMode(I)V

    goto :goto_0

    .line 3679
    :pswitch_1
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/FilmstripFragment;->setFilmstripScrollMode(I)V

    goto :goto_0

    .line 3683
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/oneplus/gallery2/FilmstripFragment;->setFilmstripScrollMode(I)V

    goto :goto_0

    .line 3672
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateToolbarMargins()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 3485
    iget-object v6, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_HeaderContainer:Landroid/view/View;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FooterContainer:Landroid/view/View;

    if-nez v6, :cond_1

    .line 3517
    :cond_0
    :goto_0
    return-void

    .line 3487
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v1

    .line 3488
    .local v1, "galleryActivity":Lcom/oneplus/gallery2/GalleryActivity;
    if-eqz v1, :cond_0

    .line 3491
    invoke-virtual {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v6

    sget-object v7, Lcom/oneplus/gallery2/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v6, v7}, Lcom/oneplus/gallery2/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 3492
    .local v3, "isNavbarVisible":Z
    iget-object v6, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v7, "updateToolbarMargins() - Navigation bar visible: "

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3495
    sget-object v6, Lcom/oneplus/gallery2/GalleryActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v6}, Lcom/oneplus/gallery2/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/base/ScreenSize;

    .line 3496
    .local v5, "screenSize":Lcom/oneplus/base/ScreenSize;
    iget-object v6, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_HeaderContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3497
    .local v2, "headerParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v6, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FooterContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3498
    .local v0, "footerParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v3, :cond_3

    .line 3500
    invoke-virtual {v5}, Lcom/oneplus/base/ScreenSize;->getNavigationBarSize()I

    move-result v4

    .line 3501
    .local v4, "naviHeight":I
    invoke-virtual {v5}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Lcom/oneplus/base/ScreenSize;->getHeight()I

    move-result v7

    if-le v6, v7, :cond_2

    .line 3503
    iget v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v8, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v2, v6, v7, v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 3504
    iget v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v6, v7, v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 3508
    :cond_2
    iget v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v8, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v2, v6, v7, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 3509
    iget v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/lit8 v8, v4, 0x0

    invoke-virtual {v0, v6, v7, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 3514
    .end local v4    # "naviHeight":I
    :cond_3
    iget v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v8, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v2, v6, v7, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 3515
    iget v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v6, v7, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method private updateToolbarVisibility(Z)V
    .locals 9
    .param p1, "animation"    # Z

    .prologue
    const/16 v8, 0x8

    const-wide/16 v6, 0x96

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 3524
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_HeaderContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FooterContainer:Landroid/view/View;

    if-nez v0, :cond_1

    .line 3665
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 3527
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v1, "updateToolbarVisibility() - Visible: "

    iget-boolean v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsToolbarVisible:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3530
    sget-object v0, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/FilmstripFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/base/BaseFragment$State;->RUNNING:Lcom/oneplus/base/BaseFragment$State;

    if-ne v0, v1, :cond_2

    .line 3531
    iget-boolean v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsToolbarVisible:Z

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/FilmstripFragment;->setSystemUiVisibility(Z)V

    .line 3534
    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsToolbarVisible:Z

    if-eqz v0, :cond_4

    .line 3536
    if-eqz p1, :cond_3

    .line 3538
    sget-object v0, Lcom/oneplus/gallery2/FilmstripFragment$30;->$SwitchMap$com$oneplus$gallery2$FilmstripFragment$ViewVisibilityState:[I

    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ToolbarVisibilityState:Lcom/oneplus/gallery2/FilmstripFragment$ViewVisibilityState;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/FilmstripFragment$ViewVisibilityState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3562
    :goto_1
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_HeaderContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/gallery2/FilmstripFragment$26;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery2/FilmstripFragment$26;-><init>(Lcom/oneplus/gallery2/FilmstripFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3573
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FooterContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/gallery2/FilmstripFragment$27;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery2/FilmstripFragment$27;-><init>(Lcom/oneplus/gallery2/FilmstripFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3584
    sget-object v0, Lcom/oneplus/gallery2/FilmstripFragment$ViewVisibilityState;->IN_ANIMATING:Lcom/oneplus/gallery2/FilmstripFragment$ViewVisibilityState;

    iput-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ToolbarVisibilityState:Lcom/oneplus/gallery2/FilmstripFragment$ViewVisibilityState;

    goto :goto_0

    .line 3542
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_HeaderContainer:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3543
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_HeaderContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 3546
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FooterContainer:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3547
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FooterContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 3552
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_HeaderContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3553
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FooterContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_1

    .line 3589
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_HeaderContainer:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3590
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_HeaderContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 3593
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FooterContainer:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3594
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FooterContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 3597
    sget-object v0, Lcom/oneplus/gallery2/FilmstripFragment$ViewVisibilityState;->VISIBLE:Lcom/oneplus/gallery2/FilmstripFragment$ViewVisibilityState;

    iput-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ToolbarVisibilityState:Lcom/oneplus/gallery2/FilmstripFragment$ViewVisibilityState;

    .line 3598
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->hideToolbarDelay()V

    goto/16 :goto_0

    .line 3604
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->cancelHideToolbar()V

    .line 3607
    if-eqz p1, :cond_5

    .line 3609
    sget-object v0, Lcom/oneplus/gallery2/FilmstripFragment$30;->$SwitchMap$com$oneplus$gallery2$FilmstripFragment$ViewVisibilityState:[I

    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ToolbarVisibilityState:Lcom/oneplus/gallery2/FilmstripFragment$ViewVisibilityState;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/FilmstripFragment$ViewVisibilityState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 3631
    :goto_2
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_HeaderContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/gallery2/FilmstripFragment$28;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery2/FilmstripFragment$28;-><init>(Lcom/oneplus/gallery2/FilmstripFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3642
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FooterContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/gallery2/FilmstripFragment$29;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery2/FilmstripFragment$29;-><init>(Lcom/oneplus/gallery2/FilmstripFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3653
    sget-object v0, Lcom/oneplus/gallery2/FilmstripFragment$ViewVisibilityState;->OUT_ANIMATING:Lcom/oneplus/gallery2/FilmstripFragment$ViewVisibilityState;

    iput-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ToolbarVisibilityState:Lcom/oneplus/gallery2/FilmstripFragment$ViewVisibilityState;

    goto/16 :goto_0

    .line 3613
    :pswitch_3
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_HeaderContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 3616
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FooterContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 3621
    :pswitch_4
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_HeaderContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3622
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FooterContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_2

    .line 3658
    :cond_5
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_HeaderContainer:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 3659
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FooterContainer:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 3662
    sget-object v0, Lcom/oneplus/gallery2/FilmstripFragment$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery2/FilmstripFragment$ViewVisibilityState;

    iput-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ToolbarVisibilityState:Lcom/oneplus/gallery2/FilmstripFragment$ViewVisibilityState;

    goto/16 :goto_0

    .line 3538
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 3609
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private validatePosition(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 3692
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 3693
    const/4 v0, 0x1

    .line 3694
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 1515
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_CURRENT_MEDIA_INDEX:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 1516
    iget v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CurrentMediaIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1521
    :goto_0
    return-object v0

    .line 1517
    :cond_0
    sget-object v0, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_FILMSTRIP_STATE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1

    .line 1518
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripState:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;

    goto :goto_0

    .line 1519
    :cond_1
    sget-object v0, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_2

    .line 1520
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    goto :goto_0

    .line 1521
    :cond_2
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/GalleryFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1552
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1570
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/GalleryFragment;->handleMessage(Landroid/os/Message;)V

    .line 1573
    :goto_0
    return-void

    .line 1555
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_0

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/oneplus/gallery2/FilmstripFragment;->onAnimationStateChecked(Lcom/oneplus/gallery2/media/Media;Z)V

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    .line 1559
    :sswitch_1
    invoke-direct {p0, v2, v1}, Lcom/oneplus/gallery2/FilmstripFragment;->setToolbarVisibility(ZZ)V

    goto :goto_0

    .line 1564
    :sswitch_2
    const/16 v0, 0x271a

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 1565
    const/16 v0, 0x271b

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 1566
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->deleteMediaFromRecycler()V

    goto :goto_0

    .line 1552
    nop

    :sswitch_data_0
    .sparse-switch
        0x2711 -> :sswitch_1
        0x271a -> :sswitch_2
        0x271b -> :sswitch_2
        0x2725 -> :sswitch_0
    .end sparse-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    const/4 v6, 0x0

    .line 1719
    packed-switch p1, :pswitch_data_0

    .line 1781
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->hideToolbarDelay()V

    .line 1782
    :cond_1
    return-void

    .line 1723
    :pswitch_0
    if-ne p2, v3, :cond_0

    .line 1726
    if-eqz p3, :cond_1

    .line 1728
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1729
    .local v0, "contentUri":Landroid/net/Uri;
    if-eqz v0, :cond_1

    .line 1733
    invoke-direct {p0, v0, v6}, Lcom/oneplus/gallery2/FilmstripFragment;->setPageToContentUri(Landroid/net/Uri;Z)V

    goto :goto_0

    .line 1739
    .end local v0    # "contentUri":Landroid/net/Uri;
    :pswitch_1
    if-ne p2, v3, :cond_0

    .line 1742
    if-eqz p3, :cond_1

    .line 1744
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1745
    .restart local v0    # "contentUri":Landroid/net/Uri;
    :goto_1
    if-eqz v0, :cond_1

    .line 1748
    iget-object v3, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v4, "onActivityResult() - Wallpaper is set: "

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1751
    invoke-direct {p0, v0, v6}, Lcom/oneplus/gallery2/FilmstripFragment;->setPageToContentUri(Landroid/net/Uri;Z)V

    goto :goto_0

    .line 1744
    .end local v0    # "contentUri":Landroid/net/Uri;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1758
    :pswitch_2
    if-eqz p3, :cond_1

    .line 1761
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1762
    .restart local v0    # "contentUri":Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/FilmstripFragment;->searchMediaListIndex(Landroid/net/Uri;)I

    move-result v2

    .line 1763
    .local v2, "position":I
    if-ltz v2, :cond_1

    .line 1766
    const-string v3, "IsCollected"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1768
    const-string v3, "IsCollected"

    invoke-virtual {p3, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1769
    .local v1, "isCollected":Z
    iget-object v3, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v4, "onActivityResult() - Is collected: "

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1770
    iget-object v3, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CollectButton:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 1771
    iget-object v3, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CollectButton:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1774
    :cond_3
    invoke-direct {p0, v0, v6}, Lcom/oneplus/gallery2/FilmstripFragment;->setPageToContentUri(Landroid/net/Uri;Z)V

    goto :goto_0

    .line 1719
    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onActivityStart()V
    .locals 1

    .prologue
    .line 1790
    invoke-super {p0}, Lcom/oneplus/gallery2/GalleryFragment;->onActivityStart()V

    .line 1793
    const/16 v0, 0x271b

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 1794
    return-void
.end method

.method protected onActivityStop()V
    .locals 4

    .prologue
    .line 1802
    const/16 v0, 0x271b

    const/4 v1, 0x1

    const-wide/16 v2, 0x12c

    invoke-static {p0, v0, v1, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 1805
    invoke-super {p0}, Lcom/oneplus/gallery2/GalleryFragment;->onActivityStop()V

    .line 1806
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1840
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/GalleryFragment;->onAttach(Landroid/app/Activity;)V

    .line 1843
    invoke-virtual {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v0

    .line 1844
    .local v0, "galleryActivity":Lcom/oneplus/gallery2/GalleryActivity;
    sget-object v1, Lcom/oneplus/gallery2/GalleryActivity;->PROP_IS_WINDOW_FOCUSED:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_WindowFocusChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/GalleryActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1845
    instance-of v1, v0, Lcom/oneplus/base/SnackBarHost;

    if-eqz v1, :cond_0

    .line 1846
    check-cast v0, Lcom/oneplus/base/SnackBarHost;

    .end local v0    # "galleryActivity":Lcom/oneplus/gallery2/GalleryActivity;
    sget-object v1, Lcom/oneplus/base/SnackBarHost;->PROP_SNACKBAR_VISIBLE_HEIGHT:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_SnackbarVisibleHeightChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/base/SnackBarHost;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1847
    :cond_0
    return-void
.end method

.method protected onAttachToGallery(Lcom/oneplus/gallery2/Gallery;)V
    .locals 2
    .param p1, "gallery"    # Lcom/oneplus/gallery2/Gallery;

    .prologue
    .line 1855
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/GalleryFragment;->onAttachToGallery(Lcom/oneplus/gallery2/Gallery;)V

    .line 1858
    sget-object v0, Lcom/oneplus/gallery2/Gallery;->PROP_IS_SHARING_MEDIA:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsSharingMediaCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery2/Gallery;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1859
    sget-object v0, Lcom/oneplus/gallery2/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsNavigationBarVisibleCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery2/Gallery;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1860
    sget-object v0, Lcom/oneplus/gallery2/Gallery;->PROP_IS_DELETING_MEDIA:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsDeletingMediaCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery2/Gallery;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1863
    invoke-static {}, Lcom/oneplus/gallery2/GalleryApplication;->current()Lcom/oneplus/gallery2/GalleryApplication;

    move-result-object v0

    const-class v1, Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/GalleryApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    iput-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    .line 1864
    return-void
.end method

.method protected onBackToInitialUIState()V
    .locals 2

    .prologue
    .line 1872
    invoke-super {p0}, Lcom/oneplus/gallery2/GalleryFragment;->onBackToInitialUIState()V

    .line 1875
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1876
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->deleteMediaFromRecycler()V

    .line 1879
    :cond_0
    sget-object v0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/FilmstripFragment;->setFilmstripState(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;)V

    .line 1882
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_PreferredContentUri:Landroid/net/Uri;

    .line 1885
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/gallery2/FilmstripFragment;->setToolbarVisibility(ZZ)V

    .line 1886
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    .line 1894
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/GalleryFragment;->onCreate(Landroid/os/Bundle;)V

    .line 1897
    invoke-static {}, Lcom/oneplus/gallery2/GalleryApplication;->current()Lcom/oneplus/gallery2/GalleryApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/gallery2/GalleryApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1898
    .local v4, "res":Landroid/content/res/Resources;
    const v5, 0x7f080013

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1899
    .local v1, "fakePhotoWidth":I
    const v5, 0x7f080014

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1900
    .local v0, "fakePhotoHeight":I
    const v5, 0x7f080011

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 1901
    .local v3, "fakeVideoWidth":I
    const v5, 0x7f080012

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 1902
    .local v2, "fakeVideoHeight":I
    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v1, v0}, Landroid/util/Size;-><init>(II)V

    iput-object v5, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FakePhotoSize:Landroid/util/Size;

    .line 1903
    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v3, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v5, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FakeVideoSize:Landroid/util/Size;

    .line 1906
    invoke-static {}, Lcom/oneplus/gallery2/GalleryApplication;->current()Lcom/oneplus/gallery2/GalleryApplication;

    move-result-object v5

    const-class v6, Lcom/oneplus/gallery2/AppTracker;

    invoke-virtual {v5, v6}, Lcom/oneplus/gallery2/GalleryApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery2/AppTracker;

    iput-object v5, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_AppTracker:Lcom/oneplus/gallery2/AppTracker;

    .line 1909
    sget-object v5, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_CURRENT_MEDIA_INDEX:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5, v7}, Lcom/oneplus/gallery2/FilmstripFragment;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 1910
    sget-object v5, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5, v7}, Lcom/oneplus/gallery2/FilmstripFragment;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 1911
    sget-object v5, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_FILMSTRIP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5, v7}, Lcom/oneplus/gallery2/FilmstripFragment;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 1912
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 1919
    iget-object v5, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v6, "onCreateView() - Fragment: "

    invoke-virtual {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1922
    const v5, 0x7f03000e

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1923
    .local v4, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f050052

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ActionBarHeight:I

    .line 1924
    const v5, 0x7f060039

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/oneplus/widget/FilmstripView;

    iput-object v5, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripView:Lcom/oneplus/widget/FilmstripView;

    .line 1925
    iget-object v5, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripView:Lcom/oneplus/widget/FilmstripView;

    iget-object v6, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripAdapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v5, v6}, Lcom/oneplus/widget/FilmstripView;->setAdapter(Lcom/oneplus/widget/FilmstripView$Adapter;)V

    .line 1926
    iget-object v5, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripView:Lcom/oneplus/widget/FilmstripView;

    iget-object v6, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v5, v6}, Lcom/oneplus/widget/FilmstripView;->setScrollListener(Lcom/oneplus/widget/FilmstripView$ScrollListener;)V

    .line 1927
    iget-object v5, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripView:Lcom/oneplus/widget/FilmstripView;

    new-instance v6, Lcom/oneplus/gallery2/FilmstripFragment$18;

    invoke-direct {v6, p0}, Lcom/oneplus/gallery2/FilmstripFragment$18;-><init>(Lcom/oneplus/gallery2/FilmstripFragment;)V

    invoke-virtual {v5, v6}, Lcom/oneplus/widget/FilmstripView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1949
    iget-object v5, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CurrentMediaIndex:I

    if-ltz v5, :cond_0

    iget v5, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CurrentMediaIndex:I

    iget-object v6, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v6}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-gt v5, v6, :cond_0

    .line 1952
    iget-object v5, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripView:Lcom/oneplus/widget/FilmstripView;

    iget v6, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CurrentMediaIndex:I

    invoke-virtual {v5, v6, v8}, Lcom/oneplus/widget/FilmstripView;->setCurrentItem(IZ)V

    .line 1953
    iget v5, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CurrentMediaIndex:I

    invoke-direct {p0, v5}, Lcom/oneplus/gallery2/FilmstripFragment;->checkImageDecoding(I)V

    .line 1957
    :cond_0
    const v5, 0x7f06003a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_HeaderContainer:Landroid/view/View;

    .line 1958
    iget-object v5, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_HeaderContainer:Landroid/view/View;

    const v6, 0x7f06003b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Toolbar;

    iput-object v5, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ActionBar:Landroid/widget/Toolbar;

    .line 1959
    iget-object v5, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ActionBar:Landroid/widget/Toolbar;

    const v6, 0x7f0b0001

    invoke-virtual {v5, v6}, Landroid/widget/Toolbar;->inflateMenu(I)V

    .line 1960
    iget-object v5, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ActionBar:Landroid/widget/Toolbar;

    invoke-virtual {v5, v8}, Landroid/widget/Toolbar;->setBackgroundColor(I)V

    .line 1961
    iget-object v5, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ActionBar:Landroid/widget/Toolbar;

    const v6, 0x7f020060

    invoke-virtual {v5, v6}, Landroid/widget/Toolbar;->setNavigationIcon(I)V

    .line 1962
    iget-object v5, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ActionBar:Landroid/widget/Toolbar;

    new-instance v6, Lcom/oneplus/gallery2/FilmstripFragment$19;

    invoke-direct {v6, p0}, Lcom/oneplus/gallery2/FilmstripFragment$19;-><init>(Lcom/oneplus/gallery2/FilmstripFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/Toolbar;->setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V

    .line 2003
    iget-object v5, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ActionBar:Landroid/widget/Toolbar;

    new-instance v6, Lcom/oneplus/gallery2/FilmstripFragment$20;

    invoke-direct {v6, p0}, Lcom/oneplus/gallery2/FilmstripFragment$20;-><init>(Lcom/oneplus/gallery2/FilmstripFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2013
    invoke-virtual {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v0

    .line 2014
    .local v0, "galleryActivity":Lcom/oneplus/gallery2/GalleryActivity;
    sget-object v5, Lcom/oneplus/gallery2/GalleryActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v5}, Lcom/oneplus/gallery2/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/base/ScreenSize;

    .line 2015
    .local v2, "screenSize":Lcom/oneplus/base/ScreenSize;
    iget-object v5, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ActionBar:Landroid/widget/Toolbar;

    invoke-virtual {v5}, Landroid/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2016
    .local v1, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v2}, Lcom/oneplus/base/ScreenSize;->getStatusBarSize()I

    move-result v5

    invoke-virtual {v1, v8, v5, v8, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 2019
    const v5, 0x7f06003c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FooterContainer:Landroid/view/View;

    .line 2020
    instance-of v5, v0, Lcom/oneplus/base/SnackBarHost;

    if-eqz v5, :cond_1

    .line 2022
    check-cast v0, Lcom/oneplus/base/SnackBarHost;

    .end local v0    # "galleryActivity":Lcom/oneplus/gallery2/GalleryActivity;
    sget-object v5, Lcom/oneplus/base/SnackBarHost;->PROP_SNACKBAR_VISIBLE_HEIGHT:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v5}, Lcom/oneplus/base/SnackBarHost;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 2023
    .local v3, "snackbarHeight":F
    iget-object v5, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FooterContainer:Landroid/view/View;

    neg-float v6, v3

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 2025
    .end local v3    # "snackbarHeight":F
    :cond_1
    const v5, 0x7f06003d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ShareButton:Landroid/view/View;

    .line 2026
    iget-object v5, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ShareButton:Landroid/view/View;

    new-instance v6, Lcom/oneplus/gallery2/FilmstripFragment$21;

    invoke-direct {v6, p0}, Lcom/oneplus/gallery2/FilmstripFragment$21;-><init>(Lcom/oneplus/gallery2/FilmstripFragment;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2034
    const v5, 0x7f06003e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CollectButtonContainer:Landroid/view/View;

    .line 2035
    const v5, 0x7f06003f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CollectButton:Landroid/view/View;

    .line 2036
    iget-object v5, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CollectButton:Landroid/view/View;

    new-instance v6, Lcom/oneplus/gallery2/FilmstripFragment$22;

    invoke-direct {v6, p0}, Lcom/oneplus/gallery2/FilmstripFragment$22;-><init>(Lcom/oneplus/gallery2/FilmstripFragment;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2045
    const v5, 0x7f060040

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_EditorButtonContainer:Landroid/view/View;

    .line 2046
    const v5, 0x7f060041

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_EditorButton:Landroid/view/View;

    .line 2047
    iget-object v5, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_EditorButton:Landroid/view/View;

    new-instance v6, Lcom/oneplus/gallery2/FilmstripFragment$23;

    invoke-direct {v6, p0}, Lcom/oneplus/gallery2/FilmstripFragment$23;-><init>(Lcom/oneplus/gallery2/FilmstripFragment;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2055
    const v5, 0x7f060042

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_DeleteButtonContainer:Landroid/view/View;

    .line 2056
    const v5, 0x7f060043

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_DeleteButton:Landroid/view/View;

    .line 2057
    iget-object v5, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_DeleteButton:Landroid/view/View;

    new-instance v6, Lcom/oneplus/gallery2/FilmstripFragment$24;

    invoke-direct {v6, p0}, Lcom/oneplus/gallery2/FilmstripFragment$24;-><init>(Lcom/oneplus/gallery2/FilmstripFragment;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2067
    iget-boolean v5, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsToolbarVisible:Z

    if-eqz v5, :cond_2

    .line 2068
    const/4 v5, 0x1

    invoke-direct {p0, v5, v8}, Lcom/oneplus/gallery2/FilmstripFragment;->setToolbarVisibility(ZZ)V

    .line 2071
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->updateToolbarMargins()V

    .line 2074
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->updateCollectButtonSelection()V

    .line 2077
    sget-object v5, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;

    invoke-direct {p0, v5}, Lcom/oneplus/gallery2/FilmstripFragment;->setFilmstripState(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripState;)V

    .line 2079
    return-object v4
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 2142
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->deleteMediaFromRecycler()V

    .line 2145
    invoke-virtual {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v0

    .line 2146
    .local v0, "gallery":Lcom/oneplus/gallery2/Gallery;
    if-eqz v0, :cond_0

    .line 2148
    sget-object v1, Lcom/oneplus/gallery2/Gallery;->PROP_IS_SHARING_MEDIA:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsSharingMediaCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/Gallery;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2149
    sget-object v1, Lcom/oneplus/gallery2/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsNavigationBarVisibleCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/Gallery;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2150
    sget-object v1, Lcom/oneplus/gallery2/Gallery;->PROP_IS_DELETING_MEDIA:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsDeletingMediaCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/Gallery;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2152
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaChangeCallbackTarget:Lcom/oneplus/gallery2/media/MediaSource;

    .line 2153
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

    .line 2156
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_AsyncHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 2159
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaManagerCallbackHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 2162
    invoke-super {p0}, Lcom/oneplus/gallery2/GalleryFragment;->onDestroy()V

    .line 2163
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2170
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroyView()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2173
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripView:Lcom/oneplus/widget/FilmstripView;

    if-eqz v0, :cond_0

    .line 2175
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripView:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v0, v2}, Lcom/oneplus/widget/FilmstripView;->setAdapter(Lcom/oneplus/widget/FilmstripView$Adapter;)V

    .line 2176
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripView:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v0, v2}, Lcom/oneplus/widget/FilmstripView;->setScrollListener(Lcom/oneplus/widget/FilmstripView$ScrollListener;)V

    .line 2177
    iput-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripView:Lcom/oneplus/widget/FilmstripView;

    .line 2181
    :cond_0
    invoke-super {p0}, Lcom/oneplus/gallery2/GalleryFragment;->onDestroyView()V

    .line 2182
    return-void
.end method

.method public onDetach()V
    .locals 3

    .prologue
    .line 2190
    invoke-virtual {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v0

    .line 2191
    .local v0, "galleryActivity":Lcom/oneplus/gallery2/GalleryActivity;
    sget-object v1, Lcom/oneplus/gallery2/GalleryActivity;->PROP_IS_WINDOW_FOCUSED:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_WindowFocusChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/GalleryActivity;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2192
    instance-of v1, v0, Lcom/oneplus/base/SnackBarHost;

    if-eqz v1, :cond_0

    .line 2193
    check-cast v0, Lcom/oneplus/base/SnackBarHost;

    .end local v0    # "galleryActivity":Lcom/oneplus/gallery2/GalleryActivity;
    sget-object v1, Lcom/oneplus/base/SnackBarHost;->PROP_SNACKBAR_VISIBLE_HEIGHT:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_SnackbarVisibleHeightChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/base/SnackBarHost;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2196
    :cond_0
    invoke-super {p0}, Lcom/oneplus/gallery2/GalleryFragment;->onDetach()V

    .line 2197
    return-void
.end method

.method protected onNavigationBarVisibilityChanged(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 2482
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->updateToolbarMargins()V

    .line 2485
    iget-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_FilmstripItems:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    .line 2487
    .local v1, "item":Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    invoke-virtual {v1}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->updateBurstContainerMargin()V

    goto :goto_0

    .line 2489
    .end local v1    # "item":Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2496
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2499
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->cancelHideToolbar()V

    .line 2502
    iput-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsActionEditSupported:Ljava/lang/Boolean;

    .line 2503
    iput-object v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsHydrogenLauncher:Ljava/lang/Boolean;

    .line 2506
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ThumbManagerActivateHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ThumbManagerActivateHandle:Lcom/oneplus/base/Handle;

    .line 2509
    invoke-super {p0}, Lcom/oneplus/gallery2/GalleryFragment;->onPause()V

    .line 2510
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2590
    invoke-super {p0}, Lcom/oneplus/gallery2/GalleryFragment;->onResume()V

    .line 2592
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2595
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ThumbManagerActivateHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    if-eqz v0, :cond_0

    .line 2596
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    invoke-interface {v0, v2}, Lcom/oneplus/gallery2/media/ThumbnailImageManager;->activate(I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_ThumbManagerActivateHandle:Lcom/oneplus/base/Handle;

    .line 2599
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->updateActionBarMenu()V

    .line 2602
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->hideToolbarDelay()V

    .line 2605
    iget-boolean v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsToolbarVisible:Z

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/FilmstripFragment;->setSystemUiVisibility(Z)V

    .line 2608
    iput-boolean v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsInstanceStateSaved:Z

    .line 2609
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 2616
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v1, "onSaveInstanceState()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2617
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsInstanceStateSaved:Z

    .line 2618
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/GalleryFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2619
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 2851
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v2, "onStart()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2854
    invoke-super {p0}, Lcom/oneplus/gallery2/GalleryFragment;->onStart()V

    .line 2857
    iget v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CurrentMediaIndex:I

    if-ltz v1, :cond_0

    .line 2859
    iget v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CurrentMediaIndex:I

    invoke-direct {p0, v1}, Lcom/oneplus/gallery2/FilmstripFragment;->findFilmstripItemFromPosition(I)Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    move-result-object v0

    .line 2860
    .local v0, "filmstripItem":Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    if-eqz v0, :cond_0

    .line 2862
    iget v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CurrentMediaIndex:I

    invoke-direct {p0, v1}, Lcom/oneplus/gallery2/FilmstripFragment;->checkImageDecoding(I)V

    .line 2863
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsCurrentMediaAnimation:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsCurrentMediaAnimation:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2864
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/FilmstripFragment;->showMovieDrawable(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;)V

    .line 2870
    .end local v0    # "filmstripItem":Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    :cond_0
    :goto_0
    return-void

    .line 2865
    .restart local v0    # "filmstripItem":Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    :cond_1
    invoke-virtual {v0}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->getImageDecodeState()Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;

    move-result-object v1

    sget-object v2, Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;->LARGE_IMAGE_DECODED:Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->getImageBoundsType()Lcom/oneplus/widget/ScaleImageView$BoundsType;

    move-result-object v1

    sget-object v2, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    if-eq v1, v2, :cond_0

    .line 2867
    :cond_2
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/FilmstripFragment;->decodeHighResolutionImage(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2877
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v2, "onStop()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2880
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->cancelDecodingImages()V

    .line 2883
    iget v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CurrentMediaIndex:I

    if-ltz v1, :cond_0

    .line 2885
    iget v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_CurrentMediaIndex:I

    invoke-direct {p0, v1}, Lcom/oneplus/gallery2/FilmstripFragment;->findFilmstripItemFromPosition(I)Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    move-result-object v0

    .line 2886
    .local v0, "filmstripItem":Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    if-eqz v0, :cond_0

    .line 2887
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/FilmstripFragment;->releaseMovieDrawable(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;)V

    .line 2891
    .end local v0    # "filmstripItem":Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsInstanceStateSaved:Z

    if-nez v1, :cond_1

    .line 2894
    invoke-direct {p0, v3, v3}, Lcom/oneplus/gallery2/FilmstripFragment;->setToolbarVisibility(ZZ)V

    .line 2897
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/FilmstripFragment;->setSystemUiVisibility(Z)V

    .line 2900
    invoke-direct {p0}, Lcom/oneplus/gallery2/FilmstripFragment;->resetFilmstripState()V

    .line 2906
    :goto_0
    invoke-super {p0}, Lcom/oneplus/gallery2/GalleryFragment;->onStop()V

    .line 2907
    return-void

    .line 2903
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v2, "onStop() - Instance state saved, prevent resetting state"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 3
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
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3066
    sget-object v2, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_CURRENT_MEDIA_INDEX:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v2, :cond_0

    .line 3067
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2, v0}, Lcom/oneplus/gallery2/FilmstripFragment;->setCurrentMediaIndexProp(Ljava/lang/Integer;Z)Z

    move-result v0

    .line 3079
    :goto_0
    return v0

    .line 3068
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_0
    sget-object v2, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_IS_READ_ONLY:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v2, :cond_2

    .line 3070
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery2/GalleryFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3072
    iget-boolean v2, p0, Lcom/oneplus/gallery2/FilmstripFragment;->m_IsToolbarVisible:Z

    invoke-direct {p0, v2, v1}, Lcom/oneplus/gallery2/FilmstripFragment;->setToolbarVisibility(ZZ)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 3075
    goto :goto_0

    .line 3077
    :cond_2
    sget-object v0, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_3

    .line 3078
    check-cast p2, Lcom/oneplus/gallery2/media/MediaList;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/gallery2/FilmstripFragment;->setMediaListProp(Lcom/oneplus/gallery2/media/MediaList;)Z

    move-result v0

    goto :goto_0

    .line 3079
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery2/GalleryFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
