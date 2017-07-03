.class public Lcom/oneplus/gallery2/BurstViewerFragment;
.super Lcom/oneplus/gallery2/GalleryFragment;
.source "BurstViewerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/BurstViewerFragment$25;,
        Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;,
        Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailDrawable;,
        Lcom/oneplus/gallery2/BurstViewerFragment$FooterFilmstripItem;,
        Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;,
        Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;,
        Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailQuality;,
        Lcom/oneplus/gallery2/BurstViewerFragment$ViewVisibilityState;,
        Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;,
        Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;
    }
.end annotation


# static fields
.field private static final DURATION_HEADER_FOOTER_ANIMATION:J = 0x96L

.field private static final ENABLE_DECODE_LOG:Z = false

.field public static final EVENT_SAVE_COMPLETED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/base/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private static final MEDIA_ADDED:I = 0x1

.field private static final MEDIA_REMOVED:I = 0x2

.field private static final MEDIA_REMOVING:I = 0x3

.field private static final PRE_DECODE_THUMB_WINDOW_SIZE:I = 0x2

.field private static final PRE_DECODE_THUMB_WINDOW_SIZE_SMALL:I = 0x14

.field public static final PROP_COVER_MEDIA:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/gallery2/media/GroupedMedia;",
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

.field private static final THRESHOLD_FLING_TO_NEIGHBOR_ITEM:F = 5000.0f


# instance fields
.field private m_CoverMedia:Lcom/oneplus/gallery2/media/GroupedMedia;

.field m_CoverMediaChangeCallback:Lcom/oneplus/gallery2/media/MediaChangeCallback;

.field private m_CoverMediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

.field private m_CoverMediaSource:Lcom/oneplus/gallery2/media/MediaSource;

.field private m_CurrentMedia:Lcom/oneplus/gallery2/media/Media;

.field private m_CurrentMediaIndex:I

.field private m_DeleteCallback:Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;

.field private final m_DummyThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private m_FilmstripAdapter:Lcom/oneplus/widget/FilmstripView$Adapter;

.field private m_FilmstripAdapterForFooter:Lcom/oneplus/widget/FilmstripView$Adapter;

.field private final m_FilmstripItemMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;",
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            "Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private final m_FilmstripItemPools:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;",
            "Ljava/util/Queue",
            "<",
            "Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private final m_FilmstripScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

.field private final m_FilmstripScrollListenerForFooter:Lcom/oneplus/widget/FilmstripView$ScrollListener;

.field private m_FilmstripScrollMode:I

.field private m_FilmstripState:Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;

.field private m_FilmstripView:Lcom/oneplus/widget/FilmstripView;

.field private m_FilmstripViewForFooter:Lcom/oneplus/widget/FilmstripView;

.field private m_FooterContainer:Landroid/view/View;

.field private m_FooterImageViewOnClickListener:Landroid/view/View$OnClickListener;

.field private m_FooterItemWidthAndHeight:I

.field private m_FooterbarHeight:I

.field private m_HeaderContainer:Landroid/view/View;

.field private m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

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

.field private m_IsToolbarVisible:Z

.field private final m_LowResBitmapDecodeCallback:Lcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;

.field private m_LowResBitmapDecodeInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;",
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

.field private m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

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

.field private final m_MediaSizeCallbackHandles:Ljava/util/Map;
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

.field private final m_MediumResBitmapDecodeCallback:Lcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;

.field private m_MediumResBitmapDecodeInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_ReusedBitmapDecodeInfos:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_SaveCallback:Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;

.field private m_ScaleFactor:F

.field private m_SelectedMediaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;"
        }
    .end annotation
.end field

.field private m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;

.field private m_ThumbManagerActivateHandle:Lcom/oneplus/base/Handle;

.field private m_Toolbar:Landroid/widget/Toolbar;

