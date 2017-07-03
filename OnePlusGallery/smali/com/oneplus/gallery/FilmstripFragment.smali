.class public Lcom/oneplus/gallery/FilmstripFragment;
.super Lcom/oneplus/gallery/GalleryFragment;
.source "FilmstripFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/FilmstripFragment$29;,
        Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;,
        Lcom/oneplus/gallery/FilmstripFragment$ThumbnailDrawable;,
        Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;,
        Lcom/oneplus/gallery/FilmstripFragment$ThumbnailQuality;,
        Lcom/oneplus/gallery/FilmstripFragment$ViewVisibilityState;,
        Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;,
        Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;
    }
.end annotation


# static fields
.field private static final COMMIT_DELETION_WHEN_CLICKING_BUTTON:Z = false

.field private static final DELAY_HIDE_TOOL_BAR_TIME_MILLIS:J = 0xbb8L

.field private static final DURATION_ANIMATION:J = 0x96L

.field private static final DURATION_COMMIT_DELETION:J = 0x2710L

.field private static final DURATION_COMMIT_DELETION_WHEN_STOPPING:J = 0x12cL

.field private static final ENABLE_DECODE_LOG:Z = false

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
            "Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;",
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

.field private static final REQUEST_CODE_EDIT:I = 0x67

.field private static final REQUEST_CODE_PLAY_VIDEO:I = 0x69

.field private static final REQUEST_CODE_SET_WALLPAPER:I = 0x68

.field private static final RESULT_EXTRA_IS_COLLECTED:Ljava/lang/String; = "IsCollected"

.field private static final THRESHOLD_FLING_TO_NEIGHBOR_ITEM:F = 5000.0f


# instance fields
.field private m_ActionBar:Landroid/widget/Toolbar;

.field private m_AppTracker:Lcom/oneplus/gallery/AppTracker;

.field private m_AsyncHandler:Landroid/os/Handler;

.field private m_AsyncHandlerThread:Landroid/os/HandlerThread;

.field private m_CollectButton:Landroid/view/View;

.field private m_CollectButtonContainer:Landroid/view/View;

.field private m_CurrentMedia:Lcom/oneplus/gallery/media/Media;

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
            "Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;",
            ">;"
        }
    .end annotation
.end field

.field private final m_FilmstripItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;",
            ">;"
        }
    .end annotation
.end field

.field private final m_FilmstripScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

.field private m_FilmstripScrollMode:I

.field private m_FilmstripState:Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;

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

.field private final m_LowResBitmapDecodeCallback:Lcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;

.field private m_LowResBitmapDecodeInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_MediaAddedEventHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/gallery/ListChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private m_MediaChangeCallback:Lcom/oneplus/gallery/media/MediaManager$MediaChangeCallback;

.field private m_MediaDetailsDialog:Lcom/oneplus/gallery/MediaDetailsDialog;

.field private m_MediaList:Lcom/oneplus/gallery/media/MediaList;

.field private m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

.field private m_MediaManagerCallbackHandle:Lcom/oneplus/base/Handle;

.field private m_MediaRemovedEventHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/gallery/ListChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private m_MediaRemovingEventHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/gallery/ListChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final m_MediumResBitmapDecodeCallback:Lcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;

.field private m_MediumResBitmapDecodeInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

.field private m_PreferredContentUri:Landroid/net/Uri;

.field private m_RecycledMediaSet:Lcom/oneplus/gallery/media/MediaSet;

.field private m_RecycledMediaUri:Landroid/net/Uri;

.field private m_ReusedBitmapDecodeInfos:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;",
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

.field private m_ThumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;

.field private m_ThumbManagerActivateHandle:Lcom/oneplus/base/Handle;

