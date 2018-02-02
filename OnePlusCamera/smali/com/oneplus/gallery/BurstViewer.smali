.class public final Lcom/oneplus/gallery/BurstViewer;
.super Lcom/oneplus/camera/UIComponent;
.source "BurstViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/BurstViewer$10;,
        Lcom/oneplus/gallery/BurstViewer$11;,
        Lcom/oneplus/gallery/BurstViewer$1;,
        Lcom/oneplus/gallery/BurstViewer$2;,
        Lcom/oneplus/gallery/BurstViewer$3;,
        Lcom/oneplus/gallery/BurstViewer$4;,
        Lcom/oneplus/gallery/BurstViewer$5;,
        Lcom/oneplus/gallery/BurstViewer$6;,
        Lcom/oneplus/gallery/BurstViewer$7;,
        Lcom/oneplus/gallery/BurstViewer$8;,
        Lcom/oneplus/gallery/BurstViewer$9;,
        Lcom/oneplus/gallery/BurstViewer$SubMediaItem;,
        Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;,
        Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;,
        Lcom/oneplus/gallery/BurstViewer$UIState;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-gallery-BurstViewer$UIStateSwitchesValues:[I = null

.field private static final DURATION_CLOSE_ANIMATION:J = 0x12cL

.field private static final DURATION_CONTROLS_ANIMATION:J = 0x96L

.field private static final DURATION_OPEN_ANIMATION:J = 0x12cL

.field private static final EMPTY_THUMB_COLOR:I

.field public static final FLAG_NO_ANIMATION:I = 0x1

.field public static final PROP_IS_SHARING_MEDIA:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/gallery/BurstViewer$UIState;",
            ">;"
        }
    .end annotation
.end field

.field private static final THRESHOLD_FLING_TO_NEIGHBOR_ITEM:F = 5000.0f


# instance fields
.field private m_Container:Landroid/view/View;

.field private m_DeleteButton:Landroid/view/View;

.field private m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

.field private final m_FilmstripAdapter:Lcom/oneplus/widget/FilmstripView$Adapter;

.field private final m_FreeSubMediaItems:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/oneplus/gallery/BurstViewer$SubMediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private final m_FreeSubMediaThumbItems:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;",
            ">;"
        }
    .end annotation
.end field

.field private final m_HQThumbDecodingCallback:Lcom/oneplus/media/BitmapPool$Callback;

.field private m_IsPreDecodeThumbScheduled:Z

.field private m_IsToolBarVisible:Z

.field private final m_KeyEventHandler:Lcom/oneplus/camera/KeyEventHandler;

.field private m_KeyEventHandlerHandle:Lcom/oneplus/base/Handle;

.field private final m_LQThumbDecodingCallback:Lcom/oneplus/media/BitmapPool$Callback;

.field private m_Media:Lcom/oneplus/gallery2/media/GroupedMedia;

.field private final m_MediaChangeCallback:Lcom/oneplus/gallery2/media/MediaChangeCallback;

.field private m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

.field private final m_MediaSizeCallback:Lcom/oneplus/gallery2/media/Media$SizeCallback;

.field private final m_MediaSizeObtainHandles:Ljava/util/Map;
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

.field private m_OriginalBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

.field private final m_PreDecodeThumbRunnable:Ljava/lang/Runnable;

.field private m_RotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

.field private m_SaveButton:Landroid/view/View;

.field private final m_SelectedMedia:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;"
        }
    .end annotation
.end field

.field private final m_SubMediaAddedHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/gallery2/ListChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final m_SubMediaItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/gallery/BurstViewer$SubMediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

.field private final m_SubMediaRemovedHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/gallery2/ListChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final m_SubMediaRemovingHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/gallery2/ListChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private m_SubMediaThumbItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_ThumbBar:Landroid/view/View;

.field private m_ThumbBarHeight:I

.field private m_ThumbFilmstrip:Lcom/oneplus/widget/FilmstripView;

.field private final m_ThumbFilmstripAdapter:Lcom/oneplus/widget/FilmstripView$Adapter;

.field private final m_ThumbInfoTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            "Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_ThumbItemWidth:I

.field private m_ToolBar:Landroid/widget/Toolbar;

.field private m_ToolBarBottom:I

.field private m_ToolBarContainer:Landroid/view/View;

.field private m_ToolBarHeight:I

.field private m_ToolBarTop:I


# direct methods
.method static synthetic -get0(Lcom/oneplus/gallery/BurstViewer;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/gallery/BurstViewer;)Lcom/oneplus/widget/FilmstripView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/gallery/BurstViewer;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_SelectedMedia:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get3(Lcom/oneplus/gallery/BurstViewer;)Lcom/oneplus/gallery2/media/MediaList;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    return-object v0
.end method

.method static synthetic -get4(Lcom/oneplus/gallery/BurstViewer;)Lcom/oneplus/widget/FilmstripView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_ThumbFilmstrip:Lcom/oneplus/widget/FilmstripView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/oneplus/gallery/BurstViewer;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_ThumbItemWidth:I

    return v0
.end method