.field private m_ToolbarVisibilityState:Lcom/oneplus/gallery2/BurstViewerFragment$ViewVisibilityState;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 70
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "CoverMedia"

    const-class v2, Lcom/oneplus/gallery2/media/GroupedMedia;

    const-class v3, Lcom/oneplus/gallery2/BurstViewerFragment;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/BurstViewerFragment;->PROP_COVER_MEDIA:Lcom/oneplus/base/PropertyKey;

    .line 74
    new-instance v6, Lcom/oneplus/base/PropertyKey;

    const-string v7, "IsSelectionMode"

    const-class v8, Ljava/lang/Boolean;

    const-class v9, Lcom/oneplus/gallery2/BurstViewerFragment;

    const/4 v10, 0x2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/oneplus/gallery2/BurstViewerFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    .line 78
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "MediaList"

    const-class v2, Lcom/oneplus/gallery2/media/MediaList;

    const-class v3, Lcom/oneplus/gallery2/BurstViewerFragment;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/BurstViewerFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    .line 82
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "MediaSet"

    const-class v2, Lcom/oneplus/gallery2/media/MediaSet;

    const-class v3, Lcom/oneplus/gallery2/BurstViewerFragment;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/BurstViewerFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    .line 86
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "SaveCompleted"

    const-class v2, Lcom/oneplus/base/EventArgs;

    const-class v3, Lcom/oneplus/gallery2/BurstViewerFragment;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery2/BurstViewerFragment;->EVENT_SAVE_COMPLETED:Lcom/oneplus/base/EventKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x50

    .line 1010
    invoke-direct {p0}, Lcom/oneplus/gallery2/GalleryFragment;-><init>()V

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_CurrentMediaIndex:I

    .line 105
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/16 v1, 0xff

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_DummyThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripItemPools:Ljava/util/Map;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripItemMaps:Ljava/util/Map;

    .line 109
    sget-object v0, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;->BACKGROUND:Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;

    iput-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripState:Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_IsToolbarVisible:Z

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_LowResBitmapDecodeInfos:Ljava/util/List;

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaSizeCallbackHandles:Ljava/util/Map;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediumResBitmapDecodeInfos:Ljava/util/List;

    .line 126
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_ReusedBitmapDecodeInfos:Ljava/util/Queue;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_SelectedMediaList:Ljava/util/List;

    .line 133
    sget-object v0, Lcom/oneplus/gallery2/BurstViewerFragment$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery2/BurstViewerFragment$ViewVisibilityState;

    iput-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_ToolbarVisibilityState:Lcom/oneplus/gallery2/BurstViewerFragment$ViewVisibilityState;

    .line 137
    new-instance v0, Lcom/oneplus/gallery2/BurstViewerFragment$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/BurstViewerFragment$1;-><init>(Lcom/oneplus/gallery2/BurstViewerFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    .line 155
    new-instance v0, Lcom/oneplus/gallery2/BurstViewerFragment$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/BurstViewerFragment$2;-><init>(Lcom/oneplus/gallery2/BurstViewerFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripScrollListenerForFooter:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    .line 174
    new-instance v0, Lcom/oneplus/gallery2/BurstViewerFragment$3;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/BurstViewerFragment$3;-><init>(Lcom/oneplus/gallery2/BurstViewerFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripAdapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    .line 197
    new-instance v0, Lcom/oneplus/gallery2/BurstViewerFragment$4;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/BurstViewerFragment$4;-><init>(Lcom/oneplus/gallery2/BurstViewerFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripAdapterForFooter:Lcom/oneplus/widget/FilmstripView$Adapter;

    .line 227
    new-instance v0, Lcom/oneplus/gallery2/BurstViewerFragment$5;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/BurstViewerFragment$5;-><init>(Lcom/oneplus/gallery2/BurstViewerFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FooterImageViewOnClickListener:Landroid/view/View$OnClickListener;

    .line 250
    new-instance v0, Lcom/oneplus/gallery2/BurstViewerFragment$6;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/BurstViewerFragment$6;-><init>(Lcom/oneplus/gallery2/BurstViewerFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_CoverMediaChangeCallback:Lcom/oneplus/gallery2/media/MediaChangeCallback;

    .line 268
    new-instance v0, Lcom/oneplus/gallery2/BurstViewerFragment$7;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/BurstViewerFragment$7;-><init>(Lcom/oneplus/gallery2/BurstViewerFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_DeleteCallback:Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;

    .line 281
    new-instance v0, Lcom/oneplus/gallery2/BurstViewerFragment$8;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/BurstViewerFragment$8;-><init>(Lcom/oneplus/gallery2/BurstViewerFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_SaveCallback:Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;

    .line 296
    new-instance v0, Lcom/oneplus/gallery2/BurstViewerFragment$9;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/BurstViewerFragment$9;-><init>(Lcom/oneplus/gallery2/BurstViewerFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_IsNavigationBarVisibleCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 310
    new-instance v0, Lcom/oneplus/gallery2/BurstViewerFragment$10;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/BurstViewerFragment$10;-><init>(Lcom/oneplus/gallery2/BurstViewerFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_IsSelectionModeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 320
    new-instance v0, Lcom/oneplus/gallery2/BurstViewerFragment$11;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/BurstViewerFragment$11;-><init>(Lcom/oneplus/gallery2/BurstViewerFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaAddedEventHandler:Lcom/oneplus/base/EventHandler;

    .line 329
    new-instance v0, Lcom/oneplus/gallery2/BurstViewerFragment$12;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/BurstViewerFragment$12;-><init>(Lcom/oneplus/gallery2/BurstViewerFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaRemovedEventHandler:Lcom/oneplus/base/EventHandler;

    .line 338
    new-instance v0, Lcom/oneplus/gallery2/BurstViewerFragment$13;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/BurstViewerFragment$13;-><init>(Lcom/oneplus/gallery2/BurstViewerFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaRemovingEventHandler:Lcom/oneplus/base/EventHandler;

    .line 348
    new-instance v0, Lcom/oneplus/gallery2/BurstViewerFragment$14;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/BurstViewerFragment$14;-><init>(Lcom/oneplus/gallery2/BurstViewerFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaChangeCallback:Lcom/oneplus/gallery2/media/MediaChangeCallback;

    .line 376
    new-instance v0, Lcom/oneplus/gallery2/BurstViewerFragment$15;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/BurstViewerFragment$15;-><init>(Lcom/oneplus/gallery2/BurstViewerFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaSizeCallback:Lcom/oneplus/gallery2/media/Media$SizeCallback;

    .line 386
    new-instance v0, Lcom/oneplus/gallery2/BurstViewerFragment$16;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/BurstViewerFragment$16;-><init>(Lcom/oneplus/gallery2/BurstViewerFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_LowResBitmapDecodeCallback:Lcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;

    .line 394
    new-instance v0, Lcom/oneplus/gallery2/BurstViewerFragment$17;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/BurstViewerFragment$17;-><init>(Lcom/oneplus/gallery2/BurstViewerFragment;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediumResBitmapDecodeCallback:Lcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;

    .line 1011
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery2/BurstViewerFragment;Ljava/lang/Integer;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/BurstViewerFragment;
    .param p1, "x1"    # Ljava/lang/Integer;
    .param p2, "x2"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/BurstViewerFragment;->setCurrentMediaIndexProp(Ljava/lang/Integer;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/gallery2/BurstViewerFragment;)Lcom/oneplus/widget/FilmstripView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/BurstViewerFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripViewForFooter:Lcom/oneplus/widget/FilmstripView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oneplus/gallery2/BurstViewerFragment;)Lcom/oneplus/gallery2/media/MediaSource;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/BurstViewerFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_CoverMediaSource:Lcom/oneplus/gallery2/media/MediaSource;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/oneplus/gallery2/BurstViewerFragment;)Lcom/oneplus/gallery2/media/GroupedMedia;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/BurstViewerFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_CoverMedia:Lcom/oneplus/gallery2/media/GroupedMedia;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/oneplus/gallery2/BurstViewerFragment;Lcom/oneplus/gallery2/media/GroupedMedia;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/BurstViewerFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/GroupedMedia;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/BurstViewerFragment;->updateFooterFilmstripCover(Lcom/oneplus/gallery2/media/GroupedMedia;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/oneplus/gallery2/BurstViewerFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/BurstViewerFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/oneplus/gallery2/BurstViewerFragment;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/BurstViewerFragment;
    .param p1, "x1"    # Lcom/oneplus/base/EventKey;
    .param p2, "x2"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/BurstViewerFragment;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/oneplus/gallery2/BurstViewerFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/BurstViewerFragment;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_IsToolbarVisible:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/oneplus/gallery2/BurstViewerFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/BurstViewerFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/BurstViewerFragment;->onSelectionModeChanged(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/oneplus/gallery2/BurstViewerFragment;III)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/BurstViewerFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery2/BurstViewerFragment;->onMediaListUpdated(III)V

    return-void
.end method

.method static synthetic access$1800(Lcom/oneplus/gallery2/BurstViewerFragment;Landroid/net/Uri;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/BurstViewerFragment;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/BurstViewerFragment;->searchMediaListIndex(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/oneplus/gallery2/BurstViewerFragment;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/BurstViewerFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripItemMaps:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/gallery2/BurstViewerFragment;Ljava/lang/Integer;ZZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/BurstViewerFragment;
    .param p1, "x1"    # Ljava/lang/Integer;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/gallery2/BurstViewerFragment;->setCurrentMediaIndexProp(Ljava/lang/Integer;ZZZ)V

    return-void
.end method

.method static synthetic access$2000(Lcom/oneplus/gallery2/BurstViewerFragment;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/BurstViewerFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/BurstViewerFragment;->checkImageDecoding(IZ)V

    return-void
.end method

.method static synthetic access$2100(Lcom/oneplus/gallery2/BurstViewerFragment;Lcom/oneplus/gallery2/media/Media;II)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/BurstViewerFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery2/BurstViewerFragment;->onMediaSizeObtained(Lcom/oneplus/gallery2/media/Media;II)V

    return-void
.end method

.method static synthetic access$2200(Lcom/oneplus/gallery2/BurstViewerFragment;Lcom/oneplus/base/Handle;Lcom/oneplus/gallery2/media/Media;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/BurstViewerFragment;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;
    .param p2, "x2"    # Lcom/oneplus/gallery2/media/Media;
    .param p3, "x3"    # Landroid/graphics/Bitmap;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery2/BurstViewerFragment;->onLowResImageDecoded(Lcom/oneplus/base/Handle;Lcom/oneplus/gallery2/media/Media;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/oneplus/gallery2/BurstViewerFragment;Lcom/oneplus/base/Handle;Lcom/oneplus/gallery2/media/Media;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/BurstViewerFragment;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;
    .param p2, "x2"    # Lcom/oneplus/gallery2/media/Media;
    .param p3, "x3"    # Landroid/graphics/Bitmap;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery2/BurstViewerFragment;->onMediumResImageDecoded(Lcom/oneplus/base/Handle;Lcom/oneplus/gallery2/media/Media;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/oneplus/gallery2/BurstViewerFragment;Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/BurstViewerFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/BurstViewerFragment;->onScaleImageGestureEnd(Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/oneplus/gallery2/BurstViewerFragment;Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/BurstViewerFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;
    .param p2, "x2"    # Landroid/view/MotionEvent;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/BurstViewerFragment;->onScaleImageGestureStart(Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/oneplus/gallery2/BurstViewerFragment;Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/BurstViewerFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;
    .param p2, "x2"    # Landroid/view/MotionEvent;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/BurstViewerFragment;->onScaleImageGestureDoubleTap(Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/oneplus/gallery2/BurstViewerFragment;Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/BurstViewerFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;
    .param p2, "x2"    # Landroid/view/MotionEvent;
    .param p3, "x3"    # Landroid/view/MotionEvent;
    .param p4, "x4"    # F
    .param p5, "x5"    # F

    .prologue
    .line 65
    invoke-direct/range {p0 .. p5}, Lcom/oneplus/gallery2/BurstViewerFragment;->onScaleImageGestureFling(Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/oneplus/gallery2/BurstViewerFragment;Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;FFF)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/BurstViewerFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # F

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/gallery2/BurstViewerFragment;->onScaleImageGestureScale(Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;FFF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/oneplus/gallery2/BurstViewerFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/BurstViewerFragment;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/oneplus/gallery2/BurstViewerFragment;->onGetCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/oneplus/gallery2/BurstViewerFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/BurstViewerFragment;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/BurstViewerFragment;->updateFilmstripItemSelected(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/oneplus/gallery2/BurstViewerFragment;Lcom/oneplus/widget/ScaleImageView;IIII)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/BurstViewerFragment;
    .param p1, "x1"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 65
    invoke-direct/range {p0 .. p5}, Lcom/oneplus/gallery2/BurstViewerFragment;->onScaleImageBoundsChanged(Lcom/oneplus/widget/ScaleImageView;IIII)V

    return-void
.end method

.method static synthetic access$3200(Lcom/oneplus/gallery2/BurstViewerFragment;Lcom/oneplus/widget/ScaleImageView;Lcom/oneplus/widget/ScaleImageView$BoundsType;Lcom/oneplus/widget/ScaleImageView$BoundsType;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/BurstViewerFragment;
    .param p1, "x1"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "x2"    # Lcom/oneplus/widget/ScaleImageView$BoundsType;
    .param p3, "x3"    # Lcom/oneplus/widget/ScaleImageView$BoundsType;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery2/BurstViewerFragment;->onScaleImageBoundsTypeChanged(Lcom/oneplus/widget/ScaleImageView;Lcom/oneplus/widget/ScaleImageView$BoundsType;Lcom/oneplus/widget/ScaleImageView$BoundsType;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/oneplus/gallery2/BurstViewerFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/BurstViewerFragment;

    .prologue
    .line 65
    iget v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FooterbarHeight:I

    return v0
.end method

.method static synthetic access$3400(Lcom/oneplus/gallery2/BurstViewerFragment;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/BurstViewerFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaSizeCallbackHandles:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/oneplus/gallery2/BurstViewerFragment;)Lcom/oneplus/gallery2/media/Media$SizeCallback;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/BurstViewerFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaSizeCallback:Lcom/oneplus/gallery2/media/Media$SizeCallback;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/oneplus/gallery2/BurstViewerFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/BurstViewerFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_SelectedMediaList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/oneplus/gallery2/BurstViewerFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/BurstViewerFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/oneplus/gallery2/BurstViewerFragment;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/BurstViewerFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FooterImageViewOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/oneplus/gallery2/BurstViewerFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/BurstViewerFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/gallery2/BurstViewerFragment;Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;ILandroid/view/ViewGroup;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/BurstViewerFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/view/ViewGroup;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery2/BurstViewerFragment;->onPrepareItemView(Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;ILandroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/oneplus/gallery2/BurstViewerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/BurstViewerFragment;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/oneplus/gallery2/BurstViewerFragment;->saveMediasAndDeleteOthers()V

    return-void
.end method

.method static synthetic access$4200(Lcom/oneplus/gallery2/BurstViewerFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/BurstViewerFragment;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/oneplus/gallery2/BurstViewerFragment;->getSelectedMedia()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300(Lcom/oneplus/gallery2/BurstViewerFragment;)Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/BurstViewerFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_DeleteCallback:Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/oneplus/gallery2/BurstViewerFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/BurstViewerFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/oneplus/gallery2/BurstViewerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/BurstViewerFragment;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/oneplus/gallery2/BurstViewerFragment;->closeFragment()V

    return-void
.end method

.method static synthetic access$4700(Lcom/oneplus/gallery2/BurstViewerFragment;)Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/BurstViewerFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_SaveCallback:Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/oneplus/gallery2/BurstViewerFragment;Lcom/oneplus/gallery2/BurstViewerFragment$ViewVisibilityState;)Lcom/oneplus/gallery2/BurstViewerFragment$ViewVisibilityState;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/BurstViewerFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery2/BurstViewerFragment$ViewVisibilityState;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_ToolbarVisibilityState:Lcom/oneplus/gallery2/BurstViewerFragment$ViewVisibilityState;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/oneplus/gallery2/BurstViewerFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/BurstViewerFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_HeaderContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/gallery2/BurstViewerFragment;Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;ILandroid/view/ViewGroup;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/BurstViewerFragment;
    .param p1, "x1"    # Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/view/ViewGroup;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery2/BurstViewerFragment;->onReleaseItemView(Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;ILandroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/oneplus/gallery2/BurstViewerFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/BurstViewerFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FooterContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/gallery2/BurstViewerFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/BurstViewerFragment;

    .prologue
    .line 65
    iget v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FooterItemWidthAndHeight:I

    return v0
.end method

.method static synthetic access$700(Lcom/oneplus/gallery2/BurstViewerFragment;)Lcom/oneplus/gallery2/media/MediaList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/BurstViewerFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oneplus/gallery2/BurstViewerFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/BurstViewerFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oneplus/gallery2/BurstViewerFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/BurstViewerFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private cancelDecodingHighResolutionImage()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1017
    iget-object v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    if-eqz v7, :cond_3

    .line 1020
    const/4 v2, 0x0

    .line 1021
    .local v2, "filmstripItem":Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;
    iget-object v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripItemMaps:Ljava/util/Map;

    sget-object v8, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;->CENTER:Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1022
    .local v0, "centerItemMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;>;"
    if-eqz v0, :cond_2

    .line 1024
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1026
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery2/media/Media;

    .line 1027
    .local v5, "media":Lcom/oneplus/gallery2/media/Media;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;

    .line 1028
    .local v4, "item":Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;
    iget-object v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-interface {v5}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->isSameSource(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-interface {v5}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->isSameSource(Landroid/net/Uri;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1031
    :cond_1
    instance-of v7, v4, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;

    if-eqz v7, :cond_0

    .line 1033
    iget-object v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->TAG:Ljava/lang/String;

    const-string v8, "cancelDecodingHighResolutionImage() - Media : "

    invoke-static {v7, v8, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v2, v4

    .line 1034
    check-cast v2, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;

    .line 1042
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "item":Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;
    .end local v5    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_2
    iget-object v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->TAG:Ljava/lang/String;

    const-string v8, "cancelDecodingHighResolutionImage()"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    iget-object v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-virtual {v7, v9, v9}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->setVisible(ZZ)Z

    .line 1044
    iget-object v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-virtual {v7}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->release()V

    .line 1045
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    .line 1048
    if-eqz v2, :cond_3

    .line 1050
    invoke-virtual {v2}, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->getMediumResThumb()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1051
    .local v6, "thumb":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_4

    .line 1053
    sget-object v7, Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;->THUMB_DECODED:Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;

    invoke-virtual {v2, v7}, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->setImageDecodeState(Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;)V

    .line 1054
    invoke-virtual {v2, v6}, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->setMediumResThumb(Landroid/graphics/Bitmap;)V

    .line 1067
    .end local v0    # "centerItemMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;>;"
    .end local v2    # "filmstripItem":Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;
    .end local v6    # "thumb":Landroid/graphics/Bitmap;
    :cond_3
    :goto_0
    return-void

    .line 1058
    .restart local v0    # "centerItemMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;>;"
    .restart local v2    # "filmstripItem":Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;
    .restart local v6    # "thumb":Landroid/graphics/Bitmap;
    :cond_4
    invoke-virtual {v2}, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->getLowResThumb()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1059
    if-eqz v6, :cond_3

    .line 1061
    sget-object v7, Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;->SMALL_THUMB_DECODED:Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;

    invoke-virtual {v2, v7}, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->setImageDecodeState(Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;)V

    .line 1062
    invoke-virtual {v2, v6}, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->setLowResThumb(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private cancelDecodingImages()V
    .locals 4

    .prologue
    .line 1073
    iget-object v2, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->TAG:Ljava/lang/String;

    const-string v3, "cancelDecodingImages()"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    iget-object v2, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_LowResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1077
    iget-object v2, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_LowResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;

    .line 1078
    .local v1, "info":Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;
    iget-object v2, v1, Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;->decodeHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, v1, Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;->decodeHandle:Lcom/oneplus/base/Handle;

    .line 1079
    iget-object v2, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_ReusedBitmapDecodeInfos:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1075
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1081
    .end local v1    # "info":Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediumResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 1083
    iget-object v2, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediumResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;

    .line 1084
    .restart local v1    # "info":Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;
    iget-object v2, v1, Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;->decodeHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, v1, Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;->decodeHandle:Lcom/oneplus/base/Handle;

    .line 1085
    iget-object v2, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_ReusedBitmapDecodeInfos:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1081
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1087
    .end local v1    # "info":Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/gallery2/BurstViewerFragment;->cancelDecodingHighResolutionImage()V

    .line 1088
    iget-object v2, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_LowResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1089
    iget-object v2, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_ReusedBitmapDecodeInfos:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 1090
    return-void
.end method

.method private checkImageDecoding(IZ)V
    .locals 17
    .param p1, "position"    # I
    .param p2, "checkMedium"    # Z

    .prologue
    .line 1097
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-nez v12, :cond_1

    .line 1177
    :cond_0
    return-void

    .line 1099
    :cond_1
    const/4 v3, 0x1

    .line 1100
    .local v3, "decodeImage":Z
    if-ltz p1, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v12}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    move/from16 v0, p1

    if-le v0, v12, :cond_3

    .line 1101
    :cond_2
    const/4 v3, 0x0

    .line 1104
    :cond_3
    move/from16 v2, p1

    .line 1105
    .local v2, "center":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v12}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v12

    add-int/lit8 v7, v12, -0x1

    .line 1106
    .local v7, "maxIndex":I
    add-int/lit8 v11, v2, -0x2

    .line 1107
    .local v11, "preDecodeStart":I
    add-int/lit8 v8, v2, 0x2

    .line 1108
    .local v8, "preDecodeEnd":I
    add-int/lit8 v10, v11, -0x14

    .line 1109
    .local v10, "preDecodeLowStart":I
    add-int/lit8 v9, v8, 0x14

    .line 1110
    .local v9, "preDecodeLowEnd":I
    if-gez v11, :cond_4

    .line 1111
    const/4 v11, 0x0

    .line 1112
    :cond_4
    if-gez v10, :cond_5

    .line 1113
    const/4 v10, 0x0

    .line 1114
    :cond_5
    if-le v8, v7, :cond_6

    .line 1115
    move v8, v7

    .line 1116
    :cond_6
    if-le v9, v7, :cond_7

    .line 1117
    move v9, v7

    .line 1119
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery2/BurstViewerFragment;->TAG:Ljava/lang/String;

    const-string v13, "checkImageDecoding() - Center: "

    const/16 v14, 0x9

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, ", start: "

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const-string v16, ", end: "

    aput-object v16, v14, v15

    const/4 v15, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x5

    const-string v16, ", low start: "

    aput-object v16, v14, v15

    const/4 v15, 0x6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x7

    const-string v16, ", low end: "

    aput-object v16, v14, v15

    const/16 v15, 0x8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1123
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_LowResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v5, v12, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_b

    .line 1125
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_LowResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;

    .line 1126
    .local v4, "decodeInfo":Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;
    const/4 v1, 0x1

    .line 1127
    .local v1, "cancel":Z
    move v6, v10

    .local v6, "j":I
    :goto_1
    if-gt v6, v9, :cond_8

    .line 1129
    iget-object v12, v4, Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;->media:Lcom/oneplus/gallery2/media/Media;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v13, v6}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-ne v12, v13, :cond_a

    .line 1131
    const/4 v1, 0x0

    .line 1135
    :cond_8
    if-eqz v1, :cond_9

    .line 1137
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_LowResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1138
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_ReusedBitmapDecodeInfos:Ljava/util/Queue;

    invoke-interface {v12, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1139
    iget-object v12, v4, Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;->decodeHandle:Lcom/oneplus/base/Handle;

    invoke-static {v12}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v12

    iput-object v12, v4, Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;->decodeHandle:Lcom/oneplus/base/Handle;

    .line 1123
    :cond_9
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 1127
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1143
    .end local v1    # "cancel":Z
    .end local v4    # "decodeInfo":Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;
    .end local v6    # "j":I
    :cond_b
    if-eqz p2, :cond_f

    .line 1145
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediumResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v5, v12, -0x1

    :goto_2
    if-ltz v5, :cond_f

    .line 1147
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediumResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;

    .line 1148
    .restart local v4    # "decodeInfo":Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;
    const/4 v1, 0x1

    .line 1149
    .restart local v1    # "cancel":Z
    move v6, v11

    .restart local v6    # "j":I
    :goto_3
    if-gt v6, v8, :cond_c

    .line 1151
    iget-object v12, v4, Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;->media:Lcom/oneplus/gallery2/media/Media;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v13, v6}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-ne v12, v13, :cond_e

    .line 1153
    const/4 v1, 0x0

    .line 1157
    :cond_c
    if-eqz v1, :cond_d

    .line 1159
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediumResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1160
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_ReusedBitmapDecodeInfos:Ljava/util/Queue;

    invoke-interface {v12, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1161
    iget-object v12, v4, Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;->decodeHandle:Lcom/oneplus/base/Handle;

    invoke-static {v12}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v12

    iput-object v12, v4, Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;->decodeHandle:Lcom/oneplus/base/Handle;

    .line 1145
    :cond_d
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 1149
    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1167
    .end local v1    # "cancel":Z
    .end local v4    # "decodeInfo":Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;
    .end local v6    # "j":I
    :cond_f
    if-eqz v3, :cond_0

    .line 1169
    move v5, v10

    :goto_4
    if-gt v5, v9, :cond_11

    .line 1170
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v12, v5}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oneplus/gallery2/media/Media;

    if-ne v5, v2, :cond_10

    const/4 v13, 0x1

    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/oneplus/gallery2/BurstViewerFragment;->decodeLowResolutionImage(Lcom/oneplus/gallery2/media/Media;Z)V

    .line 1169
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1170
    :cond_10
    const/4 v13, 0x0

    goto :goto_5

    .line 1171
    :cond_11
    if-eqz p2, :cond_0

    .line 1173
    move v5, v11

    :goto_6
    if-gt v5, v8, :cond_0

    .line 1174
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v12, v5}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oneplus/gallery2/media/Media;

    if-ne v5, v2, :cond_12

    const/4 v13, 0x1

    :goto_7
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/oneplus/gallery2/BurstViewerFragment;->decodeMediumResolutionImage(Lcom/oneplus/gallery2/media/Media;Z)V

    .line 1173
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1174
    :cond_12
    const/4 v13, 0x0

    goto :goto_7
.end method

.method private closeFragment()V
    .locals 1

    .prologue
    .line 1183
    invoke-virtual {p0}, Lcom/oneplus/gallery2/BurstViewerFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/gallery2/GalleryActivity;->goBack()Z

    .line 1184
    return-void
.end method

.method private decodeHighResolutionImage(Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;)V
    .locals 7
    .param p1, "filmstripItem"    # Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;

    .prologue
    .line 1189
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-nez v3, :cond_1

    .line 1225
    :cond_0
    :goto_0
    return-void

    .line 1192
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->getPosition()I

    move-result v1

    .line 1193
    .local v1, "pos":I
    if-ltz v1, :cond_2

    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v3}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v3

    if-lt v1, v3, :cond_3

    .line 1195
    :cond_2
    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decodeHighResolutionImage() - invalid pos:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1198
    :cond_3
    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v3, v1}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    .line 1199
    .local v0, "media":Lcom/oneplus/gallery2/media/Media;
    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    if-nez v3, :cond_5

    if-eqz v0, :cond_5

    .line 1201
    invoke-virtual {p1}, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->getMediumResThumb()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1202
    .local v2, "thumb":Landroid/graphics/Bitmap;
    if-nez v2, :cond_4

    .line 1203
    invoke-virtual {p1}, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->getLowResThumb()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1205
    :cond_4
    invoke-interface {v0}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1209
    new-instance v3, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/BurstViewerFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/gallery2/GalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-direct {v3, v4, v5, v6, v2}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    .line 1223
    .end local v2    # "thumb":Landroid/graphics/Bitmap;
    :cond_5
    :goto_1
    sget-object v3, Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;->LARGE_IMAGE_DECODED:Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;

    invoke-virtual {p1, v3}, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->setImageDecodeState(Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;)V

    .line 1224
    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-virtual {p1, v3}, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1213
    .restart local v2    # "thumb":Landroid/graphics/Bitmap;
    :cond_6
    invoke-interface {v0}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 1217
    new-instance v3, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-direct {v3, v4, v5, v2}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    goto :goto_1

    .line 1220
    :cond_7
    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->TAG:Ljava/lang/String;

    const-string v4, "decodeHighResolutionImage() - No file path or content URI to decode"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private decodeLowResolutionImage(Lcom/oneplus/gallery2/media/Media;Z)V
    .locals 7
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "urgent"    # Z

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_LowResBitmapDecodeInfos:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/gallery2/BurstViewerFragment;->findBitmapDecodeInfo(Ljava/util/List;Lcom/oneplus/gallery2/media/Media;)Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;

    move-result-object v6

    .line 1233
    .local v6, "decodeInfo":Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;
    instance-of v0, p1, Lcom/oneplus/gallery2/media/PhotoMedia;

    if-eqz v0, :cond_3

    if-eqz v6, :cond_0

    if-eqz p2, :cond_3

    .line 1236
    :cond_0
    if-nez v6, :cond_2

    .line 1238
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_ReusedBitmapDecodeInfos:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "decodeInfo":Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;
    check-cast v6, Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;

    .line 1239
    .restart local v6    # "decodeInfo":Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;
    if-nez v6, :cond_1

    .line 1240
    new-instance v6, Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;

    .end local v6    # "decodeInfo":Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;
    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;-><init>(Lcom/oneplus/gallery2/BurstViewerFragment$1;)V

    .line 1241
    .restart local v6    # "decodeInfo":Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;
    :cond_1
    iput-object p1, v6, Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;->media:Lcom/oneplus/gallery2/media/Media;

    .line 1242
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_LowResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1244
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    if-eqz v0, :cond_3

    .line 1245
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    sget-object v2, Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;->SMALL:Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_LowResBitmapDecodeCallback:Lcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/BurstViewerFragment;->getHandler()Landroid/os/Handler;

    move-result-object v5

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/oneplus/gallery2/media/ThumbnailImageManager;->decodeThumbnailImage(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;ILcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, v6, Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;->decodeHandle:Lcom/oneplus/base/Handle;

    .line 1250
    :cond_3
    return-void
.end method

.method private decodeMediumResolutionImage(Lcom/oneplus/gallery2/media/Media;Z)V
    .locals 7
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "urgent"    # Z

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediumResBitmapDecodeInfos:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/gallery2/BurstViewerFragment;->findBitmapDecodeInfo(Ljava/util/List;Lcom/oneplus/gallery2/media/Media;)Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;

    move-result-object v6

    .line 1258
    .local v6, "decodeInfo":Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;
    if-eqz v6, :cond_0

    if-eqz p2, :cond_3

    .line 1261
    :cond_0
    if-nez v6, :cond_2

    .line 1263
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_ReusedBitmapDecodeInfos:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "decodeInfo":Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;
    check-cast v6, Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;

    .line 1264
    .restart local v6    # "decodeInfo":Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;
    if-nez v6, :cond_1

    .line 1265
    new-instance v6, Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;

    .end local v6    # "decodeInfo":Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;
    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;-><init>(Lcom/oneplus/gallery2/BurstViewerFragment$1;)V

    .line 1266
    .restart local v6    # "decodeInfo":Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;
    :cond_1
    iput-object p1, v6, Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;->media:Lcom/oneplus/gallery2/media/Media;

    .line 1267
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediumResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1269
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    if-eqz v0, :cond_3

    .line 1270
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    sget-object v2, Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;->SCREEN:Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediumResBitmapDecodeCallback:Lcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/BurstViewerFragment;->getHandler()Landroid/os/Handler;

    move-result-object v5

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/oneplus/gallery2/media/ThumbnailImageManager;->decodeThumbnailImage(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;ILcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, v6, Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;->decodeHandle:Lcom/oneplus/base/Handle;

    .line 1275
    :cond_3
    return-void
.end method

.method private findBitmapDecodeInfo(Ljava/util/List;Lcom/oneplus/gallery2/media/Media;)Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;
    .locals 4
    .param p2, "media"    # Lcom/oneplus/gallery2/media/Media;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;",
            ">;",
            "Lcom/oneplus/gallery2/media/Media;",
            ")",
            "Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;>;"
    const/4 v2, 0x0

    .line 1280
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move-object v1, v2

    .line 1288
    :cond_1
    :goto_0
    return-object v1

    .line 1282
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 1284
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;

    .line 1285
    .local v1, "info":Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;
    iget-object v3, v1, Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;->media:Lcom/oneplus/gallery2/media/Media;

    if-eq v3, p2, :cond_1

    .line 1282
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v1    # "info":Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;
    :cond_3
    move-object v1, v2

    .line 1288
    goto :goto_0
.end method

.method private getSelectedMedia()Ljava/util/List;
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

    .line 1303
    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_SelectedMediaList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 1305
    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->TAG:Ljava/lang/String;

    const-string v2, "getSelectedMedia() - m_SelectedMediaList is null"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    :goto_0
    return-object v0

    .line 1309
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_SelectedMediaList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1311
    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->TAG:Ljava/lang/String;

    const-string v2, "getSelectedMedia() - m_SelectedMediaList is empty"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1315
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_SelectedMediaList:Ljava/util/List;

    goto :goto_0
.end method

.method private onCurrentMediaChanged(Lcom/oneplus/gallery2/media/Media;)V
    .locals 3
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 1479
    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_CurrentMedia:Lcom/oneplus/gallery2/media/Media;

    if-ne p1, v1, :cond_1

    .line 1502
    :cond_0
    :goto_0
    return-void

    .line 1481
    :cond_1
    iput-object p1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_CurrentMedia:Lcom/oneplus/gallery2/media/Media;

    .line 1484
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    .line 1485
    .local v0, "source":Lcom/oneplus/gallery2/media/MediaSource;
    :goto_1
    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaChangeCallbackTarget:Lcom/oneplus/gallery2/media/MediaSource;

    if-eq v1, v0, :cond_2

    .line 1487
    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

    .line 1488
    iput-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaChangeCallbackTarget:Lcom/oneplus/gallery2/media/MediaSource;

    .line 1489
    if-eqz v0, :cond_2

    .line 1490
    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaChangeCallback:Lcom/oneplus/gallery2/media/MediaChangeCallback;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery2/media/MediaSource;->addMediaChangedCallback(Lcom/oneplus/gallery2/media/MediaChangeCallback;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

    .line 1494
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_CurrentMedia:Lcom/oneplus/gallery2/media/Media;

    if-eqz v1, :cond_0

    .line 1498
    iget v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_CurrentMediaIndex:I

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/oneplus/gallery2/BurstViewerFragment;->checkImageDecoding(IZ)V

    .line 1501
    invoke-direct {p0}, Lcom/oneplus/gallery2/BurstViewerFragment;->cancelDecodingHighResolutionImage()V

    goto :goto_0

    .line 1484
    .end local v0    # "source":Lcom/oneplus/gallery2/media/MediaSource;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private onGetCount()I
    .locals 1

    .prologue
    .line 1564
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onLowResImageDecoded(Lcom/oneplus/base/Handle;Lcom/oneplus/gallery2/media/Media;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1571
    iget-object v4, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_LowResBitmapDecodeInfos:Ljava/util/List;

    invoke-direct {p0, v4, p2}, Lcom/oneplus/gallery2/BurstViewerFragment;->findBitmapDecodeInfo(Ljava/util/List;Lcom/oneplus/gallery2/media/Media;)Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;

    move-result-object v0

    .line 1572
    .local v0, "decodeInfo":Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;
    if-nez v0, :cond_1

    .line 1606
    :cond_0
    return-void

    .line 1580
    :cond_1
    iget-object v4, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_LowResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1581
    iget-object v4, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_ReusedBitmapDecodeInfos:Ljava/util/Queue;

    invoke-interface {v4, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1584
    iget-object v4, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripItemMaps:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 1586
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;>;"
    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;

    .line 1587
    .local v2, "item":Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;
    if-eqz v2, :cond_2

    .line 1589
    invoke-virtual {v2}, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;->getImageDecodeState()Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;

    move-result-object v4

    sget-object v5, Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;->NONE:Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;

    if-ne v4, v5, :cond_2

    .line 1591
    sget-object v4, Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;->SMALL_THUMB_DECODED:Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;

    invoke-virtual {v2, v4}, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;->setImageDecodeState(Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;)V

    .line 1592
    invoke-virtual {v2, p3}, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;->updateViewWhenDecoded(Landroid/graphics/Bitmap;)V

    .line 1593
    if-nez p3, :cond_3

    .line 1595
    iget-object v4, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->TAG:Ljava/lang/String;

    const-string v5, "onLowResImageDecoded() - Fail to decode bitmap"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1599
    :cond_3
    invoke-virtual {v2, p3}, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;->setLowResThumb(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private onMediaListUpdated()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1675
    invoke-direct {p0, v0, v0, v0}, Lcom/oneplus/gallery2/BurstViewerFragment;->onMediaListUpdated(III)V

    .line 1676
    return-void
.end method

.method private onMediaListUpdated(III)V
    .locals 9
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "updateType"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1680
    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-nez v3, :cond_1

    .line 1682
    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripAdapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v3}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyDataSetChanged()V

    .line 1683
    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripAdapterForFooter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v3}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyDataSetChanged()V

    .line 1758
    :cond_0
    :goto_0
    return-void

    .line 1688
    :cond_1
    if-gt p1, p2, :cond_0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 1692
    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripAdapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripAdapterForFooter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eqz v3, :cond_2

    .line 1694
    packed-switch p3, :pswitch_data_0

    .line 1750
    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripAdapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v3}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyDataSetChanged()V

    .line 1751
    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripAdapterForFooter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v3}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyDataSetChanged()V

    .line 1757
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->TAG:Ljava/lang/String;

    const-string v6, "onMediaListUpdated() - update type:"

    const/16 v7, 0x9

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    const-string v5, ", Start: "

    aput-object v5, v7, v4

    const/4 v4, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v4

    const/4 v4, 0x3

    const-string v5, ", end: "

    aput-object v5, v7, v4

    const/4 v4, 0x4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v4

    const/4 v4, 0x5

    const-string v5, ", current: "

    aput-object v5, v7, v4

    const/4 v4, 0x6

    iget v5, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_CurrentMediaIndex:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v4

    const/4 v4, 0x7

    const-string v5, ", list size: "

    aput-object v5, v7, v4

    const/16 v4, 0x8

    iget-object v5, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v5}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v4

    invoke-static {v3, v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1699
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery2/BurstViewerFragment;->updateItemPostion(III)V

    .line 1701
    invoke-direct {p0}, Lcom/oneplus/gallery2/BurstViewerFragment;->updateSaveButtonVisibility()V

    .line 1704
    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripAdapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v3, p1, p2}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyItemAdded(II)V

    .line 1705
    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripAdapterForFooter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v3, p1, p2}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyItemAdded(II)V

    goto :goto_1

    .line 1710
    :pswitch_1
    invoke-direct {p0}, Lcom/oneplus/gallery2/BurstViewerFragment;->updateSaveButtonVisibility()V

    .line 1712
    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripAdapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v3}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyDataSetChanged()V

    .line 1713
    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripAdapterForFooter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v3}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyDataSetChanged()V

    .line 1716
    iget v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_CurrentMediaIndex:I

    iget-object v6, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v6}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 1718
    iget v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_CurrentMediaIndex:I

    if-lt v3, p1, :cond_2

    .line 1719
    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    iget v6, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_CurrentMediaIndex:I

    invoke-interface {v3, v6}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/media/Media;

    invoke-direct {p0, v3}, Lcom/oneplus/gallery2/BurstViewerFragment;->onCurrentMediaChanged(Lcom/oneplus/gallery2/media/Media;)V

    goto/16 :goto_1

    .line 1722
    :cond_3
    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v3}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3, v5, v4, v4}, Lcom/oneplus/gallery2/BurstViewerFragment;->setCurrentMediaIndexProp(Ljava/lang/Integer;ZZZ)V

    goto/16 :goto_1

    .line 1728
    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery2/BurstViewerFragment;->updateItemPostion(III)V

    .line 1731
    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v3}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v2

    .line 1732
    .local v2, "medialistSize":I
    move v0, p1

    .local v0, "i":I
    :goto_2
    if-gt v0, p2, :cond_5

    .line 1734
    if-ltz v0, :cond_4

    if-ge v0, v2, :cond_4

    .line 1736
    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v3, v0}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    .line 1737
    .local v1, "media":Lcom/oneplus/gallery2/media/Media;
    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_SelectedMediaList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1738
    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_SelectedMediaList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1732
    .end local v1    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1741
    :cond_5
    sget-object v3, Lcom/oneplus/gallery2/BurstViewerFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery2/BurstViewerFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_Toolbar:Landroid/widget/Toolbar;

    if-eqz v3, :cond_6

    .line 1743
    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_Toolbar:Landroid/widget/Toolbar;

    iget-object v6, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_SelectedMediaList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1746
    :cond_6
    sget-object v6, Lcom/oneplus/gallery2/BurstViewerFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_SelectedMediaList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    move v3, v4

    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v6, v3}, Lcom/oneplus/gallery2/BurstViewerFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_7
    move v3, v5

    goto :goto_3

    .line 1694
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onMediaSizeObtained(Lcom/oneplus/gallery2/media/Media;II)V
    .locals 4
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 1765
    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaSizeCallbackHandles:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/base/Handle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 1767
    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripItemMaps:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1769
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;>;"
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;

    .line 1770
    .local v1, "item":Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;
    if-eqz v1, :cond_0

    .line 1772
    invoke-virtual {v1, p1}, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;->updateMedia(Lcom/oneplus/gallery2/media/Media;)V

    goto :goto_0

    .line 1775
    .end local v1    # "item":Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;>;"
    :cond_1
    return-void
.end method

.method private onMediumResImageDecoded(Lcom/oneplus/base/Handle;Lcom/oneplus/gallery2/media/Media;Landroid/graphics/Bitmap;)V
    .locals 9
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1614
    iget-object v6, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediumResBitmapDecodeInfos:Ljava/util/List;

    invoke-direct {p0, v6, p2}, Lcom/oneplus/gallery2/BurstViewerFragment;->findBitmapDecodeInfo(Ljava/util/List;Lcom/oneplus/gallery2/media/Media;)Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;

    move-result-object v2

    .line 1615
    .local v2, "decodeInfo":Lcom/oneplus/gallery2/BurstViewerFragment$BitmapDecodeInfo;
    if-nez v2, :cond_1

    .line 1670
    :cond_0
    :goto_0
    return-void

    .line 1623
    :cond_1
    iget-object v6, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediumResBitmapDecodeInfos:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1624
    iget-object v6, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_ReusedBitmapDecodeInfos:Ljava/util/Queue;

    invoke-interface {v6, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1627
    const/4 v4, 0x0

    .line 1628
    .local v4, "isItemFound":Z
    const/4 v3, 0x0

    .line 1629
    .local v3, "isCurrentItem":Z
    iget-object v6, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripItemMaps:Ljava/util/Map;

    sget-object v7, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;->CENTER:Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1630
    .local v1, "centerMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;>;"
    if-eqz v1, :cond_3

    .line 1632
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;

    .line 1633
    .local v5, "item":Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;
    instance-of v6, v5, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;

    if-eqz v6, :cond_5

    check-cast v5, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;

    .end local v5    # "item":Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;
    move-object v0, v5

    .line 1634
    .local v0, "centerFilmstripItem":Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;
    :goto_1
    if-eqz v0, :cond_2

    .line 1636
    sget-object v6, Lcom/oneplus/gallery2/BurstViewerFragment$25;->$SwitchMap$com$oneplus$gallery2$FilmstripFragment$ImageDecodeState:[I

    invoke-virtual {v0}, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->getImageDecodeState()Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 1656
    :goto_2
    const/4 v4, 0x1

    .line 1657
    invoke-virtual {v0}, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->getPosition()I

    move-result v6

    iget v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_CurrentMediaIndex:I

    if-ne v6, v7, :cond_7

    const/4 v3, 0x1

    .line 1659
    :cond_2
    :goto_3
    if-nez v4, :cond_3

    .line 1664
    .end local v0    # "centerFilmstripItem":Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;
    :cond_3
    iget-object v6, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_CurrentMedia:Lcom/oneplus/gallery2/media/Media;

    if-eq v6, p2, :cond_4

    iget-object v6, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_CurrentMedia:Lcom/oneplus/gallery2/media/Media;

    if-eqz v6, :cond_4

    .line 1665
    iget-object v6, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    iget-object v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_CurrentMedia:Lcom/oneplus/gallery2/media/Media;

    sget-object v8, Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;->SCREEN:Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;

    invoke-interface {v6, v7, v8}, Lcom/oneplus/gallery2/media/ThumbnailImageManager;->getCachedThumbnailImage(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;)Landroid/graphics/Bitmap;

    .line 1668
    :cond_4
    if-eqz v3, :cond_0

    if-eqz p3, :cond_0

    iget-object v6, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    if-eqz v6, :cond_0

    .line 1669
    iget-object v6, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-virtual {v6, p3}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->setThumbnailBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1633
    .restart local v5    # "item":Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 1641
    .end local v5    # "item":Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;
    .restart local v0    # "centerFilmstripItem":Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;
    :pswitch_0
    sget-object v6, Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;->THUMB_DECODED:Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;

    invoke-virtual {v0, v6}, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->setImageDecodeState(Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;)V

    .line 1642
    invoke-virtual {v0, p3}, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->updateViewWhenDecoded(Landroid/graphics/Bitmap;)V

    .line 1643
    if-nez p3, :cond_6

    .line 1645
    iget-object v6, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->TAG:Ljava/lang/String;

    const-string v7, "onMediumResImageDecoded() - Fail to decode bitmap"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1649
    :cond_6
    invoke-virtual {v0, p3}, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->setMediumResThumb(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 1657
    :cond_7
    const/4 v3, 0x0

    goto :goto_3

    .line 1636
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onPrepareItemView(Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;ILandroid/view/ViewGroup;)V
    .locals 12
    .param p1, "type"    # Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;
    .param p2, "position"    # I
    .param p3, "container"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1814
    iget-object v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-nez v7, :cond_0

    .line 1884
    :goto_0
    return-void

    .line 1816
    :cond_0
    if-ltz p2, :cond_1

    iget-object v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v7}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v7

    if-lt p2, v7, :cond_2

    .line 1818
    :cond_1
    iget-object v5, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPrepareItemView() - invalid pos:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1822
    :cond_2
    iget-object v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v7, p2}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/media/Media;

    .line 1823
    .local v3, "media":Lcom/oneplus/gallery2/media/Media;
    if-nez v3, :cond_3

    .line 1825
    iget-object v5, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->TAG:Ljava/lang/String;

    const-string v6, "onPrepareItemView() - media is null"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1830
    :cond_3
    iget-object v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripItemMaps:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1831
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;>;"
    iget-object v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripItemPools:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    .line 1832
    .local v1, "itemPool":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;>;"
    if-nez v2, :cond_4

    .line 1834
    new-instance v2, Ljava/util/HashMap;

    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1835
    .restart local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;>;"
    iget-object v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripItemMaps:Ljava/util/Map;

    invoke-interface {v7, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1837
    :cond_4
    if-nez v1, :cond_5

    .line 1839
    new-instance v1, Ljava/util/ArrayDeque;

    .end local v1    # "itemPool":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;>;"
    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 1840
    .restart local v1    # "itemPool":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;>;"
    iget-object v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripItemPools:Ljava/util/Map;

    invoke-interface {v7, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1843
    :cond_5
    const/4 v4, 0x1

    .line 1844
    .local v4, "shouldAddToContainer":Z
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;

    .line 1845
    .local v0, "item":Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;
    if-nez v0, :cond_a

    .line 1847
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "item":Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;
    check-cast v0, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;

    .line 1848
    .restart local v0    # "item":Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;
    if-nez v0, :cond_9

    .line 1851
    sget-object v7, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;->CENTER:Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;

    if-ne p1, v7, :cond_8

    .line 1852
    new-instance v0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;

    .end local v0    # "item":Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;
    invoke-direct {v0, p0, v3}, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;-><init>(Lcom/oneplus/gallery2/BurstViewerFragment;Lcom/oneplus/gallery2/media/Media;)V

    .line 1860
    .restart local v0    # "item":Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;
    :cond_6
    :goto_1
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1869
    :goto_2
    if-eqz v4, :cond_7

    .line 1871
    invoke-virtual {v0}, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;->getContainer()Landroid/view/View;

    move-result-object v7

    invoke-virtual {p3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1872
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 1876
    :cond_7
    invoke-virtual {v0, p2}, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;->setPosition(I)V

    .line 1877
    sget-object v7, Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;->NONE:Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;

    invoke-virtual {v0, v7}, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;->setImageDecodeState(Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;)V

    .line 1878
    iget-object v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_DummyThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v7}, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1880
    iget-object v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->TAG:Ljava/lang/String;

    const-string v8, "onPrepareItemView() - type:"

    const/4 v9, 0x7

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p1, v9, v6

    const-string v10, ", Position: "

    aput-object v10, v9, v5

    const/4 v10, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, ", item: "

    aput-object v11, v9, v10

    const/4 v10, 0x4

    aput-object v0, v9, v10

    const/4 v10, 0x5

    const-string v11, ", media: "

    aput-object v11, v9, v10

    const/4 v10, 0x6

    aput-object v3, v9, v10

    invoke-static {v7, v8, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1883
    sget-object v7, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;->CENTER:Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;

    if-ne p1, v7, :cond_b

    :goto_3
    invoke-direct {p0, p2, v5}, Lcom/oneplus/gallery2/BurstViewerFragment;->checkImageDecoding(IZ)V

    goto/16 :goto_0

    .line 1853
    :cond_8
    sget-object v7, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;->FOOTER:Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;

    if-ne p1, v7, :cond_6

    .line 1854
    new-instance v0, Lcom/oneplus/gallery2/BurstViewerFragment$FooterFilmstripItem;

    .end local v0    # "item":Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;
    invoke-direct {v0, p0, v3}, Lcom/oneplus/gallery2/BurstViewerFragment$FooterFilmstripItem;-><init>(Lcom/oneplus/gallery2/BurstViewerFragment;Lcom/oneplus/gallery2/media/Media;)V

    .restart local v0    # "item":Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;
    goto :goto_1

    .line 1857
    :cond_9
    invoke-virtual {v0, v3}, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;->updateMedia(Lcom/oneplus/gallery2/media/Media;)V

    goto :goto_1

    .line 1864
    :cond_a
    invoke-virtual {v0, v3}, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;->updateMedia(Lcom/oneplus/gallery2/media/Media;)V

    .line 1865
    const/4 v4, 0x0

    goto :goto_2

    :cond_b
    move v5, v6

    .line 1883
    goto :goto_3
.end method

.method private onReleaseItemView(Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;ILandroid/view/ViewGroup;)V
    .locals 14
    .param p1, "type"    # Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;
    .param p2, "position"    # I
    .param p3, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 1888
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;

    .line 1889
    .local v8, "reusedItem":Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;
    const/4 v7, 0x0

    .line 1890
    .local v7, "media":Lcom/oneplus/gallery2/media/Media;
    if-eqz v8, :cond_5

    .line 1893
    iget-object v9, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripItemPools:Ljava/util/Map;

    invoke-interface {v9, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Queue;

    .line 1894
    .local v5, "itemPool":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;>;"
    if-nez v5, :cond_0

    .line 1896
    new-instance v5, Ljava/util/ArrayDeque;

    .end local v5    # "itemPool":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;>;"
    invoke-direct {v5}, Ljava/util/ArrayDeque;-><init>()V

    .line 1897
    .restart local v5    # "itemPool":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;>;"
    iget-object v9, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripItemPools:Ljava/util/Map;

    invoke-interface {v9, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1899
    :cond_0
    invoke-interface {v5, v8}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1902
    iget-object v9, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripItemMaps:Ljava/util/Map;

    invoke-interface {v9, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 1903
    .local v6, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;>;"
    if-eqz v6, :cond_3

    .line 1905
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1907
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v8, :cond_1

    .line 1909
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "media":Lcom/oneplus/gallery2/media/Media;
    check-cast v7, Lcom/oneplus/gallery2/media/Media;

    .line 1913
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;>;"
    .restart local v7    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_2
    if-eqz v7, :cond_3

    .line 1914
    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1918
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    instance-of v9, v8, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;

    if-eqz v9, :cond_6

    move-object v1, v8

    .line 1920
    check-cast v1, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;

    .line 1921
    .local v1, "centerFilmstripItem":Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;
    invoke-virtual {v1}, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->clearCaches()V

    .line 1928
    .end local v1    # "centerFilmstripItem":Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;
    :cond_4
    :goto_0
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;->setSelected(Z)V

    .line 1929
    const/4 v9, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 1930
    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;->setPosition(I)V

    .line 1931
    iget-object v9, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_DummyThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v9}, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1932
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;->updateMedia(Lcom/oneplus/gallery2/media/Media;)V

    .line 1935
    .end local v5    # "itemPool":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;>;"
    .end local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;>;"
    :cond_5
    iget-object v9, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->TAG:Ljava/lang/String;

    const-string v10, "onReleaseItemView() - type:"

    const/4 v11, 0x7

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p1, v11, v12

    const/4 v12, 0x1

    const-string v13, ", Position: "

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    const-string v13, ", item: "

    aput-object v13, v11, v12

    const/4 v12, 0x4

    aput-object v8, v11, v12

    const/4 v12, 0x5

    const-string v13, ", media:"

    aput-object v13, v11, v12

    const/4 v12, 0x6

    aput-object v7, v11, v12

    invoke-static {v9, v10, v11}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1938
    sget-object v9, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;->CENTER:Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;

    if-ne p1, v9, :cond_7

    const/4 v9, 0x1

    :goto_1
    move/from16 v0, p2

    invoke-direct {p0, v0, v9}, Lcom/oneplus/gallery2/BurstViewerFragment;->checkImageDecoding(IZ)V

    .line 1941
    sget-object v9, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;

    invoke-direct {p0, v9}, Lcom/oneplus/gallery2/BurstViewerFragment;->setFilmstripState(Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;)V

    .line 1944
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1945
    return-void

    .line 1923
    .restart local v5    # "itemPool":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;>;"
    .restart local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;>;"
    :cond_6
    instance-of v9, v8, Lcom/oneplus/gallery2/BurstViewerFragment$FooterFilmstripItem;

    if-eqz v9, :cond_4

    move-object v3, v8

    .line 1925
    check-cast v3, Lcom/oneplus/gallery2/BurstViewerFragment$FooterFilmstripItem;

    .line 1926
    .local v3, "footerFilmstripItem":Lcom/oneplus/gallery2/BurstViewerFragment$FooterFilmstripItem;
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Lcom/oneplus/gallery2/BurstViewerFragment$FooterFilmstripItem;->setCoverImageVisibility(Z)V

    goto :goto_0

    .line 1938
    .end local v3    # "footerFilmstripItem":Lcom/oneplus/gallery2/BurstViewerFragment$FooterFilmstripItem;
    .end local v5    # "itemPool":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;>;"
    .end local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;>;"
    :cond_7
    const/4 v9, 0x0

    goto :goto_1
.end method

.method private onScaleImageBoundsChanged(Lcom/oneplus/widget/ScaleImageView;IIII)V
    .locals 3
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1984
    invoke-virtual {p1}, Lcom/oneplus/widget/ScaleImageView;->getFitToScreenShortSideBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1985
    .local v0, "fitBounds":Landroid/graphics/Rect;
    iget-boolean v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_IsOverScaledDown:Z

    if-nez v1, :cond_2

    .line 1987
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int v2, p4, p2

    if-gt v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int v2, p5, p3

    if-le v1, v2, :cond_1

    .line 1989
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->TAG:Ljava/lang/String;

    const-string v2, "onScaleImageBoundsChanged() - Over scaled"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1990
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_IsOverScaledDown:Z

    .line 2001
    :cond_1
    :goto_0
    return-void

    .line 1995
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int v2, p4, p2

    if-gt v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int v2, p5, p3

    if-gt v1, v2, :cond_1

    .line 1997
    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->TAG:Ljava/lang/String;

    const-string v2, "onScaleImageBoundsChanged() - Over scaled cancel"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1998
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_IsOverScaledDown:Z

    goto :goto_0
.end method

.method private onScaleImageBoundsTypeChanged(Lcom/oneplus/widget/ScaleImageView;Lcom/oneplus/widget/ScaleImageView$BoundsType;Lcom/oneplus/widget/ScaleImageView$BoundsType;)V
    .locals 11
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "oldType"    # Lcom/oneplus/widget/ScaleImageView$BoundsType;
    .param p3, "newType"    # Lcom/oneplus/widget/ScaleImageView$BoundsType;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2008
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-nez v0, :cond_0

    .line 2058
    :goto_0
    return-void

    .line 2012
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/widget/ScaleImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;

    .line 2013
    .local v6, "filmstripItem":Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;
    invoke-virtual {v6}, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->getPosition()I

    move-result v8

    .line 2014
    .local v8, "pos":I
    if-ltz v8, :cond_1

    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v0

    if-lt v8, v0, :cond_2

    .line 2016
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScaleImageBoundsTypeChanged() - invalid pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", filmstripItem:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2019
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v0, v8}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/gallery2/media/Media;

    .line 2020
    .local v7, "media":Lcom/oneplus/gallery2/media/Media;
    if-nez v7, :cond_3

    .line 2022
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScaleImageBoundsTypeChanged() - media is null , pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", filmstripItem:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2025
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->TAG:Ljava/lang/String;

    const-string v1, "onScaleImageBoundsTypeChanged() - Old: "

    const-string v3, ", new: "

    const-string v5, ", item: "

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2028
    sget-object v0, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    if-ne p2, v0, :cond_5

    .line 2031
    invoke-direct {p0, v6}, Lcom/oneplus/gallery2/BurstViewerFragment;->decodeHighResolutionImage(Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;)V

    .line 2034
    invoke-direct {p0, v10, v9}, Lcom/oneplus/gallery2/BurstViewerFragment;->setToolbarVisibility(ZZ)V

    .line 2057
    :cond_4
    :goto_1
    iput-boolean v10, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_IsOverScaledDown:Z

    goto :goto_0

    .line 2036
    :cond_5
    sget-object v0, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    if-ne p3, v0, :cond_4

    .line 2039
    invoke-direct {p0}, Lcom/oneplus/gallery2/BurstViewerFragment;->cancelDecodingHighResolutionImage()V

    .line 2040
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2041
    sget-object v0, Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailQuality;->NORMAL:Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailQuality;

    invoke-virtual {v6, v0}, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->setThumbnailQuality(Lcom/oneplus/gallery2/BurstViewerFragment$ThumbnailQuality;)V

    .line 2044
    sget-object v0, Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;->NONE:Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;

    invoke-virtual {v6, v0}, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->setImageDecodeState(Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;)V

    .line 2045
    invoke-direct {p0, v7, v9}, Lcom/oneplus/gallery2/BurstViewerFragment;->decodeLowResolutionImage(Lcom/oneplus/gallery2/media/Media;Z)V

    .line 2046
    invoke-direct {p0, v7, v9}, Lcom/oneplus/gallery2/BurstViewerFragment;->decodeMediumResolutionImage(Lcom/oneplus/gallery2/media/Media;Z)V

    .line 2049
    sget-object v0, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/BurstViewerFragment;->setFilmstripState(Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;)V

    .line 2052
    invoke-direct {p0, v9, v9}, Lcom/oneplus/gallery2/BurstViewerFragment;->setToolbarVisibility(ZZ)V

    goto :goto_1
.end method

.method private onScaleImageGestureDoubleTap(Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "item"    # Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 2064
    sget-object v0, Lcom/oneplus/gallery2/BurstViewerFragment$25;->$SwitchMap$com$oneplus$gallery2$BurstViewerFragment$FilmstripState:[I

    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripState:Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2074
    :cond_0
    :goto_0
    return v2

    .line 2067
    :pswitch_0
    # invokes: Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->isStretchedImage()Z
    invoke-static {p1}, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->access$4600(Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2068
    sget-object v0, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;->VIEW_DETAILS:Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/BurstViewerFragment;->setFilmstripState(Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;)V

    goto :goto_0

    .line 2071
    :pswitch_1
    sget-object v0, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/BurstViewerFragment;->setFilmstripState(Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;)V

    goto :goto_0

    .line 2064
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onScaleImageGestureEnd(Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;)V
    .locals 1
    .param p1, "item"    # Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;

    .prologue
    .line 2083
    iget-boolean v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_IsScaled:Z

    if-eqz v0, :cond_0

    .line 2085
    invoke-direct {p0}, Lcom/oneplus/gallery2/BurstViewerFragment;->updateFilmstripScrollMode()V

    .line 2087
    :cond_0
    return-void
.end method

.method private onScaleImageGestureFling(Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .param p1, "item"    # Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;
    .param p2, "e1"    # Landroid/view/MotionEvent;
    .param p3, "e2"    # Landroid/view/MotionEvent;
    .param p4, "velocityX"    # F
    .param p5, "velocityY"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2094
    iget-object v5, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripState:Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;

    sget-object v6, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;->VIEW_DETAILS:Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;

    if-eq v5, v6, :cond_1

    .line 2130
    :cond_0
    :goto_0
    return v3

    .line 2096
    :cond_1
    iget-object v5, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v5, :cond_0

    .line 2100
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x459c4000    # 5000.0f

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_0

    .line 2104
    # getter for: Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;
    invoke-static {p1}, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->access$2900(Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;)Lcom/oneplus/widget/ScaleImageView;

    move-result-object v1

    .line 2105
    .local v1, "imageView":Lcom/oneplus/widget/ScaleImageView;
    invoke-virtual {v1}, Lcom/oneplus/widget/ScaleImageView;->getImageBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2106
    .local v0, "imageBounds":Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .line 2111
    const/4 v5, 0x0

    cmpg-float v5, p4, v5

    if-gez v5, :cond_2

    .line 2113
    iget v5, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Lcom/oneplus/widget/ScaleImageView;->getWidth()I

    move-result v6

    if-gt v5, v6, :cond_0

    iget v5, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_CurrentMediaIndex:I

    iget-object v6, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v6}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_0

    .line 2115
    iget v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_CurrentMediaIndex:I

    add-int/lit8 v2, v3, 0x1

    .line 2125
    .local v2, "indexTo":I
    :goto_1
    sget-object v3, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    invoke-virtual {v1, v3}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Lcom/oneplus/widget/ScaleImageView$BoundsType;)V

    .line 2126
    sget-object v3, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;

    invoke-direct {p0, v3}, Lcom/oneplus/gallery2/BurstViewerFragment;->setFilmstripState(Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;)V

    .line 2127
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3, v4, v4, v4}, Lcom/oneplus/gallery2/BurstViewerFragment;->setCurrentMediaIndexProp(Ljava/lang/Integer;ZZZ)V

    move v3, v4

    .line 2130
    goto :goto_0

    .line 2119
    .end local v2    # "indexTo":I
    :cond_2
    iget v5, v0, Landroid/graphics/Rect;->left:I

    if-ltz v5, :cond_0

    iget v5, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_CurrentMediaIndex:I

    if-eqz v5, :cond_0

    .line 2121
    iget v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_CurrentMediaIndex:I

    add-int/lit8 v2, v3, -0x1

    .restart local v2    # "indexTo":I
    goto :goto_1
.end method

.method private onScaleImageGestureScale(Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;FFF)Z
    .locals 3
    .param p1, "item"    # Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;
    .param p2, "factor"    # F
    .param p3, "pivotX"    # F
    .param p4, "pivotY"    # F

    .prologue
    const/4 v2, 0x0

    .line 2138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_IsScaled:Z

    .line 2139
    iget v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_ScaleFactor:F

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_ScaleFactor:F

    .line 2140
    sget-object v0, Lcom/oneplus/gallery2/BurstViewerFragment$25;->$SwitchMap$com$oneplus$gallery2$BurstViewerFragment$FilmstripState:[I

    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripState:Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2150
    :cond_0
    :goto_0
    return v2

    .line 2143
    :pswitch_0
    iget v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_ScaleFactor:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 2145
    invoke-virtual {p1}, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->getImageBoundsType()Lcom/oneplus/widget/ScaleImageView$BoundsType;

    move-result-object v0

    sget-object v1, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    if-eq v0, v1, :cond_0

    .line 2146
    sget-object v0, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;->VIEW_DETAILS:Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/BurstViewerFragment;->setFilmstripState(Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;)V

    goto :goto_0

    .line 2140
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onScaleImageGestureStart(Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "item"    # Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2157
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_ScaleFactor:F

    .line 2158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_IsScaled:Z

    .line 2159
    return-void
.end method

.method private onSelectionModeChanged(Z)V
    .locals 8
    .param p1, "isSelectionMode"    # Z

    .prologue
    const v7, 0x7f06009a

    const/4 v6, 0x0

    .line 2165
    if-eqz p1, :cond_2

    .line 2167
    iget-object v4, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_Toolbar:Landroid/widget/Toolbar;

    if-eqz v4, :cond_0

    .line 2169
    iget-object v4, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_Toolbar:Landroid/widget/Toolbar;

    iget-object v5, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_SelectedMediaList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2170
    iget-object v4, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_Toolbar:Landroid/widget/Toolbar;

    invoke-virtual {v4}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v7, v5}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2172
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery2/BurstViewerFragment;->updateSaveButtonVisibility()V

    .line 2194
    :cond_1
    :goto_0
    return-void

    .line 2176
    :cond_2
    iget-object v4, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_SelectedMediaList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2178
    iget-object v4, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_SelectedMediaList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 2180
    :cond_3
    iget-object v4, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripItemMaps:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 2182
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;>;"
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;

    .line 2184
    .local v2, "item":Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;
    invoke-virtual {v2, v6}, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;->setSelected(Z)V

    goto :goto_1

    .line 2188
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;>;"
    :cond_5
    iget-object v4, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_Toolbar:Landroid/widget/Toolbar;

    if-eqz v4, :cond_1

    .line 2190
    iget-object v4, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_Toolbar:Landroid/widget/Toolbar;

    const v5, 0x7f090006

    invoke-virtual {p0, v5}, Lcom/oneplus/gallery2/BurstViewerFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2191
    iget-object v4, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_Toolbar:Landroid/widget/Toolbar;

    invoke-virtual {v4}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-interface {v4, v7, v6}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_0
.end method

.method private resetFilmstripState()V
    .locals 2

    .prologue
    .line 2258
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->TAG:Ljava/lang/String;

    const-string v1, "resetFilmstripState()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2261
    sget-object v0, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;->BACKGROUND:Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/BurstViewerFragment;->setFilmstripState(Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;)V

    .line 2262
    return-void
.end method

.method private saveMediasAndDeleteOthers()V
    .locals 4

    .prologue
    .line 2267
    iget-object v2, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->TAG:Ljava/lang/String;

    const-string v3, "saveMediasAndDeleteOthers()"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2269
    invoke-virtual {p0}, Lcom/oneplus/gallery2/BurstViewerFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v1

    .line 2270
    .local v1, "galleryActivity":Lcom/oneplus/gallery2/GalleryActivity;
    if-nez v1, :cond_0

    .line 2272
    iget-object v2, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->TAG:Ljava/lang/String;

    const-string v3, "saveMediasAndDeleteOthers() - no activity to show dialog"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2330
    :goto_0
    return-void

    .line 2275
    :cond_0
    new-instance v0, Lcom/oneplus/gallery2/BurstViewerFragment$20;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/gallery2/BurstViewerFragment$20;-><init>(Lcom/oneplus/gallery2/BurstViewerFragment;Lcom/oneplus/gallery2/GalleryActivity;)V

    .line 2329
    .local v0, "dialogFragment":Lcom/oneplus/gallery2/GalleryDialogFragment;
    const-string v2, "Gallery.SaveMediasAndDeleteOthers"

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/GalleryDialogFragment;->show(Lcom/oneplus/base/BaseActivity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private searchMediaListIndex(Landroid/net/Uri;)I
    .locals 1
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, -0x1

    .line 2335
    invoke-direct {p0, p1, v0, v0}, Lcom/oneplus/gallery2/BurstViewerFragment;->searchMediaListIndex(Landroid/net/Uri;II)I

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

    .line 2339
    if-nez p1, :cond_1

    move v0, v2

    .line 2352
    :cond_0
    :goto_0
    return v0

    .line 2341
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v1}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    move v0, v2

    .line 2342
    goto :goto_0

    .line 2343
    :cond_3
    if-ne p2, v2, :cond_4

    .line 2344
    const/4 p2, 0x0

    .line 2345
    :cond_4
    if-eq p3, v2, :cond_5

    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v1}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v1

    if-lt p3, v1, :cond_6

    .line 2346
    :cond_5
    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v1}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v1

    add-int/lit8 p3, v1, -0x1

    .line 2347
    :cond_6
    move v0, p3

    .local v0, "i":I
    :goto_1
    if-lt v0, p2, :cond_7

    .line 2349
    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v1, v0}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v1}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2347
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_7
    move v0, v2

    .line 2352
    goto :goto_0
.end method

.method private setCoverMedia(Lcom/oneplus/gallery2/media/GroupedMedia;)V
    .locals 2
    .param p1, "coverMedia"    # Lcom/oneplus/gallery2/media/GroupedMedia;

    .prologue
    .line 2372
    iput-object p1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_CoverMedia:Lcom/oneplus/gallery2/media/GroupedMedia;

    .line 2375
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/GroupedMedia;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    .line 2376
    .local v0, "source":Lcom/oneplus/gallery2/media/MediaSource;
    :goto_0
    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_CoverMediaSource:Lcom/oneplus/gallery2/media/MediaSource;

    if-eq v1, v0, :cond_0

    .line 2378
    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_CoverMediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_CoverMediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

    .line 2379
    iput-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_CoverMediaSource:Lcom/oneplus/gallery2/media/MediaSource;

    .line 2380
    if-eqz v0, :cond_0

    .line 2381
    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_CoverMediaChangeCallback:Lcom/oneplus/gallery2/media/MediaChangeCallback;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery2/media/MediaSource;->addMediaChangedCallback(Lcom/oneplus/gallery2/media/MediaChangeCallback;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_CoverMediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

    .line 2384
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_CoverMedia:Lcom/oneplus/gallery2/media/GroupedMedia;

    if-nez v1, :cond_2

    .line 2388
    :goto_1
    return-void

    .line 2375
    .end local v0    # "source":Lcom/oneplus/gallery2/media/MediaSource;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2387
    .restart local v0    # "source":Lcom/oneplus/gallery2/media/MediaSource;
    :cond_2
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/BurstViewerFragment;->updateFooterFilmstripCover(Lcom/oneplus/gallery2/media/GroupedMedia;)V

    goto :goto_1
.end method

.method private setCurrentMediaIndexProp(Ljava/lang/Integer;Z)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Integer;
    .param p2, "updateFilmstrip"    # Z

    .prologue
    .line 2393
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/oneplus/gallery2/BurstViewerFragment;->setCurrentMediaIndexProp(Ljava/lang/Integer;ZZZ)V

    .line 2394
    return-void
.end method

.method private setCurrentMediaIndexProp(Ljava/lang/Integer;ZZZ)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Integer;
    .param p2, "updateFilmstrip"    # Z
    .param p3, "smooth"    # Z
    .param p4, "footerSmooth"    # Z

    .prologue
    .line 2398
    iget v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_CurrentMediaIndex:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 2416
    :cond_0
    :goto_0
    return-void

    .line 2400
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_3

    .line 2401
    :cond_2
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 2404
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_CurrentMediaIndex:I

    .line 2407
    if-eqz p2, :cond_4

    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripView:Lcom/oneplus/widget/FilmstripView;

    if-eqz v1, :cond_4

    .line 2408
    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripView:Lcom/oneplus/widget/FilmstripView;

    iget v2, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_CurrentMediaIndex:I

    invoke-virtual {v1, v2, p3}, Lcom/oneplus/widget/FilmstripView;->setCurrentItem(IZ)V

    .line 2409
    :cond_4
    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripViewForFooter:Lcom/oneplus/widget/FilmstripView;

    if-eqz v1, :cond_5

    .line 2410
    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripViewForFooter:Lcom/oneplus/widget/FilmstripView;

    iget v2, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_CurrentMediaIndex:I

    invoke-virtual {v1, v2, p4}, Lcom/oneplus/widget/FilmstripView;->setCurrentItem(IZ)V

    .line 2413
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_6

    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    move-object v0, v1

    .line 2414
    .local v0, "newMedia":Lcom/oneplus/gallery2/media/Media;
    :goto_1
    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_CurrentMedia:Lcom/oneplus/gallery2/media/Media;

    if-eq v0, v1, :cond_0

    .line 2415
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/BurstViewerFragment;->onCurrentMediaChanged(Lcom/oneplus/gallery2/media/Media;)V

    goto :goto_0

    .line 2413
    .end local v0    # "newMedia":Lcom/oneplus/gallery2/media/Media;
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setFilmstripScrollMode(I)V
    .locals 3
    .param p1, "scrollMode"    # I

    .prologue
    .line 2422
    iget v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripScrollMode:I

    if-ne v0, p1, :cond_0

    .line 2429
    :goto_0
    return-void

    .line 2426
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->TAG:Ljava/lang/String;

    const-string v1, "setFilmstripScrollMode() - Scroll mode: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2427
    iput p1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripScrollMode:I

    .line 2428
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripView:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v0, p1}, Lcom/oneplus/widget/FilmstripView;->setScrollMode(I)V

    goto :goto_0
.end method

.method private setFilmstripState(Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;)V
    .locals 5
    .param p1, "state"    # Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;

    .prologue
    .line 2437
    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripState:Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;

    if-ne p1, v3, :cond_0

    .line 2461
    :goto_0
    return-void

    .line 2441
    :cond_0
    iput-object p1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripState:Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;

    .line 2444
    sget-object v3, Lcom/oneplus/gallery2/BurstViewerFragment$25;->$SwitchMap$com$oneplus$gallery2$BurstViewerFragment$FilmstripState:[I

    invoke-virtual {p1}, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 2460
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/gallery2/BurstViewerFragment;->updateFilmstripScrollMode()V

    goto :goto_0

    .line 2447
    :pswitch_0
    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripItemMaps:Ljava/util/Map;

    sget-object v4, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;->CENTER:Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2448
    .local v0, "centerMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;>;"
    if-eqz v0, :cond_1

    .line 2450
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;

    .line 2452
    .local v2, "item":Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;
    instance-of v3, v2, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;

    if-eqz v3, :cond_2

    .line 2453
    check-cast v2, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;

    .end local v2    # "item":Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;
    sget-object v3, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->setImageBounds(Lcom/oneplus/widget/ScaleImageView$BoundsType;)V

    goto :goto_1

    .line 2444
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private setMediaListProp(Lcom/oneplus/gallery2/media/MediaList;)Z
    .locals 4
    .param p1, "list"    # Lcom/oneplus/gallery2/media/MediaList;

    .prologue
    .line 2468
    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-ne v1, p1, :cond_0

    .line 2469
    const/4 v1, 0x1

    .line 2493
    :goto_0
    return v1

    .line 2472
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    .line 2473
    .local v0, "oldList":Lcom/oneplus/gallery2/media/MediaList;
    iput-object p1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    .line 2476
    if-eqz v0, :cond_1

    .line 2478
    sget-object v1, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaAddedEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2479
    sget-object v1, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaRemovedEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2480
    sget-object v1, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaRemovingEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2482
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v1, :cond_2

    .line 2484
    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v2, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaAddedEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v1, v2, v3}, Lcom/oneplus/gallery2/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2485
    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v2, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaRemovedEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v1, v2, v3}, Lcom/oneplus/gallery2/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2486
    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v2, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaRemovingEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v1, v2, v3}, Lcom/oneplus/gallery2/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2490
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/gallery2/BurstViewerFragment;->onMediaListUpdated()V

    .line 2493
    sget-object v1, Lcom/oneplus/gallery2/BurstViewerFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/oneplus/gallery2/BurstViewerFragment;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private setToolbarVisibility(ZZ)V
    .locals 5
    .param p1, "visible"    # Z
    .param p2, "animation"    # Z

    .prologue
    .line 2501
    iput-boolean p1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_IsToolbarVisible:Z

    .line 2504
    invoke-direct {p0, p2}, Lcom/oneplus/gallery2/BurstViewerFragment;->updateToolbarVisibility(Z)V

    .line 2507
    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripItemMaps:Ljava/util/Map;

    sget-object v4, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;->CENTER:Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 2508
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;>;"
    if-eqz v2, :cond_1

    .line 2510
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;

    .line 2512
    .local v1, "item":Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;
    instance-of v3, v1, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;

    if-eqz v3, :cond_0

    .line 2513
    check-cast v1, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;

    .end local v1    # "item":Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;
    invoke-virtual {v1}, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->updateCheckBoxMarginAndVisibility()V

    goto :goto_0

    .line 2516
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private updateFilmstripItemSelected(I)V
    .locals 9
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2571
    iget-object v5, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-nez v5, :cond_0

    .line 2619
    :goto_0
    return-void

    .line 2574
    :cond_0
    if-ltz p1, :cond_1

    iget-object v5, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v5}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v5

    if-lt p1, v5, :cond_2

    .line 2576
    :cond_1
    iget-object v5, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateFooterThumbSelectedIcon() - invalid pos:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2579
    :cond_2
    iget-object v5, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v5, p1}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/media/Media;

    .line 2580
    .local v3, "media":Lcom/oneplus/gallery2/media/Media;
    if-nez v3, :cond_3

    .line 2582
    iget-object v5, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateFooterThumbSelectedIcon() - media is null, pos:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2586
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2587
    .local v4, "updateItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;>;"
    iget-object v5, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripItemMaps:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 2589
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;>;"
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;

    .line 2590
    .local v1, "item":Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;
    if-eqz v1, :cond_4

    .line 2591
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2594
    .end local v1    # "item":Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;>;"
    :cond_5
    iget-object v5, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_SelectedMediaList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2596
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;

    .line 2598
    .restart local v1    # "item":Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;
    invoke-virtual {v1, v7}, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;->setSelected(Z)V

    goto :goto_2

    .line 2600
    .end local v1    # "item":Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;
    :cond_6
    iget-object v5, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_SelectedMediaList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2611
    :goto_3
    sget-object v5, Lcom/oneplus/gallery2/BurstViewerFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/gallery2/BurstViewerFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_Toolbar:Landroid/widget/Toolbar;

    if-eqz v5, :cond_7

    .line 2613
    iget-object v5, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_Toolbar:Landroid/widget/Toolbar;

    iget-object v8, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_SelectedMediaList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2615
    :cond_7
    invoke-direct {p0}, Lcom/oneplus/gallery2/BurstViewerFragment;->updateSaveButtonVisibility()V

    .line 2617
    sget-object v8, Lcom/oneplus/gallery2/BurstViewerFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    iget-object v5, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_SelectedMediaList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    move v5, v6

    :goto_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v8, v5}, Lcom/oneplus/gallery2/BurstViewerFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2618
    iget-object v5, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->TAG:Ljava/lang/String;

    const-string v6, "updateFooterThumbSelectedIcon() - click pos:"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2604
    :cond_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;

    .line 2606
    .restart local v1    # "item":Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;
    invoke-virtual {v1, v6}, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;->setSelected(Z)V

    goto :goto_5

    .line 2608
    .end local v1    # "item":Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;
    :cond_9
    iget-object v5, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_SelectedMediaList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    move v5, v7

    .line 2617
    goto :goto_4
.end method

.method private updateFilmstripScrollMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2523
    sget-object v0, Lcom/oneplus/gallery2/BurstViewerFragment$25;->$SwitchMap$com$oneplus$gallery2$BurstViewerFragment$FilmstripState:[I

    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripState:Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2537
    :goto_0
    return-void

    .line 2526
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/oneplus/gallery2/BurstViewerFragment;->setFilmstripScrollMode(I)V

    goto :goto_0

    .line 2530
    :pswitch_1
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/BurstViewerFragment;->setFilmstripScrollMode(I)V

    goto :goto_0

    .line 2534
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/oneplus/gallery2/BurstViewerFragment;->setFilmstripScrollMode(I)V

    goto :goto_0

    .line 2523
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateFooterFilmstripCover(Lcom/oneplus/gallery2/media/GroupedMedia;)V
    .locals 9
    .param p1, "coverMedia"    # Lcom/oneplus/gallery2/media/GroupedMedia;

    .prologue
    .line 2542
    if-nez p1, :cond_1

    .line 2566
    :cond_0
    return-void

    .line 2545
    :cond_1
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/GroupedMedia;->getCover()Lcom/oneplus/gallery2/media/Media;

    move-result-object v6

    .line 2546
    .local v6, "media":Lcom/oneplus/gallery2/media/Media;
    if-eqz v6, :cond_0

    .line 2549
    iget-object v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripItemMaps:Ljava/util/Map;

    sget-object v8, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;->FOOTER:Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 2550
    .local v3, "footerMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;>;"
    if-eqz v3, :cond_0

    .line 2553
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2555
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    .line 2556
    .local v1, "entryMedia":Lcom/oneplus/gallery2/media/Media;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;

    .line 2557
    .local v5, "item":Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;
    instance-of v7, v5, Lcom/oneplus/gallery2/BurstViewerFragment$FooterFilmstripItem;

    if-eqz v7, :cond_2

    move-object v2, v5

    .line 2559
    check-cast v2, Lcom/oneplus/gallery2/BurstViewerFragment$FooterFilmstripItem;

    .line 2560
    .local v2, "footerFilmstripItem":Lcom/oneplus/gallery2/BurstViewerFragment$FooterFilmstripItem;
    if-ne v6, v1, :cond_3

    .line 2561
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lcom/oneplus/gallery2/BurstViewerFragment$FooterFilmstripItem;->setCoverImageVisibility(Z)V

    goto :goto_0

    .line 2563
    :cond_3
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/oneplus/gallery2/BurstViewerFragment$FooterFilmstripItem;->setCoverImageVisibility(Z)V

    goto :goto_0
.end method

.method private updateItemPostion(III)V
    .locals 9
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "updateType"    # I

    .prologue
    .line 2625
    if-gt p1, p2, :cond_0

    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 2650
    :cond_0
    return-void

    .line 2629
    :cond_1
    sub-int v8, p2, p1

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/lit8 v0, v8, 0x1

    .line 2632
    .local v0, "count":I
    const/4 v8, 0x3

    if-ne p3, v8, :cond_2

    .line 2633
    neg-int v0, v0

    .line 2635
    :cond_2
    iget-object v8, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripItemMaps:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 2637
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2638
    .local v7, "updatingItems":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;>;"
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;

    .line 2640
    .local v3, "item":Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;
    invoke-virtual {v3}, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;->getPosition()I

    move-result v6

    .line 2641
    .local v6, "position":I
    if-lt v6, p2, :cond_4

    .line 2642
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2644
    .end local v3    # "item":Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;
    .end local v6    # "position":I
    :cond_5
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;

    .line 2646
    .restart local v3    # "item":Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;
    invoke-virtual {v3}, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;->getPosition()I

    move-result v8

    add-int v5, v8, v0

    .line 2647
    .local v5, "newPosition":I
    invoke-virtual {v3, v5}, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;->setPosition(I)V

    goto :goto_1
.end method

.method private updateSaveButtonVisibility()V
    .locals 3

    .prologue
    const v2, 0x7f06009b

    .line 2655
    sget-object v0, Lcom/oneplus/gallery2/BurstViewerFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/BurstViewerFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_Toolbar:Landroid/widget/Toolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v0, :cond_0

    .line 2658
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_SelectedMediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v1}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 2660
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_Toolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2667
    :cond_0
    :goto_0
    return-void

    .line 2664
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_Toolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private updateToolbarMargins()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 2673
    iget-object v6, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_HeaderContainer:Landroid/view/View;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FooterContainer:Landroid/view/View;

    if-nez v6, :cond_1

    .line 2705
    :cond_0
    :goto_0
    return-void

    .line 2675
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/gallery2/BurstViewerFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v1

    .line 2676
    .local v1, "galleryActivity":Lcom/oneplus/gallery2/GalleryActivity;
    if-eqz v1, :cond_0

    .line 2679
    invoke-virtual {p0}, Lcom/oneplus/gallery2/BurstViewerFragment;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v6

    sget-object v7, Lcom/oneplus/gallery2/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v6, v7}, Lcom/oneplus/gallery2/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 2680
    .local v3, "isNavbarVisible":Z
    iget-object v6, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->TAG:Ljava/lang/String;

    const-string v7, "updateToolbarMargins() - Navigation bar visible: "

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2683
    sget-object v6, Lcom/oneplus/gallery2/GalleryActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v6}, Lcom/oneplus/gallery2/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/base/ScreenSize;

    .line 2684
    .local v5, "screenSize":Lcom/oneplus/base/ScreenSize;
    iget-object v6, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_HeaderContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2685
    .local v2, "headerParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v6, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FooterContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2686
    .local v0, "footerParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v3, :cond_3

    .line 2688
    invoke-virtual {v5}, Lcom/oneplus/base/ScreenSize;->getNavigationBarSize()I

    move-result v4

    .line 2689
    .local v4, "naviHeight":I
    invoke-virtual {v5}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Lcom/oneplus/base/ScreenSize;->getHeight()I

    move-result v7

    if-le v6, v7, :cond_2

    .line 2691
    iget v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v8, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v2, v6, v7, v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 2692
    iget v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v6, v7, v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 2696
    :cond_2
    iget v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v8, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v2, v6, v7, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 2697
    iget v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/lit8 v8, v4, 0x0

    invoke-virtual {v0, v6, v7, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 2702
    .end local v4    # "naviHeight":I
    :cond_3
    iget v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v8, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v2, v6, v7, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 2703
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

    .line 2711
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_HeaderContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FooterContainer:Landroid/view/View;

    if-nez v0, :cond_1

    .line 2848
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2714
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->TAG:Ljava/lang/String;

    const-string v1, "updateToolbarVisibility() - Visible: "

    iget-boolean v2, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_IsToolbarVisible:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2717
    sget-object v0, Lcom/oneplus/gallery2/BurstViewerFragment;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/BurstViewerFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/base/BaseFragment$State;->RUNNING:Lcom/oneplus/base/BaseFragment$State;

    if-ne v0, v1, :cond_2

    .line 2718
    iget-boolean v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_IsToolbarVisible:Z

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/BurstViewerFragment;->setSystemUiVisibility(Z)V

    .line 2721
    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_IsToolbarVisible:Z

    if-eqz v0, :cond_4

    .line 2723
    if-eqz p1, :cond_3

    .line 2725
    sget-object v0, Lcom/oneplus/gallery2/BurstViewerFragment$25;->$SwitchMap$com$oneplus$gallery2$BurstViewerFragment$ViewVisibilityState:[I

    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_ToolbarVisibilityState:Lcom/oneplus/gallery2/BurstViewerFragment$ViewVisibilityState;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/BurstViewerFragment$ViewVisibilityState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2750
    :goto_1
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_HeaderContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/gallery2/BurstViewerFragment$21;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery2/BurstViewerFragment$21;-><init>(Lcom/oneplus/gallery2/BurstViewerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2760
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FooterContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/gallery2/BurstViewerFragment$22;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery2/BurstViewerFragment$22;-><init>(Lcom/oneplus/gallery2/BurstViewerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2770
    sget-object v0, Lcom/oneplus/gallery2/BurstViewerFragment$ViewVisibilityState;->IN_ANIMATING:Lcom/oneplus/gallery2/BurstViewerFragment$ViewVisibilityState;

    iput-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_ToolbarVisibilityState:Lcom/oneplus/gallery2/BurstViewerFragment$ViewVisibilityState;

    goto :goto_0

    .line 2729
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_HeaderContainer:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2730
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_HeaderContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2733
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FooterContainer:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2734
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FooterContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 2740
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_HeaderContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2741
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FooterContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_1

    .line 2775
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_HeaderContainer:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2776
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_HeaderContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 2779
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FooterContainer:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2780
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FooterContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 2783
    sget-object v0, Lcom/oneplus/gallery2/BurstViewerFragment$ViewVisibilityState;->VISIBLE:Lcom/oneplus/gallery2/BurstViewerFragment$ViewVisibilityState;

    iput-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_ToolbarVisibilityState:Lcom/oneplus/gallery2/BurstViewerFragment$ViewVisibilityState;

    goto/16 :goto_0

    .line 2789
    :cond_4
    if-eqz p1, :cond_5

    .line 2791
    sget-object v0, Lcom/oneplus/gallery2/BurstViewerFragment$25;->$SwitchMap$com$oneplus$gallery2$BurstViewerFragment$ViewVisibilityState:[I

    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_ToolbarVisibilityState:Lcom/oneplus/gallery2/BurstViewerFragment$ViewVisibilityState;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/BurstViewerFragment$ViewVisibilityState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 2813
    :goto_2
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_HeaderContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/gallery2/BurstViewerFragment$23;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery2/BurstViewerFragment$23;-><init>(Lcom/oneplus/gallery2/BurstViewerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2824
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FooterContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/gallery2/BurstViewerFragment$24;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery2/BurstViewerFragment$24;-><init>(Lcom/oneplus/gallery2/BurstViewerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2836
    sget-object v0, Lcom/oneplus/gallery2/BurstViewerFragment$ViewVisibilityState;->OUT_ANIMATING:Lcom/oneplus/gallery2/BurstViewerFragment$ViewVisibilityState;

    iput-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_ToolbarVisibilityState:Lcom/oneplus/gallery2/BurstViewerFragment$ViewVisibilityState;

    goto/16 :goto_0

    .line 2795
    :pswitch_3
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_HeaderContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 2798
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FooterContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 2803
    :pswitch_4
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_HeaderContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2804
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FooterContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_2

    .line 2841
    :cond_5
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_HeaderContainer:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2842
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FooterContainer:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2845
    sget-object v0, Lcom/oneplus/gallery2/BurstViewerFragment$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery2/BurstViewerFragment$ViewVisibilityState;

    iput-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_ToolbarVisibilityState:Lcom/oneplus/gallery2/BurstViewerFragment$ViewVisibilityState;

    goto/16 :goto_0

    .line 2725
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 2791
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
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
    .line 1296
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/gallery2/BurstViewerFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 1297
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    .line 1298
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/GalleryFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected onAttachToGallery(Lcom/oneplus/gallery2/Gallery;)V
    .locals 2
    .param p1, "gallery"    # Lcom/oneplus/gallery2/Gallery;

    .prologue
    .line 1323
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/GalleryFragment;->onAttachToGallery(Lcom/oneplus/gallery2/Gallery;)V

    .line 1327
    sget-object v0, Lcom/oneplus/gallery2/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_IsNavigationBarVisibleCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery2/Gallery;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1330
    invoke-static {}, Lcom/oneplus/gallery2/GalleryApplication;->current()Lcom/oneplus/gallery2/GalleryApplication;

    move-result-object v0

    const-class v1, Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/GalleryApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    iput-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    .line 1331
    return-void
.end method

.method protected onBackToInitialUIState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1339
    invoke-super {p0}, Lcom/oneplus/gallery2/GalleryFragment;->onBackToInitialUIState()V

    .line 1342
    sget-object v0, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/BurstViewerFragment;->setFilmstripState(Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;)V

    .line 1345
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/gallery2/BurstViewerFragment;->setToolbarVisibility(ZZ)V

    .line 1348
    sget-object v0, Lcom/oneplus/gallery2/BurstViewerFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/BurstViewerFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1349
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1355
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/GalleryFragment;->onCreate(Landroid/os/Bundle;)V

    .line 1358
    sget-object v0, Lcom/oneplus/gallery2/BurstViewerFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/BurstViewerFragment;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 1361
    sget-object v0, Lcom/oneplus/gallery2/BurstViewerFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_IsSelectionModeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/BurstViewerFragment;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1362
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1367
    iget-object v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->TAG:Ljava/lang/String;

    const-string v8, "onCreateView() - Fragment: "

    invoke-virtual {p0}, Lcom/oneplus/gallery2/BurstViewerFragment;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1370
    const v7, 0x7f03000d

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 1371
    .local v6, "view":Landroid/view/View;
    const v7, 0x7f060033

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/oneplus/widget/FilmstripView;

    iput-object v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripView:Lcom/oneplus/widget/FilmstripView;

    .line 1372
    iget-object v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripView:Lcom/oneplus/widget/FilmstripView;

    iget-object v8, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripAdapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v7, v8}, Lcom/oneplus/widget/FilmstripView;->setAdapter(Lcom/oneplus/widget/FilmstripView$Adapter;)V

    .line 1373
    iget-object v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripView:Lcom/oneplus/widget/FilmstripView;

    iget-object v8, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v7, v8}, Lcom/oneplus/widget/FilmstripView;->setScrollListener(Lcom/oneplus/widget/FilmstripView$ScrollListener;)V

    .line 1375
    invoke-static {}, Lcom/oneplus/gallery2/GalleryApplication;->current()Lcom/oneplus/gallery2/GalleryApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oneplus/gallery2/GalleryApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1378
    .local v4, "res":Landroid/content/res/Resources;
    const v7, 0x7f050064

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FooterItemWidthAndHeight:I

    .line 1379
    const v7, 0x7f05006a

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1381
    .local v1, "itemMargin":I
    const v7, 0x7f060037

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/oneplus/widget/FilmstripView;

    iput-object v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripViewForFooter:Lcom/oneplus/widget/FilmstripView;

    .line 1382
    iget-object v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripViewForFooter:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v7, v1}, Lcom/oneplus/widget/FilmstripView;->setItemMargin(I)V

    .line 1383
    iget-object v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripViewForFooter:Lcom/oneplus/widget/FilmstripView;

    iget-object v8, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripAdapterForFooter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v7, v8}, Lcom/oneplus/widget/FilmstripView;->setAdapter(Lcom/oneplus/widget/FilmstripView$Adapter;)V

    .line 1384
    iget-object v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripViewForFooter:Lcom/oneplus/widget/FilmstripView;

    iget-object v8, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripScrollListenerForFooter:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v7, v8}, Lcom/oneplus/widget/FilmstripView;->setScrollListener(Lcom/oneplus/widget/FilmstripView$ScrollListener;)V

    .line 1385
    iget-object v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripViewForFooter:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v7, v11}, Lcom/oneplus/widget/FilmstripView;->setScrollMode(I)V

    .line 1388
    iget-object v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v7, :cond_1

    .line 1390
    const/4 v3, -0x1

    .line 1391
    .local v3, "pos":I
    iget v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_CurrentMediaIndex:I

    if-ltz v7, :cond_3

    iget v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_CurrentMediaIndex:I

    iget-object v8, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v8}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 1393
    iget v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_CurrentMediaIndex:I

    .line 1399
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripView:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v7, v3, v10}, Lcom/oneplus/widget/FilmstripView;->setCurrentItem(IZ)V

    .line 1400
    iget-object v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripViewForFooter:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v7, v3, v10}, Lcom/oneplus/widget/FilmstripView;->setCurrentItem(IZ)V

    .line 1401
    invoke-direct {p0, v3, v11}, Lcom/oneplus/gallery2/BurstViewerFragment;->checkImageDecoding(IZ)V

    .line 1405
    .end local v3    # "pos":I
    :cond_1
    const v7, 0x7f060034

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_HeaderContainer:Landroid/view/View;

    .line 1408
    iget-object v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_HeaderContainer:Landroid/view/View;

    const v8, 0x7f060035

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Toolbar;

    iput-object v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_Toolbar:Landroid/widget/Toolbar;

    .line 1409
    iget-object v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_Toolbar:Landroid/widget/Toolbar;

    invoke-virtual {v7, v10}, Landroid/widget/Toolbar;->setBackgroundColor(I)V

    .line 1410
    iget-object v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_Toolbar:Landroid/widget/Toolbar;

    const v8, 0x7f02004e

    invoke-virtual {v7, v8}, Landroid/widget/Toolbar;->setNavigationIcon(I)V

    .line 1411
    iget-object v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_Toolbar:Landroid/widget/Toolbar;

    const/high16 v8, 0x7f0b0000

    invoke-virtual {v7, v8}, Landroid/widget/Toolbar;->inflateMenu(I)V

    .line 1412
    iget-object v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_Toolbar:Landroid/widget/Toolbar;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/BurstViewerFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v8

    const v9, 0x7f0a0023

    invoke-virtual {v7, v8, v9}, Landroid/widget/Toolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    .line 1413
    iget-object v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_Toolbar:Landroid/widget/Toolbar;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/BurstViewerFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v8

    const-string v9, "tool_bar_text"

    invoke-virtual {v8, v9}, Lcom/oneplus/gallery2/GalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/Toolbar;->setTitleTextColor(I)V

    .line 1414
    iget-object v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_Toolbar:Landroid/widget/Toolbar;

    invoke-virtual {v7}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v7

    const v8, 0x7f06009b

    invoke-interface {v7, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    const v8, 0x7f09000e

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1415
    iget-object v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_Toolbar:Landroid/widget/Toolbar;

    invoke-virtual {v7}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v7

    const v8, 0x7f06009c

    invoke-interface {v7, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    const v8, 0x7f0200a4

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1418
    sget-object v7, Lcom/oneplus/gallery2/BurstViewerFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/gallery2/BurstViewerFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-direct {p0, v7}, Lcom/oneplus/gallery2/BurstViewerFragment;->onSelectionModeChanged(Z)V

    .line 1420
    iget-object v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_Toolbar:Landroid/widget/Toolbar;

    new-instance v8, Lcom/oneplus/gallery2/BurstViewerFragment$18;

    invoke-direct {v8, p0}, Lcom/oneplus/gallery2/BurstViewerFragment$18;-><init>(Lcom/oneplus/gallery2/BurstViewerFragment;)V

    invoke-virtual {v7, v8}, Landroid/widget/Toolbar;->setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V

    .line 1442
    iget-object v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_Toolbar:Landroid/widget/Toolbar;

    new-instance v8, Lcom/oneplus/gallery2/BurstViewerFragment$19;

    invoke-direct {v8, p0}, Lcom/oneplus/gallery2/BurstViewerFragment$19;-><init>(Lcom/oneplus/gallery2/BurstViewerFragment;)V

    invoke-virtual {v7, v8}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1452
    invoke-virtual {p0}, Lcom/oneplus/gallery2/BurstViewerFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v0

    .line 1453
    .local v0, "galleryActivity":Lcom/oneplus/gallery2/GalleryActivity;
    sget-object v7, Lcom/oneplus/gallery2/GalleryActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v7}, Lcom/oneplus/gallery2/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/base/ScreenSize;

    .line 1454
    .local v5, "screenSize":Lcom/oneplus/base/ScreenSize;
    iget-object v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_Toolbar:Landroid/widget/Toolbar;

    invoke-virtual {v7}, Landroid/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1455
    .local v2, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v5}, Lcom/oneplus/base/ScreenSize;->getStatusBarSize()I

    move-result v7

    invoke-virtual {v2, v10, v7, v10, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1458
    const v7, 0x7f050065

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FooterbarHeight:I

    .line 1461
    const v7, 0x7f060036

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FooterContainer:Landroid/view/View;

    .line 1464
    iget-boolean v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_IsToolbarVisible:Z

    if-eqz v7, :cond_2

    .line 1465
    invoke-direct {p0, v11, v10}, Lcom/oneplus/gallery2/BurstViewerFragment;->setToolbarVisibility(ZZ)V

    .line 1468
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/gallery2/BurstViewerFragment;->updateToolbarMargins()V

    .line 1471
    sget-object v7, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;

    invoke-direct {p0, v7}, Lcom/oneplus/gallery2/BurstViewerFragment;->setFilmstripState(Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripState;)V

    .line 1473
    return-object v6

    .line 1395
    .end local v0    # "galleryActivity":Lcom/oneplus/gallery2/GalleryActivity;
    .end local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v5    # "screenSize":Lcom/oneplus/base/ScreenSize;
    .restart local v3    # "pos":I
    :cond_3
    iget-object v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_CoverMedia:Lcom/oneplus/gallery2/media/GroupedMedia;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_CoverMedia:Lcom/oneplus/gallery2/media/GroupedMedia;

    invoke-interface {v7}, Lcom/oneplus/gallery2/media/GroupedMedia;->getCover()Lcom/oneplus/gallery2/media/Media;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1397
    iget-object v7, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    iget-object v8, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_CoverMedia:Lcom/oneplus/gallery2/media/GroupedMedia;

    invoke-interface {v8}, Lcom/oneplus/gallery2/media/GroupedMedia;->getCover()Lcom/oneplus/gallery2/media/Media;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/oneplus/gallery2/media/MediaList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1510
    invoke-virtual {p0}, Lcom/oneplus/gallery2/BurstViewerFragment;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v0

    .line 1511
    .local v0, "gallery":Lcom/oneplus/gallery2/Gallery;
    if-eqz v0, :cond_0

    .line 1514
    sget-object v3, Lcom/oneplus/gallery2/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    iget-object v4, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_IsNavigationBarVisibleCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v3, v4}, Lcom/oneplus/gallery2/Gallery;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1516
    :cond_0
    sget-object v3, Lcom/oneplus/gallery2/BurstViewerFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    iget-object v4, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_IsSelectionModeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/gallery2/BurstViewerFragment;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1517
    iput-object v5, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaChangeCallbackTarget:Lcom/oneplus/gallery2/media/MediaSource;

    .line 1518
    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

    .line 1520
    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaSizeCallbackHandles:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/base/Handle;

    .line 1522
    .local v1, "handle":Lcom/oneplus/base/Handle;
    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 1524
    .end local v1    # "handle":Lcom/oneplus/base/Handle;
    :cond_1
    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaSizeCallbackHandles:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 1526
    iput-object v5, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_CoverMediaSource:Lcom/oneplus/gallery2/media/MediaSource;

    .line 1527
    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_CoverMediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_CoverMediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

    .line 1530
    invoke-super {p0}, Lcom/oneplus/gallery2/GalleryFragment;->onDestroy()V

    .line 1531
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1537
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroyView()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1540
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripView:Lcom/oneplus/widget/FilmstripView;

    if-eqz v0, :cond_0

    .line 1542
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripView:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v0, v2}, Lcom/oneplus/widget/FilmstripView;->setAdapter(Lcom/oneplus/widget/FilmstripView$Adapter;)V

    .line 1543
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripView:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v0, v2}, Lcom/oneplus/widget/FilmstripView;->setScrollListener(Lcom/oneplus/widget/FilmstripView$ScrollListener;)V

    .line 1544
    iput-object v2, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripView:Lcom/oneplus/widget/FilmstripView;

    .line 1548
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripViewForFooter:Lcom/oneplus/widget/FilmstripView;

    if-eqz v0, :cond_1

    .line 1550
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripViewForFooter:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v0, v2}, Lcom/oneplus/widget/FilmstripView;->setAdapter(Lcom/oneplus/widget/FilmstripView$Adapter;)V

    .line 1551
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripViewForFooter:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v0, v2}, Lcom/oneplus/widget/FilmstripView;->setScrollListener(Lcom/oneplus/widget/FilmstripView$ScrollListener;)V

    .line 1552
    iput-object v2, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripViewForFooter:Lcom/oneplus/widget/FilmstripView;

    .line 1557
    :cond_1
    invoke-super {p0}, Lcom/oneplus/gallery2/GalleryFragment;->onDestroyView()V

    .line 1558
    return-void
.end method

.method protected onNavigationBarVisibilityChanged(Z)V
    .locals 5
    .param p1, "visible"    # Z

    .prologue
    .line 1781
    invoke-direct {p0}, Lcom/oneplus/gallery2/BurstViewerFragment;->updateToolbarMargins()V

    .line 1784
    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripItemMaps:Ljava/util/Map;

    sget-object v4, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;->CENTER:Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1785
    .local v0, "centerMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;>;"
    if-eqz v0, :cond_1

    .line 1787
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;

    .line 1789
    .local v2, "item":Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;
    instance-of v3, v2, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;

    if-eqz v3, :cond_0

    .line 1790
    check-cast v2, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;

    .end local v2    # "item":Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;
    invoke-virtual {v2}, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->updateCheckBoxMarginAndVisibility()V

    goto :goto_0

    .line 1793
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1800
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1803
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_ThumbManagerActivateHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_ThumbManagerActivateHandle:Lcom/oneplus/base/Handle;

    .line 1806
    invoke-super {p0}, Lcom/oneplus/gallery2/GalleryFragment;->onPause()V

    .line 1807
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1953
    invoke-super {p0}, Lcom/oneplus/gallery2/GalleryFragment;->onResume()V

    .line 1955
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1958
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_ThumbManagerActivateHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    if-eqz v0, :cond_0

    .line 1959
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_ThumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    invoke-interface {v0, v2}, Lcom/oneplus/gallery2/media/ThumbnailImageManager;->activate(I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_ThumbManagerActivateHandle:Lcom/oneplus/base/Handle;

    .line 1965
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_IsToolbarVisible:Z

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/BurstViewerFragment;->setSystemUiVisibility(Z)V

    .line 1968
    iput-boolean v2, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_IsInstanceStateSaved:Z

    .line 1969
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1974
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->TAG:Ljava/lang/String;

    const-string v1, "onSaveInstanceState()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1975
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_IsInstanceStateSaved:Z

    .line 1976
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/GalleryFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1977
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 2200
    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->TAG:Ljava/lang/String;

    const-string v4, "onStart()"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2203
    invoke-super {p0}, Lcom/oneplus/gallery2/GalleryFragment;->onStart()V

    .line 2206
    iget v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_CurrentMediaIndex:I

    if-ltz v3, :cond_1

    .line 2208
    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_FilmstripItemMaps:Ljava/util/Map;

    sget-object v4, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;->CENTER:Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 2209
    .local v1, "centerMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;>;"
    if-eqz v1, :cond_1

    .line 2211
    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_CurrentMedia:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;

    .line 2212
    .local v2, "item":Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;
    instance-of v3, v2, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;

    if-eqz v3, :cond_2

    check-cast v2, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;

    .end local v2    # "item":Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;
    move-object v0, v2

    .line 2213
    .local v0, "centerItem":Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;
    :goto_0
    if-eqz v0, :cond_1

    .line 2215
    iget v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_CurrentMediaIndex:I

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/oneplus/gallery2/BurstViewerFragment;->checkImageDecoding(IZ)V

    .line 2217
    invoke-virtual {v0}, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->getImageDecodeState()Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;

    move-result-object v3

    sget-object v4, Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;->LARGE_IMAGE_DECODED:Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;

    if-eq v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->getImageBoundsType()Lcom/oneplus/widget/ScaleImageView$BoundsType;

    move-result-object v3

    sget-object v4, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    if-eq v3, v4, :cond_1

    .line 2219
    :cond_0
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/BurstViewerFragment;->decodeHighResolutionImage(Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;)V

    .line 2223
    .end local v0    # "centerItem":Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;
    .end local v1    # "centerMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;>;"
    :cond_1
    return-void

    .line 2212
    .restart local v1    # "centerMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;>;"
    .restart local v2    # "item":Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2229
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->TAG:Ljava/lang/String;

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2232
    invoke-direct {p0}, Lcom/oneplus/gallery2/BurstViewerFragment;->cancelDecodingImages()V

    .line 2235
    iget-boolean v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->m_IsInstanceStateSaved:Z

    if-nez v0, :cond_0

    .line 2238
    invoke-direct {p0, v2, v2}, Lcom/oneplus/gallery2/BurstViewerFragment;->setToolbarVisibility(ZZ)V

    .line 2241
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/BurstViewerFragment;->setSystemUiVisibility(Z)V

    .line 2244
    invoke-direct {p0}, Lcom/oneplus/gallery2/BurstViewerFragment;->resetFilmstripState()V

    .line 2250
    :goto_0
    invoke-super {p0}, Lcom/oneplus/gallery2/GalleryFragment;->onStop()V

    .line 2251
    return-void

    .line 2247
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment;->TAG:Ljava/lang/String;

    const-string v1, "onStop() - Instance state saved, prevent resetting state"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

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
    .line 2360
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v0, Lcom/oneplus/gallery2/BurstViewerFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 2361
    check-cast p2, Lcom/oneplus/gallery2/media/MediaList;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/gallery2/BurstViewerFragment;->setMediaListProp(Lcom/oneplus/gallery2/media/MediaList;)Z

    move-result v0

    .line 2366
    :goto_0
    return v0

    .line 2362
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_0
    sget-object v0, Lcom/oneplus/gallery2/BurstViewerFragment;->PROP_COVER_MEDIA:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1

    move-object v0, p2

    .line 2364
    check-cast v0, Lcom/oneplus/gallery2/media/GroupedMedia;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/BurstViewerFragment;->setCoverMedia(Lcom/oneplus/gallery2/media/GroupedMedia;)V

    .line 2366
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery2/GalleryFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