.field private m_ToolbarVisibilityState:Lcom/oneplus/gallery/FilmstripFragment$ViewVisibilityState;

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

    .line 85
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "CurrentMediaIndex"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/gallery/FilmstripFragment;

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/FilmstripFragment;->PROP_CURRENT_MEDIA_INDEX:Lcom/oneplus/base/PropertyKey;

    .line 89
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "FilmstripState"

    const-class v2, Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;

    const-class v3, Lcom/oneplus/gallery/FilmstripFragment;

    sget-object v5, Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;->BACKGROUND:Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/FilmstripFragment;->PROP_FILMSTRIP_STATE:Lcom/oneplus/base/PropertyKey;

    .line 93
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsReadOnly"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery/FilmstripFragment;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/FilmstripFragment;->PROP_IS_READ_ONLY:Lcom/oneplus/base/PropertyKey;

    .line 97
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "MediaList"

    const-class v2, Lcom/oneplus/gallery/media/MediaList;

    const-class v3, Lcom/oneplus/gallery/FilmstripFragment;

    move v4, v6

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/FilmstripFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    .line 101
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "MediaSet"

    const-class v2, Lcom/oneplus/gallery/media/MediaSet;

    const-class v3, Lcom/oneplus/gallery/FilmstripFragment;

    move v4, v6

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/FilmstripFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x50

    .line 797
    invoke-direct {p0}, Lcom/oneplus/gallery/GalleryFragment;-><init>()V

    .line 137
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CurrentMediaIndex:I

    .line 140
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/16 v1, 0xff

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_DummyThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 145
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FilmstripItemPool:Ljava/util/Queue;

    .line 146
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FilmstripItems:Ljava/util/Set;

    .line 148
    sget-object v0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;->BACKGROUND:Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;

    iput-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FilmstripState:Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsToolbarVisible:Z

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_LowResBitmapDecodeInfos:Ljava/util/List;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediumResBitmapDecodeInfos:Ljava/util/List;

    .line 171
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_ReusedBitmapDecodeInfos:Ljava/util/Queue;

    .line 177
    sget-object v0, Lcom/oneplus/gallery/FilmstripFragment$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery/FilmstripFragment$ViewVisibilityState;

    iput-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_ToolbarVisibilityState:Lcom/oneplus/gallery/FilmstripFragment$ViewVisibilityState;

    .line 180
    new-instance v0, Lcom/oneplus/gallery/FilmstripFragment$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/FilmstripFragment$1;-><init>(Lcom/oneplus/gallery/FilmstripFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FilmstripScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    .line 203
    new-instance v0, Lcom/oneplus/gallery/FilmstripFragment$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/FilmstripFragment$2;-><init>(Lcom/oneplus/gallery/FilmstripFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FilmstripAdapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    .line 226
    new-instance v0, Lcom/oneplus/gallery/FilmstripFragment$3;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/FilmstripFragment$3;-><init>(Lcom/oneplus/gallery/FilmstripFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsDeletingMediaCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 234
    new-instance v0, Lcom/oneplus/gallery/FilmstripFragment$4;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/FilmstripFragment$4;-><init>(Lcom/oneplus/gallery/FilmstripFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsSharingMediaCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 245
    new-instance v0, Lcom/oneplus/gallery/FilmstripFragment$5;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/FilmstripFragment$5;-><init>(Lcom/oneplus/gallery/FilmstripFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsNavigationBarVisibleCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 256
    new-instance v0, Lcom/oneplus/gallery/FilmstripFragment$6;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/FilmstripFragment$6;-><init>(Lcom/oneplus/gallery/FilmstripFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_SnackbarVisibleHeightChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 264
    new-instance v0, Lcom/oneplus/gallery/FilmstripFragment$7;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/FilmstripFragment$7;-><init>(Lcom/oneplus/gallery/FilmstripFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_WindowFocusChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 275
    new-instance v0, Lcom/oneplus/gallery/FilmstripFragment$8;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/FilmstripFragment$8;-><init>(Lcom/oneplus/gallery/FilmstripFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaAddedEventHandler:Lcom/oneplus/base/EventHandler;

    .line 283
    new-instance v0, Lcom/oneplus/gallery/FilmstripFragment$9;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/FilmstripFragment$9;-><init>(Lcom/oneplus/gallery/FilmstripFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaRemovedEventHandler:Lcom/oneplus/base/EventHandler;

    .line 291
    new-instance v0, Lcom/oneplus/gallery/FilmstripFragment$10;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/FilmstripFragment$10;-><init>(Lcom/oneplus/gallery/FilmstripFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaRemovingEventHandler:Lcom/oneplus/base/EventHandler;

    .line 301
    new-instance v0, Lcom/oneplus/gallery/FilmstripFragment$11;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/FilmstripFragment$11;-><init>(Lcom/oneplus/gallery/FilmstripFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaChangeCallback:Lcom/oneplus/gallery/media/MediaManager$MediaChangeCallback;

    .line 342
    new-instance v0, Lcom/oneplus/gallery/FilmstripFragment$12;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/FilmstripFragment$12;-><init>(Lcom/oneplus/gallery/FilmstripFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_LowResBitmapDecodeCallback:Lcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;

    .line 350
    new-instance v0, Lcom/oneplus/gallery/FilmstripFragment$13;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/FilmstripFragment$13;-><init>(Lcom/oneplus/gallery/FilmstripFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediumResBitmapDecodeCallback:Lcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;

    .line 799
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Filmstrip background thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_AsyncHandlerThread:Landroid/os/HandlerThread;

    .line 800
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_AsyncHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 801
    new-instance v0, Lcom/oneplus/gallery/FilmstripFragment$14;

    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_AsyncHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/gallery/FilmstripFragment$14;-><init>(Lcom/oneplus/gallery/FilmstripFragment;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_AsyncHandler:Landroid/os/Handler;

    .line 809
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery/FilmstripFragment;Ljava/lang/Integer;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;
    .param p1, "x1"    # Ljava/lang/Integer;
    .param p2, "x2"    # Z

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/FilmstripFragment;->setCurrentMediaIndexProp(Ljava/lang/Integer;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/oneplus/gallery/FilmstripFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->onScrollStarted()V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/gallery/FilmstripFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/FilmstripFragment;->onWindowFocusChanged(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/oneplus/gallery/FilmstripFragment;III)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery/FilmstripFragment;->onMediaListUpdated(III)V

    return-void
.end method

.method static synthetic access$1200(Lcom/oneplus/gallery/FilmstripFragment;II)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/FilmstripFragment;->onMediaRemoving(II)V

    return-void
.end method

.method static synthetic access$1300(Lcom/oneplus/gallery/FilmstripFragment;)Lcom/oneplus/gallery/media/MediaList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/oneplus/gallery/FilmstripFragment;Landroid/net/Uri;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/FilmstripFragment;->searchMediaListIndex(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/oneplus/gallery/FilmstripFragment;I)Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;
    .param p1, "x1"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/FilmstripFragment;->findFilmstripItemFromPosition(I)Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/oneplus/gallery/FilmstripFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;
    .param p1, "x1"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/FilmstripFragment;->checkImageDecoding(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/oneplus/gallery/FilmstripFragment;Lcom/oneplus/base/Handle;Lcom/oneplus/gallery/media/Media;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;
    .param p2, "x2"    # Lcom/oneplus/gallery/media/Media;
    .param p3, "x3"    # Landroid/graphics/Bitmap;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery/FilmstripFragment;->onLowResImageDecoded(Lcom/oneplus/base/Handle;Lcom/oneplus/gallery/media/Media;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/oneplus/gallery/FilmstripFragment;Lcom/oneplus/base/Handle;Lcom/oneplus/gallery/media/Media;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;
    .param p2, "x2"    # Lcom/oneplus/gallery/media/Media;
    .param p3, "x3"    # Landroid/graphics/Bitmap;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery/FilmstripFragment;->onMediumResImageDecoded(Lcom/oneplus/base/Handle;Lcom/oneplus/gallery/media/Media;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/oneplus/gallery/FilmstripFragment;Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/FilmstripFragment;->onScaleImageGestureEnd(Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/gallery/FilmstripFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->onScrollStopped()V

    return-void
.end method

.method static synthetic access$2000(Lcom/oneplus/gallery/FilmstripFragment;Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;
    .param p2, "x2"    # Landroid/view/MotionEvent;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/FilmstripFragment;->onScaleImageGestureStart(Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/oneplus/gallery/FilmstripFragment;Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;
    .param p2, "x2"    # Landroid/view/MotionEvent;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/FilmstripFragment;->onScaleImageGestureDoubleTap(Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/oneplus/gallery/FilmstripFragment;Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;
    .param p2, "x2"    # Landroid/view/MotionEvent;
    .param p3, "x3"    # Landroid/view/MotionEvent;
    .param p4, "x4"    # F
    .param p5, "x5"    # F

    .prologue
    .line 80
    invoke-direct/range {p0 .. p5}, Lcom/oneplus/gallery/FilmstripFragment;->onScaleImageGestureFling(Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/oneplus/gallery/FilmstripFragment;Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;FFF)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # F

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/gallery/FilmstripFragment;->onScaleImageGestureScale(Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;FFF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/oneplus/gallery/FilmstripFragment;Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;
    .param p2, "x2"    # Landroid/view/MotionEvent;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/FilmstripFragment;->onScaleImageGestureSingleTapUp(Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/oneplus/gallery/FilmstripFragment;Lcom/oneplus/widget/ScaleImageView;IIII)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;
    .param p1, "x1"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 80
    invoke-direct/range {p0 .. p5}, Lcom/oneplus/gallery/FilmstripFragment;->onScaleImageBoundsChanged(Lcom/oneplus/widget/ScaleImageView;IIII)V

    return-void
.end method

.method static synthetic access$2600(Lcom/oneplus/gallery/FilmstripFragment;Lcom/oneplus/widget/ScaleImageView;Lcom/oneplus/widget/ScaleImageView$BoundsType;Lcom/oneplus/widget/ScaleImageView$BoundsType;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;
    .param p1, "x1"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "x2"    # Lcom/oneplus/widget/ScaleImageView$BoundsType;
    .param p3, "x3"    # Lcom/oneplus/widget/ScaleImageView$BoundsType;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery/FilmstripFragment;->onScaleImageBoundsTypeChanged(Lcom/oneplus/widget/ScaleImageView;Lcom/oneplus/widget/ScaleImageView$BoundsType;Lcom/oneplus/widget/ScaleImageView$BoundsType;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/oneplus/gallery/FilmstripFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->showHideToolbar()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/oneplus/gallery/FilmstripFragment;Lcom/oneplus/gallery/media/Media;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/FilmstripFragment;->playVideo(Lcom/oneplus/gallery/media/Media;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/gallery/FilmstripFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->onGetCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/oneplus/gallery/FilmstripFragment;)Landroid/util/Size;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FakeVideoSize:Landroid/util/Size;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/oneplus/gallery/FilmstripFragment;)Landroid/util/Size;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FakePhotoSize:Landroid/util/Size;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/oneplus/gallery/FilmstripFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/oneplus/gallery/FilmstripFragment;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/FilmstripFragment;->handleAsyncMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/oneplus/gallery/FilmstripFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/oneplus/gallery/FilmstripFragment;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_SnackbarHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/oneplus/gallery/FilmstripFragment;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_SnackbarHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/oneplus/gallery/FilmstripFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->restoreMediaFromRecycler()V

    return-void
.end method

.method static synthetic access$3800(Lcom/oneplus/gallery/FilmstripFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsFilmstripScrolling:Z

    return v0
.end method

.method static synthetic access$3900(Lcom/oneplus/gallery/FilmstripFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;

    .prologue
    .line 80
    iget v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CurrentMediaIndex:I

    return v0
.end method

.method static synthetic access$400(Lcom/oneplus/gallery/FilmstripFragment;ILandroid/view/ViewGroup;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/ViewGroup;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/FilmstripFragment;->onPrepareItemView(ILandroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/oneplus/gallery/FilmstripFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;
    .param p1, "x1"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/FilmstripFragment;->setWallpaper(I)V

    return-void
.end method

.method static synthetic access$4100(Lcom/oneplus/gallery/FilmstripFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;
    .param p1, "x1"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/FilmstripFragment;->showPageDetails(I)V

    return-void
.end method

.method static synthetic access$4200(Lcom/oneplus/gallery/FilmstripFragment;)Lcom/oneplus/gallery/media/Media;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->getCurrentMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300(Lcom/oneplus/gallery/FilmstripFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->updateCollectButtonSelection()V

    return-void
.end method

.method static synthetic access$4400(Lcom/oneplus/gallery/FilmstripFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/oneplus/gallery/FilmstripFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->closeFragment()V

    return-void
.end method

.method static synthetic access$4600(Lcom/oneplus/gallery/FilmstripFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;
    .param p1, "x1"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/FilmstripFragment;->sharePage(I)V

    return-void
.end method

.method static synthetic access$4700(Lcom/oneplus/gallery/FilmstripFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CollectButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/oneplus/gallery/FilmstripFragment;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/FilmstripFragment;->collectPage(IZ)V

    return-void
.end method

.method static synthetic access$4900(Lcom/oneplus/gallery/FilmstripFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;
    .param p1, "x1"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/FilmstripFragment;->editorPage(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/gallery/FilmstripFragment;ILandroid/view/ViewGroup;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/ViewGroup;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/FilmstripFragment;->onReleaseItemView(ILandroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/oneplus/gallery/FilmstripFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;
    .param p1, "x1"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/FilmstripFragment;->deletePage(I)V

    return-void
.end method

.method static synthetic access$5402(Lcom/oneplus/gallery/FilmstripFragment;Lcom/oneplus/gallery/MediaDetailsDialog;)Lcom/oneplus/gallery/MediaDetailsDialog;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery/MediaDetailsDialog;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaDetailsDialog:Lcom/oneplus/gallery/MediaDetailsDialog;

    return-object p1
.end method

.method static synthetic access$5500(Lcom/oneplus/gallery/FilmstripFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5602(Lcom/oneplus/gallery/FilmstripFragment;Lcom/oneplus/gallery/FilmstripFragment$ViewVisibilityState;)Lcom/oneplus/gallery/FilmstripFragment$ViewVisibilityState;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery/FilmstripFragment$ViewVisibilityState;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_ToolbarVisibilityState:Lcom/oneplus/gallery/FilmstripFragment$ViewVisibilityState;

    return-object p1
.end method

.method static synthetic access$5700(Lcom/oneplus/gallery/FilmstripFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_HeaderContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/oneplus/gallery/FilmstripFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FooterContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/gallery/FilmstripFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->deleteMediaFromRecycler()V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/gallery/FilmstripFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->cancelHideToolbar()V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/gallery/FilmstripFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->hideToolbarDelay()V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/gallery/FilmstripFragment;F)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/FilmstripFragment;
    .param p1, "x1"    # F

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/FilmstripFragment;->onSnackbarVisibleHeightChanged(F)V

    return-void
.end method

.method private cancelDecodingHighResolutionImage()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 815
    iget-object v4, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    if-eqz v4, :cond_3

    .line 818
    const/4 v1, 0x0

    .line 819
    .local v1, "filmstripItem":Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;
    iget-object v4, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FilmstripItems:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;

    .line 821
    .local v0, "candItem":Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;
    iget-object v4, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-virtual {v0}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->getMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v5

    invoke-interface {v5}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->isSameSource(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-virtual {v0}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->getMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v5

    invoke-interface {v5}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->isSameSource(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 824
    :cond_1
    iget-object v4, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v5, "cancelDecodingHighResolutionImage() - Media : "

    invoke-virtual {v0}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->getMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 825
    move-object v1, v0

    .line 831
    .end local v0    # "candItem":Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;
    :cond_2
    iget-object v4, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v5, "cancelDecodingHighResolutionImage()"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    iget-object v4, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-virtual {v4, v7, v7}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->setVisible(ZZ)Z

    .line 833
    iget-object v4, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-virtual {v4}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->release()V

    .line 834
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    .line 837
    if-eqz v1, :cond_3

    .line 839
    invoke-virtual {v1}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->getMediumResThumb()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 840
    .local v3, "thumb":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_4

    .line 842
    sget-object v4, Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;->THUMB_DECODED:Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;

    invoke-virtual {v1, v4}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->setImageDecodeState(Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;)V

    .line 843
    invoke-virtual {v1, v3}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->setMediumResThumb(Landroid/graphics/Bitmap;)V

    .line 856
    .end local v1    # "filmstripItem":Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "thumb":Landroid/graphics/Bitmap;
    :cond_3
    :goto_0
    return-void

    .line 847
    .restart local v1    # "filmstripItem":Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "thumb":Landroid/graphics/Bitmap;
    :cond_4
    invoke-virtual {v1}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->getLowResThumb()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 848
    if-eqz v3, :cond_3

    .line 850
    sget-object v4, Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;->SMALL_THUMB_DECODED:Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;

    invoke-virtual {v1, v4}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->setImageDecodeState(Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;)V

    .line 851
    invoke-virtual {v1, v3}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->setLowResThumb(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private cancelDecodingImages()V
    .locals 4

    .prologue
    .line 862
    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v3, "cancelDecodingImages()"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_LowResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 866
    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_LowResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;

    .line 867
    .local v1, "info":Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;
    iget-object v2, v1, Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;->decodeHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, v1, Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;->decodeHandle:Lcom/oneplus/base/Handle;

    .line 868
    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_ReusedBitmapDecodeInfos:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 864
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 870
    .end local v1    # "info":Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediumResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 872
    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediumResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;

    .line 873
    .restart local v1    # "info":Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;
    iget-object v2, v1, Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;->decodeHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, v1, Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;->decodeHandle:Lcom/oneplus/base/Handle;

    .line 874
    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_ReusedBitmapDecodeInfos:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 870
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 876
    .end local v1    # "info":Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->cancelDecodingHighResolutionImage()V

    .line 877
    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_LowResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 878
    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_ReusedBitmapDecodeInfos:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 879
    return-void
.end method

.method private cancelDecodingLowResolutionImage(Lcom/oneplus/gallery/media/Media;)V
    .locals 7
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 885
    iget-object v4, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_LowResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 887
    iget-object v4, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_LowResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 889
    iget-object v4, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_LowResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;

    .line 890
    .local v3, "info":Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;
    iget-object v1, v3, Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;->filePath:Ljava/lang/String;

    .line 891
    .local v1, "filePath":Ljava/lang/String;
    iget-object v0, v3, Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;->contentUri:Landroid/net/Uri;

    .line 892
    .local v0, "contentUri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 895
    :cond_1
    iget-object v4, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v5, "cancelDecodingLowResolutionImage() - Cancel decoding low-resolution bitmap : "

    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 896
    iget-object v4, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_LowResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 897
    iget-object v4, v3, Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;->decodeHandle:Lcom/oneplus/base/Handle;

    invoke-static {v4}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v4

    iput-object v4, v3, Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;->decodeHandle:Lcom/oneplus/base/Handle;

    .line 898
    iget-object v4, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_ReusedBitmapDecodeInfos:Ljava/util/Queue;

    invoke-interface {v4, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 903
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "info":Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;
    :cond_2
    return-void

    .line 887
    .restart local v0    # "contentUri":Landroid/net/Uri;
    .restart local v1    # "filePath":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "info":Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method private cancelDecodingMediumResolutionImage(Lcom/oneplus/gallery/media/Media;)V
    .locals 7
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 909
    iget-object v4, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediumResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 911
    iget-object v4, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediumResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 913
    iget-object v4, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediumResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;

    .line 914
    .local v3, "info":Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;
    iget-object v1, v3, Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;->filePath:Ljava/lang/String;

    .line 915
    .local v1, "filePath":Ljava/lang/String;
    iget-object v0, v3, Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;->contentUri:Landroid/net/Uri;

    .line 916
    .local v0, "contentUri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 919
    :cond_1
    iget-object v4, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v5, "cancelDecodingMediumResolutionImage() - Cancel decoding medium-resolution bitmap : "

    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 920
    iget-object v4, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediumResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 921
    iget-object v4, v3, Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;->decodeHandle:Lcom/oneplus/base/Handle;

    invoke-static {v4}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v4

    iput-object v4, v3, Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;->decodeHandle:Lcom/oneplus/base/Handle;

    .line 922
    iget-object v4, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_ReusedBitmapDecodeInfos:Ljava/util/Queue;

    invoke-interface {v4, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 927
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "info":Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;
    :cond_2
    return-void

    .line 911
    .restart local v0    # "contentUri":Landroid/net/Uri;
    .restart local v1    # "filePath":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "info":Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method private cancelHideToolbar()V
    .locals 2

    .prologue
    .line 933
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v1, "cancelHideToolbar()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    const/16 v0, 0x2711

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 935
    return-void
.end method

.method private checkAnimationState(Lcom/oneplus/gallery/media/Media;)V
    .locals 14
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 941
    const/4 v5, 0x0

    .line 942
    .local v5, "isAnimation":Z
    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v4

    .line 943
    .local v4, "filePath":Ljava/lang/String;
    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 944
    .local v0, "contentUri":Landroid/net/Uri;
    if-nez v4, :cond_0

    if-eqz v0, :cond_a

    .line 946
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

    .line 948
    :try_start_1
    invoke-static {v6}, Lcom/oneplus/media/ImageUtils;->isGifHeader(Ljava/io/InputStream;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v5

    .line 949
    if-eqz v5, :cond_2

    .line 951
    const/4 v1, 0x0

    .line 954
    .local v1, "decoder":Lcom/oneplus/util/GifDecoder;
    :try_start_2
    new-instance v2, Lcom/oneplus/util/GifDecoder;

    invoke-direct {v2}, Lcom/oneplus/util/GifDecoder;-><init>()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 955
    .end local v1    # "decoder":Lcom/oneplus/util/GifDecoder;
    .local v2, "decoder":Lcom/oneplus/util/GifDecoder;
    :try_start_3
    invoke-virtual {v2, v6}, Lcom/oneplus/util/GifDecoder;->read(Ljava/io/InputStream;)V

    .line 956
    invoke-virtual {v2}, Lcom/oneplus/util/GifDecoder;->frameCount()I

    move-result v10

    if-le v10, v8, :cond_5

    move v5, v8

    .line 957
    :goto_1
    if-nez v5, :cond_1

    .line 958
    iget-object v10, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v12, "checkAnimationState() - GIF without animation"

    invoke-static {v10, v12}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 967
    :cond_1
    if-eqz v2, :cond_2

    .line 968
    :try_start_4
    invoke-virtual {v2}, Lcom/oneplus/util/GifDecoder;->release()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 971
    .end local v2    # "decoder":Lcom/oneplus/util/GifDecoder;
    :cond_2
    :goto_2
    if-eqz v6, :cond_3

    if-eqz v11, :cond_8

    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 979
    .end local v6    # "stream":Ljava/io/InputStream;
    :cond_3
    :goto_3
    const/16 v10, 0x2725

    if-eqz v5, :cond_b

    :goto_4
    invoke-static {p0, v10, v8, v9, p1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 980
    return-void

    .line 946
    :cond_4
    :try_start_6
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v10

    invoke-virtual {v10}, Lcom/oneplus/gallery/GalleryApplication;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 956
    goto :goto_1

    .line 960
    .end local v2    # "decoder":Lcom/oneplus/util/GifDecoder;
    .restart local v1    # "decoder":Lcom/oneplus/util/GifDecoder;
    :catch_0
    move-exception v3

    .line 962
    .local v3, "ex":Ljava/lang/Throwable;
    :goto_5
    :try_start_7
    iget-object v10, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v12, "checkAnimationState() - Fail to check GIF duration"

    invoke-static {v10, v12, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 963
    const/4 v5, 0x0

    .line 967
    if-eqz v1, :cond_2

    .line 968
    :try_start_8
    invoke-virtual {v1}, Lcom/oneplus/util/GifDecoder;->release()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_2

    .line 946
    .end local v1    # "decoder":Lcom/oneplus/util/GifDecoder;
    .end local v3    # "ex":Ljava/lang/Throwable;
    :catch_1
    move-exception v10

    :try_start_9
    throw v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 971
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

    .line 972
    .end local v6    # "stream":Ljava/io/InputStream;
    :catch_2
    move-exception v3

    .line 974
    .restart local v3    # "ex":Ljava/lang/Throwable;
    iget-object v10, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

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

    .line 967
    .end local v3    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "decoder":Lcom/oneplus/util/GifDecoder;
    .restart local v6    # "stream":Ljava/io/InputStream;
    :catchall_1
    move-exception v10

    :goto_8
    if-eqz v1, :cond_7

    .line 968
    :try_start_c
    invoke-virtual {v1}, Lcom/oneplus/util/GifDecoder;->release()V

    :cond_7
    throw v10
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 971
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

    .line 978
    .end local v6    # "stream":Ljava/io/InputStream;
    :cond_a
    iget-object v10, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v11, "checkAnimationState() - No file path or content URI"

    invoke-static {v10, v11}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    move v8, v9

    .line 979
    goto :goto_4

    .line 967
    .restart local v2    # "decoder":Lcom/oneplus/util/GifDecoder;
    .restart local v6    # "stream":Ljava/io/InputStream;
    :catchall_3
    move-exception v10

    move-object v1, v2

    .end local v2    # "decoder":Lcom/oneplus/util/GifDecoder;
    .restart local v1    # "decoder":Lcom/oneplus/util/GifDecoder;
    goto :goto_8

    .line 960
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
    .line 987
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-nez v14, :cond_1

    .line 1065
    :cond_0
    return-void

    .line 989
    :cond_1
    const/4 v4, 0x1

    .line 990
    .local v4, "decodeImage":Z
    if-ltz p1, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v14}, Lcom/oneplus/gallery/media/MediaList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    move/from16 v0, p1

    if-le v0, v14, :cond_3

    .line 991
    :cond_2
    const/4 v4, 0x0

    .line 994
    :cond_3
    move/from16 v2, p1

    .line 995
    .local v2, "center":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v14}, Lcom/oneplus/gallery/media/MediaList;->size()I

    move-result v14

    add-int/lit8 v9, v14, -0x1

    .line 996
    .local v9, "maxIndex":I
    add-int/lit8 v13, v2, -0x2

    .line 997
    .local v13, "preDecodeStart":I
    add-int/lit8 v10, v2, 0x2

    .line 998
    .local v10, "preDecodeEnd":I
    add-int/lit8 v12, v13, -0x3

    .line 999
    .local v12, "preDecodeLowStart":I
    add-int/lit8 v11, v10, 0x3

    .line 1000
    .local v11, "preDecodeLowEnd":I
    if-gez v13, :cond_4

    .line 1001
    const/4 v13, 0x0

    .line 1002
    :cond_4
    if-gez v12, :cond_5

    .line 1003
    const/4 v12, 0x0

    .line 1004
    :cond_5
    if-le v10, v9, :cond_6

    .line 1005
    move v10, v9

    .line 1006
    :cond_6
    if-le v11, v9, :cond_7

    .line 1007
    move v11, v9

    .line 1009
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

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

    .line 1012
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/FilmstripFragment;->m_LowResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v7, v14, -0x1

    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_d

    .line 1014
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/FilmstripFragment;->m_LowResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;

    .line 1015
    .local v5, "decodeInfo":Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;
    iget-object v6, v5, Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;->filePath:Ljava/lang/String;

    .line 1016
    .local v6, "filePath":Ljava/lang/String;
    iget-object v3, v5, Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;->contentUri:Landroid/net/Uri;

    .line 1017
    .local v3, "contentUri":Landroid/net/Uri;
    const/4 v1, 0x1

    .line 1018
    .local v1, "cancel":Z
    move v8, v12

    .local v8, "j":I
    :goto_1
    if-gt v8, v11, :cond_a

    .line 1020
    if-eqz v6, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v14, v8}, Lcom/oneplus/gallery/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/oneplus/gallery/media/Media;

    invoke-interface {v14}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    :cond_8
    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v14, v8}, Lcom/oneplus/gallery/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/oneplus/gallery/media/Media;

    invoke-interface {v14}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 1023
    :cond_9
    const/4 v1, 0x0

    .line 1027
    :cond_a
    if-eqz v1, :cond_b

    .line 1029
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/FilmstripFragment;->m_LowResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1030
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/FilmstripFragment;->m_ReusedBitmapDecodeInfos:Ljava/util/Queue;

    invoke-interface {v14, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1031
    iget-object v14, v5, Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;->decodeHandle:Lcom/oneplus/base/Handle;

    invoke-static {v14}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v14

    iput-object v14, v5, Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;->decodeHandle:Lcom/oneplus/base/Handle;

    .line 1012
    :cond_b
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 1018
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1034
    .end local v1    # "cancel":Z
    .end local v3    # "contentUri":Landroid/net/Uri;
    .end local v5    # "decodeInfo":Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;
    .end local v6    # "filePath":Ljava/lang/String;
    .end local v8    # "j":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediumResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v7, v14, -0x1

    :goto_2
    if-ltz v7, :cond_13

    .line 1036
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediumResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;

    .line 1037
    .restart local v5    # "decodeInfo":Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;
    iget-object v6, v5, Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;->filePath:Ljava/lang/String;

    .line 1038
    .restart local v6    # "filePath":Ljava/lang/String;
    iget-object v3, v5, Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;->contentUri:Landroid/net/Uri;

    .line 1039
    .restart local v3    # "contentUri":Landroid/net/Uri;
    const/4 v1, 0x1

    .line 1040
    .restart local v1    # "cancel":Z
    move v8, v13

    .restart local v8    # "j":I
    :goto_3
    if-gt v8, v10, :cond_10

    .line 1042
    if-eqz v6, :cond_e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v14, v8}, Lcom/oneplus/gallery/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/oneplus/gallery/media/Media;

    invoke-interface {v14}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_f

    :cond_e
    if-eqz v3, :cond_12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v14, v8}, Lcom/oneplus/gallery/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/oneplus/gallery/media/Media;

    invoke-interface {v14}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 1045
    :cond_f
    const/4 v1, 0x0

    .line 1049
    :cond_10
    if-eqz v1, :cond_11

    .line 1051
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediumResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1052
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/FilmstripFragment;->m_ReusedBitmapDecodeInfos:Ljava/util/Queue;

    invoke-interface {v14, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1053
    iget-object v14, v5, Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;->decodeHandle:Lcom/oneplus/base/Handle;

    invoke-static {v14}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v14

    iput-object v14, v5, Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;->decodeHandle:Lcom/oneplus/base/Handle;

    .line 1034
    :cond_11
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 1040
    :cond_12
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1058
    .end local v1    # "cancel":Z
    .end local v3    # "contentUri":Landroid/net/Uri;
    .end local v5    # "decodeInfo":Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;
    .end local v6    # "filePath":Ljava/lang/String;
    .end local v8    # "j":I
    :cond_13
    if-eqz v4, :cond_0

    .line 1060
    move v7, v12

    :goto_4
    if-gt v7, v11, :cond_15

    .line 1061
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v14, v7}, Lcom/oneplus/gallery/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/oneplus/gallery/media/Media;

    if-ne v7, v2, :cond_14

    const/4 v15, 0x1

    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/oneplus/gallery/FilmstripFragment;->decodeLowResolutionImage(Lcom/oneplus/gallery/media/Media;Z)V

    .line 1060
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1061
    :cond_14
    const/4 v15, 0x0

    goto :goto_5

    .line 1062
    :cond_15
    move v7, v13

    :goto_6
    if-gt v7, v10, :cond_0

    .line 1063
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v14, v7}, Lcom/oneplus/gallery/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/oneplus/gallery/media/Media;

    if-ne v7, v2, :cond_16

    const/4 v15, 0x1

    :goto_7
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/oneplus/gallery/FilmstripFragment;->decodeMediumResolutionImage(Lcom/oneplus/gallery/media/Media;Z)V

    .line 1062
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 1063
    :cond_16
    const/4 v15, 0x0

    goto :goto_7
.end method

.method private closeFragment()V
    .locals 1

    .prologue
    .line 1071
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->deleteMediaFromRecycler()V

    .line 1072
    invoke-virtual {p0}, Lcom/oneplus/gallery/FilmstripFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/gallery/GalleryActivity;->goBack()Z

    .line 1073
    return-void
.end method

.method private collectPage(IZ)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "isCollected"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1079
    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_AppTracker:Lcom/oneplus/gallery/AppTracker;

    const-string v3, "Gallery.SetFavorite"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-interface {v2, v3, v6, v4}, Lcom/oneplus/gallery/AppTracker;->createRecord(Ljava/lang/String;I[Ljava/lang/Object;)Z

    .line 1082
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->hideToolbarDelay()V

    .line 1089
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/FilmstripFragment;->validatePosition(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1096
    :goto_0
    return-void

    .line 1093
    :cond_0
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v2

    const-class v3, Lcom/oneplus/gallery/media/OPMediaManager;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/GalleryApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/OPMediaManager;

    .line 1094
    .local v1, "mediaManager":Lcom/oneplus/gallery/media/OPMediaManager;
    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v2, p1}, Lcom/oneplus/gallery/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/Media;

    .line 1095
    .local v0, "media":Lcom/oneplus/gallery/media/Media;
    invoke-interface {v0}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lcom/oneplus/gallery/media/OPMediaManager;->setFavorite(Landroid/net/Uri;Z)Z

    goto :goto_0
.end method

.method private createDrawableForDisplay(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1102
    if-eqz p1, :cond_0

    .line 1104
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/oneplus/gallery/FilmstripFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1105
    .local v0, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 1108
    .end local v0    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private decodeHighResolutionImage(Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;)V
    .locals 6
    .param p1, "filmstripItem"    # Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;

    .prologue
    .line 1115
    if-nez p1, :cond_0

    .line 1144
    :goto_0
    return-void

    .line 1117
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->getMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v0

    .line 1118
    .local v0, "media":Lcom/oneplus/gallery/media/Media;
    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    .line 1120
    invoke-virtual {p1}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->getMediumResThumb()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1121
    .local v1, "thumb":Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 1122
    invoke-virtual {p1}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->getLowResThumb()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1124
    :cond_1
    invoke-interface {v0}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1128
    new-instance v2, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-virtual {p0}, Lcom/oneplus/gallery/FilmstripFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/gallery/GalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-interface {v0}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    .line 1142
    .end local v1    # "thumb":Landroid/graphics/Bitmap;
    :cond_2
    :goto_1
    sget-object v2, Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;->LARGE_IMAGE_DECODED:Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;

    invoke-virtual {p1, v2}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->setImageDecodeState(Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;)V

    .line 1143
    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-virtual {p1, v2}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1132
    .restart local v1    # "thumb":Landroid/graphics/Bitmap;
    :cond_3
    invoke-interface {v0}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1136
    new-instance v2, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-interface {v0}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-direct {v2, v3, v4, v1}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    goto :goto_1

    .line 1139
    :cond_4
    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v3, "decodeHighResolutionImage() - No file path or content URI to decode"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private decodeLowResolutionImage(Lcom/oneplus/gallery/media/Media;Z)V
    .locals 7
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p2, "urgent"    # Z

    .prologue
    .line 1151
    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v2

    .line 1152
    .local v2, "filePath":Ljava/lang/String;
    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 1153
    .local v0, "contentUri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_LowResBitmapDecodeInfos:Ljava/util/List;

    invoke-direct {p0, v3, v2}, Lcom/oneplus/gallery/FilmstripFragment;->findBitmapDecodeInfo(Ljava/util/List;Ljava/lang/String;)Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;

    move-result-object v1

    .line 1154
    .local v1, "decodeInfo":Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;
    if-nez v1, :cond_0

    .line 1155
    iget-object v3, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_LowResBitmapDecodeInfos:Ljava/util/List;

    invoke-direct {p0, v3, v0}, Lcom/oneplus/gallery/FilmstripFragment;->findBitmapDecodeInfo(Ljava/util/List;Landroid/net/Uri;)Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;

    move-result-object v1

    .line 1156
    :cond_0
    instance-of v3, p1, Lcom/oneplus/gallery/media/PhotoMedia;

    if-eqz v3, :cond_4

    if-eqz v1, :cond_1

    if-eqz p2, :cond_4

    .line 1159
    :cond_1
    if-nez v1, :cond_3

    .line 1161
    iget-object v3, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_ReusedBitmapDecodeInfos:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "decodeInfo":Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;
    check-cast v1, Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;

    .line 1162
    .restart local v1    # "decodeInfo":Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;
    if-nez v1, :cond_2

    .line 1163
    new-instance v1, Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;

    .end local v1    # "decodeInfo":Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;
    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;-><init>(Lcom/oneplus/gallery/FilmstripFragment$1;)V

    .line 1164
    .restart local v1    # "decodeInfo":Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;
    :cond_2
    iput-object v0, v1, Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;->contentUri:Landroid/net/Uri;

    .line 1165
    iput-object v2, v1, Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;->filePath:Ljava/lang/String;

    .line 1166
    iget-object v3, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_LowResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1168
    :cond_3
    iget-object v3, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_ThumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;

    if-eqz v3, :cond_4

    .line 1169
    iget-object v3, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_ThumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_LowResBitmapDecodeCallback:Lcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;

    invoke-virtual {p0}, Lcom/oneplus/gallery/FilmstripFragment;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-interface {v3, p1, v4, v5, v6}, Lcom/oneplus/gallery/media/ThumbnailImageManager;->decodeSmallThumbnailImage(Lcom/oneplus/gallery/media/Media;ILcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v3

    iput-object v3, v1, Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;->decodeHandle:Lcom/oneplus/base/Handle;

    .line 1174
    :cond_4
    return-void
.end method

.method private decodeMediumResolutionImage(Lcom/oneplus/gallery/media/Media;Z)V
    .locals 7
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p2, "urgent"    # Z

    .prologue
    .line 1181
    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v2

    .line 1182
    .local v2, "filePath":Ljava/lang/String;
    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 1183
    .local v0, "contentUri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediumResBitmapDecodeInfos:Ljava/util/List;

    invoke-direct {p0, v3, v2}, Lcom/oneplus/gallery/FilmstripFragment;->findBitmapDecodeInfo(Ljava/util/List;Ljava/lang/String;)Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;

    move-result-object v1

    .line 1184
    .local v1, "decodeInfo":Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;
    if-nez v1, :cond_0

    .line 1185
    iget-object v3, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediumResBitmapDecodeInfos:Ljava/util/List;

    invoke-direct {p0, v3, v0}, Lcom/oneplus/gallery/FilmstripFragment;->findBitmapDecodeInfo(Ljava/util/List;Landroid/net/Uri;)Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;

    move-result-object v1

    .line 1186
    :cond_0
    if-eqz v1, :cond_1

    if-eqz p2, :cond_4

    .line 1189
    :cond_1
    if-nez v1, :cond_3

    .line 1191
    iget-object v3, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_ReusedBitmapDecodeInfos:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "decodeInfo":Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;
    check-cast v1, Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;

    .line 1192
    .restart local v1    # "decodeInfo":Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;
    if-nez v1, :cond_2

    .line 1193
    new-instance v1, Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;

    .end local v1    # "decodeInfo":Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;
    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;-><init>(Lcom/oneplus/gallery/FilmstripFragment$1;)V

    .line 1194
    .restart local v1    # "decodeInfo":Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;
    :cond_2
    iput-object v0, v1, Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;->contentUri:Landroid/net/Uri;

    .line 1195
    iput-object v2, v1, Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;->filePath:Ljava/lang/String;

    .line 1196
    iget-object v3, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediumResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1198
    :cond_3
    iget-object v3, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_ThumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;

    if-eqz v3, :cond_4

    .line 1199
    iget-object v3, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_ThumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediumResBitmapDecodeCallback:Lcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;

    invoke-virtual {p0}, Lcom/oneplus/gallery/FilmstripFragment;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-interface {v3, p1, v4, v5, v6}, Lcom/oneplus/gallery/media/ThumbnailImageManager;->decodeThumbnailImage(Lcom/oneplus/gallery/media/Media;ILcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v3

    iput-object v3, v1, Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;->decodeHandle:Lcom/oneplus/base/Handle;

    .line 1204
    :cond_4
    return-void
.end method

.method private deleteMediaFromRecycler()V
    .locals 1

    .prologue
    .line 1210
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/FilmstripFragment;->deleteMediaFromRecycler(Z)V

    .line 1211
    return-void
.end method

.method private deleteMediaFromRecycler(Z)V
    .locals 3
    .param p1, "closeSnackbar"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1215
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_RecycledMediaSet:Lcom/oneplus/gallery/media/MediaSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_RecycledMediaUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 1229
    :cond_0
    :goto_0
    return-void

    .line 1219
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_RecycledMediaSet:Lcom/oneplus/gallery/media/MediaSet;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v2, v1}, Lcom/oneplus/gallery/media/MediaSet;->cleanUpRecycleBin(Lcom/oneplus/gallery/media/MediaDeletionCallback;Landroid/os/Handler;I)I

    .line 1222
    iput-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_RecycledMediaUri:Landroid/net/Uri;

    .line 1223
    iput-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_RecycledMediaSet:Lcom/oneplus/gallery/media/MediaSet;

    .line 1226
    invoke-virtual {p0}, Lcom/oneplus/gallery/FilmstripFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x271a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1227
    if-eqz p1, :cond_0

    .line 1228
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_SnackbarHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_SnackbarHandle:Lcom/oneplus/base/Handle;

    goto :goto_0
.end method

.method private deletePage(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 1236
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->hideToolbarDelay()V

    .line 1239
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/FilmstripFragment;->validatePosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/gallery/FilmstripFragment;->isAttachedToGallery()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1275
    :cond_0
    :goto_0
    return-void

    .line 1242
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v2, "deletePage() - Pos: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1244
    sget-object v1, Lcom/oneplus/gallery/FilmstripFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/FilmstripFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1247
    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v1, p1}, Lcom/oneplus/gallery/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/Media;

    .line 1248
    .local v0, "media":Lcom/oneplus/gallery/media/Media;
    invoke-virtual {p0}, Lcom/oneplus/gallery/FilmstripFragment;->getGallery()Lcom/oneplus/gallery/Gallery;

    move-result-object v2

    sget-object v1, Lcom/oneplus/gallery/FilmstripFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/FilmstripFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/MediaSet;

    new-instance v3, Lcom/oneplus/gallery/FilmstripFragment$15;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery/FilmstripFragment$15;-><init>(Lcom/oneplus/gallery/FilmstripFragment;)V

    invoke-virtual {v2, v1, v0, v3}, Lcom/oneplus/gallery/Gallery;->deleteMedia(Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;)Z

    .line 1274
    .end local v0    # "media":Lcom/oneplus/gallery/media/Media;
    :goto_1
    sget-object v1, Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/FilmstripFragment;->setFilmstripState(Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;)V

    goto :goto_0

    .line 1262
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/FilmstripFragment;->deleteMediaFromRecycler(Z)V

    .line 1265
    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v1, p1}, Lcom/oneplus/gallery/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/Media;

    invoke-interface {v1}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_RecycledMediaUri:Landroid/net/Uri;

    .line 1267
    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v2, "deletePage() - Recycled media Uri: "

    iget-object v3, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_RecycledMediaUri:Landroid/net/Uri;

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1270
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/FilmstripFragment;->movePageToRecycler(I)V

    goto :goto_1
.end method

.method private editorPage(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x0

    .line 1281
    iget-object v3, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_AppTracker:Lcom/oneplus/gallery/AppTracker;

    const-string v4, "Gallery.EditPhoto"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v3, v4, v6, v5}, Lcom/oneplus/gallery/AppTracker;->createRecord(Ljava/lang/String;I[Ljava/lang/Object;)Z

    .line 1283
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->hideToolbarDelay()V

    .line 1290
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/FilmstripFragment;->validatePosition(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1304
    :goto_0
    return-void

    .line 1294
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery/FilmstripFragment;->getGallery()Lcom/oneplus/gallery/Gallery;

    move-result-object v1

    .line 1295
    .local v1, "gallery":Lcom/oneplus/gallery/Gallery;
    iget-object v3, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v3, p1}, Lcom/oneplus/gallery/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery/media/Media;

    .line 1296
    .local v2, "media":Lcom/oneplus/gallery/media/Media;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1297
    .local v0, "editIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/oneplus/gallery/FilmstripFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/gallery/GalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/oneplus/gallery/PhotoEditorActivity;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1298
    invoke-interface {v2}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "image/*"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1299
    if-eqz v1, :cond_1

    .line 1300
    const-string v3, "com.oneplus.gallery.GalleryActivity.extra.SHARED_GALLERY_ID"

    invoke-virtual {v1}, Lcom/oneplus/gallery/Gallery;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1301
    :cond_1
    const-string v3, "extraCreateModifiedThumb"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1302
    const/16 v3, 0x67

    invoke-virtual {p0, v0, v3}, Lcom/oneplus/gallery/FilmstripFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1303
    invoke-virtual {p0}, Lcom/oneplus/gallery/FilmstripFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method private findBitmapDecodeInfo(Ljava/util/List;Landroid/net/Uri;)Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;
    .locals 4
    .param p2, "contentUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;",
            ">;",
            "Landroid/net/Uri;",
            ")",
            "Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;>;"
    const/4 v2, 0x0

    .line 1325
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move-object v1, v2

    .line 1333
    :cond_1
    :goto_0
    return-object v1

    .line 1327
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 1329
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;

    .line 1330
    .local v1, "info":Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;
    iget-object v3, v1, Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;->contentUri:Landroid/net/Uri;

    invoke-virtual {p2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1327
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v1    # "info":Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;
    :cond_3
    move-object v1, v2

    .line 1333
    goto :goto_0
.end method

.method private findBitmapDecodeInfo(Ljava/util/List;Ljava/lang/String;)Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;
    .locals 4
    .param p2, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;>;"
    const/4 v2, 0x0

    .line 1310
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move-object v1, v2

    .line 1318
    :cond_1
    :goto_0
    return-object v1

    .line 1312
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 1314
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;

    .line 1315
    .local v1, "info":Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;
    iget-object v3, v1, Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;->filePath:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1312
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v1    # "info":Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;
    :cond_3
    move-object v1, v2

    .line 1318
    goto :goto_0
.end method

.method private findFilmstripItemFromPosition(I)Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1340
    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FilmstripItems:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;

    .line 1342
    .local v1, "item":Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;
    invoke-virtual {v1}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->getPosition()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1345
    .end local v1    # "item":Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCurrentMedia()Lcom/oneplus/gallery/media/Media;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1367
    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-nez v1, :cond_1

    .line 1371
    :cond_0
    :goto_0
    return-object v0

    .line 1369
    :cond_1
    iget v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CurrentMediaIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CurrentMediaIndex:I

    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v2}, Lcom/oneplus/gallery/media/MediaList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_0

    .line 1371
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    iget v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CurrentMediaIndex:I

    invoke-interface {v0, v1}, Lcom/oneplus/gallery/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/Media;

    goto :goto_0
.end method

.method private handleAsyncMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1378
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1384
    :goto_0
    return-void

    .line 1381
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/gallery/media/Media;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/FilmstripFragment;->checkAnimationState(Lcom/oneplus/gallery/media/Media;)V

    goto :goto_0

    .line 1378
    :pswitch_data_0
    .packed-switch 0x2724
        :pswitch_0
    .end packed-switch
.end method

.method private hideToolbarDelay()V
    .locals 8

    .prologue
    .line 1418
    invoke-virtual {p0}, Lcom/oneplus/gallery/FilmstripFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v1

    .line 1419
    .local v1, "galleryActivity":Lcom/oneplus/gallery/GalleryActivity;
    if-nez v1, :cond_1

    .line 1431
    :cond_0
    :goto_0
    return-void

    .line 1421
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/gallery/FilmstripFragment;->getGallery()Lcom/oneplus/gallery/Gallery;

    move-result-object v0

    .line 1422
    .local v0, "gallery":Lcom/oneplus/gallery/Gallery;
    if-eqz v0, :cond_0

    .line 1424
    sget-object v4, Lcom/oneplus/gallery/GalleryActivity;->PROP_IS_WINDOW_FOCUSED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v4}, Lcom/oneplus/gallery/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1425
    .local v3, "isWindowFocused":Z
    sget-object v4, Lcom/oneplus/gallery/Gallery;->PROP_IS_SHARING_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v4}, Lcom/oneplus/gallery/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1426
    .local v2, "isSharingMedia":Z
    iget-boolean v4, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsToolbarVisible:Z

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    if-nez v2, :cond_0

    .line 1428
    iget-object v4, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v5, "hideToolbarDelay()"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
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

    .line 1437
    iget-object v4, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsActionEditSupported:Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    .line 1438
    iget-object v3, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsActionEditSupported:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1452
    :goto_0
    return v3

    .line 1439
    :cond_0
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/gallery/GalleryApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1440
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    if-nez v2, :cond_1

    .line 1442
    iget-object v4, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v5, "isActionEditSupported() - packageManager is null."

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1445
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.EDIT"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1446
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "image/*"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1447
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1448
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1449
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsActionEditSupported:Ljava/lang/Boolean;

    .line 1452
    :goto_1
    iget-object v3, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsActionEditSupported:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    .line 1451
    :cond_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsActionEditSupported:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method private isHydrogenLauncher()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1459
    iget-object v3, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsHydrogenLauncher:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 1460
    iget-object v3, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsHydrogenLauncher:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1473
    :goto_0
    return v3

    .line 1461
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1462
    .local v0, "intentHome":Landroid/content/Intent;
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1463
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/gallery/GalleryApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 1464
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_1

    .line 1466
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1467
    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v4, "isHydrogenLauncher() - Default launcher: "

    invoke-static {v3, v4, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1468
    const-string v3, "com.oneplus.hydrogen.launcher"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1469
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsHydrogenLauncher:Ljava/lang/Boolean;

    .line 1471
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsHydrogenLauncher:Ljava/lang/Boolean;

    if-nez v3, :cond_2

    .line 1472
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsHydrogenLauncher:Ljava/lang/Boolean;

    .line 1473
    :cond_2
    iget-object v3, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsHydrogenLauncher:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0
.end method

.method private isItemSourceSameAsMovieDrawable(Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;)Z
    .locals 6
    .param p1, "item"    # Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1480
    if-eqz p1, :cond_0

    iget-object v5, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    if-nez v5, :cond_1

    .line 1503
    :cond_0
    :goto_0
    return v3

    .line 1484
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->getMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v2

    .line 1485
    .local v2, "media":Lcom/oneplus/gallery/media/Media;
    if-nez v2, :cond_2

    .line 1487
    iget-object v4, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v5, "isItemSourceSameAsMovieDrawable() - media is null"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1491
    :cond_2
    invoke-interface {v2}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 1492
    .local v0, "contentUri":Landroid/net/Uri;
    invoke-interface {v2}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 1495
    .local v1, "filePath":Ljava/lang/String;
    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    invoke-virtual {v5, v0}, Lcom/oneplus/drawable/MovieDrawable;->isTheSameSource(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v3, v4

    .line 1497
    goto :goto_0

    .line 1499
    :cond_3
    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    invoke-virtual {v5, v1}, Lcom/oneplus/drawable/MovieDrawable;->isTheSameSource(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    .line 1501
    goto :goto_0
.end method

.method private movePageToRecycler(I)V
    .locals 13
    .param p1, "index"    # I

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1510
    iget-object v7, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_AppTracker:Lcom/oneplus/gallery/AppTracker;

    const-string v8, "Gallery.DeleteMedia"

    new-array v9, v11, [Ljava/lang/Object;

    invoke-interface {v7, v8, v11, v9}, Lcom/oneplus/gallery/AppTracker;->createRecord(Ljava/lang/String;I[Ljava/lang/Object;)Z

    .line 1513
    iget-object v7, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v7, p1}, Lcom/oneplus/gallery/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery/media/Media;

    .line 1514
    .local v4, "media":Lcom/oneplus/gallery/media/Media;
    if-nez v4, :cond_1

    .line 1546
    :cond_0
    :goto_0
    return-void

    .line 1516
    :cond_1
    sget-object v7, Lcom/oneplus/gallery/FilmstripFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/gallery/FilmstripFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/gallery/media/MediaSet;

    iput-object v7, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_RecycledMediaSet:Lcom/oneplus/gallery/media/MediaSet;

    .line 1517
    iget-object v7, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_RecycledMediaSet:Lcom/oneplus/gallery/media/MediaSet;

    if-eqz v7, :cond_0

    .line 1519
    iget-object v7, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_RecycledMediaSet:Lcom/oneplus/gallery/media/MediaSet;

    invoke-interface {v7, v4, v12, v12, v10}, Lcom/oneplus/gallery/media/MediaSet;->deleteMedia(Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/media/MediaDeletionCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;

    move-result-object v3

    .line 1523
    .local v3, "handle":Lcom/oneplus/base/Handle;
    invoke-virtual {p0}, Lcom/oneplus/gallery/FilmstripFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v2

    .line 1524
    .local v2, "galleryActivity":Lcom/oneplus/gallery/GalleryActivity;
    invoke-static {v3}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v7

    if-eqz v7, :cond_2

    instance-of v7, v2, Lcom/oneplus/gallery/OPGalleryActivity;

    if-eqz v7, :cond_2

    move-object v1, v2

    .line 1526
    check-cast v1, Lcom/oneplus/gallery/OPGalleryActivity;

    .line 1527
    .local v1, "activity":Lcom/oneplus/gallery/OPGalleryActivity;
    const v7, 0x7f090032

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v1, v7, v8}, Lcom/oneplus/gallery/OPGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1528
    .local v6, "title":Ljava/lang/String;
    const v7, 0x7f090031

    invoke-virtual {v1, v7}, Lcom/oneplus/gallery/OPGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1529
    .local v0, "action":Ljava/lang/String;
    iget-object v5, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_SnackbarHandle:Lcom/oneplus/base/Handle;

    .line 1530
    .local v5, "oldHandle":Lcom/oneplus/base/Handle;
    new-instance v7, Lcom/oneplus/gallery/FilmstripFragment$16;

    invoke-direct {v7, p0}, Lcom/oneplus/gallery/FilmstripFragment$16;-><init>(Lcom/oneplus/gallery/FilmstripFragment;)V

    invoke-virtual {v1, v6, v0, v7}, Lcom/oneplus/gallery/OPGalleryActivity;->showSnackbar(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/oneplus/base/Handle;

    move-result-object v7

    iput-object v7, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_SnackbarHandle:Lcom/oneplus/base/Handle;

    .line 1539
    invoke-static {v5}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 1545
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "activity":Lcom/oneplus/gallery/OPGalleryActivity;
    .end local v5    # "oldHandle":Lcom/oneplus/base/Handle;
    .end local v6    # "title":Ljava/lang/String;
    :goto_1
    const/16 v7, 0x271a

    const-wide/16 v8, 0x2710

    invoke-static {p0, v7, v10, v8, v9}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    goto :goto_0

    .line 1542
    :cond_2
    iget-object v7, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

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

.method private onAnimationStateChecked(Lcom/oneplus/gallery/media/Media;Z)V
    .locals 6
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p2, "isAnimation"    # Z

    .prologue
    .line 1660
    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CurrentMedia:Lcom/oneplus/gallery/media/Media;

    if-eq v2, p1, :cond_1

    .line 1679
    :cond_0
    :goto_0
    return-void

    .line 1663
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v3, "onAnimationStateChecked() - Media : "

    const-string v4, ", is animation : "

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v2, v3, p1, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1666
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsCurrentMediaAnimation:Ljava/lang/Boolean;

    .line 1667
    if-eqz p2, :cond_0

    iget-boolean v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsFilmstripScrolling:Z

    if-nez v2, :cond_0

    .line 1669
    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FilmstripItems:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;

    .line 1671
    .local v0, "filmstripItem":Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->getMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 1673
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->cancelDecodingHighResolutionImage()V

    .line 1674
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/FilmstripFragment;->showMovieDrawable(Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;)V

    goto :goto_0
.end method

.method private onCurrentMediaChanged(Lcom/oneplus/gallery/media/Media;)V
    .locals 2
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    const/16 v1, 0x2724

    .line 1936
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CurrentMedia:Lcom/oneplus/gallery/media/Media;

    if-ne p1, v0, :cond_1

    .line 1971
    :cond_0
    :goto_0
    return-void

    .line 1938
    :cond_1
    iput-object p1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CurrentMedia:Lcom/oneplus/gallery/media/Media;

    .line 1939
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsCurrentMediaAnimation:Ljava/lang/Boolean;

    .line 1942
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_AsyncHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1945
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CurrentMedia:Lcom/oneplus/gallery/media/Media;

    if-eqz v0, :cond_0

    .line 1949
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_AsyncHandler:Landroid/os/Handler;

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1952
    iget v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CurrentMediaIndex:I

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/FilmstripFragment;->checkImageDecoding(I)V

    .line 1955
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->updateActionBarMenu()V

    .line 1958
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->updateCollectButtonVisibility()V

    .line 1961
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->updateDeleteButtonVisibility()V

    .line 1964
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->updateEditButtonVisibility()V

    .line 1967
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->updateCollectButtonSelection()V

    .line 1970
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->cancelDecodingHighResolutionImage()V

    goto :goto_0
.end method

.method private onGetCount()I
    .locals 1

    .prologue
    .line 2038
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v0}, Lcom/oneplus/gallery/media/MediaList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onLowResImageDecoded(Lcom/oneplus/base/Handle;Lcom/oneplus/gallery/media/Media;Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2046
    invoke-interface {p2}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v2

    .line 2047
    .local v2, "filePath":Ljava/lang/String;
    invoke-interface {p2}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 2048
    .local v0, "contentUri":Landroid/net/Uri;
    iget-object v6, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_LowResBitmapDecodeInfos:Ljava/util/List;

    invoke-direct {p0, v6, v2}, Lcom/oneplus/gallery/FilmstripFragment;->findBitmapDecodeInfo(Ljava/util/List;Ljava/lang/String;)Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;

    move-result-object v1

    .line 2049
    .local v1, "decodeInfo":Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;
    if-nez v1, :cond_0

    .line 2050
    iget-object v6, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_LowResBitmapDecodeInfos:Ljava/util/List;

    invoke-direct {p0, v6, v0}, Lcom/oneplus/gallery/FilmstripFragment;->findBitmapDecodeInfo(Ljava/util/List;Landroid/net/Uri;)Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;

    move-result-object v1

    .line 2051
    :cond_0
    if-nez v1, :cond_2

    .line 2093
    :cond_1
    :goto_0
    return-void

    .line 2059
    :cond_2
    iget-object v6, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_LowResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2060
    iget-object v6, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_ReusedBitmapDecodeInfos:Ljava/util/Queue;

    invoke-interface {v6, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2063
    const/4 v5, 0x0

    .line 2064
    .local v5, "isItemFound":Z
    iget-object v6, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FilmstripItems:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;

    .line 2066
    .local v3, "filmstripItem":Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->getMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 2068
    if-eqz v2, :cond_4

    invoke-virtual {v3}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->getMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v6

    invoke-interface {v6}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    if-eqz v0, :cond_3

    invoke-virtual {v3}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->getMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v6

    invoke-interface {v6}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2071
    :cond_5
    invoke-virtual {v3}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->getImageDecodeState()Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;

    move-result-object v6

    sget-object v7, Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;->NONE:Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;

    if-ne v6, v7, :cond_3

    .line 2073
    sget-object v6, Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;->SMALL_THUMB_DECODED:Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;

    invoke-virtual {v3, v6}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->setImageDecodeState(Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;)V

    .line 2074
    # invokes: Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->updateViewWhenDecoded(Landroid/graphics/Bitmap;)V
    invoke-static {v3, p3}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->access$5100(Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;Landroid/graphics/Bitmap;)V

    .line 2075
    if-nez p3, :cond_7

    .line 2077
    iget-object v6, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v7, "onLowResImageDecoded() - Fail to decode bitmap"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2085
    :goto_1
    const/4 v5, 0x1

    .line 2091
    .end local v3    # "filmstripItem":Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;
    :cond_6
    if-nez v5, :cond_1

    goto :goto_0

    .line 2081
    .restart local v3    # "filmstripItem":Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;
    :cond_7
    invoke-virtual {v3, p3}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->setLowResThumb(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method private onMediaListUpdated()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 2173
    invoke-direct {p0, v0, v0, v0}, Lcom/oneplus/gallery/FilmstripFragment;->onMediaListUpdated(III)V

    .line 2174
    return-void
.end method

.method private onMediaListUpdated(III)V
    .locals 14
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "updateType"    # I

    .prologue
    .line 2178
    iget-object v9, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-nez v9, :cond_1

    .line 2180
    iget-object v9, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FilmstripAdapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v9}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyDataSetChanged()V

    .line 2261
    :cond_0
    :goto_0
    return-void

    .line 2185
    :cond_1
    move/from16 v0, p2

    if-gt p1, v0, :cond_0

    .line 2189
    iget-object v9, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FilmstripAdapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eqz v9, :cond_2

    .line 2191
    packed-switch p3, :pswitch_data_0

    .line 2225
    iget-object v9, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FilmstripAdapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v9}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyDataSetChanged()V

    .line 2231
    :cond_2
    :goto_1
    iget-object v9, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_PreferredContentUri:Landroid/net/Uri;

    if-eqz v9, :cond_7

    .line 2233
    iget-object v7, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_PreferredContentUri:Landroid/net/Uri;

    .line 2234
    .local v7, "preferredContentUri":Landroid/net/Uri;
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_PreferredContentUri:Landroid/net/Uri;

    .line 2235
    move/from16 v0, p2

    invoke-direct {p0, v7, p1, v0}, Lcom/oneplus/gallery/FilmstripFragment;->searchMediaListIndex(Landroid/net/Uri;II)I

    move-result v3

    .line 2236
    .local v3, "index":I
    if-ltz v3, :cond_7

    .line 2238
    iget-object v9, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v10, "onMediaListUpdated() - Set current media to preferred content Uri: "

    invoke-static {v9, v10, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2239
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-direct {p0, v9, v10, v11}, Lcom/oneplus/gallery/FilmstripFragment;->setCurrentMediaIndexProp(Ljava/lang/Integer;ZZ)Z

    .line 2240
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->updateCollectButtonSelection()V

    goto :goto_0

    .line 2195
    .end local v3    # "index":I
    .end local v7    # "preferredContentUri":Landroid/net/Uri;
    :pswitch_0
    sub-int v9, p2, p1

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    add-int/lit8 v1, v9, 0x1

    .line 2196
    .local v1, "count":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2197
    .local v8, "updatingItems":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;>;"
    iget-object v9, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FilmstripItems:Ljava/util/Set;

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

    check-cast v4, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;

    .line 2199
    .local v4, "item":Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;
    invoke-virtual {v4}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->getPosition()I

    move-result v6

    .line 2200
    .local v6, "position":I
    move/from16 v0, p2

    if-lt v6, v0, :cond_3

    .line 2201
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2203
    .end local v4    # "item":Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;
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

    check-cast v4, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;

    .line 2205
    .restart local v4    # "item":Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;
    invoke-virtual {v4}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->getPosition()I

    move-result v9

    add-int v5, v9, v1

    .line 2206
    .local v5, "newPosition":I
    invoke-virtual {v4, v5}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->setPosition(I)V

    goto :goto_3

    .line 2210
    .end local v4    # "item":Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;
    .end local v5    # "newPosition":I
    :cond_5
    iget-object v9, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FilmstripAdapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    move/from16 v0, p2

    invoke-virtual {v9, p1, v0}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyItemAdded(II)V

    goto :goto_1

    .line 2214
    .end local v1    # "count":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v8    # "updatingItems":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;>;"
    :pswitch_1
    iget-object v9, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FilmstripAdapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    move/from16 v0, p2

    invoke-virtual {v9, p1, v0}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyItemRemoved(II)V

    .line 2216
    iget v9, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CurrentMediaIndex:I

    iget-object v10, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v10}, Lcom/oneplus/gallery/media/MediaList;->size()I

    move-result v10

    if-ge v9, v10, :cond_6

    .line 2218
    iget v9, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CurrentMediaIndex:I

    if-lt v9, p1, :cond_2

    .line 2219
    iget-object v9, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    iget v10, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CurrentMediaIndex:I

    invoke-interface {v9, v10}, Lcom/oneplus/gallery/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/gallery/media/Media;

    invoke-direct {p0, v9}, Lcom/oneplus/gallery/FilmstripFragment;->onCurrentMediaChanged(Lcom/oneplus/gallery/media/Media;)V

    goto/16 :goto_1

    .line 2222
    :cond_6
    iget-object v9, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v9}, Lcom/oneplus/gallery/media/MediaList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-direct {p0, v9, v10, v11}, Lcom/oneplus/gallery/FilmstripFragment;->setCurrentMediaIndexProp(Ljava/lang/Integer;ZZ)Z

    goto/16 :goto_1

    .line 2246
    :cond_7
    iget-object v9, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_RecycledMediaUri:Landroid/net/Uri;

    if-eqz v9, :cond_8

    const/4 v9, 0x1

    move/from16 v0, p3

    if-ne v0, v9, :cond_8

    .line 2248
    move/from16 v0, p2

    if-ne p1, v0, :cond_8

    iget-object v10, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_RecycledMediaUri:Landroid/net/Uri;

    iget-object v9, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v9, p1}, Lcom/oneplus/gallery/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/gallery/media/Media;

    invoke-interface {v9}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 2250
    iget-object v9, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v10, "onMediaListUpdated() - Set current media to recycled content Uri: "

    iget-object v11, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_RecycledMediaUri:Landroid/net/Uri;

    invoke-static {v9, v10, v11}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2251
    iget-object v9, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_RecycledMediaUri:Landroid/net/Uri;

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lcom/oneplus/gallery/FilmstripFragment;->setPageToContentUri(Landroid/net/Uri;Z)V

    .line 2252
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_RecycledMediaUri:Landroid/net/Uri;

    .line 2253
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_RecycledMediaSet:Lcom/oneplus/gallery/media/MediaSet;

    .line 2254
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->updateCollectButtonSelection()V

    goto/16 :goto_0

    .line 2260
    :cond_8
    iget-object v9, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

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

    iget v13, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CurrentMediaIndex:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x5

    const-string v13, ", list size: "

    aput-object v13, v11, v12

    const/4 v12, 0x6

    iget-object v13, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v13}, Lcom/oneplus/gallery/media/MediaList;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2191
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
    .line 2267
    iget-object v7, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-nez v7, :cond_1

    .line 2297
    :cond_0
    return-void

    .line 2269
    :cond_1
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 2271
    iget-object v7, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaDetailsDialog:Lcom/oneplus/gallery/MediaDetailsDialog;

    if-eqz v7, :cond_2

    .line 2273
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-gt v1, p2, :cond_2

    .line 2275
    iget-object v7, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaDetailsDialog:Lcom/oneplus/gallery/MediaDetailsDialog;

    invoke-virtual {v7}, Lcom/oneplus/gallery/MediaDetailsDialog;->getMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v7

    iget-object v8, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v8, v1}, Lcom/oneplus/gallery/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-ne v7, v8, :cond_4

    .line 2277
    iget-object v7, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaDetailsDialog:Lcom/oneplus/gallery/MediaDetailsDialog;

    invoke-virtual {v7}, Lcom/oneplus/gallery/MediaDetailsDialog;->dismiss()V

    .line 2284
    .end local v1    # "i":I
    :cond_2
    sub-int v7, p2, p1

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/lit8 v0, v7, 0x1

    .line 2285
    .local v0, "count":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2286
    .local v6, "updatingItems":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;>;"
    iget-object v7, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FilmstripItems:Ljava/util/Set;

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

    check-cast v3, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;

    .line 2288
    .local v3, "item":Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;
    invoke-virtual {v3}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->getPosition()I

    move-result v5

    .line 2289
    .local v5, "position":I
    if-le v5, p2, :cond_3

    .line 2290
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2273
    .end local v0    # "count":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "item":Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;
    .end local v5    # "position":I
    .end local v6    # "updatingItems":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;>;"
    .restart local v1    # "i":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2292
    .end local v1    # "i":I
    .restart local v0    # "count":I
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v6    # "updatingItems":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;>;"
    :cond_5
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;

    .line 2294
    .restart local v3    # "item":Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;
    invoke-virtual {v3}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->getPosition()I

    move-result v7

    sub-int v4, v7, v0

    .line 2295
    .local v4, "newPosition":I
    invoke-virtual {v3, v4}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->setPosition(I)V

    goto :goto_2
.end method

.method private onMediumResImageDecoded(Lcom/oneplus/base/Handle;Lcom/oneplus/gallery/media/Media;Landroid/graphics/Bitmap;)V
    .locals 9
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2101
    invoke-interface {p2}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v2

    .line 2102
    .local v2, "filePath":Ljava/lang/String;
    invoke-interface {p2}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 2103
    .local v0, "contentUri":Landroid/net/Uri;
    iget-object v7, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediumResBitmapDecodeInfos:Ljava/util/List;

    invoke-direct {p0, v7, v2}, Lcom/oneplus/gallery/FilmstripFragment;->findBitmapDecodeInfo(Ljava/util/List;Ljava/lang/String;)Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;

    move-result-object v1

    .line 2104
    .local v1, "decodeInfo":Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;
    if-nez v1, :cond_0

    .line 2105
    iget-object v7, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediumResBitmapDecodeInfos:Ljava/util/List;

    invoke-direct {p0, v7, v0}, Lcom/oneplus/gallery/FilmstripFragment;->findBitmapDecodeInfo(Ljava/util/List;Landroid/net/Uri;)Lcom/oneplus/gallery/FilmstripFragment$BitmapDecodeInfo;

    move-result-object v1

    .line 2106
    :cond_0
    if-nez v1, :cond_2

    .line 2167
    :cond_1
    :goto_0
    return-void

    .line 2114
    :cond_2
    iget-object v7, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediumResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2115
    iget-object v7, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_ReusedBitmapDecodeInfos:Ljava/util/Queue;

    invoke-interface {v7, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2118
    const/4 v6, 0x0

    .line 2119
    .local v6, "isItemFound":Z
    const/4 v5, 0x0

    .line 2120
    .local v5, "isCurrentItem":Z
    iget-object v7, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FilmstripItems:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;

    .line 2122
    .local v3, "filmstripItem":Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->getMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 2124
    if-eqz v2, :cond_4

    invoke-virtual {v3}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->getMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v7

    invoke-interface {v7}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    :cond_4
    if-eqz v0, :cond_3

    invoke-virtual {v3}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->getMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v7

    invoke-interface {v7}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2127
    :cond_5
    sget-object v7, Lcom/oneplus/gallery/FilmstripFragment$29;->$SwitchMap$com$oneplus$gallery$FilmstripFragment$ImageDecodeState:[I

    invoke-virtual {v3}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->getImageDecodeState()Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 2147
    :goto_1
    const/4 v6, 0x1

    .line 2148
    invoke-virtual {v3}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->getPosition()I

    move-result v7

    iget v8, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CurrentMediaIndex:I

    if-ne v7, v8, :cond_a

    const/4 v5, 0x1

    .line 2149
    :goto_2
    iget-boolean v7, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsFilmstripScrolling:Z

    if-nez v7, :cond_6

    if-eqz v5, :cond_6

    iget-object v7, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsCurrentMediaAnimation:Ljava/lang/Boolean;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsCurrentMediaAnimation:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2151
    invoke-direct {p0, v3}, Lcom/oneplus/gallery/FilmstripFragment;->showMovieDrawable(Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;)V

    .line 2157
    .end local v3    # "filmstripItem":Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;
    :cond_6
    if-nez v6, :cond_7

    .line 2161
    :cond_7
    iget-object v7, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CurrentMedia:Lcom/oneplus/gallery/media/Media;

    if-eq v7, p2, :cond_8

    iget-object v7, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_ThumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CurrentMedia:Lcom/oneplus/gallery/media/Media;

    if-eqz v7, :cond_8

    .line 2162
    iget-object v7, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_ThumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;

    iget-object v8, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CurrentMedia:Lcom/oneplus/gallery/media/Media;

    invoke-interface {v7, v8}, Lcom/oneplus/gallery/media/ThumbnailImageManager;->getCachedThumbnailImage(Lcom/oneplus/gallery/media/Media;)Landroid/graphics/Bitmap;

    .line 2165
    :cond_8
    if-eqz v5, :cond_1

    if-eqz p3, :cond_1

    iget-object v7, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    if-eqz v7, :cond_1

    .line 2166
    iget-object v7, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-virtual {v7, p3}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->setThumbnailBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 2130
    .restart local v3    # "filmstripItem":Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;
    :pswitch_0
    invoke-virtual {v3}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->getMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/oneplus/gallery/FilmstripFragment;->cancelDecodingLowResolutionImage(Lcom/oneplus/gallery/media/Media;)V

    .line 2132
    :pswitch_1
    sget-object v7, Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;->THUMB_DECODED:Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;

    invoke-virtual {v3, v7}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->setImageDecodeState(Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;)V

    .line 2133
    # invokes: Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->updateViewWhenDecoded(Landroid/graphics/Bitmap;)V
    invoke-static {v3, p3}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->access$5100(Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;Landroid/graphics/Bitmap;)V

    .line 2134
    if-nez p3, :cond_9

    .line 2136
    iget-object v7, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v8, "onMediumResImageDecoded() - Fail to decode bitmap"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2140
    :cond_9
    invoke-virtual {v3, p3}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->setMediumResThumb(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 2148
    :cond_a
    const/4 v5, 0x0

    goto :goto_2

    .line 2127
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
    .line 2333
    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v2, p1}, Lcom/oneplus/gallery/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/Media;

    .line 2336
    .local v1, "media":Lcom/oneplus/gallery/media/Media;
    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FilmstripItemPool:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;

    .line 2337
    .local v0, "filmstripItem":Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;
    if-nez v0, :cond_0

    .line 2338
    new-instance v0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;

    .end local v0    # "filmstripItem":Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;
    invoke-direct {v0, p0, v1}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;-><init>(Lcom/oneplus/gallery/FilmstripFragment;Lcom/oneplus/gallery/media/Media;)V

    .line 2343
    .restart local v0    # "filmstripItem":Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;
    :goto_0
    invoke-virtual {v0}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->getContainer()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2344
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 2347
    invoke-virtual {v0, p1}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->setPosition(I)V

    .line 2349
    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

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

    invoke-interface {v1}, Lcom/oneplus/gallery/media/Media;->getMimeType()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2352
    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FilmstripItems:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2355
    sget-object v2, Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;->NONE:Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->setImageDecodeState(Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;)V

    .line 2356
    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_DummyThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2360
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/FilmstripFragment;->checkImageDecoding(I)V

    .line 2361
    return-void

    .line 2340
    :cond_0
    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->updateMedia(Lcom/oneplus/gallery/media/Media;)V

    goto :goto_0
.end method

.method private onReleaseItemView(ILandroid/view/ViewGroup;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x0

    .line 2367
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;

    .line 2368
    .local v0, "reusedItem":Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;
    if-eqz v0, :cond_1

    .line 2371
    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FilmstripItemPool:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2372
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 2373
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->setPosition(I)V

    .line 2374
    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_DummyThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2377
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/FilmstripFragment;->isItemSourceSameAsMovieDrawable(Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2379
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/FilmstripFragment;->releaseMovieDrawable(Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;)V

    .line 2381
    :cond_0
    invoke-virtual {v0, v2}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->setMedia(Lcom/oneplus/gallery/media/Media;)V

    .line 2382
    invoke-virtual {v0}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->clearCaches()V

    .line 2384
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FilmstripItems:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2386
    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v2, "onReleaseItemView() - Position: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, ", item: "

    invoke-static {v1, v2, v3, v4, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2389
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/FilmstripFragment;->checkImageDecoding(I)V

    .line 2392
    sget-object v1, Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/FilmstripFragment;->setFilmstripState(Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;)V

    .line 2395
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2396
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
    .line 2440
    invoke-virtual {p1}, Lcom/oneplus/widget/ScaleImageView;->getFitToScreenShortSideBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2441
    .local v0, "fitBounds":Landroid/graphics/Rect;
    iget-boolean v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsOverScaledDown:Z

    if-nez v1, :cond_2

    .line 2443
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int v2, p4, p2

    if-gt v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int v2, p5, p3

    if-le v1, v2, :cond_1

    .line 2445
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v2, "onScaleImageBoundsChanged() - Over scaled"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2446
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsOverScaledDown:Z

    .line 2457
    :cond_1
    :goto_0
    return-void

    .line 2451
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int v2, p4, p2

    if-gt v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int v2, p5, p3

    if-gt v1, v2, :cond_1

    .line 2453
    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v2, "onScaleImageBoundsChanged() - Over scaled cancel"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2454
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsOverScaledDown:Z

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

    .line 2464
    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-nez v1, :cond_0

    .line 2505
    :goto_0
    return-void

    .line 2468
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/widget/ScaleImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;

    .line 2469
    .local v0, "filmstripItem":Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;
    invoke-virtual {v0}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->getPosition()I

    move-result v1

    if-gez v1, :cond_1

    .line 2471
    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

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

    .line 2475
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

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

    invoke-virtual {v0}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->getMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2478
    sget-object v1, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    if-ne p2, v1, :cond_4

    .line 2481
    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsCurrentMediaAnimation:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsCurrentMediaAnimation:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2482
    :cond_2
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/FilmstripFragment;->decodeHighResolutionImage(Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;)V

    .line 2504
    :cond_3
    :goto_1
    iput-boolean v7, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsOverScaledDown:Z

    goto :goto_0

    .line 2484
    :cond_4
    sget-object v1, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    if-ne p3, v1, :cond_3

    .line 2487
    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsCurrentMediaAnimation:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsCurrentMediaAnimation:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2489
    :cond_5
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->cancelDecodingHighResolutionImage()V

    .line 2490
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2491
    sget-object v1, Lcom/oneplus/gallery/FilmstripFragment$ThumbnailQuality;->NORMAL:Lcom/oneplus/gallery/FilmstripFragment$ThumbnailQuality;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->setThumbnailQuality(Lcom/oneplus/gallery/FilmstripFragment$ThumbnailQuality;)V

    .line 2494
    sget-object v1, Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;->NONE:Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->setImageDecodeState(Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;)V

    .line 2495
    invoke-virtual {v0}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->getMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v1

    invoke-direct {p0, v1, v6}, Lcom/oneplus/gallery/FilmstripFragment;->decodeLowResolutionImage(Lcom/oneplus/gallery/media/Media;Z)V

    .line 2496
    invoke-virtual {v0}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->getMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v1

    invoke-direct {p0, v1, v6}, Lcom/oneplus/gallery/FilmstripFragment;->decodeMediumResolutionImage(Lcom/oneplus/gallery/media/Media;Z)V

    .line 2500
    :cond_6
    sget-object v1, Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/FilmstripFragment;->setFilmstripState(Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;)V

    goto :goto_1
.end method

.method private onScaleImageGestureDoubleTap(Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "item"    # Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 2512
    invoke-virtual {p1}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->getMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v0

    .line 2513
    .local v0, "media":Lcom/oneplus/gallery/media/Media;
    sget-object v1, Lcom/oneplus/gallery/FilmstripFragment$29;->$SwitchMap$com$oneplus$gallery$FilmstripFragment$FilmstripState:[I

    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FilmstripState:Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;

    invoke-virtual {v2}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2523
    :cond_0
    :goto_0
    return v3

    .line 2516
    :pswitch_0
    instance-of v1, v0, Lcom/oneplus/gallery/media/PhotoMedia;

    if-eqz v1, :cond_0

    # invokes: Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->isStretchedImage()Z
    invoke-static {p1}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->access$5200(Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2517
    sget-object v1, Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;->VIEW_DETAILS:Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/FilmstripFragment;->setFilmstripState(Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;)V

    goto :goto_0

    .line 2520
    :pswitch_1
    sget-object v1, Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/FilmstripFragment;->setFilmstripState(Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;)V

    goto :goto_0

    .line 2513
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onScaleImageGestureEnd(Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;)V
    .locals 1
    .param p1, "item"    # Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;

    .prologue
    .line 2532
    iget-boolean v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsScaled:Z

    if-eqz v0, :cond_0

    .line 2534
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->updateFilmstripScrollMode()V

    .line 2536
    :cond_0
    return-void
.end method

.method private onScaleImageGestureFling(Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .param p1, "item"    # Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;
    .param p2, "e1"    # Landroid/view/MotionEvent;
    .param p3, "e2"    # Landroid/view/MotionEvent;
    .param p4, "velocityX"    # F
    .param p5, "velocityY"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2543
    iget-object v5, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FilmstripState:Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;

    sget-object v6, Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;->VIEW_DETAILS:Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;

    if-eq v5, v6, :cond_1

    .line 2579
    :cond_0
    :goto_0
    return v3

    .line 2545
    :cond_1
    iget-object v5, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-eqz v5, :cond_0

    .line 2549
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x459c4000    # 5000.0f

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_0

    .line 2553
    # getter for: Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;
    invoke-static {p1}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->access$5300(Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;)Lcom/oneplus/widget/ScaleImageView;

    move-result-object v1

    .line 2554
    .local v1, "imageView":Lcom/oneplus/widget/ScaleImageView;
    invoke-virtual {v1}, Lcom/oneplus/widget/ScaleImageView;->getImageBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2555
    .local v0, "imageBounds":Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .line 2560
    const/4 v5, 0x0

    cmpg-float v5, p4, v5

    if-gez v5, :cond_2

    .line 2562
    iget v5, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Lcom/oneplus/widget/ScaleImageView;->getWidth()I

    move-result v6

    if-gt v5, v6, :cond_0

    iget v5, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CurrentMediaIndex:I

    iget-object v6, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v6}, Lcom/oneplus/gallery/media/MediaList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_0

    .line 2564
    iget v3, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CurrentMediaIndex:I

    add-int/lit8 v2, v3, 0x1

    .line 2574
    .local v2, "indexTo":I
    :goto_1
    sget-object v3, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    invoke-virtual {v1, v3}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Lcom/oneplus/widget/ScaleImageView$BoundsType;)V

    .line 2575
    sget-object v3, Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;

    invoke-direct {p0, v3}, Lcom/oneplus/gallery/FilmstripFragment;->setFilmstripState(Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;)V

    .line 2576
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3, v4, v4}, Lcom/oneplus/gallery/FilmstripFragment;->setCurrentMediaIndexProp(Ljava/lang/Integer;ZZ)Z

    move v3, v4

    .line 2579
    goto :goto_0

    .line 2568
    .end local v2    # "indexTo":I
    :cond_2
    iget v5, v0, Landroid/graphics/Rect;->left:I

    if-ltz v5, :cond_0

    iget v5, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CurrentMediaIndex:I

    if-eqz v5, :cond_0

    .line 2570
    iget v3, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CurrentMediaIndex:I

    add-int/lit8 v2, v3, -0x1

    .restart local v2    # "indexTo":I
    goto :goto_1
.end method

.method private onScaleImageGestureScale(Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;FFF)Z
    .locals 4
    .param p1, "item"    # Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;
    .param p2, "factor"    # F
    .param p3, "pivotX"    # F
    .param p4, "pivotY"    # F

    .prologue
    const/4 v3, 0x0

    .line 2587
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsScaled:Z

    .line 2588
    iget v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_ScaleFactor:F

    mul-float/2addr v1, p2

    iput v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_ScaleFactor:F

    .line 2590
    invoke-virtual {p1}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->getMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v0

    .line 2591
    .local v0, "media":Lcom/oneplus/gallery/media/Media;
    sget-object v1, Lcom/oneplus/gallery/FilmstripFragment$29;->$SwitchMap$com$oneplus$gallery$FilmstripFragment$FilmstripState:[I

    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FilmstripState:Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;

    invoke-virtual {v2}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2601
    :cond_0
    :goto_0
    return v3

    .line 2594
    :pswitch_0
    iget v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_ScaleFactor:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 2596
    instance-of v1, v0, Lcom/oneplus/gallery/media/PhotoMedia;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->getImageBoundsType()Lcom/oneplus/widget/ScaleImageView$BoundsType;

    move-result-object v1

    sget-object v2, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    if-eq v1, v2, :cond_0

    .line 2597
    sget-object v1, Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;->VIEW_DETAILS:Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/FilmstripFragment;->setFilmstripState(Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;)V

    goto :goto_0

    .line 2591
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onScaleImageGestureSingleTapUp(Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "item"    # Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2609
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->showHideToolbar()Z

    move-result v0

    return v0
.end method

.method private onScaleImageGestureStart(Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "item"    # Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2615
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_ScaleFactor:F

    .line 2616
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsScaled:Z

    .line 2617
    return-void
.end method

.method private onScrollStarted()V
    .locals 4

    .prologue
    .line 2623
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsFilmstripScrolling:Z

    .line 2624
    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FilmstripItems:Ljava/util/Set;

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

    check-cast v1, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;

    .line 2626
    .local v1, "item":Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;
    invoke-virtual {v1}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->getPosition()I

    move-result v2

    iget v3, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CurrentMediaIndex:I

    if-ne v2, v3, :cond_0

    .line 2627
    invoke-direct {p0, v1}, Lcom/oneplus/gallery/FilmstripFragment;->releaseMovieDrawable(Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;)V

    goto :goto_0

    .line 2631
    .end local v1    # "item":Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->cancelHideToolbar()V

    .line 2632
    return-void
.end method

.method private onScrollStopped()V
    .locals 4

    .prologue
    .line 2638
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsFilmstripScrolling:Z

    .line 2639
    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FilmstripItems:Ljava/util/Set;

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

    check-cast v1, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;

    .line 2641
    .local v1, "item":Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;
    invoke-virtual {v1}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->getPosition()I

    move-result v2

    iget v3, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CurrentMediaIndex:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsCurrentMediaAnimation:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsCurrentMediaAnimation:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2645
    invoke-direct {p0, v1}, Lcom/oneplus/gallery/FilmstripFragment;->showMovieDrawable(Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;)V

    goto :goto_0

    .line 2650
    .end local v1    # "item":Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->hideToolbarDelay()V

    .line 2651
    return-void
.end method

.method private onSnackbarVisibleHeightChanged(F)V
    .locals 2
    .param p1, "height"    # F

    .prologue
    .line 2657
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FooterContainer:Landroid/view/View;

    neg-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 2658
    return-void
.end method

.method private onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "focused"    # Z

    .prologue
    .line 2727
    if-eqz p1, :cond_0

    .line 2728
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->hideToolbarDelay()V

    .line 2731
    :goto_0
    return-void

    .line 2730
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->cancelHideToolbar()V

    goto :goto_0
.end method

.method private playVideo(Lcom/oneplus/gallery/media/Media;)V
    .locals 4
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 2738
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FilmstripState:Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;

    .line 2739
    .local v0, "state":Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;
    sget-object v1, Lcom/oneplus/gallery/FilmstripFragment$29;->$SwitchMap$com$oneplus$gallery$FilmstripFragment$FilmstripState:[I

    invoke-virtual {v0}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2744
    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

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

    .line 2752
    :cond_0
    :goto_0
    return-void

    .line 2747
    :pswitch_0
    if-eqz p1, :cond_0

    .line 2751
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/FilmstripFragment;->playVideoDirectly(Lcom/oneplus/gallery/media/Media;)V

    goto :goto_0

    .line 2739
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private playVideoDirectly(Lcom/oneplus/gallery/media/Media;)V
    .locals 3
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 2759
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/oneplus/gallery/FilmstripFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/oneplus/gallery/VideoPlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2760
    .local v0, "videoPlayerIntent":Landroid/content/Intent;
    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "video/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2761
    const-string v1, "IsReadOnly"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2762
    const-string v1, "com.oneplus.gallery.GalleryActivity.extra.SHARED_GALLERY_ID"

    invoke-virtual {p0}, Lcom/oneplus/gallery/FilmstripFragment;->getGallery()Lcom/oneplus/gallery/Gallery;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/gallery/Gallery;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2765
    const/16 v1, 0x69

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/FilmstripFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2766
    return-void
.end method

.method private prepareMovieDrawable(Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;)V
    .locals 4
    .param p1, "item"    # Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;

    .prologue
    .line 2773
    if-nez p1, :cond_1

    .line 2805
    :cond_0
    :goto_0
    return-void

    .line 2777
    :cond_1
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/FilmstripFragment;->isItemSourceSameAsMovieDrawable(Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2779
    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v3, "prepareMovieDrawable() - item is the same as movie drawable."

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2784
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    if-eqz v2, :cond_3

    .line 2786
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/FilmstripFragment;->releaseMovieDrawable(Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;)V

    .line 2790
    :cond_3
    invoke-virtual {p1}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->getMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v2

    invoke-interface {v2}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 2791
    .local v0, "contentUri":Landroid/net/Uri;
    if-eqz v0, :cond_4

    .line 2793
    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v3, "prepareMovieDrawable() - Uri: "

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2794
    new-instance v2, Lcom/oneplus/drawable/MovieDrawable;

    invoke-virtual {p0}, Lcom/oneplus/gallery/FilmstripFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/oneplus/drawable/MovieDrawable;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iput-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    goto :goto_0

    .line 2798
    :cond_4
    invoke-virtual {p1}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->getMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v2

    invoke-interface {v2}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 2799
    .local v1, "filePath":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 2801
    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v3, "prepareMovieDrawable() - Path: "

    invoke-static {v2, v3, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2802
    new-instance v2, Lcom/oneplus/drawable/MovieDrawable;

    invoke-direct {v2, v1}, Lcom/oneplus/drawable/MovieDrawable;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    goto :goto_0
.end method

.method private releaseMovieDrawable(Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;)V
    .locals 4
    .param p1, "item"    # Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;

    .prologue
    const/4 v3, 0x0

    .line 2812
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    if-nez v0, :cond_1

    .line 2821
    :cond_0
    :goto_0
    return-void

    .line 2815
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v1, "releaseMovieDrawable()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2817
    invoke-virtual {p1, v3}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2818
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    invoke-virtual {v0}, Lcom/oneplus/drawable/MovieDrawable;->stop()V

    .line 2819
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/drawable/MovieDrawable;->setVisible(ZZ)Z

    .line 2820
    iput-object v3, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    goto :goto_0
.end method

.method private resetFilmstripState()V
    .locals 2

    .prologue
    .line 2827
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v1, "resetFilmstripState()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2830
    sget-object v0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;->BACKGROUND:Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/FilmstripFragment;->setFilmstripState(Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;)V

    .line 2831
    return-void
.end method

.method private restoreMediaFromRecycler()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2837
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_AppTracker:Lcom/oneplus/gallery/AppTracker;

    const-string v1, "Gallery.UndoDeleteMedia"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3, v2}, Lcom/oneplus/gallery/AppTracker;->createRecord(Ljava/lang/String;I[Ljava/lang/Object;)Z

    .line 2839
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_RecycledMediaSet:Lcom/oneplus/gallery/media/MediaSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_RecycledMediaUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 2847
    :cond_0
    :goto_0
    return-void

    .line 2843
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_RecycledMediaSet:Lcom/oneplus/gallery/media/MediaSet;

    invoke-interface {v0, v3}, Lcom/oneplus/gallery/media/MediaSet;->restoreMediaInRecycleBin(I)I

    .line 2846
    invoke-virtual {p0}, Lcom/oneplus/gallery/FilmstripFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x271a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private searchMediaListIndex(Landroid/net/Uri;)I
    .locals 1
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, -0x1

    .line 2853
    invoke-direct {p0, p1, v0, v0}, Lcom/oneplus/gallery/FilmstripFragment;->searchMediaListIndex(Landroid/net/Uri;II)I

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

    .line 2857
    if-nez p1, :cond_1

    move v0, v2

    .line 2870
    :cond_0
    :goto_0
    return v0

    .line 2859
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v1}, Lcom/oneplus/gallery/media/MediaList;->size()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    move v0, v2

    .line 2860
    goto :goto_0

    .line 2861
    :cond_3
    if-ne p2, v2, :cond_4

    .line 2862
    const/4 p2, 0x0

    .line 2863
    :cond_4
    if-eq p3, v2, :cond_5

    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v1}, Lcom/oneplus/gallery/media/MediaList;->size()I

    move-result v1

    if-lt p3, v1, :cond_6

    .line 2864
    :cond_5
    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v1}, Lcom/oneplus/gallery/media/MediaList;->size()I

    move-result v1

    add-int/lit8 p3, v1, -0x1

    .line 2865
    :cond_6
    move v0, p3

    .local v0, "i":I
    :goto_1
    if-lt v0, p2, :cond_7

    .line 2867
    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v1, v0}, Lcom/oneplus/gallery/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/Media;

    invoke-interface {v1}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2865
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_7
    move v0, v2

    .line 2870
    goto :goto_0
.end method

.method private setCurrentMediaIndexProp(Ljava/lang/Integer;Z)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Integer;
    .param p2, "updateFilmstrip"    # Z

    .prologue
    .line 2889
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/gallery/FilmstripFragment;->setCurrentMediaIndexProp(Ljava/lang/Integer;ZZ)Z

    move-result v0

    return v0
.end method

.method private setCurrentMediaIndexProp(Ljava/lang/Integer;ZZ)Z
    .locals 4
    .param p1, "value"    # Ljava/lang/Integer;
    .param p2, "updateFilmstrip"    # Z
    .param p3, "smooth"    # Z

    .prologue
    .line 2894
    iget v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CurrentMediaIndex:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 2895
    const/4 v2, 0x1

    .line 2913
    :goto_0
    return v2

    .line 2896
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v3}, Lcom/oneplus/gallery/media/MediaList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_2

    .line 2897
    :cond_1
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 2900
    :cond_2
    iget v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CurrentMediaIndex:I

    .line 2901
    .local v1, "oldValue":I
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CurrentMediaIndex:I

    .line 2904
    if-eqz p2, :cond_3

    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FilmstripView:Lcom/oneplus/widget/FilmstripView;

    if-eqz v2, :cond_3

    .line 2905
    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FilmstripView:Lcom/oneplus/widget/FilmstripView;

    iget v3, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CurrentMediaIndex:I

    invoke-virtual {v2, v3, p3}, Lcom/oneplus/widget/FilmstripView;->setCurrentItem(IZ)V

    .line 2908
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_5

    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/oneplus/gallery/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery/media/Media;

    move-object v0, v2

    .line 2909
    .local v0, "newMedia":Lcom/oneplus/gallery/media/Media;
    :goto_1
    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CurrentMedia:Lcom/oneplus/gallery/media/Media;

    if-eq v0, v2, :cond_4

    .line 2910
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/FilmstripFragment;->onCurrentMediaChanged(Lcom/oneplus/gallery/media/Media;)V

    .line 2913
    :cond_4
    sget-object v2, Lcom/oneplus/gallery/FilmstripFragment;->PROP_CURRENT_MEDIA_INDEX:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p1}, Lcom/oneplus/gallery/FilmstripFragment;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 2908
    .end local v0    # "newMedia":Lcom/oneplus/gallery/media/Media;
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setFilmstripScrollMode(I)V
    .locals 3
    .param p1, "scrollMode"    # I

    .prologue
    .line 2921
    iget v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FilmstripScrollMode:I

    if-ne v0, p1, :cond_0

    .line 2928
    :goto_0
    return-void

    .line 2925
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v1, "setFilmstripScrollMode() - Scroll mode: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2926
    iput p1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FilmstripScrollMode:I

    .line 2927
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FilmstripView:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v0, p1}, Lcom/oneplus/widget/FilmstripView;->setScrollMode(I)V

    goto :goto_0
.end method

.method private setFilmstripState(Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;)V
    .locals 5
    .param p1, "state"    # Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;

    .prologue
    .line 2936
    iget-object v3, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FilmstripState:Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;

    if-ne p1, v3, :cond_0

    .line 2960
    :goto_0
    return-void

    .line 2940
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FilmstripState:Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;

    .line 2941
    .local v2, "oldState":Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;
    iput-object p1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FilmstripState:Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;

    .line 2944
    sget-object v3, Lcom/oneplus/gallery/FilmstripFragment$29;->$SwitchMap$com$oneplus$gallery$FilmstripFragment$FilmstripState:[I

    invoke-virtual {p1}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 2956
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->updateFilmstripScrollMode()V

    .line 2959
    sget-object v3, Lcom/oneplus/gallery/FilmstripFragment;->PROP_FILMSTRIP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3, v2, p1}, Lcom/oneplus/gallery/FilmstripFragment;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 2947
    :pswitch_0
    iget-object v3, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FilmstripItems:Ljava/util/Set;

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

    check-cast v1, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;

    .line 2949
    .local v1, "item":Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;
    invoke-virtual {v1}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->getMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2950
    sget-object v3, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    invoke-virtual {v1, v3}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->setImageBounds(Lcom/oneplus/widget/ScaleImageView$BoundsType;)V

    goto :goto_1

    .line 2944
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private setMediaListProp(Lcom/oneplus/gallery/media/MediaList;)Z
    .locals 4
    .param p1, "list"    # Lcom/oneplus/gallery/media/MediaList;

    .prologue
    .line 2967
    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-ne v1, p1, :cond_0

    .line 2968
    const/4 v1, 0x1

    .line 2992
    :goto_0
    return v1

    .line 2971
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    .line 2972
    .local v0, "oldList":Lcom/oneplus/gallery/media/MediaList;
    iput-object p1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    .line 2975
    if-eqz v0, :cond_1

    .line 2977
    sget-object v1, Lcom/oneplus/gallery/media/MediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaAddedEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2978
    sget-object v1, Lcom/oneplus/gallery/media/MediaList;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaRemovedEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2979
    sget-object v1, Lcom/oneplus/gallery/media/MediaList;->EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaRemovingEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2981
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-eqz v1, :cond_2

    .line 2983
    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    sget-object v2, Lcom/oneplus/gallery/media/MediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaAddedEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v1, v2, v3}, Lcom/oneplus/gallery/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2984
    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    sget-object v2, Lcom/oneplus/gallery/media/MediaList;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaRemovedEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v1, v2, v3}, Lcom/oneplus/gallery/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2985
    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    sget-object v2, Lcom/oneplus/gallery/media/MediaList;->EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaRemovingEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v1, v2, v3}, Lcom/oneplus/gallery/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2989
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->onMediaListUpdated()V

    .line 2992
    sget-object v1, Lcom/oneplus/gallery/FilmstripFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/oneplus/gallery/FilmstripFragment;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private setPageToContentUri(Landroid/net/Uri;Z)V
    .locals 3
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "smooth"    # Z

    .prologue
    .line 2999
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/FilmstripFragment;->searchMediaListIndex(Landroid/net/Uri;)I

    move-result v0

    .line 3000
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3001
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, p2}, Lcom/oneplus/gallery/FilmstripFragment;->setCurrentMediaIndexProp(Ljava/lang/Integer;ZZ)Z

    .line 3004
    :goto_0
    return-void

    .line 3003
    :cond_0
    iput-object p1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_PreferredContentUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method private setToolbarVisibility(ZZ)V
    .locals 0
    .param p1, "visible"    # Z
    .param p2, "animation"    # Z

    .prologue
    .line 3011
    iput-boolean p1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsToolbarVisible:Z

    .line 3014
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->updateCollectButtonVisibility()V

    .line 3017
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->updateDeleteButtonVisibility()V

    .line 3020
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->updateEditButtonVisibility()V

    .line 3023
    invoke-direct {p0, p2}, Lcom/oneplus/gallery/FilmstripFragment;->updateToolbarVisibility(Z)V

    .line 3024
    return-void
.end method

.method private setWallpaper(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 3030
    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_AppTracker:Lcom/oneplus/gallery/AppTracker;

    const-string v3, "Gallery.SetWallPapper"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v5, v4}, Lcom/oneplus/gallery/AppTracker;->createRecord(Ljava/lang/String;I[Ljava/lang/Object;)Z

    .line 3032
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->isHydrogenLauncher()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3050
    :cond_0
    :goto_0
    return-void

    .line 3036
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->hideToolbarDelay()V

    .line 3039
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/FilmstripFragment;->validatePosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/gallery/FilmstripFragment;->isAttachedToGallery()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3042
    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v3, "setWallpaper() - Position: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3045
    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v2, p1}, Lcom/oneplus/gallery/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/Media;

    .line 3046
    .local v1, "media":Lcom/oneplus/gallery/media/Media;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.ATTACH_DATA"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3047
    .local v0, "intent":Landroid/content/Intent;
    invoke-interface {v1}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "image/*"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 3048
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3049
    const v2, 0x7f090014

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery/FilmstripFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x68

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/gallery/FilmstripFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private sharePage(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 3057
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->hideToolbarDelay()V

    .line 3064
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/FilmstripFragment;->validatePosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/gallery/FilmstripFragment;->isAttachedToGallery()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3070
    :cond_0
    :goto_0
    return-void

    .line 3068
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v1, p1}, Lcom/oneplus/gallery/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/Media;

    .line 3069
    .local v0, "media":Lcom/oneplus/gallery/media/Media;
    invoke-virtual {p0}, Lcom/oneplus/gallery/FilmstripFragment;->getGallery()Lcom/oneplus/gallery/Gallery;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oneplus/gallery/Gallery;->shareMedia(Lcom/oneplus/gallery/media/Media;)Z

    goto :goto_0
.end method

.method private showHideToolbar()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3075
    sget-object v2, Lcom/oneplus/gallery/FilmstripFragment$29;->$SwitchMap$com$oneplus$gallery$FilmstripFragment$FilmstripState:[I

    iget-object v3, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FilmstripState:Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;

    invoke-virtual {v3}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v1, v0

    .line 3082
    :goto_0
    return v1

    .line 3079
    :pswitch_0
    iget-boolean v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsToolbarVisible:Z

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/oneplus/gallery/FilmstripFragment;->setToolbarVisibility(ZZ)V

    goto :goto_0

    .line 3075
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private showMovieDrawable(Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;)V
    .locals 2
    .param p1, "item"    # Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;

    .prologue
    .line 3092
    if-nez p1, :cond_1

    .line 3111
    :cond_0
    :goto_0
    return-void

    .line 3094
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    if-nez v0, :cond_3

    .line 3095
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/FilmstripFragment;->prepareMovieDrawable(Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;)V

    .line 3104
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    if-eqz v0, :cond_0

    .line 3107
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v1, "showMovieDrawable()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3108
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    invoke-virtual {v0}, Lcom/oneplus/drawable/MovieDrawable;->start()V

    .line 3109
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    invoke-virtual {p1}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->getMediumResThumb()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/drawable/MovieDrawable;->setThumbnailBitmap(Landroid/graphics/Bitmap;)V

    .line 3110
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    invoke-virtual {p1, v0}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3098
    :cond_3
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/FilmstripFragment;->isItemSourceSameAsMovieDrawable(Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3100
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/FilmstripFragment;->releaseMovieDrawable(Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;)V

    .line 3101
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/FilmstripFragment;->prepareMovieDrawable(Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;)V

    goto :goto_1
.end method

.method private showPageDetails(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 3118
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->hideToolbarDelay()V

    .line 3125
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/FilmstripFragment;->validatePosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/gallery/FilmstripFragment;->isAttachedToGallery()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3153
    :cond_0
    :goto_0
    return-void

    .line 3129
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/gallery/FilmstripFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v0

    .line 3130
    .local v0, "activity":Lcom/oneplus/gallery/GalleryActivity;
    if-eqz v0, :cond_0

    .line 3134
    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaDetailsDialog:Lcom/oneplus/gallery/MediaDetailsDialog;

    if-eqz v2, :cond_2

    .line 3136
    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v3, "showDetails() - m_MediaDetailsDialog is not null."

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3141
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v2, p1}, Lcom/oneplus/gallery/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/Media;

    .line 3142
    .local v1, "media":Lcom/oneplus/gallery/media/Media;
    new-instance v2, Lcom/oneplus/gallery/MediaDetailsDialog;

    invoke-direct {v2, v0, v1}, Lcom/oneplus/gallery/MediaDetailsDialog;-><init>(Landroid/app/Activity;Lcom/oneplus/gallery/media/Media;)V

    iput-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaDetailsDialog:Lcom/oneplus/gallery/MediaDetailsDialog;

    .line 3143
    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaDetailsDialog:Lcom/oneplus/gallery/MediaDetailsDialog;

    new-instance v3, Lcom/oneplus/gallery/FilmstripFragment$24;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery/FilmstripFragment$24;-><init>(Lcom/oneplus/gallery/FilmstripFragment;)V

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/MediaDetailsDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/oneplus/gallery/MediaDetailsDialog;

    .line 3152
    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaDetailsDialog:Lcom/oneplus/gallery/MediaDetailsDialog;

    invoke-virtual {v2}, Lcom/oneplus/gallery/MediaDetailsDialog;->show()V

    goto :goto_0
.end method

.method private updateActionBarMenu()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3159
    iget-object v4, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_ActionBar:Landroid/widget/Toolbar;

    if-nez v4, :cond_1

    .line 3184
    :cond_0
    :goto_0
    return-void

    .line 3161
    :cond_1
    iget-object v4, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_ActionBar:Landroid/widget/Toolbar;

    invoke-virtual {v4}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3163
    iget-object v4, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_ActionBar:Landroid/widget/Toolbar;

    invoke-virtual {v4}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v4

    const v5, 0x7f06009d

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 3164
    .local v2, "setWallpaperItem":Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_ActionBar:Landroid/widget/Toolbar;

    invoke-virtual {v4}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v4

    const v5, 0x7f06009f

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 3165
    .local v3, "showPageDetailsItem":Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_ActionBar:Landroid/widget/Toolbar;

    invoke-virtual {v4}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v4

    const v5, 0x7f06009e

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 3166
    .local v0, "addToalbumItem":Landroid/view/MenuItem;
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->isHydrogenLauncher()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/oneplus/base/Device;->isHydrogenOS()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3168
    :cond_2
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3182
    :cond_3
    :goto_1
    sget-object v4, Lcom/oneplus/gallery/FilmstripFragment;->PROP_IS_READ_ONLY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/gallery/FilmstripFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3183
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 3173
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->getCurrentMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v1

    .line 3174
    .local v1, "media":Lcom/oneplus/gallery/media/Media;
    if-eqz v1, :cond_3

    .line 3176
    instance-of v4, v1, Lcom/oneplus/gallery/media/VideoMedia;

    if-eqz v4, :cond_5

    .line 3177
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 3179
    :cond_5
    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method private updateCollectButtonSelection()V
    .locals 3

    .prologue
    .line 3191
    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FilmstripView:Lcom/oneplus/widget/FilmstripView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-nez v1, :cond_1

    .line 3204
    :cond_0
    :goto_0
    return-void

    .line 3195
    :cond_1
    iget v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CurrentMediaIndex:I

    if-gez v1, :cond_2

    .line 3197
    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CollectButton:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 3200
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    iget v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CurrentMediaIndex:I

    invoke-interface {v1, v2}, Lcom/oneplus/gallery/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/Media;

    .line 3203
    .local v0, "media":Lcom/oneplus/gallery/media/Media;
    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CollectButton:Landroid/view/View;

    invoke-interface {v0}, Lcom/oneplus/gallery/media/Media;->isFavorite()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0
.end method

.method private updateCollectButtonVisibility()V
    .locals 2

    .prologue
    .line 3210
    iget-boolean v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsToolbarVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CollectButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3213
    sget-object v0, Lcom/oneplus/gallery/FilmstripFragment;->PROP_IS_READ_ONLY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/FilmstripFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3214
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CollectButtonContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3218
    :cond_0
    :goto_0
    return-void

    .line 3216
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CollectButtonContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateDeleteButtonVisibility()V
    .locals 2

    .prologue
    .line 3224
    iget-boolean v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsToolbarVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_DeleteButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3227
    sget-object v0, Lcom/oneplus/gallery/FilmstripFragment;->PROP_IS_READ_ONLY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/FilmstripFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3228
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_DeleteButtonContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3232
    :cond_0
    :goto_0
    return-void

    .line 3230
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_DeleteButtonContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateEditButtonVisibility()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 3238
    iget-boolean v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsToolbarVisible:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_EditorButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 3241
    sget-object v2, Lcom/oneplus/gallery/FilmstripFragment;->PROP_IS_READ_ONLY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery/FilmstripFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3243
    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_EditorButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3266
    :cond_0
    :goto_0
    return-void

    .line 3248
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->isActionEditSupported()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3250
    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_EditorButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3255
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v2}, Lcom/oneplus/gallery/media/MediaList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 3257
    iget v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CurrentMediaIndex:I

    .line 3258
    .local v1, "position":I
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v2}, Lcom/oneplus/gallery/media/MediaList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3260
    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v2, v1}, Lcom/oneplus/gallery/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v0, v2, Lcom/oneplus/gallery/media/VideoMedia;

    .line 3261
    .local v0, "isVideo":Z
    if-eqz v0, :cond_3

    .line 3262
    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_EditorButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3264
    :cond_3
    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_EditorButtonContainer:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateFilmstripScrollMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3460
    sget-object v0, Lcom/oneplus/gallery/FilmstripFragment$29;->$SwitchMap$com$oneplus$gallery$FilmstripFragment$FilmstripState:[I

    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FilmstripState:Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;

    invoke-virtual {v1}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3474
    :goto_0
    return-void

    .line 3463
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/oneplus/gallery/FilmstripFragment;->setFilmstripScrollMode(I)V

    goto :goto_0

    .line 3467
    :pswitch_1
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/FilmstripFragment;->setFilmstripScrollMode(I)V

    goto :goto_0

    .line 3471
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/oneplus/gallery/FilmstripFragment;->setFilmstripScrollMode(I)V

    goto :goto_0

    .line 3460
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

    .line 3273
    iget-object v6, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_HeaderContainer:Landroid/view/View;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FooterContainer:Landroid/view/View;

    if-nez v6, :cond_1

    .line 3305
    :cond_0
    :goto_0
    return-void

    .line 3275
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/gallery/FilmstripFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v1

    .line 3276
    .local v1, "galleryActivity":Lcom/oneplus/gallery/GalleryActivity;
    if-eqz v1, :cond_0

    .line 3279
    invoke-virtual {p0}, Lcom/oneplus/gallery/FilmstripFragment;->getGallery()Lcom/oneplus/gallery/Gallery;

    move-result-object v6

    sget-object v7, Lcom/oneplus/gallery/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v6, v7}, Lcom/oneplus/gallery/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 3280
    .local v3, "isNavbarVisible":Z
    iget-object v6, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v7, "updateToolbarMargins() - Navigation bar visible: "

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3283
    sget-object v6, Lcom/oneplus/gallery/GalleryActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v6}, Lcom/oneplus/gallery/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/base/ScreenSize;

    .line 3284
    .local v5, "screenSize":Lcom/oneplus/base/ScreenSize;
    iget-object v6, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_HeaderContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3285
    .local v2, "headerParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v6, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FooterContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3286
    .local v0, "footerParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v3, :cond_3

    .line 3288
    invoke-virtual {v5}, Lcom/oneplus/base/ScreenSize;->getNavigationBarSize()I

    move-result v4

    .line 3289
    .local v4, "naviHeight":I
    invoke-virtual {v5}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Lcom/oneplus/base/ScreenSize;->getHeight()I

    move-result v7

    if-le v6, v7, :cond_2

    .line 3291
    iget v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v8, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v2, v6, v7, v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 3292
    iget v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v6, v7, v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 3296
    :cond_2
    iget v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v8, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v2, v6, v7, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 3297
    iget v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/lit8 v8, v4, 0x0

    invoke-virtual {v0, v6, v7, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 3302
    .end local v4    # "naviHeight":I
    :cond_3
    iget v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v8, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v2, v6, v7, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 3303
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

    .line 3312
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_HeaderContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FooterContainer:Landroid/view/View;

    if-nez v0, :cond_1

    .line 3453
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 3315
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v1, "updateToolbarVisibility() - Visible: "

    iget-boolean v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsToolbarVisible:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3318
    sget-object v0, Lcom/oneplus/gallery/FilmstripFragment;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/FilmstripFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/base/BaseFragment$State;->RUNNING:Lcom/oneplus/base/BaseFragment$State;

    if-ne v0, v1, :cond_2

    .line 3319
    iget-boolean v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsToolbarVisible:Z

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/FilmstripFragment;->setSystemUiVisibility(Z)V

    .line 3322
    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsToolbarVisible:Z

    if-eqz v0, :cond_4

    .line 3324
    if-eqz p1, :cond_3

    .line 3326
    sget-object v0, Lcom/oneplus/gallery/FilmstripFragment$29;->$SwitchMap$com$oneplus$gallery$FilmstripFragment$ViewVisibilityState:[I

    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_ToolbarVisibilityState:Lcom/oneplus/gallery/FilmstripFragment$ViewVisibilityState;

    invoke-virtual {v1}, Lcom/oneplus/gallery/FilmstripFragment$ViewVisibilityState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3350
    :goto_1
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_HeaderContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/gallery/FilmstripFragment$25;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/FilmstripFragment$25;-><init>(Lcom/oneplus/gallery/FilmstripFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3361
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FooterContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/gallery/FilmstripFragment$26;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/FilmstripFragment$26;-><init>(Lcom/oneplus/gallery/FilmstripFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3372
    sget-object v0, Lcom/oneplus/gallery/FilmstripFragment$ViewVisibilityState;->IN_ANIMATING:Lcom/oneplus/gallery/FilmstripFragment$ViewVisibilityState;

    iput-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_ToolbarVisibilityState:Lcom/oneplus/gallery/FilmstripFragment$ViewVisibilityState;

    goto :goto_0

    .line 3330
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_HeaderContainer:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3331
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_HeaderContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 3334
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FooterContainer:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3335
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FooterContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 3340
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_HeaderContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3341
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FooterContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_1

    .line 3377
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_HeaderContainer:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3378
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_HeaderContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 3381
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FooterContainer:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3382
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FooterContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 3385
    sget-object v0, Lcom/oneplus/gallery/FilmstripFragment$ViewVisibilityState;->VISIBLE:Lcom/oneplus/gallery/FilmstripFragment$ViewVisibilityState;

    iput-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_ToolbarVisibilityState:Lcom/oneplus/gallery/FilmstripFragment$ViewVisibilityState;

    .line 3386
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->hideToolbarDelay()V

    goto/16 :goto_0

    .line 3392
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->cancelHideToolbar()V

    .line 3395
    if-eqz p1, :cond_5

    .line 3397
    sget-object v0, Lcom/oneplus/gallery/FilmstripFragment$29;->$SwitchMap$com$oneplus$gallery$FilmstripFragment$ViewVisibilityState:[I

    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_ToolbarVisibilityState:Lcom/oneplus/gallery/FilmstripFragment$ViewVisibilityState;

    invoke-virtual {v1}, Lcom/oneplus/gallery/FilmstripFragment$ViewVisibilityState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 3419
    :goto_2
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_HeaderContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/gallery/FilmstripFragment$27;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/FilmstripFragment$27;-><init>(Lcom/oneplus/gallery/FilmstripFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3430
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FooterContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/gallery/FilmstripFragment$28;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/FilmstripFragment$28;-><init>(Lcom/oneplus/gallery/FilmstripFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3441
    sget-object v0, Lcom/oneplus/gallery/FilmstripFragment$ViewVisibilityState;->OUT_ANIMATING:Lcom/oneplus/gallery/FilmstripFragment$ViewVisibilityState;

    iput-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_ToolbarVisibilityState:Lcom/oneplus/gallery/FilmstripFragment$ViewVisibilityState;

    goto/16 :goto_0

    .line 3401
    :pswitch_3
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_HeaderContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 3404
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FooterContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 3409
    :pswitch_4
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_HeaderContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3410
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FooterContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_2

    .line 3446
    :cond_5
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_HeaderContainer:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 3447
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FooterContainer:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 3450
    sget-object v0, Lcom/oneplus/gallery/FilmstripFragment$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery/FilmstripFragment$ViewVisibilityState;

    iput-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_ToolbarVisibilityState:Lcom/oneplus/gallery/FilmstripFragment$ViewVisibilityState;

    goto/16 :goto_0

    .line 3326
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 3397
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
    .line 3480
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v0}, Lcom/oneplus/gallery/media/MediaList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 3481
    const/4 v0, 0x1

    .line 3482
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
    .line 1354
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/gallery/FilmstripFragment;->PROP_CURRENT_MEDIA_INDEX:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 1355
    iget v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CurrentMediaIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1360
    :goto_0
    return-object v0

    .line 1356
    :cond_0
    sget-object v0, Lcom/oneplus/gallery/FilmstripFragment;->PROP_FILMSTRIP_STATE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1

    .line 1357
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FilmstripState:Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;

    goto :goto_0

    .line 1358
    :cond_1
    sget-object v0, Lcom/oneplus/gallery/FilmstripFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_2

    .line 1359
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    goto :goto_0

    .line 1360
    :cond_2
    invoke-super {p0, p1}, Lcom/oneplus/gallery/GalleryFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1391
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1409
    invoke-super {p0, p1}, Lcom/oneplus/gallery/GalleryFragment;->handleMessage(Landroid/os/Message;)V

    .line 1412
    :goto_0
    return-void

    .line 1394
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/gallery/media/Media;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_0

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/oneplus/gallery/FilmstripFragment;->onAnimationStateChecked(Lcom/oneplus/gallery/media/Media;Z)V

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    .line 1398
    :sswitch_1
    invoke-direct {p0, v2, v1}, Lcom/oneplus/gallery/FilmstripFragment;->setToolbarVisibility(ZZ)V

    goto :goto_0

    .line 1403
    :sswitch_2
    const/16 v0, 0x271a

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 1404
    const/16 v0, 0x271b

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 1405
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->deleteMediaFromRecycler()V

    goto :goto_0

    .line 1391
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
    .locals 11
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v7, -0x1

    const/4 v10, 0x0

    .line 1554
    packed-switch p1, :pswitch_data_0

    .line 1628
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->hideToolbarDelay()V

    .line 1629
    :cond_1
    :goto_1
    return-void

    .line 1558
    :pswitch_0
    if-ne p2, v7, :cond_0

    .line 1562
    if-eqz p3, :cond_1

    .line 1564
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 1565
    .local v2, "contentUri":Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 1567
    sget-object v7, Lcom/oneplus/gallery/FilmstripFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/gallery/FilmstripFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery/media/MediaSet;

    .line 1568
    .local v5, "mediaSet":Lcom/oneplus/gallery/media/MediaSet;
    instance-of v7, v5, Lcom/oneplus/gallery/media/AlbumMediaSet;

    if-eqz v7, :cond_2

    .line 1570
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v7

    const-class v8, Lcom/oneplus/gallery/media/OPMediaManager;

    invoke-virtual {v7, v8}, Lcom/oneplus/gallery/GalleryApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery/media/OPMediaManager;

    .line 1571
    .local v4, "mediaManager":Lcom/oneplus/gallery/media/OPMediaManager;
    check-cast v5, Lcom/oneplus/gallery/media/AlbumMediaSet;

    .end local v5    # "mediaSet":Lcom/oneplus/gallery/media/MediaSet;
    invoke-virtual {v5}, Lcom/oneplus/gallery/media/AlbumMediaSet;->getAlbumId()J

    move-result-wide v0

    .line 1572
    .local v0, "albumId":J
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    invoke-interface {v4, v0, v1, v8, v9}, Lcom/oneplus/gallery/media/OPMediaManager;->addMediaToAlbum(JJ)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1574
    iget-object v7, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v8, "onActivityResult() - Cannot add media to album"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1580
    .end local v0    # "albumId":J
    .end local v4    # "mediaManager":Lcom/oneplus/gallery/media/OPMediaManager;
    :cond_2
    invoke-direct {p0, v2, v10}, Lcom/oneplus/gallery/FilmstripFragment;->setPageToContentUri(Landroid/net/Uri;Z)V

    goto :goto_0

    .line 1586
    .end local v2    # "contentUri":Landroid/net/Uri;
    :pswitch_1
    if-ne p2, v7, :cond_0

    .line 1589
    if-eqz p3, :cond_1

    .line 1591
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 1592
    .restart local v2    # "contentUri":Landroid/net/Uri;
    :goto_2
    if-eqz v2, :cond_1

    .line 1595
    iget-object v7, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v8, "onActivityResult() - Wallpaper is set: "

    invoke-static {v7, v8, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1598
    invoke-direct {p0, v2, v10}, Lcom/oneplus/gallery/FilmstripFragment;->setPageToContentUri(Landroid/net/Uri;Z)V

    goto :goto_0

    .line 1591
    .end local v2    # "contentUri":Landroid/net/Uri;
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 1605
    :pswitch_2
    if-eqz p3, :cond_1

    .line 1608
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 1609
    .restart local v2    # "contentUri":Landroid/net/Uri;
    invoke-direct {p0, v2}, Lcom/oneplus/gallery/FilmstripFragment;->searchMediaListIndex(Landroid/net/Uri;)I

    move-result v6

    .line 1610
    .local v6, "position":I
    if-ltz v6, :cond_1

    .line 1613
    const-string v7, "IsCollected"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1615
    const-string v7, "IsCollected"

    invoke-virtual {p3, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 1616
    .local v3, "isCollected":Z
    iget-object v7, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v8, "onActivityResult() - Is collected: "

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1617
    iget-object v7, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CollectButton:Landroid/view/View;

    if-eqz v7, :cond_4

    .line 1618
    iget-object v7, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CollectButton:Landroid/view/View;

    invoke-virtual {v7, v3}, Landroid/view/View;->setSelected(Z)V

    .line 1621
    :cond_4
    invoke-direct {p0, v2, v10}, Lcom/oneplus/gallery/FilmstripFragment;->setPageToContentUri(Landroid/net/Uri;Z)V

    goto/16 :goto_0

    .line 1554
    nop

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
    .line 1637
    invoke-super {p0}, Lcom/oneplus/gallery/GalleryFragment;->onActivityStart()V

    .line 1640
    const/16 v0, 0x271b

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 1641
    return-void
.end method

.method protected onActivityStop()V
    .locals 4

    .prologue
    .line 1649
    const/16 v0, 0x271b

    const/4 v1, 0x1

    const-wide/16 v2, 0x12c

    invoke-static {p0, v0, v1, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 1652
    invoke-super {p0}, Lcom/oneplus/gallery/GalleryFragment;->onActivityStop()V

    .line 1653
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1687
    invoke-super {p0, p1}, Lcom/oneplus/gallery/GalleryFragment;->onAttach(Landroid/app/Activity;)V

    .line 1690
    invoke-virtual {p0}, Lcom/oneplus/gallery/FilmstripFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v0

    .line 1691
    .local v0, "galleryActivity":Lcom/oneplus/gallery/GalleryActivity;
    sget-object v1, Lcom/oneplus/gallery/GalleryActivity;->PROP_IS_WINDOW_FOCUSED:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_WindowFocusChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/GalleryActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1692
    instance-of v1, v0, Lcom/oneplus/gallery/OPGalleryActivity;

    if-eqz v1, :cond_0

    .line 1693
    check-cast v0, Lcom/oneplus/gallery/OPGalleryActivity;

    .end local v0    # "galleryActivity":Lcom/oneplus/gallery/GalleryActivity;
    sget-object v1, Lcom/oneplus/gallery/OPGalleryActivity;->PROP_SNACKBAR_VISIBLE_HEIGHT:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_SnackbarVisibleHeightChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/OPGalleryActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1694
    :cond_0
    return-void
.end method

.method protected onAttachToGallery(Lcom/oneplus/gallery/Gallery;)V
    .locals 2
    .param p1, "gallery"    # Lcom/oneplus/gallery/Gallery;

    .prologue
    .line 1702
    invoke-super {p0, p1}, Lcom/oneplus/gallery/GalleryFragment;->onAttachToGallery(Lcom/oneplus/gallery/Gallery;)V

    .line 1705
    sget-object v0, Lcom/oneplus/gallery/Gallery;->PROP_IS_SHARING_MEDIA:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsSharingMediaCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery/Gallery;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1706
    sget-object v0, Lcom/oneplus/gallery/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsNavigationBarVisibleCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery/Gallery;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1707
    sget-object v0, Lcom/oneplus/gallery/Gallery;->PROP_IS_DELETING_MEDIA:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsDeletingMediaCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery/Gallery;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1710
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v0

    const-class v1, Lcom/oneplus/gallery/media/ThumbnailImageManager;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GalleryApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/ThumbnailImageManager;

    iput-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_ThumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;

    .line 1711
    return-void
.end method

.method protected onBackToInitialUIState()V
    .locals 2

    .prologue
    .line 1719
    invoke-super {p0}, Lcom/oneplus/gallery/GalleryFragment;->onBackToInitialUIState()V

    .line 1722
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v0}, Lcom/oneplus/gallery/media/MediaList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1723
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->deleteMediaFromRecycler()V

    .line 1726
    :cond_0
    sget-object v0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/FilmstripFragment;->setFilmstripState(Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;)V

    .line 1729
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_PreferredContentUri:Landroid/net/Uri;

    .line 1732
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/gallery/FilmstripFragment;->setToolbarVisibility(ZZ)V

    .line 1733
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    .line 1741
    invoke-super {p0, p1}, Lcom/oneplus/gallery/GalleryFragment;->onCreate(Landroid/os/Bundle;)V

    .line 1744
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/gallery/GalleryApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1745
    .local v4, "res":Landroid/content/res/Resources;
    const v5, 0x7f080013

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1746
    .local v1, "fakePhotoWidth":I
    const v5, 0x7f080014

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1747
    .local v0, "fakePhotoHeight":I
    const v5, 0x7f080011

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 1748
    .local v3, "fakeVideoWidth":I
    const v5, 0x7f080012

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 1749
    .local v2, "fakeVideoHeight":I
    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v1, v0}, Landroid/util/Size;-><init>(II)V

    iput-object v5, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FakePhotoSize:Landroid/util/Size;

    .line 1750
    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v3, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v5, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FakeVideoSize:Landroid/util/Size;

    .line 1753
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v5

    const-class v6, Lcom/oneplus/gallery/AppTracker;

    invoke-virtual {v5, v6}, Lcom/oneplus/gallery/GalleryApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery/AppTracker;

    iput-object v5, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_AppTracker:Lcom/oneplus/gallery/AppTracker;

    .line 1754
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v5

    const-class v6, Lcom/oneplus/gallery/media/OPMediaManager;

    invoke-virtual {v5, v6}, Lcom/oneplus/gallery/GalleryApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery/media/OPMediaManager;

    iput-object v5, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    .line 1757
    iget-object v5, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    iget-object v6, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaChangeCallback:Lcom/oneplus/gallery/media/MediaManager$MediaChangeCallback;

    invoke-virtual {p0}, Lcom/oneplus/gallery/FilmstripFragment;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/oneplus/gallery/media/OPMediaManager;->registerMediaChangeCallback(Lcom/oneplus/gallery/media/MediaManager$MediaChangeCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaManagerCallbackHandle:Lcom/oneplus/base/Handle;

    .line 1760
    sget-object v5, Lcom/oneplus/gallery/FilmstripFragment;->PROP_CURRENT_MEDIA_INDEX:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5, v8}, Lcom/oneplus/gallery/FilmstripFragment;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 1761
    sget-object v5, Lcom/oneplus/gallery/FilmstripFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5, v8}, Lcom/oneplus/gallery/FilmstripFragment;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 1762
    sget-object v5, Lcom/oneplus/gallery/FilmstripFragment;->PROP_FILMSTRIP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5, v8}, Lcom/oneplus/gallery/FilmstripFragment;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 1763
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 1770
    iget-object v5, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v6, "onCreateView() - Fragment: "

    invoke-virtual {p0}, Lcom/oneplus/gallery/FilmstripFragment;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1773
    const v5, 0x7f03000e

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1774
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f060039

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/oneplus/widget/FilmstripView;

    iput-object v5, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FilmstripView:Lcom/oneplus/widget/FilmstripView;

    .line 1775
    iget-object v5, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FilmstripView:Lcom/oneplus/widget/FilmstripView;

    iget-object v6, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FilmstripAdapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v5, v6}, Lcom/oneplus/widget/FilmstripView;->setAdapter(Lcom/oneplus/widget/FilmstripView$Adapter;)V

    .line 1776
    iget-object v5, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FilmstripView:Lcom/oneplus/widget/FilmstripView;

    iget-object v6, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FilmstripScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v5, v6}, Lcom/oneplus/widget/FilmstripView;->setScrollListener(Lcom/oneplus/widget/FilmstripView$ScrollListener;)V

    .line 1777
    iget-object v5, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FilmstripView:Lcom/oneplus/widget/FilmstripView;

    new-instance v6, Lcom/oneplus/gallery/FilmstripFragment$17;

    invoke-direct {v6, p0}, Lcom/oneplus/gallery/FilmstripFragment$17;-><init>(Lcom/oneplus/gallery/FilmstripFragment;)V

    invoke-virtual {v5, v6}, Lcom/oneplus/widget/FilmstripView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1799
    iget-object v5, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CurrentMediaIndex:I

    if-ltz v5, :cond_0

    iget v5, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CurrentMediaIndex:I

    iget-object v6, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v6}, Lcom/oneplus/gallery/media/MediaList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-gt v5, v6, :cond_0

    .line 1802
    iget-object v5, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FilmstripView:Lcom/oneplus/widget/FilmstripView;

    iget v6, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CurrentMediaIndex:I

    invoke-virtual {v5, v6, v8}, Lcom/oneplus/widget/FilmstripView;->setCurrentItem(IZ)V

    .line 1803
    iget v5, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CurrentMediaIndex:I

    invoke-direct {p0, v5}, Lcom/oneplus/gallery/FilmstripFragment;->checkImageDecoding(I)V

    .line 1807
    :cond_0
    const v5, 0x7f06003a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_HeaderContainer:Landroid/view/View;

    .line 1808
    iget-object v5, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_HeaderContainer:Landroid/view/View;

    const v6, 0x7f06003b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Toolbar;

    iput-object v5, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_ActionBar:Landroid/widget/Toolbar;

    .line 1809
    iget-object v5, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_ActionBar:Landroid/widget/Toolbar;

    const v6, 0x7f0b0001

    invoke-virtual {v5, v6}, Landroid/widget/Toolbar;->inflateMenu(I)V

    .line 1810
    iget-object v5, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_ActionBar:Landroid/widget/Toolbar;

    invoke-virtual {v5, v8}, Landroid/widget/Toolbar;->setBackgroundColor(I)V

    .line 1811
    iget-object v5, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_ActionBar:Landroid/widget/Toolbar;

    const v6, 0x7f020060

    invoke-virtual {v5, v6}, Landroid/widget/Toolbar;->setNavigationIcon(I)V

    .line 1812
    iget-object v5, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_ActionBar:Landroid/widget/Toolbar;

    new-instance v6, Lcom/oneplus/gallery/FilmstripFragment$18;

    invoke-direct {v6, p0}, Lcom/oneplus/gallery/FilmstripFragment$18;-><init>(Lcom/oneplus/gallery/FilmstripFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/Toolbar;->setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V

    .line 1853
    iget-object v5, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_ActionBar:Landroid/widget/Toolbar;

    new-instance v6, Lcom/oneplus/gallery/FilmstripFragment$19;

    invoke-direct {v6, p0}, Lcom/oneplus/gallery/FilmstripFragment$19;-><init>(Lcom/oneplus/gallery/FilmstripFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1863
    invoke-virtual {p0}, Lcom/oneplus/gallery/FilmstripFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v0

    .line 1864
    .local v0, "galleryActivity":Lcom/oneplus/gallery/GalleryActivity;
    sget-object v5, Lcom/oneplus/gallery/GalleryActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v5}, Lcom/oneplus/gallery/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/base/ScreenSize;

    .line 1865
    .local v2, "screenSize":Lcom/oneplus/base/ScreenSize;
    iget-object v5, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_ActionBar:Landroid/widget/Toolbar;

    invoke-virtual {v5}, Landroid/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1866
    .local v1, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v2}, Lcom/oneplus/base/ScreenSize;->getStatusBarSize()I

    move-result v5

    invoke-virtual {v1, v8, v5, v8, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1869
    const v5, 0x7f06003c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FooterContainer:Landroid/view/View;

    .line 1870
    instance-of v5, v0, Lcom/oneplus/gallery/OPGalleryActivity;

    if-eqz v5, :cond_1

    .line 1872
    check-cast v0, Lcom/oneplus/gallery/OPGalleryActivity;

    .end local v0    # "galleryActivity":Lcom/oneplus/gallery/GalleryActivity;
    sget-object v5, Lcom/oneplus/gallery/OPGalleryActivity;->PROP_SNACKBAR_VISIBLE_HEIGHT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v5}, Lcom/oneplus/gallery/OPGalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 1873
    .local v3, "snackbarHeight":F
    iget-object v5, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FooterContainer:Landroid/view/View;

    neg-float v6, v3

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 1875
    .end local v3    # "snackbarHeight":F
    :cond_1
    const v5, 0x7f06003d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_ShareButton:Landroid/view/View;

    .line 1876
    iget-object v5, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_ShareButton:Landroid/view/View;

    new-instance v6, Lcom/oneplus/gallery/FilmstripFragment$20;

    invoke-direct {v6, p0}, Lcom/oneplus/gallery/FilmstripFragment$20;-><init>(Lcom/oneplus/gallery/FilmstripFragment;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1884
    const v5, 0x7f06003e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CollectButtonContainer:Landroid/view/View;

    .line 1885
    const v5, 0x7f06003f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CollectButton:Landroid/view/View;

    .line 1886
    iget-object v5, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CollectButton:Landroid/view/View;

    new-instance v6, Lcom/oneplus/gallery/FilmstripFragment$21;

    invoke-direct {v6, p0}, Lcom/oneplus/gallery/FilmstripFragment$21;-><init>(Lcom/oneplus/gallery/FilmstripFragment;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1895
    const v5, 0x7f060040

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_EditorButtonContainer:Landroid/view/View;

    .line 1896
    const v5, 0x7f060041

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_EditorButton:Landroid/view/View;

    .line 1897
    iget-object v5, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_EditorButton:Landroid/view/View;

    new-instance v6, Lcom/oneplus/gallery/FilmstripFragment$22;

    invoke-direct {v6, p0}, Lcom/oneplus/gallery/FilmstripFragment$22;-><init>(Lcom/oneplus/gallery/FilmstripFragment;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1905
    const v5, 0x7f060042

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_DeleteButtonContainer:Landroid/view/View;

    .line 1906
    const v5, 0x7f060043

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_DeleteButton:Landroid/view/View;

    .line 1907
    iget-object v5, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_DeleteButton:Landroid/view/View;

    new-instance v6, Lcom/oneplus/gallery/FilmstripFragment$23;

    invoke-direct {v6, p0}, Lcom/oneplus/gallery/FilmstripFragment$23;-><init>(Lcom/oneplus/gallery/FilmstripFragment;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1917
    iget-boolean v5, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsToolbarVisible:Z

    if-eqz v5, :cond_2

    .line 1918
    const/4 v5, 0x1

    invoke-direct {p0, v5, v8}, Lcom/oneplus/gallery/FilmstripFragment;->setToolbarVisibility(ZZ)V

    .line 1921
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->updateToolbarMargins()V

    .line 1924
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->updateCollectButtonSelection()V

    .line 1927
    sget-object v5, Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;

    invoke-direct {p0, v5}, Lcom/oneplus/gallery/FilmstripFragment;->setFilmstripState(Lcom/oneplus/gallery/FilmstripFragment$FilmstripState;)V

    .line 1929
    return-object v4
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 1979
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->deleteMediaFromRecycler()V

    .line 1982
    invoke-virtual {p0}, Lcom/oneplus/gallery/FilmstripFragment;->getGallery()Lcom/oneplus/gallery/Gallery;

    move-result-object v0

    .line 1983
    .local v0, "gallery":Lcom/oneplus/gallery/Gallery;
    if-eqz v0, :cond_0

    .line 1985
    sget-object v1, Lcom/oneplus/gallery/Gallery;->PROP_IS_SHARING_MEDIA:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsSharingMediaCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/Gallery;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1986
    sget-object v1, Lcom/oneplus/gallery/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsNavigationBarVisibleCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/Gallery;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1987
    sget-object v1, Lcom/oneplus/gallery/Gallery;->PROP_IS_DELETING_MEDIA:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsDeletingMediaCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/Gallery;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1991
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_AsyncHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 1994
    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_MediaManagerCallbackHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 1997
    invoke-super {p0}, Lcom/oneplus/gallery/GalleryFragment;->onDestroy()V

    .line 1998
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2005
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroyView()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2008
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FilmstripView:Lcom/oneplus/widget/FilmstripView;

    if-eqz v0, :cond_0

    .line 2010
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FilmstripView:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v0, v2}, Lcom/oneplus/widget/FilmstripView;->setAdapter(Lcom/oneplus/widget/FilmstripView$Adapter;)V

    .line 2011
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FilmstripView:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v0, v2}, Lcom/oneplus/widget/FilmstripView;->setScrollListener(Lcom/oneplus/widget/FilmstripView$ScrollListener;)V

    .line 2012
    iput-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_FilmstripView:Lcom/oneplus/widget/FilmstripView;

    .line 2016
    :cond_0
    invoke-super {p0}, Lcom/oneplus/gallery/GalleryFragment;->onDestroyView()V

    .line 2017
    return-void
.end method

.method public onDetach()V
    .locals 3

    .prologue
    .line 2025
    invoke-virtual {p0}, Lcom/oneplus/gallery/FilmstripFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v0

    .line 2026
    .local v0, "galleryActivity":Lcom/oneplus/gallery/GalleryActivity;
    sget-object v1, Lcom/oneplus/gallery/GalleryActivity;->PROP_IS_WINDOW_FOCUSED:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_WindowFocusChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/GalleryActivity;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2027
    instance-of v1, v0, Lcom/oneplus/gallery/OPGalleryActivity;

    if-eqz v1, :cond_0

    .line 2028
    check-cast v0, Lcom/oneplus/gallery/OPGalleryActivity;

    .end local v0    # "galleryActivity":Lcom/oneplus/gallery/GalleryActivity;
    sget-object v1, Lcom/oneplus/gallery/OPGalleryActivity;->PROP_SNACKBAR_VISIBLE_HEIGHT:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_SnackbarVisibleHeightChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/OPGalleryActivity;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2031
    :cond_0
    invoke-super {p0}, Lcom/oneplus/gallery/GalleryFragment;->onDetach()V

    .line 2032
    return-void
.end method

.method protected onNavigationBarVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 2304
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->updateToolbarMargins()V

    .line 2305
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2312
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2315
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->cancelHideToolbar()V

    .line 2318
    iput-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsActionEditSupported:Ljava/lang/Boolean;

    .line 2319
    iput-object v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsHydrogenLauncher:Ljava/lang/Boolean;

    .line 2322
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_ThumbManagerActivateHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_ThumbManagerActivateHandle:Lcom/oneplus/base/Handle;

    .line 2325
    invoke-super {p0}, Lcom/oneplus/gallery/GalleryFragment;->onPause()V

    .line 2326
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2404
    invoke-super {p0}, Lcom/oneplus/gallery/GalleryFragment;->onResume()V

    .line 2406
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2409
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_ThumbManagerActivateHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_ThumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;

    if-eqz v0, :cond_0

    .line 2410
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_ThumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;

    invoke-interface {v0, v2}, Lcom/oneplus/gallery/media/ThumbnailImageManager;->activate(I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_ThumbManagerActivateHandle:Lcom/oneplus/base/Handle;

    .line 2413
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->updateActionBarMenu()V

    .line 2416
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->hideToolbarDelay()V

    .line 2419
    iget-boolean v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsToolbarVisible:Z

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/FilmstripFragment;->setSystemUiVisibility(Z)V

    .line 2422
    iput-boolean v2, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsInstanceStateSaved:Z

    .line 2423
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 2430
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v1, "onSaveInstanceState()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2431
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsInstanceStateSaved:Z

    .line 2432
    invoke-super {p0, p1}, Lcom/oneplus/gallery/GalleryFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2433
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 2665
    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v2, "onStart()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2668
    invoke-super {p0}, Lcom/oneplus/gallery/GalleryFragment;->onStart()V

    .line 2671
    iget v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CurrentMediaIndex:I

    if-ltz v1, :cond_0

    .line 2673
    iget v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CurrentMediaIndex:I

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/FilmstripFragment;->findFilmstripItemFromPosition(I)Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;

    move-result-object v0

    .line 2674
    .local v0, "filmstripItem":Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;
    if-eqz v0, :cond_0

    .line 2676
    iget v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CurrentMediaIndex:I

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/FilmstripFragment;->checkImageDecoding(I)V

    .line 2677
    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsCurrentMediaAnimation:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsCurrentMediaAnimation:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2678
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/FilmstripFragment;->showMovieDrawable(Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;)V

    .line 2684
    .end local v0    # "filmstripItem":Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;
    :cond_0
    :goto_0
    return-void

    .line 2679
    .restart local v0    # "filmstripItem":Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;
    :cond_1
    invoke-virtual {v0}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->getImageDecodeState()Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;

    move-result-object v1

    sget-object v2, Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;->LARGE_IMAGE_DECODED:Lcom/oneplus/gallery/FilmstripFragment$ImageDecodeState;

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->getImageBoundsType()Lcom/oneplus/widget/ScaleImageView$BoundsType;

    move-result-object v1

    sget-object v2, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    if-eq v1, v2, :cond_0

    .line 2681
    :cond_2
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/FilmstripFragment;->decodeHighResolutionImage(Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2691
    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v2, "onStop()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2694
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->cancelDecodingImages()V

    .line 2697
    iget v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CurrentMediaIndex:I

    if-ltz v1, :cond_0

    .line 2699
    iget v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_CurrentMediaIndex:I

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/FilmstripFragment;->findFilmstripItemFromPosition(I)Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;

    move-result-object v0

    .line 2700
    .local v0, "filmstripItem":Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;
    if-eqz v0, :cond_0

    .line 2701
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/FilmstripFragment;->releaseMovieDrawable(Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;)V

    .line 2705
    .end local v0    # "filmstripItem":Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->m_IsInstanceStateSaved:Z

    if-nez v1, :cond_1

    .line 2708
    invoke-direct {p0, v3, v3}, Lcom/oneplus/gallery/FilmstripFragment;->setToolbarVisibility(ZZ)V

    .line 2711
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/FilmstripFragment;->setSystemUiVisibility(Z)V

    .line 2714
    invoke-direct {p0}, Lcom/oneplus/gallery/FilmstripFragment;->resetFilmstripState()V

    .line 2720
    :goto_0
    invoke-super {p0}, Lcom/oneplus/gallery/GalleryFragment;->onStop()V

    .line 2721
    return-void

    .line 2717
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/FilmstripFragment;->TAG:Ljava/lang/String;

    const-string v2, "onStop() - Instance state saved, prevent resetting state"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
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
    .line 2878
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v0, Lcom/oneplus/gallery/FilmstripFragment;->PROP_CURRENT_MEDIA_INDEX:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 2879
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/oneplus/gallery/FilmstripFragment;->setCurrentMediaIndexProp(Ljava/lang/Integer;Z)Z

    move-result v0

    .line 2882
    :goto_0
    return v0

    .line 2880
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_0
    sget-object v0, Lcom/oneplus/gallery/FilmstripFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1

    .line 2881
    check-cast p2, Lcom/oneplus/gallery/media/MediaList;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/gallery/FilmstripFragment;->setMediaListProp(Lcom/oneplus/gallery/media/MediaList;)Z

    move-result v0

    goto :goto_0

    .line 2882
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery/GalleryFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