.method private static synthetic -getcom-oneplus-gallery-BurstViewer$UIStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/gallery/BurstViewer;->-com-oneplus-gallery-BurstViewer$UIStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/gallery/BurstViewer;->-com-oneplus-gallery-BurstViewer$UIStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/gallery/BurstViewer$UIState;->values()[Lcom/oneplus/gallery/BurstViewer$UIState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/gallery/BurstViewer$UIState;->CLOSED:Lcom/oneplus/gallery/BurstViewer$UIState;

    invoke-virtual {v1}, Lcom/oneplus/gallery/BurstViewer$UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/gallery/BurstViewer$UIState;->CLOSING:Lcom/oneplus/gallery/BurstViewer$UIState;

    invoke-virtual {v1}, Lcom/oneplus/gallery/BurstViewer$UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/gallery/BurstViewer$UIState;->OPENED:Lcom/oneplus/gallery/BurstViewer$UIState;

    invoke-virtual {v1}, Lcom/oneplus/gallery/BurstViewer$UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/gallery/BurstViewer$UIState;->OPENING:Lcom/oneplus/gallery/BurstViewer$UIState;

    invoke-virtual {v1}, Lcom/oneplus/gallery/BurstViewer$UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/gallery/BurstViewer;->-com-oneplus-gallery-BurstViewer$UIStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/oneplus/gallery/BurstViewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/gallery/BurstViewer;->m_IsPreDecodeThumbScheduled:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/gallery/BurstViewer;Lcom/oneplus/gallery/BurstViewer$SubMediaItem;FF)Z
    .locals 1
    .param p1, "item"    # Lcom/oneplus/gallery/BurstViewer$SubMediaItem;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery/BurstViewer;->onImageViewFling(Lcom/oneplus/gallery/BurstViewer$SubMediaItem;FF)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/gallery/BurstViewer;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Lcom/oneplus/base/PropertyKey;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery/BurstViewer;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/oneplus/gallery/BurstViewer;Lcom/oneplus/gallery2/media/Media;II)V
    .locals 0
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery/BurstViewer;->onMediaSizeObtained(Lcom/oneplus/gallery2/media/Media;II)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/oneplus/gallery/BurstViewer;Lcom/oneplus/gallery2/media/Media;I)V
    .locals 0
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "flags"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/BurstViewer;->onMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/oneplus/gallery/BurstViewer;ILandroid/view/ViewGroup;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/BurstViewer;->onPrepareFilmstripItemView(ILandroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/oneplus/gallery/BurstViewer;ILandroid/view/ViewGroup;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/BurstViewer;->onPrepareThumbFilmstripItemView(ILandroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/oneplus/gallery/BurstViewer;ILandroid/view/ViewGroup;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/BurstViewer;->onReleaseFilmstripItemView(ILandroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/oneplus/gallery/BurstViewer;ILandroid/view/ViewGroup;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/BurstViewer;->onReleaseThumbFilmstripItemView(ILandroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/oneplus/gallery/BurstViewer;Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 0
    .param p1, "e"    # Lcom/oneplus/gallery2/ListChangeEventArgs;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/BurstViewer;->onSubMediaAdded(Lcom/oneplus/gallery2/ListChangeEventArgs;)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/oneplus/gallery/BurstViewer;Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 0
    .param p1, "e"    # Lcom/oneplus/gallery2/ListChangeEventArgs;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/BurstViewer;->onSubMediaRemoved(Lcom/oneplus/gallery2/ListChangeEventArgs;)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/oneplus/gallery/BurstViewer;Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 0
    .param p1, "e"    # Lcom/oneplus/gallery2/ListChangeEventArgs;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/BurstViewer;->onSubMediaRemoving(Lcom/oneplus/gallery2/ListChangeEventArgs;)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/oneplus/gallery/BurstViewer;I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/BurstViewer;->onThumbFilmstripCurrentItemChanged(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/gallery/BurstViewer;ILcom/oneplus/camera/ui/KeyEventArgs;)Lcom/oneplus/camera/KeyEventHandler$KeyResult;
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Lcom/oneplus/camera/ui/KeyEventArgs;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/BurstViewer;->onKeyUp(ILcom/oneplus/camera/ui/KeyEventArgs;)Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap20(Lcom/oneplus/gallery/BurstViewer;I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/BurstViewer;->onThumbFilmstripItemClicked(I)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/oneplus/gallery/BurstViewer;Lcom/oneplus/base/Handle;Landroid/net/Uri;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "thumb"    # Landroid/graphics/Bitmap;
    .param p4, "isLowQuality"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/gallery/BurstViewer;->onThumbnailImageDecoded(Lcom/oneplus/base/Handle;Landroid/net/Uri;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/oneplus/gallery/BurstViewer;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/gallery/BurstViewer;->preDecodeThumbnailImages()V

    return-void
.end method

.method static synthetic -wrap23(Lcom/oneplus/gallery/BurstViewer;ZZ)V
    .locals 0
    .param p1, "closeViewerWhenCompleted"    # Z
    .param p2, "closeViewerWhenCancelled"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/BurstViewer;->saveSelectedMedia(ZZ)V

    return-void
.end method

.method static synthetic -wrap24(Lcom/oneplus/gallery/BurstViewer;Lcom/oneplus/gallery2/media/Media;)V
    .locals 0
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/BurstViewer;->toggleMediaSelection(Lcom/oneplus/gallery2/media/Media;)V

    return-void
.end method

.method static synthetic -wrap25(Lcom/oneplus/gallery/BurstViewer;Lcom/oneplus/base/Rotation;)V
    .locals 0
    .param p1, "rotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/BurstViewer;->updateUIRotation(Lcom/oneplus/base/Rotation;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/gallery/BurstViewer;Ljava/util/Collection;Z)V
    .locals 0
    .param p1, "media"    # Ljava/util/Collection;
    .param p2, "closeViewerWhenCompleted"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/BurstViewer;->deleteMedia(Ljava/util/Collection;Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/oneplus/gallery/BurstViewer;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/gallery/BurstViewer;->deleteSelectedMedia()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/oneplus/gallery/BurstViewer;Z)V
    .locals 0
    .param p1, "saveSelectMedia"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/BurstViewer;->onBackPressed(Z)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/oneplus/gallery/BurstViewer;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/gallery/BurstViewer;->onClosed()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/oneplus/gallery/BurstViewer;I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/BurstViewer;->onFilmstripCurrentItemChanged(I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/oneplus/gallery/BurstViewer;Lcom/oneplus/gallery/BurstViewer$SubMediaItem;Lcom/oneplus/widget/ScaleImageView$BoundsType;Lcom/oneplus/widget/ScaleImageView$BoundsType;)V
    .locals 0
    .param p1, "item"    # Lcom/oneplus/gallery/BurstViewer$SubMediaItem;
    .param p2, "oldType"    # Lcom/oneplus/widget/ScaleImageView$BoundsType;
    .param p3, "newType"    # Lcom/oneplus/widget/ScaleImageView$BoundsType;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery/BurstViewer;->onImageViewBoundsTypeChanged(Lcom/oneplus/gallery/BurstViewer$SubMediaItem;Lcom/oneplus/widget/ScaleImageView$BoundsType;Lcom/oneplus/widget/ScaleImageView$BoundsType;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/oneplus/gallery/BurstViewer;Lcom/oneplus/gallery2/media/Media;)V
    .locals 0
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/BurstViewer;->onMediaDeleted(Lcom/oneplus/gallery2/media/Media;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x50

    .line 78
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "UIState"

    const-class v2, Lcom/oneplus/gallery/BurstViewer$UIState;

    const-class v3, Lcom/oneplus/gallery/BurstViewer;

    sget-object v4, Lcom/oneplus/gallery/BurstViewer$UIState;->CLOSED:Lcom/oneplus/gallery/BurstViewer$UIState;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/BurstViewer;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    .line 82
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsSharingMedia"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery/BurstViewer;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/BurstViewer;->PROP_IS_SHARING_MEDIA:Lcom/oneplus/base/PropertyKey;

    .line 113
    const/16 v0, 0xff

    invoke-static {v0, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/oneplus/gallery/BurstViewer;->EMPTY_THUMB_COLOR:I

    .line 67
    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    const/4 v1, 0x1

    .line 400
    const-string/jumbo v0, "Burst viewer"

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 121
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_FreeSubMediaItems:Ljava/util/Queue;

    .line 122
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_FreeSubMediaThumbItems:Ljava/util/Queue;

    .line 123
    iput-boolean v1, p0, Lcom/oneplus/gallery/BurstViewer;->m_IsToolBarVisible:Z

    .line 125
    new-instance v0, Lcom/oneplus/gallery/BurstViewer$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/BurstViewer$1;-><init>(Lcom/oneplus/gallery/BurstViewer;)V

    iput-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_KeyEventHandler:Lcom/oneplus/camera/KeyEventHandler;

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_MediaSizeObtainHandles:Ljava/util/Map;

    .line 144
    new-instance v0, Lcom/oneplus/gallery/BurstViewer$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/BurstViewer$2;-><init>(Lcom/oneplus/gallery/BurstViewer;)V

    iput-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_PreDecodeThumbRunnable:Ljava/lang/Runnable;

    .line 155
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_SelectedMedia:Ljava/util/Set;

    .line 156
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaItems:Ljava/util/Set;

    .line 158
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaThumbItems:Ljava/util/Set;

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_ThumbInfoTable:Ljava/util/Map;

    .line 172
    new-instance v0, Lcom/oneplus/gallery/BurstViewer$3;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/BurstViewer$3;-><init>(Lcom/oneplus/gallery/BurstViewer;)V

    iput-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_HQThumbDecodingCallback:Lcom/oneplus/media/BitmapPool$Callback;

    .line 180
    new-instance v0, Lcom/oneplus/gallery/BurstViewer$4;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/BurstViewer$4;-><init>(Lcom/oneplus/gallery/BurstViewer;)V

    iput-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_LQThumbDecodingCallback:Lcom/oneplus/media/BitmapPool$Callback;

    .line 188
    new-instance v0, Lcom/oneplus/gallery/BurstViewer$5;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/BurstViewer$5;-><init>(Lcom/oneplus/gallery/BurstViewer;)V

    iput-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_MediaChangeCallback:Lcom/oneplus/gallery2/media/MediaChangeCallback;

    .line 202
    new-instance v0, Lcom/oneplus/gallery/BurstViewer$6;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/BurstViewer$6;-><init>(Lcom/oneplus/gallery/BurstViewer;)V

    iput-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_MediaSizeCallback:Lcom/oneplus/gallery2/media/Media$SizeCallback;

    .line 213
    new-instance v0, Lcom/oneplus/gallery/BurstViewer$7;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/BurstViewer$7;-><init>(Lcom/oneplus/gallery/BurstViewer;)V

    iput-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaAddedHandler:Lcom/oneplus/base/EventHandler;

    .line 221
    new-instance v0, Lcom/oneplus/gallery/BurstViewer$8;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/BurstViewer$8;-><init>(Lcom/oneplus/gallery/BurstViewer;)V

    iput-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaRemovedHandler:Lcom/oneplus/base/EventHandler;

    .line 229
    new-instance v0, Lcom/oneplus/gallery/BurstViewer$9;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/BurstViewer$9;-><init>(Lcom/oneplus/gallery/BurstViewer;)V

    iput-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaRemovingHandler:Lcom/oneplus/base/EventHandler;

    .line 240
    new-instance v0, Lcom/oneplus/gallery/BurstViewer$10;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/BurstViewer$10;-><init>(Lcom/oneplus/gallery/BurstViewer;)V

    iput-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_FilmstripAdapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    .line 259
    new-instance v0, Lcom/oneplus/gallery/BurstViewer$11;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/BurstViewer$11;-><init>(Lcom/oneplus/gallery/BurstViewer;)V

    iput-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_ThumbFilmstripAdapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    .line 401
    sget-object v0, Lcom/oneplus/gallery/BurstViewer;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/BurstViewer;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 398
    return-void
.end method

.method private attachToMedia(Lcom/oneplus/gallery2/media/GroupedMedia;)V
    .locals 3
    .param p1, "media"    # Lcom/oneplus/gallery2/media/GroupedMedia;

    .prologue
    const/4 v2, 0x0

    .line 408
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_Media:Lcom/oneplus/gallery2/media/GroupedMedia;

    if-ne v0, p1, :cond_0

    .line 409
    return-void

    .line 410
    :cond_0
    iput-object p1, p0, Lcom/oneplus/gallery/BurstViewer;->m_Media:Lcom/oneplus/gallery2/media/GroupedMedia;

    .line 411
    if-eqz p1, :cond_1

    .line 413
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/GroupedMedia;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/BurstViewer;->m_MediaChangeCallback:Lcom/oneplus/gallery2/media/MediaChangeCallback;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery2/media/MediaSource;->addMediaChangedCallback(Lcom/oneplus/gallery2/media/MediaChangeCallback;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

    .line 414
    const/4 v0, -0x1

    invoke-interface {p1, v2, v0}, Lcom/oneplus/gallery2/media/GroupedMedia;->openSubMediaList(Lcom/oneplus/gallery2/media/MediaComparator;I)Lcom/oneplus/gallery2/media/MediaList;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    .line 415
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 416
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaRemovedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 417
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaRemovingHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 406
    :cond_1
    return-void
.end method

.method private clearMediaSelection()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 425
    iget-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_SelectedMedia:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 427
    iget-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_SelectedMedia:Ljava/util/Set;

    iget-object v3, p0, Lcom/oneplus/gallery/BurstViewer;->m_SelectedMedia:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery2/media/Media;

    .line 428
    .local v0, "array":[Lcom/oneplus/gallery2/media/Media;
    array-length v2, v0

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 429
    aget-object v2, v0, v1

    invoke-direct {p0, v2, v4, v4}, Lcom/oneplus/gallery/BurstViewer;->setMediaSelection(Lcom/oneplus/gallery2/media/Media;ZZ)Z

    .line 428
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 430
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery/BurstViewer;->updateToolBar()V

    .line 423
    .end local v0    # "array":[Lcom/oneplus/gallery2/media/Media;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private clearOriginalImage(Lcom/oneplus/gallery/BurstViewer$SubMediaItem;Z)V
    .locals 9
    .param p1, "item"    # Lcom/oneplus/gallery/BurstViewer$SubMediaItem;
    .param p2, "showThumb"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 438
    iget-object v4, p0, Lcom/oneplus/gallery/BurstViewer;->m_OriginalBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    if-nez v4, :cond_0

    .line 439
    return-void

    .line 440
    :cond_0
    iget-object v0, p1, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->media:Lcom/oneplus/gallery2/media/Media;

    .line 441
    .local v0, "media":Lcom/oneplus/gallery2/media/Media;
    iget-object v4, p0, Lcom/oneplus/gallery/BurstViewer;->m_OriginalBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->isSameSource(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 443
    iget-object v4, p0, Lcom/oneplus/gallery/BurstViewer;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "clearOriginalImage() - Media : "

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 444
    if-eqz p2, :cond_5

    .line 446
    iget-object v4, p0, Lcom/oneplus/gallery/BurstViewer;->m_ThumbInfoTable:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;

    .line 447
    .local v3, "thumbInfo":Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;
    if-eqz v3, :cond_4

    .line 449
    invoke-virtual {p0}, Lcom/oneplus/gallery/BurstViewer;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 450
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v3}, Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;->getHighQualityThumbnailImage()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 451
    .local v2, "thumb":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_2

    .line 452
    iget-object v4, p1, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->mediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    invoke-virtual {v4, v1, v2}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 471
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "thumb":Landroid/graphics/Bitmap;
    .end local v3    # "thumbInfo":Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;
    :goto_0
    iget-object v4, p0, Lcom/oneplus/gallery/BurstViewer;->m_OriginalBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-virtual {v4}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->release()V

    .line 472
    iput-object v6, p0, Lcom/oneplus/gallery/BurstViewer;->m_OriginalBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    .line 436
    :cond_1
    return-void

    .line 455
    .restart local v1    # "res":Landroid/content/res/Resources;
    .restart local v2    # "thumb":Landroid/graphics/Bitmap;
    .restart local v3    # "thumbInfo":Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;
    :cond_2
    invoke-virtual {v3}, Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;->getLowQualityThumbnailImage()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 456
    if-eqz v2, :cond_3

    .line 457
    iget-object v4, p1, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->mediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    invoke-virtual {v4, v1, v2}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 460
    :goto_1
    invoke-direct {p0, v0, v7, v8, v7}, Lcom/oneplus/gallery/BurstViewer;->decodeThumbnailImage(Lcom/oneplus/gallery2/media/Media;ZZZ)V

    goto :goto_0

    .line 459
    :cond_3
    iget-object v4, p1, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->mediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    sget v5, Lcom/oneplus/gallery/BurstViewer;->EMPTY_THUMB_COLOR:I

    invoke-virtual {v4, v5}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setColor(I)V

    goto :goto_1

    .line 465
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "thumb":Landroid/graphics/Bitmap;
    :cond_4
    invoke-direct {p0, v0, v8, v8, v7}, Lcom/oneplus/gallery/BurstViewer;->decodeThumbnailImage(Lcom/oneplus/gallery2/media/Media;ZZZ)V

    .line 466
    iget-object v4, p1, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->mediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    sget v5, Lcom/oneplus/gallery/BurstViewer;->EMPTY_THUMB_COLOR:I

    invoke-virtual {v4, v5}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setColor(I)V

    goto :goto_0

    .line 470
    .end local v3    # "thumbInfo":Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;
    :cond_5
    iget-object v4, p1, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->mediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    invoke-virtual {v4, v6}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private clearThumbnailImages()V
    .locals 4

    .prologue
    .line 480
    iget-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_ThumbInfoTable:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "thumbInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;

    .line 482
    .local v0, "thumbInfo":Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;
    iget-object v2, v0, Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;->lowQualityThumbDecodeHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 483
    iget-object v2, v0, Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;->highQualityThumbDecodeHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 485
    .end local v0    # "thumbInfo":Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_ThumbInfoTable:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 486
    iget-boolean v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_IsPreDecodeThumbScheduled:Z

    if-eqz v2, :cond_1

    .line 488
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_IsPreDecodeThumbScheduled:Z

    .line 489
    invoke-virtual {p0}, Lcom/oneplus/gallery/BurstViewer;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/gallery/BurstViewer;->m_PreDecodeThumbRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 478
    :cond_1
    return-void
.end method

.method private decodeThumbnailImage(Lcom/oneplus/gallery2/media/Media;ZZZ)V
    .locals 19
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "createThumbInfo"    # Z
    .param p3, "urgent"    # Z
    .param p4, "lowQualityOnly"    # Z

    .prologue
    .line 537
    invoke-interface/range {p1 .. p1}, Lcom/oneplus/gallery2/media/Media;->peekSize()Landroid/util/Size;

    move-result-object v17

    .line 538
    .local v17, "size":Landroid/util/Size;
    if-nez v17, :cond_1

    .line 540
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/BurstViewer;->m_MediaSizeObtainHandles:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 541
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/BurstViewer;->m_MediaSizeObtainHandles:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/BurstViewer;->m_MediaSizeCallback:Lcom/oneplus/gallery2/media/Media$SizeCallback;

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lcom/oneplus/gallery2/media/Media;->getSize(Lcom/oneplus/gallery2/media/Media$SizeCallback;)Lcom/oneplus/base/Handle;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/BurstViewer;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "decodeThumbnailImage() - No size for "

    const-string/jumbo v4, ", decode later"

    move-object/from16 v0, p1

    invoke-static {v2, v3, v0, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 543
    return-void

    .line 547
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/BurstViewer;->m_ThumbInfoTable:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;

    .line 548
    .local v18, "thumbInfo":Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;
    if-nez v18, :cond_3

    .line 550
    if-nez p2, :cond_2

    .line 551
    return-void

    .line 552
    :cond_2
    new-instance v18, Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;

    .end local v18    # "thumbInfo":Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;-><init>(Lcom/oneplus/gallery2/media/Media;)V

    .line 553
    .restart local v18    # "thumbInfo":Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/BurstViewer;->m_ThumbInfoTable:Ljava/util/Map;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    :cond_3
    const/4 v8, 0x1

    .line 558
    .local v8, "decodingFlags":I
    if-eqz p3, :cond_4

    .line 559
    const/4 v8, 0x3

    .line 560
    :cond_4
    if-nez p4, :cond_5

    .line 562
    invoke-virtual/range {v18 .. v18}, Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;->getHighQualityThumbnailImage()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_5

    .line 563
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;->highQualityThumbDecodeHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 583
    :cond_5
    :goto_0
    invoke-virtual/range {v18 .. v18}, Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;->getLowQualityThumbnailImage()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_6

    .line 584
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;->lowQualityThumbDecodeHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 534
    :cond_6
    :goto_1
    return-void

    .line 565
    :cond_7
    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v13, v2

    .line 566
    .local v13, "mediaWidth":F
    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v12, v2

    .line 568
    .local v12, "mediaHeight":F
    const/4 v2, 0x0

    cmpl-float v2, v13, v2

    if-lez v2, :cond_8

    const/4 v2, 0x0

    cmpl-float v2, v12, v2

    if-lez v2, :cond_8

    .line 570
    const/high16 v2, 0x44f00000    # 1920.0f

    div-float/2addr v2, v13

    const/high16 v3, 0x44870000    # 1080.0f

    div-float/2addr v3, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .line 571
    .local v15, "ratio1":F
    const/high16 v2, 0x44870000    # 1080.0f

    div-float/2addr v2, v13

    const/high16 v3, 0x44f00000    # 1920.0f

    div-float/2addr v3, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v16

    .line 572
    .local v16, "ratio2":F
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(FF)F

    move-result v14

    .line 573
    .local v14, "ratio":F
    sget-object v2, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL:Lcom/oneplus/media/BitmapPool;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/BurstViewer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    mul-float v5, v13, v14

    float-to-int v6, v5

    mul-float v5, v12, v14

    float-to-int v7, v5

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/gallery/BurstViewer;->m_HQThumbDecodingCallback:Lcom/oneplus/media/BitmapPool$Callback;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/BurstViewer;->getHandler()Landroid/os/Handler;

    move-result-object v10

    const/4 v5, 0x1

    invoke-virtual/range {v2 .. v10}, Lcom/oneplus/media/BitmapPool;->decode(Landroid/content/Context;Landroid/net/Uri;IIIILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v11

    .line 577
    .end local v14    # "ratio":F
    .end local v15    # "ratio1":F
    .end local v16    # "ratio2":F
    .local v11, "handle":Lcom/oneplus/base/Handle;
    :goto_2
    invoke-static {v11}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 578
    move-object/from16 v0, v18

    iput-object v11, v0, Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;->highQualityThumbDecodeHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 576
    .end local v11    # "handle":Lcom/oneplus/base/Handle;
    :cond_8
    sget-object v2, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL:Lcom/oneplus/media/BitmapPool;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/BurstViewer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/gallery/BurstViewer;->m_HQThumbDecodingCallback:Lcom/oneplus/media/BitmapPool$Callback;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/BurstViewer;->getHandler()Landroid/os/Handler;

    move-result-object v10

    const/4 v5, 0x1

    const/16 v6, 0x780

    const/16 v7, 0x780

    invoke-virtual/range {v2 .. v10}, Lcom/oneplus/media/BitmapPool;->decode(Landroid/content/Context;Landroid/net/Uri;IIIILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v11

    .restart local v11    # "handle":Lcom/oneplus/base/Handle;
    goto :goto_2

    .line 586
    .end local v11    # "handle":Lcom/oneplus/base/Handle;
    .end local v12    # "mediaHeight":F
    .end local v13    # "mediaWidth":F
    :cond_9
    sget-object v2, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL_SMALL:Lcom/oneplus/media/BitmapPool;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/BurstViewer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/gallery/BurstViewer;->m_LQThumbDecodingCallback:Lcom/oneplus/media/BitmapPool$Callback;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/BurstViewer;->getHandler()Landroid/os/Handler;

    move-result-object v10

    const/4 v5, 0x1

    const/16 v6, 0x200

    const/16 v7, 0x200

    invoke-virtual/range {v2 .. v10}, Lcom/oneplus/media/BitmapPool;->decode(Landroid/content/Context;Landroid/net/Uri;IIIILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v11

    .line 587
    .restart local v11    # "handle":Lcom/oneplus/base/Handle;
    invoke-static {v11}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 588
    move-object/from16 v0, v18

    iput-object v11, v0, Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;->lowQualityThumbDecodeHandle:Lcom/oneplus/base/Handle;

    goto/16 :goto_1
.end method

.method private deleteMedia(Ljava/util/Collection;Z)V
    .locals 10
    .param p2, "closeViewerWhenCompleted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "media":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/oneplus/gallery2/media/Media;>;"
    const/4 v9, 0x0

    .line 597
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    .line 598
    .local v4, "selectionCount":I
    :goto_0
    if-nez v4, :cond_1

    .line 599
    return-void

    .end local v4    # "selectionCount":I
    :cond_0
    move v4, v9

    .line 597
    goto :goto_0

    .line 602
    .restart local v4    # "selectionCount":I
    :cond_1
    new-instance v3, Lcom/oneplus/camera/ui/ProgressDialog;

    invoke-virtual {p0}, Lcom/oneplus/gallery/BurstViewer;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/oneplus/camera/ui/ProgressDialog;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    .line 603
    .local v3, "dialog":Lcom/oneplus/camera/ui/ProgressDialog;
    const/4 v1, 0x1

    if-ne v4, v1, :cond_3

    .line 604
    invoke-virtual {p0}, Lcom/oneplus/gallery/BurstViewer;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    const v5, 0x7f0d003c

    invoke-virtual {v1, v5}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/oneplus/camera/ui/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 609
    :goto_1
    new-instance v2, Lcom/oneplus/base/SimpleRef;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/oneplus/base/SimpleRef;-><init>(Ljava/lang/Object;)V

    .line 610
    .local v2, "deletionCountRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Integer;>;"
    new-array v1, v4, [Lcom/oneplus/gallery2/media/Media;

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/oneplus/gallery2/media/Media;

    .line 611
    .local v8, "mediaToDelete":[Lcom/oneplus/gallery2/media/Media;
    new-instance v0, Lcom/oneplus/gallery/BurstViewer$13;

    move-object v1, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/gallery/BurstViewer$13;-><init>(Lcom/oneplus/gallery/BurstViewer;Lcom/oneplus/base/Ref;Lcom/oneplus/camera/ui/ProgressDialog;IZ)V

    .line 635
    .local v0, "deletionCallback":Lcom/oneplus/gallery2/media/Media$DeletionCallback;
    add-int/lit8 v7, v4, -0x1

    .local v7, "i":I
    :goto_2
    if-ltz v7, :cond_4

    .line 637
    aget-object v1, v8, v7

    invoke-interface {v1, v0, v9}, Lcom/oneplus/gallery2/media/Media;->delete(Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v6

    .line 638
    .local v6, "handle":Lcom/oneplus/base/Handle;
    invoke-static {v6}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 639
    aget-object v1, v8, v7

    invoke-virtual {v0, v1, v9, v9}, Lcom/oneplus/gallery2/media/Media$DeletionCallback;->onDeletionCompleted(Lcom/oneplus/gallery2/media/Media;ZI)V

    .line 635
    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 606
    .end local v0    # "deletionCallback":Lcom/oneplus/gallery2/media/Media$DeletionCallback;
    .end local v2    # "deletionCountRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Integer;>;"
    .end local v6    # "handle":Lcom/oneplus/base/Handle;
    .end local v7    # "i":I
    .end local v8    # "mediaToDelete":[Lcom/oneplus/gallery2/media/Media;
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/gallery/BurstViewer;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    const v5, 0x7f0d003d

    invoke-virtual {v1, v5}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/oneplus/camera/ui/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 641
    .restart local v0    # "deletionCallback":Lcom/oneplus/gallery2/media/Media$DeletionCallback;
    .restart local v2    # "deletionCountRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Integer;>;"
    .restart local v7    # "i":I
    .restart local v8    # "mediaToDelete":[Lcom/oneplus/gallery2/media/Media;
    :cond_4
    invoke-interface {v2}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, v4, :cond_5

    .line 642
    invoke-virtual {v3}, Lcom/oneplus/camera/ui/ProgressDialog;->show()Z

    .line 594
    :cond_5
    return-void
.end method

.method private deleteSelectedMedia()V
    .locals 12

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 650
    iget-object v3, p0, Lcom/oneplus/gallery/BurstViewer;->m_SelectedMedia:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v8

    .line 651
    .local v8, "selectionCount":I
    if-nez v8, :cond_0

    .line 652
    return-void

    .line 655
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery/BurstViewer;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v6

    .line 656
    .local v6, "activity":Lcom/oneplus/camera/CameraActivity;
    const-class v3, Lcom/oneplus/camera/DialogManager;

    invoke-virtual {v6, v3}, Lcom/oneplus/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/DialogManager;

    .line 657
    .local v0, "dialogManager":Lcom/oneplus/camera/DialogManager;
    if-nez v0, :cond_1

    .line 659
    iget-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "deleteSelectedMedia() - No DialogManager"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    return-void

    .line 664
    :cond_1
    if-le v8, v10, :cond_3

    const/4 v7, 0x1

    .line 665
    .local v7, "hasMultipleMedia":Z
    :goto_0
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v6, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    const v9, 0x7f0c002c

    .line 666
    .local v9, "styleId":I
    :goto_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v6, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 667
    if-eqz v7, :cond_5

    const v3, 0x7f0d003d

    .line 666
    :goto_2
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 668
    if-eqz v7, :cond_6

    const v3, 0x7f0d003f

    invoke-virtual {v6, v3}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-static {v3, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 666
    :goto_3
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 669
    new-instance v4, Lcom/oneplus/gallery/BurstViewer$14;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery/BurstViewer$14;-><init>(Lcom/oneplus/gallery/BurstViewer;)V

    const v10, 0x7f0d000d

    .line 666
    invoke-virtual {v3, v10, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 678
    new-instance v4, Lcom/oneplus/gallery/BurstViewer$15;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery/BurstViewer$15;-><init>(Lcom/oneplus/gallery/BurstViewer;)V

    const/high16 v10, 0x1040000

    .line 666
    invoke-virtual {v3, v10, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .local v1, "alertDialog":Landroid/app/AlertDialog;
    move-object v3, v2

    move-object v4, v2

    .line 687
    invoke-interface/range {v0 .. v5}, Lcom/oneplus/camera/DialogManager;->showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;Lcom/oneplus/camera/DialogManager$DialogParams;Lcom/oneplus/camera/DialogManager$DialogParams;I)Lcom/oneplus/base/Handle;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 689
    iget-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "deleteSelectedMedia() - Fail to show confirmation dialog, delete directly"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    iget-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_SelectedMedia:Ljava/util/Set;

    invoke-direct {p0, v2, v5}, Lcom/oneplus/gallery/BurstViewer;->deleteMedia(Ljava/util/Collection;Z)V

    .line 647
    :cond_2
    return-void

    .line 664
    .end local v1    # "alertDialog":Landroid/app/AlertDialog;
    .end local v7    # "hasMultipleMedia":Z
    .end local v9    # "styleId":I
    :cond_3
    const/4 v7, 0x0

    .restart local v7    # "hasMultipleMedia":Z
    goto :goto_0

    .line 665
    :cond_4
    const v9, 0x7f0c002a

    .restart local v9    # "styleId":I
    goto :goto_1

    .line 667
    :cond_5
    const v3, 0x7f0d003c

    goto :goto_2

    .line 668
    :cond_6
    const v3, 0x7f0d003e

    invoke-virtual {v6, v3}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3
.end method

.method private detachFromMedia()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 698
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_Media:Lcom/oneplus/gallery2/media/GroupedMedia;

    if-nez v0, :cond_0

    .line 699
    return-void

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

    .line 701
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v0, :cond_1

    .line 703
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 704
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaRemovedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 705
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaRemovingHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 706
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaList;->release()V

    .line 707
    iput-object v3, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    .line 709
    :cond_1
    iput-object v3, p0, Lcom/oneplus/gallery/BurstViewer;->m_Media:Lcom/oneplus/gallery2/media/GroupedMedia;

    .line 710
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_SelectedMedia:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 711
    invoke-direct {p0}, Lcom/oneplus/gallery/BurstViewer;->clearThumbnailImages()V

    .line 712
    invoke-direct {p0}, Lcom/oneplus/gallery/BurstViewer;->updateToolBar()V

    .line 696
    return-void
.end method

.method private findSubMediaItem(Landroid/net/Uri;)Lcom/oneplus/gallery/BurstViewer$SubMediaItem;
    .locals 3
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 728
    iget-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaItems:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;

    .line 730
    .local v0, "item":Lcom/oneplus/gallery/BurstViewer$SubMediaItem;
    iget-object v2, v0, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 731
    return-object v0

    .line 733
    .end local v0    # "item":Lcom/oneplus/gallery/BurstViewer$SubMediaItem;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private findSubMediaItem(Lcom/oneplus/gallery2/media/Media;)Lcom/oneplus/gallery/BurstViewer$SubMediaItem;
    .locals 3
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 719
    iget-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaItems:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;

    .line 721
    .local v0, "item":Lcom/oneplus/gallery/BurstViewer$SubMediaItem;
    iget-object v2, v0, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->media:Lcom/oneplus/gallery2/media/Media;

    if-ne v2, p1, :cond_0

    .line 722
    return-object v0

    .line 724
    .end local v0    # "item":Lcom/oneplus/gallery/BurstViewer$SubMediaItem;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private findSubMediaThumbItem(Landroid/net/Uri;)Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;
    .locals 3
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 749
    iget-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaThumbItems:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;

    .line 751
    .local v0, "item":Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;
    iget-object v2, v0, Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;->media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 752
    return-object v0

    .line 754
    .end local v0    # "item":Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private findSubMediaThumbItem(Lcom/oneplus/gallery2/media/Media;)Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;
    .locals 3
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 740
    iget-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaThumbItems:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;

    .line 742
    .local v0, "item":Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;
    iget-object v2, v0, Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;->media:Lcom/oneplus/gallery2/media/Media;

    if-ne v2, p1, :cond_0

    .line 743
    return-object v0

    .line 745
    .end local v0    # "item":Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private findThumbnailInfo(Landroid/net/Uri;)Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;
    .locals 3
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 761
    iget-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_ThumbInfoTable:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 763
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 764
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;

    return-object v2

    .line 766
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;>;"
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private hideControls()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x96

    const/4 v2, 0x0

    .line 774
    iget-boolean v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_IsToolBarVisible:Z

    if-eqz v0, :cond_1

    .line 776
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_IsToolBarVisible:Z

    .line 777
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_ToolBarContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_ToolBarContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/gallery/BurstViewer;->m_ToolBarHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 779
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_ThumbBar:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 780
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_ThumbBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/gallery/BurstViewer;->m_ThumbBarHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 771
    :cond_1
    return-void
.end method

.method private isCurrentItem(Lcom/oneplus/gallery/BurstViewer$SubMediaItem;)Z
    .locals 3
    .param p1, "item"    # Lcom/oneplus/gallery/BurstViewer$SubMediaItem;

    .prologue
    const/4 v0, 0x0

    .line 788
    if-nez p1, :cond_0

    .line 789
    return v0

    .line 790
    :cond_0
    iget v1, p1, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->mediaIndex:I

    iget-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v2}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private onBackPressed(Z)V
    .locals 2
    .param p1, "saveSelectMedia"    # Z

    .prologue
    const/4 v1, 0x1

    .line 814
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_SelectedMedia:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 817
    invoke-direct {p0, v1, v1}, Lcom/oneplus/gallery/BurstViewer;->saveSelectedMedia(ZZ)V

    .line 812
    :goto_0
    return-void

    .line 815
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/BurstViewer;->close(I)V

    goto :goto_0
.end method

.method private onClosed()V
    .locals 2

    .prologue
    .line 798
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_Container:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 799
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_Container:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 802
    invoke-direct {p0}, Lcom/oneplus/gallery/BurstViewer;->detachFromMedia()V

    .line 803
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_FilmstripAdapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v0}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyDataSetChanged()V

    .line 804
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_ThumbFilmstripAdapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v0}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyDataSetChanged()V

    .line 807
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_KeyEventHandlerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_KeyEventHandlerHandle:Lcom/oneplus/base/Handle;

    .line 795
    return-void
.end method

.method private onFilmstripCurrentItemChanged(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x1

    .line 948
    iget-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_ThumbFilmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v2, p1, v4}, Lcom/oneplus/widget/FilmstripView;->setCurrentItem(IZ)V

    .line 951
    iget-boolean v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_IsPreDecodeThumbScheduled:Z

    if-nez v2, :cond_0

    if-ltz p1, :cond_0

    .line 953
    iput-boolean v4, p0, Lcom/oneplus/gallery/BurstViewer;->m_IsPreDecodeThumbScheduled:Z

    .line 954
    invoke-virtual {p0}, Lcom/oneplus/gallery/BurstViewer;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/gallery/BurstViewer;->m_PreDecodeThumbRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 958
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaItems:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;

    .line 960
    .local v0, "item":Lcom/oneplus/gallery/BurstViewer$SubMediaItem;
    iget v2, v0, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->mediaIndex:I

    if-eq v2, p1, :cond_1

    .line 961
    invoke-direct {p0, v0, v4}, Lcom/oneplus/gallery/BurstViewer;->clearOriginalImage(Lcom/oneplus/gallery/BurstViewer$SubMediaItem;Z)V

    goto :goto_0

    .line 965
    .end local v0    # "item":Lcom/oneplus/gallery/BurstViewer$SubMediaItem;
    :cond_2
    if-ltz p1, :cond_3

    .line 966
    invoke-direct {p0, v4}, Lcom/oneplus/gallery/BurstViewer;->showControls(Z)V

    .line 945
    :cond_3
    return-void
.end method

.method private onImageViewBoundsTypeChanged(Lcom/oneplus/gallery/BurstViewer$SubMediaItem;Lcom/oneplus/widget/ScaleImageView$BoundsType;Lcom/oneplus/widget/ScaleImageView$BoundsType;)V
    .locals 8
    .param p1, "item"    # Lcom/oneplus/gallery/BurstViewer$SubMediaItem;
    .param p2, "oldType"    # Lcom/oneplus/widget/ScaleImageView$BoundsType;
    .param p3, "newType"    # Lcom/oneplus/widget/ScaleImageView$BoundsType;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 836
    iget-object v4, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-nez v4, :cond_0

    .line 837
    return-void

    .line 838
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/BurstViewer;->isCurrentItem(Lcom/oneplus/gallery/BurstViewer$SubMediaItem;)Z

    move-result v0

    .line 839
    .local v0, "isCurrentItem":Z
    iget-object v4, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    iget v5, p1, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->mediaIndex:I

    invoke-interface {v4, v5}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    .line 840
    .local v1, "media":Lcom/oneplus/gallery2/media/Media;
    sget-object v4, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    if-ne p3, v4, :cond_2

    .line 843
    iget-object v4, p0, Lcom/oneplus/gallery/BurstViewer;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v4, v7}, Lcom/oneplus/widget/FilmstripView;->setScrollMode(I)V

    .line 846
    iget-object v4, p1, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->checkBoxView:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 849
    invoke-direct {p0, v6}, Lcom/oneplus/gallery/BurstViewer;->showControls(Z)V

    .line 852
    if-eqz v0, :cond_1

    .line 853
    invoke-direct {p0, p1, v6}, Lcom/oneplus/gallery/BurstViewer;->clearOriginalImage(Lcom/oneplus/gallery/BurstViewer$SubMediaItem;Z)V

    .line 834
    :cond_1
    :goto_0
    return-void

    .line 858
    :cond_2
    iget-object v4, p0, Lcom/oneplus/gallery/BurstViewer;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/oneplus/widget/FilmstripView;->setScrollMode(I)V

    .line 861
    iget-object v4, p1, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->checkBoxView:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 864
    invoke-direct {p0}, Lcom/oneplus/gallery/BurstViewer;->hideControls()V

    .line 867
    if-eqz v0, :cond_1

    .line 868
    iget-object v4, p0, Lcom/oneplus/gallery/BurstViewer;->m_OriginalBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/oneplus/gallery/BurstViewer;->m_OriginalBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-interface {v1}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->isSameSource(Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 870
    :cond_3
    iget-object v4, p0, Lcom/oneplus/gallery/BurstViewer;->m_OriginalBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    if-eqz v4, :cond_4

    .line 871
    iget-object v4, p0, Lcom/oneplus/gallery/BurstViewer;->m_OriginalBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-virtual {v4}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->release()V

    .line 872
    :cond_4
    iget-object v4, p0, Lcom/oneplus/gallery/BurstViewer;->m_ThumbInfoTable:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;

    .line 874
    .local v3, "thumbInfo":Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;
    if-eqz v3, :cond_6

    .line 876
    invoke-virtual {v3}, Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;->getHighQualityThumbnailImage()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 877
    .local v2, "thumb":Landroid/graphics/Bitmap;
    if-nez v2, :cond_5

    .line 878
    invoke-virtual {v3}, Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;->getLowQualityThumbnailImage()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 885
    .end local v2    # "thumb":Landroid/graphics/Bitmap;
    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/oneplus/gallery/BurstViewer;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onImageViewBoundsTypeChanged() - Show original image for "

    invoke-static {v4, v5, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 886
    new-instance v4, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-virtual {p0}, Lcom/oneplus/gallery/BurstViewer;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-interface {v1}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-direct {v4, v5, v6, v7, v2}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lcom/oneplus/gallery/BurstViewer;->m_OriginalBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    .line 887
    iget-object v4, p1, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->mediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    iget-object v5, p0, Lcom/oneplus/gallery/BurstViewer;->m_OriginalBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-virtual {v4, v5}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 882
    :cond_6
    const/4 v2, 0x0

    .line 883
    .local v2, "thumb":Landroid/graphics/Bitmap;
    invoke-direct {p0, v1, v6, v6, v7}, Lcom/oneplus/gallery/BurstViewer;->decodeThumbnailImage(Lcom/oneplus/gallery2/media/Media;ZZZ)V

    goto :goto_1
.end method

.method private onImageViewFling(Lcom/oneplus/gallery/BurstViewer$SubMediaItem;FF)Z
    .locals 6
    .param p1, "item"    # Lcom/oneplus/gallery/BurstViewer$SubMediaItem;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 897
    iget-object v2, p1, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->imageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v2}, Lcom/oneplus/widget/ScaleImageView;->getImageBoundsType()Lcom/oneplus/widget/ScaleImageView$BoundsType;

    move-result-object v2

    sget-object v3, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    if-ne v2, v3, :cond_0

    .line 898
    return v4

    .line 899
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-nez v2, :cond_1

    .line 900
    return v4

    .line 903
    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x459c4000    # 5000.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 904
    return v4

    .line 907
    :cond_2
    iget-object v2, p1, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->imageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v2}, Lcom/oneplus/widget/ScaleImageView;->getImageBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 908
    .local v0, "imageBounds":Landroid/graphics/Rect;
    if-nez v0, :cond_3

    .line 909
    return v4

    .line 913
    :cond_3
    const/4 v2, 0x0

    cmpg-float v2, p2, v2

    if-gez v2, :cond_6

    .line 915
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget-object v3, p1, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->imageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v3}, Lcom/oneplus/widget/ScaleImageView;->getWidth()I

    move-result v3

    if-gt v2, v3, :cond_4

    iget v2, p1, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->mediaIndex:I

    iget-object v3, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v3}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_5

    .line 916
    :cond_4
    return v4

    .line 917
    :cond_5
    iget v2, p1, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->mediaIndex:I

    add-int/lit8 v1, v2, 0x1

    .line 927
    .local v1, "indexTo":I
    :goto_0
    iget-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v2, v4}, Lcom/oneplus/widget/FilmstripView;->setScrollMode(I)V

    .line 928
    iget-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v2, v1, v5}, Lcom/oneplus/widget/FilmstripView;->setCurrentItem(IZ)V

    .line 931
    return v5

    .line 921
    .end local v1    # "indexTo":I
    :cond_6
    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-ltz v2, :cond_7

    iget v2, p1, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->mediaIndex:I

    if-gtz v2, :cond_8

    .line 922
    :cond_7
    return v4

    .line 923
    :cond_8
    iget v2, p1, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->mediaIndex:I

    add-int/lit8 v1, v2, -0x1

    .restart local v1    # "indexTo":I
    goto :goto_0
.end method

.method private onKeyUp(ILcom/oneplus/camera/ui/KeyEventArgs;)Lcom/oneplus/camera/KeyEventHandler$KeyResult;
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Lcom/oneplus/camera/ui/KeyEventArgs;

    .prologue
    .line 973
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 975
    sget-object v0, Lcom/oneplus/gallery/BurstViewer;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/BurstViewer;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery/BurstViewer$UIState;->OPENED:Lcom/oneplus/gallery/BurstViewer$UIState;

    if-ne v0, v1, :cond_0

    .line 977
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/BurstViewer;->onBackPressed(Z)V

    .line 978
    sget-object v0, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->HANDLED:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    return-object v0

    .line 981
    :cond_0
    sget-object v0, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->NOT_HANDLED:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    return-object v0
.end method

.method private onMediaDeleted(Lcom/oneplus/gallery2/media/Media;)V
    .locals 3
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 989
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_Media:Lcom/oneplus/gallery2/media/GroupedMedia;

    if-eq v0, p1, :cond_0

    .line 990
    return-void

    .line 993
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMediaDeleted() - Media "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " deleted, close viewer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/BurstViewer;->close(I)V

    .line 986
    return-void
.end method

.method private onMediaSizeObtained(Lcom/oneplus/gallery2/media/Media;II)V
    .locals 4
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1002
    iget-object v1, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v1, p1}, Lcom/oneplus/gallery2/media/MediaList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1006
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/BurstViewer;->findSubMediaItem(Lcom/oneplus/gallery2/media/Media;)Lcom/oneplus/gallery/BurstViewer$SubMediaItem;

    move-result-object v0

    .line 1007
    .local v0, "item":Lcom/oneplus/gallery/BurstViewer$SubMediaItem;
    if-eqz v0, :cond_1

    .line 1008
    invoke-direct {p0, p1, v2, v2, v3}, Lcom/oneplus/gallery/BurstViewer;->decodeThumbnailImage(Lcom/oneplus/gallery2/media/Media;ZZZ)V

    .line 999
    :goto_0
    return-void

    .line 1003
    .end local v0    # "item":Lcom/oneplus/gallery/BurstViewer$SubMediaItem;
    :cond_0
    return-void

    .line 1010
    .restart local v0    # "item":Lcom/oneplus/gallery/BurstViewer$SubMediaItem;
    :cond_1
    invoke-direct {p0, p1, v2, v3, v2}, Lcom/oneplus/gallery/BurstViewer;->decodeThumbnailImage(Lcom/oneplus/gallery2/media/Media;ZZZ)V

    goto :goto_0
.end method

.method private onMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 6
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 1018
    sget v3, Lcom/oneplus/gallery2/media/GroupedMedia;->FLAG_COVER_CHANGED:I

    and-int/2addr v3, p2

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/oneplus/gallery/BurstViewer;->m_Media:Lcom/oneplus/gallery2/media/GroupedMedia;

    if-ne v3, p1, :cond_1

    .line 1020
    iget-object v3, p0, Lcom/oneplus/gallery/BurstViewer;->m_Media:Lcom/oneplus/gallery2/media/GroupedMedia;

    invoke-interface {v3}, Lcom/oneplus/gallery2/media/GroupedMedia;->getCover()Lcom/oneplus/gallery2/media/Media;

    move-result-object v0

    .line 1021
    .local v0, "cover":Lcom/oneplus/gallery2/media/Media;
    iget-object v3, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaThumbItems:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "thumbItem$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;

    .line 1023
    .local v1, "thumbItem":Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;
    iget-object v5, v1, Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;->bestShotTextView:Landroid/view/View;

    iget-object v3, v1, Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;->media:Lcom/oneplus/gallery2/media/Media;

    if-ne v3, v0, :cond_0

    move v3, v4

    :goto_1
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    goto :goto_1

    .line 1028
    .end local v0    # "cover":Lcom/oneplus/gallery2/media/Media;
    .end local v1    # "thumbItem":Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;
    .end local v2    # "thumbItem$iterator":Ljava/util/Iterator;
    :cond_1
    sget v3, Lcom/oneplus/gallery2/media/GroupedMedia;->FLAG_SUB_MEDIA:I

    and-int/2addr v3, p2

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v3, p1}, Lcom/oneplus/gallery2/media/MediaList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1029
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/BurstViewer;->refreshThumbnailImage(Lcom/oneplus/gallery2/media/Media;)V

    .line 1015
    :cond_2
    return-void
.end method

.method private onPrepareFilmstripItemView(ILandroid/view/ViewGroup;)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x0

    .line 1037
    iget-object v6, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v6, p1}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/Media;

    .line 1040
    .local v2, "media":Lcom/oneplus/gallery2/media/Media;
    iget-object v6, p0, Lcom/oneplus/gallery/BurstViewer;->m_FreeSubMediaItems:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;

    .line 1041
    .local v1, "item":Lcom/oneplus/gallery/BurstViewer$SubMediaItem;
    if-nez v1, :cond_0

    .line 1042
    new-instance v1, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;

    .end local v1    # "item":Lcom/oneplus/gallery/BurstViewer$SubMediaItem;
    invoke-direct {v1, p0}, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;-><init>(Lcom/oneplus/gallery/BurstViewer;)V

    .line 1043
    .restart local v1    # "item":Lcom/oneplus/gallery/BurstViewer$SubMediaItem;
    :cond_0
    iput-object v2, v1, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->media:Lcom/oneplus/gallery2/media/Media;

    .line 1044
    iget-object v6, v1, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->mediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    if-nez v6, :cond_3

    .line 1045
    new-instance v6, Lcom/oneplus/gallery2/drawable/MediaDrawable;

    invoke-direct {v6, v2}, Lcom/oneplus/gallery2/drawable/MediaDrawable;-><init>(Lcom/oneplus/gallery2/media/Media;)V

    iput-object v6, v1, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->mediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    .line 1048
    :goto_0
    iput p1, v1, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->mediaIndex:I

    .line 1049
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 1050
    iget-object v6, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaItems:Ljava/util/Set;

    invoke-interface {v6, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1053
    iget-object v6, v1, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->baseView:Landroid/view/View;

    invoke-virtual {p2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1054
    iget-object v6, v1, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->imageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v6, v8}, Lcom/oneplus/widget/ScaleImageView;->setVisibility(I)V

    .line 1055
    iget-object v6, v1, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->imageView:Lcom/oneplus/widget/ScaleImageView;

    sget-object v7, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    invoke-virtual {v6, v7}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Lcom/oneplus/widget/ScaleImageView$BoundsType;)V

    .line 1056
    iget-object v6, v1, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->imageView:Lcom/oneplus/widget/ScaleImageView;

    iget-object v7, v1, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->mediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    invoke-virtual {v6, v7}, Lcom/oneplus/widget/ScaleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1057
    iget-object v7, v1, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->checkBoxView:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/oneplus/gallery/BurstViewer;->m_SelectedMedia:Ljava/util/Set;

    invoke-interface {v6, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const v6, 0x7f020008

    :goto_1
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1058
    iget-object v6, v1, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->checkBoxView:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1061
    invoke-virtual {p0}, Lcom/oneplus/gallery/BurstViewer;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1062
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/oneplus/gallery/BurstViewer;->m_ThumbInfoTable:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;

    .line 1063
    .local v5, "thumbInfo":Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;
    const/4 v0, 0x0

    .line 1064
    .local v0, "isHQThumbReady":Z
    if-eqz v5, :cond_1

    .line 1066
    invoke-virtual {v5}, Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;->getHighQualityThumbnailImage()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1067
    .local v4, "thumb":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_5

    .line 1069
    const/4 v0, 0x1

    .line 1070
    iget-object v6, v1, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->mediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    invoke-virtual {v6, v3, v4}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1083
    .end local v4    # "thumb":Landroid/graphics/Bitmap;
    :cond_1
    :goto_2
    if-nez v0, :cond_2

    .line 1084
    const/4 v6, 0x1

    invoke-direct {p0, v2, v8, v6, v8}, Lcom/oneplus/gallery/BurstViewer;->decodeThumbnailImage(Lcom/oneplus/gallery2/media/Media;ZZZ)V

    .line 1034
    :cond_2
    return-void

    .line 1047
    .end local v0    # "isHQThumbReady":Z
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v5    # "thumbInfo":Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;
    :cond_3
    iget-object v6, v1, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->mediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    invoke-virtual {v6, v2}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setMedia(Lcom/oneplus/gallery2/media/Media;)V

    goto :goto_0

    .line 1057
    :cond_4
    const v6, 0x7f020007

    goto :goto_1

    .line 1074
    .restart local v0    # "isHQThumbReady":Z
    .restart local v3    # "res":Landroid/content/res/Resources;
    .restart local v4    # "thumb":Landroid/graphics/Bitmap;
    .restart local v5    # "thumbInfo":Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;
    :cond_5
    invoke-virtual {v5}, Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;->getLowQualityThumbnailImage()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1075
    if-eqz v4, :cond_6

    .line 1076
    iget-object v6, v1, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->mediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    invoke-virtual {v6, v3, v4}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 1078
    :cond_6
    iget-object v6, v1, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->mediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    sget v7, Lcom/oneplus/gallery/BurstViewer;->EMPTY_THUMB_COLOR:I

    invoke-virtual {v6, v7}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setColor(I)V

    goto :goto_2
.end method

.method private onPrepareThumbFilmstripItemView(ILandroid/view/ViewGroup;)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v4, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1092
    iget-object v3, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v3, p1}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    .line 1095
    .local v1, "media":Lcom/oneplus/gallery2/media/Media;
    iget-object v3, p0, Lcom/oneplus/gallery/BurstViewer;->m_FreeSubMediaThumbItems:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;

    .line 1096
    .local v0, "item":Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;
    if-nez v0, :cond_0

    .line 1097
    new-instance v0, Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;

    .end local v0    # "item":Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;
    invoke-direct {v0, p0}, Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;-><init>(Lcom/oneplus/gallery/BurstViewer;)V

    .line 1098
    .restart local v0    # "item":Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;
    :cond_0
    iput-object v1, v0, Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;->media:Lcom/oneplus/gallery2/media/Media;

    .line 1099
    iput p1, v0, Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;->mediaIndex:I

    .line 1100
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 1101
    iget-object v3, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaThumbItems:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1104
    iget-object v3, v0, Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;->baseView:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1105
    iget-object v3, p0, Lcom/oneplus/gallery/BurstViewer;->m_Media:Lcom/oneplus/gallery2/media/GroupedMedia;

    invoke-interface {v3}, Lcom/oneplus/gallery2/media/GroupedMedia;->getCover()Lcom/oneplus/gallery2/media/Media;

    move-result-object v3

    if-ne v1, v3, :cond_1

    .line 1107
    iget-object v3, v0, Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;->bestShotTextView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1113
    :goto_0
    iget-object v3, p0, Lcom/oneplus/gallery/BurstViewer;->m_SelectedMedia:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1114
    iget-object v3, v0, Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;->imageViewSelectedOverlay:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1119
    :goto_1
    iget-object v3, p0, Lcom/oneplus/gallery/BurstViewer;->m_ThumbInfoTable:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;

    .line 1120
    .local v2, "thumbInfo":Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;
    if-eqz v2, :cond_4

    .line 1122
    iget-object v3, v2, Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;->lowQualityThumb:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    .line 1123
    iget-object v3, v0, Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;->imageView:Landroid/widget/ImageView;

    iget-object v4, v2, Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;->lowQualityThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1089
    :goto_2
    return-void

    .line 1111
    .end local v2    # "thumbInfo":Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;
    :cond_1
    iget-object v3, v0, Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;->bestShotTextView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1116
    :cond_2
    iget-object v3, v0, Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;->imageViewSelectedOverlay:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1126
    .restart local v2    # "thumbInfo":Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;
    :cond_3
    iget-object v3, v0, Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;->imageView:Landroid/widget/ImageView;

    sget v4, Lcom/oneplus/gallery/BurstViewer;->EMPTY_THUMB_COLOR:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 1127
    invoke-direct {p0, v1, v6, v5, v5}, Lcom/oneplus/gallery/BurstViewer;->decodeThumbnailImage(Lcom/oneplus/gallery2/media/Media;ZZZ)V

    goto :goto_2

    .line 1132
    :cond_4
    iget-object v3, v0, Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;->imageView:Landroid/widget/ImageView;

    sget v4, Lcom/oneplus/gallery/BurstViewer;->EMPTY_THUMB_COLOR:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 1133
    invoke-direct {p0, v1, v5, v5, v5}, Lcom/oneplus/gallery/BurstViewer;->decodeThumbnailImage(Lcom/oneplus/gallery2/media/Media;ZZZ)V

    goto :goto_2
.end method

.method private onReleaseFilmstripItemView(ILandroid/view/ViewGroup;)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1142
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;

    .line 1143
    .local v0, "item":Lcom/oneplus/gallery/BurstViewer$SubMediaItem;
    if-nez v0, :cond_0

    .line 1144
    return-void

    .line 1147
    :cond_0
    invoke-direct {p0, v0, v2}, Lcom/oneplus/gallery/BurstViewer;->clearOriginalImage(Lcom/oneplus/gallery/BurstViewer$SubMediaItem;Z)V

    .line 1150
    iget-object v1, v0, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->baseView:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1151
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 1152
    iput-object v3, v0, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->media:Lcom/oneplus/gallery2/media/Media;

    .line 1153
    iget-object v1, v0, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->imageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v1, v2}, Lcom/oneplus/widget/ScaleImageView;->setVisibility(I)V

    .line 1154
    iget-object v1, v0, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->imageView:Lcom/oneplus/widget/ScaleImageView;

    sget-object v2, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    invoke-virtual {v1, v2}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Lcom/oneplus/widget/ScaleImageView$BoundsType;)V

    .line 1155
    iget-object v1, v0, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->imageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v1, v3}, Lcom/oneplus/widget/ScaleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1156
    iget-object v1, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaItems:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1157
    iget-object v1, p0, Lcom/oneplus/gallery/BurstViewer;->m_FreeSubMediaItems:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1139
    return-void
.end method

.method private onReleaseThumbFilmstripItemView(ILandroid/view/ViewGroup;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x0

    .line 1165
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;

    .line 1166
    .local v0, "item":Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;
    if-nez v0, :cond_0

    .line 1167
    return-void

    .line 1170
    :cond_0
    iget-object v1, v0, Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;->baseView:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1171
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 1172
    iput-object v2, v0, Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;->media:Lcom/oneplus/gallery2/media/Media;

    .line 1173
    iget-object v1, v0, Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1174
    iget-object v1, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaThumbItems:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1175
    iget-object v1, p0, Lcom/oneplus/gallery/BurstViewer;->m_FreeSubMediaThumbItems:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1162
    return-void
.end method

.method private onSubMediaAdded(Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 9
    .param p1, "e"    # Lcom/oneplus/gallery2/ListChangeEventArgs;

    .prologue
    .line 1209
    invoke-virtual {p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getItemCount()I

    move-result v0

    .line 1210
    .local v0, "count":I
    invoke-virtual {p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getStartIndex()I

    move-result v3

    .line 1211
    .local v3, "startIndex":I
    iget-object v6, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaItems:Ljava/util/Set;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "item$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;

    .line 1213
    .local v1, "item":Lcom/oneplus/gallery/BurstViewer$SubMediaItem;
    iget v6, v1, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->mediaIndex:I

    if-lt v6, v3, :cond_0

    .line 1214
    iget v6, v1, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->mediaIndex:I

    add-int/2addr v6, v0

    iput v6, v1, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->mediaIndex:I

    goto :goto_0

    .line 1216
    .end local v1    # "item":Lcom/oneplus/gallery/BurstViewer$SubMediaItem;
    :cond_1
    iget-object v6, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaThumbItems:Ljava/util/Set;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "thumbItem$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;

    .line 1218
    .local v4, "thumbItem":Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;
    iget v6, v4, Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;->mediaIndex:I

    if-lt v6, v3, :cond_2

    .line 1219
    iget v6, v4, Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;->mediaIndex:I

    add-int/2addr v6, v0

    iput v6, v4, Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;->mediaIndex:I

    goto :goto_1

    .line 1223
    .end local v4    # "thumbItem":Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;
    :cond_3
    iget-object v6, p0, Lcom/oneplus/gallery/BurstViewer;->m_FilmstripAdapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getStartIndex()I

    move-result v7

    invoke-virtual {p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getEndIndex()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyItemAdded(II)V

    .line 1224
    iget-object v6, p0, Lcom/oneplus/gallery/BurstViewer;->m_ThumbFilmstripAdapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getStartIndex()I

    move-result v7

    invoke-virtual {p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getEndIndex()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyItemAdded(II)V

    .line 1206
    return-void
.end method

.method private onSubMediaRemoved(Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 13
    .param p1, "e"    # Lcom/oneplus/gallery2/ListChangeEventArgs;

    .prologue
    const/4 v12, 0x0

    .line 1232
    invoke-virtual {p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getItemCount()I

    move-result v0

    .line 1233
    .local v0, "count":I
    invoke-virtual {p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getStartIndex()I

    move-result v6

    .line 1234
    .local v6, "startIndex":I
    invoke-virtual {p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getEndIndex()I

    move-result v2

    .line 1235
    .local v2, "endIndex":I
    iget-object v9, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaItems:Ljava/util/Set;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "item$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;

    .line 1237
    .local v3, "item":Lcom/oneplus/gallery/BurstViewer$SubMediaItem;
    iget v9, v3, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->mediaIndex:I

    if-le v9, v2, :cond_0

    .line 1238
    iget v9, v3, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->mediaIndex:I

    sub-int/2addr v9, v0

    iput v9, v3, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->mediaIndex:I

    goto :goto_0

    .line 1240
    .end local v3    # "item":Lcom/oneplus/gallery/BurstViewer$SubMediaItem;
    :cond_1
    iget-object v9, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaThumbItems:Ljava/util/Set;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "thumbItem$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;

    .line 1242
    .local v7, "thumbItem":Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;
    iget v9, v7, Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;->mediaIndex:I

    if-le v9, v2, :cond_2

    .line 1243
    iget v9, v7, Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;->mediaIndex:I

    sub-int/2addr v9, v0

    iput v9, v7, Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;->mediaIndex:I

    goto :goto_1

    .line 1245
    .end local v7    # "thumbItem":Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;
    :cond_3
    iget-object v9, p0, Lcom/oneplus/gallery/BurstViewer;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v9}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v1

    .line 1248
    .local v1, "currentPos":I
    iget-object v9, p0, Lcom/oneplus/gallery/BurstViewer;->m_FilmstripAdapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v9}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyDataSetChanged()V

    .line 1249
    iget-object v9, p0, Lcom/oneplus/gallery/BurstViewer;->m_ThumbFilmstripAdapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v9}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyDataSetChanged()V

    .line 1251
    iget-object v9, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v9}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v5

    .line 1252
    .local v5, "listSize":I
    if-lt v1, v6, :cond_4

    .line 1253
    sub-int/2addr v1, v0

    .line 1254
    :cond_4
    if-lt v1, v5, :cond_5

    .line 1255
    add-int/lit8 v1, v5, -0x1

    .line 1256
    :cond_5
    iget-object v9, p0, Lcom/oneplus/gallery/BurstViewer;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v9, v1, v12}, Lcom/oneplus/widget/FilmstripView;->setCurrentItem(IZ)V

    .line 1259
    const/4 v9, 0x1

    if-gt v5, v9, :cond_6

    .line 1261
    iget-object v9, p0, Lcom/oneplus/gallery/BurstViewer;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onSubMediaRemoved() - Sub media count is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v11}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", close viewer"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    invoke-virtual {p0, v12}, Lcom/oneplus/gallery/BurstViewer;->close(I)V

    .line 1229
    :cond_6
    return-void
.end method

.method private onSubMediaRemoving(Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 6
    .param p1, "e"    # Lcom/oneplus/gallery2/ListChangeEventArgs;

    .prologue
    const/4 v5, 0x0

    .line 1270
    invoke-virtual {p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getStartIndex()I

    move-result v1

    .local v1, "i":I
    invoke-virtual {p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getEndIndex()I

    move-result v0

    .local v0, "endIndex":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 1273
    iget-object v4, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v4, v1}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/Media;

    .line 1274
    .local v2, "media":Lcom/oneplus/gallery2/media/Media;
    invoke-direct {p0, v2, v5, v5}, Lcom/oneplus/gallery/BurstViewer;->setMediaSelection(Lcom/oneplus/gallery2/media/Media;ZZ)Z

    .line 1277
    iget-object v4, p0, Lcom/oneplus/gallery/BurstViewer;->m_ThumbInfoTable:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;

    .line 1278
    .local v3, "thumbInfo":Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;
    if-eqz v3, :cond_0

    .line 1280
    iget-object v4, v3, Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;->highQualityThumbDecodeHandle:Lcom/oneplus/base/Handle;

    invoke-static {v4}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 1281
    iget-object v4, v3, Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;->lowQualityThumbDecodeHandle:Lcom/oneplus/base/Handle;

    invoke-static {v4}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 1282
    iget-object v4, p0, Lcom/oneplus/gallery/BurstViewer;->m_ThumbInfoTable:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1270
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1285
    .end local v2    # "media":Lcom/oneplus/gallery2/media/Media;
    .end local v3    # "thumbInfo":Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/gallery/BurstViewer;->updateToolBar()V

    .line 1268
    return-void
.end method

.method private onThumbFilmstripCurrentItemChanged(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 1292
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/FilmstripView;->setScrollMode(I)V

    .line 1293
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/widget/FilmstripView;->setCurrentItem(IZ)V

    .line 1290
    return-void
.end method

.method private onThumbFilmstripItemClicked(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/widget/FilmstripView;->setCurrentItem(IZ)V

    .line 1298
    return-void
.end method

.method private onThumbnailImageDecoded(Lcom/oneplus/base/Handle;Landroid/net/Uri;Landroid/graphics/Bitmap;Z)V
    .locals 5
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "thumb"    # Landroid/graphics/Bitmap;
    .param p4, "isLowQuality"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1308
    iget-object v3, p0, Lcom/oneplus/gallery/BurstViewer;->m_Media:Lcom/oneplus/gallery2/media/GroupedMedia;

    if-nez v3, :cond_0

    .line 1309
    return-void

    .line 1312
    :cond_0
    invoke-direct {p0, p2}, Lcom/oneplus/gallery/BurstViewer;->findThumbnailInfo(Landroid/net/Uri;)Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;

    move-result-object v1

    .line 1313
    .local v1, "thumbInfo":Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;
    if-nez v1, :cond_1

    .line 1314
    return-void

    .line 1315
    :cond_1
    if-eqz p4, :cond_6

    .line 1317
    iget-object v3, v1, Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;->lowQualityThumbDecodeHandle:Lcom/oneplus/base/Handle;

    if-eq v3, p1, :cond_2

    .line 1318
    return-void

    .line 1319
    :cond_2
    iput-object v4, v1, Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;->lowQualityThumbDecodeHandle:Lcom/oneplus/base/Handle;

    .line 1320
    iput-object p3, v1, Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;->lowQualityThumb:Landroid/graphics/Bitmap;

    .line 1331
    :goto_0
    invoke-direct {p0, p2}, Lcom/oneplus/gallery/BurstViewer;->findSubMediaItem(Landroid/net/Uri;)Lcom/oneplus/gallery/BurstViewer$SubMediaItem;

    move-result-object v0

    .line 1332
    .local v0, "item":Lcom/oneplus/gallery/BurstViewer$SubMediaItem;
    if-eqz v0, :cond_4

    .line 1334
    if-eqz p4, :cond_9

    .line 1336
    iget-object v3, v1, Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;->highQualityThumbRef:Ljava/lang/ref/SoftReference;

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;->highQualityThumbRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    .line 1338
    :cond_3
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/BurstViewer;->isCurrentItem(Lcom/oneplus/gallery/BurstViewer$SubMediaItem;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/oneplus/gallery/BurstViewer;->m_OriginalBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    if-eqz v3, :cond_8

    .line 1339
    iget-object v3, p0, Lcom/oneplus/gallery/BurstViewer;->m_OriginalBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-virtual {v3, p3}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->setThumbnailBitmap(Landroid/graphics/Bitmap;)V

    .line 1354
    :cond_4
    :goto_1
    if-eqz p4, :cond_5

    .line 1356
    invoke-direct {p0, p2}, Lcom/oneplus/gallery/BurstViewer;->findSubMediaThumbItem(Landroid/net/Uri;)Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;

    move-result-object v2

    .line 1357
    .local v2, "thumbItem":Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;
    if-eqz v2, :cond_5

    .line 1358
    iget-object v3, v2, Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v3, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1305
    .end local v2    # "thumbItem":Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;
    :cond_5
    return-void

    .line 1324
    .end local v0    # "item":Lcom/oneplus/gallery/BurstViewer$SubMediaItem;
    :cond_6
    iget-object v3, v1, Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;->highQualityThumbDecodeHandle:Lcom/oneplus/base/Handle;

    if-eq v3, p1, :cond_7

    .line 1325
    return-void

    .line 1326
    :cond_7
    iput-object v4, v1, Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;->highQualityThumbDecodeHandle:Lcom/oneplus/base/Handle;

    .line 1327
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v1, Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;->highQualityThumbRef:Ljava/lang/ref/SoftReference;

    goto :goto_0

    .line 1340
    .restart local v0    # "item":Lcom/oneplus/gallery/BurstViewer$SubMediaItem;
    :cond_8
    iget-object v3, v0, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->mediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    if-eqz v3, :cond_4

    .line 1341
    iget-object v3, v0, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->mediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    invoke-virtual {p0}, Lcom/oneplus/gallery/BurstViewer;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3, v4, p3}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 1346
    :cond_9
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/BurstViewer;->isCurrentItem(Lcom/oneplus/gallery/BurstViewer$SubMediaItem;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/oneplus/gallery/BurstViewer;->m_OriginalBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    if-eqz v3, :cond_a

    .line 1347
    iget-object v3, p0, Lcom/oneplus/gallery/BurstViewer;->m_OriginalBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-virtual {v3, p3}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->setThumbnailBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 1348
    :cond_a
    iget-object v3, v0, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->mediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    if-eqz v3, :cond_4

    .line 1349
    iget-object v3, v0, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->mediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    invoke-virtual {p0}, Lcom/oneplus/gallery/BurstViewer;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3, v4, p3}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method private preDecodeThumbnailImages()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1497
    iget-object v4, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-nez v4, :cond_0

    .line 1498
    return-void

    .line 1499
    :cond_0
    iget-object v4, p0, Lcom/oneplus/gallery/BurstViewer;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v4}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v0

    .line 1500
    .local v0, "currentIndex":I
    add-int/lit8 v4, v0, -0x1

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1501
    .local v3, "startIndex":I
    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v5}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1502
    .local v1, "endIndex":I
    move v2, v3

    .local v2, "i":I
    :goto_0
    if-gt v2, v1, :cond_2

    .line 1504
    if-eq v2, v0, :cond_1

    .line 1505
    iget-object v4, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v4, v2}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery2/media/Media;

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5, v6, v6}, Lcom/oneplus/gallery/BurstViewer;->decodeThumbnailImage(Lcom/oneplus/gallery2/media/Media;ZZZ)V

    .line 1502
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1495
    :cond_2
    return-void
.end method

.method private refreshThumbnailImage(Lcom/oneplus/gallery2/media/Media;)V
    .locals 6
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    const/4 v5, 0x1

    .line 1514
    if-nez p1, :cond_0

    .line 1515
    return-void

    .line 1518
    :cond_0
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 1519
    .local v0, "contentUri":Landroid/net/Uri;
    if-eqz v0, :cond_3

    .line 1521
    iget-object v3, p0, Lcom/oneplus/gallery/BurstViewer;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "refreshThumbnailImage() - Clear caches: "

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1524
    sget-object v3, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v3, v0}, Lcom/oneplus/media/BitmapPool;->invalidate(Landroid/net/Uri;)V

    .line 1525
    sget-object v3, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL_SMALL:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v3, v0}, Lcom/oneplus/media/BitmapPool;->invalidate(Landroid/net/Uri;)V

    .line 1541
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/oneplus/gallery/BurstViewer;->m_ThumbInfoTable:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;

    .line 1542
    .local v2, "thumbInfo":Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;
    if-eqz v2, :cond_2

    .line 1544
    iget-object v3, v2, Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;->highQualityThumbDecodeHandle:Lcom/oneplus/base/Handle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 1545
    iget-object v3, v2, Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;->lowQualityThumbDecodeHandle:Lcom/oneplus/base/Handle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 1549
    :cond_2
    const/4 v3, 0x0

    invoke-direct {p0, p1, v5, v5, v3}, Lcom/oneplus/gallery/BurstViewer;->decodeThumbnailImage(Lcom/oneplus/gallery2/media/Media;ZZZ)V

    .line 1511
    return-void

    .line 1529
    .end local v2    # "thumbInfo":Lcom/oneplus/gallery/BurstViewer$ThumbnailInfo;
    :cond_3
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 1530
    .local v1, "filePath":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1532
    iget-object v3, p0, Lcom/oneplus/gallery/BurstViewer;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "refreshThumbnailImage() - Clear caches: "

    invoke-static {v3, v4, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1535
    sget-object v3, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v3, v1}, Lcom/oneplus/media/BitmapPool;->invalidate(Ljava/lang/String;)V

    .line 1536
    sget-object v3, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL_SMALL:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v3, v1}, Lcom/oneplus/media/BitmapPool;->invalidate(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private saveSelectedMedia(ZZ)V
    .locals 15
    .param p1, "closeViewerWhenCompleted"    # Z
    .param p2, "closeViewerWhenCancelled"    # Z

    .prologue
    .line 1557
    iget-object v3, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-nez v3, :cond_0

    .line 1558
    return-void

    .line 1559
    :cond_0
    iget-object v3, p0, Lcom/oneplus/gallery/BurstViewer;->m_SelectedMedia:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v12

    .line 1560
    .local v12, "selectionCount":I
    if-nez v12, :cond_1

    .line 1561
    return-void

    .line 1562
    :cond_1
    iget-object v3, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v3}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v3

    if-lt v12, v3, :cond_3

    .line 1564
    if-eqz p1, :cond_2

    .line 1565
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery/BurstViewer;->close(I)V

    .line 1566
    :cond_2
    return-void

    .line 1570
    :cond_3
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1571
    .local v11, "mediaToDelete":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/Media;>;"
    iget-object v3, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v3}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v3

    add-int/lit8 v9, v3, -0x1

    .local v9, "i":I
    :goto_0
    if-ltz v9, :cond_5

    .line 1573
    iget-object v3, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v3, v9}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/gallery2/media/Media;

    .line 1574
    .local v10, "media":Lcom/oneplus/gallery2/media/Media;
    iget-object v3, p0, Lcom/oneplus/gallery/BurstViewer;->m_SelectedMedia:Ljava/util/Set;

    invoke-interface {v3, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1575
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1571
    :cond_4
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 1579
    .end local v10    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/gallery/BurstViewer;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v7

    .line 1580
    .local v7, "activity":Lcom/oneplus/camera/CameraActivity;
    const-class v3, Lcom/oneplus/camera/DialogManager;

    invoke-virtual {v7, v3}, Lcom/oneplus/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/DialogManager;

    .line 1581
    .local v1, "dialogManager":Lcom/oneplus/camera/DialogManager;
    if-nez v1, :cond_6

    .line 1583
    iget-object v3, p0, Lcom/oneplus/gallery/BurstViewer;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "saveSelectedMedia() - No DialogManager"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1584
    return-void

    .line 1588
    :cond_6
    const/4 v3, 0x1

    if-le v12, v3, :cond_8

    const/4 v8, 0x1

    .line 1589
    .local v8, "hasMultipleMedia":Z
    :goto_1
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v7, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_9

    const v13, 0x7f0c002c

    .line 1590
    .local v13, "styleId":I
    :goto_2
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v7, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1591
    if-eqz v8, :cond_a

    const v3, 0x7f0d0042

    .line 1590
    :goto_3
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1592
    if-eqz v8, :cond_b

    const v3, 0x7f0d0044

    invoke-virtual {v7, v3}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v14, 0x0

    aput-object v6, v5, v14

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1590
    :goto_4
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1593
    new-instance v4, Lcom/oneplus/gallery/BurstViewer$18;

    move/from16 v0, p1

    invoke-direct {v4, p0, v11, v0}, Lcom/oneplus/gallery/BurstViewer$18;-><init>(Lcom/oneplus/gallery/BurstViewer;Ljava/util/List;Z)V

    const v5, 0x104000a

    .line 1590
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1602
    new-instance v4, Lcom/oneplus/gallery/BurstViewer$19;

    move/from16 v0, p2

    invoke-direct {v4, p0, v0}, Lcom/oneplus/gallery/BurstViewer$19;-><init>(Lcom/oneplus/gallery/BurstViewer;Z)V

    const/high16 v5, 0x1040000

    .line 1590
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1613
    .local v2, "alertDialog":Landroid/app/AlertDialog;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/oneplus/camera/DialogManager;->showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;Lcom/oneplus/camera/DialogManager$DialogParams;Lcom/oneplus/camera/DialogManager$DialogParams;I)Lcom/oneplus/base/Handle;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1615
    iget-object v3, p0, Lcom/oneplus/gallery/BurstViewer;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "saveSelectedMedia() - Fail to show confirmation dialog, save directly"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1616
    move/from16 v0, p1

    invoke-direct {p0, v11, v0}, Lcom/oneplus/gallery/BurstViewer;->deleteMedia(Ljava/util/Collection;Z)V

    .line 1554
    :cond_7
    return-void

    .line 1588
    .end local v2    # "alertDialog":Landroid/app/AlertDialog;
    .end local v8    # "hasMultipleMedia":Z
    .end local v13    # "styleId":I
    :cond_8
    const/4 v8, 0x0

    .restart local v8    # "hasMultipleMedia":Z
    goto :goto_1

    .line 1589
    :cond_9
    const v13, 0x7f0c002a

    .restart local v13    # "styleId":I
    goto :goto_2

    .line 1591
    :cond_a
    const v3, 0x7f0d0041

    goto :goto_3

    .line 1592
    :cond_b
    const v3, 0x7f0d0043

    invoke-virtual {v7, v3}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4
.end method

.method private setMediaSelection(Lcom/oneplus/gallery2/media/Media;ZZ)Z
    .locals 5
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "isSelected"    # Z
    .param p3, "updateToolBar"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1624
    if-nez p1, :cond_0

    .line 1625
    return v3

    .line 1628
    :cond_0
    if-eqz p2, :cond_1

    .line 1630
    iget-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_SelectedMedia:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1631
    return v3

    .line 1633
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_SelectedMedia:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1634
    return v3

    .line 1637
    :cond_2
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/BurstViewer;->findSubMediaItem(Lcom/oneplus/gallery2/media/Media;)Lcom/oneplus/gallery/BurstViewer$SubMediaItem;

    move-result-object v0

    .line 1638
    .local v0, "item":Lcom/oneplus/gallery/BurstViewer$SubMediaItem;
    if-eqz v0, :cond_3

    .line 1647
    iget-object v4, v0, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->checkBoxView:Landroid/widget/ImageView;

    if-eqz p2, :cond_6

    const v2, 0x7f020008

    :goto_0
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1651
    :cond_3
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/BurstViewer;->findSubMediaThumbItem(Lcom/oneplus/gallery2/media/Media;)Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;

    move-result-object v1

    .line 1652
    .local v1, "thumbItem":Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;
    if-eqz v1, :cond_4

    .line 1653
    iget-object v4, v1, Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;->imageViewSelectedOverlay:Landroid/view/View;

    if-eqz p2, :cond_7

    move v2, v3

    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1656
    :cond_4
    if-eqz p3, :cond_5

    .line 1657
    invoke-direct {p0}, Lcom/oneplus/gallery/BurstViewer;->updateToolBar()V

    .line 1660
    :cond_5
    const/4 v2, 0x1

    return v2

    .line 1647
    .end local v1    # "thumbItem":Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;
    :cond_6
    const v2, 0x7f020007

    goto :goto_0

    .line 1653
    .restart local v1    # "thumbItem":Lcom/oneplus/gallery/BurstViewer$SubMediaThumbItem;
    :cond_7
    const/16 v2, 0x8

    goto :goto_1
.end method

.method private setupUI()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1668
    iget-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_Container:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1669
    return-void

    .line 1672
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery/BurstViewer;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1673
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f090027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_ThumbItemWidth:I

    .line 1674
    invoke-virtual {p0}, Lcom/oneplus/gallery/BurstViewer;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    new-array v3, v6, [I

    const v4, 0x10102eb

    aput v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1675
    .local v0, "attrs":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_ToolBarHeight:I

    .line 1676
    const v2, 0x7f090021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_ThumbBarHeight:I

    .line 1679
    invoke-virtual {p0}, Lcom/oneplus/gallery/BurstViewer;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    const v3, 0x7f0a002d

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_Container:Landroid/view/View;

    .line 1680
    iget-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_Container:Landroid/view/View;

    const v3, 0x7f0a0040

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/widget/RotateRelativeLayout;

    iput-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_RotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    .line 1681
    iget-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_RotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    const v3, 0x7f0a0042

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_ToolBarContainer:Landroid/view/View;

    .line 1682
    iget-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_ToolBarContainer:Landroid/view/View;

    const v3, 0x7f0a0043

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Toolbar;

    iput-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_ToolBar:Landroid/widget/Toolbar;

    .line 1683
    iget-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_RotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    const v3, 0x7f0a0041

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oneplus/widget/FilmstripView;

    iput-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    .line 1684
    iget-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_RotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    const v3, 0x7f0a0046

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_ThumbBar:Landroid/view/View;

    .line 1685
    iget-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_ThumbBar:Landroid/view/View;

    const v3, 0x7f0a0047

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oneplus/widget/FilmstripView;

    iput-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_ThumbFilmstrip:Lcom/oneplus/widget/FilmstripView;

    .line 1688
    iget-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_ToolBar:Landroid/widget/Toolbar;

    const v3, 0x7f020009

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->setNavigationIcon(I)V

    .line 1689
    iget-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_ToolBar:Landroid/widget/Toolbar;

    new-instance v3, Lcom/oneplus/gallery/BurstViewer$20;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery/BurstViewer$20;-><init>(Lcom/oneplus/gallery/BurstViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1697
    iget-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_ToolBarContainer:Landroid/view/View;

    const v3, 0x7f0a0044

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_SaveButton:Landroid/view/View;

    .line 1698
    iget-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_SaveButton:Landroid/view/View;

    new-instance v3, Lcom/oneplus/gallery/BurstViewer$21;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery/BurstViewer$21;-><init>(Lcom/oneplus/gallery/BurstViewer;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1706
    iget-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_ToolBarContainer:Landroid/view/View;

    const v3, 0x7f0a0045

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_DeleteButton:Landroid/view/View;

    .line 1707
    iget-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_DeleteButton:Landroid/view/View;

    new-instance v3, Lcom/oneplus/gallery/BurstViewer$22;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery/BurstViewer$22;-><init>(Lcom/oneplus/gallery/BurstViewer;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1717
    iget-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    iget-object v3, p0, Lcom/oneplus/gallery/BurstViewer;->m_FilmstripAdapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v2, v3}, Lcom/oneplus/widget/FilmstripView;->setAdapter(Lcom/oneplus/widget/FilmstripView$Adapter;)V

    .line 1718
    iget-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    new-instance v3, Lcom/oneplus/gallery/BurstViewer$23;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery/BurstViewer$23;-><init>(Lcom/oneplus/gallery/BurstViewer;)V

    invoke-virtual {v2, v3}, Lcom/oneplus/widget/FilmstripView;->setScrollListener(Lcom/oneplus/widget/FilmstripView$ScrollListener;)V

    .line 1726
    iget-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_ThumbFilmstrip:Lcom/oneplus/widget/FilmstripView;

    iget-object v3, p0, Lcom/oneplus/gallery/BurstViewer;->m_ThumbFilmstripAdapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v2, v3}, Lcom/oneplus/widget/FilmstripView;->setAdapter(Lcom/oneplus/widget/FilmstripView$Adapter;)V

    .line 1727
    iget-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_ThumbFilmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v2, v6}, Lcom/oneplus/widget/FilmstripView;->setScrollMode(I)V

    .line 1728
    iget-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_ThumbFilmstrip:Lcom/oneplus/widget/FilmstripView;

    const v3, 0x7f090026

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/oneplus/widget/FilmstripView;->setItemMargin(I)V

    .line 1729
    iget-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_ThumbFilmstrip:Lcom/oneplus/widget/FilmstripView;

    new-instance v3, Lcom/oneplus/gallery/BurstViewer$24;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery/BurstViewer$24;-><init>(Lcom/oneplus/gallery/BurstViewer;)V

    invoke-virtual {v2, v3}, Lcom/oneplus/widget/FilmstripView;->setScrollListener(Lcom/oneplus/widget/FilmstripView$ScrollListener;)V

    .line 1737
    iget-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_ThumbFilmstrip:Lcom/oneplus/widget/FilmstripView;

    new-instance v3, Lcom/oneplus/gallery/BurstViewer$25;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery/BurstViewer$25;-><init>(Lcom/oneplus/gallery/BurstViewer;)V

    invoke-virtual {v2, v3}, Lcom/oneplus/widget/FilmstripView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1665
    return-void
.end method

.method private showControls(Z)V
    .locals 6
    .param p1, "animate"    # Z

    .prologue
    const-wide/16 v4, 0x96

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 1813
    iget-boolean v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_IsToolBarVisible:Z

    if-nez v0, :cond_1

    .line 1815
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_IsToolBarVisible:Z

    .line 1816
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_ToolBarContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1818
    if-eqz p1, :cond_2

    .line 1819
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_ToolBarContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1827
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_ThumbBar:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1829
    if-eqz p1, :cond_3

    .line 1830
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_ThumbBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1810
    :cond_1
    :goto_1
    return-void

    .line 1822
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_ToolBarContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1823
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_ToolBarContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1824
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_ToolBarContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 1833
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_ThumbBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1834
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_ThumbBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1835
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_ThumbBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1
.end method

.method private toggleMediaSelection(Lcom/oneplus/gallery2/media/Media;)V
    .locals 2
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    const/4 v1, 0x1

    .line 1845
    invoke-direct {p0, p1, v1, v1}, Lcom/oneplus/gallery/BurstViewer;->setMediaSelection(Lcom/oneplus/gallery2/media/Media;ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1846
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/gallery/BurstViewer;->setMediaSelection(Lcom/oneplus/gallery2/media/Media;ZZ)Z

    .line 1843
    :cond_0
    return-void
.end method

.method private updateToolBar()V
    .locals 5

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 1873
    iget-object v3, p0, Lcom/oneplus/gallery/BurstViewer;->m_SelectedMedia:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v0

    .line 1874
    .local v0, "selectionCount":I
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/oneplus/gallery/BurstViewer;->m_Media:Lcom/oneplus/gallery2/media/GroupedMedia;

    if-nez v3, :cond_1

    .line 1876
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_ToolBar:Landroid/widget/Toolbar;

    const v3, 0x7f0d003b

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->setTitle(I)V

    .line 1877
    iget-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_SaveButton:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1878
    iget-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_DeleteButton:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1871
    :goto_0
    return-void

    .line 1882
    :cond_1
    iget-object v3, p0, Lcom/oneplus/gallery/BurstViewer;->m_ToolBar:Landroid/widget/Toolbar;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1883
    iget-object v3, p0, Lcom/oneplus/gallery/BurstViewer;->m_SaveButton:Landroid/view/View;

    iget-object v4, p0, Lcom/oneplus/gallery/BurstViewer;->m_Media:Lcom/oneplus/gallery2/media/GroupedMedia;

    invoke-interface {v4}, Lcom/oneplus/gallery2/media/GroupedMedia;->getSubMediaCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1884
    iget-object v1, p0, Lcom/oneplus/gallery/BurstViewer;->m_DeleteButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateUIRotation(Lcom/oneplus/base/Rotation;)V
    .locals 4
    .param p1, "rotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    const/4 v3, 0x0

    .line 1854
    invoke-virtual {p0}, Lcom/oneplus/gallery/BurstViewer;->getScreenSize()Lcom/oneplus/base/ScreenSize;

    move-result-object v0

    .line 1855
    .local v0, "screenSize":Lcom/oneplus/base/ScreenSize;
    const/4 v1, 0x0

    .line 1856
    .local v1, "toolbarMargin":I
    sget-object v2, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    if-ne p1, v2, :cond_0

    .line 1857
    invoke-virtual {v0}, Lcom/oneplus/base/ScreenSize;->getStatusBarSize()I

    move-result v1

    .line 1858
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_ToolBarContainer:Landroid/view/View;

    invoke-static {v2, v3, v1, v3, v3}, Lcom/oneplus/widget/ViewUtils;->setMargins(Landroid/view/View;IIII)V

    .line 1859
    iput v1, p0, Lcom/oneplus/gallery/BurstViewer;->m_ToolBarTop:I

    .line 1860
    iget v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_ToolBarHeight:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_ToolBarBottom:I

    .line 1863
    iget-object v2, p0, Lcom/oneplus/gallery/BurstViewer;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v2, v3}, Lcom/oneplus/widget/FilmstripView;->setScrollMode(I)V

    .line 1866
    invoke-direct {p0, v3}, Lcom/oneplus/gallery/BurstViewer;->showControls(Z)V

    .line 1851
    return-void
.end method


# virtual methods
.method public close(I)V
    .locals 4
    .param p1, "flags"    # I

    .prologue
    .line 504
    invoke-virtual {p0}, Lcom/oneplus/gallery/BurstViewer;->verifyAccess()V

    .line 505
    sget-object v0, Lcom/oneplus/gallery/BurstViewer;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/BurstViewer;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery/BurstViewer$UIState;->CLOSED:Lcom/oneplus/gallery/BurstViewer$UIState;

    if-ne v0, v1, :cond_0

    .line 506
    return-void

    .line 509
    :cond_0
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_2

    .line 511
    sget-object v0, Lcom/oneplus/gallery/BurstViewer;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/BurstViewer;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery/BurstViewer$UIState;->CLOSING:Lcom/oneplus/gallery/BurstViewer$UIState;

    if-ne v0, v1, :cond_1

    .line 512
    return-void

    .line 513
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_Container:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/gallery/BurstViewer$12;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/BurstViewer$12;-><init>(Lcom/oneplus/gallery/BurstViewer;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 522
    sget-object v0, Lcom/oneplus/gallery/BurstViewer;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/gallery/BurstViewer$UIState;->CLOSING:Lcom/oneplus/gallery/BurstViewer$UIState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/BurstViewer;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 501
    :goto_0
    return-void

    .line 526
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_Container:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 527
    invoke-direct {p0}, Lcom/oneplus/gallery/BurstViewer;->onClosed()V

    .line 528
    sget-object v0, Lcom/oneplus/gallery/BurstViewer;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/gallery/BurstViewer$UIState;->CLOSED:Lcom/oneplus/gallery/BurstViewer$UIState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/BurstViewer;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onDeinitialize()V
    .locals 0

    .prologue
    .line 826
    invoke-direct {p0}, Lcom/oneplus/gallery/BurstViewer;->detachFromMedia()V

    .line 829
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onDeinitialize()V

    .line 823
    return-void
.end method

.method protected onInitialize()V
    .locals 0

    .prologue
    .line 940
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onInitialize()V

    .line 937
    return-void
.end method

.method protected onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
    .locals 2
    .param p1, "prevRotation"    # Lcom/oneplus/base/Rotation;
    .param p2, "newRotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    .line 1184
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/UIComponent;->onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 1187
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_Container:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1188
    return-void

    .line 1191
    :cond_0
    sget-object v0, Lcom/oneplus/gallery/BurstViewer;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/BurstViewer;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery/BurstViewer$UIState;->CLOSED:Lcom/oneplus/gallery/BurstViewer$UIState;

    if-eq v0, v1, :cond_1

    .line 1193
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer;->m_RotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    new-instance v1, Lcom/oneplus/gallery/BurstViewer$16;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/BurstViewer$16;-><init>(Lcom/oneplus/gallery/BurstViewer;)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/BurstViewer;->rotateLayout(Lcom/oneplus/camera/widget/RotateRelativeLayout;Lcom/oneplus/camera/UIComponent$ViewRotationCallback;)V

    .line 1181
    :cond_1
    return-void
.end method

.method public open(Lcom/oneplus/gallery2/media/GroupedMedia;I)Z
    .locals 12
    .param p1, "media"    # Lcom/oneplus/gallery2/media/GroupedMedia;
    .param p2, "flags"    # I

    .prologue
    .line 1376
    invoke-virtual {p0}, Lcom/oneplus/gallery/BurstViewer;->verifyAccess()V

    .line 1377
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/oneplus/gallery/BurstViewer;->isRunningOrInitializing(Z)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1378
    const/4 v8, 0x0

    return v8

    .line 1379
    :cond_0
    if-nez p1, :cond_1

    .line 1381
    iget-object v8, p0, Lcom/oneplus/gallery/BurstViewer;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "open() - No media to show"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    const/4 v8, 0x0

    return v8

    .line 1384
    :cond_1
    iget-object v8, p0, Lcom/oneplus/gallery/BurstViewer;->m_Media:Lcom/oneplus/gallery2/media/GroupedMedia;

    if-ne v8, p1, :cond_2

    .line 1386
    iget-object v8, p0, Lcom/oneplus/gallery/BurstViewer;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "open() - Same media"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    const/4 v8, 0x1

    return v8

    .line 1391
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/gallery/BurstViewer;->setupUI()V

    .line 1394
    invoke-direct {p0}, Lcom/oneplus/gallery/BurstViewer;->detachFromMedia()V

    .line 1397
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/BurstViewer;->attachToMedia(Lcom/oneplus/gallery2/media/GroupedMedia;)V

    .line 1398
    iget-object v8, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-nez v8, :cond_3

    .line 1400
    iget-object v8, p0, Lcom/oneplus/gallery/BurstViewer;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "open() - No sub media list for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    invoke-direct {p0}, Lcom/oneplus/gallery/BurstViewer;->detachFromMedia()V

    .line 1402
    const/4 v8, 0x0

    return v8

    .line 1406
    :cond_3
    iget-object v8, p0, Lcom/oneplus/gallery/BurstViewer;->m_KeyEventHandlerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v8}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 1407
    invoke-virtual {p0}, Lcom/oneplus/gallery/BurstViewer;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v8

    iget-object v9, p0, Lcom/oneplus/gallery/BurstViewer;->m_KeyEventHandler:Lcom/oneplus/camera/KeyEventHandler;

    invoke-virtual {v8, v9}, Lcom/oneplus/camera/CameraActivity;->setKeyEventHandler(Lcom/oneplus/camera/KeyEventHandler;)Lcom/oneplus/base/Handle;

    move-result-object v8

    iput-object v8, p0, Lcom/oneplus/gallery/BurstViewer;->m_KeyEventHandlerHandle:Lcom/oneplus/base/Handle;

    .line 1410
    :cond_4
    iget-object v8, p0, Lcom/oneplus/gallery/BurstViewer;->m_FilmstripAdapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v8}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyDataSetChanged()V

    .line 1411
    iget-object v8, p0, Lcom/oneplus/gallery/BurstViewer;->m_ThumbFilmstripAdapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v8}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyDataSetChanged()V

    .line 1414
    const/4 v3, -0x1

    .line 1415
    .local v3, "coverIndex":I
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/GroupedMedia;->getCover()Lcom/oneplus/gallery2/media/Media;

    move-result-object v2

    .line 1416
    .local v2, "cover":Lcom/oneplus/gallery2/media/Media;
    if-eqz v2, :cond_6

    .line 1418
    iget-object v8, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v8, v2}, Lcom/oneplus/gallery2/media/MediaList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 1419
    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {p0, v2, v8, v9, v10}, Lcom/oneplus/gallery/BurstViewer;->decodeThumbnailImage(Lcom/oneplus/gallery2/media/Media;ZZZ)V

    .line 1423
    :goto_0
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/GroupedMedia;->getSubMediaCount()I

    move-result v7

    .line 1424
    .local v7, "mediaCount":I
    iget-object v8, p0, Lcom/oneplus/gallery/BurstViewer;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "open() - Sub media count : "

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1425
    if-ltz v3, :cond_7

    .line 1427
    add-int/lit8 v0, v3, -0x1

    .line 1428
    .local v0, "backwardIndex":I
    add-int/lit8 v4, v3, 0x1

    .local v4, "forwardIndex":I
    move v5, v4

    .end local v4    # "forwardIndex":I
    .local v5, "forwardIndex":I
    move v1, v0

    .line 1429
    .end local v0    # "backwardIndex":I
    .local v1, "backwardIndex":I
    :goto_1
    if-gez v1, :cond_5

    if-ge v5, v7, :cond_8

    .line 1431
    :cond_5
    if-ge v5, v7, :cond_f

    .line 1432
    iget-object v8, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "forwardIndex":I
    .restart local v4    # "forwardIndex":I
    invoke-interface {v8, v5}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/gallery2/media/Media;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-direct {p0, v8, v9, v10, v11}, Lcom/oneplus/gallery/BurstViewer;->decodeThumbnailImage(Lcom/oneplus/gallery2/media/Media;ZZZ)V

    .line 1433
    :goto_2
    if-ltz v1, :cond_e

    .line 1434
    iget-object v8, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    add-int/lit8 v0, v1, -0x1

    .end local v1    # "backwardIndex":I
    .restart local v0    # "backwardIndex":I
    invoke-interface {v8, v1}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/gallery2/media/Media;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-direct {p0, v8, v9, v10, v11}, Lcom/oneplus/gallery/BurstViewer;->decodeThumbnailImage(Lcom/oneplus/gallery2/media/Media;ZZZ)V

    :goto_3
    move v5, v4

    .end local v4    # "forwardIndex":I
    .restart local v5    # "forwardIndex":I
    move v1, v0

    .end local v0    # "backwardIndex":I
    .restart local v1    # "backwardIndex":I
    goto :goto_1

    .line 1422
    .end local v1    # "backwardIndex":I
    .end local v5    # "forwardIndex":I
    .end local v7    # "mediaCount":I
    :cond_6
    iget-object v8, p0, Lcom/oneplus/gallery/BurstViewer;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "open() - No cover media"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1439
    .restart local v7    # "mediaCount":I
    :cond_7
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    if-ge v6, v7, :cond_8

    .line 1440
    iget-object v8, p0, Lcom/oneplus/gallery/BurstViewer;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v8, v6}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/gallery2/media/Media;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-direct {p0, v8, v9, v10, v11}, Lcom/oneplus/gallery/BurstViewer;->decodeThumbnailImage(Lcom/oneplus/gallery2/media/Media;ZZZ)V

    .line 1439
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1442
    .end local v6    # "i":I
    :cond_8
    iget-boolean v8, p0, Lcom/oneplus/gallery/BurstViewer;->m_IsPreDecodeThumbScheduled:Z

    if-nez v8, :cond_9

    .line 1443
    invoke-direct {p0}, Lcom/oneplus/gallery/BurstViewer;->preDecodeThumbnailImages()V

    .line 1446
    :cond_9
    sget-object v8, Lcom/oneplus/gallery/BurstViewer;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v8}, Lcom/oneplus/gallery/BurstViewer;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lcom/oneplus/gallery/BurstViewer$UIState;->CLOSED:Lcom/oneplus/gallery/BurstViewer$UIState;

    if-ne v8, v9, :cond_a

    .line 1448
    iget-object v8, p0, Lcom/oneplus/gallery/BurstViewer;->m_RotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    const-wide/16 v10, 0x0

    invoke-virtual {p0, v8, v10, v11}, Lcom/oneplus/gallery/BurstViewer;->rotateLayout(Lcom/oneplus/camera/widget/RotateRelativeLayout;J)V

    .line 1449
    invoke-virtual {p0}, Lcom/oneplus/gallery/BurstViewer;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/oneplus/gallery/BurstViewer;->updateUIRotation(Lcom/oneplus/base/Rotation;)V

    .line 1453
    :cond_a
    and-int/lit8 v8, p2, 0x1

    if-nez v8, :cond_d

    .line 1455
    invoke-static {}, Lcom/oneplus/gallery/BurstViewer;->-getcom-oneplus-gallery-BurstViewer$UIStateSwitchesValues()[I

    move-result-object v9

    sget-object v8, Lcom/oneplus/gallery/BurstViewer;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v8}, Lcom/oneplus/gallery/BurstViewer;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/gallery/BurstViewer$UIState;

    invoke-virtual {v8}, Lcom/oneplus/gallery/BurstViewer$UIState;->ordinal()I

    move-result v8

    aget v8, v9, v8

    packed-switch v8, :pswitch_data_0

    .line 1479
    :cond_b
    :goto_5
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/oneplus/gallery/BurstViewer;->showControls(Z)V

    .line 1482
    if-ltz v3, :cond_c

    .line 1484
    iget-object v8, p0, Lcom/oneplus/gallery/BurstViewer;->m_ThumbFilmstrip:Lcom/oneplus/widget/FilmstripView;

    const/4 v9, 0x0

    invoke-virtual {v8, v3, v9}, Lcom/oneplus/widget/FilmstripView;->setCurrentItem(IZ)V

    .line 1485
    iget-object v8, p0, Lcom/oneplus/gallery/BurstViewer;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/oneplus/widget/FilmstripView;->setScrollMode(I)V

    .line 1486
    iget-object v8, p0, Lcom/oneplus/gallery/BurstViewer;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    const/4 v9, 0x0

    invoke-virtual {v8, v3, v9}, Lcom/oneplus/widget/FilmstripView;->setCurrentItem(IZ)V

    .line 1490
    :cond_c
    const/4 v8, 0x1

    return v8

    .line 1459
    :pswitch_0
    iget-object v8, p0, Lcom/oneplus/gallery/BurstViewer;->m_Container:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1460
    iget-object v8, p0, Lcom/oneplus/gallery/BurstViewer;->m_Container:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const-wide/16 v10, 0x12c

    invoke-virtual {v8, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    new-instance v9, Lcom/oneplus/gallery/BurstViewer$17;

    invoke-direct {v9, p0}, Lcom/oneplus/gallery/BurstViewer$17;-><init>(Lcom/oneplus/gallery/BurstViewer;)V

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1468
    sget-object v8, Lcom/oneplus/gallery/BurstViewer;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v9, Lcom/oneplus/gallery/BurstViewer$UIState;->OPENING:Lcom/oneplus/gallery/BurstViewer$UIState;

    invoke-virtual {p0, v8, v9}, Lcom/oneplus/gallery/BurstViewer;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_5

    .line 1472
    :cond_d
    sget-object v8, Lcom/oneplus/gallery/BurstViewer;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v8}, Lcom/oneplus/gallery/BurstViewer;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lcom/oneplus/gallery/BurstViewer$UIState;->OPENED:Lcom/oneplus/gallery/BurstViewer$UIState;

    if-eq v8, v9, :cond_b

    .line 1474
    iget-object v8, p0, Lcom/oneplus/gallery/BurstViewer;->m_Container:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1475
    iget-object v8, p0, Lcom/oneplus/gallery/BurstViewer;->m_Container:Landroid/view/View;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Landroid/view/View;->setAlpha(F)V

    .line 1476
    iget-object v8, p0, Lcom/oneplus/gallery/BurstViewer;->m_Container:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1477
    sget-object v8, Lcom/oneplus/gallery/BurstViewer;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v9, Lcom/oneplus/gallery/BurstViewer$UIState;->OPENED:Lcom/oneplus/gallery/BurstViewer$UIState;

    invoke-virtual {p0, v8, v9}, Lcom/oneplus/gallery/BurstViewer;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_5

    .restart local v1    # "backwardIndex":I
    .restart local v4    # "forwardIndex":I
    :cond_e
    move v0, v1

    .end local v1    # "backwardIndex":I
    .restart local v0    # "backwardIndex":I
    goto/16 :goto_3

    .end local v0    # "backwardIndex":I
    .end local v4    # "forwardIndex":I
    .restart local v1    # "backwardIndex":I
    .restart local v5    # "forwardIndex":I
    :cond_f
    move v4, v5

    .end local v5    # "forwardIndex":I
    .restart local v4    # "forwardIndex":I
    goto/16 :goto_2

    .line 1455
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
